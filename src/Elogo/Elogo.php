<?php

    namespace Hasokeyk\Elogo;

    use Hasokeyk\Elogo\Fatura\Fatura;
    use Hasokeyk\Elogo\Fatura\FaturaUbl;
    use Hasokeyk\Elogo\Firma\BenimFirmam;
    use Hasokeyk\Elogo\Firma\MusteriFirmasi;
    use Hasokeyk\Elogo\Models\ElogoBase64BinaryData;
    use Hasokeyk\Elogo\Models\GetDocumentData;
    use Hasokeyk\Elogo\Models\ElogoDocumentType;
    use Hasokeyk\Elogo\Models\ElogoGetInvoiceList;
    use Hasokeyk\Elogo\Models\ElogoLogin;
    use ZipArchive;

    /**
     *
     */
    class Elogo{

        /**
         * @var string
         */
        public $test_api_url = 'https://pb-demo.elogo.com.tr/PostboxService.svc';
        /**
         * @var string
         */
        public $live_api_url = 'https://pb.elogo.com.tr/PostboxService.svc?singlewsdl';

        /**
         * @var
         */
        public $username;
        /**
         * @var
         */
        public $password;
        /**
         * @var false|mixed
         */
        public $test_mode;
        /**
         * @var string
         */
        public $api_url;

        /**
         * @var \SoapClient
         */
        public $client;
        /**
         * @var
         */
        public $session_id;
        /**
         * @var string
         */
        public $invoce_prefix = 'HSN';

        /**
         * @var
         */
        public $my_company;
        /**
         * @var
         */
        public $customer_company;
        /**
         * @var
         */
        public $fatura;

        /**
         * @var string
         */
        public $xml_path = (__DIR__).'/';
        /**
         * @var string
         */
        public $zip_path = (__DIR__).'/';

        /**
         * @param $username
         * @param $password
         * @param $test_mode
         * @throws ElogoHata
         * @throws \SoapFault
         */
        function __construct($username, $password, $test_mode = false){

            if(class_exists('SoapClient')){
                $this->username  = $username;
                $this->password  = $password;
                $this->test_mode = $test_mode;

                if($test_mode){
                    $this->api_url = $this->test_api_url;
                }
                else{
                    $this->api_url = $this->live_api_url;
                }

                $this->client = new \SoapClient($this->api_url, ['trace' => 1]);

                $this->xml_path = sys_get_temp_dir().'/';
                $this->zip_path = sys_get_temp_dir().'/';
            }
            else{
                throw new ElogoHata("Soap Kütüphanesi Yüklü Değil");
            }

        }

        /**
         * @return false
         */
        public function giris_yap(){

            $login_class = new ElogoLogin();
            $login_class->setUsername($this->username);
            $login_class->setPassWord($this->password);

            $login = $this->client->Login(['login' => $login_class->toArray()]);

            if($login->LoginResult){
                $this->session_id = $login->sessionID;
                return $login;
            }
            else{
                return false;
            }

        }

        /**
         * @return mixed
         */
        public function cikis_yap(){
            return $this->client->Logout(['sessionID' => $this->session_id]);
        }

        /**
         * @param $tcn_or_vkn
         * @return mixed
         * @throws ElogoHata
         */
        public function musteri_bilgisi_getir($tcn_or_vkn){

            $param = null;
            if(is_array($tcn_or_vkn)){
                $param = $tcn_or_vkn;
            }
            else{
                $param[] = $tcn_or_vkn;
            }

            $result = $this->client->CheckGibUser([
                'sessionId'   => $this->session_id,
                'vknTcknList' => $param,
            ]);

            if(property_exists($result, 'CheckGibUserResult')){
                if($result->CheckGibUserResult->resultCode == 1){
                    return $result->userList->GibUserType;
                }
                else{
                    throw new ElogoHata($result->CheckGibUserResult->resultMsg, $result->CheckGibUserResult->resultCode);
                }
            }
            else{
                throw new ElogoHata("E-Logo cevap veremedi.", 0);
            }

        }

        /**
         * @param $fatura_turu
         * @param $zip_data
         * @return mixed
         * @throws ElogoHata
         */
        public function dokuman_yolla($fatura_turu = 'EINVOICE', $zip_data){

            $document    = new ElogoDocumentType();
            $binary_data = new ElogoBase64BinaryData();
            $binary_data->setValue($zip_data['zip_data']);

            $document->setBinaryData($binary_data);
            $document->setCurrentDate(date('c'));
            $document->setFileName($zip_data['zip_name']);
            $document->setHash(md5($zip_data['zip_data']));

            $eLogoParamList   = ['SIGNED=0'];
            $eLogoParamList[] = "DOCUMENTTYPE=".$fatura_turu;

            $data = [
                'sessionID' => $this->session_id,
                'paramList' => $eLogoParamList,
            ];

            if($document != null){
                $data['document'] = $document->toArray();
            }

            $result = $this->client->SendDocument($data);

            if(property_exists($result, 'SendDocumentResult')){
                if($result->SendDocumentResult->resultCode == 1){
                    return $result;
                }
                else{
                    throw new ElogoHata($result->SendDocumentResult->resultMsg, $result->SendDocumentResult->resultCode);
                }
            }
            else{
                throw new ElogoHata("E-Logo cevap veremedi.", 0);
            }

        }

        /**
         * @param Fatura $fatura
         * @param BenimFirmam $benim_firmam
         * @param MusteriFirmasi $musteri_firmasi
         * @param $sadece_ubl_getir
         * @return bool|mixed|string|null
         * @throws ElogoHata
         */
        public function efatura_gonder(Fatura $fatura, BenimFirmam $benim_firmam, MusteriFirmasi $musteri_firmasi, $sadece_ubl_getir = false){
            $convert_ubl = new FaturaUbl($fatura, $benim_firmam, $musteri_firmasi);
            $xml         = $convert_ubl->getir_ubl_xml('TICARIFATURA');

            if($sadece_ubl_getir){
                return $xml;
            }

            $zip_data = $this->create_zip($xml);
            return $this->dokuman_yolla('EINVOICE', $zip_data);
        }

        /**
         * @param Fatura $fatura
         * @param BenimFirmam $benim_firmam
         * @param MusteriFirmasi $musteri_firmasi
         * @param $sadece_ubl_getir
         * @return bool|mixed|string|null
         * @throws ElogoHata
         */
        public function earsiv_gonder(Fatura $fatura, BenimFirmam $benim_firmam, MusteriFirmasi $musteri_firmasi, $sadece_ubl_getir = false){
            $convert_ubl = new FaturaUbl($fatura, $benim_firmam, $musteri_firmasi);
            $xml         = $convert_ubl->getir_ubl_xml('EARSIVFATURA');

            if($sadece_ubl_getir){
                return $xml;
            }

            $zip_data = $this->create_zip($xml);
            return $this->dokuman_yolla('EARCHIVE', $zip_data);
        }

        /**
         * @param $prefix
         * @param $number
         * @return string
         */
        public function fatura_no_olustur($prefix = null, $number = 0){
            $prefix = mb_substr($prefix ?? $this->invoce_prefix, 0, 3);
            if($number == 0){
                return $prefix.date('Y').rand(100000000, 999999999);
            }
            else{
                return $prefix.date('Y').str_pad($number, 9, "0", STR_PAD_LEFT);
            }
        }

        /**
         * @param $xml
         * @return array
         */
        private function create_zip($xml = null){

            $xml_name = $this->session_id.'-xml.xml';
            $xml_path = $this->xml_path.'/'.$xml_name;
            file_put_contents($xml_path, trim($xml));

            $zip_name    = $this->session_id.'-fatura.zip';
            $zipArchive  = new ZipArchive();
            $zipFilePath = $this->zip_path.'/'.$zip_name;
            $zipArchive->open($zipFilePath, ZipArchive::CREATE);
            $zipArchive->addFile($xml_path, $xml_name);
            $zipArchive->close();
            $zip = file_get_contents($zipFilePath);

            return [
                'xml_name' => $xml_name,
                'zip_name' => $zip_name,
                'zip_data' => $zip,
            ];

        }

        /**
         * @param $baslangic_tarihi
         * @param $bitis_tarihi
         * @return mixed
         */
        public function giden_efaturalar($baslangic_tarihi = null, $bitis_tarihi = null){
            return $this->faturalari_getir('EINVOICE', 'GİDEN', $baslangic_tarihi, $bitis_tarihi);
        }

        /**
         * @param $baslangic_tarihi
         * @param $bitis_tarihi
         * @return mixed
         */
        public function gelen_efaturalar($baslangic_tarihi = null, $bitis_tarihi = null){
            return $this->faturalari_getir('EINVOICE', 'GELEN', $baslangic_tarihi, $bitis_tarihi);
        }

        /**
         * @param $baslangic_tarihi
         * @return mixed
         */
        public function giden_earsivler($baslangic_tarihi = null){
            return $this->faturalari_getir('EARCHIVE', 'GİDEN', $baslangic_tarihi, $baslangic_tarihi);
        }

        /**
         * @param $baslangic_tarihi
         * @return mixed
         */
        public function gelen_earsivler($baslangic_tarihi = null){
            return $this->faturalari_getir('EARCHIVE', 'GELEN', $baslangic_tarihi, $baslangic_tarihi);
        }

        /**
         * @param $fatura_turu
         * @param $gelen_faturalar
         * @param $baslangic_tarihi
         * @param $bitis_tarihi
         * @return mixed
         */
        public function faturalari_getir($fatura_turu = null, $gelen_faturalar = 'GELEN', $baslangic_tarihi = null, $bitis_tarihi = null){

            $baslangic_tarihi = $baslangic_tarihi ?? date('Y-m-d', strtotime('first day of this month'));
            $bitis_tarihi     = $bitis_tarihi ?? date('Y-m-d', strtotime('last day of this month'));

            $param = [
                'sessionID' => $this->session_id,
                'paramList' => [
                    'DOCUMENTTYPE='.$fatura_turu,
                    'BEGINDATE='.$baslangic_tarihi,
                    'ENDDATE='.$bitis_tarihi,
                    'OPTYPE='.($gelen_faturalar == 'GELEN' ? 2 : 1),
                    'DATEBY=0',
                ],
            ];

            return $this->client->GetDocumentList($param);
        }

        /**
         * @param $gelen_faturalar
         * @param $baslangic_tarihi
         * @param $bitis_tarihi
         * @return mixed
         */
        public function faturalari_getir2($gelen_faturalar = 'RECV', $baslangic_tarihi = null, $bitis_tarihi = null){

            $baslangic_tarihi = $baslangic_tarihi ?? date('Y-m-d', strtotime('first day of this month'));
            $bitis_tarihi     = $bitis_tarihi ?? date('Y-m-d', strtotime('last day of this month'));

            $param = [
                'sessionID' => $this->session_id,
                'beginDate' => $baslangic_tarihi,
                'endDate'   => $bitis_tarihi,
                'opType'    => $gelen_faturalar,
                'dateBy'    => 'byCREATED',
            ];

            return $this->client->GetInvoiceList($param);
        }


        /**
         * @param $fatura_uid
         * @return mixed
         */
        public function fatura_durum_bilgisi_getir($fatura_uid = ''){

            $params = [
                'sessionID' => $this->session_id,
                'uuid'      => $fatura_uid,
            ];

            return $this->client->getInvoiceStatus($params);

        }

        /**
         * @param $fatura_uuid
         * @param $format
         * @return mixed
         */
        public function efatura_zip_ciktisi_getir($fatura_uuid = '', $format = 'PDF'){
            return $this->fatura_ciktisi_getir($fatura_uuid, 'EINVOICE', $format);
        }

        /**
         * @param $fatura_uuid
         * @param $format
         * @return mixed
         */
        public function earsiv_zip_ciktisi_getir($fatura_uuid = '', $format = 'PDF'){
            return $this->fatura_ciktisi_getir($fatura_uuid, 'EARCHIVE', $format);
        }

        /**
         * @param $fatura_uuid
         * @param $fatura_turu
         * @param $format
         * @return mixed
         */
        public function fatura_ciktisi_getir($fatura_uuid = '', $fatura_turu = 'EINVOICE', $format = 'PDF'){

            $params = [
                'sessionID' => $this->session_id,
                'uuid'      => $fatura_uuid,
                'docType'   => $fatura_turu,
                'dataType'  => $format,
            ];

            return $this->client->GetDocumentData($params);

        }
    }