<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:ccts="urn:un:unece:uncefact:documentation:2" xmlns:clm54217="urn:un:unece:uncefact:codelist:specification:54217:2001" xmlns:clm5639="urn:un:unece:uncefact:codelist:specification:5639:1988" xmlns:clm66411="urn:un:unece:uncefact:codelist:specification:66411:2001" xmlns:clmIANAMIMEMediaType="urn:un:unece:uncefact:codelist:specification:IANAMIMEMediaType:2003" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:link="http://www.xbrl.org/2003/linkbase" xmlns:n1="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2" xmlns:qdt="urn:oasis:names:specification:ubl:schema:xsd:QualifiedDatatypes-2" xmlns:udt="urn:un:unece:uncefact:data:specification:UnqualifiedDataTypesSchemaModule:2" xmlns:xbrldi="http://xbrl.org/2006/xbrldi" xmlns:xbrli="http://www.xbrl.org/2003/instance" xmlns:xdt="http://www.w3.org/2005/xpath-datatypes" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" exclude-result-prefixes="cac cbc ccts clm54217 clm5639 clm66411 clmIANAMIMEMediaType fn link n1 qdt udt xbrldi xbrli xdt xlink xs xsd xsi">
	<xsl:decimal-format name="european" decimal-separator="," grouping-separator="." NaN=""/>
	<xsl:output version="4.0" omit-xml-declaration="yes" method="html" indent="no" encoding="UTF-8" doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN" doctype-system="http://www.w3.org/TR/html4/loose.dtd"/>
	<xsl:param name="SV_OutputFormat" select="'HTML'"/>
	<xsl:variable name="XML" select="/"/>
	<xsl:template match="/">
		<html>
			<head>
				<title/>
				<style type="text/css"> body{background-color:#FFFFFF;font-family:'Tahoma', "Times New Roman", Times, serif;font-size:11px;color:#666666;}h1, h2{padding-bottom:3px;padding-top:3px;margin-bottom:5px;text-transform:uppercase;font-family:Arial, Helvetica, sans-serif;}h1{font-size:1.4em;text-transform:none;}h2{font-size:1em;color:brown;}h3{font-size:1em;color:#333333;text-align:justify;margin:0;padding:0;}h4{font-size:1.1em;font-style:bold;font-family: Arial, Helvetica, sans-serif;color:#000000;margin:0;padding:0;}hr{height:2px;color:#000000;background-color:#000000;border-bottom:1px solid #000000;}p, ul, ol{margin-top:1.5em;}ul, ol{margin-left:3em;}blockquote{margin-left:3em;margin-right:3em;font-style:italic; }a{text-decoration:none;color:#70A300;}a:hover{border:none;color:#70A300;}#despatchTable{border-collapse:collapse;font-size:11px;float:right;border-color:gray;}#ettnTable{border-collapse:collapse;font-size:11px;border-color:gray;}#customerPartyTable{border-width:0px;border-style:inset;border-color:gray;border-collapse:collapse;}#customerIDTable{border-width:2px;border-style:inset;border-color:gray;border-collapse:collapse; }#customerIDTableTd{border-width:2px;border-style:inset;border-color:gray;border-collapse:collapse;}#lineTable{border-width:2px;border-style:inset;border-color:black;border-collapse:collapse;}#lineTableTd{font-size:8px;border-width:1px;padding:1px;border-style:inset;border-color:black;background-color:white;}#lineTableTr{border-width:1px;padding:0px;border-style:inset;border-color:black;background-color:white;}#lineTableDummyTd{border-width:1px;border-color:white;padding:1px;border-style:inset;border-color:black;background-color:white;}#lineTableBudgetTd{border-width:2px;border-spacing:0px;padding:1px;border-style:inset;border-color:black;background-color:white;}#notesTable{border-width:2px;border-style:inset;border-color:black;border-collapse:collapse;}#notesTableTd{border-width:0px;border-style:inset;border-color:black;border-collapse:collapse;}table{border-spacing:0px;}#budgetContainerTable{border-width:0px;border-spacing:0px;border-style:inset;border-color:black;border-collapse:collapse;}td{border-color:gray;}#iptal{font-size: 150pt;opacity: 0.5;color: red;position: absolute;top: 550px;left: 220px;}#allowanceContainerTable{border-width:2px;border-style:inset;border-color:#000000;border-collapse:collapse;font-size:8px;}#allowanceContainerTd{font-size:8px;border-width:1px;padding:1px;border-style:inset;border-color:#000000;background-color:white;}#allowanceContainerTr{border-width:1px;padding:0px;border-style:inset;border-color:#000000;background-color: white;} </style>
				<title>e-arşiv-dmo</title>
			</head>
			<body style="margin-left=0.6in; margin-right=0.6in; margin-top=0.79in; margin-bottom=0.79in">
				<xsl:for-each select="$XML">
					<table style="border-color:blue; " border="0" cellspacing="0px" width="800" cellpadding="0px">
						<tbody>
							<tr valign="top">
								<td width="40%">
									<br/>
									<table align="center" border="0" width="100%">
										<tbody>
											<hr/>
											<tr align="left">
												<xsl:for-each select="//n1:Invoice">
													<xsl:for-each select="cac:AccountingSupplierParty">
														<xsl:for-each select="cac:Party">
															<td align="left">
																<xsl:if test="cac:PartyName">
																	<xsl:value-of select="cac:PartyName/cbc:Name"/>
																	<br/>
																</xsl:if>
																<xsl:for-each select="cac:Person">
																	<xsl:for-each select="cbc:Title">
																		<xsl:apply-templates/>
																		<span>
																			<xsl:text>&#160;</xsl:text>
																		</span>
																	</xsl:for-each>
																	<xsl:for-each select="cbc:FirstName">
																		<xsl:apply-templates/>
																		<span>
																			<xsl:text>&#160;</xsl:text>
																		</span>
																	</xsl:for-each>
																	<xsl:for-each select="cbc:MiddleName">
																		<xsl:apply-templates/>
																		<span>
																			<xsl:text>&#160;</xsl:text>
																		</span>
																	</xsl:for-each>
																	<xsl:for-each select="cbc:FamilyName">
																		<xsl:apply-templates/>
																		<span>
																			<xsl:text>&#160;</xsl:text>
																		</span>
																	</xsl:for-each>
																	<xsl:for-each select="cbc:NameSuffix">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</xsl:for-each>
															</td>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</tr>
											<tr align="left">
												<b>Merkez</b>
												<xsl:for-each select="//n1:Invoice">
													<xsl:for-each select="cac:AccountingSupplierParty">
														<xsl:for-each select="cac:Party">
															<td align="left">
																<xsl:for-each select="cac:PostalAddress">
																	<xsl:for-each select="cbc:StreetName">
																		<xsl:apply-templates/>
																		<span>
																			<xsl:text>&#160;</xsl:text>
																		</span>
																	</xsl:for-each>
																	<xsl:for-each select="cbc:BuildingName">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																	<xsl:if test="cbc:BuildingNumber">
																		<span>
																			<xsl:text> No:</xsl:text>
																		</span>
																		<xsl:for-each select="cbc:BuildingNumber">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																		<span>
																			<xsl:text>&#160;</xsl:text>
																		</span>
																	</xsl:if>
																	<br/>
																	<xsl:for-each select="cbc:PostalZone">
																		<xsl:apply-templates/>
																		<span>
																			<xsl:text>&#160;</xsl:text>
																		</span>
																	</xsl:for-each>
																	<xsl:for-each select="cbc:CitySubdivisionName">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																	<span>
																		<xsl:text>/ </xsl:text>
																	</span>
																	<xsl:for-each select="cbc:CityName">
																		<xsl:apply-templates/>
																		<span>
																			<xsl:text>&#160;</xsl:text>
																		</span>
																	</xsl:for-each>
																</xsl:for-each>
															</td>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</tr>
											<xsl:if test="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Telephone or //n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Telefax">
												<tr align="left">
													<xsl:for-each select="//n1:Invoice">
														<xsl:for-each select="cac:AccountingSupplierParty">
															<xsl:for-each select="cac:Party">
																<td align="left">
																	<xsl:for-each select="cac:Contact">
																		<xsl:if test="cbc:Telephone">
																			<span>
																				<xsl:text>Tel: </xsl:text>
																			</span>
																			<xsl:for-each select="cbc:Telephone">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</xsl:if>
																		<xsl:if test="cbc:Telefax">
																			<span>
																				<xsl:text> Fax: </xsl:text>
																			</span>
																			<xsl:for-each select="cbc:Telefax">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</xsl:if>
																		<span>
																			<xsl:text>&#160;</xsl:text>
																		</span>
																	</xsl:for-each>
																</td>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</tr>
											</xsl:if>
											<xsl:for-each select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cbc:WebsiteURI">
												<tr align="left">
													<td>
														<xsl:text>Web Sitesi: </xsl:text>
														<xsl:value-of select="."/>
													</td>
												</tr>
											</xsl:for-each>
											<xsl:for-each select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:ElectronicMail">
												<tr align="left">
													<td>
														<xsl:text>E-Posta: </xsl:text>
														<xsl:value-of select="."/>
													</td>
												</tr>
											</xsl:for-each>
											<tr align="left">
												<xsl:for-each select="//n1:Invoice">
													<xsl:for-each select="cac:AccountingSupplierParty">
														<xsl:for-each select="cac:Party">
															<td align="left">
																<span>
																	<xsl:text>Vergi Dairesi: </xsl:text>
																</span>
																<xsl:for-each select="cac:PartyTaxScheme">
																	<xsl:for-each select="cac:TaxScheme">
																		<xsl:for-each select="cbc:Name">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</xsl:for-each>
																	<span>
																		<xsl:text>&#160; </xsl:text>
																	</span>
																</xsl:for-each>
															</td>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</tr>
											<xsl:for-each select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification">
												<tr align="left">
													<td>
														<xsl:value-of select="cbc:ID/@schemeID"/>
														<xsl:text>: </xsl:text>
														<xsl:value-of select="cbc:ID"/>
													</td>
												</tr>
											</xsl:for-each>
										</tbody>
									</table>
									<hr/>
								</td>
								<td width="20%" align="center" valign="middle">
									<br/>
									<br/>
									<img style="width:91px;" align="middle" alt="E-Fatura Logo" src="data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABkAAD/4QMZaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzEzMiA3OS4xNTkyODQsIDIwMTYvMDQvMTktMTM6MTM6NDAgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjZDNDJBNEI2QjVCRDExRThCQjM0REIwQkZGMEQxODY0IiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjZDNDJBNEI1QjVCRDExRThCQjM0REIwQkZGMEQxODY0IiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDUzQgV2luZG93cyI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSIzREVENkU1N0FDREVDNEJBNzkxNUM2M0NCN0RENzM0NyIgc3RSZWY6ZG9jdW1lbnRJRD0iM0RFRDZFNTdBQ0RFQzRCQTc5MTVDNjNDQjdERDczNDciLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7/7gAOQWRvYmUAZMAAAAAB/9sAhAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEB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"/>
									<h1 align="center">
										<span style="font-weight:bold;">
											<xsl:text>e-Arşiv Fatura</xsl:text>
										</span>
									</h1>
								</td>
								<td width='40%' valign='middle' align='right'><img style='max-width:320px; max-height:180px;' alt = 'Firma Logo' src = 'data:image/jpeg;base64,iVBORw0KGgoAAAANSUhEUgAAAGQAAAAcCAYAAACXkxr4AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA3ZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDcuMS1jMDAwIDc5LmVkYTJiM2ZhYywgMjAyMS8xMS8xNy0xNzoyMzoxOSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDpjMmQ2OWJmZi05Njc0LTliNDQtYmQ4Zi00OTU2OWRhMzU1YTQiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6NEM1QjhBNDQ4QzI4MTFFQ0FFQkFCOTc4QzBCMjc4QUQiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6NEM1QjhBNDM4QzI4MTFFQ0FFQkFCOTc4QzBCMjc4QUQiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIDIzLjEgKFdpbmRvd3MpIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6YzJkNjliZmYtOTY3NC05YjQ0LWJkOGYtNDk1NjlkYTM1NWE0IiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOmMyZDY5YmZmLTk2NzQtOWI0NC1iZDhmLTQ5NTY5ZGEzNTVhNCIv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'/></td>
							</tr>
							<tr style="height:118px; " valign="top">
								<td width="40%" align="right" valign="bottom">
									<table id="customerPartyTable" align="left" border="0" height="50%">
										<tbody>
											<tr style="height:71px; ">
												<td>
													<hr/>
													<table align="center" border="0">
														<tbody>
															<tr>
																<xsl:for-each select="//n1:Invoice">
																	<xsl:for-each select="cac:AccountingCustomerParty">
																		<xsl:for-each select="cac:Party">
																			<td style="width:469px; " align="left">
																				<span style="font-weight:bold;">
																					<xsl:text>SAYIN</xsl:text>
																				</span>
																			</td>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</tr>
															<tr>
																<xsl:for-each select="//n1:Invoice">
																	<xsl:for-each select="cac:AccountingCustomerParty">
																		<xsl:for-each select="cac:Party">
																			<td style="width:469px; " align="left">
																				<xsl:if test="cac:PartyName">
																					<xsl:value-of select="cac:PartyName/cbc:Name"/>
																					<br/>
																				</xsl:if>
																				<xsl:for-each select="cac:Person">
																					<xsl:for-each select="cbc:Title">
																						<xsl:apply-templates/>
																						<span>
																							<xsl:text>&#160;</xsl:text>
																						</span>
																					</xsl:for-each>
																					<xsl:for-each select="cbc:FirstName">
																						<xsl:apply-templates/>
																						<span>
																							<xsl:text>&#160;</xsl:text>
																						</span>
																					</xsl:for-each>
																					<xsl:for-each select="cbc:MiddleName">
																						<xsl:apply-templates/>
																						<span>
																							<xsl:text>&#160;</xsl:text>
																						</span>
																					</xsl:for-each>
																					<xsl:for-each select="cbc:FamilyName">
																						<xsl:apply-templates/>
																						<span>
																							<xsl:text>&#160;</xsl:text>
																						</span>
																					</xsl:for-each>
																					<xsl:for-each select="cbc:NameSuffix">
																						<xsl:apply-templates/>
																					</xsl:for-each>
																				</xsl:for-each>
																			</td>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</tr>
															<tr>
																<xsl:for-each select="n1:Invoice">
																	<xsl:for-each select="cac:AccountingCustomerParty">
																		<xsl:for-each select="cac:Party">
																			<td style="width:469px; " align="left">
																				<xsl:for-each select="cac:PostalAddress">
																					<xsl:for-each select="cbc:StreetName">
																						<xsl:apply-templates/>
																						<span>
																							<xsl:text>&#160;</xsl:text>
																						</span>
																					</xsl:for-each>
																					<xsl:for-each select="cbc:BuildingName">
																						<xsl:apply-templates/>
																					</xsl:for-each>
																					<xsl:for-each select="cbc:BuildingNumber">
																						<span>
																							<xsl:text> No:</xsl:text>
																						</span>
																						<xsl:apply-templates/>
																						<span>
																							<xsl:text>&#160;</xsl:text>
																						</span>
																					</xsl:for-each>
																					<br/>
																					<xsl:for-each select="cbc:Room">
																						<span>
																							<xsl:text>Kapı No:</xsl:text>
																						</span>
																						<xsl:apply-templates/>
																						<span>
																							<xsl:text>&#160;</xsl:text>
																						</span>
																					</xsl:for-each>
																					<br/>
																					<xsl:for-each select="cbc:PostalZone">
																						<xsl:apply-templates/>
																						<span>
																							<xsl:text>&#160;</xsl:text>
																						</span>
																					</xsl:for-each>
																					<xsl:for-each select="cbc:CitySubdivisionName">
																						<xsl:apply-templates/>
																						<span>
																							<xsl:text>/ </xsl:text>
																						</span>
																					</xsl:for-each>
																					<xsl:for-each select="cbc:CityName">
																						<xsl:apply-templates/>
																						<span>
																							<xsl:text>&#160;</xsl:text>
																						</span>
																					</xsl:for-each>
																				</xsl:for-each>
																			</td>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</tr>
															<xsl:for-each select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cbc:WebsiteURI">
																<tr align="left">
																	<td>
																		<xsl:text>Web Sitesi: </xsl:text>
																		<xsl:value-of select="."/>
																	</td>
																</tr>
															</xsl:for-each>
															<xsl:for-each select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:ElectronicMail">
																<tr align="left">
																	<td>
																		<xsl:text>E-Posta: </xsl:text>
																		<xsl:value-of select="."/>
																	</td>
																</tr>
															</xsl:for-each>
															<xsl:for-each select="//n1:Invoice">
																<xsl:for-each select="cac:AccountingCustomerParty">
																	<xsl:for-each select="cac:Party">
																		<xsl:for-each select="cac:Contact">
																			<xsl:if test="cbc:Telephone or cbc:Telefax">
																				<tr align="left">
																					<td style="width:469px; " align="left">
																						<xsl:for-each select="cbc:Telephone">
																							<span>
																								<xsl:text>Tel: </xsl:text>
																							</span>
																							<xsl:apply-templates/>
																						</xsl:for-each>
																						<xsl:for-each select="cbc:Telefax">
																							<span>
																								<xsl:text> Fax: </xsl:text>
																							</span>
																							<xsl:apply-templates/>
																						</xsl:for-each>
																						<span>
																							<xsl:text>&#160;</xsl:text>
																						</span>
																					</td>
																				</tr>
																			</xsl:if>
																			<xsl:if test="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:Name">
																				<tr align="left">
																					<td>
																						<span>
																							<xsl:text>Vergi Dairesi: </xsl:text>
																							<xsl:value-of select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:Name"/>
																						</span>
																					</td>
																				</tr>
																			</xsl:if>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
															<xsl:for-each select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification">
																<tr align="left">
																	<td>
																		<xsl:value-of select="cbc:ID/@schemeID"/>
																		<xsl:text>: </xsl:text>
																		<xsl:value-of select="cbc:ID"/>
																	</td>
																</tr>
															</xsl:for-each>
														</tbody>
													</table>
													<hr/>
												</td>
											</tr>
										</tbody>
									</table>
									<br/>
								</td>
								<td width='20%' align='center' valign='top'><img style='max-width:150px; max-height:150px;' align='center' alt='Firma İmzası' src='data:image/jpeg;base64,iVBORw0KGgoAAAANSUhEUgAAAGQAAAAcCAYAAACXkxr4AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA3ZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDcuMS1jMDAwIDc5LmVkYTJiM2ZhYywgMjAyMS8xMS8xNy0xNzoyMzoxOSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDpjMmQ2OWJmZi05Njc0LTliNDQtYmQ4Zi00OTU2OWRhMzU1YTQiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6NEM1QjhBNDQ4QzI4MTFFQ0FFQkFCOTc4QzBCMjc4QUQiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6NEM1QjhBNDM4QzI4MTFFQ0FFQkFCOTc4QzBCMjc4QUQiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIDIzLjEgKFdpbmRvd3MpIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6YzJkNjliZmYtOTY3NC05YjQ0LWJkOGYtNDk1NjlkYTM1NWE0IiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOmMyZDY5YmZmLTk2NzQtOWI0NC1iZDhmLTQ5NTY5ZGEzNTVhNCIv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'/></td>
								<td width="40%" align="center" valign="bottom" colspan="2">
									<table border="1" height="13" id="despatchTable">
										<tbody>
											<xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode">
												<xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode[starts-with(., 'HKS')]">
													<tr style="height:13px;">
														<td align="left">
															<span style="font-weight:bold;">
																<xsl:text>Özelleştirme No:</xsl:text>
															</span>
														</td>
														<td align="left">
															TR1.2
														</td>
													</tr>
													<tr style="height:13px;">
														<td align="left">
															<span style="font-weight:bold;">
																<xsl:text>Senaryo:</xsl:text>
															</span>
														</td>
														<td align="left">
															EARSIVFATURA
														</td>
													</tr>
												</xsl:if>
												<tr style="height:13px;">
													<td align="left">
														<span style="font-weight:bold;">
															<xsl:text>Fatura Tipi:</xsl:text>
														</span>
													</td>
													<td align="left">
														<xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode[starts-with(., 'HKS')]">
															<xsl:value-of select="substring(//n1:Invoice/cbc:InvoiceTypeCode, 4)"/>
														</xsl:if>
														<xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode[not(starts-with(., 'HKS'))]">
															<xsl:value-of select="//n1:Invoice/cbc:InvoiceTypeCode"/>
														</xsl:if>
													</td>
												</tr>
											</xsl:if>
											<tr>
												<td align="left">
													<span style="font-weight:bold;">
														<xsl:text>Belge No:</xsl:text>
													</span>
												</td>
												<td align="left">
													<xsl:for-each select="//n1:Invoice">
														<xsl:for-each select="cbc:ID">
															<xsl:apply-templates/>
														</xsl:for-each>
													</xsl:for-each>
												</td>
											</tr>
											<tr>
												<td align="left">
													<span style="font-weight:bold;">
														<xsl:text>Fatura Tarihi:</xsl:text>
													</span>
												</td>
												<td align="left">
													<xsl:for-each select="//n1:Invoice">
														<xsl:for-each select="cbc:IssueDate">
															<xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
														</xsl:for-each>
														<xsl:text> </xsl:text>
														<xsl:for-each select="cbc:IssueTime">
															<xsl:value-of select="substring(.,1,5)"/>
														</xsl:for-each>
													</xsl:for-each>
												</td>
											</tr>
											<xsl:for-each select="//n1:Invoice/cac:DespatchDocumentReference">
												<tr>
													<td align="left">
														<span style="font-weight:bold;">
															<xsl:text>İrsaliye No:</xsl:text>
														</span>
														<span>
															<xsl:text>&#160;</xsl:text>
														</span>
													</td>
													<td align="left">
														<xsl:value-of select="cbc:ID"/>
													</td>
												</tr>
												<tr>
													<td align="left">
														<span style="font-weight:bold;">
															<xsl:text>İrsaliye Tarihi:</xsl:text>
														</span>
													</td>
													<td align="left">
														<xsl:for-each select="cbc:IssueDate">
															<xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
														</xsl:for-each>
													</td>
												</tr>
											</xsl:for-each>
											<xsl:if test="//n1:Invoice/cac:OrderReference">
												<tr>
													<td align="left">
														<span style="font-weight:bold;">
															<xsl:text>Sipariş No:</xsl:text>
														</span>
													</td>
													<td align="left">
														<xsl:for-each select="//n1:Invoice/cac:OrderReference">
															<xsl:for-each select="cbc:ID">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
													</td>
												</tr>
											</xsl:if>
											<xsl:if test="//n1:Invoice/cac:OrderReference/cbc:IssueDate">
												<tr>
													<td align="left">
														<span style="font-weight:bold;">
															<xsl:text>Sipariş Tarihi:</xsl:text>
														</span>
													</td>
													<td align="left">
														<xsl:for-each select="//n1:Invoice/cac:OrderReference">
															<xsl:for-each select="cbc:IssueDate">
																<xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
															</xsl:for-each>
														</xsl:for-each>
													</td>
												</tr>
											</xsl:if>
											<xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference">
												<xsl:if test="cbc:ID = 'faturaIptal' and cbc:DocumentType = '1'">
													<tr condition="//n1:Invoice/cac:OrderReference">
														<td align="left" id="lineTableTd">
															<strong style="color: rgb(105, 105, 105); font-family: verdana, geneva, sans-serif; font-size: 10px;">İptal Tarihi:</strong>
														</td>
														<td id="lineTableTd">
															<span style="color: rgb(105, 105, 105);">
																<span style="font-size: 10px;">
																	<span style="font-family: verdana,geneva,sans-serif;">
																		<xsl:for-each select="cbc:IssueDate">
																			<xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
																		</xsl:for-each>
																		<div id="iptal">İptal</div>
																	</span>
																</span>
															</span>
														</td>
													</tr>
												</xsl:if>
											</xsl:for-each>
										</tbody>
									</table>
								</td>
							</tr>
							<tr align="left">
								<table id="ettnTable">
									<tr style="height:13px;">
										<td align="left" valign="top">
											<span style="font-weight:bold;">
												<xsl:text>ETTN: </xsl:text>
											</span>
										</td>
										<td align="left" width="240px">
											<xsl:for-each select="//n1:Invoice">
												<xsl:for-each select="cbc:UUID">
													<xsl:apply-templates/>
												</xsl:for-each>
											</xsl:for-each>
										</td>
									</tr>
								</table>
							</tr>
						</tbody>
					</table>
					<div id="lineTableAligner">
						<span>
							<xsl:text>&#160;</xsl:text>
						</span>
					</div>
					<table border="1" id="lineTable" width="800">
						<tbody>
							<tr id="lineTableTr">
								<td id="lineTableTd" style="width:2%" align="center">
									<span style="font-weight:bold;">
										<xsl:text>Sıra No</xsl:text>
									</span>
								</td>
								<td id="lineTableTd" style="width:5%" align="center">
									<span style="font-weight:bold;">
										<xsl:text>Malzeme/Hizmet Kodu</xsl:text>
									</span>
								</td>
								<td id="lineTableTd" style="width:10%" align="center">
									<span style="font-weight:bold;">
										<xsl:text>Malzeme/Hizmet Açıklaması</xsl:text>
									</span>
								</td>
								<td id="lineTableTd" style="width:7%" align="center">
									<span style="font-weight:bold;">
										<xsl:text>Satır Açıklaması</xsl:text>
									</span>
								</td>
								<td id="lineTableTd" style="width:10%" align="center">
									<span style="font-weight:bold;">
										<xsl:text>Alıcı Ürün Kodu</xsl:text>
									</span>
								</td>
								<td id="lineTableTd" style="width:10%" align="center">
									<span style="font-weight:bold;">
										<xsl:text>Üretici Ürün Kodu</xsl:text>
									</span>
								</td>
								<xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode ='HKSSATIS' or //n1:Invoice/cbc:InvoiceTypeCode ='HKSKOMISYONCU'">
									<td id="lineTableTd" style="width:2%" align="center">
										<span style="font-weight:bold;">
											<xsl:text>Künye Numarası</xsl:text>
										</span>
									</td>
								</xsl:if>
								<xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode ='HKSSATIS'">
									<td id="lineTableTd" style="width:2%" align="center">
										<span style="font-weight:bold;">
											<xsl:text>Mal Sahibi Vkn/Tckn</xsl:text>
										</span>
									</td>
									<td id="lineTableTd" style="width:2%" align="center">
										<span style="font-weight:bold;">
											<xsl:text>Mal Sahibi Unvan / AdSoyad</xsl:text>
										</span>
									</td>
								</xsl:if>
								<td id="lineTableTd" style="width:8%" align="center">
									<span style="font-weight:bold;">
										<xsl:text>Miktar</xsl:text>
									</span>
								</td>
								<td id="lineTableTd" style="width:12%" align="center">
									<span style="font-weight:bold;">
										<xsl:text>Birim Fiyat</xsl:text>
									</span>
								</td>
								<td id="lineTableTd" style="width:9%" align="center">
									<span style="font-weight:bold;">
										<xsl:text>İskonto Oranı</xsl:text>
									</span>
								</td>
								<td id="lineTableTd" style="width:11%" align="center">
									<span style="font-weight:bold;">
										<xsl:text>İskonto Tutarı</xsl:text>
									</span>
								</td>
								<td id="lineTableTd" style="width:9%" align="center">
									<span style="font-weight:bold;">
										<xsl:text>KDV Oranı</xsl:text>
									</span>
								</td>
								<td id="lineTableTd" style="width:9%" align="center">
									<span style="font-weight:bold;">
										<xsl:text>KDV Tutarı</xsl:text>
									</span>
								</td>
								<td id="lineTableTd" style="width:7%;" align="center">
									<span style="font-weight:bold;">
										<xsl:text>Diğer Vergiler</xsl:text>
									</span>
								</td>
								<td id="lineTableTd" style="width:6%;" align="center">
									<span style="font-weight:bold;">
										<xsl:text>Vergi Muafiyet Sebebi</xsl:text>
									</span>
								</td>
								<td id="lineTableTd" style="width:11%" align="center">
									<span style="font-weight:bold;">
										<xsl:text>Malzeme/Hizmet Tutarı</xsl:text>
									</span>
								</td>
							</tr>
							<xsl:if test="count(//n1:Invoice/cac:InvoiceLine) &gt;= 20">
								<xsl:for-each select="//n1:Invoice/cac:InvoiceLine">
									<xsl:apply-templates select="."/>
								</xsl:for-each>
							</xsl:if>
							<xsl:if test="count(//n1:Invoice/cac:InvoiceLine) &lt; 20">
								<xsl:choose>
									<xsl:when test="//n1:Invoice/cac:InvoiceLine[1]">
										<xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[1]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:apply-templates select="//n1:Invoice"/>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:Invoice/cac:InvoiceLine[2]">
										<xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[2]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:choose>
											<xsl:when test="//n1:Invoice/cac:InvoiceLine[1]/cbc:ID = 1">
												<xsl:call-template name="geneliskonto"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:apply-templates select="//n1:Invoice"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:Invoice/cac:InvoiceLine[3]">
										<xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[3]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:choose>
											<xsl:when test="//n1:Invoice/cac:InvoiceLine[2]/cbc:ID = 2">
												<xsl:call-template name="geneliskonto"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:apply-templates select="//n1:Invoice"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:Invoice/cac:InvoiceLine[4]">
										<xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[4]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:choose>
											<xsl:when test="//n1:Invoice/cac:InvoiceLine[3]/cbc:ID = 3">
												<xsl:call-template name="geneliskonto"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:apply-templates select="//n1:Invoice"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:Invoice/cac:InvoiceLine[5]">
										<xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[5]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:choose>
											<xsl:when test="//n1:Invoice/cac:InvoiceLine[4]/cbc:ID = 4">
												<xsl:call-template name="geneliskonto"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:apply-templates select="//n1:Invoice"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:Invoice/cac:InvoiceLine[6]">
										<xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[6]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:choose>
											<xsl:when test="//n1:Invoice/cac:InvoiceLine[5]/cbc:ID = 5">
												<xsl:call-template name="geneliskonto"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:apply-templates select="//n1:Invoice"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:Invoice/cac:InvoiceLine[7]">
										<xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[7]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:choose>
											<xsl:when test="//n1:Invoice/cac:InvoiceLine[6]/cbc:ID = 6">
												<xsl:call-template name="geneliskonto"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:apply-templates select="//n1:Invoice"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:Invoice/cac:InvoiceLine[8]">
										<xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[8]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:choose>
											<xsl:when test="//n1:Invoice/cac:InvoiceLine[7]/cbc:ID = 7">
												<xsl:call-template name="geneliskonto"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:apply-templates select="//n1:Invoice"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:Invoice/cac:InvoiceLine[9]">
										<xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[9]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:choose>
											<xsl:when test="//n1:Invoice/cac:InvoiceLine[8]/cbc:ID = 8">
												<xsl:call-template name="geneliskonto"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:apply-templates select="//n1:Invoice"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:Invoice/cac:InvoiceLine[10]">
										<xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[10]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:choose>
											<xsl:when test="//n1:Invoice/cac:InvoiceLine[9]/cbc:ID = 9">
												<xsl:call-template name="geneliskonto"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:apply-templates select="//n1:Invoice"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:Invoice/cac:InvoiceLine[11]">
										<xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[11]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:choose>
											<xsl:when test="//n1:Invoice/cac:InvoiceLine[10]/cbc:ID = 10">
												<xsl:call-template name="geneliskonto"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:apply-templates select="//n1:Invoice"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:Invoice/cac:InvoiceLine[12]">
										<xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[12]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:choose>
											<xsl:when test="//n1:Invoice/cac:InvoiceLine[11]/cbc:ID = 11">
												<xsl:call-template name="geneliskonto"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:apply-templates select="//n1:Invoice"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:Invoice/cac:InvoiceLine[13]">
										<xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[13]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:choose>
											<xsl:when test="//n1:Invoice/cac:InvoiceLine[12]/cbc:ID = 12">
												<xsl:call-template name="geneliskonto"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:apply-templates select="//n1:Invoice"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:Invoice/cac:InvoiceLine[14]">
										<xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[14]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:choose>
											<xsl:when test="//n1:Invoice/cac:InvoiceLine[13]/cbc:ID = 13">
												<xsl:call-template name="geneliskonto"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:apply-templates select="//n1:Invoice"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:Invoice/cac:InvoiceLine[15]">
										<xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[15]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:choose>
											<xsl:when test="//n1:Invoice/cac:InvoiceLine[14]/cbc:ID = 14">
												<xsl:call-template name="geneliskonto"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:apply-templates select="//n1:Invoice"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:Invoice/cac:InvoiceLine[16]">
										<xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[16]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:choose>
											<xsl:when test="//n1:Invoice/cac:InvoiceLine[15]/cbc:ID = 15">
												<xsl:call-template name="geneliskonto"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:apply-templates select="//n1:Invoice"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:Invoice/cac:InvoiceLine[17]">
										<xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[17]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:choose>
											<xsl:when test="//n1:Invoice/cac:InvoiceLine[16]/cbc:ID = 16">
												<xsl:call-template name="geneliskonto"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:apply-templates select="//n1:Invoice"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:Invoice/cac:InvoiceLine[18]">
										<xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[18]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:choose>
											<xsl:when test="//n1:Invoice/cac:InvoiceLine[17]/cbc:ID = 17">
												<xsl:call-template name="geneliskonto"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:apply-templates select="//n1:Invoice"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:Invoice/cac:InvoiceLine[19]">
										<xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[19]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:choose>
											<xsl:when test="//n1:Invoice/cac:InvoiceLine[18]/cbc:ID = 18">
												<xsl:call-template name="geneliskonto"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:apply-templates select="//n1:Invoice"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:Invoice/cac:InvoiceLine[20]">
										<xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[20]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:choose>
											<xsl:when test="//n1:Invoice/cac:InvoiceLine[19]/cbc:ID = 19">
												<xsl:call-template name="geneliskonto"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:apply-templates select="//n1:Invoice"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:Invoice/cac:InvoiceLine[21]">
										<xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[21]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:apply-templates select="//n1:Invoice"/>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="//n1:Invoice/cac:InvoiceLine[22]">
										<xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[22]"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:apply-templates select="//n1:Invoice"/>
									</xsl:otherwise>
								</xsl:choose>

							</xsl:if>
						</tbody>
					</table>
				</xsl:for-each>
				<xsl:variable name="var_Masraf" select="count(//n1:Invoice/cac:AllowanceCharge[./cbc:ChargeIndicator = 'false'])"/>
				<xsl:variable name="var_USD" select="count(//n1:Invoice/cac:AllowanceCharge/cbc:Amount[@currencyID='USD'])"/>
				<xsl:variable name="var_TRY" select="count(//n1:Invoice/cac:AllowanceCharge/cbc:Amount[@currencyID='TRY'])"/>
				<xsl:if test="(//n1:Invoice/cbc:InvoiceTypeCode ='HKSSATIS' or //n1:Invoice/cbc:InvoiceTypeCode ='HKSKOMISYONCU') and $var_Masraf > 0">
					<br/>
					<br/>
					<table width="800px">
						<tr>
							<td width="60%">
								<table>
									<tr>
										<td id="allowanceContainerTd" style="width:20%">
											<span style="font-weight:bold;">
												<xsl:text>Masraf Türü</xsl:text>
											</span>
										</td>
										<td id="allowanceContainerTd" style="width:20%">
											<span style="font-weight:bold;">
												<xsl:text>Masraf Oranı%</xsl:text>
											</span>
										</td>
										<td id="allowanceContainerTd">
											<span style="font-weight:bold;">
												<xsl:text>Masraf Tutarı</xsl:text>
											</span>
										</td>
										<xsl:if test="$var_Masraf > 0 and $var_TRY = 0">
											<td id="allowanceContainerTd">
												<span style="font-weight:bold;">
													<xsl:text>Masraf Tutarı TL</xsl:text>
												</span>
											</td>
										</xsl:if>
									</tr>
									<xsl:for-each select="//n1:Invoice/cac:AllowanceCharge/cbc:AllowanceChargeReason[starts-with(., 'HKS') and not(contains(.,'KDV'))]">
										<tr>
											<td id="allowanceContainerTd" style="width:20%">
												<xsl:value-of select="substring(../cbc:AllowanceChargeReason, 4)"/>
											</td>
											<td id="allowanceContainerTd" style="width:20%">
												<xsl:value-of select="../cbc:MultiplierFactorNumeric"/>
											</td>
											<td id="allowanceContainerTd" style="width:10%">
												<xsl:value-of select="../cbc:Amount"/>
												<xsl:text> </xsl:text>
												<xsl:if test="../cbc:Amount/@currencyID = 'TRY' and $var_TRY = 0">
													TL
												</xsl:if>
												<xsl:if test="../cbc:Amount/@currencyID != 'TRY'">
													<xsl:value-of select="../cbc:Amount/@currencyID"/>
												</xsl:if>
											</td>
											<xsl:if test="$var_Masraf > 0 and $var_TRY = 0">
												<td id="allowanceContainerTd" style="width:20%">
													<xsl:value-of select="format-number(../cbc:Amount * ../../cac:PricingExchangeRate/cbc:CalculationRate,'###.##0,00', 'european')"/>
													<xsl:text>&#160;TL</xsl:text>
												</td>
											</xsl:if>
										</tr>
									</xsl:for-each>
								</table>
							</td>
							<td>
								<table style="margin: 0 0 0 -3px">
									<tr>
										<td id="allowanceContainerTd" style="width:10%">
											<span style="font-weight:bold;">
												<xsl:text>Masraf Kdv Oranı %</xsl:text>
											</span>
										</td>
										<td id="allowanceContainerTd" style="width:10%">
											<span style="font-weight:bold;">
												<xsl:text>Masraf Kdv Tutarı</xsl:text>
											</span>
										</td>
										<xsl:if test="$var_Masraf > 0 and $var_TRY = 0">
											<td id="allowanceContainerTd" style="width:10%">
												<span style="font-weight:bold;">
													<xsl:text>Masraf Kdv Tutarı TL</xsl:text>
												</span>
											</td>
										</xsl:if>
									</tr>
									<xsl:for-each select="//n1:Invoice/cac:AllowanceCharge/cbc:AllowanceChargeReason[starts-with(., 'HKS') and contains(.,'KDV')]">
										<tr>
											<td id="allowanceContainerTd" style="width:10%">
												<xsl:value-of select="../cbc:MultiplierFactorNumeric"/>
											</td>
											<td id="allowanceContainerTd" style="width:10%">
												<xsl:value-of select="../cbc:Amount"/>
												<xsl:text> </xsl:text>
												<xsl:if test="../cbc:Amount/@currencyID = 'TRY' and $var_TRY = 0">
													TL
												</xsl:if>
												<xsl:if test="../cbc:Amount/@currencyID != 'TRY'">
													<xsl:value-of select="../cbc:Amount/@currencyID"/>
												</xsl:if>
											</td>
											<xsl:if test="$var_Masraf > 0 and $var_TRY = 0">
												<td id="allowanceContainerTd" style="width:10%">
													<xsl:value-of select="format-number(../cbc:Amount * ../../cac:PricingExchangeRate/cbc:CalculationRate,'###.##0,00', 'european')"/>
													<xsl:text> TL</xsl:text>
												</td>
											</xsl:if>
										</tr>
									</xsl:for-each>
								</table>
							</td>
						</tr>
					</table>
					<br/>
					<br/>
				</xsl:if>
				<table id="budgetContainerTable" width="800px">
					<tr id="budgetContainerTr" align="right">
						<td id="budgetContainerDummyTd"/>
						<td id="lineTableBudgetTd" align="right" width="270px">
							<span style="font-weight:bold;">
								<xsl:text>Malzeme/Hizmet Toplam Tutarı</xsl:text>
							</span>
						</td>
						<td id="lineTableBudgetTd" style="width:81px; " align="right">
							<span>
								<xsl:value-of select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount, '###.##0,00', 'european')"/>
								<xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID">
									<xsl:text> </xsl:text>
									<xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID='TRY'">
										<xsl:text>TL</xsl:text>
									</xsl:if>
									<xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID!='TRY'">
										<xsl:value-of select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID"/>
									</xsl:if>
								</xsl:if>
							</span>
						</td>
					</tr>
					<tr id="budgetContainerTr" align="right">
						<td id="budgetContainerDummyTd"/>
						<td id="lineTableBudgetTd" align="right" width="270px">
							<span style="font-weight:bold;">
								<xsl:text>Toplam İskonto</xsl:text>
							</span>
						</td>
						<td id="lineTableBudgetTd" width="81px" align="right">
							<span>
								<xsl:value-of select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount, '###.##0,00', 'european')"/>
								<xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID">
									<xsl:text> </xsl:text>
									<xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID='TRY'">
										<xsl:text>TL</xsl:text>
									</xsl:if>
									<xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID!='TRY'">
										<xsl:value-of select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID"/>
									</xsl:if>
								</xsl:if>
							</span>
						</td>
					</tr>
					<xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode ='HKSKOMISYONCU'">
						<tr id="budgetContainerTr" align="right">
							<td id="budgetContainerDummyTd"/>
							<td id="lineTableBudgetTd" align="right" width="270px">
								<span style="font-weight:bold;">
									<xsl:text>Toplam Masraf</xsl:text>
								</span>
							</td>
							<td id="lineTableBudgetTd">
								<span>
									<xsl:value-of select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:ChargeTotalAmount"/>&#160;TL
								</span>
							</td>
						</tr>
					</xsl:if>
					<xsl:for-each select="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
						<xsl:choose>
							<xsl:when test="not(cbc:Percent = 0.0000) or not(cbc:TaxAmount = 0)">
								<tr id="budgetContainerTr" align="right">
									<td id="budgetContainerDummyTd"/>
									<td id="lineTableBudgetTd" width="270px" align="right">
										<span style="font-weight:bold; ">
											<xsl:choose>
												<xsl:when test="cac:TaxCategory/cac:TaxScheme/cbc:Name=''">
													<xsl:text>Diğer Vergiler Toplamı </xsl:text>
												</xsl:when>
												<xsl:otherwise>
													<xsl:text>Hesaplanan </xsl:text>
													<xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
												</xsl:otherwise>
											</xsl:choose>
											<xsl:if test="cbc:Percent">
												<xsl:text>(%</xsl:text>
												<xsl:value-of select=" format-number(cbc:Percent, '###.##0,00', 'european')"/>
												<xsl:text>)</xsl:text>
											</xsl:if>
										</span>
									</td>
									<td id="lineTableBudgetTd" style="width:82px; " align="right">
										<xsl:for-each select="cac:TaxCategory/cac:TaxScheme">
											<xsl:text> </xsl:text>
											<xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
											<xsl:if test="../../cbc:TaxAmount/@currencyID">
												<xsl:text> </xsl:text>
												<xsl:if test="../../cbc:TaxAmount/@currencyID='TRY'">
													<xsl:text>TL</xsl:text>
												</xsl:if>
												<xsl:if test="../../cbc:TaxAmount/@currencyID!='TRY'">
													<xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
												</xsl:if>
											</xsl:if>
										</xsl:for-each>
									</td>
								</tr>
							</xsl:when>
							<xsl:when test="cbc:Percent = 0.0000 or cbc:TaxAmount = 0">
								<tr id="budgetContainerTr" align="right">
									<td id="budgetContainerDummyTd"/>
									<td id="lineTableBudgetTd" width="270px" align="right">
										<span style="font-weight:bold;">
											<xsl:choose>
												<xsl:when test="cac:TaxCategory/cac:TaxScheme/cbc:Name=''">
													<xsl:text>Diğer Vergiler Toplamı </xsl:text>
												</xsl:when>
												<xsl:otherwise>
													<xsl:text>Hesaplanan </xsl:text>
													<xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
												</xsl:otherwise>
											</xsl:choose>
											<xsl:if test="cbc:Percent">
												<xsl:text>(%</xsl:text>
												<xsl:value-of select=" format-number(cbc:Percent, '###.##0,00', 'european')"/>
												<xsl:text>)</xsl:text>
											</xsl:if>
										</span>
									</td>
									<td id="lineTableBudgetTd" style="width:82px; " align="right">
										<xsl:for-each select="cac:TaxCategory/cac:TaxScheme">
											<xsl:text> </xsl:text>
											<xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
											<xsl:if test="../../cbc:TaxAmount/@currencyID">
												<xsl:text> </xsl:text>
												<xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRY'">
													<xsl:text>TL</xsl:text>
												</xsl:if>
												<xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRY'">
													<xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
												</xsl:if>
											</xsl:if>
										</xsl:for-each>
									</td>
								</tr>
							</xsl:when>
						</xsl:choose>
					</xsl:for-each>
					<xsl:for-each select="//n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal">
						<xsl:if test="not(cbc:Percent = 0.0000) or not(cbc:TaxAmount = 0)">
							<tr id="budgetContainerTr" align="right">
								<td id="budgetContainerDummyTd"/>
								<td id="lineTableBudgetTd" width="270px" align="right">
									<span style="font-weight:bold; ">
										<xsl:choose>
											<xsl:when test="cac:TaxCategory/cac:TaxScheme/cbc:Name=''">
												<xsl:text>Diğer Vergiler Toplamı </xsl:text>
											</xsl:when>
											<xsl:otherwise>
												<xsl:text>Tevkifat (</xsl:text>
												<xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode"/>
												<xsl:text>-</xsl:text>
												<xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
												<xsl:text>)</xsl:text>
											</xsl:otherwise>
										</xsl:choose>
										<xsl:if test="cbc:Percent">
											<xsl:text>(%</xsl:text>
											<xsl:value-of select=" format-number(cbc:Percent, '###.##0,00', 'european')"/>
											<xsl:text>)</xsl:text>
										</xsl:if>
									</span>
								</td>
								<td id="lineTableBudgetTd" style="width:82px; " align="right">
									<xsl:for-each select="cac:TaxCategory/cac:TaxScheme">
										<xsl:text> </xsl:text>
										<xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
										<xsl:if test="../../cbc:TaxAmount/@currencyID">
											<xsl:text> </xsl:text>
											<xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRY'">
												<xsl:text>TL</xsl:text>
											</xsl:if>
											<xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRY'">
												<xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
											</xsl:if>
										</xsl:if>
									</xsl:for-each>
								</td>
							</tr>
						</xsl:if>
					</xsl:for-each>
					<xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode = 'TEVKIFAT'">
						<tr id="budgetContainerTr" align="right">
							<td id="budgetContainerDummyTd"/>
							<td id="lineTableBudgetTd" align="right" width="270px">
								<span style="font-weight:bold; ">
									<xsl:text>Beyan Edilen KDV Tutarı</xsl:text>
								</span>
							</td>
							<td id="lineTableBudgetTd" style="width:82px; " align="right">
								<xsl:variable name="totalKDV">
									<xsl:choose>
										<xsl:when test="sum(n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = '0015']/cbc:TaxAmount) &gt; 0">
											<xsl:value-of select="sum(n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = '0015']/cbc:TaxAmount)"/>
										</xsl:when>
										<xsl:otherwise>0</xsl:otherwise>
									</xsl:choose>
								</xsl:variable>
								<xsl:variable name="totalTevkifat">
									<xsl:choose>
										<xsl:when test="n1:Invoice/cac:WithholdingTaxTotal/cbc:TaxAmount &gt; 0">
											<xsl:value-of select="n1:Invoice/cac:WithholdingTaxTotal/cbc:TaxAmount"/>
										</xsl:when>
										<xsl:otherwise>0</xsl:otherwise>
									</xsl:choose>
								</xsl:variable>
								<xsl:value-of select="format-number($totalKDV - $totalTevkifat, '###.##0,00', 'european')"/>
								<xsl:choose>
									<xsl:when test="n1:Invoice/cbc:DocumentCurrencyCode = 'TRL' or n1:Invoice/cbc:DocumentCurrencyCode = 'TRY'">
										<xsl:text> TL</xsl:text>
									</xsl:when>
									<xsl:otherwise>
										<xsl:text> </xsl:text>
										<xsl:value-of select="n1:Invoice/cbc:DocumentCurrencyCode"/>
									</xsl:otherwise>
								</xsl:choose>
							</td>
						</tr>
					</xsl:if>
					<tr id="budgetContainerTr" align="right">
						<td id="budgetContainerDummyTd"/>
						<td id="lineTableBudgetTd" width="270px" align="right">
							<span style="font-weight:bold;">
								<xsl:text>Vergiler Dahil Toplam Tutar</xsl:text>
							</span>
						</td>
						<td id="lineTableBudgetTd" style="width:82px; " align="right">
							<xsl:for-each select="//n1:Invoice">
								<xsl:for-each select="cac:LegalMonetaryTotal">
									<xsl:for-each select="cbc:TaxInclusiveAmount">
										<xsl:value-of select="format-number(., '###.##0,00', 'european')"/>
										<xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID">
											<xsl:text> </xsl:text>
											<xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID='TRY'">
												<xsl:text>TL</xsl:text>
											</xsl:if>
											<xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID!='TRY'">
												<xsl:value-of select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID"/>
											</xsl:if>
										</xsl:if>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
						</td>
					</tr>
					<tr id="budgetContainerTr" align="right">
						<td id="budgetContainerDummyTd"/>
						<td id="lineTableBudgetTd" width="270px" align="right">
							<span style="font-weight:bold;">
								<xsl:text>Ödenecek Tutar</xsl:text>
							</span>
						</td>
						<td id="lineTableBudgetTd" style="width:82px; " align="right">
							<xsl:for-each select="//n1:Invoice">
								<xsl:for-each select="cac:LegalMonetaryTotal">
									<xsl:for-each select="cbc:PayableAmount">
										<xsl:value-of select="format-number(., '###.##0,00', 'european')"/>
										<xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID">
											<xsl:text> </xsl:text>
											<xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID='TRY'">
												<xsl:text>TL</xsl:text>
											</xsl:if>
											<xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID!='TRY'">
												<xsl:value-of select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID"/>
											</xsl:if>
										</xsl:if>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
						</td>
					</tr>
				</table>
				<xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID != 'TRY'">
					<table id="budgetContainerTable" width="800px">
						<tr id="budgetContainerTr2" align="right">
							<td id="budgetContainerDummyTd"/>
							<td id="lineTableBudgetTd" width="200px" align="right">
								<span style="font-weight:bold;">
									<xsl:text>Döviz Kuru</xsl:text>
								</span>
							</td>
							<td id="lineTableBudgetTd" width="082px" align="right">
								<xsl:value-of select="format-number(//n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,0000', 'european')"/>
								<xsl:text> </xsl:text>
								<xsl:text>TL</xsl:text>
							</td>
						</tr>
						<tr id="budgetContainerTr" align="right">
							<td id="budgetContainerDummyTd"/>
							<td id="lineTableBudgetTd" width="200px" align="right">
								<span style="font-weight:bold;">
									<xsl:text>Malzeme/Hizmet Toplam Tutarı</xsl:text>
								</span>
							</td>
							<td id="lineTableBudgetTd" width="082px" align="right">
								<span>
									<xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference">
										<xsl:if test="cbc:DocumentType = 'LINEEXTENSIONAMOUNT'">
											<xsl:value-of select="cbc:ID"/>
										</xsl:if>
									</xsl:for-each>
									<xsl:text> </xsl:text>
									<xsl:text>TL</xsl:text>
								</span>
							</td>
						</tr>
						<tr id="budgetContainerTr" align="right">
							<td id="budgetContainerDummyTd"/>
							<td id="lineTableBudgetTd" width="200px" align="right">
								<span style="font-weight:bold;">
									<xsl:text>Toplam İskonto</xsl:text>
								</span>
							</td>
							<td id="lineTableBudgetTd" width="082px" align="right">
								<span>
									<xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference">
										<xsl:if test="cbc:DocumentType = 'ALLOWANCETOTALAMOUNT'">
											<xsl:value-of select="cbc:ID"/>
										</xsl:if>
									</xsl:for-each>
									<xsl:text> </xsl:text>
									<xsl:text>TL</xsl:text>
								</span>
							</td>
						</tr>
						<xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode ='HKSKOMISYONCU'">
							<tr id="budgetContainerTr" align="right">
								<td id="budgetContainerDummyTd"/>
								<td id="lineTableBudgetTd" width="200px" align="right">
									<span style="font-weight:bold;">
										<xsl:text>Toplam Masraf</xsl:text>
									</span>
								</td>
								<td id="lineTableBudgetTd">
									<span>
										<xsl:value-of select="format-number(number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:ChargeTotalAmount) * number(//n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate), '###.##0,00', 'european')"/>&#160;TL
									</span>
								</td>
							</tr>
						</xsl:if>
						<xsl:for-each select="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
							<xsl:if test="not(cbc:TaxAmount=0)">
								<tr id="budgetContainerTr" align="right">
									<td id="budgetContainerDummyTd"/>
									<td id="lineTableBudgetTd" width="270px" align="right">
										<span style="font-weight:bold; ">
											<xsl:choose>
												<xsl:when test="cac:TaxCategory/cac:TaxScheme/cbc:Name=''">
													<xsl:text>Diğer Vergiler Toplamı </xsl:text>
												</xsl:when>
												<xsl:otherwise>
													<xsl:text>Hesaplanan </xsl:text>
													<xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
												</xsl:otherwise>
											</xsl:choose>
											<xsl:if test="(cbc:Percent='')">
												<xsl:text> </xsl:text>
											</xsl:if>
											<xsl:if test="cbc:Percent !=''">
												<xsl:text>(%</xsl:text>
												<xsl:value-of select=" format-number(cbc:Percent, '###.##0,00', 'european')"/>
												<xsl:text>)</xsl:text>
											</xsl:if>
										</span>
									</td>
									<td id="lineTableBudgetTd" style="width:82px; " align="right">
										<xsl:text> </xsl:text>
										<xsl:variable name="var_Percent" select="cbc:Percent"/>
										<xsl:variable name="var_TaxTypeCode" select="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode"/>
										<xsl:variable name="var_Name" select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
										<xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference">
											<xsl:if test="(cbc:DocumentTypeCode = $var_TaxTypeCode) and (not(cbc:ID=0))">
												<xsl:choose>
													<xsl:when test="(cbc:DocumentType = $var_Percent)">
														<xsl:value-of select="format-number(cbc:ID, '###.##0,00', 'european')"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:if test="not($var_Percent) and not(cbc:DocumentType)">
															<xsl:value-of select="format-number(cbc:ID, '###.##0,00', 'european')"/>
														</xsl:if>
													</xsl:otherwise>
												</xsl:choose>
											</xsl:if>
										</xsl:for-each>
										<xsl:text>&#160;TL</xsl:text>
									</td>
								</tr>
							</xsl:if>
						</xsl:for-each>
						<xsl:for-each select="//n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal">
							<xsl:if test="not(cbc:TaxAmount = 0)">
								<tr id="budgetContainerTr" align="right">
									<td id="budgetContainerDummyTd"/>
									<td id="lineTableBudgetTd" width="270px" align="right">
										<span style="font-weight:bold; ">
											<xsl:choose>
												<xsl:when test="cac:TaxCategory/cac:TaxScheme/cbc:Name=''">
													<xsl:text>Diğer Vergiler Toplamı </xsl:text>
												</xsl:when>
												<xsl:otherwise>
													<xsl:text>Tevkifat (</xsl:text>
													<xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode"/>
													<xsl:text>-</xsl:text>
													<xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
													<xsl:text>)</xsl:text>
												</xsl:otherwise>
											</xsl:choose>
											<xsl:if test="(cbc:Percent='')">
												<xsl:text> </xsl:text>
											</xsl:if>
											<xsl:if test="cbc:Percent !=''">
												<xsl:text>(%</xsl:text>
												<xsl:value-of select="format-number(cbc:Percent, '###.##0,00', 'european')"/>
												<xsl:text>)</xsl:text>
											</xsl:if>
										</span>
									</td>
									<td id="lineTableBudgetTd" style="width:82px; " align="right">
										<xsl:text> </xsl:text>
										<xsl:variable name="var_Percent" select="cbc:Percent"/>
										<xsl:variable name="var_TaxTypeCode" select="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode"/>
										<xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference">
											<xsl:if test="cbc:DocumentTypeCode = $var_TaxTypeCode">
												<xsl:value-of select="format-number(cbc:ID, '###.##0,00', 'european')"/>
											</xsl:if>
										</xsl:for-each>
										<xsl:text> </xsl:text>
										<xsl:text>TL</xsl:text>
									</td>
								</tr>
							</xsl:if>
						</xsl:for-each>
						<xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode = 'TEVKIFAT'">
							<tr id="budgetContainerTr" align="right">
								<td id="budgetContainerDummyTd"/>
								<td id="lineTableBudgetTd" align="right" width="270px">
									<span style="font-weight:bold; ">
										<xsl:text>Beyan Edilen KDV Tutarı</xsl:text>
									</span>
								</td>
								<td id="lineTableBudgetTd" style="width:82px; " align="right">
									<xsl:variable name="totalKDV">
										<xsl:choose>
											<xsl:when test="sum(n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = '0015']/cbc:TaxAmount) &gt; 0">
												<xsl:value-of select="sum(n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = '0015']/cbc:TaxAmount)"/>
											</xsl:when>
											<xsl:otherwise>0</xsl:otherwise>
										</xsl:choose>
									</xsl:variable>
									<xsl:variable name="totalTevkifat">
										<xsl:choose>
											<xsl:when test="n1:Invoice/cac:WithholdingTaxTotal/cbc:TaxAmount &gt; 0">
												<xsl:value-of select="n1:Invoice/cac:WithholdingTaxTotal/cbc:TaxAmount"/>
											</xsl:when>
											<xsl:otherwise>0</xsl:otherwise>
										</xsl:choose>
									</xsl:variable>
									<!--<xsl:value-of select="format-number($totalKDV - $totalTevkifat, '###.##0,00', 'european')"/>
                  <xsl:choose>
                    <xsl:when test="n1:Invoice/cbc:DocumentCurrencyCode = 'TRL' or n1:Invoice/cbc:DocumentCurrencyCode = 'TRY'">
                      <xsl:text> TL</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                      <xsl:text> </xsl:text>
                      <xsl:value-of select="n1:Invoice/cbc:DocumentCurrencyCode"/>
                    </xsl:otherwise>
                  </xsl:choose>-->
									<xsl:value-of select="format-number((number($totalKDV - $totalTevkifat) * number(//n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate)), '###.##0,00', 'european')"/> TL
								</td>
							</tr>
						</xsl:if>
						<tr id="budgetContainerTr" align="right">
							<td id="budgetContainerDummyTd"/>
							<td id="lineTableBudgetTd" width="200px" align="right">
								<span style="font-weight:bold;">
									<xsl:text>Vergiler Dahil Toplam Tutar</xsl:text>
								</span>
							</td>
							<td id="lineTableBudgetTd" width="082px" align="right">
								<xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference">
									<xsl:if test="cbc:DocumentType = 'TAXINCLUSIVEAMOUNT'">
										<xsl:value-of select="cbc:ID"/>
									</xsl:if>
								</xsl:for-each>
								<xsl:text> </xsl:text>
								<xsl:text>TL</xsl:text>
							</td>
						</tr>
						<tr id="budgetContainerTr2" align="right">
							<td id="budgetContainerDummyTd"/>
							<td id="lineTableBudgetTd" width="200px" align="right">
								<span style="font-weight:bold;">
									<xsl:text>Ödenecek Tutar</xsl:text>
								</span>
							</td>
							<td id="lineTableBudgetTd" width="082px" align="right">
								<xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference">
									<xsl:if test="cbc:DocumentType = 'PAYABLEAMOUNT'">
										<xsl:value-of select="cbc:ID"/>
									</xsl:if>
								</xsl:for-each>
								<xsl:text> </xsl:text>
								<xsl:text>TL</xsl:text>
							</td>
						</tr>
					</table>
				</xsl:if>
				<br/>
				<xsl:if test="//n1:Invoice/cac:BillingReference/cac:AdditionalDocumentReference/cbc:DocumentTypeCode='OKCBF'">
					<table border="1" id="lineTable" width="800">
						<thead>
							<tr>
								<th colspan="6">ÖKC Bilgileri</th>
							</tr>
						</thead>
						<tbody>
							<tr id="okcbfHeadTr" style="font-weight:bold;">
								<td style="width:20%">
									<xsl:text>Fiş Numarası</xsl:text>
								</td>
								<td style="width:10%" align="center">
									<xsl:text>Fiş Tarihi</xsl:text>
								</td>
								<td style="width:10%" align="center">
									<xsl:text>Fiş Saati</xsl:text>
								</td>
								<td style="width:40%" align="center">
									<xsl:text>Fiş Tipi</xsl:text>
								</td>
								<td style="width:10%" align="center">
									<xsl:text>Z Rapor No</xsl:text>
								</td>
								<td style="width:10%" align="center">
									<xsl:text>ÖKC Seri No</xsl:text>
								</td>
							</tr>
						</tbody>
						<xsl:for-each select="//n1:Invoice/cac:BillingReference/cac:AdditionalDocumentReference/cbc:DocumentTypeCode[text()='OKCBF']">
							<tr>
								<td style="width:20%">
									<xsl:value-of select="../cbc:ID"/>
								</td>
								<td style="width:10%" align="center">
									<xsl:value-of select="../cbc:IssueDate"/>
								</td>
								<td style="width:10%" align="center">
									<xsl:value-of select="substring(../cac:ValidityPeriod/cbc:StartTime,1,5)"/>
								</td>
								<td style="width:40%" align="center">
									<xsl:choose>
										<xsl:when test="../cbc:DocumentDescription='AVANS'">
											<xsl:text>Ön Tahsilat(Avans) Bilgi Fişi</xsl:text>
										</xsl:when>
										<xsl:when test="../cbc:DocumentDescription='YEMEK_FIS'">
											<xsl:text>Yemek Fişi/Kartı ile Yapılan Tahsilat Bilgi Fişi</xsl:text>
										</xsl:when>
										<xsl:when test="../cbc:DocumentDescription='E-FATURA'">
											<xsl:text>E-Fatura Bilgi Fişi</xsl:text>
										</xsl:when>
										<xsl:when test="../cbc:DocumentDescription='E-FATURA_IRSALIYE'">
											<xsl:text>İrsaliye Yerine Geçen E-Fatura Bilgi Fişi</xsl:text>
										</xsl:when>
										<xsl:when test="../cbc:DocumentDescription='E-ARSIV'">
											<xsl:text>E-Arşiv Bilgi Fişi</xsl:text>
										</xsl:when>
										<xsl:when test="../cbc:DocumentDescription='E-ARSIV_IRSALIYE'">
											<xsl:text>İrsaliye Yerine Geçen E-Arşiv Bilgi Fişi</xsl:text>
										</xsl:when>
										<xsl:when test="../cbc:DocumentDescription='FATURA'">
											<xsl:text>Faturalı Satış Bilgi Fişi</xsl:text>
										</xsl:when>
										<xsl:when test="../cbc:DocumentDescription='OTOPARK'">
											<xsl:text>Otopark Giriş Bilgi Fişi</xsl:text>
										</xsl:when>
										<xsl:when test="../cbc:DocumentDescription='FATURA_TAHSILAT'">
											<xsl:text>Fatura Tahsilat Bilgi Fişi</xsl:text>
										</xsl:when>
										<xsl:when test="../cbc:DocumentDescription='FATURA_TAHSILAT_KOMISYONLU'">
											<xsl:text>Komisyonlu Fatura Tahsilat Bilgi Fişi</xsl:text>
										</xsl:when>
										<xsl:otherwise>
											<xsl:text/>
										</xsl:otherwise>
									</xsl:choose>
								</td>
								<td style="width:10%" align="center">
									<xsl:value-of select="../cac:Attachment/cac:ExternalReference/cbc:URI"/>
								</td>
								<td style="width:10%" align="center">
									<xsl:value-of select="../cac:IssuerParty/cbc:EndpointID"/>
								</td>
							</tr>
						</xsl:for-each>
					</table>
					<br/>
				</xsl:if>
				<br/>
				<table id="notesTable" width="800" align="left" height="120">
					<tbody>
						<tr align="left">
							<td id="notesTableTd">
								<xsl:if test="//n1:Invoice/cac:PaymentMeans/cbc:InstructionNote">
									<b>&#160;&#160;&#160;&#160;&#160; Ödeme Notu:&#160;&#160;</b>
									<xsl:value-of select="//n1:Invoice/cac:PaymentMeans/cbc:InstructionNote"/>
									<br/>
								</xsl:if>
								<xsl:for-each select="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
									<xsl:if test="normalize-space(cac:TaxCategory/cbc:TaxExemptionReason)">
										<b>&#160;&#160;&#160;&#160;&#160; Vergi muafiyet sebebi:&#160;&#160;</b>
										<xsl:value-of select="cac:TaxCategory/cbc:TaxExemptionReason"/>
										<br/>
									</xsl:if>
								</xsl:for-each>
								<xsl:if test="//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:PaymentNote">
									<b>&#160;&#160;&#160;&#160;&#160; Hesap Açıklaması:&#160;&#160;</b>
									<xsl:value-of select="//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:PaymentNote"/>
									<br/>
								</xsl:if>
								<xsl:if test="//n1:Invoice/cac:PaymentTerms/cbc:Note">
									<b>&#160;&#160;&#160;&#160;&#160; Ödeme Koşulu:&#160;&#160;</b>
									<xsl:value-of select="//n1:Invoice/cac:PaymentTerms/cbc:Note"/>
									<br/>
								</xsl:if>
								<br/>
								<br/>
								<xsl:if test="//n1:Invoice/cbc:Note">
									<b>&#160;&#160;&#160;&#160;&#160; Genel Açıklamalar</b>
									<br/>
									<xsl:for-each select="//n1:Invoice/cbc:Note">
										<b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</b>
										<xsl:value-of select="."/>
										<br/>
									</xsl:for-each>
									<p id="firmNotes"></p>
									<xsl:if test="//n1:Invoice/cac:PaymentTerms/cbc:PaymentDueDate != ''">
										<b>&#160;&#160;&#160;&#160;&#160; Vade Tarihi: </b>
										<xsl:for-each select="//n1:Invoice/cac:PaymentTerms">
											<xsl:for-each select="cbc:PaymentDueDate">
												<xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
											</xsl:for-each>
										</xsl:for-each>
										<br/>
									</xsl:if>
									<br/>
									<b>
										<span style="color:red; display:block; margin-left:20px;">
											<xsl:text>e-Arşiv faturalarınızı elektronik ortamda görüntülemek ve indirilebilmek için "</xsl:text>
											<a target="_blank" style="color:blue" href="https://faturasorgulama.elogo.com.tr">
												<xsl:text>https://faturasorgulama.elogo.com.tr</xsl:text>
											</a>
											<xsl:text>" platformunu kullanabilirsiniz.</xsl:text>
										</span>
									</b>
								</xsl:if>
								<br/>
								<br/>
								<xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference">
									<xsl:if test="cbc:ID = 'EINVOICE'">
										<xsl:if test="cbc:DocumentType=3">
											&#160;&#160;&#160;&#160;&#160; Bu satış internet üzerinden yapılmıştır.<br/>
											<br/>
											<b>&#160;&#160;&#160;&#160;&#160; İnternet Satış Bilgileri:</b>
											<br/>
											<br/>
											<xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference">
												<xsl:if test="cbc:ID = 'internetSatisBilgi/webAdresi'">
													&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Satış İşleminin Yapıldığı Web Adresi: </b>
													<xsl:value-of select="cbc:DocumentType"/>
													<br/>
												</xsl:if>
												<xsl:if test="cbc:ID = 'internetSatisBilgi/odemeAracisiAdi'">
													&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Ödeme Aracısı: </b>
													<xsl:value-of select="cbc:DocumentType"/>
													<br/>
												</xsl:if>
												<xsl:if test="cbc:ID = 'internetSatisBilgi/odemeSekli'">
													&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Ödeme Şekli: </b>
													<xsl:value-of select="cbc:DocumentType"/>
													<br/>
												</xsl:if>
												<xsl:if test="cbc:ID = 'internetSatisBilgi/odemeTarihi'">
													&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Ödeme Tarihi: </b>
													<xsl:value-of select="cbc:DocumentType"/>
													<br/>
												</xsl:if>
												<xsl:if test="cbc:ID = 'internetSatisBilgi/gonderiBilgileri/gonderimTarihi'">
													&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Gönderim Tarihi: </b>
													<xsl:value-of select="cbc:DocumentType"/>
													<br/>
												</xsl:if>
												<xsl:if test="cbc:ID = 'internetSatisBilgi/gonderiBilgileri/gonderiTasiyan/gercekKisi/tckn'">
													&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Gönderi Taşıyan TCKN: </b>
													<xsl:value-of select="cbc:DocumentType"/>
													<br/>
												</xsl:if>
												<xsl:if test="cbc:ID = 'internetSatisBilgi/gonderiBilgileri/gonderiTasiyan/tuzelKisi/vkn'">
													&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Gönderi Taşıyan VKN: </b>
													<xsl:value-of select="cbc:DocumentType"/>
													<br/>
												</xsl:if>
												<xsl:if test="cbc:ID = 'internetSatisBilgi/gonderiBilgileri/gonderiTasiyan/gercekKisi/adiSoyadi'">
													&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Gönderi Taşıyan Adı Soyadı: </b>
													<xsl:value-of select="cbc:DocumentType"/>
													<br/>
												</xsl:if>
												<xsl:if test="cbc:ID = 'internetSatisBilgi/gonderiBilgileri/gonderiTasiyan/tuzelKisi/unvan'">
													&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Gönderi Taşıyan Unvanı: </b>
													<xsl:value-of select="cbc:DocumentType"/>
													<br/>
												</xsl:if>
											</xsl:for-each>
											<br/>
											<b>&#160;&#160;&#160;&#160;&#160; İade  Bölümü:</b>
											<table style="margin-left:40px">
												<tr id="lineTableTr">
													<td id="lineTableTd" style="width:300px">
														<b>Malın Cinsi</b>
													</td>
													<td id="lineTableTd" style="width:100px">
														<b>Malın Miktarı</b>
													</td>
													<td id="lineTableTd" style="width:150px">
														<b>Birim Fiyat</b>
													</td>
													<td id="lineTableTd" style="width:150px">
														<b>Tutar</b>
													</td>
												</tr>
												<tr id="lineTableTr">
													<td id="lineTableTd">&#160;</td>
													<td id="lineTableTd">&#160;</td>
													<td id="lineTableTd">&#160;</td>
													<td id="lineTableTd">&#160;</td>
												</tr>
												<tr id="lineTableTr">
													<td id="lineTableTd">&#160;</td>
													<td id="lineTableTd">&#160;</td>
													<td id="lineTableTd">&#160;</td>
													<td id="lineTableTd">&#160;</td>
												</tr>
												<tr id="lineTableTr">
													<td id="lineTableTd">&#160;</td>
													<td id="lineTableTd">&#160;</td>
													<td id="lineTableTd">&#160;</td>
													<td id="lineTableTd">&#160;</td>
												</tr>
												<tr id="lineTableTr">
													<td id="lineTableTd">&#160;</td>
													<td id="lineTableTd">&#160;</td>
													<td id="lineTableTd">&#160;</td>
													<td id="lineTableTd">&#160;</td>
												</tr>
											</table>
											<br/>
											<br/>
											<b>&#160;&#160;&#160;&#160;&#160;Malı İade Edenin</b>
											<br/>
											<b>&#160;&#160;&#160;&#160;&#160;&#160;Adı Soyadı</b>
											<br/>
											<b>&#160;&#160;&#160;&#160;&#160;&#160;Adresi</b>
											<br/>
											<br/>
											<br/>
											<b>&#160;&#160;&#160;&#160;&#160;&#160;İmzası</b>
											<br/>
											<br/>
											<br/>
											<br/>
										</xsl:if>
									</xsl:if>
								</xsl:for-each>
								<br/>
								<xsl:if test="not(//n1:Invoice/cac:DespatchDocumentReference) and //n1:Invoice/cbc:ProfileID !='IHRACAT'">
									<div style="text-align:center">İrsaliye yerine geçer.</div>
								</xsl:if>
								<xsl:if test="//n1:Invoice/cac:AdditionalDocumentReference/cbc:DocumentType='ELEKTRONIK'">
									<div style="text-align:center">e-Arşiv izni kapsamında elektronik ortamda iletilmiştir.</div>
								</xsl:if>
								<br/>
							</td>
						</tr>
					</tbody>
				</table>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="dateFormatter">
		<xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
	</xsl:template>
	<xsl:template match="//n1:Invoice/cac:InvoiceLine">
		<tr id="lineTableTr" valign="top">
			<xsl:choose>
				<xsl:when test="./cac:AllowanceCharge">
					<!--Sıra No-->
					<td id="lineTableTd">
						<table border="0">
							<tbody>
								<tr>
									<td>
										<xsl:value-of select="./cbc:ID"/>
									</td>
								</tr>
								<xsl:for-each select="cac:AllowanceCharge">
									<tr>
										<td>
											<xsl:text>&#160;</xsl:text>
										</td>
									</tr>
								</xsl:for-each>
							</tbody>
						</table>
					</td>
					<!--Malzeme/Hizmet Kodu-->
					<td id="lineTableTd">
						<table border="0">
							<tbody>
								<tr>
									<td>
										<span>
											<xsl:choose>
												<xsl:when test="./cac:Item/cac:SellersItemIdentification/cbc:ID != ''">
													<xsl:value-of select="./cac:Item/cac:SellersItemIdentification/cbc:ID"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="./cac:Item/cbc:Name"/>
												</xsl:otherwise>
											</xsl:choose>
										</span>
									</td>
								</tr>
								<xsl:for-each select="cac:AllowanceCharge">
									<tr>
										<td>
											<xsl:text>&#160;</xsl:text>
										</td>
									</tr>
								</xsl:for-each>
							</tbody>
						</table>
					</td>
					<!--Malzeme/Hizmet Açıklaması-->
					<td id="lineTableTd">
						<table border="0">
							<tbody>
								<tr>
									<td>
										<span>
											<xsl:choose>
												<xsl:when test="./cac:Item/cbc:Description">
													<xsl:value-of select="./cac:Item/cbc:Description"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:text>&#160;</xsl:text>
												</xsl:otherwise>
											</xsl:choose>
										</span>
									</td>
								</tr>
								<xsl:for-each select="cac:AllowanceCharge">
									<tr>
										<td>
											<b>
												<xsl:text>&#160;&#160;&#160;&#160;&#160;</xsl:text>
												<xsl:text>İndirim</xsl:text>
											</b>
										</td>
									</tr>
								</xsl:for-each>
							</tbody>
						</table>
					</td>
					<!--Satır Açıklaması-->
					<td id="lineTableTd">
						<table border="0">
							<tbody>
								<tr>
									<td>
										<xsl:for-each select="./cbc:Note">
											<span>
												<xsl:value-of select="."/>
											</span>
											<br/>
										</xsl:for-each>
									</td>
								</tr>
							</tbody>
						</table>
					</td>
					<!-- ALICI ürün kodu -->
					<td id="lineTableTd">
						<span>
							<xsl:text> </xsl:text>
							<xsl:if test="./cac:Item/cac:BuyersItemIdentification/cbc:ID != ''">
								<xsl:value-of select="./cac:Item/cac:BuyersItemIdentification/cbc:ID"></xsl:value-of>
							</xsl:if> 
						</span>
					</td>
					<!-- ÜRETİCİ ürün kodu -->
					<td id="lineTableTd">
						<span>
							<xsl:text> </xsl:text>
							<xsl:if test="./cac:Item/cac:ManufacturersItemIdentification/cbc:ID != ''">
								<xsl:value-of select="./cac:Item/cac:ManufacturersItemIdentification/cbc:ID"></xsl:value-of>
							</xsl:if> 
						</span>
					</td>
					<xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode ='HKSSATIS' or //n1:Invoice/cbc:InvoiceTypeCode ='HKSKOMISYONCU'">
						<td id="lineTableTd">
							<span>
								<xsl:text>&#160;</xsl:text>
								<!-- KUNYE NO -->
								<xsl:for-each select="./cac:Item/cac:AdditionalItemIdentification">
									<xsl:if test="cbc:ID/@schemeID = 'KUNYENO'">
										<xsl:value-of select="cbc:ID"/>
									</xsl:if>
								</xsl:for-each>
							</span>
						</td>
					</xsl:if>
					<xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode ='HKSSATIS'">
						<td id="lineTableTd">
							<span>
								<xsl:text>&#160;</xsl:text>
								<!-- MALSAHIBIVKNTCKN -->
								<xsl:for-each select="./cac:Item/cac:AdditionalItemIdentification">
									<xsl:if test="cbc:ID/@schemeID = 'MALSAHIBIVKNTCKN'">
										<xsl:value-of select="cbc:ID"/>
									</xsl:if>
								</xsl:for-each>
							</span>
						</td>
						<td id="lineTableTd">
							<span>
								<xsl:text>&#160;</xsl:text>
								<!-- MALSAHIBIADSOYADUNVAN NO -->
								<xsl:for-each select="./cac:Item/cac:AdditionalItemIdentification">
									<xsl:if test="cbc:ID/@schemeID = 'MALSAHIBIADSOYADUNVAN'">
										<xsl:value-of select="cbc:ID"/>
									</xsl:if>
								</xsl:for-each>
							</span>
						</td>
					</xsl:if>
					<!--Miktar-->
					<td id="lineTableTd" align="right">
						<table border="0" width="100%">
							<tbody>
								<tr>
									<td>
										<span>
											<xsl:value-of select="format-number(./cbc:InvoicedQuantity, '###.##0,##', 'european')"/>
											<xsl:if test="./cbc:InvoicedQuantity/@unitCode">
												<xsl:for-each select="./cbc:InvoicedQuantity">
													<xsl:text> </xsl:text>
													<xsl:choose>
														<xsl:when test="@unitCode  = &apos;SA&apos;">
															<span>
																<xsl:text>ÇUVAL</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;26&apos;">
															<span>
																<xsl:text>Ton</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;BX&apos;">
															<span>
																<xsl:text>Kutu</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;LTR&apos;">
															<span>
																<xsl:text>LT</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;EA&apos;">
															<span>
																<xsl:text>Adet</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;NIU&apos;">
															<span>
																<xsl:text>Adet</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;C62&apos;">
															<span>
																<xsl:text>Adet</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;KGM&apos;">
															<span>
																<xsl:text>KG</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;KJO&apos;">
															<span>
																<xsl:text>kJ</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;GRM&apos;">
															<span>
																<xsl:text>GR</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;MGM&apos;">
															<span>
																<xsl:text>MG</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;NT&apos;">
															<span>
																<xsl:text>Net Ton</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;GT&apos;">
															<span>
																<xsl:text>Gross Ton</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;MTR&apos;">
															<span>
																<xsl:text>M</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;MMT&apos;">
															<span>
																<xsl:text>MM</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;KTM&apos;">
															<span>
																<xsl:text>KM</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;MLT&apos;">
															<span>
																<xsl:text>ML</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;MMQ&apos;">
															<span>
																<xsl:text>MM&#179;</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;CLT&apos;">
															<span>
																<xsl:text>CL</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;CMK&apos;">
															<span>
																<xsl:text>CM&#178;</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;CMQ&apos;">
															<span>
																<xsl:text>CM&#179;</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;CMT&apos;">
															<span>
																<xsl:text>CM</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;MTK&apos;">
															<span>
																<xsl:text>M&#178;</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;MTQ&apos;">
															<span>
																<xsl:text>M&#179;</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;DAY&apos;">
															<span>
																<xsl:text>Gün</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;MON&apos;">
															<span>
																<xsl:text>Ay</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;PA&apos;">
															<span>
																<xsl:text>Paket</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;KWH&apos;">
															<span>
																<xsl:text>KWH</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;INH&apos;">
															<span>
																<xsl:text>IN</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;FOT&apos;">
															<span>
																<xsl:text>FT</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;MMK&apos;">
															<span>
																<xsl:text>MM&#178;</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;INK&apos;">
															<span>
																<xsl:text>IN&#178;</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;FTK&apos;">
															<span>
																<xsl:text>FT&#178;</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;INQ&apos;">
															<span>
																<xsl:text>IN&#179;</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;FTQ&apos;">
															<span>
																<xsl:text>FT&#179;</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;ONZ&apos;">
															<span>
																<xsl:text>OZ</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;LBR&apos;">
															<span>
																<xsl:text>LB</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;PR&apos;">
															<span>
																<xsl:text>Çift</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;BE&apos;">
															<span>
																<xsl:text>Deste</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;PK&apos;">
															<span>
																<xsl:text>Koli</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;SW&apos;">
															<span>
																<xsl:text>Top</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;QB&apos;">
															<span>
																<xsl:text>Cilt</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;SEC&apos;">
															<span>
																<xsl:text>Saniye</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;5C&apos;">
															<span>
																<xsl:text>Teneke</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;MIN&apos;">
															<span>
																<xsl:text>Dakika</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;DZN&apos;">
															<span>
																<xsl:text>Düzine</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;DPC&apos;">
															<span>
																<xsl:text>Düzine</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;5B&apos;">
															<span>
																<xsl:text>Takım</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;DMQ&apos;">
															<span>
																<xsl:text>Desimetreküp</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;WEE&apos;">
															<span>
																<xsl:text>Hafta</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;HUR&apos;">
															<span>
																<xsl:text>Saat</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;ANN&apos;">
															<span>
																<xsl:text>Yıl</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;RO&apos;">
															<span>
																<xsl:text>Rulo</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;CTM&apos;">
															<span>
																<xsl:text>Karat</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;PTN&apos;">
															<span>
																<xsl:text>Parça,Kısım</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;B4&apos;">
															<span>
																<xsl:text>Varil</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;28&apos;">
															<span>
																<xsl:text>KG</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;BG&apos;">
															<span>
																<xsl:text>Çuval</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;BJ&apos;">
															<span>
																<xsl:text>Kova</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;BK&apos;">
															<span>
																<xsl:text>Sepet</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;BL&apos;">
															<span>
																<xsl:text>Balya</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;BO&apos;">
															<span>
																<xsl:text>Şişe</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;CO&apos;">
															<span>
																<xsl:text>Damacana</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;CQ&apos;">
															<span>
																<xsl:text>Kartuş</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;CS&apos;">
															<span>
																<xsl:text>Kasa</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;CT&apos;">
															<span>
																<xsl:text>Karton</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;11&apos;">
															<span>
																<xsl:text>Takım</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;2W&apos;">
															<span>
																<xsl:text>Sepet</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;B32&apos;">
															<span>
																<xsl:text>KG-METRE KARE</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;CCT&apos;">
															<span>
																<xsl:text>TON BAŞINA TAŞIMA KAPASİTESİ</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;D30&apos;">
															<span>
																<xsl:text>BRÜT KALORİ DEĞERİ</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;D40&apos;">
															<span>
																<xsl:text>BİN LİTRE</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;GFI&apos;">
															<span>
																<xsl:text>FISSILE İZOTOP GRAMI</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;H62&apos;">
															<span>
																<xsl:text>YÜZ ADET</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;K20&apos;">
															<span>
																<xsl:text>KİLOGRAM POTASYUM OKSİT</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;K58&apos;">
															<span>
																<xsl:text>KURUTULMUŞ NET AĞIRLIKLI KİLOGRAMI</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;K62&apos;">
															<span>
																<xsl:text>KİLOGRAM-ADET</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;KMA&apos;">
															<span>
																<xsl:text>METİL AMİNLERİN KİLOGRAMI</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;KNI&apos;">
															<span>
																<xsl:text>AZOTUN KİLOGRAMI</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;KPH&apos;">
															<span>
																<xsl:text>Kg POTASYUM OKSİD</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;KSD&apos;">
															<span>
																<xsl:text>%90 KURU ÜRÜN KİLOGRAMI</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;KSH&apos;">
															<span>
																<xsl:text>SODYUM HİDROKSİT KİLOGRAMI</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;KUR&apos;">
															<span>
																<xsl:text>URANYUM KİLOGRAMI</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;KWT&apos;">
															<span>
																<xsl:text>KİLOWATT</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;KWT&apos;">
															<span>
																<xsl:text>KİLOWATT</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;LPA&apos;">
															<span>
																<xsl:text>SAF ALKOL LİTRESİ</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;NCL&apos;">
															<span>
																<xsl:text>HÜCRE ADEDİ</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;R9&apos;">
															<span>
																<xsl:text>BİN METRE KÜP</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;SET&apos;">
															<span>
																<xsl:text>SET</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;T3&apos;">
															<span>
																<xsl:text>BİN ADET</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;D61&apos;">
															<span>
																<xsl:text>Dakika</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;D62&apos;">
															<span>
																<xsl:text>Saniye</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="@unitCode  = &apos;D64&apos;">
															<span>
																<xsl:text>BLOK</xsl:text>
															</span>
														</xsl:when>
														<xsl:otherwise>
															<span>
																<xsl:value-of select="@unitCode"/>
															</span>
														</xsl:otherwise>
													</xsl:choose>
												</xsl:for-each>
											</xsl:if>
										</span>
									</td>
								</tr>
							</tbody>
						</table>
					</td>
					<!--Birim Fiyatı-->
					<td id="lineTableTd" align="right">
						<table border="0">
							<tbody>
								<tr>
									<td align="right">
										<span>
											<xsl:text>&#160;</xsl:text>
											<xsl:value-of select="format-number(./cac:Price/cbc:PriceAmount, '###.##0,0000####', 'european')"/>
											<xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID">
												<xsl:text> </xsl:text>
												<xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID = &quot;TRY&quot;">
													<xsl:text>TL</xsl:text>
												</xsl:if>
												<xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID != &quot;TRY&quot;">
													<xsl:value-of select="./cac:Price/cbc:PriceAmount/@currencyID"/>
												</xsl:if>
											</xsl:if>
										</span>
									</td>
								</tr>
							</tbody>
						</table>
					</td>
					<!--İskonto Oranı-->
					<td id="lineTableTd" align="right">
						<table border="0" width="100%">
							<tbody>
								<tr>
									<td>
										<xsl:text>&#160;</xsl:text>
									</td>
								</tr>
								<xsl:for-each select="cac:AllowanceCharge">
									<xsl:if test="./cbc:ChargeIndicator='true'">
										<tr>
											<td align="right">
												<span style="font-size:9px;">
													<b>
														<xsl:choose>
															<xsl:when test="normalize-space(./cbc:AllowanceChargeReason)">
																<xsl:value-of select="./cbc:AllowanceChargeReason"/>
															</xsl:when>
															<xsl:otherwise>
																<xsl:if test="normalize-space(./cbc:MultiplierFactorNumeric)">
																	<xsl:text>%</xsl:text>
																	<xsl:value-of select="format-number(./cbc:MultiplierFactorNumeric*100, '###.##0,00', 'european')"/>
																</xsl:if>
															</xsl:otherwise>
														</xsl:choose>
													</b>
												</span>
											</td>
										</tr>
									</xsl:if>
								</xsl:for-each>
							</tbody>
						</table>
					</td>
					<!--İskonto Tutarı-->
					<td id="lineTableTd" align="right">
						<table width="100%">
							<tbody>
								<tr>
									<td>
										<xsl:text>&#160;</xsl:text>
									</td>
								</tr>
								<xsl:for-each select="cac:AllowanceCharge">
									<tr>
										<td align="right">
											<span style="font-size:9px;">
												<b>
													<xsl:value-of select="format-number(./cbc:Amount, '###.##0,00', 'european')"/>
													<xsl:if test="./cbc:Amount/@currencyID">
														<xsl:text> </xsl:text>
														<xsl:if test="./cbc:Amount/@currencyID = 'TRY'">
															<xsl:text>TL</xsl:text>
														</xsl:if>
														<xsl:if test="./cbc:Amount/@currencyID != 'TRY'">
															<xsl:value-of select="./cbc:Amount/@currencyID"/>
														</xsl:if>
													</xsl:if>
												</b>
											</span>
										</td>
									</tr>
								</xsl:for-each>
							</tbody>
						</table>
					</td>
					<!--KDV Oranı-->
					<td id="lineTableTd" align="right">
						<table border="0" width="100%">
							<tbody>
								<tr>
									<td align="right">
										<span>
											<xsl:text>&#160;</xsl:text>
											<xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
												<xsl:if test="cbc:TaxTypeCode='0015' ">
													<xsl:text> </xsl:text>
													<xsl:if test="../../cbc:Percent">
														<xsl:text> %</xsl:text>
														<xsl:value-of select="format-number(../../cbc:Percent, '###.##0,00', 'european')"/>
													</xsl:if>
												</xsl:if>
											</xsl:for-each>
										</span>
									</td>
								</tr>
							</tbody>
						</table>
					</td>
					<!--KDV Tutarı-->
					<td id="lineTableTd" align="right">
						<table border="0" width="100%">
							<tbody>
								<tr>
									<td align="right">
										<span>
											<xsl:text>&#160;</xsl:text>
											<xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
												<xsl:if test="cbc:TaxTypeCode='0015' ">
													<xsl:text> </xsl:text>
													<xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
													<xsl:if test="../../cbc:TaxAmount/@currencyID">
														<xsl:text> </xsl:text>
														<xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRY'">
															<xsl:text>TL</xsl:text>
														</xsl:if>
														<xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRY'">
															<xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
														</xsl:if>
													</xsl:if>
												</xsl:if>
											</xsl:for-each>
										</span>
									</td>
								</tr>
							</tbody>
						</table>
					</td>
					<!--Diğer Vergiler-->
					<td id="lineTableTd" align="left">
						<table border="0" width="100%">
							<tbody>
								<xsl:if test="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme and ./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode!='0015'">
									<tr>
										<td>
											<span>
												<xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
													<xsl:if test="cbc:TaxTypeCode!='0015' ">
														<xsl:text> (</xsl:text>
														<xsl:value-of select="cbc:Name"/>
														<xsl:text>)</xsl:text>
														<xsl:if test="../../cbc:Percent">
															<xsl:text> (%</xsl:text>
															<xsl:value-of select="format-number(../../cbc:Percent, '###.##0,00', 'european')"/>
															<xsl:text>)=</xsl:text>
														</xsl:if>
														<xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
														<xsl:if test="../../cbc:TaxAmount/@currencyID">
															<xsl:text> </xsl:text>
															<xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRY'">
																<xsl:text>TL</xsl:text>
															</xsl:if>
															<xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRY'">
																<xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
															</xsl:if>
														</xsl:if>
													</xsl:if>
												</xsl:for-each>
											</span>
										</td>
									</tr>
								</xsl:if>
								<xsl:for-each select="./cac:WithholdingTaxTotal/cac:TaxSubtotal">
									<xsl:if test="not(cbc:TaxAmount = 0)">
										<tr>
											<td>
												<xsl:choose>
													<xsl:when test="cac:TaxCategory/cac:TaxScheme/cbc:Name=''">
														<xsl:text>Diğer Vergiler Toplamı </xsl:text>
													</xsl:when>
													<xsl:otherwise>
														<xsl:text>Tevkifat (</xsl:text>
														<xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode"/>
														<xsl:text>-</xsl:text>
														<xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
														<xsl:text>)</xsl:text>
													</xsl:otherwise>
												</xsl:choose>
												<xsl:if test="cbc:Percent !=''">
													<xsl:text>(%</xsl:text>
													<xsl:value-of select=" format-number(cbc:Percent, '###.##0,00', 'european')"/>
													<xsl:text>)= </xsl:text>
												</xsl:if>
												<xsl:value-of select="format-number(../cbc:TaxAmount, '###.##0,00', 'european')"/>
												<xsl:if test="../cbc:TaxAmount/@currencyID">
													<xsl:if test="../cbc:TaxAmount/@currencyID = 'TRY'">
														<xsl:text>TL</xsl:text>
													</xsl:if>
													<xsl:if test="../cbc:TaxAmount/@currencyID != 'TRY'">
														<xsl:value-of select="../cbc:TaxAmount/@currencyID"/>
													</xsl:if>
												</xsl:if>
											</td>
										</tr>
									</xsl:if>
								</xsl:for-each>
							</tbody>
						</table>
					</td>
					<!--Vergi Muafiyet Sebebi-->
					<td id="lineTableTd">
						<table border="0" width="100%">
							<tbody>
								<tr>
									<td>
										<span>
											<xsl:if test="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:TaxExemptionReason">
												<xsl:value-of select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:TaxExemptionReason"/>
											</xsl:if>
										</span>
									</td>
								</tr>
							</tbody>
						</table>
					</td>
					<!--Malzeme/Hizmet Tutarı-->
					<td id="lineTableTd" align="right">
						<table border="0" width="100%">
							<tbody>
								<tr>
									<td align="right">
										<span>
											<xsl:text>&#160;</xsl:text>
											<xsl:value-of select="format-number(./cbc:LineExtensionAmount, '###.##0,00', 'european')"/>
											<xsl:if test="./cbc:LineExtensionAmount/@currencyID">
												<xsl:text> </xsl:text>
												<xsl:if test="./cbc:LineExtensionAmount/@currencyID = 'TRY'">
													<xsl:text>TL</xsl:text>
												</xsl:if>
												<xsl:if test="./cbc:LineExtensionAmount/@currencyID != 'TRY'">
													<xsl:value-of select="./cbc:LineExtensionAmount/@currencyID"/>
												</xsl:if>
											</xsl:if>
										</span>
									</td>
								</tr>
							</tbody>
						</table>
					</td>
				</xsl:when>
				<xsl:otherwise>
					<!--Sıra No-->
					<td id="lineTableTd">
						<span>
							<xsl:text>&#160;</xsl:text>
							<xsl:value-of select="./cbc:ID"/>
						</span>
					</td>
					<!--Malzeme/Hizmet Kodu-->
					<td id="lineTableTd">
						<span>
							<xsl:text>&#160;</xsl:text>
							<xsl:choose>
								<xsl:when test="./cac:Item/cac:SellersItemIdentification/cbc:ID != ''">
									<xsl:value-of select="./cac:Item/cac:SellersItemIdentification/cbc:ID"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="./cac:Item/cbc:Name"/>
								</xsl:otherwise>
							</xsl:choose>
						</span>
					</td>
					<!--Malzeme/Hizmet Açıklaması-->
					<td id="lineTableTd">
						<span>
							<xsl:text>&#160;</xsl:text>
							<xsl:value-of select="./cac:Item/cbc:Description"/>
						</span>
					</td>
					<!--Satır Açıklaması -->
					<td id="lineTableTd">
						<xsl:for-each select="./cbc:Note">
							<span>
								<xsl:text>&#160;</xsl:text>
								<xsl:value-of select="."/>
							</span>
							<br/>
						</xsl:for-each>
					</td>
					<!-- ALICI ürün kodu -->
					<td id="lineTableTd">
						<span>
							<xsl:text> </xsl:text>
							<xsl:if test="./cac:Item/cac:BuyersItemIdentification/cbc:ID != ''">
								<xsl:value-of select="./cac:Item/cac:BuyersItemIdentification/cbc:ID"></xsl:value-of>
							</xsl:if> 
						</span>
					</td>
					<!-- ÜRETİCİ ürün kodu -->
					<td id="lineTableTd">
						<span>
							<xsl:text> </xsl:text>
							<xsl:if test="./cac:Item/cac:ManufacturersItemIdentification/cbc:ID != ''">
								<xsl:value-of select="./cac:Item/cac:ManufacturersItemIdentification/cbc:ID"></xsl:value-of>
							</xsl:if> 
						</span>
					</td>

					<xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode ='HKSSATIS' or //n1:Invoice/cbc:InvoiceTypeCode ='HKSKOMISYONCU'">
						<td id="lineTableTd" align="right">
							<span>
								<!--KUNYE -->
								<xsl:for-each select="./cac:Item/cac:AdditionalItemIdentification">
									<xsl:if test="cbc:ID/@schemeID = 'KUNYENO'">
										<xsl:text>&#160;</xsl:text>
										<xsl:value-of select="cbc:ID"/>
									</xsl:if>
								</xsl:for-each>
							</span>
						</td>
					</xsl:if>
					<xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode ='HKSSATIS'">
						<td id="lineTableTd" align="right">
							<span>
								<!--VKN -->
								<xsl:for-each select="./cac:Item/cac:AdditionalItemIdentification">
									<xsl:if test="cbc:ID/@schemeID = 'MALSAHIBIVKNTCKN'">
										<xsl:text>&#160;</xsl:text>
										<xsl:value-of select="cbc:ID"/>
									</xsl:if>
								</xsl:for-each>
							</span>
						</td>
						<td id="lineTableTd" align="right">
							<span>
								<!--UNVAN -->
								<xsl:for-each select="./cac:Item/cac:AdditionalItemIdentification">
									<xsl:if test="cbc:ID/@schemeID = 'MALSAHIBIADSOYADUNVAN'">
										<xsl:text>&#160;</xsl:text>
										<xsl:value-of select="cbc:ID"/>
									</xsl:if>
								</xsl:for-each>
							</span>
						</td>
					</xsl:if>
					<!--Miktar-->
					<td id="lineTableTd" align="right">
						<span>
							<xsl:value-of select="format-number(./cbc:InvoicedQuantity, '###.##0,##', 'european')"/>
							<xsl:if test="./cbc:InvoicedQuantity/@unitCode">
								<xsl:for-each select="./cbc:InvoicedQuantity">
									<xsl:text> </xsl:text>
									<xsl:choose>
										<xsl:when test="@unitCode='SA'">
											<span>
												<xsl:text>ÇUVAL</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='C62'">
											<span>
												<xsl:text>Adet</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='26'">
											<span>
												<xsl:text>Ton</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='BX'">
											<span>
												<xsl:text>Kutu</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='LTR'">
											<span>
												<xsl:text>LT</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='EA'">
											<span>
												<xsl:text>Adet</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='NIU'">
											<span>
												<xsl:text>Adet</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='KGM'">
											<span>
												<xsl:text>KG</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='KJO'">
											<span>
												<xsl:text>kJ</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='GRM'">
											<span>
												<xsl:text>GR</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='MGM'">
											<span>
												<xsl:text>MG</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='NT'">
											<span>
												<xsl:text>Net Ton</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='GT'">
											<span>
												<xsl:text>GT</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='MTR'">
											<span>
												<xsl:text>M</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='MMT'">
											<span>
												<xsl:text>MM</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='KTM'">
											<span>
												<xsl:text>KM</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='MLT'">
											<span>
												<xsl:text>ML</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='MMQ'">
											<span>
												<xsl:text>MM³</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='CLT'">
											<span>
												<xsl:text>CL</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='CMK'">
											<span>
												<xsl:text>CM²</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='CMQ'">
											<span>
												<xsl:text>CM³</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='CMT'">
											<span>
												<xsl:text>CM</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='MTK'">
											<span>
												<xsl:text>M²</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='MTQ'">
											<span>
												<xsl:text>M³</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='DAY'">
											<span>
												<xsl:text> Gün</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='MON'">
											<span>
												<xsl:text> Ay</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='PA'">
											<span>
												<xsl:text> Paket</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='KWH'">
											<span>
												<xsl:text> KWH</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='INH'">
											<span>
												<xsl:text>IN</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='FOT'">
											<span>
												<xsl:text>FT</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='MMK'">
											<span>
												<xsl:text>MM²</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='INK'">
											<span>
												<xsl:text>IN²</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='FTK'">
											<span>
												<xsl:text>FT²</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='INQ'">
											<span>
												<xsl:text>IN³</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='FTQ'">
											<span>
												<xsl:text>FT³</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='ONZ'">
											<span>
												<xsl:text>OZ</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='LBR'">
											<span>
												<xsl:text>LB</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='B4'">
											<span>
												<xsl:text>Varil</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='28'">
											<span>
												<xsl:text>KG</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='BG'">
											<span>
												<xsl:text>Çuval</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='BE'">
											<span>
												<xsl:text>Deste</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='BJ'">
											<span>
												<xsl:text>Kova</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='BK'">
											<span>
												<xsl:text>Sepet</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='BL'">
											<span>
												<xsl:text>Balya</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='BO'">
											<span>
												<xsl:text>Şişe</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='CO'">
											<span>
												<xsl:text>Damacana</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='CQ'">
											<span>
												<xsl:text>Kartuş</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='CS'">
											<span>
												<xsl:text>Kasa</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='CT'">
											<span>
												<xsl:text>Karton</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='RO'">
											<span>
												<xsl:text>Rulo</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='11'">
											<span>
												<xsl:text>Takım</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='2W'">
											<span>
												<xsl:text>Sepet</xsl:text>
											</span>
										</xsl:when>
										<xsl:when test="@unitCode='D64'">
											<span>
												<xsl:text>BLOK</xsl:text>
											</span>
										</xsl:when>
										<xsl:otherwise>
											<span>
												<xsl:value-of select="@unitCode"/>
											</span>
										</xsl:otherwise>
									</xsl:choose>
								</xsl:for-each>
							</xsl:if>
						</span>
					</td>
					<!--Birim Fiyatı-->
					<td id="lineTableTd" align="right">
						<span>
							<xsl:text>&#160;</xsl:text>
							<xsl:value-of select="format-number(./cac:Price/cbc:PriceAmount, '###.##0,0000####', 'european')"/>
							<xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID">
								<xsl:text> </xsl:text>
								<xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID = &quot;TRY&quot;">
									<xsl:text>TL</xsl:text>
								</xsl:if>
								<xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID != &quot;TRY&quot;">
									<xsl:value-of select="./cac:Price/cbc:PriceAmount/@currencyID"/>
								</xsl:if>
							</xsl:if>
						</span>
					</td>
					<!--İskonto Oranı-->
					<td id="lineTableTd" align="right">
						<span>
							<xsl:text>&#160;</xsl:text>
						</span>
					</td>
					<!--İskonto Tutarı-->
					<td id="lineTableTd" align="right">
						<span>
							<xsl:text>&#160;</xsl:text>
						</span>
					</td>
					<!--KDV Oranı-->
					<td id="lineTableTd" align="right">
						<span>
							<xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
								<xsl:if test="cbc:TaxTypeCode='0015' ">
									<xsl:text> </xsl:text>
									<xsl:if test="../../cbc:Percent">
										<xsl:text> %</xsl:text>
										<xsl:value-of select="format-number(../../cbc:Percent, '###.##0,00', 'european')"/>
										<xsl:text>&#160;</xsl:text>
									</xsl:if>
								</xsl:if>
							</xsl:for-each>
						</span>
					</td>
					<!--KDV Tutarı-->
					<td id="lineTableTd" align="right">
						<span>
							<xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
								<xsl:if test="cbc:TaxTypeCode='0015' ">
									<xsl:text> </xsl:text>
									<xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
									<xsl:if test="../../cbc:TaxAmount/@currencyID">
										<xsl:text> </xsl:text>
										<xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRY'">
											<xsl:text>TL</xsl:text>
											<xsl:text>&#160;</xsl:text>
										</xsl:if>
										<xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRY'">
											<xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
											<xsl:text>&#160;</xsl:text>
										</xsl:if>
									</xsl:if>
								</xsl:if>
							</xsl:for-each>
						</span>
					</td>
					<!--Diğer Vergiler-->
					<td id="lineTableTd" align="left">
						<table border="0" width="100%">
							<tbody>
								<xsl:if test="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme and ./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode!='0015'">
									<tr>
										<td>
											<span>
												<xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
													<xsl:if test="cbc:TaxTypeCode!='0015' ">
														<xsl:text> (</xsl:text>
														<xsl:value-of select="cbc:Name"/>
														<xsl:text>)</xsl:text>
														<xsl:if test="../../cbc:Percent">
															<xsl:text> (%</xsl:text>
															<xsl:value-of select="format-number(../../cbc:Percent, '###.##0,00', 'european')"/>
															<xsl:text>)=</xsl:text>
														</xsl:if>
														<xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
														<xsl:if test="../../cbc:TaxAmount/@currencyID">
															<xsl:text> </xsl:text>
															<xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRY'">
																<xsl:text>TL</xsl:text>
															</xsl:if>
															<xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRY'">
																<xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
															</xsl:if>
														</xsl:if>
													</xsl:if>
												</xsl:for-each>
											</span>
										</td>
									</tr>
								</xsl:if>
								<xsl:for-each select="./cac:WithholdingTaxTotal/cac:TaxSubtotal">
									<xsl:if test="not(cbc:TaxAmount = 0)">
										<tr>
											<td>
												<xsl:choose>
													<xsl:when test="cac:TaxCategory/cac:TaxScheme/cbc:Name=''">
														<xsl:text>Diğer Vergiler Toplamı </xsl:text>
													</xsl:when>
													<xsl:otherwise>
														<xsl:text>Tevkifat (</xsl:text>
														<xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode"/>
														<xsl:text>-</xsl:text>
														<xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
														<xsl:text>)</xsl:text>
													</xsl:otherwise>
												</xsl:choose>
												<xsl:if test="cbc:Percent !=''">
													<xsl:text>(%</xsl:text>
													<xsl:value-of select=" format-number(cbc:Percent, '###.##0,00', 'european')"/>
													<xsl:text>)= </xsl:text>
												</xsl:if>
												<xsl:value-of select="format-number(../cbc:TaxAmount, '###.##0,00', 'european')"/>
												<xsl:if test="../cbc:TaxAmount/@currencyID">
													<xsl:if test="../cbc:TaxAmount/@currencyID = 'TRY'">
														<xsl:text>TL</xsl:text>
													</xsl:if>
													<xsl:if test="../cbc:TaxAmount/@currencyID != 'TRY'">
														<xsl:value-of select="../cbc:TaxAmount/@currencyID"/>
													</xsl:if>
												</xsl:if>
											</td>
										</tr>
									</xsl:if>
								</xsl:for-each>
							</tbody>
						</table>
					</td>
					<!--Vergi Muafiyet Sebebi-->
					<td id="lineTableTd">
						<span>
							<xsl:if test="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:TaxExemptionReason">
								<xsl:value-of select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:TaxExemptionReason"/>
							</xsl:if>
						</span>
					</td>
					<!--Malzeme/Hizmet Tutarı-->
					<td id="lineTableTd" align="right">
						<span>
							<xsl:value-of select="format-number(./cbc:LineExtensionAmount, '###.##0,00', 'european')"/>
							<xsl:if test="./cbc:LineExtensionAmount/@currencyID">
								<xsl:text> </xsl:text>
								<xsl:if test="./cbc:LineExtensionAmount/@currencyID = 'TRY' ">
									<xsl:text>TL</xsl:text>
									<xsl:text>&#160;</xsl:text>
								</xsl:if>
								<xsl:if test="./cbc:LineExtensionAmount/@currencyID != 'TRY'">
									<xsl:value-of select="./cbc:LineExtensionAmount/@currencyID"/>
									<xsl:text>&#160;</xsl:text>
								</xsl:if>
							</xsl:if>
						</span>
					</td>
				</xsl:otherwise>
			</xsl:choose>
		</tr>
	</xsl:template>
	<xsl:template name="geneliskonto">
		<xsl:choose>
			<xsl:when test="//n1:Invoice/cac:AllowanceCharge">
				<xsl:if test="./cbc:ChargeIndicator='true'">
					<tr id="lineTableTr">
						<td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;">
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</td>
						<xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode ='HKSSATIS' or //n1:Invoice/cbc:InvoiceTypeCode ='HKSKOMISYONCU'">
							<td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
								<span>
									<xsl:text>&#160;</xsl:text>
									<!-- KUNYE-->
								</span>
							</td>
						</xsl:if>
						<xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode ='HKSSATIS'">
							<td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
								<span>
									<xsl:text>&#160;</xsl:text>
									<!-- VKN-->
								</span>
							</td>
							<td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
								<span>
									<xsl:text>&#160;</xsl:text>
									<!-- UNVAN-->
								</span>
							</td>
						</xsl:if>
						<td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</td>

						<td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="left">
							<span>
								<table border="0">
									<tbody>
										<xsl:for-each select="//n1:Invoice/cac:AllowanceCharge">
											<tr>
												<td>
													<xsl:text>&#160;&#160;&#160;&#160;&#160;</xsl:text>
													<b>
														<xsl:text>İndirim</xsl:text>
													</b>
												</td>
											</tr>
										</xsl:for-each>
									</tbody>
								</table>
							</span>
						</td>
						<td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</td>
						<td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</td>
						<td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
							<span>
								<table border="0">
									<tbody>
										<xsl:for-each select="//n1:Invoice/cac:AllowanceCharge">
											<tr>
												<td align="right">
													<span style="font-size:9px;">
														<b>
															<xsl:choose>
																<xsl:when test="normalize-space(cbc:AllowanceChargeReason)">
																	<xsl:value-of select="cbc:AllowanceChargeReason"/>
																</xsl:when>
																<xsl:otherwise>
																	<xsl:if test="normalize-space(cbc:MultiplierFactorNumeric)">
																		<xsl:text>%</xsl:text>
																		<xsl:value-of select="format-number(cbc:MultiplierFactorNumeric*100, '###.##0,00', 'european')"/>
																	</xsl:if>
																</xsl:otherwise>
															</xsl:choose>
														</b>
													</span>
												</td>
											</tr>
										</xsl:for-each>
									</tbody>
								</table>
							</span>
						</td>
						<td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
							<span>
								<table border="0">
									<tbody>
										<xsl:for-each select="//n1:Invoice/cac:AllowanceCharge">
											<tr>
												<td align="right">
													<span style="font-size:9px;">
														<b>
															<xsl:value-of select="format-number(cbc:Amount, '###.##0,00', 'european')"/>
															<xsl:if test="cbc:Amount/@currencyID">
																<xsl:text> </xsl:text>
																<xsl:if test="cbc:Amount/@currencyID = 'TRY'">
																	<xsl:text>TL</xsl:text>
																</xsl:if>
																<xsl:if test="cbc:Amount/@currencyID != 'TRY'">
																	<xsl:value-of select="cbc:Amount/@currencyID"/>
																</xsl:if>
															</xsl:if>
														</b>
													</span>
												</td>
											</tr>
										</xsl:for-each>
									</tbody>
								</table>
							</span>
						</td>
						<td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</td>
						<td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</td>
						<td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</td>
						<td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</td>
						<td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</td>
						<td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</td>
					</tr>
				</xsl:if>
			</xsl:when>
			<xsl:otherwise>
				<xsl:apply-templates select="//n1:Invoice"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="//n1:Invoice">
		<tr id="lineTableTr">
			<td id="lineTableTd">
				<span>
					<xsl:text>&#160;</xsl:text>
				</span>
			</td>
			<td id="lineTableTd">
				<span>
					<xsl:text>&#160;</xsl:text>
				</span>
			</td>
			<td id="lineTableTd">
				<span>
					<xsl:text>&#160;</xsl:text>
				</span>
			</td>
			<td id="lineTableTd">
				<span>
					<xsl:text>&#160;</xsl:text>
				</span>
			</td>

			<xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode ='HKSSATIS' or //n1:Invoice/cbc:InvoiceTypeCode ='HKSKOMISYONCU'">
				<td id="lineTableTd" align="right">
					<span>
						<xsl:text>&#160;</xsl:text>
						<!--KUNYE -->
					</span>
				</td>
			</xsl:if>
			<xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode ='HKSSATIS'">
				<td id="lineTableTd" align="right">
					<span>
						<xsl:text>&#160;</xsl:text>
						<!--VKN -->
					</span>
				</td>
				<td id="lineTableTd" align="right">
					<span>
						<xsl:text>&#160;</xsl:text>
						<!--UNVAN -->
					</span>
				</td>
			</xsl:if>
			<td id="lineTableTd">
				<span>
					<xsl:text>&#160;</xsl:text>
				</span>
			</td>
			<td id="lineTableTd">
				<span>
					<xsl:text>&#160;</xsl:text>
				</span>
			</td>
			<td id="lineTableTd">
				<span>
					<xsl:text>&#160;</xsl:text>
				</span>
			</td>
			<td id="lineTableTd">
				<span>
					<xsl:text>&#160;</xsl:text>
				</span>
			</td>
			<td id="lineTableTd">
				<span>
					<xsl:text>&#160;</xsl:text>
				</span>
			</td>
			<td id="lineTableTd">
				<span>
					<xsl:text>&#160;</xsl:text>
				</span>
			</td>
			<td id="lineTableTd">
				<span>
					<xsl:text>&#160;</xsl:text>
				</span>
			</td>
			<td id="lineTableTd">
				<span>
					<xsl:text>&#160;</xsl:text>
				</span>
			</td>
			<td id="lineTableTd">
				<span>
					<xsl:text>&#160;</xsl:text>
				</span>
			</td>
			<td id="lineTableTd">
				<span>
					<xsl:text>&#160;</xsl:text>
				</span>
			</td>
			<td id="lineTableTd">
				<span>
					<xsl:text>&#160;</xsl:text>
				</span>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>