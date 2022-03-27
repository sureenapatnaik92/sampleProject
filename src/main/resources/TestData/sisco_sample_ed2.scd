<?xml version="1.0" encoding="UTF-8"?>
<SCL xmlns="http://www.iec.ch/61850/2003/SCL" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.iec.ch/61850/2003/SCL
SCL.xsd" version="2007" revision="B">
	<Header id="SCL Example T1-1" nameStructure="IEDName"/>
	<Communication>
		<SubNetwork name="W01" type="8-MMS">
			<Text>Station bus</Text>
			<BitRate unit="b/s">10</BitRate>
			<ConnectedAP iedName="Client1" apName="S1">
				<Address>
					<P type="IP">10.0.0.2</P>
					<P type="IP-SUBNET">255.255.255.0</P>
					<P type="IP-GATEWAY">10.0.0.101</P>
					<P type="OSI-PSEL">00000001</P>
					<P type="OSI-SSEL">0001</P>
					<P type="OSI-TSEL">0001</P>
					<P type="OSI-AP-Title">1 3 9999 24</P>
					<P type="OSI-AE-Qualifier">24</P>
				</Address>
			</ConnectedAP>
			<ConnectedAP iedName="E1Q1SB1" apName="S3">
				<Address>
					<P type="IP">10.0.0.1</P>
					<P type="IP-SUBNET">255.255.255.0</P>
					<P type="IP-GATEWAY">10.0.0.101</P>
					<P type="OSI-TSEL">00000003</P>
					<P type="OSI-PSEL">0003</P>
					<P type="OSI-SSEL">0003</P>
					<P type="OSI-AP-Title">1 1 9999 1</P>
					<P type="OSI-AE-Qualifier">101</P>
					<P type="OSI-AP-Invoke">102</P>
					<P type="OSI-AE-Invoke">103</P>
				</Address>
			</ConnectedAP>
			<ConnectedAP iedName="E1Q1SB1" apName="S1">
				<Address>
					<P type="IP">127.0.0.1</P>
					<P type="IP-SUBNET">255.255.255.0</P>
					<P type="IP-GATEWAY">10.0.0.101</P>
					<P type="OSI-PSEL">00000001</P>
					<P type="OSI-SSEL">0001</P>
					<P type="OSI-TSEL">0001</P>
					<P type="OSI-AP-Title">1 1 9999 1</P>
					<P type="OSI-AE-Qualifier">101</P>
					<P type="OSI-AP-Invoke">102</P>
					<P type="OSI-AE-Invoke">103</P>
				</Address>
				<GSE ldInst="C1" cbName="ItlPositions">
					<Address>
						<P type="MAC-Address">01-0C-CD-01-00-01</P>
						<P type="APPID">ff</P>
						<P type="VLAN-PRIORITY">7</P>
						<P type="VLAN-ID">fab</P>
					</Address>
				</GSE>
				<GSE ldInst="C1" cbName="GsseTest">
					<Address>
						<P type="MAC-Address">01-0C-CD-01-00-02</P>
						<P type="APPID">5000</P>
						<P type="VLAN-ID">123</P>
						<P type="VLAN-PRIORITY">4</P>
					</Address>
				</GSE>
				<SMV ldInst="C1" cbName="VoltUnicast">
					<Address>
						<P type="MAC-Address">01-0C-CD-04-00-02</P>
						<P type="APPID">2000</P>
						<P type="VLAN-ID">2</P>
						<P type="VLAN-PRIORITY">4</P>
					</Address>
				</SMV>
				<SMV ldInst="C1" cbName="VoltMulticast">
					<Address>
						<P type="MAC-Address">01-0C-CD-04-00-03</P>
						<P type="APPID">2000</P>
						<P type="VLAN-ID">2</P>
						<P type="VLAN-PRIORITY">4</P>
					</Address>
				</SMV>
			</ConnectedAP>
			<ConnectedAP iedName="GOOSEPUB" apName="S1">
				<Address>
					<P type="IP">192.168.5.99</P>
					<P type="OSI-PSEL">00000001</P>
					<P type="OSI-SSEL">0001</P>
					<P type="OSI-TSEL">0001</P>
				</Address>
				<GSE ldInst="C1" cbName="ItlPositions">
					<Address>
						<P type="MAC-Address">01-0C-CD-01-00-99</P>
						<P type="APPID">ff</P>
						<P type="VLAN-PRIORITY">7</P>
						<P type="VLAN-ID">fab</P>
					</Address>
				</GSE>
				<GSE ldInst="C1" cbName="ItlPositions2">
					<Address>
						<P type="IP">232.0.0.3</P>
						<P type="IP-IGMPv3Src">192.168.5.3</P>
					</Address>
				</GSE>
			</ConnectedAP>
			<ConnectedAP iedName="SVPUB" apName="S1">
				<Address>
					<P type="IP">192.168.2.85</P>
					<P type="OSI-PSEL">00000001</P>
					<P type="OSI-SSEL">0001</P>
					<P type="OSI-TSEL">0001</P>
				</Address>
				<SMV ldInst="C1" cbName="Volt">
					<Address>
						<P type="MAC-Address">01-0C-CD-04-00-01</P>
						<P type="APPID">1000</P>
						<P type="VLAN-ID">1</P>
						<P type="VLAN-PRIORITY">4</P>
						<!-- Addressing parameters for R-SV -->
						<P type="IP">232.0.0.4</P>
						<P type="IP-IGMPv3Src">192.168.5.4</P>
						<P type="IP-SUBNET">255.255.255.0</P>
						<P type="IP-GATEWAY">10.0.0.101</P>
						<P type= "IP-ClassOfTraffic">46</P>
					</Address>
				</SMV>
			</ConnectedAP>
		</SubNetwork>
	</Communication>
	<IED name="Client1">
		<AccessPoint name="S1">
			<LN lnClass="IHMI" inst="1" lnType="IHMI"/>
		</AccessPoint>
	</IED>
	<IED name="E1Q1SB1">
		<Services>
			<DynAssociation/>
			<GetDirectory/>
			<GetDataObjectDefinition/>
			<GetDataSetValue/>
			<DataSetDirectory/>
			<ReadWrite/>
			<FileHandling/>
			<ConfDataSet max="4" maxAttributes="50"/>
			<ConfReportControl max="15"/>
			<ReportSettings cbName="Conf" datSet="Conf" rptID="Dyn" optFields="Conf" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" resvTms="true" owner="true"/>
			<ConfLogControl max="1"/>
			<ConfLNs fixLnInst="true"/>
			<GetCBValues/>
			<GOOSE max="2"/>
			<DynDataSet max="10"/>
			<GSESettings appID="Conf" cbName="Conf" datSet="Conf"/>
			<SupSubscription maxGo="5" maxSv="5"/>
		</Services>
		<AccessPoint name="S1">
			<Server timeout="60">
				<Authentication/>
				<LDevice desc="description" inst="C1">
					<LN0 desc="description" lnType="LLN0" lnClass="LLN0" inst="">
						<DataSet name="Positions" desc="description">
							<FCDA ldInst="C1" prefix="" lnInst="1" lnClass="CSWI" doName="Pos" fc="ST"/>
							<FCDA ldInst="C1" prefix="" lnInst="2" lnClass="CSWI" doName="Pos" fc="ST"/>
							<FCDA ldInst="C1" prefix="" lnInst="1" lnClass="MHAI" doName="Beh" daName="blkEna" fc="BL"/>
							<!-- NOTE: This demonstrates using parentheses in daName to define sub-elements of array elements. -->
                                                        <FCDA ldInst="C1" prefix="" lnInst="1" lnClass="MHAI" doName="HA" daName="phsAHar(3).cVal" fc="MX" ix="3"/>
                                                        <FCDA ldInst="C1" prefix="" lnInst="1" lnClass="MHAI" doName="HA" daName="phsAHar(5).cVal.mag" fc="MX" ix="5"/>
							<FCDA ldInst="C1" prefix="" lnInst="1" lnClass="MHAI" doName="HA" daName="phsAHar(7).cVal.mag.i" fc="MX" ix="7"/>
							<FCDA ldInst="C1" prefix="" lnInst="1" lnClass="MHAI" doName="HA" daName="phsAHar(9).cVal.mag.f" fc="MX" ix="9"/>
						</DataSet>
						<DataSet name="Positions2" desc="description">
							<FCDA ldInst="C1" prefix="" lnInst="1" lnClass="CSWI" doName="Pos" fc="ST"/>
							<FCDA ldInst="C1" prefix="" lnInst="2" lnClass="CSWI" doName="Pos" fc="ST"/>
						</DataSet>
						<DataSet name="Measurands">
							<FCDA ldInst="C1" prefix="" lnInst="1" lnClass="MMXU" doName="TotW" daName="mag" fc="MX"/>
							<FCDA ldInst="C1" prefix="" lnInst="1" lnClass="MMXU" doName="TotVAr" fc="MX"/>
						</DataSet>
						<DataSet name="TrkDS">
							<FCDA ldInst="C1" prefix="" lnInst="1" lnClass="LTRK" doName="UrcbTrk" fc="SR"/>
							<FCDA ldInst="C1" prefix="" lnInst="1" lnClass="LTRK" doName="BrcbTrk" fc="SR"/>
						</DataSet>
						<DataSet name="smv">
							<FCDA ldInst="C1" prefix="" lnClass="TVTR" lnInst="1" doName="VolSv" daName="instMag" fc="MX"/>
						</DataSet>
						<DataSet name="writableDataSet">
							<FCDA ldInst="C1" prefix="" lnClass="CSWI" lnInst="2" doName="Mod" daName="sboTimeout" fc="CF"/>
							<FCDA ldInst="C1" prefix="" lnClass="CSWI" lnInst="2" doName="OpCntRs" daName="sboTimeout" fc="CF"/>
							<FCDA ldInst="C1" prefix="" lnClass="CSWI" lnInst="2" doName="LocSta" daName="sboTimeout" fc="CF"/>
							<FCDA ldInst="C1" prefix="" lnClass="CSWI" lnInst="2" doName="Pos" daName="sboTimeout" fc="CF"/>
						</DataSet>
						<ReportControl name="PosReport" desc="description" rptID="E1Q1Switches" datSet="Positions" confRev="0" buffered="true" bufTime="60" intgPd="1000">
							<TrgOps dchg="true" qchg="true" dupd="true" period="true"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" bufOvfl="true" entryID="true" configRef="true"/>
							<RptEnabled max="5">
								<ClientLN iedName="Client1" apRef="S1" ldInst="LD0" lnInst="1" lnClass="IHMI"/>
							</RptEnabled>
						</ReportControl>
						<ReportControl name="PosReport2" desc="description" rptID="E1Q1Switches02" datSet="Positions2" confRev="0" buffered="true" bufTime="60" intgPd="1000">
							<TrgOps dchg="true" qchg="true" dupd="true" period="true"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" bufOvfl="true" entryID="true" configRef="true"/>
							<RptEnabled max="5">
								<ClientLN iedName="Client1" apRef="S1" ldInst="LD0" lnInst="1" lnClass="IHMI"/>
							</RptEnabled>
						</ReportControl>
						<ReportControl name="MeaReport" rptID="E1Q1Measurands" datSet="Measurands" intgPd="2000" confRev="0">
							<TrgOps dchg="true" qchg="true" period="false"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
							<RptEnabled max="5">
								<ClientLN iedName="Client1" apRef="S1" ldInst="LD0" lnInst="1" lnClass="IHMI"/>
							</RptEnabled>
						</ReportControl>
						<ReportControl name="TrkReport" rptID="E1Q1Tracking" datSet="TrkDS" confRev="0" buffered="true">
							<TrgOps dupd="true" period="false"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
							<RptEnabled max="1">
							</RptEnabled>
						</ReportControl>

						<LogControl name="Log" datSet="Positions" logName="C1" logEna="true" intgPd="5000">
							<TrgOps dchg="true" qchg="true" period="true"/>
						</LogControl>
						<LogControl name="LogInOtherLdLn" ldInst="LogLD" prefix="pref" lnClass="GGIO" lnInst="1" datSet="Positions2" logName="LogName2" logEna="true" intgPd="5000">
							<TrgOps dchg="true" qchg="true" period="true"/>
						</LogControl>
						<DOI name="Mod">
							<DAI name="stVal">
								<Val>1</Val>	<!-- 1=On -->
							</DAI>
						</DOI>
						<DOI name="InRef1">
							<DAI name="setSrcRef">
								<Val>@C1/LLN0.Diag.stVal</Val>
							</DAI>
						</DOI>
						<Inputs>
							<Text>1</Text>
							<ExtRef desc="To test GOOSE Subscription" iedName="GOOSEPUB" ldInst="C1" prefix="mypref" lnClass="CSWI" lnInst="1" doName="Pos" daName="stVal" serviceType="GOOSE" srcLDInst="C1" srcPrefix="" srcLNClass="LLN0" srcCBName="ItlPositions" intAddr="user set this"/>
						</Inputs>
						<GSEControl name="ItlPositions" datSet="Positions" appID="Itl"/>
						<GSEControl name="GsseTest" datSet="Positions" appID="Itl" type="GSSE"/>
						<SampledValueControl name="VoltUnicast" datSet="smv" smvID="VoltUnicast234567890123456789012345678901234567890123456789012345" smpRate="4800" nofASDU="5" multicast="false" smpMod="SecPerSmp">
							<!-- NOTE: SmvOpts changed in Edition 2 -->
							<SmvOpts sampleRate="false" refreshTime="false" sampleSynchronized="true" dataSet="true" security="true"/>
						</SampledValueControl>
						<SampledValueControl name="VoltMulticast" datSet="smv" smvID="VoltMulticast" smpRate="4800" nofASDU="5" multicast="true" smpMod="SecPerSmp">
							<SmvOpts sampleRate="false" refreshTime="false" sampleSynchronized="true" dataSet="true" security="true"/>
						</SampledValueControl>
						<SettingControl actSG="2" numOfSGs="2"/>
					</LN0>
					<LN lnType="LPHD" lnClass="LPHD" inst="1">
						<DataSet name="Measurands">
							<FCDA ldInst="C1" prefix="" lnInst="1" lnClass="MMXU" doName="TotW" daName="instMag" fc="MX"/>
							<FCDA ldInst="C1" prefix="" lnInst="1" lnClass="MMXU" doName="TotVAr" fc="MX"/>
						</DataSet>
						<ReportControl name="MeaReport" rptID="E1Q1Measurands" datSet="Measurands" intgPd="2000" confRev="0">
							<TrgOps qchg="true" period="true"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
							<RptEnabled max="2">
							</RptEnabled>
						</ReportControl>
						<DOI name="Proxy">
							<DAI name="stVal">
								<Val>0</Val>
							</DAI>
						</DOI>
						<DOI name="RsStat">
							<DAI name="ctlModel">
								<Val>direct-with-normal-security</Val>
							</DAI>
						</DOI>
						<DOI name="Sim">
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>20000</Val>
							</DAI>
						</DOI>
					</LN>
					<LN inst="1" lnClass="CSWI" lnType="CSWI">
						<DOI name="Loc">
							<DAI name="stVal">
								<Val>0</Val>
							</DAI>
						</DOI>
						<DOI name="Mod">
							<DAI name="stVal">
								<Val>1</Val>	<!-- 1=On -->
							</DAI>
							<DAI name="ctlModel">
								<Val>direct-with-normal-security</Val>
							</DAI>
						</DOI>
						<DOI name="Pos">
							<DAI name="ctlModel">
								<Val>direct-with-enhanced-security</Val>
							</DAI>
						</DOI>
					</LN>
					<LN inst="2" lnClass="CSWI" lnType="CSWI">
						<DOI name="Mod">
							<DAI name="stVal">
								<Val>1</Val>	<!-- 1=On -->
							</DAI>
							<DAI name="ctlModel">
								<Val>sbo-with-normal-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>20000000</Val>
							</DAI>
							<DAI name="sboClass">
								<Val>operate-many</Val>
							</DAI>
						</DOI>
						<DOI name="Pos">
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>20000000</Val>
							</DAI>
							<DAI name="sboClass">
								<Val>operate-once</Val>
							</DAI>
						</DOI>
					</LN>
					<LN inst="1" lnClass="CSYN" lnType="CSYN">
						<DOI name="Mod">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
							<DAI name="ctlModel">
								<Val>direct-with-normal-security</Val>
							</DAI>
						</DOI>
						<DOI name="OpModSyn">
							<DAI name="ctlModel">
								<Val>direct-with-normal-security</Val>
							</DAI>
						</DOI>
					</LN>

					<LN inst="1" lnClass="CCGR" lnType="CCGR">
					</LN>

					<LN inst="1" lnClass="MMXU" lnType="MMXU">
						<DOI name="Mod">
							<DAI name="stVal">
								<Val>1</Val>	<!-- 1=On -->
							</DAI>
						</DOI>
						<DOI name="TotW">
							<SDI name="rangeC" sAddr="sample_sAddr_in_SDI">
								<SDI name="min">
									<DAI name="i">
										<Val>0</Val>
									</DAI>
									<DAI name="f">
										<Val>0.0</Val>
									</DAI>
								</SDI>
								<SDI name="max">
									<DAI name="i">
										<Val>100</Val>
									</DAI>
									<DAI name="f">
										<Val>100.0</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="db">
								<Val>3000</Val>
							</DAI>
						</DOI>
						<DOI name="TotVAr">
							<SDI name="rangeC" sAddr="sample_sAddr_in_SDI">
								<SDI name="min">
									<DAI name="i">
										<Val>0</Val>
									</DAI>
									<DAI name="f">
										<Val>0.0</Val>
									</DAI>
								</SDI>
								<SDI name="max">
									<DAI name="i">
										<Val>100</Val>
									</DAI>
									<DAI name="f">
										<Val>100.0</Val>
									</DAI>
								</SDI>
							</SDI>
							<DAI name="db">
								<Val>3000</Val>
							</DAI>
						</DOI>
						<DOI name="A">
							<SDI name="phsA">
								<SDI name="rangeC">
									<SDI name="min">
										<DAI name="i">
											<Val>0</Val>
										</DAI>
										<DAI name="f">
											<Val>0.0</Val>
										</DAI>
									</SDI>
									<SDI name="max">
										<DAI name="i">
											<Val>100</Val>
										</DAI>
										<DAI name="f">
											<Val>100.0</Val>
										</DAI>
									</SDI>
								</SDI>
								<SDI name="rangeAngC">
									<SDI name="min">
										<DAI name="i">
											<Val>0</Val>
										</DAI>
										<DAI name="f">
											<Val>0.0</Val>
										</DAI>
									</SDI>
									<SDI name="max">
										<DAI name="i">
											<Val>50</Val>
										</DAI>
										<DAI name="f">
											<Val>50.0</Val>
										</DAI>
									</SDI>
								</SDI>
								<DAI name="db">
									<Val>5000</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>10000</Val>
								</DAI>
							</SDI>
						</DOI>
					</LN>
					<LN inst="1" lnClass="YEFN" lnType="YEFN">
						<DOI name="Mod">
							<DAI name="stVal">
								<Val>1</Val>	<!-- 1=On -->
							</DAI>
						</DOI>
					</LN>
					<LN inst="1" lnClass="GGIO" lnType="GGIO">
						<DOI name="Mod">
							<DAI name="stVal">
								<Val>1</Val>	<!-- 1=On -->
							</DAI>
						</DOI>
					</LN>
					<LN inst="1" lnClass="ANCR" lnType="ANCR">
						<DOI name="Mod">
							<DAI name="stVal">
								<Val>1</Val>	<!-- 1=On -->
							</DAI>
						</DOI>
					</LN>
					<LN lnType="TVTR" lnClass="TVTR" inst="1">
						<DOI name="Mod">
							<DAI name="stVal">
								<Val>1</Val>	<!-- 1=On -->
							</DAI>
						</DOI>
					</LN>
					<LN lnType="MHAN" lnClass="MHAN" inst="1">
						<DOI name="Mod">
							<DAI name="stVal">
								<Val>1</Val>	<!-- 1=On -->
							</DAI>
						</DOI>
						<DOI name="HaAmp">
							<SDI name="har" ix="1">
								<SDI name="instCVal">
									<SDI name="mag">
										<DAI name="i">
											<Val>99</Val>
										</DAI>
										<DAI name="f">
											<Val>98</Val>
										</DAI>
									</SDI>
									<SDI name="ang">
										<DAI name="i">
											<Val>97</Val>
										</DAI>
										<DAI name="f">
											<Val>96</Val>
										</DAI>
									</SDI>
								</SDI>
							</SDI>
						</DOI>
					</LN>
					<!-- DEBUG: MHAI contains HWYE. Need max runtime > 25000 (approximately) to create this (see 3rd arg to scl2_datatype_create_all) -->
					<LN lnType="MHAI" lnClass="MHAI" inst="1">
						<DOI name="Mod">
							<DAI name="stVal">
								<Val>1</Val>	<!-- 1=On -->
							</DAI>
						</DOI>
						<DOI name="HRmsA">
							<SDI name="phsA">
								<SDI name="rangeC">
									<SDI name="min">
										<DAI name="i">
											<Val>0</Val>
										</DAI>
										<DAI name="f">
											<Val>0.0</Val>
										</DAI>
									</SDI>
									<SDI name="max">
										<DAI name="i">
											<Val>100</Val>
										</DAI>
										<DAI name="f">
											<Val>100.0</Val>
										</DAI>
									</SDI>
								</SDI>
								<SDI name="rangeAngC">
									<SDI name="min">
										<DAI name="i">
											<Val>0</Val>
										</DAI>
										<DAI name="f">
											<Val>0.0</Val>
										</DAI>
									</SDI>
									<SDI name="max">
										<DAI name="i">
											<Val>50</Val>
										</DAI>
										<DAI name="f">
											<Val>50.0</Val>
										</DAI>
									</SDI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>5000</Val>
								</DAI>
							</SDI>
						</DOI>
					</LN>
					<LN lnType="LGOS" lnClass="LGOS" inst="1">
						<DOI name="Mod">
							<DAI name="stVal">
								<Val>1</Val>	<!-- 1=On -->
							</DAI>
						</DOI>
						<DOI name="GoCBRef">
							<DAI name="setSrcRef">
								<Val>GOOSEPUBC1/LLN0.ItlPositions</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnType="LGOS" lnClass="LGOS" inst="2">
						<DOI name="Mod">
							<DAI name="stVal">
								<Val>1</Val>	<!-- 1=On -->
							</DAI>
						</DOI>
						<DOI name="GoCBRef">
							<DAI name="setSrcRef">
								<Val>GOOSEPUBC1/LLN0.ItlPositions2</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnType="LSVS" lnClass="LSVS" inst="1">
						<DOI name="Mod">
							<DAI name="stVal">
								<Val>on</Val>
							</DAI>
						</DOI>
						<DOI name="SvCBRef">
							<DAI name="setSrcRef">
								<Val>SVPUBC1/LLN0.Volt</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnType="LTRK" lnClass="LTRK" inst="1">
						<DOI name="Mod">
							<DAI name="stVal">
								<Val>1</Val>	<!-- 1=On -->
							</DAI>
						</DOI>
					</LN>
					<LN lnType="QITR" lnClass="QITR" inst="1">
						<DOI name="Mod">
							<DAI name="stVal">
								<Val>1</Val>	<!-- 1=On -->
							</DAI>
						</DOI>
					</LN>
					<LN lnType="LTMS" lnClass="LTMS" inst="1">
						<DOI name="Mod">
							<DAI name="stVal">
								<Val>1</Val>	<!-- 1=On -->
							</DAI>
						</DOI>
					</LN>
					<LN lnType="ATCC" lnClass="ATCC" inst="1">
						<DOI name="Mod">
							<DAI name="stVal">
								<Val>1</Val>	<!-- 1=On -->
							</DAI>
						</DOI>
					</LN>
					<LN lnType="LTIM" lnClass="LTIM" inst="1">
						<DOI name="Mod">
							<DAI name="stVal">
								<Val>1</Val>	<!-- 1=On -->
							</DAI>
						</DOI>
					</LN>
					<LN lnType="MMXN" lnClass="MMXN" inst="1">
						<DOI name="Mod">
							<DAI name="stVal">
								<Val>1</Val>	<!-- 1=On -->
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="description" inst="LogLD">
					<LN0 desc="description" lnType="LLN0" lnClass="LLN0" inst="">
						<DOI name="Mod">
							<DAI name="stVal">
								<Val>1</Val>	<!-- 1=On -->
							</DAI>
						</DOI>
					</LN0>
					<LN lnType="LPHD" lnClass="LPHD" inst="1">
						<DOI name="RsStat">
							<DAI name="ctlModel">
								<Val>direct-with-normal-security</Val>
							</DAI>
						</DOI>
						<DOI name="Sim">
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>20000</Val>
							</DAI>
						</DOI>
					</LN>
					<LN inst="1" lnClass="GGIO" lnType="GGIO">
						<DOI name="Mod">
							<DAI name="stVal">
								<Val>1</Val>	<!-- 1=On -->
							</DAI>
						</DOI>
					</LN>
				</LDevice>
			</Server>
			<!-- Services inside AccessPoint must be after Server -->
			<Services>
				<DynAssociation/>
				<GetDirectory/>
				<GetDataObjectDefinition/>
				<GetDataSetValue/>
				<DataSetDirectory/>
				<ReadWrite/>
				<FileHandling/>
				<ConfDataSet max="4" maxAttributes="50"/>
				<ConfReportControl max="15"/>
				<ReportSettings cbName="Conf" datSet="Conf" rptID="Dyn" optFields="Conf" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" resvTms="true"/>
				<ConfLogControl max="1"/>
				<ConfLNs fixLnInst="true"/>
				<GetCBValues/>
				<GOOSE max="2"/>
				<GSESettings appID="Conf" cbName="Conf" datSet="Conf"/>
				<SupSubscription maxGo="5" maxSv="5"/>
			</Services>
		</AccessPoint>
	</IED>
	<IED name="GOOSEPUB">	<!-- Used by E1Q1SB1 for GOOSE subscription -->
		<Services>
			<DynAssociation/>
			<GetDirectory/>
			<GetDataObjectDefinition/>
			<GetDataSetValue/>
			<DataSetDirectory/>
			<ReadWrite/>
			<FileHandling/>
			<ConfDataSet max="4" maxAttributes="50"/>
			<ConfReportControl max="12"/>
			<ReportSettings bufTime="Dyn" cbName="Conf" rptID="Dyn" datSet="Conf" intgPd="Dyn" optFields="Conf"/>
			<ConfLogControl max="1"/>
			<ConfLNs fixLnInst="true"/>
			<GetCBValues/>
			<GOOSE max="2"/>
			<GSESettings appID="Conf" cbName="Conf" datSet="Conf"/>
		</Services>
		<AccessPoint name="S1">
			<Server>
				<Authentication/>
				<LDevice desc="description" inst="C1">
					<LN0 desc="description" lnType="LLN0" lnClass="LLN0" inst="">
						<DataSet name="Positions" desc="description">
							<FCDA ldInst="C1" prefix="" lnInst="1" lnClass="CSWI" doName="Pos" fc="ST"/>
							<FCDA ldInst="C1" prefix="" lnInst="2" lnClass="CSWI" doName="Pos" fc="ST"/>
						</DataSet>
						<GSEControl name="ItlPositions" datSet="Positions" appID="Itl" confRev="5">
							<IEDName apRef="S1">E1Q1SB1</IEDName>
						</GSEControl>
						<GSEControl name="ItlPositions2" datSet="Positions" appID="Itl2">
							<IEDName apRef="S1">E1Q1SB1</IEDName>
							<Protocol mustUnderstand="true">R-GOOSE</Protocol>
						</GSEControl>
					</LN0>
					<LN lnType="LPHD" lnClass="LPHD" inst="1">
					</LN>
					<LN lnType="CSWI" lnClass="CSWI" inst="1">
					</LN>
					<LN lnType="CSWI" lnClass="CSWI" inst="2">
					</LN>
				</LDevice>
			</Server>
		</AccessPoint>
	</IED>
	<IED name="SVPUB">	<!-- SV Publisher -->
		<Services>
			<DynAssociation/>
			<GetDirectory/>
			<GetDataObjectDefinition/>
			<GetDataSetValue/>
			<DataSetDirectory/>
			<ReadWrite/>
			<FileHandling/>
			<ConfDataSet max="4" maxAttributes="50"/>
			<ConfReportControl max="12"/>
			<ReportSettings bufTime="Dyn" cbName="Conf" rptID="Dyn" datSet="Conf" intgPd="Dyn" optFields="Conf"/>
			<ConfLogControl max="1"/>
			<ConfLNs fixLnInst="true"/>
			<GetCBValues/>
			<GOOSE max="2"/>
			<GSESettings appID="Conf" cbName="Conf" datSet="Conf"/>
		</Services>
		<AccessPoint name="S1">
			<Server>
				<Authentication/>
				<LDevice desc="description" inst="C1">
					<LN0 desc="description" lnType="LLN0" lnClass="LLN0" inst="">
						<DataSet name="PhsMeas1" desc="description">	<!-- Data Set defined in the 9-2LE document -->
							<FCDA ldInst="C1" prefix="" lnInst="1" lnClass="TCTR" fc="MX" doName="AmpSv" daName="instMag.i"/>
							<FCDA ldInst="C1" prefix="" lnInst="1" lnClass="TCTR" fc="MX" doName="AmpSv" daName="q"/>
							<FCDA ldInst="C1" prefix="" lnInst="2" lnClass="TCTR" fc="MX" doName="AmpSv" daName="instMag.i"/>
							<FCDA ldInst="C1" prefix="" lnInst="2" lnClass="TCTR" fc="MX" doName="AmpSv" daName="q"/>
							<FCDA ldInst="C1" prefix="" lnInst="3" lnClass="TCTR" fc="MX" doName="AmpSv" daName="instMag.i"/>
							<FCDA ldInst="C1" prefix="" lnInst="3" lnClass="TCTR" fc="MX" doName="AmpSv" daName="q"/>
							<FCDA ldInst="C1" prefix="" lnInst="4" lnClass="TCTR" fc="MX" doName="AmpSv" daName="instMag.i"/>
							<FCDA ldInst="C1" prefix="" lnInst="4" lnClass="TCTR" fc="MX" doName="AmpSv" daName="q"/>

							<FCDA ldInst="C1" prefix="" lnInst="1" lnClass="TVTR" fc="MX" doName="VolSv" daName="instMag.i"/>
							<FCDA ldInst="C1" prefix="" lnInst="1" lnClass="TVTR" fc="MX" doName="VolSv" daName="q"/>
							<FCDA ldInst="C1" prefix="" lnInst="2" lnClass="TVTR" fc="MX" doName="VolSv" daName="instMag.i"/>
							<FCDA ldInst="C1" prefix="" lnInst="2" lnClass="TVTR" fc="MX" doName="VolSv" daName="q"/>
							<FCDA ldInst="C1" prefix="" lnInst="3" lnClass="TVTR" fc="MX" doName="VolSv" daName="instMag.i"/>
							<FCDA ldInst="C1" prefix="" lnInst="3" lnClass="TVTR" fc="MX" doName="VolSv" daName="q"/>
							<FCDA ldInst="C1" prefix="" lnInst="4" lnClass="TVTR" fc="MX" doName="VolSv" daName="instMag.i"/>
							<FCDA ldInst="C1" prefix="" lnInst="4" lnClass="TVTR" fc="MX" doName="VolSv" daName="q"/>
						</DataSet>
						<SampledValueControl name="Volt" datSet="PhsMeas1" smvID="VoltMulticast" confRev="7" smpRate="4800" nofASDU="5" multicast="true" smpMod="SmpPerSec">
							<IEDName apRef="S1">E1Q1SB1</IEDName>
							<SmvOpts sampleRate="true" refreshTime="true" sampleSynchronized="true" dataSet="true" security="true"/>
							<Protocol mustUnderstand="true">R-SV</Protocol>
						</SampledValueControl>
					</LN0>
					<LN lnType="LPHD" lnClass="LPHD" inst="1">
					</LN>
					<LN lnType="TCTR" lnClass="TCTR" inst="1">
					</LN>
					<LN lnType="TCTR" lnClass="TCTR" inst="2">
					</LN>
					<LN lnType="TCTR" lnClass="TCTR" inst="3">
					</LN>
					<LN lnType="TCTR" lnClass="TCTR" inst="4">
					</LN>
					<LN lnType="TVTR" lnClass="TVTR" inst="1">
					</LN>
					<LN lnType="TVTR" lnClass="TVTR" inst="2">
					</LN>
					<LN lnType="TVTR" lnClass="TVTR" inst="3">
					</LN>
					<LN lnType="TVTR" lnClass="TVTR" inst="4">
					</LN>
				</LDevice>
			</Server>
		</AccessPoint>
	</IED>
	<DataTypeTemplates>
		<!-- The following LNodeTypes are taken from IEC 61850-7-4 -->
		<!-- LN: Physical device information Name: LPHD-->
		<LNodeType id="LPHD" lnClass="LPHD">
			<DO name="PhyNam"	type="DPL"/>	<!-- M-->
			<DO name="PhyHealth"	type="ENS"/>	<!-- M-->
			<DO name="OutOv"	type="SPS"/>	<!-- O-->
			<DO name="Proxy"	type="SPS"/>	<!-- M-->
			<DO name="InOv"		type="SPS"/>	<!-- O-->
			<DO name="NumPwrUp"	type="INS"/>	<!-- O-->
			<DO name="WrmStr"	type="INS"/>	<!-- O-->
			<DO name="WacTrg"	type="INS"/>	<!-- O-->
			<DO name="PwrUp"	type="SPS"/>	<!-- O-->
			<DO name="PwrDn"	type="SPS"/>	<!-- O-->
			<DO name="PwrSupAlm"	type="SPS"/>	<!-- O-->
			<DO name="RsStat"	type="SPC"/>	<!-- O-->
			<DO name="Sim"		type="SPC"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Logical node zero Name: LLN0-->
		<LNodeType id="LLN0" lnClass="LLN0">
			<DO name="NamPlt"	type="LPL"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Health"	type="ENS"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="InRef1"	type="ORG"/>	<!-- O-->
			<DO name="OpTmh"	type="INS"/>	<!-- O-->
			<DO name="LocKey"	type="SPS"/>	<!-- O-->
			<DO name="Loc"		type="SPS"/>	<!-- O-->
			<DO name="LocSta"	type="SPC"/>	<!-- O-->
			<DO name="Diag"		type="SPC"/>	<!-- O-->
			<DO name="LEDRs"	type="SPC"/>	<!-- O-->
			<DO name="GrRef"	type="ORG"/>	<!-- O-->
			<DO name="MltLev"	type="SPG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Differential Name: PDIF-->
		<!-- Modified for EDITION 2 -->
		<LNodeType id="PDIF" lnClass="PDIF">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Str"		type="ACD"/>	<!-- O-->
			<DO name="Op"		type="ACT"/>	<!-- M-->
			<DO name="TmASt"	type="CSD"/>	<!-- O-->
			<DO name="DifAClc"	type="WYE"/>	<!-- O-->
			<DO name="RstA"		type="WYE"/>	<!-- O-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="LinCapac"	type="ASG"/>	<!-- O-->
			<DO name="LoSet"	type="ASG"/>	<!-- C-->
			<DO name="HiSet"	type="ASG"/>	<!-- C-->
			<DO name="MinOpTmms"	type="ING"/>	<!-- O-->
			<DO name="MaxOpTmms"	type="ING"/>	<!-- O-->
			<DO name="RstMod"	type="ENG"/>	<!-- O-->
			<DO name="RsDlTmms"	type="ING"/>	<!-- O-->
			<DO name="TmACrv"	type="CURVE"/>	<!-- O-->
			<DO name="TmAChr33"	type="CSG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Direction comparison Name: PDIR-->
		<LNodeType id="PDIR" lnClass="PDIR">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Str"		type="ACD"/>	<!-- M-->
			<DO name="Op"		type="ACT"/>	<!-- M-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="RsDlTmms"	type="ING"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Distance Name: PDIS-->
		<LNodeType id="PDIS" lnClass="PDIS">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Str"		type="ACD"/>	<!-- M-->
			<DO name="Op"		type="ACT"/>	<!-- M-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="PoRch"	type="ASG"/>	<!-- O-->
			<DO name="PhStr"	type="ASG"/>	<!-- O-->
			<DO name="GndStr"	type="ASG"/>	<!-- O-->
			<DO name="DirMod"	type="ING"/>	<!-- O-->
			<DO name="PctRch"	type="ASG"/>	<!-- O-->
			<DO name="Ofs"		type="ASG"/>	<!-- O-->
			<DO name="PctOfs"	type="ASG"/>	<!-- O-->
			<DO name="RisLod"	type="ASG"/>	<!-- O-->
			<DO name="AngLod"	type="ASG"/>	<!-- O-->
			<DO name="TmDlMod"	type="SPG"/>	<!-- O-->
			<DO name="OpDlTmms"	type="ING"/>	<!-- O-->
			<DO name="PhDlMod"	type="SPG"/>	<!-- O-->
			<DO name="PhDlTmms"	type="ING"/>	<!-- O-->
			<DO name="GndDlMod"	type="SPG"/>	<!-- O-->
			<DO name="GndDlTmms"	type="ING"/>	<!-- O-->
			<DO name="X1"		type="ASG"/>	<!-- O-->
			<DO name="LinAng"	type="ASG"/>	<!-- O-->
			<DO name="RisGndRch"	type="ASG"/>	<!-- O-->
			<DO name="RisPhRch"	type="ASG"/>	<!-- O-->
			<DO name="K0Fact"	type="ASG"/>	<!-- O-->
			<DO name="K0FactAng"	type="ASG"/>	<!-- O-->
			<DO name="RsDlTmms"	type="ING"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Directional overpower Name: PDOP-->
		<LNodeType id="PDOP" lnClass="PDOP">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Str"		type="ACD"/>	<!-- M-->
			<DO name="Op"		type="ACT"/>	<!-- M-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="DirMod"	type="ING"/>	<!-- O-->
			<DO name="StrVal"	type="ASG"/>	<!-- O-->
			<DO name="OpDlTmms"	type="ING"/>	<!-- O-->
			<DO name="RsDlTmms"	type="ING"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Directional underpower Name: PDUP-->
		<LNodeType id="PDUP" lnClass="PDUP">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Str"		type="ACD"/>	<!-- M-->
			<DO name="Op"		type="ACT"/>	<!-- M-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="StrVal"	type="ASG"/>	<!-- O-->
			<DO name="OpDlTmms"	type="ING"/>	<!-- O-->
			<DO name="RsDlTmms"	type="ING"/>	<!-- O-->
			<DO name="DirMod"	type="ING"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Rate of change of frequency Name: PFRC-->
		<LNodeType id="PFRC" lnClass="PFRC">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Str"		type="ACD"/>	<!-- M-->
			<DO name="Op"		type="ACT"/>	<!-- M-->
			<DO name="BlkV"		type="SPS"/>	<!-- O-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="StrVal"	type="ASG"/>	<!-- O-->
			<DO name="BlkVal"	type="ASG"/>	<!-- O-->
			<DO name="OpDlTmms"	type="ING"/>	<!-- O-->
			<DO name="RsDlTmms"	type="ING"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Harmonic restraint Name: PHAR-->
		<LNodeType id="PHAR" lnClass="PHAR">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Str"		type="ACD"/>	<!-- M-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="HaRst"	type="ING"/>	<!-- O-->
			<DO name="PhStr"	type="ASG"/>	<!-- O-->
			<DO name="PhStop"	type="ASG"/>	<!-- O-->
			<DO name="OpDlTmms"	type="ING"/>	<!-- O-->
			<DO name="RsDlTmms"	type="ING"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Ground detector Name: PHIZ-->
		<LNodeType id="PHIZ" lnClass="PHIZ">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Str"		type="ACD"/>	<!-- M-->
			<DO name="Op"		type="ACT"/>	<!-- M-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="AStr"		type="ASG"/>	<!-- O-->
			<DO name="VStr"		type="ASG"/>	<!-- O-->
			<DO name="HVStr"	type="ASG"/>	<!-- O-->
			<DO name="OpDlTmms"	type="ING"/>	<!-- O-->
			<DO name="RsDlTmms"	type="ING"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Instantaneous overcurrent Name: PIOC-->
		<LNodeType id="PIOC" lnClass="PIOC">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Str"		type="ACD"/>	<!-- O-->
			<DO name="Op"		type="ACT"/>	<!-- M-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="StrVal"	type="ASG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Motor restart inhibition Name: PMRI-->
		<LNodeType id="PMRI" lnClass="PMRI">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Op"		type="ACT"/>	<!-- O-->
			<DO name="StrInh"	type="SPS"/>	<!-- O-->
			<DO name="StrInhTmm"	type="INS"/>	<!-- O-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="SetA"		type="ASG"/>	<!-- O-->
			<DO name="SetTms"	type="ING"/>	<!-- O-->
			<DO name="MaxNumStr"	type="ING"/>	<!-- O-->
			<DO name="MaxWrmStr"	type="ING"/>	<!-- O-->
			<DO name="MaxStrTmm"	type="ING"/>	<!-- O-->
			<DO name="EqTmm"	type="ING"/>	<!-- O-->
			<DO name="InhTmm"	type="ING"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Motor starting time supervision Name: PMSS-->
		<LNodeType id="PMSS" lnClass="PMSS">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Str"		type="ACD"/>	<!-- O-->
			<DO name="Op"		type="ACT"/>	<!-- O-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="SetA"		type="ASG"/>	<!-- O-->
			<DO name="SetTms"	type="ING"/>	<!-- O-->
			<DO name="MotStr"	type="ASG"/>	<!-- O-->
			<DO name="LokRotTms"	type="ING"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Over power factor Name: POPF-->
		<LNodeType id="POPF" lnClass="POPF">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Str"		type="ACD"/>	<!-- M-->
			<DO name="Op"		type="ACT"/>	<!-- M-->
			<DO name="BlkA"		type="SPS"/>	<!-- O-->
			<DO name="BlkV"		type="SPS"/>	<!-- O-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="StrVal"	type="ASG"/>	<!-- O-->
			<DO name="OpDlTmms"	type="ING"/>	<!-- O-->
			<DO name="RsDlTmms"	type="ING"/>	<!-- O-->
			<DO name="BlkValA"	type="ASG"/>	<!-- O-->
			<DO name="BlkValV"	type="ASG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Phase angle measuring Name: PPAM-->
		<LNodeType id="PPAM" lnClass="PPAM">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Str"		type="ACD"/>	<!-- M-->
			<DO name="Op"		type="ACT"/>	<!-- M-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="StrVal"	type="ASG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Protection scheme Name: PSCH-->
		<LNodeType id="PSCH" lnClass="PSCH">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="TxPrm"	type="ACT"/>	<!-- O-->
			<DO name="TxBlk"	type="ACT"/>	<!-- O-->
			<DO name="TxTr"		type="ACT"/>	<!-- O-->
			<DO name="RxPrm1"	type="ACT"/>	<!-- O-->
			<DO name="RxBlk1"	type="ACT"/>	<!-- O-->
			<DO name="RxTr1"	type="ACT"/>	<!-- O-->
			<DO name="Op"		type="ACT"/>	<!-- M-->
			<DO name="EchoWei"	type="SPS"/>	<!-- O-->
			<DO name="EchoWeiOp"	type="SPS"/>	<!-- O-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="RxSrc1"	type="ORG"/>	<!-- O-->
			<DO name="RxSrcTr1"	type="ORG"/>	<!-- O-->
			<DO name="OpDlTmms"	type="ING"/>	<!-- O-->
			<DO name="CrdTmms"	type="ING"/>	<!-- O-->
			<DO name="DurTmms"	type="ING"/>	<!-- O-->
			<DO name="UnBlkMod"	type="ENG"/>	<!-- O-->
			<DO name="UnBlkTmms"	type="ING"/>	<!-- O-->
			<DO name="WeiMod"	type="ENG"/>	<!-- O-->
			<DO name="WeiTmms"	type="ING"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Sensitive directional earthfault Name: PSDE-->
		<LNodeType id="PSDE" lnClass="PSDE">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Str"		type="ACD"/>	<!-- M-->
			<DO name="Op"		type="ACT"/>	<!-- O-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="FltIndRs"	type="SPC"/>	<!-- O-->
			<DO name="Ang"		type="ASG"/>	<!-- O-->
			<DO name="GndStr"	type="ASG"/>	<!-- O-->
			<DO name="GndOp"	type="ASG"/>	<!-- O-->
			<DO name="StrDlTmms"	type="ING"/>	<!-- O-->
			<DO name="OpDlTmms"	type="ING"/>	<!-- O-->
			<DO name="DirMod"	type="ENG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Transient earth fault Name: PTEF-->
		<LNodeType id="PTEF" lnClass="PTEF">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Str"		type="ACD"/>	<!-- C-->
			<DO name="Op"		type="ACT"/>	<!-- C-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="FltIndRs"	type="SPC"/>	<!-- O-->
			<DO name="GndStr"	type="ASG"/>	<!-- O-->
			<DO name="DirMod"	type="ENG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Time overcurrent Name: PTOC-->
		<LNodeType id="PTOC" lnClass="PTOC">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Str"		type="ACD"/>	<!-- M-->
			<DO name="Op"		type="ACT"/>	<!-- M-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="TmACrv"	type="CURVE"/>	<!-- O-->
			<DO name="TmAChr33"	type="CSG"/>	<!-- C-->
			<DO name="TmASt"	type="CSD"/>	<!-- O-->
			<DO name="StrVal"	type="ASG"/>	<!-- O-->
			<DO name="TmMult"	type="ASG"/>	<!-- O-->
			<DO name="MinOpTmms"	type="ING"/>	<!-- O-->
			<DO name="MaxOpTmms"	type="ING"/>	<!-- O-->
			<DO name="OpDlTmms"	type="ING"/>	<!-- O-->
			<DO name="TypRsCrv"	type="ENG"/>	<!-- O-->
			<DO name="RsDlTmms"	type="ING"/>	<!-- O-->
			<DO name="DirMod"	type="ENG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Overfrequency Name: PTOF-->
		<LNodeType id="PTOF" lnClass="PTOF">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Str"		type="ACD"/>	<!-- M-->
			<DO name="Op"		type="ACT"/>	<!-- M-->
			<DO name="BlkV"		type="SPS"/>	<!-- O-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="StrVal"	type="ASG"/>	<!-- O-->
			<DO name="BlkVal"	type="ASG"/>	<!-- O-->
			<DO name="OpDlTmms"	type="ING"/>	<!-- O-->
			<DO name="RsDlTmms"	type="ING"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Overvoltage Name: PTOV-->
		<LNodeType id="PTOV" lnClass="PTOV">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Str"		type="ACD"/>	<!-- M-->
			<DO name="Op"		type="ACT"/>	<!-- M-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="TmVCrv"	type="CURVE"/>	<!-- O-->
			<DO name="TmVChr33"	type="CSG"/>	<!-- C-->
			<DO name="TmVSt"	type="CSD"/>	<!-- O-->
			<DO name="StrVal"	type="ASG"/>	<!-- O-->
			<DO name="TmMult"	type="ASG"/>	<!-- O-->
			<DO name="MinOpTmms"	type="ING"/>	<!-- O-->
			<DO name="MaxOpTmms"	type="ING"/>	<!-- O-->
			<DO name="OpDlTmms"	type="ING"/>	<!-- O-->
			<DO name="RsDlTmms"	type="ING"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Protection trip conditioning Name: PTRC-->
		<LNodeType id="PTRC" lnClass="PTRC">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Tr"		type="ACT"/>	<!-- C-->
			<DO name="Op"		type="ACT"/>	<!-- C-->
			<DO name="Str"		type="ACD"/>	<!-- O-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="TrMod"	type="ENG"/>	<!-- O-->
			<DO name="TrPlsTmms"	type="ING"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Thermal overload Name: PTTR-->
		<LNodeType id="PTTR" lnClass="PTTR">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Str"		type="ACD"/>	<!-- O-->
			<DO name="Op"		type="ACT"/>	<!-- M-->
			<DO name="AlmThm"	type="SPS"/>	<!-- O-->
			<DO name="BlkThm"	type="SPS"/>	<!-- O-->
			<DO name="Amp"		type="MV"/>	<!-- O-->
			<DO name="Tmp"		type="MV"/>	<!-- O-->
			<DO name="TmpRl"	type="MV"/>	<!-- O-->
			<DO name="LodRsvAlm"	type="MV"/>	<!-- O-->
			<DO name="LodRsvTr"	type="MV"/>	<!-- O-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="TmTmpCrv"	type="CURVE"/>	<!-- O-->
			<DO name="TmTmpChr33"	type="CSG"/>	<!-- C-->
			<DO name="TmACrv"	type="CURVE"/>	<!-- O-->
			<DO name="TmaChr33"	type="CSG"/>	<!-- C-->
			<DO name="TmTmpSt"	type="CSD"/>	<!-- O-->
			<DO name="TmASt"	type="CSD"/>	<!-- O-->
			<DO name="TmpMax"	type="ASG"/>	<!-- O-->
			<DO name="StrVal"	type="ASG"/>	<!-- O-->
			<DO name="OpDlTmms"	type="ING"/>	<!-- O-->
			<DO name="MinOpTmms"	type="ING"/>	<!-- O-->
			<DO name="MaxOpTmms"	type="ING"/>	<!-- O-->
			<DO name="RsDlTmms"	type="ING"/>	<!-- O-->
			<DO name="ConsTms1"	type="ING"/>	<!-- O-->
			<DO name="AlmVal"	type="ASG"/>	<!-- O-->
			<DO name="Dropout"	type="ASG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Undercurrent Name: PTUC-->
		<LNodeType id="PTUC" lnClass="PTUC">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Str"		type="ACD"/>	<!-- M-->
			<DO name="Op"		type="ACT"/>	<!-- M-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="TmACrv"	type="CURVE"/>	<!-- O-->
			<DO name="TmAChr33"	type="CSG"/>	<!-- C-->
			<DO name="TmASt"	type="CSD"/>	<!-- O-->
			<DO name="StrVal"	type="ASG"/>	<!-- O-->
			<DO name="OpDlTmms"	type="ING"/>	<!-- O-->
			<DO name="TmMult"	type="ASG"/>	<!-- O-->
			<DO name="MinOpTmms"	type="ING"/>	<!-- O-->
			<DO name="MaxOpTmms"	type="ING"/>	<!-- O-->
			<DO name="TypRsCrv"	type="ENG"/>	<!-- O-->
			<DO name="RsDlTmms"	type="ING"/>	<!-- O-->
			<DO name="DirMod"	type="ENG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Undervoltage Name: PTUV-->
		<LNodeType id="PTUV" lnClass="PTUV">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Str"		type="ACD"/>	<!-- M-->
			<DO name="Op"		type="ACT"/>	<!-- M-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="TmVCrv"	type="CURVE"/>	<!-- O-->
			<DO name="TmVChr33"	type="CSG"/>	<!-- C-->
			<DO name="TmVSt"	type="CSD"/>	<!-- O-->
			<DO name="StrVal"	type="ASG"/>	<!-- O-->
			<DO name="TmMult"	type="ASG"/>	<!-- O-->
			<DO name="MinOpTmms"	type="ING"/>	<!-- O-->
			<DO name="MaxOpTmms"	type="ING"/>	<!-- O-->
			<DO name="OpDlTmms"	type="ING"/>	<!-- O-->
			<DO name="RsDlTmms"	type="ING"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Underpower factor Name: PUPF-->
		<LNodeType id="PUPF" lnClass="PUPF">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Str"		type="ACD"/>	<!-- M-->
			<DO name="Op"		type="ACT"/>	<!-- M-->
			<DO name="BlkA"		type="SPS"/>	<!-- O-->
			<DO name="BlkV"		type="SPS"/>	<!-- O-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="StrVal"	type="ASG"/>	<!-- O-->
			<DO name="OpDlTmms"	type="ING"/>	<!-- O-->
			<DO name="RsDlTmms"	type="ING"/>	<!-- O-->
			<DO name="BlkValA"	type="ASG"/>	<!-- O-->
			<DO name="BlkValV"	type="ASG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Underfrequency Name: PTUF-->
		<LNodeType id="PTUF" lnClass="PTUF">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Str"		type="ACD"/>	<!-- M-->
			<DO name="Op"		type="ACT"/>	<!-- M-->
			<DO name="BlkV"		type="SPS"/>	<!-- O-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="StrVal"	type="ASG"/>	<!-- O-->
			<DO name="BlkVal"	type="ASG"/>	<!-- O-->
			<DO name="OpDlTmms"	type="ING"/>	<!-- O-->
			<DO name="RsDlTmms"	type="ING"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Voltage controlled time overcurrent Name: PVOC-->
		<LNodeType id="PVOC" lnClass="PVOC">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Str"		type="ACD"/>	<!-- M-->
			<DO name="Op"		type="ACT"/>	<!-- M-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="AVCrv"	type="CURVE"/>	<!-- O-->
			<DO name="AVChr33"	type="CSG"/>	<!-- C-->
			<DO name="TmACrv"	type="CURVE"/>	<!-- O-->
			<DO name="TmAChr33"	type="CSG"/>	<!-- C-->
			<DO name="AVSt"		type="CSD"/>	<!-- O-->
			<DO name="TmASt"	type="CSD"/>	<!-- O-->
			<DO name="TmMult"	type="ASG"/>	<!-- O-->
			<DO name="MinOpTmms"	type="ING"/>	<!-- O-->
			<DO name="MaxOpTmms"	type="ING"/>	<!-- O-->
			<DO name="OpDlTmms"	type="ING"/>	<!-- O-->
			<DO name="TypRsCrv"	type="ENG"/>	<!-- O-->
			<DO name="RsDlTmms"	type="ING"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Volts per Hz Name: PVPH-->
		<LNodeType id="PVPH" lnClass="PVPH">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Str"		type="ACD"/>	<!-- M-->
			<DO name="Op"		type="ACT"/>	<!-- M-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="VHzCrv"	type="CURVE"/>	<!-- O-->
			<DO name="VHzChr33"	type="CSG"/>	<!-- C-->
			<DO name="VHzSt"	type="CSD"/>	<!-- O-->
			<DO name="StrVal"	type="ASG"/>	<!-- O-->
			<DO name="OpDlTmms"	type="ING"/>	<!-- O-->
			<DO name="TypRsCrv"	type="ENG"/>	<!-- O-->
			<DO name="RsDlTmms"	type="ING"/>	<!-- O-->
			<DO name="TmMult"	type="ASG"/>	<!-- O-->
			<DO name="MinOpTmms"	type="ING"/>	<!-- O-->
			<DO name="MaxOpTmms"	type="ING"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Zero speed or underspeed Name: PZSU-->
		<LNodeType id="PZSU" lnClass="PZSU">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Str"		type="ACD"/>	<!-- M-->
			<DO name="Op"		type="ACT"/>	<!-- M-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="StrVal"	type="ASG"/>	<!-- O-->
			<DO name="OpDlTmms"	type="ING"/>	<!-- O-->
			<DO name="RsDlTmms"	type="ING"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Disturbance recorder function Name: RDRE-->
		<LNodeType id="RDRE" lnClass="RDRE">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="RcdMade"	type="SPS"/>	<!-- M-->
			<DO name="FltNum"	type="INS"/>	<!-- M-->
			<DO name="GriFltNum"	type="INS"/>	<!-- O-->
			<DO name="RcdStr"	type="SPS"/>	<!-- O-->
			<DO name="MemUsed"	type="INS"/>	<!-- O-->
			<DO name="RcdTrg"	type="SPC"/>	<!-- O-->
			<DO name="MemRs"	type="SPC"/>	<!-- O-->
			<DO name="MemClr"	type="SPC"/>	<!-- O-->
                        <DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="TrgMod"	type="ENG"/>	<!-- O-->
			<DO name="LevMod"	type="ENG"/>	<!-- O-->
			<DO name="PreTmms"	type="ING"/>	<!-- O-->
			<DO name="PstTmms"	type="ING"/>	<!-- O-->
			<DO name="MemFull"	type="ING"/>	<!-- O-->
			<DO name="MaxNumRcd"	type="ING"/>	<!-- O-->
			<DO name="ReTrgMod"	type="ING"/>	<!-- O-->
			<DO name="PerTrgTms"	type="ING"/>	<!-- O-->
			<DO name="ExclTmms"	type="ING"/>	<!-- O-->
			<DO name="RcdMod"	type="ENG"/>	<!-- O-->
			<DO name="StoRte"	type="ING"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Disturbance recorder channel analogue Name: RADR-->
		<LNodeType id="RADR" lnClass="RADR">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="ChTrg"	type="SPS"/>	<!-- M-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="ChNum1"	type="ING"/>	<!-- O-->
			<DO name="TrgMod"	type="ENG"/>	<!-- O-->
			<DO name="LevMod"	type="ENG"/>	<!-- O-->
			<DO name="HiTrgLev"	type="ASG"/>	<!-- O-->
			<DO name="LoTrgLev"	type="ASG"/>	<!-- O-->
			<DO name="PreTmms"	type="ING"/>	<!-- O-->
			<DO name="PstTmms"	type="ING"/>	<!-- O-->
			<DO name="SrcRef"	type="ORG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Disturbance recorder channel binary Name: RBDR-->
		<LNodeType id="RBDR" lnClass="RBDR">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="ChTrg"	type="SPS"/>	<!-- M-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="ChNum1"	type="ING"/>	<!-- O-->
			<DO name="TrgMod"	type="ENG"/>	<!-- O-->
			<DO name="LevMod"	type="ENG"/>	<!-- O-->
			<DO name="PreTmms"	type="ING"/>	<!-- O-->
			<DO name="PstTmms"	type="ING"/>	<!-- O-->
			<DO name="SrcRef"	type="ORG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Disturbance record handling Name: RDRS-->
		<LNodeType id="RDRS" lnClass="RDRS">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="AutoUpLod"	type="SPC"/>	<!-- O-->
			<DO name="DltRcd"	type="SPC"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Breaker failure Name: RBRF-->
		<LNodeType id="RBRF" lnClass="RBRF">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Str"		type="ACD"/>	<!-- O-->
			<DO name="OpEx"		type="ACT"/>	<!-- C-->
			<DO name="OpIn"		type="ACT"/>	<!-- C-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="FailMod"	type="ENG"/>	<!-- O-->
			<DO name="FailTmms"	type="ING"/>	<!-- O-->
			<DO name="SPlTrTmms"	type="ING"/>	<!-- O-->
			<DO name="TPTrTmms"	type="ING"/>	<!-- O-->
			<DO name="DetValA"	type="ASG"/>	<!-- O-->
			<DO name="ReTrMod"	type="ENG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Directional element Name: RDIR-->
		<LNodeType id="RDIR" lnClass="RDIR">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Dir"		type="ACD"/>	<!-- M-->
			<DO name="ChrAng"	type="ASG"/>	<!-- O-->
			<DO name="MinFwdAng"	type="ASG"/>	<!-- O-->
			<DO name="MinRvAng"	type="ASG"/>	<!-- O-->
			<DO name="MaxFwdAng"	type="ASG"/>	<!-- O-->
			<DO name="MaxRvAng"	type="ASG"/>	<!-- O-->
			<DO name="BlkValA"	type="ASG"/>	<!-- O-->
			<DO name="BlkValV"	type="ASG"/>	<!-- O-->
			<DO name="PolQty"	type="ENG"/>	<!-- O-->
			<DO name="MinPPV"	type="ASG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Fault locator Name: RFLO-->
		<LNodeType id="RFLO" lnClass="RFLO">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="FltLoop"	type="ENS"/>	<!-- O-->
			<DO name="FltZ"		type="CMV"/>	<!-- M-->
			<DO name="FltDiskm"	type="MV"/>	<!-- O-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Fault locator Name: RMXU-->
		<LNodeType id="RMXU" lnClass="RMXU">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="ALoc"		type="WYE"/>	<!-- C-->
			<DO name="AmpLocPhsA"	type="SAV"/>	<!-- C-->
			<DO name="AmpLocPhsB"	type="SAV"/>	<!-- C-->
			<DO name="AmpLocPhsC"	type="SAV"/>	<!-- C-->
			<DO name="AmpLocRes"	type="SAV"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Power swing detection/blocking Name: RPSB-->
		<LNodeType id="RPSB" lnClass="RPSB">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Str"		type="ACD"/>	<!-- C1-->
			<DO name="Op"		type="ACT"/>	<!-- C2-->
			<DO name="BlkZn"	type="SPS"/>	<!-- C1-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="ZeroEna"	type="SPG"/>	<!-- O-->
			<DO name="NgEna"	type="SPG"/>	<!-- O-->
			<DO name="MaxEna"	type="SPG"/>	<!-- O-->
			<DO name="SwgVal"	type="ASG"/>	<!-- O-->
			<DO name="SwgRis"	type="ASG"/>	<!-- O-->
			<DO name="SwgReact"	type="ASG"/>	<!-- O-->
			<DO name="SwgTmms"	type="ING"/>	<!-- O-->
			<DO name="UnBlkTmms"	type="ING"/>	<!-- O-->
			<DO name="MaxNumSlp"	type="ING"/>	<!-- O-->
			<DO name="EvTmms"	type="ING"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Autoreclosing Name: RREC-->
		<LNodeType id="RREC" lnClass="RREC">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="TrBeh"	type="ENS"/>	<!-- O-->
			<DO name="RecCyc"	type="INS"/>	<!-- O-->
			<DO name="OpCls"	type="ACT"/>	<!-- M-->
			<DO name="AutoRecSt"	type="ENS"/>	<!-- M-->
			<DO name="CycTrMod1"	type="ENG"/>	<!-- O-->
			<DO name="MaxCyc"	type="ING"/>	<!-- O-->
			<DO name="UseCyc"	type="ING"/>	<!-- O-->
			<DO name="MaxTmms"	type="ING"/>	<!-- O-->
			<DO name="Rec1Tmms1"	type="ING"/>	<!-- O-->
			<DO name="Rec13Tmms1"	type="ING"/>	<!-- O-->
			<DO name="Rec3Tmms1"	type="ING"/>	<!-- O-->
			<DO name="RclTmms"	type="ING"/>	<!-- O-->
			<DO name="RdyTmms"	type="ING"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Synchronism-check or synchronising Name: RSYN-->
		<LNodeType id="RSYN" lnClass="RSYN">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Rel"		type="SPS"/>	<!-- M-->
			<DO name="VInd"		type="SPS"/>	<!-- O-->
			<DO name="AngInd"	type="SPS"/>	<!-- O-->
			<DO name="HzInd"	type="SPS"/>	<!-- O-->
			<DO name="DifVClc"	type="MV"/>	<!-- O-->
			<DO name="DifHzClc"	type="MV"/>	<!-- O-->
			<DO name="DifAngClc"	type="MV"/>	<!-- O-->
			<DO name="SynPrg"	type="SPC"/>	<!-- O-->
			<DO name="DifV"		type="ASG"/>	<!-- O-->
			<DO name="DifHz"	type="ASG"/>	<!-- O-->
			<DO name="DifAng"	type="ASG"/>	<!-- O-->
			<DO name="LivDeaMod"	type="ENG"/>	<!-- O-->
			<DO name="DeaLinVal"	type="ASG"/>	<!-- O-->
			<DO name="LivLinVal"	type="ASG"/>	<!-- O-->
			<DO name="DeaBusVal"	type="ASG"/>	<!-- O-->
			<DO name="LivBusVal"	type="ASG"/>	<!-- O-->
			<DO name="TotTmms"	type="ING"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Alarm handling  Name: CALH-->
		<LNodeType id="CALH" lnClass="CALH">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="GrAlm"	type="SPS"/>	<!-- C-->
			<DO name="GrWrn"	type="SPS"/>	<!-- C-->
			<DO name="GrInd"	type="SPS"/>	<!-- C-->
			<DO name="AlmLstOv"	type="SPS"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Cooling group control Name: CCGR-->
		<LNodeType id="CCGR" lnClass="CCGR">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="OpTmh"	type="INS"/>	<!-- O-->
			<DO name="FanOvCur"	type="SPS"/>	<!-- O-->
			<DO name="PmpOvCur"	type="SPS"/>	<!-- O-->
			<DO name="PmpAlm"	type="SPS"/>	<!-- O-->
			<DO name="EnvTmp"	type="MV"/>	<!-- O-->
			<DO name="OilTmpIn"	type="MV"/>	<!-- O-->
			<DO name="OilTmpOut"	type="MV"/>	<!-- O-->
			<DO name="OilMotA"	type="MV"/>	<!-- O-->
			<DO name="FanFlw"	type="MV"/>	<!-- O-->
			<DO name="CETmpIn"	type="MV"/>	<!-- O-->
			<DO name="CETmpOut"	type="MV"/>	<!-- O-->
			<DO name="CEFlw"	type="MV"/>	<!-- O-->

			<DO name="FanA"		type="MV"/>	<!-- O-->
			<DO name="CEBlk"	type="SPC"/>	<!-- O-->
			<DO name="CECtl"	type="SPC"/>	<!-- O-->
			<DO name="PmpCtlGen"	type="ENC_PmpCtlGen"/>	<!-- O-->
			<DO name="PmpCtl"	type="ENC_PmpCtl"/>	<!-- O-->
			<DO name="FanCtlGen"	type="ENC_FanCtlGen"/>	<!-- O-->
			<DO name="FanCtl"	type="ENC_FanCtl"/>	<!-- O-->
			<DO name="Auto"		type="SPS"/>	<!-- O-->
			<DO name="OilTmpSet"	type="ASG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Interlocking Name: CILO-->
		<LNodeType id="CILO" lnClass="CILO">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EnaOpn"	type="SPS"/>	<!-- M-->
			<DO name="EnaCls"	type="SPS"/>	<!-- M-->
		</LNodeType>
		<!-- LN: Point-on-wave switching Name: CPOW-->
		<LNodeType id="CPOW" lnClass="CPOW">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="TmExc"	type="SPS"/>	<!-- M-->
			<DO name="StrPOW"	type="SPS"/>	<!-- O-->
			<DO name="OpOpn"	type="ACT"/>	<!-- O-->
			<DO name="OpCls"	type="ACT"/>	<!-- O-->
			<DO name="Pos"		type="DPC"/>	<!-- O-->
			<DO name="PosA"		type="DPC"/>	<!-- O-->
			<DO name="PosB"		type="DPC"/>	<!-- O-->
			<DO name="PosC"		type="DPC"/>	<!-- O-->
			<DO name="MaxDlTmms"	type="ING"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Switch controller Name: CSWI-->
		<LNodeType id="CSWI" lnClass="CSWI">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="LocKey"	type="SPS"/>	<!-- O-->
			<DO name="Loc"		type="SPS"/>	<!-- O-->
			<DO name="OpOpn"	type="ACT"/>	<!-- O-->
			<DO name="SelOpn"	type="SPS"/>	<!-- O-->
			<DO name="OpCls"	type="ACT"/>	<!-- O-->
			<DO name="SelCls"	type="SPS"/>	<!-- O-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="LocSta"	type="SPC"/>	<!-- O-->
			<DO name="Pos"		type="DPC"/>	<!-- M-->
			<DO name="PosA"		type="DPC"/>	<!-- O-->
			<DO name="PosB"		type="DPC"/>	<!-- O-->
			<DO name="PosC"		type="DPC"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Synchronizer controller Name: CSYN-->
		<LNodeType id="CSYN" lnClass="CSYN">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Cmd"		type="SPS"/>	<!-- M-->
			<DO name="Rel"		type="SPS"/>	<!-- M-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="LocSta"	type="SPC"/>	<!-- O-->
			<DO name="OpModSyn"	type="ENC_OpModSyn"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Generic automatic process control Name: GAPC-->
		<LNodeType id="GAPC" lnClass="GAPC">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="LocKey"	type="SPS"/>	<!-- O-->
			<DO name="Loc"		type="SPS"/>	<!-- O-->
			<DO name="Auto"		type="SPC"/>	<!-- O-->
			<DO name="Str1"		type="ACD"/>	<!-- M-->
			<DO name="Op1"		type="ACT"/>	<!-- M-->
			<DO name="Alm1"		type="SPS"/>	<!-- O-->
			<DO name="Wrn1"		type="SPS"/>	<!-- O-->
			<DO name="Ind1"		type="SPS"/>	<!-- O-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="LocSta"	type="SPC"/>	<!-- O-->
			<DO name="SPCSO1"	type="SPC"/>	<!-- O-->
			<DO name="DPCSO1"	type="DPC"/>	<!-- O-->
			<DO name="ISCSO1"	type="INC"/>	<!-- O-->
			<DO name="StrVal1"	type="ASG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Generic process I/O Name: GGIO-->
		<LNodeType id="GGIO" lnClass="GGIO">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EEName"	type="DPL"/>	<!-- O-->
			<DO name="EEHealth"	type="ENS"/>	<!-- M-->
			<DO name="LocKey"	type="SPS"/>	<!-- O-->
			<DO name="Loc"		type="SPS"/>	<!-- O-->
			<DO name="IntIn1"	type="INS"/>	<!-- O-->
			<DO name="Alm1"		type="SPS"/>	<!-- O-->
			<DO name="Wrn1"		type="SPS"/>	<!-- O-->
			<DO name="Ind1"		type="SPS"/>	<!-- O-->
			<DO name="AnIn1"	type="MV"/>	<!-- O-->
			<DO name="AnOut1"	type="APC"/>	<!-- O-->
			<DO name="CntRs1"	type="BCR"/>	<!-- O-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="LocSta"	type="SPC"/>	<!-- O-->
			<DO name="SPCSO1"	type="SPC"/>	<!-- O-->
			<DO name="DPCSO1"	type="DPC"/>	<!-- O-->
			<DO name="ISCSO1"	type="INC"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Generic security application Name: GSAL-->
		<LNodeType id="GSAL" lnClass="GSAL">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="AuthFail"	type="SEC"/>	<!-- M-->
			<DO name="AcsCtlFail"	type="SEC"/>	<!-- M-->
			<DO name="SvcViol"	type="SEC"/>	<!-- M-->
			<DO name="Ina"		type="SEC"/>	<!-- M-->
			<DO name="NumCntRs"	type="INS"/>	<!-- O-->
			<DO name="OpCntRs"	type="INC"/>	<!-- M-->
		</LNodeType>
		<!-- LN: Archiving Name: IARC-->
		<LNodeType id="IARC" lnClass="IARC">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="MemOv"	type="SPS"/>	<!-- M-->
			<DO name="MemUsed"	type="INS"/>	<!-- O-->
			<DO name="NumRcd"	type="INS"/>	<!-- O-->
			<DO name="InTrg1"	type="ORG"/>	<!-- O-->
			<DO name="InLog1"	type="ORG"/>	<!-- O-->
			<DO name="MaxNumRcd"	type="ING"/>	<!-- O-->
			<DO name="RcdMod"	type="ENG"/>	<!-- O-->
			<DO name="MemFull"	type="ING"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Human machine interface Name: IHMI-->
		<LNodeType id="IHMI" lnClass="IHMI">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EEName"	type="DPL"/>	<!-- O-->
			<DO name="EEHealth"	type="ENS"/>	<!-- O-->
			<DO name="LocKey"	type="SPS"/>	<!-- O-->
			<DO name="Loc"		type="SPS"/>	<!-- O-->
			<DO name="LocSta"	type="SPC"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Telecontrol interface  Name: ITCI-->
		<LNodeType id="ITCI" lnClass="ITCI">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EEName"	type="DPL"/>	<!-- O-->
			<DO name="EEHealth"	type="ENS"/>	<!-- O-->
			<DO name="Loc"		type="SPS"/>	<!-- O-->
			<DO name="Alm1"		type="SPS"/>	<!-- O-->
			<DO name="LocSta"	type="SPC"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Telemonitoring interface Name: ITMI-->
		<LNodeType id="ITMI" lnClass="ITMI">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EEName"	type="DPL"/>	<!-- O-->
			<DO name="EEHealth"	type="ENS"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Neutral current regulator Name: ANCR-->
		<LNodeType id="ANCR" lnClass="ANCR">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="LocKey"	type="SPS"/>	<!-- O-->
			<DO name="Loc"		type="SPS"/>	<!-- M-->
			<DO name="HiColPos"	type="INS"/>	<!-- O-->
			<DO name="LoColPos"	type="INS"/>	<!-- O-->
			<DO name="ColOpR"	type="SPS"/>	<!-- O-->
			<DO name="ColOpL"	type="SPS"/>	<!-- O-->
			<DO name="ColChgOp"	type="SPS"/>	<!-- O-->
			<DO name="StFixCol"	type="SPS"/>	<!-- O-->
			<DO name="StClcTun"	type="ENS"/>	<!-- O-->
			<DO name="PotAlm"	type="SPS"/>	<!-- O-->
			<DO name="MotAlm"	type="SPS"/>	<!-- O-->
			<DO name="MotWrn"	type="SPS"/>	<!-- O-->
			<DO name="ClcSeqWrn"	type="SPS"/>	<!-- O-->
			<DO name="ColPosA"	type="MV"/>	<!-- O-->
			<DO name="AResoPt"	type="MV"/>	<!-- O-->
			<DO name="AWatt"	type="MV"/>	<!-- O-->
			<DO name="ADetun"	type="MV"/>	<!-- O-->
			<DO name="Damp"		type="MV"/>	<!-- O-->
			<DO name="CapacImb"	type="MV"/>	<!-- O-->
			<DO name="VolResoPt"	type="CMV"/>	<!-- O-->
			<DO name="NeutVol"	type="CMV"/>	<!-- O-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="LocSta"	type="SPC"/>	<!-- O-->
			<DO name="TapChg"	type="BSC"/>	<!-- C1-->
			<DO name="ColTapPos"	type="ISC"/>	<!-- C1-->
			<DO name="ColPos"	type="APC"/>	<!-- C1-->
			<DO name="RCol"		type="SPC"/>	<!-- M-->
			<DO name="LCol"		type="SPC"/>	<!-- M-->
			<DO name="Auto"		type="SPC"/>	<!-- M-->
			<DO name="StrClc"	type="SPC"/>	<!-- O-->
			<DO name="ParOp"	type="SPC"/>	<!-- O-->
			<DO name="FixCol"	type="APC"/>	<!-- O-->
			<DO name="ParColMod"	type="ENG"/>	<!-- M-->
			<DO name="ParMod"	type="ENG"/>	<!-- O-->
			<DO name="ADetunSpt"	type="ASG"/>	<!-- O-->
			<DO name="BndWid"	type="ASG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Reactive power control Name: ARCO-->
		<LNodeType id="ARCO" lnClass="ARCO">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="LocKey"	type="SPS"/>	<!-- O-->
			<DO name="Loc"		type="SPS"/>	<!-- M-->
			<DO name="VOvSt"	type="SPS"/>	<!-- O-->
			<DO name="NeutAlm"	type="SPS"/>	<!-- O-->
			<DO name="DschBlk"	type="SPS"/>	<!-- O-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="LocSta"	type="SPC"/>	<!-- O-->
			<DO name="TapChg"	type="BSC"/>	<!-- M-->
			<DO name="Auto"		type="SPC"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Automatic tap changer controller Name: ATCC-->
		<!-- Modified for EDITION 2 -->
		<LNodeType id="ATCC" lnClass="ATCC">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="LocKey"	type="SPS"/>	<!-- O-->
			<DO name="Loc"		type="SPS"/>	<!-- O-->
			<DO name="HiTapPos"	type="INS"/>	<!-- O-->
			<DO name="LoTapPos"	type="INS"/>	<!-- O-->
			<DO name="TapOpR"	type="SPS"/>	<!-- O-->
			<DO name="TapOpL"	type="SPS"/>	<!-- O-->
			<DO name="TapOpStop"	type="SPS"/>	<!-- O-->
			<DO name="TapOpErr"	type="SPS"/>	<!-- O-->
			<DO name="LTCBlkVLo"	type="SPS"/>	<!-- O-->
			<DO name="LTCBlkVHi"	type="SPS"/>	<!-- O-->
			<DO name="LTCBlkAHi"	type="SPS"/>	<!-- O-->
			<DO name="EndPosR"	type="SPS"/>	<!-- O-->
			<DO name="EndPosL"	type="SPS"/>	<!-- O-->
			<DO name="ErrPar"	type="SPS"/>	<!-- O-->
			<DO name="CtlV"		type="MV"/>	<!-- M-->
			<DO name="LodA"		type="MV"/>	<!-- O-->
			<DO name="CircA"	type="MV"/>	<!-- O-->
			<DO name="PhAng"	type="MV"/>	<!-- O-->
			<DO name="HiCtlV"	type="MV"/>	<!-- O-->
			<DO name="LoCtlV"	type="MV"/>	<!-- O-->
			<DO name="HiDmdA"	type="MV"/>	<!-- O-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="LocSta"	type="SPC"/>	<!-- O-->
			<DO name="TapChg"	type="BSC"/>	<!-- O-->
			<DO name="TapPos"	type="ISC"/>	<!-- O-->
			<DO name="BndCtrChg"	type="BAC"/>	<!-- O-->
			<DO name="ParOp"	type="SPC"/>	<!-- M-->
			<DO name="LTCBlk"	type="SPC"/>	<!-- O-->
			<DO name="LTCDragRs"	type="SPC"/>	<!-- O-->
			<DO name="Auto"		type="SPC"/>	<!-- O-->
			<DO name="VRed1"	type="SPC"/>	<!-- O-->
			<DO name="BndCtr"	type="ASG"/>    <!-- O-->
			<DO name="BndWid"	type="ASG"/>    <!-- O-->
			<DO name="CtlDlTmms"	type="ING"/>    <!-- O-->
			<DO name="LDCR"		type="ASG"/>    <!-- O-->
			<DO name="LDCX"		type="ASG"/>    <!-- O-->
			<DO name="BlkLV"	type="ASG"/>    <!-- O-->
			<DO name="BlkRV"	type="ASG"/>    <!-- O-->
			<DO name="BlkVLo"	type="ASG"/>    <!-- O-->
			<DO name="BlkVHi"	type="ASG"/>    <!-- O-->
			<DO name="RnbkRV"	type="ASG"/>    <!-- O-->
			<DO name="LimLodA"	type="ASG"/>    <!-- O-->
			<DO name="LDC"		type="SPG"/>    <!-- O-->
			<DO name="ParTraMod"	type="ENG"/>    <!-- O-->
			<DO name="TmDlChr"	type="SPG"/>    <!-- O-->
			<DO name="LDCZ"		type="ASG"/>    <!-- O-->
			<DO name="VRedVal"	type="ASG"/>    <!-- O-->
			<DO name="TapBlkR"	type="ING"/>    <!-- O-->
			<DO name="TapBlkL"	type="ING"/>    <!-- O-->
		</LNodeType>
		<!-- LN: Voltage control Name: AVCO-->
		<LNodeType id="AVCO" lnClass="AVCO">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="LocKey"	type="SPS"/>	<!-- O-->
			<DO name="Loc"		type="SPS"/>	<!-- M-->
			<DO name="BlkEF"	type="SPS"/>	<!-- O-->
			<DO name="BlkAOv"	type="SPS"/>	<!-- O-->
			<DO name="BlkVOv"	type="SPS"/>	<!-- O-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="LocSta"	type="SPC"/>	<!-- O-->
			<DO name="TapChg"	type="BSC"/>	<!-- M-->
			<DO name="SptVol"	type="APC"/>	<!-- O-->
			<DO name="Auto"		type="SPS"/>	<!-- O-->
			<DO name="LimAOv"	type="ASG"/>	<!-- O-->
			<DO name="LimVOv"	type="ASG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Harmonics or interharmonics Name: MHAI-->
		<LNodeType id="MHAI" lnClass="MHAI">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Hz"		type="MV"/>	<!-- C-->
			<DO name="HA"		type="HWYE"/>	<!-- O-->
			<DO name="HPhV"		type="HWYE"/>	<!-- O-->
			<DO name="HPPV"		type="HDEL"/>	<!-- O-->
			<DO name="HW"		type="HWYE"/>	<!-- O-->
			<DO name="HVAr"		type="HWYE"/>	<!-- O-->
			<DO name="HVA"		type="HWYE"/>	<!-- O-->
			<DO name="HRmsA"	type="WYE"/>	<!-- O-->
			<DO name="HRmsPhV"	type="WYE"/>	<!-- O-->
			<DO name="HRmsPPV"	type="DEL"/>	<!-- O-->
			<DO name="HTuW"		type="WYE"/>	<!-- O-->
			<DO name="HTsW"		type="WYE"/>	<!-- O-->
			<DO name="HATm"		type="WYE"/>	<!-- O-->
			<DO name="HKf"		type="WYE"/>	<!-- O-->
			<DO name="HTdf"		type="WYE"/>	<!-- O-->
			<DO name="ThdA"		type="WYE"/>	<!-- O-->
			<DO name="ThdOddA"	type="WYE"/>	<!-- O-->
			<DO name="ThdEvnA"	type="WYE"/>	<!-- O-->
			<DO name="TddA"		type="WYE"/>	<!-- O-->
			<DO name="TddOddA"	type="WYE"/>	<!-- O-->
			<DO name="TddEvnA"	type="WYE"/>	<!-- O-->
			<DO name="ThdPhV"	type="WYE"/>	<!-- O-->
			<DO name="ThdOddPhV"	type="WYE"/>	<!-- O-->
			<DO name="ThdEvnPhV"	type="WYE"/>	<!-- O-->
			<DO name="ThdPPV"	type="DEL"/>	<!-- O-->
			<DO name="ThdOddPPV"	type="DEL"/>	<!-- O-->
			<DO name="ThdEvnPPV"	type="DEL"/>	<!-- O-->
			<DO name="HCfPhV"	type="WYE"/>	<!-- O-->
			<DO name="HCfPPV"	type="DEL"/>	<!-- O-->
			<DO name="HCfA"		type="WYE"/>	<!-- O-->
			<DO name="HTif"		type="WYE"/>	<!-- O-->
			<DO name="HzSet"	type="ASG"/>	<!-- C-->
			<DO name="EvTmms"	type="ASG"/>	<!-- O-->
			<DO name="NumCyc"	type="ING"/>	<!-- O-->
			<DO name="ThdAVal"	type="ASG"/>	<!-- O-->
			<DO name="ThdVVal"	type="ASG"/>	<!-- O-->
			<DO name="ThdATmms"	type="ING"/>	<!-- O-->
			<DO name="ThdVTmms"	type="ING"/>	<!-- O-->
			<DO name="NomA"		type="ASG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Non phase related harmonics or interharmonics Name: MHAN-->
		<LNodeType id="MHAN" lnClass="MHAN">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Hz"		type="MV"/>	<!-- C-->
			<DO name="HaAmp"	type="HMV"/>	<!-- O-->
			<DO name="HaVol"	type="HMV"/>	<!-- O-->
			<DO name="HaWatt"	type="HMV"/>	<!-- O-->
			<DO name="HaVolAmpr"	type="HMV"/>	<!-- O-->
			<DO name="HaVolAmp"	type="HMV"/>	<!-- O-->
			<DO name="HaRmsAmp"	type="MV"/>	<!-- O-->
			<DO name="HaRmsVol"	type="MV"/>	<!-- O-->
			<DO name="HaTuWatt"	type="MV"/>	<!-- O-->
			<DO name="HaTsWatt"	type="MV"/>	<!-- O-->
			<DO name="HaAmpTm"	type="MV"/>	<!-- O-->
			<DO name="HaKFact"	type="MV"/>	<!-- O-->
			<DO name="HaTdFact"	type="MV"/>	<!-- O-->
			<DO name="ThdAmp"	type="MV"/>	<!-- O-->
			<DO name="ThdOddAmp"	type="MV"/>	<!-- O-->
			<DO name="ThdEvnAmp"	type="MV"/>	<!-- O-->
			<DO name="TddAmp"	type="MV"/>	<!-- O-->
			<DO name="TddOddAmp"	type="MV"/>	<!-- O-->
			<DO name="TddEvnAmp"	type="MV"/>	<!-- O-->
			<DO name="ThdVol"	type="MV"/>	<!-- O-->
			<DO name="ThdOddVol"	type="MV"/>	<!-- O-->
			<DO name="ThdEvnVol"	type="MV"/>	<!-- O-->
			<DO name="HaCfAmp"	type="MV"/>	<!-- O-->
			<DO name="HaCfVol"	type="MV"/>	<!-- O-->
			<DO name="HaTiFact"	type="MV"/>	<!-- O-->
			<DO name="HzSet"	type="ASG"/>	<!-- C-->
			<DO name="EvTmms"	type="ASG"/>	<!-- O-->
			<DO name="NumCyc"	type="ING"/>	<!-- O-->
			<DO name="ThdAVal"	type="ASG"/>	<!-- O-->
			<DO name="ThdVVal"	type="ASG"/>	<!-- O-->
			<DO name="ThdATmms"	type="ING"/>	<!-- O-->
			<DO name="ThdVTmms"	type="ING"/>	<!-- O-->
			<DO name="NomA"		type="ASG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Metering Name: MMTR-->
		<LNodeType id="MMTR" lnClass="MMTR">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="TotVAh"	type="BCR"/>	<!-- O-->
			<DO name="TotWh"	type="BCR"/>	<!-- O-->
			<DO name="TotVArh"	type="BCR"/>	<!-- O-->
			<DO name="SupWh"	type="BCR"/>	<!-- O-->
			<DO name="SupVArh"	type="BCR"/>	<!-- O-->
			<DO name="DmdWh"	type="BCR"/>	<!-- O-->
			<DO name="DmdVArh"	type="BCR"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Non phase related Measurement Name: MMXN-->
		<LNodeType id="MMXN" lnClass="MMXN">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="Amp"		type="MV"/>	<!-- O-->
			<DO name="Vol"		type="MV"/>	<!-- O-->
			<DO name="Watt"		type="MV"/>	<!-- O-->
			<DO name="VolAmpr"	type="MV"/>	<!-- O-->
			<DO name="VolAmp"	type="MV"/>	<!-- O-->
			<DO name="PwrFact"	type="MV"/>	<!-- O-->
			<DO name="Imp"		type="CMV"/>	<!-- O-->
			<DO name="Hz"		type="MV"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Measurement Name: MMXU-->
		<LNodeType id="MMXU" lnClass="MMXU">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="TotW"		type="MV"/>	<!-- O-->
			<DO name="TotVAr"	type="MV"/>	<!-- O-->
			<DO name="TotVA"	type="MV"/>	<!-- O-->
			<DO name="TotPF"	type="MV"/>	<!-- O-->
			<DO name="Hz"		type="MV"/>	<!-- O-->
			<DO name="PPV"		type="DEL"/>	<!-- O-->
			<DO name="PNV"		type="WYE"/>	<!-- O-->
			<DO name="PhV"		type="WYE"/>	<!-- O-->
			<DO name="A"		type="WYE"/>	<!-- O-->
			<DO name="W"		type="WYE"/>	<!-- O-->
			<DO name="VAr"		type="WYE"/>	<!-- O-->
			<DO name="VA"		type="WYE"/>	<!-- O-->
			<DO name="PF"		type="WYE"/>	<!-- O-->
			<DO name="Z"		type="WYE"/>	<!-- O-->
			<DO name="AvAPhs"	type="MV"/>	<!-- O-->
			<DO name="AvPPVPhs"	type="MV"/>	<!-- O-->
			<DO name="AvPhVPhs"	type="MV"/>	<!-- O-->
			<DO name="AvWPhs"	type="MV"/>	<!-- O-->
			<DO name="AvVAPhs"	type="MV"/>	<!-- O-->
			<DO name="AvVArPhs"	type="MV"/>	<!-- O-->
			<DO name="AvPFPhs"	type="MV"/>	<!-- O-->
			<DO name="AvZPhs"	type="MV"/>	<!-- O-->
			<DO name="MaxAPhs"	type="MV"/>	<!-- O-->
			<DO name="MaxPPVPhs"	type="MV"/>	<!-- O-->
			<DO name="MaxPhVPhs"	type="MV"/>	<!-- O-->
			<DO name="MaxWPhs"	type="MV"/>	<!-- O-->
			<DO name="MaxVAPhs"	type="MV"/>	<!-- O-->
			<DO name="MaxVArPhs"	type="MV"/>	<!-- O-->
			<DO name="MaxPFPhs"	type="MV"/>	<!-- O-->
			<DO name="MaxZPhs"	type="MV"/>	<!-- O-->
			<DO name="MinAPhs"	type="MV"/>	<!-- O-->
			<DO name="MinPPVPhs"	type="MV"/>	<!-- O-->
			<DO name="MinPhVPhs"	type="MV"/>	<!-- O-->
			<DO name="MinWPhs"	type="MV"/>	<!-- O-->
			<DO name="MinVAPhs"	type="MV"/>	<!-- O-->
			<DO name="MinVArPhs"	type="MV"/>	<!-- O-->
			<DO name="MinPFPhs"	type="MV"/>	<!-- O-->
			<DO name="MinZPhs"	type="MV"/>	<!-- O-->
			<DO name="ClcTotVA"	type="ENG"/>	<!-- O-->
			<DO name="PFSign"	type="ENG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Sequence and imbalance Name: MSQI-->
		<LNodeType id="MSQI" lnClass="MSQI">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="SeqA"		type="SEQ"/>	<!-- C-->
			<DO name="SeqV"		type="SEQ"/>	<!-- C-->
			<DO name="DQ0Seq"	type="SEQ"/>	<!-- O-->
			<DO name="ImbA"		type="WYE"/>	<!-- O-->
			<DO name="ImbNgA"	type="MV"/>	<!-- O-->
			<DO name="ImbNgV"	type="MV"/>	<!-- O-->
			<DO name="ImbPPV"	type="DEL"/>	<!-- O-->
			<DO name="ImbV"		type="WYE"/>	<!-- O-->
			<DO name="ImbZroA"	type="MV"/>	<!-- O-->
			<DO name="ImbZroV"	type="MV"/>	<!-- O-->
			<DO name="MaxImbA"	type="MV"/>	<!-- O-->
			<DO name="MaxImbPPV"	type="MV"/>	<!-- O-->
			<DO name="MaxImbV"	type="MV"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Monitoring and diagnostics for arcs Name: SARC-->
		<LNodeType id="SARC" lnClass="SARC">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="FADet"	type="SPS"/>	<!-- M-->
			<DO name="SwArcDet"	type="SPS"/>	<!-- O-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="FACntRs"	type="INC"/>	<!-- M-->
			<DO name="ArcCntRs"	type="INC"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Insulation medium supervision (gas) Name: SIMG-->
		<LNodeType id="SIMG" lnClass="SIMG">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="InsAlm"	type="SPS"/>	<!-- M-->
			<DO name="InsBlk"	type="SPS"/>	<!-- O-->
			<DO name="InsTr"	type="SPS"/>	<!-- O-->
			<DO name="PresAlm"	type="SPS"/>	<!-- C-->
			<DO name="DenAlm"	type="SPS"/>	<!-- C-->
			<DO name="TmpAlm"	type="SPS"/>	<!-- C-->
			<DO name="InsLevMax"	type="SPS"/>	<!-- O-->
			<DO name="InsLevMin"	type="SPS"/>	<!-- O-->
			<DO name="Pres"		type="MV"/>	<!-- O-->
			<DO name="Den"		type="MV"/>	<!-- O-->
			<DO name="Tmp"		type="MV"/>	<!-- O-->
			<DO name="InsBlkTmh"	type="INS"/>	<!-- O-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Insulation medium supervision (liquid) Name: SIML-->
		<LNodeType id="SIML" lnClass="SIML">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="InsAlm"	type="SPS"/>	<!-- M-->
			<DO name="InsBlk"	type="SPS"/>	<!-- O-->
			<DO name="InsTr"	type="SPS"/>	<!-- O-->
			<DO name="TmpAlm"	type="SPS"/>	<!-- C-->
			<DO name="GasInsAlm"	type="SPS"/>	<!-- O-->
			<DO name="GasInsTr"	type="SPS"/>	<!-- O-->
			<DO name="GasFlwTr"	type="SPS"/>	<!-- O-->
			<DO name="InsLevMax"	type="SPS"/>	<!-- O-->
			<DO name="InsLevMin"	type="SPS"/>	<!-- O-->
			<DO name="H2Alm"	type="SPS"/>	<!-- O-->
			<DO name="H2Wrn"	type="SPS"/>	<!-- O-->
			<DO name="MstAlm"	type="SPS"/>	<!-- O-->
			<DO name="MstWrn"	type="SPS"/>	<!-- O-->
			<DO name="Tmp"		type="MV"/>	<!-- O-->
			<DO name="Lev"		type="MV"/>	<!-- O-->
			<DO name="Pres"		type="MV"/>	<!-- O-->
			<DO name="H2O"		type="MV"/>	<!-- O-->
			<DO name="H2OPap"	type="MV"/>	<!-- O-->
			<DO name="H2OAir"	type="MV"/>	<!-- O-->
			<DO name="H2OTmp"	type="MV"/>	<!-- O-->
			<DO name="H2ppm"	type="MV"/>	<!-- O-->
			<DO name="N2ppm"	type="MV"/>	<!-- O-->
			<DO name="COppm"	type="MV"/>	<!-- O-->
			<DO name="CO2ppm"	type="MV"/>	<!-- O-->
			<DO name="CH4ppm"	type="MV"/>	<!-- O-->
			<DO name="C2H2ppm"	type="MV"/>	<!-- O-->
			<DO name="C2H4ppm"	type="MV"/>	<!-- O-->
			<DO name="C2H6ppm"	type="MV"/>	<!-- O-->
			<DO name="O2ppm"	type="MV"/>	<!-- O-->
			<DO name="CmbuGas"	type="MV"/>	<!-- O-->
			<DO name="FltGas"	type="MV"/>	<!-- O-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Monitoring and diagnostics for partial discharges Name: SPDC-->
		<LNodeType id="SPDC" lnClass="SPDC">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EEHealth"	type="INS"/>	<!-- O-->
			<DO name="EEName"	type="DPL"/>	<!-- O-->
			<DO name="PaDschAlm"	type="SPS"/>	<!-- C-->
			<DO name="OpCnt"	type="INS"/>	<!-- M-->
			<DO name="AcuPaDsch"	type="MV"/>	<!-- C-->
			<DO name="AppPaDsch"	type="MV"/>	<!-- C-->
			<DO name="NQS"		type="MV"/>	<!-- O-->
			<DO name="UhfPaDsch"	type="MV"/>	<!-- O-->
			<DO name="OpCntRs"	type="INC"/>	<!-- O-->
			<DO name="CtrHz"	type="ASG"/>	<!-- O-->
			<DO name="BndWid"	type="ASG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Circuit breaker Name: XCBR-->
		<LNodeType id="XCBR" lnClass="XCBR">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EEName"	type="DPL"/>	<!-- O-->
			<DO name="EEHealth"	type="ENS"/>	<!-- O-->
			<DO name="LocKey"	type="SPS"/>	<!-- O-->
			<DO name="Loc"		type="SPS"/>	<!-- M-->
			<DO name="OpCnt"	type="INS"/>	<!-- M-->
			<DO name="CBOpCap"	type="ENS"/>	<!-- O-->
			<DO name="POWCap"	type="ENS"/>	<!-- O-->
			<DO name="MaxOpCap"	type="INS"/>	<!-- O-->
			<DO name="Dsc"		type="SPS"/>	<!-- O-->
			<DO name="LocSta"	type="SPC"/>	<!-- O-->
			<DO name="Pos"		type="DPC"/>	<!-- M-->
			<DO name="BlkOpn"	type="SPC"/>	<!-- M-->
			<DO name="BlkCls"	type="SPC"/>	<!-- M-->
			<DO name="ChaMotEna"	type="SPC"/>	<!-- O-->
			<DO name="CBTmms"	type="ING"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Circuit switch Name: XSWI-->
		<LNodeType id="XSWI" lnClass="XSWI">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EEName"	type="DPL"/>	<!-- O-->
			<DO name="EEHealth"	type="ENS"/>	<!-- O-->
			<DO name="LocKey"	type="SPS"/>	<!-- O-->
			<DO name="Loc"		type="SPS"/>	<!-- M-->
			<DO name="OpCnt"	type="INS"/>	<!-- M-->
			<DO name="SwTyp"	type="ENS"/>	<!-- M-->
			<DO name="SwOpCap"	type="ENS"/>	<!-- O-->
			<DO name="MaxOpCap"	type="INS"/>	<!-- O-->
			<DO name="Dsc"		type="SPS"/>	<!-- O-->
			<DO name="LocSta"	type="SPC"/>	<!-- O-->
			<DO name="Pos"		type="DPC"/>	<!-- M-->
			<DO name="BlkOpn"	type="SPC"/>	<!-- M-->
			<DO name="BlkCls"	type="SPC"/>	<!-- M-->
			<DO name="ChaMotEna"	type="SPC"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Current transformer Name: TCTR-->
		<LNodeType id="TCTR" lnClass="TCTR">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EEName"	type="DPL"/>	<!-- O-->
			<DO name="EEHealth"	type="ENS"/>	<!-- O-->
			<DO name="OpTmh"	type="INS"/>	<!-- O-->
			<DO name="AmpSv"	type="SAV"/>	<!-- C1-->
			<DO name="ARtg"		type="ASG"/>	<!-- O-->
			<DO name="HzRtg"	type="ASG"/>	<!-- O-->
			<DO name="Rat"		type="ASG"/>	<!-- O-->
			<DO name="Cor"		type="ASG"/>	<!-- C2-->
			<DO name="AngCor"	type="ASG"/>	<!-- C2-->
			<DO name="CorCrv"	type="CSG"/>	<!-- C2-->
		</LNodeType>
		<!-- LN: Voltage transformer Name: TVTR-->
		<LNodeType id="TVTR" lnClass="TVTR">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EEName"	type="DPL"/>	<!-- O-->
			<DO name="EEHealth"	type="ENS"/>	<!-- O-->
			<DO name="OpTmh"	type="INS"/>	<!-- O-->
			<DO name="FuFail"	type="SPS"/>	<!-- O-->
			<DO name="VolSv"	type="SAV"/>	<!-- M-->
			<DO name="VRtg"		type="ASG"/>	<!-- O-->
			<DO name="HzRtg"	type="ASG"/>	<!-- O-->
			<DO name="Rat"		type="ASG"/>	<!-- O-->
			<DO name="Cor"		type="ASG"/>	<!-- O-->
			<DO name="AngCor"	type="ASG"/>	<!-- C2-->
			<DO name="CorCrv"	type="CSG"/>	<!-- C2-->
		</LNodeType>
		<!-- LN: Earth fault neutralizer (Petersen coil) Name: YEFN-->
		<LNodeType id="YEFN" lnClass="YEFN">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EEName"	type="DPL"/>	<!-- O-->
			<DO name="EEHealth"	type="ENS"/>	<!-- O-->
			<DO name="LocKey"	type="SPS"/>	<!-- O-->
			<DO name="Loc"		type="SPS"/>	<!-- M-->
			<DO name="OpTmh"	type="INS"/>	<!-- O-->
			<DO name="EndPosR"	type="SPS"/>	<!-- O-->
			<DO name="EndPosL"	type="SPS"/>	<!-- O-->
			<DO name="PotAlm"	type="SPS"/>	<!-- O-->
			<DO name="MotAlm"	type="SPS"/>	<!-- O-->
			<DO name="ColPosA"	type="MV"/>	<!-- C1-->
			<DO name="ColAEFN"	type="CMV"/>	<!-- O-->
			<DO name="NeutVol"	type="CMV"/>	<!-- O-->
			<DO name="LocSta"	type="SPC"/>	<!-- O-->
			<DO name="ColTapPos"	type="ISC"/>	<!-- C2-->
			<DO name="ColPos"	type="APC"/>	<!-- C2-->
			<DO name="ColChg"	type="BAC"/>	<!-- C2-->
		</LNodeType>
		<!-- LN: Tap changer Name: YLTC-->
		<LNodeType id="YLTC" lnClass="YLTC">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EEName"	type="DPL"/>	<!-- O-->
			<DO name="EEHealth"	type="ENS"/>	<!-- O-->
			<DO name="OpCnt"	type="INS"/>	<!-- O-->
			<DO name="EndPosR"	type="SPS"/>	<!-- M-->
			<DO name="EndPosL"	type="SPS"/>	<!-- M-->
			<DO name="OoStep"	type="SPS"/>	<!-- O-->
			<DO name="LTCCycAlm"	type="SPS"/>	<!-- O-->
			<DO name="BlkLoVisc"	type="SPS"/>	<!-- O-->
			<DO name="TapPos"	type="ISC"/>	<!-- C-->
			<DO name="TapChg"	type="BSC"/>	<!-- C-->
		</LNodeType>
		<!-- LN: Power shunt Name: YPSH-->
		<LNodeType id="YPSH" lnClass="YPSH">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EEName"	type="DPL"/>	<!-- O-->
			<DO name="EEHealth"	type="ENS"/>	<!-- O-->
			<DO name="OpTmh"	type="INS"/>	<!-- O-->
			<DO name="ShOpCap"	type="ENS"/>	<!-- M-->
			<DO name="MaxOpCap"	type="INS"/>	<!-- O-->
			<DO name="Pos"		type="DPC"/>	<!-- M-->
			<DO name="BlkOpn"	type="SPC"/>	<!-- M-->
			<DO name="BlkCls"	type="SPC"/>	<!-- M-->
			<DO name="ChaMotEna"	type="SPC"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Power transformer Name: YPTR-->
		<LNodeType id="YPTR" lnClass="YPTR">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EEName"	type="DPL"/>	<!-- O-->
			<DO name="EEHealth"	type="ENS"/>	<!-- O-->
			<DO name="OpTmh"	type="INS"/>	<!-- O-->
			<DO name="OpNoLod"	type="SPS"/>	<!-- O-->
			<DO name="OpOvA"	type="SPS"/>	<!-- O-->
			<DO name="OpOvV"	type="SPS"/>	<!-- O-->
			<DO name="OpUnV"	type="SPS"/>	<!-- O-->
			<DO name="LodFact"	type="MV"/>	<!-- O-->
			<DO name="MaxPwr"	type="MV"/>	<!-- O-->
			<DO name="OvlTm"	type="MV"/>	<!-- O-->
			<DO name="OvlTEmg"	type="MV"/>	<!-- O-->
			<DO name="HiVRtg"	type="ASG"/>	<!-- O-->
			<DO name="LoVRtg"	type="ASG"/>	<!-- O-->
			<DO name="PwrRtg"	type="ASG"/>	<!-- O-->
			<DO name="MaxPwrSpt"	type="ASG"/>	<!-- O-->
			<DO name="OvlTmSpt"	type="ASG"/>	<!-- O-->
			<DO name="OvlTEmgSpt"	type="ASG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Auxiliary network Name: ZAXN-->
		<LNodeType id="ZAXN" lnClass="ZAXN">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EEName"	type="DPL"/>	<!-- O-->
			<DO name="EEHealth"	type="ENS"/>	<!-- O-->
			<DO name="OpTmh"	type="INS"/>	<!-- O-->
			<DO name="Vol"		type="MV"/>	<!-- O-->
			<DO name="Amp"		type="MV"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Battery Name: ZBAT-->
		<LNodeType id="ZBAT" lnClass="ZBAT">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EEName"	type="DPL"/>	<!-- O-->
			<DO name="EEHealth"	type="ENS"/>	<!-- O-->
			<DO name="OpTmh"	type="INS"/>	<!-- O-->
			<DO name="TestRsl"	type="SPS"/>	<!-- O-->
			<DO name="BatHi"	type="SPS"/>	<!-- O-->
			<DO name="BatLo"	type="SPS"/>	<!-- O-->
			<DO name="Vol"		type="MV"/>	<!-- O-->
			<DO name="VolChgRte"	type="MV"/>	<!-- O-->
			<DO name="Amp"		type="MV"/>	<!-- O-->
			<DO name="BatTest"	type="SPC"/>	<!-- O-->
			<DO name="LoBatVal"	type="ASG"/>	<!-- O-->
			<DO name="HiBatVal"	type="ASG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Bushing Name: ZBSH-->
		<LNodeType id="ZBSH" lnClass="ZBSH">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EEName"	type="DPL"/>	<!-- O-->
			<DO name="EEHealth"	type="ENS"/>	<!-- O-->
			<DO name="OpTmh"	type="INS"/>	<!-- O-->
			<DO name="React"	type="MV"/>	<!-- M-->
			<DO name="AbsReact"	type="MV"/>	<!-- O-->
			<DO name="LosFact"	type="MV"/>	<!-- O-->
			<DO name="Vol"		type="MV"/>	<!-- O-->
			<DO name="DisplA"	type="MV"/>	<!-- O-->
			<DO name="LeakA"	type="MV"/>	<!-- O-->
			<DO name="RefReact"	type="ASG"/>	<!-- O-->
			<DO name="RefPF"	type="ASG"/>	<!-- O-->
			<DO name="RefV"		type="ASG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Power cable Name: ZCAB-->
		<LNodeType id="ZCAB" lnClass="ZCAB">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EEName"	type="DPL"/>	<!-- O-->
			<DO name="EEHealth"	type="ENS"/>	<!-- O-->
			<DO name="OpTmh"	type="INS"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Capacitor bank Name: ZCAP-->
		<LNodeType id="ZCAP" lnClass="ZCAP">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EEName"	type="DPL"/>	<!-- O-->
			<DO name="EEHealth"	type="ENS"/>	<!-- O-->
			<DO name="OpTmh"	type="INS"/>	<!-- O-->
			<DO name="DschBlk"	type="SPS"/>	<!-- M-->
			<DO name="CapDS"	type="SPC"/>	<!-- M-->
		</LNodeType>
		<!-- LN: Converter Name: ZCON-->
		<LNodeType id="ZCON" lnClass="ZCON">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EEName"	type="DPL"/>	<!-- O-->
			<DO name="EEHealth"	type="ENS"/>	<!-- O-->
			<DO name="OpTmh"	type="INS"/>	<!-- O-->
			<DO name="VArRtg"	type="ASG"/>	<!-- O-->
			<DO name="VRtg"		type="ASG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Generator Name: ZGEN-->
		<LNodeType id="ZGEN" lnClass="ZGEN">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EEName"	type="DPL"/>	<!-- O-->
			<DO name="EEHealth"	type="ENS"/>	<!-- O-->
			<DO name="OpTmh"	type="INS"/>	<!-- O-->
			<DO name="GnSt"		type="ENS"/>	<!-- M-->
			<DO name="OpNoLod"	type="SPS"/>	<!-- M-->
			<DO name="RotDir"	type="ENS"/>	<!-- M-->
			<DO name="OpUnExt"	type="SPS"/>	<!-- M-->
			<DO name="OpOvExt"	type="SPS"/>	<!-- M-->
			<DO name="LosOil"	type="SPS"/>	<!-- O-->
			<DO name="LosVac"	type="SPS"/>	<!-- O-->
			<DO name="PresAlm"	type="SPS"/>	<!-- O-->
			<DO name="GnCtl"	type="DPC"/>	<!-- M-->
			<DO name="DExt"		type="SPC"/>	<!-- M-->
			<DO name="AuxSco"	type="SPC"/>	<!-- O-->
			<DO name="ReactPwrR"	type="SPC"/>	<!-- O-->
			<DO name="ReactPwrL"	type="SPC"/>	<!-- O-->
			<DO name="GnSpd"	type="MV"/>	<!-- O-->
			<DO name="DmdPwr"	type="ASG"/>	<!-- O-->
			<DO name="PwrRtg"	type="ASG"/>	<!-- O-->
			<DO name="VRtg"		type="ASG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Gas insulated line Name: ZGIL-->
		<LNodeType id="ZGIL" lnClass="ZGIL">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EEName"	type="DPL"/>	<!-- O-->
			<DO name="EEHealth"	type="ENS"/>	<!-- O-->
			<DO name="OpTmh"	type="INS"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Power overhead line Name: ZLIN-->
		<LNodeType id="ZLIN" lnClass="ZLIN">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EEName"	type="DPL"/>	<!-- O-->
			<DO name="EEHealth"	type="ENS"/>	<!-- O-->
			<DO name="OpTmh"	type="INS"/>	<!-- O-->
			<DO name="LinLenkm"	type="ASG"/>	<!-- O-->
			<DO name="RPs"		type="ASG"/>	<!-- O-->
			<DO name="XPs"		type="ASG"/>	<!-- O-->
			<DO name="RZer"		type="ASG"/>	<!-- O-->
			<DO name="XZer"		type="ASG"/>	<!-- O-->
			<DO name="ZPsMag"	type="ASG"/>	<!-- O-->
			<DO name="ZPsAng"	type="ASG"/>	<!-- O-->
			<DO name="ZZerMag"	type="ASG"/>	<!-- O-->
			<DO name="ZZerAng"	type="ASG"/>	<!-- O-->
			<DO name="RmZer"	type="ASG"/>	<!-- O-->
			<DO name="XmZer"	type="ASG"/>	<!-- O-->
			<DO name="ZmZerMag"	type="ASG"/>	<!-- O-->
			<DO name="ZmZerAng"	type="ASG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Motor Name: ZMOT-->
		<LNodeType id="ZMOT" lnClass="ZMOT">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EEName"	type="DPL"/>	<!-- O-->
			<DO name="EEHealth"	type="ENS"/>	<!-- O-->
			<DO name="OpTmh"	type="INS"/>	<!-- O-->
			<DO name="LosOil"	type="SPS"/>	<!-- O-->
			<DO name="LosVac"	type="SPS"/>	<!-- O-->
			<DO name="PresAlm"	type="SPS"/>	<!-- O-->
			<DO name="DExt"		type="SPC"/>	<!-- M-->
		</LNodeType>
		<!-- LN: Reactor Name: ZREA-->
		<LNodeType id="ZREA" lnClass="ZREA">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EEName"	type="DPL"/>	<!-- O-->
			<DO name="EEHealth"	type="ENS"/>	<!-- O-->
			<DO name="OpTmh"	type="INS"/>	<!-- O-->
			<DO name="VRtg"		type="ASG"/>	<!-- O-->
			<DO name="ARtg"		type="ASG"/>	<!-- O-->
			<DO name="VARtg"	type="ASG"/>	<!-- O-->
			<DO name="VArRtg"	type="ASG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Resistor Name: ZRES-->
		<LNodeType id="ZRES" lnClass="ZRES">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EEName"	type="DPL"/>	<!-- O-->
			<DO name="EEHealth"	type="ENS"/>	<!-- O-->
			<DO name="OpTmh"	type="INS"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Rotating reactive component Name: ZRRC-->
		<LNodeType id="ZRRC" lnClass="ZRRC">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EEName"	type="DPL"/>	<!-- O-->
			<DO name="EEHealth"	type="ENS"/>	<!-- O-->
			<DO name="OpTmh"	type="INS"/>	<!-- O-->
			<DO name="LocKey"	type="SPS"/>	<!-- O-->
			<DO name="LocSta"	type="SPS"/>	<!-- O-->
			<DO name="Loc"		type="SPS"/>	<!-- O-->
			<DO name="GnSt"		type="ENS"/>	<!-- M-->
			<DO name="GnCtl"	type="DPC"/>	<!-- M-->
			<DO name="GnSpd"	type="MV"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Surge arrestor Name: ZSAR-->
		<LNodeType id="ZSAR" lnClass="ZSAR">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EEName"	type="DPL"/>	<!-- O-->
			<DO name="EEHealth"	type="ENS"/>	<!-- O-->
			<DO name="OpCnt"	type="INS"/>	<!-- O-->
			<DO name="OpSar"	type="SPS"/>	<!-- M-->
		</LNodeType>
		<!-- LN: Thyristor controlled frequency converter Name: ZTCF-->
		<LNodeType id="ZTCF" lnClass="ZTCF">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EEName"	type="DPL"/>	<!-- O-->
			<DO name="EEHealth"	type="ENS"/>	<!-- O-->
			<DO name="OpTmh"	type="INS"/>	<!-- O-->
			<DO name="PwrHz"	type="ASG"/>	<!-- O-->
		</LNodeType>
		<!-- LN: Thyristor controlled reactive component Name: ZTCR -->
		<LNodeType id="ZTCR" lnClass="ZTCR">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="EEName"	type="DPL"/>	<!-- O-->
			<DO name="EEHealth"	type="ENS"/>	<!-- O-->
			<DO name="OpTmh"	type="INS"/>	<!-- O-->
		</LNodeType>

		<!-- NEW IN EDITION 2 -->
		<LNodeType id="LGOS" lnClass="LGOS">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="NdsCom"	type="SPS" />
			<DO name="St"		type="SPS" />
			<DO name="SimSt"	type="SPS" />
			<DO name="LastStNum"	type="INS" />
			<DO name="ConfRevNum"	type="INS" />
			<DO name="GoCBRef"	type="ORG" />
		</LNodeType>

		<!-- NEW IN EDITION 2 -->
		<LNodeType id="LSVS" lnClass="LSVS">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="NdsCom"	type="SPS" />
			<DO name="St"		type="SPS" />
			<DO name="SimSt"	type="SPS" />
			<DO name="LastStNum"	type="INS" />
			<DO name="ConfRevNum"	type="INS" />
			<DO name="SvCBRef"	type="ORG" />
		</LNodeType>

		<!-- NEW IN EDITION 2 -->
		<LNodeType id="LTRK" lnClass="LTRK">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<!-- NOTE: Each Control tracking DO needs CTS definition with different "ctlVal" type -->
			<DO name="SpcTrk"	type="CTS_SPC_DPC" />
			<DO name="DpcTrk"	type="CTS_SPC_DPC" />
			<DO name="IncTrk"	type="CTS_INC" />
			<DO name="EncTrk1"	type="CTS_ENC_Mod" />
			<DO name="EncTrk2"	type="CTS_ENC_OpModSyn" />
			<DO name="ApcFTrk"	type="CTS_APCF" />
			<DO name="ApcIntTrk"	type="CTS_APCINT" />
			<DO name="BscTrk"	type="CTS_BSC_BAC" />
			<DO name="IscTrk"	type="CTS_ISC" />
			<DO name="BacTrk"	type="CTS_BSC_BAC" />
			<DO name="GenTrk"	type="CST" />
			<DO name="UrcbTrk"	type="UTS" />
			<DO name="BrcbTrk"	type="BTS" />
			<DO name="LocbTrk"	type="LTS" />
			<DO name="GocbTrk"	type="GTS" />
			<DO name="MsvcbTrk"	type="MTS" />
			<DO name="UsvcbTrk"	type="NTS" />
			<DO name="SgcbTrk"	type="STS" />
		</LNodeType>

		<!-- NEW IN EDITION 2 (uses new HST) -->
		<LNodeType id="QITR" lnClass="QITR">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="VarStr"	type="SPS" />
			<DO name="VarEnd"	type="SPS" />
			<DO name="ATrsTm"	type="MV" />
			<DO name="MaxATrs"	type="MV" />
			<DO name="EvtCnt"	type="HST" />
			<DO name="OpCntRs"	type="INC" />
			<DO name="StrVal"	type="ASG" />
		</LNodeType>

		<!-- NEW IN EDITION 2 (uses new VSS & VSG) -->
		<LNodeType id="LTMS" lnClass="LTMS">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="TmAcc"	type="INS" />
			<DO name="TmSrc"	type="VSS" />
			<DO name="TmSyn"	type="ENS" />
			<DO name="TmChSt1"	type="SPS" />
			<DO name="TmSrcSet1"	type="VSG" />
		</LNodeType>

		<!-- NEW IN EDITION 2 (uses new TSG) -->
		<LNodeType id="LTIM" lnClass="LTIM">
			<DO name="Beh"		type="ENS"/>	<!-- M CommonLogicalNode-->
			<DO name="Mod"		type="ENC"/>	<!-- C1 CommonLogicalNode-->
			<DO name="TmDT"		type="SPS" />
			<DO name="TmOfsTmm"	type="ING" />
			<DO name="TmUseDT"	type="SPG" />
			<DO name="TmChgDayTm"	type="TSG" />
			<DO name="TmChgStdTm"	type="TSG" />
			<DO name="StrWeekDay"	type="ENG" />
		</LNodeType>

		<!-- NEW IN EDITION 2. Defined in 61850-7-2 -->
		<DOType id="CST" cdc="CST">
			<DA name="objRef"	fc="SR"	bType="ObjRef"		dupd="true"/>		<!-- M -->
			<DA name="serviceType"	fc="SR" bType="Enum" type="ServiceTypeEnumKind"/>		<!-- M -->
			<DA name="errorCode"	fc="SR" bType="INT8U"/>		<!-- M DEBUG: 7-2 says type is ServiceError -->
			<DA name="originatorID"	fc="SR" bType="Octet64"/>				<!-- O -->
			<DA name="t" 		fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->
		</DOType>

		<!-- NEW IN EDITION 2. Defined in 61850-7-2 -->
		<DOType id="BTS" cdc="BTS">
			<DA name="objRef"	fc="SR"	bType="ObjRef"		dupd="true"/>		<!-- M -->
			<DA name="serviceType"	fc="SR" bType="Enum" type="ServiceTypeEnumKind"/>		<!-- M -->
			<DA name="errorCode"	fc="SR" bType="INT8U"/>		<!-- M DEBUG: 7-2 says type is ServiceError -->
			<DA name="originatorID"	fc="SR" bType="Octet64"/>				<!-- O -->
			<DA name="t" 		fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->

			<DA name="rptID"	fc="SR" bType="VisString129"/>				<!-- M -->
			<DA name="rptEna"	fc="SR" bType="BOOLEAN"/>				<!-- M -->
			<DA name="datSet"	fc="SR" bType="ObjRef"/>				<!-- M -->
			<DA name="confRev"	fc="SR" bType="INT32U"/>				<!-- M -->
			<DA name="optFlds"	fc="SR" bType="OptFlds"/>				<!-- M -->
			<DA name="bufTm"	fc="SR" bType="INT32U"/>				<!-- M -->
			<DA name="sqNum"	fc="SR" bType="INT16U"/>				<!-- M -->
			<DA name="trgOps"	fc="SR" bType="TrgOps"/>				<!-- M -->
			<DA name="intgPd"	fc="SR" bType="INT32U"/>				<!-- M -->
			<DA name="gi"		fc="SR" bType="BOOLEAN"/>				<!-- M -->
			<DA name="purgeBuf"	fc="SR" bType="BOOLEAN"/>				<!-- M -->
			<DA name="entryID"	fc="SR" bType="EntryID"/>				<!-- M -->
			<DA name="timeOfEntry"	fc="SR" bType="EntryTime"/>				<!-- M -->
			<DA name="resvTms"	fc="SR" bType="INT16"/>				<!-- M -->
		</DOType>

		<!-- NEW IN EDITION 2. Defined in 61850-7-2 -->
		<DOType id="UTS" cdc="UTS">
			<DA name="objRef"	fc="SR"	bType="ObjRef"		dupd="true"/>		<!-- M -->
			<DA name="serviceType"	fc="SR" bType="Enum" type="ServiceTypeEnumKind"/>		<!-- M -->
			<DA name="errorCode"	fc="SR" bType="INT8U"/>		<!-- M DEBUG: 7-2 says type is ServiceError -->
			<DA name="originatorID"	fc="SR" bType="Octet64"/>				<!-- O -->
			<DA name="t" 		fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->

			<DA name="rptID"	fc="SR" bType="VisString129"/>				<!-- M -->
			<DA name="rptEna"	fc="SR" bType="BOOLEAN"/>				<!-- M -->
			<DA name="resv"		fc="SR" bType="BOOLEAN"/>				<!-- M -->
			<DA name="datSet"	fc="SR" bType="ObjRef"/>				<!-- M -->
			<DA name="confRev"	fc="SR" bType="INT32U"/>				<!-- M -->
			<DA name="optFlds"	fc="SR" bType="OptFlds"/>				<!-- M -->
			<DA name="bufTm"	fc="SR" bType="INT32U"/>				<!-- M -->
			<DA name="sqNum"	fc="SR" bType="INT16U"/>				<!-- M -->
			<DA name="trgOps"	fc="SR" bType="TrgOps"/>				<!-- M -->
			<DA name="intgPd"	fc="SR" bType="INT32U"/>				<!-- M -->
			<DA name="gi"		fc="SR" bType="BOOLEAN"/>				<!-- M -->
		</DOType>

		<!-- NEW IN EDITION 2. Defined in 61850-7-2 -->
		<DOType id="LTS" cdc="LTS">
			<DA name="objRef"	fc="SR"	bType="ObjRef"		dupd="true"/>		<!-- M -->
			<DA name="serviceType"	fc="SR" bType="Enum" type="ServiceTypeEnumKind"/>		<!-- M -->
			<DA name="errorCode"	fc="SR" bType="INT8U"/>		<!-- M DEBUG: 7-2 says type is ServiceError -->
			<DA name="originatorID"	fc="SR" bType="Octet64"/>				<!-- O -->
			<DA name="t" 		fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->
			<DA name="logEna"	fc="SR" bType="BOOLEAN"/>				<!-- M -->
			<DA name="datSet"	fc="SR" bType="ObjRef"/>				<!-- M -->
			<!-- Tissue 1622 says to remove "optFlds" from LTS -->
			<!-- "bufTm" is listed in 61850-7-2 but is NOT mapped in 61850-8-1 so it was removed here.-->
			<!-- Tissue 1630 says to add the next 4 attributes to LTS -->
			<DA name="oldEntrTm"	fc="SR" bType="EntryTime"/>				<!-- M -->
			<DA name="newEntrTm"	fc="SR" bType="EntryTime"/>				<!-- M -->
			<DA name="oldEnt"	fc="SR" bType="EntryID"/>				<!-- M -->
			<DA name="newEnt"	fc="SR" bType="EntryID"/>				<!-- M -->
			<DA name="trgOps"	fc="SR" bType="TrgOps"/>				<!-- M -->
			<DA name="intgPd"	fc="SR" bType="INT32U"/>				<!-- M -->
			<DA name="logRef"	fc="SR" bType="ObjRef"/>				<!-- M -->
		</DOType>

		<!-- NEW IN EDITION 2. Defined in 61850-7-2 -->
		<DOType id="OTS" cdc="OTS">
			<DA name="objRef"	fc="SR"	bType="ObjRef"		dupd="true"/>		<!-- M -->
			<DA name="serviceType"	fc="SR" bType="Enum" type="ServiceTypeEnumKind"/>		<!-- M -->
			<DA name="errorCode"	fc="SR" bType="INT8U"/>		<!-- M DEBUG: 7-2 says type is ServiceError -->
			<DA name="originatorID"	fc="SR" bType="Octet64"/>				<!-- O -->
			<DA name="t" 		fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->
			<DA name="oldEntrTm"	fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="newEntrTm"	fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="oldEntr"	fc="SR" bType="INT32U"/>				<!-- M -->
			<DA name="newEntr"	fc="SR" bType="INT32U"/>				<!-- M -->
			<DA name="rangeStrTm"	fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="rangeStpTm"	fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="entry"	fc="SR" bType="EntryID"/>				<!-- M -->
		</DOType>

		<!-- NEW IN EDITION 2. Defined in 61850-7-2 -->
		<DOType id="GTS" cdc="GTS">
			<DA name="objRef"	fc="SR"	bType="ObjRef"		dupd="true"/>		<!-- M -->
			<DA name="serviceType"	fc="SR" bType="Enum" type="ServiceTypeEnumKind"/>		<!-- M -->
			<DA name="errorCode"	fc="SR" bType="INT8U"/>		<!-- M DEBUG: 7-2 says type is ServiceError -->
			<DA name="originatorID"	fc="SR" bType="Octet64"/>				<!-- O -->
			<DA name="t" 		fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->

			<DA name="goEna"	fc="SR" bType="BOOLEAN"/>				<!-- M -->
			<DA name="goID"		fc="SR" bType="VisString129"/>				<!-- M -->
			<DA name="datSet"	fc="SR" bType="ObjRef"/>				<!-- M -->
			<DA name="confRev"	fc="SR" bType="INT32U"/>				<!-- M -->
			<DA name="ndsCom"	fc="SR" bType="BOOLEAN"/>				<!-- M -->
			<DA name="dstAddress"	fc="SR" bType="PhyComAddr"/>				<!-- M -->
		</DOType>

		<!-- NEW IN EDITION 2. Defined in 61850-7-2 -->
		<DOType id="MTS" cdc="MTS">
			<DA name="objRef"	fc="SR"	bType="ObjRef"		dupd="true"/>		<!-- M -->
			<DA name="serviceType"	fc="SR" bType="Enum" type="ServiceTypeEnumKind"/>		<!-- M -->
			<DA name="errorCode"	fc="SR" bType="INT8U"/>		<!-- M DEBUG: 7-2 says type is ServiceError -->
			<DA name="originatorID"	fc="SR" bType="Octet64"/>				<!-- O -->
			<DA name="t" 		fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->

			<DA name="svEna"	fc="SR" bType="BOOLEAN"/>				<!-- M -->
			<DA name="msvID"	fc="SR" bType="VisString129"/>				<!-- M -->
			<DA name="datSet"	fc="SR" bType="ObjRef"/>				<!-- M -->
			<DA name="confRev"	fc="SR" bType="INT32U"/>				<!-- M -->
			<DA name="smpMod"	fc="SR" bType="Enum" type="SmpModEnumKind"/>		<!-- M -->
			<DA name="smpRate"	fc="SR" bType="INT16U"/>				<!-- M -->
			<DA name="optFlds"	fc="SR" bType="SvOptFlds"/>				<!-- M -->
			<DA name="dstAddress"	fc="SR" bType="PhyComAddr"/>				<!-- M -->
			<!-- DEBUG: noASDU is NOT in MTS in 61850-7-2 but is mapped in 61850-8-1.
			     Not clear what this means, so we assume noASDU is optional.
			-->
			<DA name="noASDU"	fc="SR" bType="INT16U"/>
		</DOType>

		<!-- NEW IN EDITION 2. Defined in 61850-7-2 -->
		<DOType id="NTS" cdc="NTS">
			<DA name="objRef"	fc="SR"	bType="ObjRef"		dupd="true"/>		<!-- M -->
			<DA name="serviceType"	fc="SR" bType="Enum" type="ServiceTypeEnumKind"/>		<!-- M -->
			<DA name="errorCode"	fc="SR" bType="INT8U"/>		<!-- M DEBUG: 7-2 says type is ServiceError -->
			<DA name="originatorID"	fc="SR" bType="Octet64"/>				<!-- O -->
			<DA name="t" 		fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->

			<DA name="svEna"	fc="SR" bType="BOOLEAN"/>				<!-- M -->
			<DA name="usvID"	fc="SR" bType="VisString129"/>				<!-- M -->
			<DA name="datSet"	fc="SR" bType="ObjRef"/>				<!-- M -->
			<DA name="confRev"	fc="SR" bType="INT32U"/>				<!-- M -->
			<DA name="smpMod"	fc="SR" bType="Enum" type="SmpModEnumKind"/>		<!-- M -->
			<DA name="smpRate"	fc="SR" bType="INT16U"/>				<!-- M -->
			<DA name="optFlds"	fc="SR" bType="SvOptFlds"/>				<!-- M -->
			<DA name="dstAddress"	fc="SR" bType="PhyComAddr"/>				<!-- M -->
			<!-- DEBUG: noASDU is NOT in NTS in 61850-7-2 but is mapped in 61850-8-1.
			     Not clear what this means, so we assume noASDU is optional.
			-->
			<DA name="noASDU"	fc="SR" bType="INT16U"/>
		</DOType>

		<!-- NEW IN EDITION 2. Defined in 61850-7-2 -->
		<DOType id="STS" cdc="STS">
			<DA name="objRef"	fc="SR"	bType="ObjRef"		dupd="true"/>		<!-- M -->
			<DA name="serviceType"	fc="SR" bType="Enum" type="ServiceTypeEnumKind"/>		<!-- M -->
			<DA name="errorCode"	fc="SR" bType="INT8U"/>		<!-- M DEBUG: 7-2 says type is ServiceError -->
			<DA name="originatorID"	fc="SR" bType="Octet64"/>				<!-- O -->
			<DA name="t" 		fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->

			<DA name="numOfSG"	fc="SR" bType="INT8U"/>					<!-- M -->
			<DA name="actSG"	fc="SR" bType="INT8U"/>					<!-- M -->
			<DA name="editSG"	fc="SR" bType="INT8U"/>					<!-- M -->
			<DA name="cnfEdit"	fc="SR" bType="BOOLEAN"/>				<!-- M -->
			<DA name="lActTim"	fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="resvTms"	fc="SR" bType="INT16U"/>				<!-- M -->
		</DOType>

		<!-- NEW IN EDITION 2. Defined in 61850-7-2 -->
		<!-- NOTE: Need a different variation of CTS for each type of Control -->

		<!-- Same type used for SPC and DPC -->
		<DOType id="CTS_SPC_DPC" cdc="CTS">
			<DA name="objRef"	fc="SR"	bType="ObjRef"		dupd="true"/>		<!-- M -->
			<DA name="serviceType"	fc="SR" bType="Enum" type="ServiceTypeEnumKind"/>		<!-- M -->
			<DA name="errorCode"	fc="SR" bType="INT8U"/>		<!-- M DEBUG: 7-2 says type is ServiceError -->
			<DA name="originatorID"	fc="SR" bType="Octet64"/>				<!-- O -->
			<DA name="t" 		fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->

			<DA name="ctlVal"	fc="SR" bType="BOOLEAN"/>				<!-- M -->
			<DA name="operTm"	fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="origin"	fc="SR"	bType="Struct" type="Originator"/>		<!-- M -->
			<DA name="ctlNum"	fc="SR" bType="INT8U"/>					<!-- M -->
			<DA name="T"		fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="Test"		fc="SR" bType="BOOLEAN"/>				<!-- M -->
			<DA name="Check"	fc="SR" bType="Check"/>					<!-- M -->
			<DA name="respAddCause"	fc="SR" bType="INT8U"/>				<!-- M DEBUG: 7-2 says type is AddCause -->
		</DOType>

		<DOType id="CTS_INC" cdc="CTS">
			<DA name="objRef"	fc="SR"	bType="ObjRef"		dupd="true"/>		<!-- M -->
			<DA name="serviceType"	fc="SR" bType="Enum" type="ServiceTypeEnumKind"/>		<!-- M -->
			<DA name="errorCode"	fc="SR" bType="INT8U"/>		<!-- M DEBUG: 7-2 says type is ServiceError -->
			<DA name="originatorID"	fc="SR" bType="Octet64"/>				<!-- O -->
			<DA name="t" 		fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->

			<DA name="ctlVal"	fc="SR" bType="INT32"/>					<!-- M -->
			<DA name="operTm"	fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="origin"	fc="SR"	bType="Struct" type="Originator"/>		<!-- M -->
			<DA name="ctlNum"	fc="SR" bType="INT8U"/>					<!-- M -->
			<DA name="T"		fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="Test"		fc="SR" bType="BOOLEAN"/>				<!-- M -->
			<DA name="Check"	fc="SR" bType="Check"/>					<!-- M -->
			<DA name="respAddCause"	fc="SR" bType="INT8U"/>				<!-- M DEBUG: 7-2 says type is AddCause -->
		</DOType>
		<DOType id="CTS_ENC_Mod" cdc="CTS">
			<DA name="objRef"	fc="SR"	bType="ObjRef"		dupd="true"/>		<!-- M -->
			<DA name="serviceType"	fc="SR" bType="Enum" type="ServiceTypeEnumKind"/>		<!-- M -->
			<DA name="errorCode"	fc="SR" bType="INT8U"/>		<!-- M DEBUG: 7-2 says type is ServiceError -->
			<DA name="originatorID"	fc="SR" bType="Octet64"/>				<!-- O -->
			<DA name="t" 		fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->

			<DA name="ctlVal"	fc="SR" bType="Enum" type="Mod"/>			<!-- M -->
			<DA name="operTm"	fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="origin"	fc="SR"	bType="Struct" type="Originator"/>		<!-- M -->
			<DA name="ctlNum"	fc="SR" bType="INT8U"/>					<!-- M -->
			<DA name="T"		fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="Test"		fc="SR" bType="BOOLEAN"/>				<!-- M -->
			<DA name="Check"	fc="SR" bType="Check"/>					<!-- M -->
			<DA name="respAddCause"	fc="SR" bType="INT8U"/>				<!-- M DEBUG: 7-2 says type is AddCause -->
		</DOType>
		<DOType id="CTS_ENC_OpModSyn" cdc="CTS">
			<DA name="objRef"	fc="SR"	bType="ObjRef"		dupd="true"/>		<!-- M -->
			<DA name="serviceType"	fc="SR" bType="Enum" type="ServiceTypeEnumKind"/>		<!-- M -->
			<DA name="errorCode"	fc="SR" bType="INT8U"/>		<!-- M DEBUG: 7-2 says type is ServiceError -->
			<DA name="originatorID"	fc="SR" bType="Octet64"/>				<!-- O -->
			<DA name="t" 		fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->

			<DA name="ctlVal"	fc="SR" bType="Enum" type="OpModSyn"/>			<!-- M -->
			<DA name="operTm"	fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="origin"	fc="SR"	bType="Struct" type="Originator"/>		<!-- M -->
			<DA name="ctlNum"	fc="SR" bType="INT8U"/>					<!-- M -->
			<DA name="T"		fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="Test"		fc="SR" bType="BOOLEAN"/>				<!-- M -->
			<DA name="Check"	fc="SR" bType="Check"/>					<!-- M -->
			<DA name="respAddCause"	fc="SR" bType="INT8U"/>				<!-- M DEBUG: 7-2 says type is AddCause -->
		</DOType>
		<DOType id="CTS_APCF" cdc="CTS">
			<DA name="objRef"	fc="SR"	bType="ObjRef"		dupd="true"/>		<!-- M -->
			<DA name="serviceType"	fc="SR" bType="Enum" type="ServiceTypeEnumKind"/>		<!-- M -->
			<DA name="errorCode"	fc="SR" bType="INT8U"/>		<!-- M DEBUG: 7-2 says type is ServiceError -->
			<DA name="originatorID"	fc="SR" bType="Octet64"/>				<!-- O -->
			<DA name="t" 		fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->

			<DA name="ctlVal"	fc="SR" bType="FLOAT32"/>				<!-- M -->
			<DA name="operTm"	fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="origin"	fc="SR"	bType="Struct" type="Originator"/>		<!-- M -->
			<DA name="ctlNum"	fc="SR" bType="INT8U"/>					<!-- M -->
			<DA name="T"		fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="Test"		fc="SR" bType="BOOLEAN"/>				<!-- M -->
			<DA name="Check"	fc="SR" bType="Check"/>					<!-- M -->
			<DA name="respAddCause"	fc="SR" bType="INT8U"/>				<!-- M DEBUG: 7-2 says type is AddCause -->
		</DOType>
		<DOType id="CTS_APCINT" cdc="CTS">
			<DA name="objRef"	fc="SR"	bType="ObjRef"		dupd="true"/>		<!-- M -->
			<DA name="serviceType"	fc="SR" bType="Enum" type="ServiceTypeEnumKind"/>		<!-- M -->
			<DA name="errorCode"	fc="SR" bType="INT8U"/>		<!-- M DEBUG: 7-2 says type is ServiceError -->
			<DA name="originatorID"	fc="SR" bType="Octet64"/>				<!-- O -->
			<DA name="t" 		fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->

			<DA name="ctlVal"	fc="SR" bType="INT32"/>					<!-- M -->
			<DA name="operTm"	fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="origin"	fc="SR"	bType="Struct" type="Originator"/>		<!-- M -->
			<DA name="ctlNum"	fc="SR" bType="INT8U"/>					<!-- M -->
			<DA name="T"		fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="Test"		fc="SR" bType="BOOLEAN"/>				<!-- M -->
			<DA name="Check"	fc="SR" bType="Check"/>					<!-- M -->
			<DA name="respAddCause"	fc="SR" bType="INT8U"/>				<!-- M DEBUG: 7-2 says type is AddCause -->
		</DOType>
		<!-- Same type used for BSC and BAC -->
		<DOType id="CTS_BSC_BAC" cdc="CTS">
			<DA name="objRef"	fc="SR"	bType="ObjRef"		dupd="true"/>		<!-- M -->
			<DA name="serviceType"	fc="SR" bType="Enum" type="ServiceTypeEnumKind"/>		<!-- M -->
			<DA name="errorCode"	fc="SR" bType="INT8U"/>		<!-- M DEBUG: 7-2 says type is ServiceError -->
			<DA name="originatorID"	fc="SR" bType="Octet64"/>				<!-- O -->
			<DA name="t" 		fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->

			<DA name="ctlVal"	fc="SR" bType="Dbpos"/>					<!-- M -->
			<DA name="operTm"	fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="origin"	fc="SR"	bType="Struct" type="Originator"/>		<!-- M -->
			<DA name="ctlNum"	fc="SR" bType="INT8U"/>					<!-- M -->
			<DA name="T"		fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="Test"		fc="SR" bType="BOOLEAN"/>				<!-- M -->
			<DA name="Check"	fc="SR" bType="Check"/>					<!-- M -->
			<DA name="respAddCause"	fc="SR" bType="INT8U"/>				<!-- M DEBUG: 7-2 says type is AddCause -->
		</DOType>
		<DOType id="CTS_ISC" cdc="CTS">
			<DA name="objRef"	fc="SR"	bType="ObjRef"		dupd="true"/>		<!-- M -->
			<DA name="serviceType"	fc="SR" bType="Enum" type="ServiceTypeEnumKind"/>		<!-- M -->
			<DA name="errorCode"	fc="SR" bType="INT8U"/>		<!-- M DEBUG: 7-2 says type is ServiceError -->
			<DA name="originatorID"	fc="SR" bType="Octet64"/>				<!-- O -->
			<DA name="t" 		fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->

			<DA name="ctlVal"	fc="SR" bType="INT8"/>					<!-- M -->
			<DA name="operTm"	fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="origin"	fc="SR"	bType="Struct" type="Originator"/>		<!-- M -->
			<DA name="ctlNum"	fc="SR" bType="INT8U"/>					<!-- M -->
			<DA name="T"		fc="SR" bType="Timestamp"/>				<!-- M -->
			<DA name="Test"		fc="SR" bType="BOOLEAN"/>				<!-- M -->
			<DA name="Check"	fc="SR" bType="Check"/>					<!-- M -->
			<DA name="respAddCause"	fc="SR" bType="INT8U"/>				<!-- M DEBUG: 7-2 says type is AddCause -->
		</DOType>

		<!-- Single point status (SPS)-->
		<DOType id="SPS" cdc="SPS">
			<DA name="stVal"	fc="ST"	bType="BOOLEAN"		dchg="true"/>		<!-- M -->
			<DA name="q" 		fc="ST" bType="Quality" 	qchg="true"/>		<!-- M -->
			<DA name="t" 		fc="ST" bType="Timestamp"/>				<!-- M -->
			<DA name="subEna"	fc="SV"	bType="BOOLEAN"/>				<!-- PICS_SUBST -->
			<DA name="subVal"	fc="SV"	bType="BOOLEAN"/>				<!-- PICS_SUBST -->
			<DA name="subQ"		fc="SV"	bType="Quality"/>				<!-- PICS_SUBST -->
			<DA name="subID"	fc="SV"	bType="VisString64"/>				<!-- PICS_SUBST -->
			<DA name="blkEna"	fc="BL"	bType="BOOLEAN"/>				<!-- O -->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->
		</DOType>

		<!-- Double point status (DPS)-->
		<DOType id="DPS" cdc="DPS">
			<!-- stVal was INT32 -->
			<DA name="stVal"	fc="ST"	bType="Dbpos"		dchg="true"/>		<!-- M -->
			<DA name="q" 		fc="ST" bType="Quality" 	qchg="true"/>		<!-- M -->
			<DA name="t" 		fc="ST" bType="Timestamp"/>				<!-- M -->
			<DA name="subEna"	fc="SV"	bType="BOOLEAN"/>				<!-- PICS_SUBST -->
			<DA name="subVal"	fc="SV"	bType="Dbpos"/>					<!-- PICS_SUBST -->
			<DA name="subQ"		fc="SV"	bType="Quality"/> 				<!-- PICS_SUBST -->
			<DA name="subID"	fc="SV"	bType="VisString64"/>				<!-- PICS_SUBST -->
			<DA name="blkEna"	fc="BL"	bType="BOOLEAN"/>				<!-- O -->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O-->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->
		</DOType>

		<!-- Integer status (INS)-->
		<DOType id="INS" cdc="INS">
			<DA name="stVal" 	fc="ST" bType="INT32" dchg="true"/>			<!-- M -->
			<DA name="q" 		fc="ST" bType="Quality" qchg="true"/>  			<!-- M -->
			<DA name="t" 		fc="ST" bType="Timestamp"/>	    			<!-- M -->
			<DA name="subEna" 	fc="SV" bType="BOOLEAN"/>	    			<!-- PICS_SUBST -->
			<DA name="subVal" 	fc="SV" bType="INT32"/>	    				<!-- PICS_SUBST -->
			<DA name="subQ" 	fc="SV" bType="Quality"/>	    			<!-- PICS_SUBST -->
			<DA name="subID" 	fc="SV" bType="VisString64"/>	    			<!-- PICS_SUBST -->
			<DA name="blkEna"	fc="BL"	bType="BOOLEAN"/>				<!-- O -->
			<DA name="units"	fc="CF"	bType="Struct" type="Unit"/>			<!-- O -->
			<DA name="d" 		fc="DC" bType="VisString255"/>	    			<!-- O -->
			<DA name="dU" 		fc="DC" bType="Unicode255"/>	    			<!-- O -->
			<DA name="cdcNs" 	fc="EX" bType="VisString255"/>	    			<!-- AC_DLNDA_M -->
			<DA name="cdcName" 	fc="EX" bType="VisString255"/>   			<!-- AC_DLNDA_M -->
			<DA name="dataNs" 	fc="EX" bType="VisString255"/>    			<!-- AC_DLN_M -->
		</DOType>

		<!-- NEW IN EDITION 2. Defined in 61850-7-3 -->
		<!-- Enumerated status (ENS)-->
		<DOType id="ENS" cdc="ENS">
			<!-- DEBUG: fix "type" for "stVal". May need several ENS types. Used for many things in part 7-4 -->
			<DA name="stVal" 	fc="ST" bType="Enum" type="dirGeneralEnumKind" dchg="true"/>			<!-- M -->
			<DA name="q" 		fc="ST" bType="Quality" qchg="true"/>  			<!-- M -->
			<DA name="t" 		fc="ST" bType="Timestamp"/>	    			<!-- M -->
			<DA name="subEna" 	fc="SV" bType="BOOLEAN"/>	    			<!-- PICS_SUBST -->
			<DA name="subVal" 	fc="SV" bType="Enum" type="dirGeneralEnumKind"/>	    				<!-- PICS_SUBST -->
			<DA name="subQ" 	fc="SV" bType="Quality"/>	    			<!-- PICS_SUBST -->
			<DA name="subID" 	fc="SV" bType="VisString64"/>	    			<!-- PICS_SUBST -->
			<DA name="blkEna"	fc="BL"	bType="BOOLEAN"/>				<!-- O -->
			<DA name="d" 		fc="DC" bType="VisString255"/>	    			<!-- O -->
			<DA name="dU" 		fc="DC" bType="Unicode255"/>	    			<!-- O -->
			<DA name="cdcNs" 	fc="EX" bType="VisString255"/>	    			<!-- AC_DLNDA_M -->
			<DA name="cdcName" 	fc="EX" bType="VisString255"/>   			<!-- AC_DLNDA_M -->
			<DA name="dataNs" 	fc="EX" bType="VisString255"/>    			<!-- AC_DLN_M -->
		</DOType>

		<!-- Protection activation information (ACT)-->
		<DOType id="ACT" cdc="ACT">
			<DA name="general"	fc="ST"	bType="BOOLEAN"		dchg="true"/>		<!-- M-->
			<DA name="phsA"		fc="ST"	bType="BOOLEAN"		dchg="true"/>		<!-- O -->
			<DA name="phsB"		fc="ST"	bType="BOOLEAN"		dchg="true"/>		<!-- O -->
			<DA name="phsC"		fc="ST"	bType="BOOLEAN"		dchg="true"/>		<!-- O -->
			<DA name="neut"		fc="ST"	bType="BOOLEAN"		dchg="true"/>		<!-- O -->

			<DA name="q" 		fc="ST" bType="Quality" 	qchg="true"/>		<!-- M -->
			<DA name="t" 		fc="ST" bType="Timestamp"/>				<!-- M -->
			<DA name="originSrc"	fc="ST"	bType="Struct" type="Originator"/>		<!-- AC_CO_O -->
			<DA name="operTmPhsA"	fc="ST"	bType="Timestamp"/>				<!-- O -->
			<DA name="operTmPhsB"	fc="ST"	bType="Timestamp"/>				<!-- O -->
			<DA name="operTmPhsC"	fc="ST"	bType="Timestamp"/>				<!-- O -->

			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O -->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->
		</DOType>

		<!-- Directional protection activation information (ACD)-->
		<DOType id="ACD" cdc="ACD">
			<DA name="general"	fc="ST"	bType="BOOLEAN"	 		dchg="true"/>		<!-- M-->
			<DA name="dirGeneral"	fc="ST"	bType="Enum" 	type="dirGeneralEnumKind"	dchg="true"/>	<!-- M-->
			<DA name="phsA"		fc="ST"	bType="BOOLEAN"			dchg="true"/>		<!-- GC_2 (1) -->
			<DA name="dirphsA"	fc="ST"	bType="Enum"    type="dirPhsEnumKind"	dchg="true"/>	<!-- GC_2 (1) -->
			<DA name="phsB"		fc="ST"	bType="BOOLEAN"			dchg="true"/>		<!-- GC_2 (2) -->
			<DA name="dirphsB"	fc="ST"	bType="Enum"    type="dirPhsEnumKind" 	dchg="true"/>	<!-- GC_2 (2) -->
			<DA name="phsC"		fc="ST"	bType="BOOLEAN"			dchg="true"/>		<!-- GC_2 (3) -->
			<DA name="dirphsC"	fc="ST"	bType="Enum"    type="dirPhsEnumKind" 	dchg="true"/>	<!-- GC_2 (3) -->
			<DA name="neut"		fc="ST"	bType="BOOLEAN"			dchg="true"/>		<!-- GC_2 (4) -->
			<DA name="dirNeut"	fc="ST"	bType="Enum"    type="dirPhsEnumKind" 	dchg="true"/>	<!-- GC_2 (4) -->

			<DA name="q" 		fc="ST" bType="Quality" 		qchg="true"/>	<!-- M -->
			<DA name="t" 		fc="ST" bType="Timestamp"/>				<!-- M -->

			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O -->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->
		</DOType>


		<!-- Security violation counting (SEC)-->
		<DOType id="SEC" cdc="SEC">
			<DA name="cnt"		fc="ST"	bType="INT32U"		dchg="true"/>		<!-- M -->
			<DA name="sev"		fc="ST"	bType="Enum" type="sevEnumKind" dchg="true"/>	<!-- M -->
			<DA name="t" 		fc="ST" bType="Timestamp"/>				<!-- M -->
			<DA name="addr"		fc="ST"	bType="Octet64"/>
			<DA name="addInfo"	fc="ST"	bType="VisString64"/>

			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O -->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->
		</DOType>

		<!-- Binary counter reading (BCR)-->
		<DOType id="BCR" cdc="BCR">
			<DA name="actVal"	fc="ST" bType="INT64" dchg="true"/>			<!-- M -->
			<DA name="frVal" 	fc="ST" bType="INT64" dupd="true"/>			<!-- GC_2 (1) -->
			<DA name="frTm" 	fc="ST" bType="Timestamp" dupd="true"/>			<!-- GC_2 (1) -->
			<DA name="q" 		fc="ST" bType="Quality" qchg="true"/>     		<!-- M -->
			<DA name="t" 		fc="ST" bType="Timestamp"/>	       			<!-- M -->
			<DA name="units" 	fc="CF" bType="Struct" type="Unit"/>  			<!-- O-->
			<DA name="pulsQty" 	fc="CF" bType="FLOAT32"/>	       			<!-- M -->
			<DA name="frEna" 	fc="CF" bType="BOOLEAN"/>	       			<!-- GC_2 (1) -->
			<DA name="strTm" 	fc="CF" bType="Timestamp"/>	       			<!-- GC_2 (1) -->
			<DA name="frPd" 	fc="CF" bType="INT32"/>		       			<!-- GC_2 (1) -->
			<DA name="frRs" 	fc="CF" bType="BOOLEAN"/>	       			<!-- GC_2 (1) -->
			<DA name="d" 		fc="DC" bType="VisString255"/>	       			<!-- O -->
			<DA name="dU" 		fc="DC" bType="Unicode255"/>	       			<!-- O -->
			<DA name="cdcNs" 	fc="EX" bType="VisString255"/>	       			<!-- AC_DLNDA_M -->
			<DA name="cdcName" 	fc="EX" bType="VisString255"/>      			<!-- AC_DLNDA_M -->
			<DA name="dataNs" 	fc="EX" bType="VisString255"/>       			<!-- AC_DLN_M -->
		</DOType>

		<!-- NEW IN EDITION 2. Defined in 61850-7-3 -->
		<DOType id="HST" cdc="HST">
			<DA name="hstVal" 	fc="ST" bType="INT32" count="16" dchg="true" dupd="true"/>	<!-- M -->
			<DA name="q" 		fc="ST" bType="Quality" qchg="true"/>     		<!-- M -->
			<DA name="t" 		fc="ST" bType="Timestamp"/>	       			<!-- M -->
			<DA name="numPts" 	fc="CF" bType="INT16U"/>	       			<!-- M -->
			<DA name="hstRangeC" 	fc="CF" bType="Struct" type="Cell" count="16" dchg="true"/>	<!-- M -->
			<DA name="xUnits" 	fc="CF" bType="Struct" type="Unit"/>  			<!-- M-->
			<DA name="yUnits" 	fc="CF" bType="Struct" type="Unit"/>  			<!-- O-->
			<DA name="units" 	fc="CF" bType="Struct" type="Unit"/>  			<!-- O-->
			<DA name="maxPts" 	fc="CF" bType="INT16U"/>	       			<!-- M -->
			<DA name="xD" 		fc="DC" bType="VisString255"/>	       			<!-- M -->
			<DA name="xDU" 		fc="DC" bType="Unicode255"/>	       			<!-- O -->
			<DA name="yD" 		fc="DC" bType="VisString255"/>	       			<!-- O -->
			<DA name="yDU" 		fc="DC" bType="Unicode255"/>	       			<!-- O -->
			<DA name="d" 		fc="DC" bType="VisString255"/>	       			<!-- O -->
			<DA name="dU" 		fc="DC" bType="Unicode255"/>	       			<!-- O -->
			<DA name="cdcNs" 	fc="EX" bType="VisString255"/>	       			<!-- AC_DLNDA_M -->
			<DA name="cdcName" 	fc="EX" bType="VisString255"/>      			<!-- AC_DLNDA_M -->
			<DA name="dataNs" 	fc="EX" bType="VisString255"/>       			<!-- AC_DLN_M -->
		</DOType>

		<!-- NEW IN EDITION 2. Defined in 61850-7-3 -->
		<DOType id="VSS" cdc="VSS">
			<DA name="stVal"	fc="ST" bType="VisString255"/>	       			<!-- M -->
			<DA name="q" 		fc="ST" bType="Quality" qchg="true"/>     		<!-- M -->
			<DA name="t" 		fc="ST" bType="Timestamp"/>	       			<!-- M -->
			<DA name="d" 		fc="DC" bType="VisString255"/>	       			<!-- O -->
			<DA name="dU" 		fc="DC" bType="Unicode255"/>	       			<!-- O -->
			<DA name="cdcNs" 	fc="EX" bType="VisString255"/>	       			<!-- AC_DLNDA_M -->
			<DA name="cdcName" 	fc="EX" bType="VisString255"/>      			<!-- AC_DLNDA_M -->
			<DA name="dataNs" 	fc="EX" bType="VisString255"/>       			<!-- AC_DLN_M -->
		</DOType>

		<!-- Measured value (MV)-->
		<DOType id="MV" cdc="MV">
			<DA name="instMag" 	fc="MX" bType="Struct" type="AnalogueValue"/>
			<DA name="mag"		fc="MX"	bType="Struct" type="AnalogueValue"	dchg="true"/>	<!-- M -->
			<DA name="range"	fc="MX"	bType="Enum"   type="rangeEnumKind"		dchg="true"/>
			<DA name="q" 		fc="MX" bType="Quality" 			qchg="true"/>	<!-- M -->
			<DA name="t" 		fc="MX" bType="Timestamp"/>	 				<!-- M -->

			<DA name="subEna"	fc="SV"	bType="BOOLEAN"/> 				<!-- PICS_ST -->
			<DA name="subMag"	fc="SV"	bType="Struct" type="AnalogueValue"/> 		<!-- PICS_ST -->
			<DA name="subQ" 	fc="SV" bType="Quality"/> 				<!-- PICS_ST -->
			<DA name="subID" 	fc="SV" bType="VisString64"/>	 			<!-- PICS_ST -->
			<DA name="blkEna"	fc="BL"	bType="BOOLEAN"/>				<!-- O -->

			<DA name="units"	fc="CF"	bType="Struct" type="Unit"/> 			<!-- O -->
			<DA name="db"		fc="CF"	bType="INT32U"/>				<!-- O -->
			<DA name="zeroDb"	fc="CF"	bType="INT32U"/> 				<!-- O -->
			<DA name="sVC" 		fc="CF" bType="Struct" type="ScaledValueConfig"/>	<!-- AC_SCAV -->
			<DA name="rangeC" 	fc="CF" bType="Struct" type="RangeConfig"/>		<!-- GC_CON -->
			<DA name="smpRate"     	fc="CF" bType="INT32U"/>

			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O -->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->
		</DOType>

		<!-- Complex measured value (CMV)-->
		<DOType id="CMV" cdc="CMV">
			<DA name="instCVal" 	fc="MX" bType="Struct" type="Vector"/>			<!-- O-->

			<DA name="cVal"		fc="MX"	bType="Struct" type="Vector"	dchg="true"/>	<!-- M -->
			<DA name="range"	fc="MX"	bType="Enum"   type="rangeEnumKind"	dchg="true"/>	<!-- O -->
			<DA name="rangeAng"	fc="MX"	bType="Enum"   type="rangeEnumKind"	dchg="true"/>	<!-- O -->
			<DA name="q" 		fc="MX" bType="Quality" 		qchg="true"/>	<!-- M -->
			<DA name="t" 		fc="MX" bType="Timestamp"/>	 			<!-- M -->

			<DA name="subEna"	fc="SV"	bType="BOOLEAN"/>				<!-- PICS_SUBST -->
			<DA name="subCVal"	fc="SV"	bType="Struct" type="Vector"/>			<!-- PICS_SUBST -->
			<DA name="subQ" 	fc="SV" bType="Quality"/> 				<!-- PICS_SUBST -->
			<DA name="subID" 	fc="SV" bType="VisString64"/>	 			<!-- PICS_SUBST -->
			<DA name="blkEna"	fc="BL"	bType="BOOLEAN"/>				<!-- O -->

			<DA name="units"	fc="CF"	bType="Struct"  type="Unit"/>			<!-- O -->
			<DA name="db"		fc="CF"	bType="INT32U"/>				<!-- O -->
			<DA name="dbAng"	fc="CF"	bType="INT32U"/>				<!-- O -->
			<DA name="zeroDb"	fc="CF"	bType="INT32U"/> 				<!-- O -->
			<DA name="rangeC" 	fc="CF" bType="Struct" type="RangeConfig"/>		<!-- GC_CON -->
			<DA name="rangeAngC" 	fc="CF" bType="Struct" type="RangeConfig"/>		<!-- GC_CON -->
			<DA name="magSVC" 	fc="CF" bType="Struct" type="ScaledValueConfig"/>	<!-- AC_SCAV -->
			<DA name="angSVC"     	fc="CF" bType="Struct" type="ScaledValueConfig"/>	<!-- AC_SCAV -->
			<DA name="angRef"     	fc="CF" bType="Enum" type="angRefEnumKind"/>		<!-- O -->
			<DA name="smpRate"     	fc="CF" bType="INT32U"/>	 			<!-- O -->

			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O-->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->
		</DOType>

		<!-- Sampled Value (SAV)-->
		<DOType id="SAV" cdc="SAV">
			<DA name="instMag"	fc="MX"	bType="Struct" type="AnalogueValue"/>		<!-- M -->
			<DA name="q" 		fc="MX" bType="Quality" 	qchg="true"/>		<!-- M -->
			<DA name="t" 		fc="MX" bType="Timestamp"/>				<!-- O -->

			<DA name="units"	fc="CF"	bType="Struct" type="Unit"/>			<!-- O -->
			<DA name="sVC"		fc="CF"	bType="Struct" type="ScaledValueConfig"/>	<!-- AC_SCAV -->				   		<!-- AC_SCAV -->
			<DA name="min"		fc="CF"	bType="Struct" type="AnalogueValue"/>		<!-- O -->
			<DA name="max" 		fc="CF" bType="Struct" type="AnalogueValue"/>		<!-- O -->

			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O -->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O-->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->
		</DOType>

		<!-- Phase to ground related measurement values of a three phase system (WYE)-->
		<DOType id="WYE" cdc="WYE">
			<SDO name="phsA" 	type="CMV"/>						<!-- GC_1 -->
			<SDO name="phsB" 	type="CMV"/>						<!-- GC_1 -->
			<SDO name="phsC" 	type="CMV"/>						<!-- GC_1 -->
			<SDO name="neut" 	type="CMV"/>						<!-- GC_1 -->
			<SDO name="net"  	type="CMV"/>						<!-- GC_1 -->
			<SDO name="res"  	type="CMV"/>						<!-- GC_1 -->

			<DA name="angRef"     	fc="CF" bType="Enum" type="angRefWYEEnumKind"/> 		<!-- O -->
			<DA name="phsToNeut"   	fc="CF" bType="BOOLEAN"/> 				<!-- O -->
			<DA name="d"		fc="DC" bType="VisString255"/>				<!-- O -->
			<DA name="dU"		fc="DC" bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX" bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX" bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX" bType="VisString255"/>				<!-- AC_DLN_M -->
		</DOType>

		<!-- Phase to ground related measured values of a three phase systemDelta (DEL) -->
		<DOType id="DEL" cdc="DEL">
			<SDO name="phsAB" 	type="CMV"/>						<!-- GC_1 -->
			<SDO name="phsBC" 	type="CMV"/>						<!-- GC_1 -->
			<SDO name="phsCA" 	type="CMV"/>						<!-- GC_1 -->

			<DA name="angRef"     	fc="CF" bType="Enum" type="angRefWYEEnumKind"/> 		<!-- O -->

			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O -->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->
		</DOType>

		<!-- Sequence (SEQ)-->
		<DOType id="SEQ" cdc="SEQ">

			<SDO name="c1" type="CMV"/>							<!-- M -->
			<SDO name="c2" type="CMV"/>							<!-- M -->
			<SDO name="c3" type="CMV"/>							<!-- M -->
			<DA name="seqT"     	fc="MX" bType="Enum" type="seqTEnumKind"/>			<!-- M -->
			<DA name="phsRef"     	fc="CF" bType="Enum" type="phsRefEnumKind"/>		<!-- O -->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O -->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->
		</DOType>

		<!-- Harmonic Value (HMV)-->
		<DOType id="HMV" cdc="HMV">
			<!-- NOTE: In Edition 2, "har" changed to array of CMV (VERY LARGE). -->
			<SDO name="har"		type="CMV"	count="16"/>				<!-- M -->

			<DA name="numHar"	fc="CF" bType="INT16U" dchg="true"/>			<!-- M -->
			<DA name="numCyc"	fc="CF" bType="INT16U" dchg="true"/>			<!-- M -->
			<DA name="evalTm"	fc="CF" bType="INT16U" dchg="true"/>			<!-- M -->
			<DA name="smpRate"	fc="CF" bType="INT32U" dchg="true"/>			<!-- O -->
			<DA name="frequency"	fc="CF" bType="FLOAT32" dchg="true"/>			<!-- M -->
			<DA name="hvRef"	fc="CF" bType="Enum" type="hvRefEnumKind" dchg="true"/>	<!-- O -->
			<DA name="rmsCyc"	fc="CF" bType="INT16U" dchg="true"/>			<!-- AC_RMS_M -->

			<DA name="d"		fc="DC" bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC" bType="Unicode255"/>				<!-- O-->
			<DA name="cdcNs"	fc="EX" bType="VisString255"/>				<!-- AC_DLNDA_M-->
			<DA name="cdcName"	fc="EX" bType="VisString255"/>				<!-- AC_DLNDA_M-->
			<DA name="dataNs"	fc="EX" bType="VisString255"/>				<!-- AC_DLN_M-->
		</DOType>

		<!-- Harmonic value for WYE (HWYE)-->
		<DOType id="HWYE" cdc="HWYE">
			<!-- NOTE: In Edition 2, "phsAHar, etc" changed to array of CMV (VERY LARGE). -->
			<SDO name="phsAHar"	type="CMV"	count="16"/>				<!-- M -->
			<SDO name="phsBHar"	type="CMV"	count="16"/>				<!-- O -->
			<SDO name="phsCHar"	type="CMV"	count="16"/>				<!-- O -->
			<SDO name="neutHar"	type="CMV"	count="16"/>				<!-- O -->
			<SDO name="netHar"	type="CMV"	count="16"/>				<!-- O -->
			<SDO name="resHar"	type="CMV"	count="16"/>				<!-- O -->

			<DA name="numHar"	fc="CF" bType="INT16U" dchg="true"/>			<!-- M -->
			<DA name="numCyc"	fc="CF" bType="INT16U" dchg="true"/>			<!-- M -->
			<DA name="evalTm"	fc="CF" bType="INT16U" dchg="true"/>			<!-- M -->
			<DA name="angRef"	fc="CF"	bType="Enum" type="angRefWYEEnumKind" dchg="true"/>	<!-- O -->

			<DA name="smpRate"	fc="CF" bType="INT32U" dchg="true"/>			<!-- O -->
			<DA name="frequency"	fc="CF"	bType="FLOAT32" dchg="true"/>			<!-- M -->
			<DA name="hvRef"	fc="CF" bType="Enum" type="hvRefEnumKind" dchg="true"/>	<!-- O -->
			<DA name="rmsCyc"	fc="CF"	bType="INT16U" dchg="true"/>			<!-- AC_RMS_M -->

			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O-->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M-->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M-->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M-->
		</DOType>


		<!-- Harmonic value for DEL (HDEL)-->
		<DOType id="HDEL" cdc="HDEL">
			<!-- NOTE: In Edition 2, "phsABHar, etc" changed to array of CMV (VERY LARGE). -->
			<SDO name="phsABHar"	type="CMV"	count="16"/>				<!-- M -->
			<SDO name="phsBCHar"	type="CMV"	count="16"/>				<!-- O -->
			<SDO name="phsCAHar"	type="CMV"	count="16"/>				<!-- O -->

			<DA name="numHar"	fc="CF" bType="INT16U" dchg="true"/>			<!-- M -->
			<DA name="numCyc"	fc="CF" bType="INT16U" dchg="true"/>			<!-- M -->
			<DA name="evalTm"	fc="CF" bType="INT16U" dchg="true"/>			<!-- M -->
			<DA name="angRef"	fc="CF"	bType="Enum" type="angRefWYEEnumKind" dchg="true"/>	<!-- O -->

			<DA name="smpRate"	fc="CF" bType="INT32U" dchg="true"/>			<!-- O -->
			<DA name="frequency"	fc="CF"	bType="FLOAT32" dchg="true"/>			<!-- M -->
			<DA name="hvRef"	fc="CF" bType="Enum" type="hvRefEnumKind" dchg="true"/>	<!-- O -->
			<DA name="rmsCyc"	fc="CF"	bType="INT16U" dchg="true"/>			<!-- AC_RMS_M -->

			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O-->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M-->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M-->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M-->
		</DOType>

		<!-- Controllable single point (SPC)-->
		<!-- Definitions from 61850-8-1 override definitions from 61850-7-3 -->
		<DOType id="SPC" cdc="SPC">
			<DA name="SBO"		fc="CO"	bType="ObjRef"/>
			<DA name="SBOw"		fc="CO"	bType="Struct" type="SPCSelectWithValue"/>
			<DA name="Oper"		fc="CO"	bType="Struct" type="SPCOperate"/>
			<DA name="Cancel"   	fc="CO"	bType="Struct" type="SPCCancel"/>

			<DA name="origin"	fc="ST"	bType="Struct" type="Originator"/>		<!-- AC_CO_O -->
			<DA name="ctlNum"	fc="ST"	bType="INT8U"/>					<!-- AC_CO_O -->
			<DA name="stVal"	fc="ST"	bType="BOOLEAN"		dchg="true"/>		<!-- AC_ST -->

			<DA name="q" 		fc="ST" bType="Quality" 	qchg="true"/>		<!-- ACST -->
			<DA name="t" 		fc="ST" bType="Timestamp"/>				<!-- ACST -->
			<DA name="stSeld"	fc="ST"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->

			<DA name="opRcvd"	fc="OR"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->
			<DA name="opOk"		fc="OR"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->
			<DA name="tOpOk"	fc="OR"	bType="Timestamp"/>				<!-- O -->

			<DA name="subEna"	fc="SV"	bType="BOOLEAN"/>				<!-- PICS_SUBST -->
			<DA name="subVal"	fc="SV"	bType="BOOLEAN"/>				<!-- PICS_SUBST -->
			<DA name="subQ" 	fc="SV" bType="Quality"/> 				<!-- PICS_SUBST -->
			<DA name="subID" 	fc="SV" bType="VisString64"/>	 			<!-- PICS_SUBST -->
			<DA name="blkEna"	fc="BL"	bType="BOOLEAN"/>				<!-- O -->

			<DA name="pulseConfig"	fc="CF"	bType="Struct" type="PulseConfig"/>		<!-- AC_CO_O -->
			<DA name="ctlModel"	fc="CF"	bType="Enum" type="ctlModelEnumKind"/>   		<!-- M -->
			<DA name="sboTimeout" 	fc="CF" bType="INT32U"/> 				<!-- AC_CO_O -->
			<DA name="sboClass" 	fc="CF" bType="Enum" type="sboClassEnumKind"/> 		<!-- AC_CO_O -->
			<DA name="operTimeout" 	fc="CF" bType="INT32U"/> 				<!-- AC_CO_O -->

			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O -->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->
		</DOType>

		<!-- Controllable double point (DPC)-->
		<!-- Definitions from 61850-8-1 override definitions from 61850-7-3 -->
		<DOType id="DPC" cdc="DPC">
			<DA name="SBO"		fc="CO"	bType="ObjRef"/>
			<DA name="SBOw"		fc="CO"	bType="Struct" type="DPCSelectWithValue"/>
			<DA name="Oper"		fc="CO"	bType="Struct" type="DPCOperate"/>
			<DA name="Cancel"   	fc="CO"	bType="Struct" type="DPCCancel"/>

			<DA name="origin"	fc="ST"	bType="Struct" type="Originator"/>		<!-- AC_CO_O -->
			<DA name="ctlNum"	fc="ST"	bType="INT8U"/>					<!-- AC_CO_O -->
			<DA name="stVal"	fc="ST"	bType="Dbpos"	dchg="true"/>			<!-- AC_ST -->

			<DA name="q" 		fc="ST" bType="Quality" 	qchg="true"/>		<!-- ACST -->
			<DA name="t" 		fc="ST" bType="Timestamp"/>				<!-- ACST -->
			<DA name="stSeld"	fc="ST"	bType="BOOLEAN" 	dchg="true"/>		<!-- AC_CO_O -->

			<DA name="opRcvd"	fc="OR"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->
			<DA name="opOk"		fc="OR"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->
			<DA name="tOpOk"	fc="OR"	bType="Timestamp"/>				<!-- O -->

			<DA name="subEna"	fc="SV"	bType="BOOLEAN"/>				<!-- PICS_SUBST -->
			<DA name="subVal"	fc="SV"	bType="Dbpos"/>					<!-- PICS_SUBST -->
			<DA name="subQ" 	fc="SV" bType="Quality"/> 				<!-- PICS_SUBST -->
			<DA name="subID" 	fc="SV" bType="VisString64"/>	 			<!-- PICS_SUBST -->
			<DA name="blkEna"	fc="BL"	bType="BOOLEAN"/>				<!-- O -->

			<DA name="pulseConfig"	fc="CF"	bType="Struct" type="PulseConfig"/>		<!-- AC_CO_O -->
			<DA name="ctlModel"	fc="CF"	bType="Enum" type="ctlModelEnumKind"/>   		<!-- M -->
			<DA name="sboTimeout" 	fc="CF" bType="INT32U"/> 				<!-- AC_CO_O -->
			<DA name="sboClass" 	fc="CF" bType="Enum" type="sboClassEnumKind"/> 		<!-- AC_CO_O -->
			<DA name="operTimeout" 	fc="CF" bType="INT32U"/> 				<!-- AC_CO_O -->

			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O-->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M-->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M-->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M-->
		</DOType>

		<!-- Controllable integer status (INC)-->
		<!-- Definitions from 61850-8-1 override definitions from 61850-7-3 -->
		<DOType id="INC" cdc="INC">
			<DA name="SBO"		fc="CO"	bType="ObjRef"/>
			<DA name="SBOw"		fc="CO"	bType="Struct" type="INCSelectWithValue"/>
			<DA name="Oper"		fc="CO"	bType="Struct" type="INCOperate"/>
			<DA name="Cancel"   	fc="CO"	bType="Struct" type="INCCancel"/>

			<DA name="origin"	fc="ST"	bType="Struct" type="Originator"/>		<!-- AC_CO_O -->
			<DA name="ctlNum"	fc="ST"	bType="INT8U"/>					<!-- AC_CO_O -->
			<DA name="stVal"	fc="ST"	bType="INT32"	dchg="true"/>			<!-- AC_ST -->

			<DA name="q" 		fc="ST" bType="Quality" 	qchg="true"/>		<!-- ACST -->
			<DA name="t" 		fc="ST" bType="Timestamp"/>				<!-- ACST -->
			<DA name="stSeld"	fc="ST"	bType="BOOLEAN" 	dchg="true"/>		<!-- AC_CO_O -->

			<DA name="opRcvd"	fc="OR"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->
			<DA name="opOk"		fc="OR"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->
			<DA name="tOpOk"	fc="OR"	bType="Timestamp"/>				<!-- O -->

			<DA name="subEna"	fc="SV"	bType="BOOLEAN"/>				<!-- PICS_SUBST -->
			<DA name="subVal"	fc="SV"	bType="INT32"/>					<!-- PICS_SUBST -->
			<DA name="subQ" 	fc="SV" bType="Quality"/> 				<!-- PICS_SUBST -->
			<DA name="subID" 	fc="SV" bType="VisString64"/>	 			<!-- PICS_SUBST -->
			<DA name="blkEna"	fc="BL"	bType="BOOLEAN"/>				<!-- O -->

			<DA name="ctlModel"	fc="CF"	bType="Enum" type="ctlModelEnumKind"/>		<!-- M -->
			<DA name="sboTimeout" 	fc="CF" bType="INT32U"/> 				<!-- AC_CO_O -->
			<DA name="sboClass"	fc="CF"	bType="Enum" type="sboClassEnumKind"/>   		<!-- AC_CO_O -->
			<DA name="minVal" 	fc="CF" bType="INT32"/>		 			<!-- O -->
			<DA name="maxVal" 	fc="CF" bType="INT32"/>		 			<!-- O -->
			<DA name="stepSize" 	fc="CF" bType="INT32U"/>	 			<!-- O -->
			<DA name="operTimeout" 	fc="CF" bType="INT32U"/> 				<!-- AC_CO_O -->

			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O-->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M-->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M-->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M-->
		</DOType>

		<!-- NEW IN EDITION 2. Defined in 61850-7-3 -->
		<!-- NOTE: This file uses "ENC" type only for "Mod". For "OpModSyn", use "ENC_OpModSyn". -->
		<DOType id="ENC" cdc="ENC">
			<DA name="SBO"		fc="CO"	bType="ObjRef"/>
			<DA name="SBOw"		fc="CO"	bType="Struct" type="ENC_Mod_SelectWithValue"/>
			<DA name="Oper"		fc="CO"	bType="Struct" type="ENC_Mod_Operate"/>
			<DA name="Cancel"   	fc="CO"	bType="Struct" type="ENC_Mod_Cancel"/>

			<DA name="origin"	fc="ST"	bType="Struct" type="Originator"/>		<!-- AC_CO_O -->
			<DA name="ctlNum"	fc="ST"	bType="INT8U"/>					<!-- AC_CO_O -->
			<DA name="stVal"	fc="ST"	bType="Enum" type="Mod" dchg="true"/>		<!-- M -->

			<DA name="q" 		fc="ST" bType="Quality" 	qchg="true"/>		<!-- M -->
			<DA name="t" 		fc="ST" bType="Timestamp"/>				<!-- M -->
			<DA name="stSeld"	fc="ST"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->

			<DA name="opRcvd"	fc="OR"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->
			<DA name="opOk"		fc="OR"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->
			<DA name="tOpOk"	fc="OR"	bType="Timestamp"/>				<!-- O -->

			<DA name="subEna"	fc="SV"	bType="BOOLEAN"/>				<!-- PICS_SUBST -->
			<!-- DEBUG: may need different "subVal" type for different controls -->
			<DA name="subVal"	fc="SV"	bType="Enum" type="encEnumKind"/>			<!-- PICS_SUBST -->
			<DA name="subQ" 	fc="SV" bType="Quality"/> 				<!-- PICS_SUBST -->
			<DA name="subID" 	fc="SV" bType="VisString64"/>	 			<!-- PICS_SUBST -->
			<DA name="blkEna"	fc="BL"	bType="BOOLEAN"/>				<!-- O -->

			<DA name="ctlModel"	fc="CF"	bType="Enum" type="ctlModelEnumKind"/>		<!-- M -->
			<DA name="sboTimeout" 	fc="CF" bType="INT32U"/> 				<!-- AC_CO_O -->
			<DA name="sboClass"	fc="CF"	bType="Enum" type="sboClassEnumKind"/>   		<!-- AC_CO_O -->
			<DA name="operTimeout" 	fc="CF" bType="INT32U"/>	 			<!-- AC_CO_O -->

			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O-->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M-->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M-->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M-->
		</DOType>

		<!-- NOTE: This is same as "ENC" used for "Mod", except for type of SBOw, Oper, Cancel, stVal. -->
		<DOType id="ENC_OpModSyn" cdc="ENC">
			<DA name="SBO"		fc="CO"	bType="ObjRef"/>
			<DA name="SBOw"		fc="CO"	bType="Struct" type="ENC_OpModSyn_SelectWithValue"/>
			<DA name="Oper"		fc="CO"	bType="Struct" type="ENC_OpModSyn_Operate"/>
			<DA name="Cancel"   	fc="CO"	bType="Struct" type="ENC_OpModSyn_Cancel"/>

			<DA name="origin"	fc="ST"	bType="Struct" type="Originator"/>		<!-- AC_CO_O -->
			<DA name="ctlNum"	fc="ST"	bType="INT8U"/>					<!-- AC_CO_O -->
			<!-- DEBUG: may need different "stVal" type for different controls -->
			<DA name="stVal"	fc="ST"	bType="Enum" type="OpModSyn" dchg="true"/>	<!-- M -->

			<DA name="q" 		fc="ST" bType="Quality" 	qchg="true"/>		<!-- M -->
			<DA name="t" 		fc="ST" bType="Timestamp"/>				<!-- M -->
			<DA name="stSeld"	fc="ST"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->

			<DA name="opRcvd"	fc="OR"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->
			<DA name="opOk"		fc="OR"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->
			<DA name="tOpOk"	fc="OR"	bType="Timestamp"/>				<!-- O -->

			<DA name="subEna"	fc="SV"	bType="BOOLEAN"/>				<!-- PICS_SUBST -->
			<!-- DEBUG: may need different "subVal" type for different controls -->
			<DA name="subVal"	fc="SV"	bType="Enum" type="encEnumKind"/>			<!-- PICS_SUBST -->
			<DA name="subQ" 	fc="SV" bType="Quality"/> 				<!-- PICS_SUBST -->
			<DA name="subID" 	fc="SV" bType="VisString64"/>	 			<!-- PICS_SUBST -->
			<DA name="blkEna"	fc="BL"	bType="BOOLEAN"/>				<!-- O -->

			<DA name="ctlModel"	fc="CF"	bType="Enum" type="ctlModelEnumKind"/>		<!-- M -->
			<DA name="sboTimeout" 	fc="CF" bType="INT32U"/> 				<!-- AC_CO_O -->
			<DA name="sboClass"	fc="CF"	bType="Enum" type="sboClassEnumKind"/>   		<!-- AC_CO_O -->
			<DA name="operTimeout" 	fc="CF" bType="INT32U"/>	 			<!-- AC_CO_O -->

			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O-->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M-->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M-->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M-->
		</DOType>

		<DOType id="ENC_PmpCtlGen" cdc="ENC">
			<DA name="Oper"		fc="CO"	bType="Struct" type="ENC_PmpCtlGen_Operate"/>
			<DA name="Cancel"   	fc="CO"	bType="Struct" type="ENC_PmpCtlGen_Cancel"/>

			<DA name="origin"	fc="ST"	bType="Struct" type="Originator"/>		<!-- AC_CO_O -->
			<DA name="ctlNum"	fc="ST"	bType="INT8U"/>					<!-- AC_CO_O -->
			<!-- DEBUG: may need different "stVal" type for different controls -->
			<DA name="stVal"	fc="ST"	bType="Enum" type="PmpCtlGen" dchg="true"/>	<!-- M -->

			<DA name="q" 		fc="ST" bType="Quality" 	qchg="true"/>		<!-- M -->
			<DA name="t" 		fc="ST" bType="Timestamp"/>				<!-- M -->
			<DA name="stSeld"	fc="ST"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->

			<DA name="opRcvd"	fc="OR"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->
			<DA name="opOk"		fc="OR"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->
			<DA name="tOpOk"	fc="OR"	bType="Timestamp"/>				<!-- O -->

			<DA name="subEna"	fc="SV"	bType="BOOLEAN"/>				<!-- PICS_SUBST -->
			<!-- DEBUG: may need different "subVal" type for different controls -->
			<DA name="subVal"	fc="SV"	bType="Enum" type="encEnumKind"/>			<!-- PICS_SUBST -->
			<DA name="subQ" 	fc="SV" bType="Quality"/> 				<!-- PICS_SUBST -->
			<DA name="subID" 	fc="SV" bType="VisString64"/>	 			<!-- PICS_SUBST -->
			<DA name="blkEna"	fc="BL"	bType="BOOLEAN"/>				<!-- O -->

			<DA name="ctlModel"	fc="CF"	bType="Enum" type="ctlModelEnumKind"/>		<!-- M -->
			<DA name="sboTimeout" 	fc="CF" bType="INT32U"/> 				<!-- AC_CO_O -->
			<DA name="sboClass"	fc="CF"	bType="Enum" type="sboClassEnumKind"/>   		<!-- AC_CO_O -->
			<DA name="operTimeout" 	fc="CF" bType="INT32U"/>	 			<!-- AC_CO_O -->

			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O-->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M-->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M-->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M-->
		</DOType>
		<DOType id="ENC_PmpCtl" cdc="ENC">
			<DA name="Oper"		fc="CO"	bType="Struct" type="ENC_PmpCtl_Operate"/>
			<DA name="Cancel"   	fc="CO"	bType="Struct" type="ENC_PmpCtl_Cancel"/>

			<DA name="origin"	fc="ST"	bType="Struct" type="Originator"/>		<!-- AC_CO_O -->
			<DA name="ctlNum"	fc="ST"	bType="INT8U"/>					<!-- AC_CO_O -->
			<!-- DEBUG: may need different "stVal" type for different controls -->
			<DA name="stVal"	fc="ST"	bType="Enum" type="PmpCtl" dchg="true"/>	<!-- M -->

			<DA name="q" 		fc="ST" bType="Quality" 	qchg="true"/>		<!-- M -->
			<DA name="t" 		fc="ST" bType="Timestamp"/>				<!-- M -->
			<DA name="stSeld"	fc="ST"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->

			<DA name="opRcvd"	fc="OR"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->
			<DA name="opOk"		fc="OR"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->
			<DA name="tOpOk"	fc="OR"	bType="Timestamp"/>				<!-- O -->

			<DA name="subEna"	fc="SV"	bType="BOOLEAN"/>				<!-- PICS_SUBST -->
			<!-- DEBUG: may need different "subVal" type for different controls -->
			<DA name="subVal"	fc="SV"	bType="Enum" type="encEnumKind"/>			<!-- PICS_SUBST -->
			<DA name="subQ" 	fc="SV" bType="Quality"/> 				<!-- PICS_SUBST -->
			<DA name="subID" 	fc="SV" bType="VisString64"/>	 			<!-- PICS_SUBST -->
			<DA name="blkEna"	fc="BL"	bType="BOOLEAN"/>				<!-- O -->

			<DA name="ctlModel"	fc="CF"	bType="Enum" type="ctlModelEnumKind"/>		<!-- M -->
			<DA name="sboTimeout" 	fc="CF" bType="INT32U"/> 				<!-- AC_CO_O -->
			<DA name="sboClass"	fc="CF"	bType="Enum" type="sboClassEnumKind"/>   		<!-- AC_CO_O -->
			<DA name="operTimeout" 	fc="CF" bType="INT32U"/>	 			<!-- AC_CO_O -->

			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O-->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M-->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M-->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M-->
		</DOType>
		<DOType id="ENC_FanCtlGen" cdc="ENC">
			<DA name="Oper"		fc="CO"	bType="Struct" type="ENC_FanCtlGen_Operate"/>
			<DA name="Cancel"   	fc="CO"	bType="Struct" type="ENC_FanCtlGen_Cancel"/>

			<DA name="origin"	fc="ST"	bType="Struct" type="Originator"/>		<!-- AC_CO_O -->
			<DA name="ctlNum"	fc="ST"	bType="INT8U"/>					<!-- AC_CO_O -->
			<!-- DEBUG: may need different "stVal" type for different controls -->
			<DA name="stVal"	fc="ST"	bType="Enum" type="FanCtlGen" dchg="true"/>	<!-- M -->

			<DA name="q" 		fc="ST" bType="Quality" 	qchg="true"/>		<!-- M -->
			<DA name="t" 		fc="ST" bType="Timestamp"/>				<!-- M -->
			<DA name="stSeld"	fc="ST"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->

			<DA name="opRcvd"	fc="OR"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->
			<DA name="opOk"		fc="OR"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->
			<DA name="tOpOk"	fc="OR"	bType="Timestamp"/>				<!-- O -->

			<DA name="subEna"	fc="SV"	bType="BOOLEAN"/>				<!-- PICS_SUBST -->
			<!-- DEBUG: may need different "subVal" type for different controls -->
			<DA name="subVal"	fc="SV"	bType="Enum" type="encEnumKind"/>			<!-- PICS_SUBST -->
			<DA name="subQ" 	fc="SV" bType="Quality"/> 				<!-- PICS_SUBST -->
			<DA name="subID" 	fc="SV" bType="VisString64"/>	 			<!-- PICS_SUBST -->
			<DA name="blkEna"	fc="BL"	bType="BOOLEAN"/>				<!-- O -->

			<DA name="ctlModel"	fc="CF"	bType="Enum" type="ctlModelEnumKind"/>		<!-- M -->
			<DA name="sboTimeout" 	fc="CF" bType="INT32U"/> 				<!-- AC_CO_O -->
			<DA name="sboClass"	fc="CF"	bType="Enum" type="sboClassEnumKind"/>   		<!-- AC_CO_O -->
			<DA name="operTimeout" 	fc="CF" bType="INT32U"/>	 			<!-- AC_CO_O -->

			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O-->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M-->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M-->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M-->
		</DOType>
		<DOType id="ENC_FanCtl" cdc="ENC">
			<DA name="Oper"		fc="CO"	bType="Struct" type="ENC_FanCtl_Operate"/>
			<DA name="Cancel"   	fc="CO"	bType="Struct" type="ENC_FanCtl_Cancel"/>

			<DA name="origin"	fc="ST"	bType="Struct" type="Originator"/>		<!-- AC_CO_O -->
			<DA name="ctlNum"	fc="ST"	bType="INT8U"/>					<!-- AC_CO_O -->
			<!-- DEBUG: may need different "stVal" type for different controls -->
			<DA name="stVal"	fc="ST"	bType="Enum" type="FanCtl" dchg="true"/>	<!-- M -->

			<DA name="q" 		fc="ST" bType="Quality" 	qchg="true"/>		<!-- M -->
			<DA name="t" 		fc="ST" bType="Timestamp"/>				<!-- M -->
			<DA name="stSeld"	fc="ST"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->

			<DA name="opRcvd"	fc="OR"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->
			<DA name="opOk"		fc="OR"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->
			<DA name="tOpOk"	fc="OR"	bType="Timestamp"/>				<!-- O -->

			<DA name="subEna"	fc="SV"	bType="BOOLEAN"/>				<!-- PICS_SUBST -->
			<!-- DEBUG: may need different "subVal" type for different controls -->
			<DA name="subVal"	fc="SV"	bType="Enum" type="encEnumKind"/>			<!-- PICS_SUBST -->
			<DA name="subQ" 	fc="SV" bType="Quality"/> 				<!-- PICS_SUBST -->
			<DA name="subID" 	fc="SV" bType="VisString64"/>	 			<!-- PICS_SUBST -->
			<DA name="blkEna"	fc="BL"	bType="BOOLEAN"/>				<!-- O -->

			<DA name="ctlModel"	fc="CF"	bType="Enum" type="ctlModelEnumKind"/>		<!-- M -->
			<DA name="sboTimeout" 	fc="CF" bType="INT32U"/> 				<!-- AC_CO_O -->
			<DA name="sboClass"	fc="CF"	bType="Enum" type="sboClassEnumKind"/>   		<!-- AC_CO_O -->
			<DA name="operTimeout" 	fc="CF" bType="INT32U"/>	 			<!-- AC_CO_O -->

			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O-->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M-->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M-->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M-->
		</DOType>

		<!-- Binary controlled step position information (BSC)-->
		<!-- Definitions from 61850-8-1 override definitions from 61850-7-3 -->
		<DOType id="BSC" cdc="BSC">
			<DA name="SBO"		fc="CO"	bType="ObjRef"/>
			<DA name="SBOw"		fc="CO"	bType="Struct" type="BSCSelectWithValue"/>
			<DA name="Oper"		fc="CO"	bType="Struct" type="BSCOperate"/>
			<DA name="Cancel"   	fc="CO"	bType="Struct" type="BSCCancel"/>

			<DA name="origin"	fc="ST"	bType="Struct" type="Originator"/>		<!-- AC_CO_O -->
			<DA name="ctlNum"	fc="ST"	bType="INT8U"/>					<!-- AC_CO_O -->
			<DA name="valWTr"	fc="ST"	bType="Struct" type="ValWithTrans" dchg="true"/><!-- AC_ST -->

			<DA name="q" 		fc="ST" bType="Quality" 	qchg="true"/>		<!-- AC_ST -->
			<DA name="t" 		fc="ST" bType="Timestamp"/>				<!-- AC_ST -->
			<DA name="stSeld"	fc="ST"	bType="BOOLEAN" 	dchg="true"/>		<!-- AC_CO_O -->

			<DA name="opRcvd"	fc="OR"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->
			<DA name="opOk"		fc="OR"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->
			<DA name="tOpOk"	fc="OR"	bType="Timestamp"/>				<!-- O -->

			<DA name="subEna"	fc="SV"	bType="BOOLEAN"/>				<!-- PICS_SUBST -->
			<DA name="subVal"	fc="SV"	bType="Struct" type="ValWithTrans"/> 		<!-- PICS_SUBST -->
			<DA name="subQ" 	fc="SV" bType="Quality"/> 				<!-- PICS_SUBST -->
			<DA name="subID" 	fc="SV" bType="VisString64"/>	 			<!-- PICS_SUBST -->
			<DA name="blkEna"	fc="BL"	bType="BOOLEAN"/>				<!-- O -->

			<DA name="persistent"	fc="CF"	bType="BOOLEAN"/>				<!-- M -->
			<DA name="ctlModel"	fc="CF"	bType="Enum" type="ctlModelEnumKind"/>    		<!-- M -->
			<DA name="sboTimeout" 	fc="CF" bType="INT32U"/> 				<!-- AC_CO_O -->
			<DA name="sboClass"	fc="CF"	bType="Enum" type="sboClassEnumKind"/>   		<!-- AC_CO_O -->
			<DA name="minVal" 	fc="CF" bType="INT8"/>		 			<!-- O -->
			<DA name="maxVal" 	fc="CF" bType="INT8"/>		 			<!-- O -->
			<DA name="operTimeout" 	fc="CF" bType="INT32U"/>	 			<!-- O -->

			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O-->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M-->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M-->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M-->
		</DOType>

		<!-- Integer controlled step position information (ISC)-->
		<!-- Definitions from 61850-8-1 override definitions from 61850-7-3 -->
		<DOType id="ISC" cdc="ISC">
			<DA name="SBO"		fc="CO"	bType="ObjRef"/>
			<DA name="SBOw"		fc="CO"	bType="Struct" type="ISCSelectWithValue"/>
			<DA name="Oper"		fc="CO"	bType="Struct" type="ISCOperate"/>
			<DA name="Cancel"   	fc="CO"	bType="Struct" type="ISCCancel"/>

			<DA name="origin"	fc="ST"	bType="Struct" type="Originator"/>		<!-- AC_CO_O -->
			<DA name="ctlNum"	fc="ST"	bType="INT8U"/>					<!-- AC_CO_O -->
			<DA name="valWTr"	fc="ST"	bType="Struct" type="ValWithTrans" dchg="true"/><!-- AC_ST -->

			<DA name="q" 		fc="ST" bType="Quality" 	qchg="true"/>		<!-- AC_ST -->
			<DA name="t" 		fc="ST" bType="Timestamp"/>				<!-- AC_ST -->
			<DA name="stSeld"	fc="ST"	bType="BOOLEAN" 	dchg="true"/>		<!-- AC_CO_O -->

			<DA name="opRcvd"	fc="OR"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->
			<DA name="opOk"		fc="OR"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->
			<DA name="tOpOk"	fc="OR"	bType="Timestamp"/>				<!-- O -->

			<DA name="subEna"	fc="SV"	bType="BOOLEAN"/>				<!-- PICS_SUBST -->
			<DA name="subVal"	fc="SV"	bType="Struct" type="ValWithTrans"/> 		<!-- PICS_SUBST -->
			<DA name="subQ" 	fc="SV" bType="Quality"/> 				<!-- PICS_SUBST -->
			<DA name="subID" 	fc="SV" bType="VisString64"/>	 			<!-- PICS_SUBST -->
			<DA name="blkEna"	fc="BL"	bType="BOOLEAN"/>				<!-- O -->

			<DA name="ctlModel"	fc="CF"	bType="Enum" type="ctlModelEnumKind"/>		<!-- M -->
			<DA name="sboTimeout" 	fc="CF" bType="INT32U"/> 				<!-- AC_CO_O -->
			<DA name="sboClass"	fc="CF"	bType="Enum" type="sboClassEnumKind"/>   		<!-- AC_CO_O -->
			<DA name="minVal" 	fc="CF" bType="INT8"/>		 			<!-- O -->
			<DA name="maxVal" 	fc="CF" bType="INT8"/>		 			<!-- O -->
			<DA name="operTimeout" 	fc="CF" bType="INT32U"/>	 			<!-- AC_CO_O -->

			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O-->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M-->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M-->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M-->
		</DOType>

		<!-- Controllable analogue set point information (APC)-->
		<!-- Definitions from 61850-8-1 override definitions from 61850-7-3 -->
		<DOType id="APC" cdc="APC">
			<DA name="SBO"		fc="CO"	bType="ObjRef"/>
			<DA name="SBOw"		fc="CO"	bType="Struct" type="APCSelectWithValue"/>
			<DA name="Oper"		fc="CO"	bType="Struct" type="APCOperate"/>
			<DA name="Cancel"   	fc="CO"	bType="Struct" type="APCCancel"/>

			<DA name="origin"	fc="MX"	bType="Struct" type="Originator"/>		<!-- AC_CO_O -->
			<DA name="ctlNum"	fc="MX"	bType="INT8U"	dchg="true"/>			<!-- AC_CO_O -->
			<DA name="mxVal" 	fc="MX" bType="Struct" type="AnalogueValue"/>	 	<!-- AC_ST -->
			<DA name="q" 		fc="MX" bType="Quality"	qchg="true"/>			<!-- AC_ST -->
			<DA name="t" 		fc="MX" bType="Timestamp"/>				<!-- AC_ST -->
			<DA name="stSeld"	fc="MX"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->

			<DA name="opRcvd"	fc="OR"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->
			<DA name="opOk"		fc="OR"	bType="BOOLEAN" 	dchg="true"/>		<!-- O -->
			<DA name="tOpOk"	fc="OR"	bType="Timestamp"/>				<!-- O -->

			<DA name="subEna"	fc="SV"	bType="BOOLEAN"/>				<!-- PICS_SUBST -->
			<DA name="subVal"	fc="SV"	bType="Struct" type="AnalogueValue"/> 		<!-- PICS_SUBST -->
			<DA name="subQ" 	fc="SV" bType="Quality"/> 				<!-- PICS_SUBST -->
			<DA name="subID" 	fc="SV" bType="VisString64"/>	 			<!-- PICS_SUBST -->
			<DA name="blkEna"	fc="BL"	bType="BOOLEAN"/>				<!-- O -->

			<DA name="ctlModel"	fc="CF"	bType="Enum" type="ctlModelEnumKind"/>		<!-- M -->
			<DA name="sboTimeout" 	fc="CF" bType="INT32U"/> 				<!-- AC_CO_O -->
			<DA name="sboClass"	fc="CF"	bType="Enum" type="sboClassEnumKind"/>   		<!-- AC_CO_O -->
			<DA name="units" 	fc="CF" bType="Struct" type="Unit"/>  			<!-- O -->
			<DA name="db"	 	fc="CF" bType="INT32U"/> 				<!-- O -->
			<DA name="sVC"		fc="CF"	bType="Struct" type="ScaledValueConfig"/>	<!-- AC_SCAV -->
			<DA name="minVal" 	fc="CF" bType="Struct" type="AnalogueValue"/>	 	<!-- O -->
			<DA name="maxVal" 	fc="CF" bType="Struct" type="AnalogueValue"/>	 	<!-- O -->
			<DA name="stepSize" 	fc="CF" bType="Struct" type="AnalogueValue"/>	 	<!-- O -->
			<DA name="operTimeout" 	fc="CF" bType="INT32U"/>	 			<!-- AC_CO_O -->

			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O-->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M-->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M-->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M-->
		</DOType>

		<!-- NEW IN EDITION 2. Defined in 61850-7-3 -->
		<DOType id="BAC" cdc="BAC">
			<DA name="origin"	fc="MX"	bType="Struct" type="Originator"/>	<!-- AC_CO_O -->
			<DA name="ctlNum"	fc="MX"	bType="INT8U"/>				<!-- AC_CO_O -->
			<DA name="mxVal"	fc="MX"	bType="Struct" type="AnalogueValue"/>  	<!-- AC_ST -->
			<DA name="q" 		fc="MX" bType="Quality" qchg="true"/>  		<!-- AC_ST -->
			<DA name="t" 		fc="MX" bType="Timestamp"/>    			<!-- AC_ST -->
			<DA name="stSeld"	fc="MX"	bType="BOOLEAN"/>			<!-- O -->
			<DA name="opRcvd"	fc="OR"	bType="BOOLEAN"/>			<!-- O -->
			<DA name="opOk"		fc="OR"	bType="BOOLEAN"/>			<!-- O -->
			<DA name="tOpOk"	fc="OR"	bType="Timestamp"/>			<!-- O -->

			<DA name="subEna"	fc="SV"	bType="BOOLEAN"/>				<!-- PICS_SUBST -->
			<DA name="subVal"	fc="SV"	bType="Struct" type="AnalogueValue"/> 		<!-- PICS_SUBST -->
			<DA name="subQ" 	fc="SV" bType="Quality"/> 				<!-- PICS_SUBST -->
			<DA name="subID" 	fc="SV" bType="VisString64"/>	 			<!-- PICS_SUBST -->
			<DA name="blkEna"	fc="BL"	bType="BOOLEAN"/>				<!-- O -->

			<DA name="persistent" 	fc="CF" bType="BOOLEAN"/> 				<!-- M -->
			<DA name="ctlModel"	fc="CF"	bType="Enum" type="ctlModelEnumKind"/>		<!-- M -->
			<DA name="sboTimeout" 	fc="CF" bType="INT32U"/> 				<!-- AC_CO_O -->
			<DA name="sboClass"	fc="CF"	bType="Enum" type="sboClassEnumKind"/>   		<!-- AC_CO_O -->
			<DA name="units"	fc="CF"	bType="Struct" type="Unit"/>		 	<!-- O -->
			<DA name="dB"		fc="CF"	bType="INT32U"/>			 	<!-- O -->
			<DA name="sVC"   	fc="CF"	bType="Struct" type="ScaledValueConfig"/>	<!-- AC_SCAV-->
			<DA name="minVal" 	fc="CF" bType="Struct" type="AnalogueValue"/>		<!-- O -->
			<DA name="maxVal" 	fc="CF" bType="Struct" type="AnalogueValue"/>		<!-- O -->
			<DA name="stepSize" 	fc="CF" bType="Struct" type="AnalogueValue"/>		<!-- O -->
			<DA name="operTimeout" 	fc="CF" bType="INT32U"/> 				<!-- AC_CO_O -->

			<DA name="d" 		fc="DC" bType="VisString255"/>	       			<!-- O -->
			<DA name="dU" 		fc="DC" bType="Unicode255"/>	       			<!-- O -->
			<DA name="cdcNs" 	fc="EX" bType="VisString255"/>	       			<!-- AC_DLNDA_M -->
			<DA name="cdcName" 	fc="EX" bType="VisString255"/>      			<!-- AC_DLNDA_M -->
			<DA name="dataNs" 	fc="EX" bType="VisString255"/>       			<!-- AC_DLN_M -->
		</DOType>

		<!-- Single point setting (SPG)-->
		<DOType id="SPG" cdc="SPG">
<!-- NOTE: If "setting group" supported, change all fc="SP" to fc="SG"	-->
			<DA name="setVal"	fc="SP"	bType="BOOLEAN"/> 				<!-- AC_NSG_M -->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O -->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->
		</DOType>

		<!-- Integer status setting (ING)-->
		<DOType id="ING" cdc="ING">
<!-- NOTE: If "setting group" supported, change all fc="SP" to fc="SG"	-->
			<DA name="setVal"	fc="SP"	bType="INT32"/>					<!-- AC_NSG_M -->
			<DA name="minVal"	fc="CF"	bType="INT32"/>					<!-- O -->
			<DA name="maxVal"	fc="CF"	bType="INT32"/>					<!-- O -->
			<DA name="stepSize"	fc="CF"	bType="INT32U"/>				<!-- O -->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O -->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->
		</DOType>

		<!-- NEW IN EDITION 2. Defined in 61850-7-3 -->
		<DOType id="ENG" cdc="ENG">
<!-- NOTE: If "setting group" supported, change all fc="SP" to fc="SG"	-->
			<DA name="setVal"	fc="SP"	bType="Enum" type="engSetValEnumKind"/>		<!-- AC_NSG_M -->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O -->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->
		</DOType>

		<!-- NEW IN EDITION 2. Defined in 61850-7-3 -->
		<DOType id="ORG" cdc="ORG">
			<DA name="setSrcRef"	fc="SP"	bType="ObjRef"		dchg="true"/>		<!-- M -->
			<DA name="setTstRef"	fc="SP"	bType="ObjRef"		dchg="true"/>		<!-- GC_2_1 -->
			<DA name="setSrcCB"	fc="SP"	bType="ObjRef"		dchg="true"/>		<!-- O -->
			<DA name="setTstCB"	fc="SP"	bType="ObjRef"		dchg="true"/>		<!-- GC_CON_setTstRef -->
			<DA name="intAddr"	fc="SP"	bType="VisString255"	dchg="true"/>		<!-- O -->
			<DA name="tstEna"	fc="SP"	bType="BOOLEAN"		dchg="true"/>		<!-- GC_2_1 -->
			<DA name="purpose"	fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O-->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->
		</DOType>

		<!-- NEW IN EDITION 2. Defined in 61850-7-3 -->
		<DOType id="TSG" cdc="TSG">
<!-- NOTE: If "setting group" supported, change all fc="SP" to fc="SG"	-->
			<DA name="setTm"	fc="SP"	bType="Timestamp"	dchg="true"/>		<!-- AC_NSG_C1 -->
			<DA name="setCal"	fc="SP"	bType="Struct" type="CalendarTime"	dchg="true"/>	<!-- AC_NSG_C1 -->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O -->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->
		</DOType>

		<!-- NEW IN EDITION 2. Defined in 61850-7-3 -->
		<!-- NOTE: CUG is not used by any DO here but it may be used in SCL files for 61850-7-420 devices. -->
		<!-- NOTE: CUG is included here only for reference. -->
		<DOType id="CUG" cdc="CUG">
<!-- NOTE: If "setting group" supported, change all fc="SP" to fc="SG"	-->
			<DA name="cur"		fc="SP"	bType="Currency"/>				<!-- AC_NSG_M -->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O -->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->
		</DOType>

		<!-- NEW IN EDITION 2. Defined in 61850-7-3 -->
		<DOType id="VSG" cdc="VSG">
<!-- NOTE: If "setting group" supported, change all fc="SP" to fc="SG"	-->
			<DA name="setVal"	fc="SP"	bType="VisString255"/>				<!-- AC_NSG_M -->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O -->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->
		</DOType>

		<!-- Analogue setting (ASG)-->
		<DOType id="ASG" cdc="ASG">
<!-- NOTE: If "setting group" supported, change all fc="SP" to fc="SG"	-->
			<DA name="setMag"	fc="SP"	bType="Struct" type="AnalogueValue"/>    	<!-- AC_NSG_M -->
			<DA name="units"	fc="CF"	bType="Struct" type="Unit"/>		 	<!-- O -->
			<DA name="sVC"   	fc="CF"	bType="Struct" type="ScaledValueConfig"/>	<!-- AC_SCAV-->
			<DA name="minVal"	fc="CF"	bType="Struct" type="AnalogueValue"/>	 	<!-- O -->
			<DA name="maxVal"	fc="CF"	bType="Struct" type="AnalogueValue"/>	 	<!-- O -->
			<DA name="stepSize"	fc="CF"	bType="Struct" type="AnalogueValue"/>	 	<!-- O -->
			<DA name="d"		fc="DC"	bType="VisString255"/>			 	<!-- O -->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>			 	<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>			 	<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>			 	<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/> 				<!-- AC_DLN_M -->
		</DOType>

		<!-- Setting curve (CURVE)-->
		<DOType id="CURVE" cdc="CURVE">
<!-- NOTE: If "setting group" supported, change all fc="SP" to fc="SG"	-->
			<DA name="setCharact"	fc="SP"	bType="Enum" type="setCharactEnumKind"/>		<!-- AC_NSG_M -->
			<DA name="setParA"	fc="SP"	bType="FLOAT32"/>				<!-- AC_NSG_O -->
			<DA name="setParB"	fc="SP"	bType="FLOAT32"/>				<!-- AC_NSG_O -->
			<DA name="setParC"	fc="SP"	bType="FLOAT32"/>				<!-- AC_NSG_O -->
			<DA name="setParD"	fc="SP"	bType="FLOAT32"/>				<!-- AC_NSG_O -->
			<DA name="setParE"	fc="SP"	bType="FLOAT32"/>				<!-- AC_NSG_O -->
			<DA name="setParF"	fc="SP"	bType="FLOAT32"/>				<!-- AC_NSG_O -->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O -->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->
		</DOType>

		<!-- NEW IN EDITION 2. Defined in 61850-7-3 -->
		<DOType id="CSG" cdc="CSG">
<!-- NOTE: If "setting group" supported, change all fc="SP" to fc="SG"	-->
			<DA name="pointZ"	fc="SP"	bType="FLOAT32"/>				<!-- AC_NSG_O -->
			<DA name="numPts"	fc="SP"	bType="INT16U"/>				<!-- AC_NSG_O -->
			<DA name="crvPts"	fc="SP"	bType="Struct" type="Point" count="16"/>	<!-- M-->

			<DA name="xUnits" 	fc="CF" bType="Struct" type="Unit"/>  			<!-- M-->
			<DA name="yUnits" 	fc="CF" bType="Struct" type="Unit"/>  			<!-- M-->
			<DA name="zUnits" 	fc="CF" bType="Struct" type="Unit"/>  			<!-- O-->
			<DA name="maxPts" 	fc="CF" bType="INT16U"/>	       			<!-- M -->
			<DA name="xD" 		fc="DC" bType="VisString255"/>	       			<!-- M -->
			<DA name="xDU" 		fc="DC" bType="Unicode255"/>	       			<!-- O -->
			<DA name="yD" 		fc="DC" bType="VisString255"/>	       			<!-- M -->
			<DA name="yDU" 		fc="DC" bType="Unicode255"/>	       			<!-- O -->
			<DA name="zD" 		fc="DC" bType="VisString255"/>	       			<!-- O -->
			<DA name="zDU" 		fc="DC" bType="Unicode255"/>	       			<!-- O -->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- O -->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->
		</DOType>

		<!-- Device name plate (DPL)-->
		<DOType id="DPL" cdc="DPL">
			<DA name="vendor"	fc="DC"	bType="VisString255"/>				<!-- M -->
			<DA name="hwRev"	fc="DC"	bType="VisString255"/>				<!-- O -->
			<DA name="swRev"	fc="DC"	bType="VisString255"/>				<!-- O -->
			<DA name="serNum"	fc="DC"	bType="VisString255"/>				<!-- O -->
			<DA name="model"	fc="DC"	bType="VisString255"/>				<!-- O -->
			<DA name="location"	fc="DC"	bType="VisString255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->
		</DOType>

		<!-- Logical Node name plate (LPL)-->
		<DOType id="LPL" cdc="LPL">
			<DA name="vendor"	fc="DC"	bType="VisString255"/>				<!-- M -->
			<DA name="swRev"	fc="DC"	bType="VisString255"/>				<!-- M -->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- M -->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="configRev"	fc="DC"	bType="VisString255">
			    <Val>Rev 3.45</Val>
			</DA>
			<DA name="ldNs"		fc="EX"	bType="VisString255"/>				<!-- AC_LN0_EX -->
			<DA name="lnNs"		fc="EX"	bType="VisString255"/>				<!-- AC_DLD_M -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->
		</DOType>

		<!-- Curve shape description (CSD)-->
		<DOType id="CSD" cdc="CSD">
			<DA name="xUnit"	fc="DC"	bType="Struct" type="Unit"/>			<!-- M -->
			<DA name="xD"		fc="DC"	bType="VisString255"/>				<!-- M -->
			<DA name="yUnit"	fc="DC"	bType="Struct" type="Unit"/>			<!-- M -->
			<DA name="yD"		fc="DC"	bType="VisString255"/>				<!-- M -->
			<DA name="numPts"	fc="DC"	bType="INT16U"/>				<!-- M -->
			<DA name="crvPts"	fc="DC"	bType="Struct" type="Point" count="16"/>	<!-- M-->
			<DA name="d"		fc="DC"	bType="VisString255"/>				<!-- M -->
			<DA name="dU"		fc="DC"	bType="Unicode255"/>				<!-- O -->
			<DA name="cdcNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="cdcName"	fc="EX"	bType="VisString255"/>				<!-- AC_DLNDA_M -->
			<DA name="dataNs"	fc="EX"	bType="VisString255"/>				<!-- AC_DLN_M -->
		</DOType>

<!-- the following DA Types are taken from IEC 61850-7-3 and have all optional attributes included -->
		<!-- Analogue value -->
		<!-- f*(10**units.multiplier) = (i*scaleFactor) +offset -->
		<DAType id="AnalogueValue">		<!-- sec 6.3 -->
			<BDA name="i" 			bType="INT32"/>	 				<!-- GC_1-->
			<BDA name="f" 			bType="FLOAT32"/>				<!-- GC_1-->
		</DAType>
		<DAType id="ScaledValueConfig">		<!-- sec 6.4 Configuration of analogue value-->
			<BDA name="scaleFactor" 	bType="FLOAT32"/>				<!-- M-->
			<BDA name="offset" 		bType="FLOAT32"/>				<!-- M-->
		</DAType>
		<DAType id="RangeConfig"> 		<!-- sec 6.5 Range configuration-->
			<BDA name="hhLim" 		bType="Struct" type="AnalogueValue"/>		<!-- M-->
			<BDA name="hLim" 		bType="Struct" type="AnalogueValue"/>		<!-- M-->
			<BDA name="lLim" 		bType="Struct" type="AnalogueValue"/>		<!-- M-->
			<BDA name="llLim" 		bType="Struct" type="AnalogueValue"/>		<!-- M-->
			<BDA name="min" 		bType="Struct" type="AnalogueValue"/>		<!-- M-->
			<BDA name="max" 		bType="Struct" type="AnalogueValue"/>		<!-- M-->
		</DAType>
		<DAType id="ValWithTrans"> 		<!-- sec 6.6 Step position with transient indication-->
			<BDA name="posVal"  		bType="INT8"/>					<!-- M-->
			<BDA name="transInd" 		bType="BOOLEAN"/>				<!-- O-->
		</DAType>
		<DAType id="PulseConfig">		<!-- sec 6.7 Pulse configuration-->
			<BDA name="cmdQual" 		bType="Enum" type="cmdQualEnumKind"/><!-- M-->
			<BDA name="onDur" 		bType="INT32U"/>				<!-- M-->
			<BDA name="offDur" 		bType="INT32U"/>				<!-- M-->
			<BDA name="numPls" 		bType="INT32U"/>				<!-- M-->
		</DAType>
		<DAType id="Originator"> 		<!-- sec 6.8 Originator-->
			<BDA name="orCat"  		bType="Enum" type="orCatEnumKind"/>			<!-- M-->
			<BDA name="orIdent" 		bType="Octet64"/>				<!-- M-->
		</DAType>
		<DAType id="Unit">   			<!-- sec 6.9 Unit-->
			<BDA name="SIUnit" 		bType="Enum" type="SIUnitEnumKind"/>		<!-- M-->
			<BDA name="multiplier"          bType="Enum" type="multiplierEnumKind"/>		<!-- O-->
		</DAType>
		<DAType id="Vector">			<!-- sec 6.10  Vector Definition -->
			<BDA name="mag" 		bType="Struct" type="AnalogueValue"/>		<!-- M-->
			<BDA name="ang"			bType="Struct" type="AnalogueValue"/>		<!-- O-->
		</DAType>
		<DAType id="Point">			<!-- sec 6.10  Point -->
			<BDA name="xVal" 		bType="FLOAT32"/>				<!-- M-->
			<BDA name="yVal"		bType="FLOAT32"/>				<!-- M-->
		</DAType>

		<!-- NEW IN EDITION 2. Defined in 61850-7-3 -->
		<DAType id="Cell">
			<BDA name="xStart" 		bType="FLOAT32"/>				<!-- M-->
			<BDA name="xEnd"		bType="FLOAT32"/>				<!-- O-->
			<BDA name="yStart" 		bType="FLOAT32"/>				<!-- O-->
			<BDA name="yEnd"		bType="FLOAT32"/>				<!-- O-->
		</DAType>

		<!-- NEW IN EDITION 2. Defined in 61850-7-3 -->
		<DAType id="CalendarTime">
			<BDA name="occ" 		bType="FLOAT32"/>				<!-- M-->
			<BDA name="occType" 		bType="Enum" type="occTypeEnumKind"/>		<!-- M-->
			<BDA name="occPer" 		bType="Enum" type="occPerEnumKind"/>		<!-- M-->
			<BDA name="weekDay" 		bType="Enum" type="weekDayEnumKind"/>		<!-- M-->
			<BDA name="month" 		bType="Enum" type="monthEnumKind"/>		<!-- M-->
			<BDA name="day" 		bType="INT8U"/>					<!-- M-->
			<BDA name="hr" 			bType="INT8U"/>					<!-- M-->
			<BDA name="mn"	 		bType="INT8U"/>					<!-- M-->
		</DAType>

		<DAType id="SPCSelectWithValue">
			<BDA name="ctlVal"	bType="BOOLEAN"/>				<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
			<BDA name="Check"	bType="Check"/> 	 			<!--  -->
		</DAType>

		<DAType id="SPCOperate">
			<BDA name="ctlVal"	bType="BOOLEAN"/>				<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
			<BDA name="Check"	bType="Check"/> 	 			<!--  -->
		</DAType>

		<DAType id="SPCCancel">
			<BDA name="ctlVal"	bType="BOOLEAN"/>				<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
		</DAType>


		<DAType id="DPCSelectWithValue">
			<BDA name="ctlVal"	bType="BOOLEAN"/>				<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
			<BDA name="Check"	bType="Check"/> 	 			<!--  -->
		</DAType>

		<DAType id="DPCOperate">
			<BDA name="ctlVal"	bType="BOOLEAN"/>				<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
			<BDA name="Check"	bType="Check"/> 	 			<!--  -->
		</DAType>

		<DAType id="DPCCancel">
			<BDA name="ctlVal"	bType="BOOLEAN"/>				<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
		</DAType>

		<!-- the following DATypes are from 61850-8-1 -->

		<DAType id="INCSelectWithValue">
			<BDA name="ctlVal"	bType="INT32"/>					<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
			<BDA name="Check"	bType="Check"/> 	 			<!--  -->
		</DAType>

		<DAType id="INCOperate">
			<BDA name="ctlVal"	bType="INT32"/>					<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
			<BDA name="Check"	bType="Check"/> 	 			<!--  -->
		</DAType>

		<DAType id="INCCancel">
			<BDA name="ctlVal"	bType="INT32"/>					<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
		</DAType>

		<DAType id="ENC_Mod_SelectWithValue">
		<!--DEBUG: do we care about type for tracking (or only ctlVal in Oper)? -->
			<BDA name="ctlVal"	bType="Enum" type="Mod"/>			<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
			<BDA name="Check"	bType="Check"/> 	 			<!--  -->
		</DAType>

		<DAType id="ENC_Mod_Operate">
		<!--DEBUG: type must match type of ctlVal in tracking struct. -->
			<BDA name="ctlVal"	bType="Enum" type="Mod"/>			<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
			<BDA name="Check"	bType="Check"/> 	 			<!--  -->
		</DAType>

		<DAType id="ENC_Mod_Cancel">
		<!--DEBUG: do we care about type for tracking (or only ctlVal in Oper)? -->
			<BDA name="ctlVal"	bType="Enum" type="Mod"/>			<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
		</DAType>

		<DAType id="ENC_OpModSyn_SelectWithValue">
			<BDA name="ctlVal"	bType="Enum" type="OpModSyn"/>			<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
			<BDA name="Check"	bType="Check"/> 	 			<!--  -->
		</DAType>

		<DAType id="ENC_OpModSyn_Operate">
			<BDA name="ctlVal"	bType="Enum" type="OpModSyn"/>			<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
			<BDA name="Check"	bType="Check"/> 	 			<!--  -->
		</DAType>

		<DAType id="ENC_OpModSyn_Cancel">
			<BDA name="ctlVal"	bType="Enum" type="OpModSyn"/>			<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
		</DAType>

		<DAType id="ENC_PmpCtlGen_Operate">
			<BDA name="ctlVal"	bType="Enum" type="PmpCtlGen"/>			<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
			<BDA name="Check"	bType="Check"/> 	 			<!--  -->
		</DAType>

		<DAType id="ENC_PmpCtlGen_Cancel">
			<BDA name="ctlVal"	bType="Enum" type="PmpCtlGen"/>			<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
		</DAType>

		<DAType id="ENC_PmpCtl_Operate">
			<BDA name="ctlVal"	bType="Enum" type="PmpCtl"/>			<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
			<BDA name="Check"	bType="Check"/> 	 			<!--  -->
		</DAType>

		<DAType id="ENC_PmpCtl_Cancel">
			<BDA name="ctlVal"	bType="Enum" type="PmpCtl"/>			<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
		</DAType>

		<DAType id="ENC_FanCtlGen_Operate">
			<BDA name="ctlVal"	bType="Enum" type="FanCtlGen"/>			<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
			<BDA name="Check"	bType="Check"/> 	 			<!--  -->
		</DAType>

		<DAType id="ENC_FanCtlGen_Cancel">
			<BDA name="ctlVal"	bType="Enum" type="FanCtlGen"/>			<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
		</DAType>

		<DAType id="ENC_FanCtl_Operate">
			<BDA name="ctlVal"	bType="Enum" type="FanCtl"/>			<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
			<BDA name="Check"	bType="Check"/> 	 			<!--  -->
		</DAType>

		<DAType id="ENC_FanCtl_Cancel">
			<BDA name="ctlVal"	bType="Enum" type="FanCtl"/>			<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
		</DAType>

		<!-- the following DATypes are from 61850-8-1 -->

		<DAType id="BSCSelectWithValue">
			<BDA name="ctlVal"	bType="Dbpos"/>					<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
			<BDA name="Check"	bType="Check"/> 	 			<!--  -->
		</DAType>

		<DAType id="BSCOperate">
			<BDA name="ctlVal"	bType="Dbpos"/>					<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
			<BDA name="Check"	bType="Check"/> 	 			<!--  -->
		</DAType>

		<DAType id="BSCCancel">
			<BDA name="ctlVal"	bType="Dbpos"/>					<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
		</DAType>

		<!-- the following DATypes are from 61850-8-1 -->

		<DAType id="ISCSelectWithValue">
			<BDA name="ctlVal"	bType="INT8"/>					<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
			<BDA name="Check"	bType="Check"/> 	 			<!--  -->
		</DAType>

		<DAType id="ISCOperate">
			<BDA name="ctlVal"	bType="INT8"/>					<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
			<BDA name="Check"	bType="Check"/> 	 			<!--  -->
		</DAType>

		<DAType id="ISCCancel">
			<BDA name="ctlVal"	bType="INT8"/>					<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
		</DAType>

		<!-- the following DATypes are from 61850-8-1 -->

		<DAType id="APCSelectWithValue">
			<BDA name="ctlVal"	bType="Struct" type="AnalogueValue"/> 		<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
			<BDA name="Check"	bType="Check"/> 	 			<!--  -->
		</DAType>

		<DAType id="APCOperate">
			<BDA name="ctlVal"	bType="Struct" type="AnalogueValue"/> 		<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
			<BDA name="Check"	bType="Check"/> 	 			<!--  -->
		</DAType>

		<DAType id="APCCancel">
			<BDA name="ctlVal"	bType="Struct" type="AnalogueValue"/> 		<!-- M(from base CDC) -->
			<BDA name="operTm"	bType="Timestamp"/>				<!-- AC_CO_TA_E_M -->
			<BDA name="origin"	bType="Struct" type="Originator"/>		<!-- M -->
			<BDA name="ctlNum"	bType="INT8U"/>					<!-- M -->
			<BDA name="T"		bType="Timestamp"/> 				<!--  -->
			<BDA name="Test"	bType="BOOLEAN"/> 				<!--  -->
		</DAType>

		<EnumType id="ctlModelEnumKind">
			<EnumVal ord="0">status-only</EnumVal>
			<EnumVal ord="1">direct-with-normal-security</EnumVal>
			<EnumVal ord="2">sbo-with-normal-security</EnumVal>
			<EnumVal ord="3">direct-with-enhanced-security</EnumVal>
			<EnumVal ord="4">sbo-with-enhanced-security</EnumVal>
		</EnumType>

		<EnumType id="dirGeneralEnumKind">
			<EnumVal ord="0">unknown</EnumVal>
			<EnumVal ord="1">forward</EnumVal>
			<EnumVal ord="2">backward</EnumVal>
			<EnumVal ord="3">both</EnumVal>
		</EnumType>

		<EnumType id="dirPhsEnumKind">
			<EnumVal ord="0">unknown</EnumVal>
			<EnumVal ord="1">forward</EnumVal>
			<EnumVal ord="2">backward</EnumVal>
		</EnumType>

		<EnumType id="sboClassEnumKind">
			<EnumVal ord="0">operate-once</EnumVal>
			<EnumVal ord="1">operate-many</EnumVal>
		</EnumType>

		<EnumType id="hvRefEnumKind">
			<EnumVal ord="0">fundamental</EnumVal>
			<EnumVal ord="1">rms</EnumVal>
			<EnumVal ord="2">absolute</EnumVal>
		</EnumType>

		<EnumType id="sevEnumKind">
			<EnumVal ord="0">unknown</EnumVal>
			<EnumVal ord="1">critical</EnumVal>
			<EnumVal ord="2">major</EnumVal>
			<EnumVal ord="3">minor</EnumVal>
			<EnumVal ord="4">warning</EnumVal>
		</EnumType>

		<EnumType id="cmdQualEnumKind">
			<EnumVal ord="0">pulse</EnumVal>
			<EnumVal ord="1">persistent</EnumVal>
		</EnumType>

		<EnumType id="orCatEnumKind">
			<EnumVal ord="0">not-supported</EnumVal>
			<EnumVal ord="1">bay-control</EnumVal>
			<EnumVal ord="2">station-control</EnumVal>
			<EnumVal ord="3">remote-control</EnumVal>
			<EnumVal ord="4">automatic-bay</EnumVal>
			<EnumVal ord="5">automatic-station</EnumVal>
			<EnumVal ord="6">automatic-remote</EnumVal>
			<EnumVal ord="7">maintenance</EnumVal>
			<EnumVal ord="8">process</EnumVal>
		</EnumType>

		<EnumType id="SIUnitEnumKind">
			<EnumVal ord="1">dimensionless</EnumVal>
			<EnumVal ord="2">meter</EnumVal>
			<EnumVal ord="3">kilogram</EnumVal>
			<EnumVal ord="4">second</EnumVal>
			<EnumVal ord="5">ampere</EnumVal>
			<EnumVal ord="6">Kelvin</EnumVal>
			<EnumVal ord="7">mole</EnumVal>
			<EnumVal ord="8">candela</EnumVal>
			<EnumVal ord="9">degrees</EnumVal>
			<EnumVal ord="10">radian</EnumVal>
			<EnumVal ord="11">steradian</EnumVal>
			<EnumVal ord="21">Gray</EnumVal>
			<EnumVal ord="22">becquerel</EnumVal>
			<EnumVal ord="23">degrees Celsius</EnumVal>
			<EnumVal ord="24">sievert</EnumVal>
			<EnumVal ord="25">farad</EnumVal>
			<EnumVal ord="26">coulomb</EnumVal>
			<EnumVal ord="27">siemens</EnumVal>
			<EnumVal ord="28">henry</EnumVal>
			<EnumVal ord="29">volt</EnumVal>
			<EnumVal ord="30">ohm</EnumVal>
			<EnumVal ord="31">joule</EnumVal>
			<EnumVal ord="32">newton</EnumVal>
			<EnumVal ord="33">hertz</EnumVal>
			<EnumVal ord="34">lux</EnumVal>
			<EnumVal ord="35">lumen</EnumVal>
			<EnumVal ord="36">weber</EnumVal>
			<EnumVal ord="37">tesla</EnumVal>
			<EnumVal ord="38">watt</EnumVal>
			<EnumVal ord="39">pascal</EnumVal>
			<EnumVal ord="41">square meter</EnumVal>
			<EnumVal ord="42">cubic meter</EnumVal>
			<EnumVal ord="43">meters per second</EnumVal>
			<EnumVal ord="44">meters per second2</EnumVal>
			<EnumVal ord="45">cubic meters per second</EnumVal>
			<EnumVal ord="46">meters/cubic meter</EnumVal>
			<EnumVal ord="47">kilogram meter</EnumVal>
			<EnumVal ord="48">kilogram/cubic meter</EnumVal>
			<EnumVal ord="49">meter square/second</EnumVal>
			<EnumVal ord="50">watt/meter Kelvin</EnumVal>
			<EnumVal ord="51">joule/Kelvin</EnumVal>
			<EnumVal ord="52">parts per million</EnumVal>
			<EnumVal ord="53">rotations per second</EnumVal>
			<EnumVal ord="54">radian per second</EnumVal>
			<EnumVal ord="61">volt ampere</EnumVal>
			<EnumVal ord="62">watts</EnumVal>
			<EnumVal ord="63">volt ampere reactive</EnumVal>
			<EnumVal ord="64">phase angle degrees</EnumVal>
			<EnumVal ord="65">Power factor</EnumVal>
			<EnumVal ord="66">volt seconds</EnumVal>
			<EnumVal ord="67">volt square</EnumVal>
			<EnumVal ord="68">amp second</EnumVal>
			<EnumVal ord="69">amp square</EnumVal>
			<EnumVal ord="70">amp square second</EnumVal>
			<EnumVal ord="71">volt ampere hours</EnumVal>
			<EnumVal ord="72">watt hours</EnumVal>
			<EnumVal ord="73">volt ampere reactive hours</EnumVal>
			<EnumVal ord="74">volts per hertz</EnumVal>
		</EnumType>

		<EnumType id="multiplierEnumKind">
			<EnumVal ord="-24">Yocto</EnumVal>
			<EnumVal ord="-21">Zepto</EnumVal>
			<EnumVal ord="-18">Atto</EnumVal>
			<EnumVal ord="-15">Femto</EnumVal>
			<EnumVal ord="-12">Pico</EnumVal>
			<EnumVal ord="-9">Nano</EnumVal>
			<EnumVal ord="-6">Micro</EnumVal>
			<EnumVal ord="-3">Milli</EnumVal>
			<EnumVal ord="-2">Centi</EnumVal>
			<EnumVal ord="-1">Deci</EnumVal>
			<EnumVal ord="0">zeroNoValue</EnumVal>
			<EnumVal ord="1">Deca</EnumVal>
			<EnumVal ord="2">Hecto</EnumVal>
			<EnumVal ord="3">Kilo</EnumVal>
			<EnumVal ord="6">Mega</EnumVal>
			<EnumVal ord="9">Giga</EnumVal>
			<EnumVal ord="12">Tera</EnumVal>
			<EnumVal ord="15">Petra</EnumVal>
			<EnumVal ord="18">Exa</EnumVal>
			<EnumVal ord="21">Zetta</EnumVal>
			<EnumVal ord="24">Yotta</EnumVal>
		</EnumType>

		<EnumType id="rangeEnumKind">
			<EnumVal ord="0">normal</EnumVal>
			<EnumVal ord="1">high</EnumVal>
			<EnumVal ord="2">low</EnumVal>
			<EnumVal ord="3">high-high</EnumVal>
			<EnumVal ord="4">low-low</EnumVal>
		</EnumType>

		<EnumType id="angRefEnumKind">
			<EnumVal ord="0">V</EnumVal>
			<EnumVal ord="1">A</EnumVal>
			<EnumVal ord="2">other</EnumVal>
		</EnumType>

		<EnumType id="angRefWYEEnumKind">
			<EnumVal ord="0">Va</EnumVal>
			<EnumVal ord="1">Vb</EnumVal>
			<EnumVal ord="2">Vc</EnumVal>
			<EnumVal ord="3">Aa</EnumVal>
			<EnumVal ord="4">Ab</EnumVal>
			<EnumVal ord="5">Ac</EnumVal>
			<EnumVal ord="6">Vab</EnumVal>
			<EnumVal ord="7">Vbc</EnumVal>
			<EnumVal ord="8">Vca</EnumVal>
			<EnumVal ord="9">Vother</EnumVal>
			<EnumVal ord="10">Aother</EnumVal>
		</EnumType>

		<EnumType id="phsRefEnumKind">
			<EnumVal ord="0">A</EnumVal>
			<EnumVal ord="1">B</EnumVal>
			<EnumVal ord="2">C</EnumVal>
		</EnumType>

		<EnumType id="setCharactEnumKind">
			<EnumVal ord="0"/>
			<EnumVal ord="1">ANSI Extremly Inverse</EnumVal>
			<EnumVal ord="2">ANSI Very Inverse</EnumVal>
			<EnumVal ord="3">ANSI Normal Inverse</EnumVal>
			<EnumVal ord="4">ANSI Moderate Inverse</EnumVal>
			<EnumVal ord="5">ANSI Definite Time</EnumVal>
			<EnumVal ord="6">Long-Time Extremely Inverse</EnumVal>
			<EnumVal ord="7">Long-Time Very Inverse</EnumVal>
			<EnumVal ord="8">Long-Time Inverse</EnumVal>
			<EnumVal ord="9">IEC Normal Inverse</EnumVal>
			<EnumVal ord="10">IEC Very Inverse</EnumVal>
			<EnumVal ord="11">IEC Inverse</EnumVal>
			<EnumVal ord="12">IEC Extremely Inverse</EnumVal>
			<EnumVal ord="13">IEC Short-Time Inverse</EnumVal>
			<EnumVal ord="14">IEC Long-Time Inverse</EnumVal>
			<EnumVal ord="15">IEC Definite Time</EnumVal>
			<EnumVal ord="16">Reserved</EnumVal>
		</EnumType>

		<EnumType id="seqTEnumKind">
			<EnumVal ord="0">pos-neg-zero</EnumVal>
			<EnumVal ord="1">dir-quad-zero</EnumVal>
		</EnumType>
		<!-- NEW IN EDITION 2 -->
		<!-- DEBUG: need to define separate Enum for each use of ENG -->
		<EnumType id="engSetValEnumKind">
			<EnumVal ord="0">0</EnumVal>
			<EnumVal ord="1">1</EnumVal>
		</EnumType>
		<!-- NEW IN EDITION 2 -->
		<EnumType id="occTypeEnumKind">
			<EnumVal ord="0">Time</EnumVal>
			<EnumVal ord="1">WeekDay</EnumVal>
			<EnumVal ord="2">WeekOfYear</EnumVal>
			<EnumVal ord="3">DayOfMonth</EnumVal>
			<EnumVal ord="4">DayOfYear</EnumVal>
		</EnumType>
		<!-- NEW IN EDITION 2 -->
		<EnumType id="occPerEnumKind">
			<EnumVal ord="0">Hour</EnumVal>
			<EnumVal ord="1">Day</EnumVal>
			<EnumVal ord="2">Week</EnumVal>
			<EnumVal ord="3">Month</EnumVal>
			<EnumVal ord="4">Year</EnumVal>
		</EnumType>
		<!-- NEW IN EDITION 2 -->
		<EnumType id="weekDayEnumKind">
			<EnumVal ord="0">reserved</EnumVal>
			<EnumVal ord="1">Monday</EnumVal>
			<EnumVal ord="2">Tuesday</EnumVal>
			<EnumVal ord="3">Wednesday</EnumVal>
			<EnumVal ord="4">Thursday</EnumVal>
			<EnumVal ord="5">Friday</EnumVal>
			<EnumVal ord="6">Saturday</EnumVal>
			<EnumVal ord="7">Sunday</EnumVal>
		</EnumType>
		<!-- NEW IN EDITION 2 -->
		<EnumType id="monthEnumKind">
			<EnumVal ord="0">reserved</EnumVal>
			<EnumVal ord="1">January</EnumVal>
			<EnumVal ord="2">February</EnumVal>
			<EnumVal ord="3">March</EnumVal>
			<EnumVal ord="4">April</EnumVal>
			<EnumVal ord="5">May</EnumVal>
			<EnumVal ord="6">June</EnumVal>
			<EnumVal ord="7">July</EnumVal>
			<EnumVal ord="8">August</EnumVal>
			<EnumVal ord="9">September</EnumVal>
			<EnumVal ord="10">October</EnumVal>
			<EnumVal ord="11">November</EnumVal>
			<EnumVal ord="12">December</EnumVal>
		</EnumType>
		<!-- NEW IN EDITION 2 -->
		<EnumType id="ServiceTypeEnumKind">
			<!-- DEBUG: add more EnumVal -->
			<EnumVal ord="0">GetServerDirectory</EnumVal>
			<EnumVal ord="1">Associate</EnumVal>
			<EnumVal ord="2">Abort</EnumVal>
			<EnumVal ord="3">Release</EnumVal>
		</EnumType>
		<!-- NEW IN EDITION 2 -->
		<EnumType id="SmpModEnumKind">
			<!-- DEBUG: what are the values? -->
			<EnumVal ord="0">0</EnumVal>
			<EnumVal ord="1">1</EnumVal>
		</EnumType>
		<!-- NEW IN EDITION 2 -->
		<EnumType id="encEnumKind">
			<!-- DEBUG: what are the values? -->
			<EnumVal ord="0">0</EnumVal>
			<EnumVal ord="1">1</EnumVal>
		</EnumType>
                <EnumType id="Mod">
			<EnumVal ord="1">on</EnumVal>
			<EnumVal ord="2">blocked</EnumVal>
			<EnumVal ord="3">test</EnumVal>
			<EnumVal ord="4">test/blocked</EnumVal>
			<EnumVal ord="5">off</EnumVal>
		</EnumType>
                <EnumType id="OpModSyn">
			<EnumVal ord="1">Automatic synchronising mode</EnumVal>
			<EnumVal ord="2">Automatic paralleling mode</EnumVal>
			<EnumVal ord="3">Manual mode</EnumVal>
			<EnumVal ord="4">Test mode</EnumVal>
		</EnumType>
                <EnumType id="PmpCtlGen">
			<EnumVal ord="1">Inactive</EnumVal>
			<EnumVal ord="2">Stage 1</EnumVal>
			<EnumVal ord="3">Stage 2</EnumVal>
			<EnumVal ord="4">Stage 3</EnumVal>
		</EnumType>
                <EnumType id="PmpCtl">
			<EnumVal ord="1">Inactive</EnumVal>
			<EnumVal ord="2">Stage 1</EnumVal>
			<EnumVal ord="3">Stage 2</EnumVal>
			<EnumVal ord="4">Stage 3</EnumVal>
		</EnumType>
                <EnumType id="FanCtlGen">
			<EnumVal ord="1">Inactive</EnumVal>
			<EnumVal ord="2">Stage 1</EnumVal>
			<EnumVal ord="3">Stage 2</EnumVal>
			<EnumVal ord="4">Stage 3</EnumVal>
		</EnumType>
                <EnumType id="FanCtl">
			<EnumVal ord="1">Inactive</EnumVal>
			<EnumVal ord="2">Stage 1</EnumVal>
			<EnumVal ord="3">Stage 2</EnumVal>
			<EnumVal ord="4">Stage 3</EnumVal>
		</EnumType>
	</DataTypeTemplates>
</SCL>
