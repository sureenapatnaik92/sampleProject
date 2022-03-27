<?xml version="1.0" encoding="UTF-8"?>
<SCL xmlns:sxy="http://www.iec.ch/61850/2003/SCLcoordinates" version="2007" revision="B" release="4" xmlns:check="http://www.kalkitech/SCL" xmlns="http://www.iec.ch/61850/2003/SCL">
  <Header id="project2" version="1" revision="1" toolID="SCL Manager" nameStructure="IEDName">
    <History>
      <Hitem version="1" revision="1" when="7/18/2018 10:14:06 AM" />
      <Hitem version="2" revision="2" when="7/23/2018 11:30:08 AM" />
      <Hitem version="3" revision="3" when="20-01-2020 13:05:48" who="SCL Manager" what="Modifications" why="Improvements" />
      <Hitem version="4" revision="4" when="20-01-2020 14:03:17" who="SCL Manager" what="Modifications" why="Improvements" />
      <Hitem version="1" revision="1" when="20-01-2020 14:06:01" who="SCL Manager" what="Modifications" why="Improvements" />
    </History>
  </Header>
  <Communication>
    <SubNetwork name="SubNetwork" type="8-MMS" desc="">
      <Text>Station bus</Text>
      <BitRate unit="b/s">10</BitRate>
      <ConnectedAP iedName="IED1" apName="accessPoint1">
        <Address>
          <P type="IP">10.0.0.1</P>
          <P type="IP-SUBNET">255.255.255.0</P>
          <P type="IP-GATEWAY">192.168.1.101</P>
          <P type="OSI-TSEL">0001</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-AP-Title">1,3,9999,23</P>
          <P type="OSI-AE-Qualifier">23</P>
        </Address>
      </ConnectedAP>
      <ConnectedAP iedName="IED2" apName="accessPoint1">
        <Address>
          <P type="IP">10.0.0.2</P>
          <P type="IP-SUBNET">255.255.255.0</P>
          <P type="IP-GATEWAY">192.168.1.101</P>
          <P type="OSI-TSEL">0001</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-AP-Title">1,3,9999,23</P>
          <P type="OSI-AE-Qualifier">23</P>
        </Address>
        <GSE ldInst="Control" cbName="CSWISTSGCB" desc="">
          <Address>
            <P type="MAC-Address">01-0C-CD-01-00-01</P>
            <P type="APPID">0000</P>
            <P type="VLAN-ID">001</P>
            <P type="VLAN-PRIORITY">4</P>
          </Address>
          <MinTime unit="s" multiplier="m">10</MinTime>
          <MaxTime unit="s" multiplier="m">1000</MaxTime>
        </GSE>
        <GSE ldInst="Systems" cbName="INDGGIOGCB" desc="">
          <Address>
            <P type="MAC-Address">01-0C-CD-01-00-01</P>
            <P type="APPID">0001</P>
            <P type="VLAN-ID">001</P>
            <P type="VLAN-PRIORITY">4</P>
          </Address>
          <MinTime unit="s" multiplier="m">10</MinTime>
          <MaxTime unit="s" multiplier="m">1000</MaxTime>
        </GSE>
        <GSE ldInst="Systems" cbName="PUBGGIOGCB" desc="">
          <Address>
            <P type="MAC-Address">01-0C-CD-01-00-01</P>
            <P type="APPID">0002</P>
            <P type="VLAN-ID">001</P>
            <P type="VLAN-PRIORITY">4</P>
          </Address>
          <MinTime unit="s" multiplier="m">10</MinTime>
          <MaxTime unit="s" multiplier="m">1000</MaxTime>
        </GSE>
      </ConnectedAP>
      <ConnectedAP iedName="IED3" apName="accessPoint1">
        <Address>
          <P type="IP">10.0.0.3</P>
          <P type="IP-SUBNET">255.255.255.0</P>
          <P type="IP-GATEWAY">192.168.1.101</P>
          <P type="OSI-TSEL">0001</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-AP-Title">1,3,9999,23</P>
          <P type="OSI-AE-Qualifier">23</P>
        </Address>
        <SMV ldInst="Control" cbName="smv1">
          <Address>
            <P type="APPID">01</P>
            <P type="VLAN-ID">0</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="MAC-Address">01-0C-CD-04-00-00</P>
          </Address>
        </SMV>
        <SMV ldInst="Measurements" cbName="smv2">
          <Address>
            <P type="APPID">01</P>
            <P type="VLAN-ID">0</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="MAC-Address">01-0C-CD-04-00-00</P>
          </Address>
        </SMV>
      </ConnectedAP>
    </SubNetwork>
    <SubNetwork name="Network1" type="8-MMS" desc="">
      <Text>
      </Text>
      <BitRate unit="b/s">100</BitRate>
      <ConnectedAP iedName="IED4" apName="AP1">
        <Address>
          <P type="IP">10.0.0.4</P>
          <P type="IP-SUBNET">255.255.255.0</P>
          <P type="IP-GATEWAY">10.0.0.101</P>
          <P type="OSI-AP-Title">1,3,9999,23</P>
          <P type="OSI-AE-Qualifier">23</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
        <GSE ldInst="LD1" cbName="PingGOCB">
          <Address>
            <P type="VLAN-ID">100</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="MAC-Address">01-0C-CD-01-00-AA</P>
            <P type="APPID">1234</P>
          </Address>
          <MinTime unit="s" multiplier="m">10</MinTime>
          <MaxTime unit="s" multiplier="m">2000</MaxTime>
        </GSE>
        <GSE ldInst="LD1" cbName="PingFCD">
          <Address>
            <P type="VLAN-ID">100</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="MAC-Address">01-0C-CD-01-00-BB</P>
            <P type="APPID">1233</P>
          </Address>
          <MinTime unit="s" multiplier="m">10</MinTime>
          <MaxTime unit="s" multiplier="m">2000</MaxTime>
        </GSE>
        <GSE ldInst="maximumLengthLogicalDeviceNameWithSixtyFourCharacters1234" cbName="PingGoCBwithMaximumCharacters012">
          <Address>
            <P type="VLAN-ID">100</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="MAC-Address">01-0C-CD-01-00-CC</P>
            <P type="APPID">1232</P>
          </Address>
          <MinTime unit="s" multiplier="m">10</MinTime>
          <MaxTime unit="s" multiplier="m">2000</MaxTime>
        </GSE>
        <SMV ldInst="LD1" cbName="smv1">
          <Address>
            <P type="APPID">01</P>
            <P type="VLAN-ID">0</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="MAC-Address">01-0C-CD-04-00-00</P>
          </Address>
        </SMV>
      </ConnectedAP>
    </SubNetwork>
  </Communication>
  <IED name="IED1" manufacturer="BHEL" type="BCUED2" owner="SCL Manager">
    <Services>
      <DynAssociation max="8" />
      <SettingGroups>
        <SGEdit />
      </SettingGroups>
      <GetDirectory />
      <GetDataObjectDefinition />
      <GetDataSetValue />
      <DataSetDirectory />
      <ConfDataSet max="50" maxAttributes="128" modify="false" />
      <ReadWrite />
      <ConfReportControl max="150" bufMode="both" bufConf="false" />
      <GetCBValues />
      <ConfLogControl max="5" />
      <ConfLNs fixPrefix="true" fixLnInst="false" />
      <GOOSE max="10" fixedOffs="false" goose="true" rGOOSE="false" />
      <FileHandling mms="true" />
      <DynDataSet max="100" maxAttributes="120" />
      <ReportSettings cbName="Fix" datSet="Dyn" rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" resvTms="true" owner="true" />
      <LogSettings cbName="Conf" datSet="Conf" logEna="Conf" trgOps="Conf" intgPd="Conf" />
      <GSESettings cbName="Conf" datSet="Conf" appID="Conf" kdaParticipant="false" />
      <ClientServices bufReport="false" goose="true" gsse="false" readLog="false" sv="false" unbufReport="false" supportsLdName="false" maxAttributes="0" maxReports="0" maxGOOSE="0" maxSMV="0">
        <TimeSyncProt sntp="false" c37_238="false" other="false" />
      </ClientServices>
      <ConfLdName />
      <ValueHandling setToRO="false" />
      <RedProt hsr="false" prp="true" rstp="false" />
      <TimeSyncProt sntp="true" c37_238="false" other="false" />
      <SupSubscription maxGo="10" maxSv="2" />
      <DataObjectDirectory />
      <SetDataSetValue />
    </Services>
    <AccessPoint name="accessPoint1" desc="">
      <Server>
        <Authentication />
        <LDevice inst="Control" desc="">
          <LN0 lnClass="LLN0" lnType="LLN01" inst="" desc="System Logical Device">
            <DataSet name="TapChgData" desc="Tap Changer Control">
              <FCDA ldInst="Control" lnClass="ATCC" fc="ST" lnInst="1" doName="Loc" />
              <FCDA ldInst="Control" lnClass="ATCC" fc="ST" lnInst="1" doName="TapChg" />
              <FCDA ldInst="Control" lnClass="ATCC" fc="ST" lnInst="1" doName="ParOp" />
              <FCDA ldInst="Control" lnClass="ATCC" fc="MX" lnInst="1" doName="CtlV" />
              <FCDA ldInst="Control" lnClass="ATCC" fc="ST" lnInst="1" doName="Auto" />
              <FCDA ldInst="Control" lnClass="ATCC" fc="ST" lnInst="1" doName="HiTapPos" />
              <FCDA ldInst="Control" lnClass="ATCC" fc="ST" lnInst="1" doName="LoTapPos" />
            </DataSet>
            <DataSet name="CSWIData" desc="CSWI Data">
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="1" prefix="CB52" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="1" prefix="CB52" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="1" prefix="CB52" doName="PosA" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="1" prefix="CB52" doName="PosB" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="1" prefix="CB52" doName="PosC" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="2" prefix="ISO89A" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="2" prefix="ISO89A" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="3" prefix="ISO89B" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="3" prefix="ISO89B" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="4" prefix="ISO89L" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="4" prefix="ISO89L" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="5" prefix="ISO89T" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="5" prefix="ISO89T" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="6" prefix="B189A" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="6" prefix="B189A" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="7" prefix="B289A" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="7" prefix="B289A" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="8" prefix="ES89AE" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="8" prefix="ES89AE" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="9" prefix="ES89BE" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="9" prefix="ES89BE" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="10" prefix="ES89LE" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="10" prefix="ES89LE" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="11" prefix="ES89TE" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="11" prefix="ES89TE" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="12" prefix="B1AE1" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="12" prefix="B1AE1" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="13" prefix="B1AE2" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="13" prefix="B1AE2" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="14" prefix="B2AE1" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="14" prefix="B2AE1" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="15" prefix="B2AE2" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="15" prefix="B2AE2" doName="Pos" />
            </DataSet>
            <DataSet name="CILOData" desc="CILO Data">
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="1" prefix="CB52" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="1" prefix="CB52" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="2" prefix="ISO89A" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="2" prefix="ISO89A" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="3" prefix="ISO89B" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="3" prefix="ISO89B" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="4" prefix="ISO89L" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="4" prefix="ISO89L" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="5" prefix="ISO89T" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="5" prefix="ISO89T" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="6" prefix="B189A" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="6" prefix="B189A" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="7" prefix="B289A" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="7" prefix="B289A" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="8" prefix="ES89AE" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="8" prefix="ES89AE" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="9" prefix="ES89BE" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="9" prefix="ES89BE" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="10" prefix="ES89LE" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="10" prefix="ES89LE" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="11" prefix="ES89TE" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="11" prefix="ES89TE" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="12" prefix="B1AE1" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="12" prefix="B1AE1" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="13" prefix="B1AE2" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="13" prefix="B1AE2" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="14" prefix="B2AE1" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="14" prefix="B2AE1" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="15" prefix="B2AE2" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="15" prefix="B2AE2" doName="EnaOpn" />
            </DataSet>
            <ReportControl name="CSWIReportBuf" confRev="1" datSet="CSWIData" rptID="CSWIReportBufID" buffered="true" intgPd="30000" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="CILOReportBuf" confRev="1" datSet="CILOData" rptID="CILOReportBufID" buffered="true" intgPd="30000" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="TapChgReportBuf" confRev="1" datSet="TapChgData" rptID="TapChgReportBufID" buffered="true" intgPd="30000" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="ldNs" valKind="RO">
                <Val>IEC 61850-7-4:2010</Val>
              </DAI>
              <DAI name="vendor" desc="" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
              <DAI name="configRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Diag" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LEDRs" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <SettingControl numOfSGs="4" actSG="1" resvTms="1200" />
          </LN0>
          <LN lnClass="LPHD" lnType="LPHD1" inst="1" prefix="" desc="Physical device Information">
            <DOI name="Sim">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="PhyNam">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="hwRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="serNum" valKind="Set">
                <Val>01</Val>
              </DAI>
              <DAI name="model" valKind="Set">
                <Val>2017-BHEL BCU-01</Val>
              </DAI>
            </DOI>
            <DOI name="PhyHealth">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Proxy">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI1" inst="1" prefix="CB52">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="PosA">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="PosB">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="PosC">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>CB52 Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
            <Inputs>
              <ExtRef iedName="BCU_402T" ldInst="Control" lnClass="CSWI" lnInst="1" prefix="CB52" doName="Pos" intAddr="1.DISCRETE_OUT:1667,INVALID_OUT:0,INVALID_OUT:0" serviceType="GOOSE" srcLDInst="Control" srcLNClass="LLN0" srcCBName="CSWISTSGCB" />
              <ExtRef iedName="BCU_403L" ldInst="Control" lnClass="CSWI" lnInst="1" prefix="CB52" doName="Pos" intAddr="1.DISCRETE_OUT:1665,INVALID_OUT:0,INVALID_OUT:0" serviceType="GOOSE" srcLDInst="Control" srcLNClass="LLN0" srcCBName="CSWISTSGCB" />
            </Inputs>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI2" inst="2" prefix="ISO89A">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>ISO89A Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI2" inst="3" prefix="ISO89B">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>ISO89B-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI2" inst="4" prefix="ISO89L">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>ISO89L-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI2" inst="5" prefix="ISO89T">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>ISO89T-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
            <Inputs>
              <ExtRef iedName="BCU_402T" ldInst="Control" lnClass="CSWI" lnInst="5" prefix="ISO89T" doName="Pos" intAddr="1.DISCRETE_OUT:1681,INVALID_OUT:0,INVALID_OUT:0" serviceType="GOOSE" srcLDInst="Control" srcLNClass="LLN0" srcCBName="CSWISTSGCB" />
              <ExtRef iedName="BCU_403L" ldInst="Control" lnClass="CSWI" lnInst="5" prefix="ISO89T" doName="Pos" intAddr="1.DISCRETE_OUT:1683,INVALID_OUT:0,INVALID_OUT:0" serviceType="GOOSE" srcLDInst="Control" srcLNClass="LLN0" srcCBName="CSWISTSGCB" />
            </Inputs>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI2" inst="6" prefix="B189A">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>B189A-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI2" inst="7" prefix="B289A">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>B289A-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI3" inst="8" prefix="ES89AE">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>ES89AE-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI3" inst="9" prefix="ES89BE">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>ES89BE-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI3" inst="10" prefix="ES89LE">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>ES89LE-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI3" inst="11" prefix="ES89TE">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>ES89TE-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI3" inst="12" prefix="B1AE1">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>B1AE1-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI3" inst="13" prefix="B1AE2">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>B1AE2-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI3" inst="14" prefix="B2AE1">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>B2AE1-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI3" inst="15" prefix="B2AE2">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>B2AE2-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI4" inst="16" prefix="AR_ON">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>VT Selected Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI4" inst="17" prefix="R86A_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>CVT Selected Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI4" inst="18" prefix="R86B_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>MTR Selected Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI4" inst="19" prefix="R96A_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>CB-52-R-Phase Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI4" inst="20" prefix="R96B_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>CB-52-Y-Phase Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI4" inst="21" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>CB-52-B-Phase Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI4" inst="22" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI4" inst="23" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI4" inst="24" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI4" inst="25" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO1" inst="1" prefix="CB52">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking -Circuit Breaker</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO2" inst="2" prefix="ISO89A">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking -Isolator 89A</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO2" inst="3" prefix="ISO89B">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking-Isolator 89B</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO2" inst="4" prefix="ISO89L">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking-Isolator 89L</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO2" inst="5" prefix="ISO89T">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking-Isolator 89T</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO2" inst="6" prefix="B189A">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking-Bus1 Isolator</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO2" inst="7" prefix="B289A">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking-Bus2 Isolator</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO3" inst="8" prefix="ES89AE">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking-Earth Switch 89 AE</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO3" inst="9" prefix="ES89BE">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking-Earth Switch 89 BE</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO3" inst="10" prefix="ES89LE">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking-Earth Switch 89 LE</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO3" inst="11" prefix="ES89TE">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking-Earth Switch 89 TE</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO3" inst="12" prefix="B1AE1">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - Bus1 Earth Switch 89 AE1</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO3" inst="13" prefix="B1AE2">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - Bus1 Earth Switch 89 AE2</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO3" inst="14" prefix="B2AE1">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - Bus2 Earth Switch 89 AE1</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO3" inst="15" prefix="B2AE2">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - Bus2 Earth Switch 89 AE2</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO4" inst="16" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - Cb Local Operation permissible</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO4" inst="17" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - CVT Selected</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO4" inst="18" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - MTR Reset</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO4" inst="19" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - CB-52-R-Phase</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO4" inst="20" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - CB-52-Y-Phase</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO4" inst="21" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - CB-52-B-Phase</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO4" inst="22" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - </Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO4" inst="23" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - </Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO4" inst="24" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - </Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO4" inst="25" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - </Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="ATCC" lnType="ATCC1" inst="1" prefix="">
            <DOI name="Auto">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="TapChg">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="ParOp">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Tap Changer</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="CtlV">
              <SDI name="mag">
                <DAI name="f" valKind="RO">
                  <Val>0.0</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="ParTraMod" desc="">
              <DAI name="setVal" valKind="Set">
                <Val> No Mode Predefined</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
        <LDevice inst="Measurements" desc="">
          <LN0 lnClass="LLN0" lnType="LLN01" inst="" desc="System Logical Device">
            <DataSet name="Fed1MeasData" desc="">
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="TotW" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="TotVAr" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="TotVA" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="TotPF" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="Hz" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="PPV" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="PhV" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="A" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="W" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="VAr" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="VA" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="PF" />
              <FCDA ldInst="Measurements" lnClass="MMXN" fc="MX" prefix="" lnInst="1" doName="Hz" />
              <FCDA ldInst="Measurements" lnClass="MMXN" fc="MX" prefix="" lnInst="1" doName="Vol" />
            </DataSet>
            <DataSet name="Fed2MeasData" desc="">
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="TotW" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="TotVAr" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="TotVA" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="TotPF" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="Hz" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="PPV" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="PhV" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="A" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="W" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="VAr" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="VA" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="PF" />
              <FCDA ldInst="Measurements" lnClass="MMXN" fc="MX" prefix="" lnInst="2" doName="Hz" />
              <FCDA ldInst="Measurements" lnClass="MMXN" fc="MX" prefix="" lnInst="2" doName="Vol" />
            </DataSet>
            <ReportControl name="Fed1MeasReportUnBuf" confRev="1" desc="" datSet="Fed1MeasData" intgPd="30000" rptID="Fed1MeasReportUnBufID" buffered="false" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="Fed2MeasReportUnBuf" confRev="1" desc="" datSet="Fed2MeasData" intgPd="30000" rptID="Fed2MeasReportUnBufID" buffered="false" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="ldNs" valKind="RO">
                <Val>IEC 61850-7-4:2010</Val>
              </DAI>
              <DAI name="vendor" desc="" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
              <DAI name="configRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Diag" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LEDRs" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnClass="LPHD" lnType="LPHD1" inst="1" prefix="" desc="Physical device Information">
            <DOI name="Sim">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="PhyNam">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="hwRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="serNum" valKind="Set">
                <Val>01</Val>
              </DAI>
              <DAI name="model" valKind="Set">
                <Val>2017-BHEL BCU-01</Val>
              </DAI>
            </DOI>
            <DOI name="PhyHealth">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Proxy">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="MMXU" lnType="MMXU1" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Feeder1 Measurements</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="MMXU" lnType="MMXU1" inst="2" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Feeder2 Measurements</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="MMXN" lnType="MMXN1" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Feeder1 Non-Phase related Measurement</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="MMXN" lnType="MMXN1" inst="2" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Feeder2 Non-Phase related Measurement</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
        <LDevice inst="Protection" desc="">
          <LN0 lnClass="LLN0" lnType="LLN01" inst="" desc="System Logical Device">
            <DataSet name="OCTripData" desc="">
              <FCDA ldInst="Protection" lnClass="PTOC" fc="ST" prefix="" lnInst="1" doName="Str" />
              <FCDA ldInst="Protection" lnClass="PTOC" fc="ST" prefix="" lnInst="1" doName="Op" />
              <FCDA ldInst="Protection" lnClass="PIOC" fc="ST" prefix="" lnInst="1" doName="Str" />
              <FCDA ldInst="Protection" lnClass="PIOC" fc="ST" prefix="" lnInst="1" doName="Op" />
            </DataSet>
            <DataSet name="VolTripData" desc="">
              <FCDA ldInst="Protection" lnClass="PTUV" fc="ST" prefix="" lnInst="1" doName="Str" />
              <FCDA ldInst="Protection" lnClass="PTUV" fc="ST" prefix="" lnInst="1" doName="Op" />
              <FCDA ldInst="Protection" lnClass="PTOV" fc="ST" prefix="" lnInst="1" doName="Str" />
              <FCDA ldInst="Protection" lnClass="PTOV" fc="ST" prefix="" lnInst="1" doName="Op" />
            </DataSet>
            <DataSet name="FreqTripData" desc="">
              <FCDA ldInst="Protection" lnClass="PTUF" fc="ST" prefix="" lnInst="1" doName="Str" />
              <FCDA ldInst="Protection" lnClass="PTUF" fc="ST" prefix="" lnInst="1" doName="Op" />
              <FCDA ldInst="Protection" lnClass="PFRC" fc="ST" prefix="" lnInst="1" doName="Str" />
              <FCDA ldInst="Protection" lnClass="PFRC" fc="ST" prefix="" lnInst="1" doName="Op" />
            </DataSet>
            <DataSet name="BrFailData" desc="">
              <FCDA ldInst="Protection" lnClass="RBRF" fc="ST" prefix="" lnInst="1" doName="Str" />
              <FCDA ldInst="Protection" lnClass="RBRF" fc="ST" prefix="" lnInst="1" doName="OpEx" />
            </DataSet>
            <DataSet name="EFTripData" desc="">
              <FCDA ldInst="Protection" lnClass="PTOC" fc="ST" prefix="" lnInst="2" doName="Str" />
              <FCDA ldInst="Protection" lnClass="PTOC" fc="ST" prefix="" lnInst="2" doName="Op" />
              <FCDA ldInst="Protection" lnClass="PIOC" fc="ST" prefix="" lnInst="2" doName="Str" />
              <FCDA ldInst="Protection" lnClass="PIOC" fc="ST" prefix="" lnInst="2" doName="Op" />
            </DataSet>
            <DataSet name="CommonTripData" desc="">
              <FCDA ldInst="Protection" lnClass="PTRC" fc="ST" prefix="" lnInst="1" doName="Tr" />
              <FCDA ldInst="Protection" lnClass="PTRC" fc="ST" prefix="" lnInst="1" doName="Op" />
              <FCDA ldInst="Protection" lnClass="PTRC" fc="ST" prefix="" lnInst="1" doName="Str" />
            </DataSet>
            <DataSet name="AutoRecData" desc="">
              <FCDA ldInst="Protection" lnClass="RREC" fc="ST" prefix="" lnInst="1" doName="OpCls" />
              <FCDA ldInst="Protection" lnClass="RREC" fc="ST" prefix="" lnInst="1" doName="AutoRecSt" />
            </DataSet>
            <DataSet name="ChkSyncData" desc="">
              <FCDA ldInst="Protection" lnClass="RSYN" fc="ST" prefix="" lnInst="1" doName="Rel" />
              <FCDA ldInst="Protection" lnClass="RSYN" fc="ST" prefix="" lnInst="1" doName="VInd" />
              <FCDA ldInst="Protection" lnClass="RSYN" fc="ST" prefix="" lnInst="1" doName="AngInd" />
              <FCDA ldInst="Protection" lnClass="RSYN" fc="ST" prefix="" lnInst="1" doName="HzInd" />
              <FCDA ldInst="Protection" lnClass="RSYN" fc="ST" prefix="" lnInst="1" doName="SynPrg" />
              <FCDA ldInst="Protection" lnClass="RSYN" fc="MX" prefix="" lnInst="1" doName="DifVClc" />
              <FCDA ldInst="Protection" lnClass="RSYN" fc="MX" prefix="" lnInst="1" doName="DifHzClc" />
              <FCDA ldInst="Protection" lnClass="RSYN" fc="MX" prefix="" lnInst="1" doName="DifAngClc" />
            </DataSet>
            <ReportControl name="OCTripReportBuf" confRev="1" desc="" datSet="OCTripData" intgPd="30000" rptID="OCTripReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="EFTripReportBuf" confRev="1" desc="" datSet="EFTripData" intgPd="30000" rptID="EFTripReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="VolTripReportBuf" confRev="1" desc="" datSet="VolTripData" intgPd="30000" rptID="VolTripReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="FreqTripReportBuf" confRev="1" desc="" datSet="FreqTripData" intgPd="30000" rptID="FreqTripReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="BrFailReportBuf" confRev="1" desc="" datSet="BrFailData" intgPd="30000" rptID="BrFailReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="CommonTripReportBuf" confRev="1" desc="" datSet="CommonTripData" intgPd="30000" rptID="CommonTripReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="AutoRecReportBuf" confRev="1" desc="" datSet="AutoRecData" intgPd="30000" rptID="AutoRecReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="ChkSyncReportBuf" confRev="1" desc="" datSet="ChkSyncData" intgPd="30000" rptID="ChkSyncReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="ldNs" valKind="RO">
                <Val>IEC 61850-7-4:2010</Val>
              </DAI>
              <DAI name="vendor" desc="" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
              <DAI name="configRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Diag" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LEDRs" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <SettingControl numOfSGs="4" actSG="1" resvTms="1200" />
          </LN0>
          <LN lnClass="LPHD" lnType="LPHD1" inst="1" prefix="" desc="Physical device Information">
            <DOI name="Sim">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="PhyNam">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="hwRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="serNum" valKind="Set">
                <Val>01</Val>
              </DAI>
              <DAI name="model" valKind="Set">
                <Val>2017-BHEL BCU-01</Val>
              </DAI>
            </DOI>
            <DOI name="PhyHealth">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Proxy">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="PTOC" lnType="PTOC1" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Time Overcurrent</Val>
              </DAI>
            </DOI>
            <DOI name="DirMod">
              <DAI name="setVal" valKind="RO">
                <Val>NonDirectional</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="PIOC" lnType="PIOC1" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Instantaneous Overcurrent</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="PTUF" lnType="PTUF1" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Under Frequency</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="PTUV" lnType="PTUV1" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Under Voltage</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="PTOV" lnType="PTOV1" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Over Voltage</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="RBRF" lnType="RBRF1" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Breaker Fail</Val>
              </DAI>
            </DOI>
            <DOI name="FailMod">
              <DAI name="setVal" valKind="RO">
                <Val>Both current and breaker status</Val>
              </DAI>
            </DOI>
            <DOI name="ReTrMod" desc="">
              <DAI name="setVal" valKind="RO">
                <Val>With Current and Breaker Status Check</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="PTRC" lnType="PTRC1" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Common Trip</Val>
              </DAI>
            </DOI>
            <DOI name="TrMod" desc="">
              <DAI name="setVal" valKind="RO">
                <Val>1 or 3 Phase Tripping</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="PIOC" lnType="PIOC2" inst="2" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Earthfault Hiset</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="PTOC" lnType="PTOC2" inst="2" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Neutral Overcurrent</Val>
              </DAI>
            </DOI>
            <DOI name="DirMod">
              <DAI name="setVal" valKind="RO">
                <Val>NonDirectional</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="PFRC" lnType="PFRC1" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Rate of Change of Frequency</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="RREC" lnType="RREC1" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Auto Reclosure</Val>
              </DAI>
            </DOI>
            <DOI name="TrBeh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>Undefined</Val>
              </DAI>
              <DAI name="subVal" valKind="RO">
                <Val>Undefined</Val>
              </DAI>
            </DOI>
            <DOI name="AutoRecSt" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>Ready</Val>
              </DAI>
              <DAI name="subVal" valKind="RO">
                <Val>Ready</Val>
              </DAI>
            </DOI>
            <DOI name="CycTrMod1" desc="">
              <DAI name="setVal" valKind="RO">
                <Val>specific</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="RSYN" lnType="RSYN1" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Check synchronism</Val>
              </DAI>
            </DOI>
            <DOI name="Rel">
              <DAI name="stVal" valKind="RO">
                <Val>1</Val>
              </DAI>
            </DOI>
            <DOI name="VInd">
              <DAI name="stVal" valKind="RO">
                <Val>1</Val>
              </DAI>
            </DOI>
            <DOI name="AngInd">
              <DAI name="stVal" valKind="RO">
                <Val>1</Val>
              </DAI>
            </DOI>
            <DOI name="HzInd">
              <DAI name="stVal" valKind="RO">
                <Val>1</Val>
              </DAI>
            </DOI>
            <DOI name="SynPrg">
              <DAI name="stVal" valKind="RO">
                <Val>1</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LivDeaMod" desc="">
              <DAI name="setVal" valKind="Set">
                <Val>Dead Line, Dead Bus</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
        <LDevice inst="Records" desc="">
          <LN0 lnClass="LLN0" lnType="LLN01" inst="" desc="System Logical Device">
            <DataSet name="RecordsData" desc="">
              <FCDA ldInst="Records" lnClass="RDRE" fc="ST" prefix="" lnInst="1" doName="RcdMade" />
              <FCDA ldInst="Records" lnClass="RDRE" fc="ST" prefix="" lnInst="1" doName="FltNum" />
            </DataSet>
            <ReportControl name="RecordsReportBuf" confRev="1" desc="" datSet="RecordsData" intgPd="30000" rptID="RecordsReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="ldNs" valKind="RO">
                <Val>IEC 61850-7-4:2010</Val>
              </DAI>
              <DAI name="vendor" desc="" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
              <DAI name="configRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Diag" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LEDRs" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <SettingControl numOfSGs="4" actSG="1" resvTms="1200" />
          </LN0>
          <LN lnClass="LPHD" lnType="LPHD1" inst="1" prefix="" desc="Physical device Information">
            <DOI name="Sim">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="PhyNam">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="hwRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="serNum" valKind="Set">
                <Val>01</Val>
              </DAI>
              <DAI name="model" valKind="Set">
                <Val>2017-BHEL BCU-01</Val>
              </DAI>
            </DOI>
            <DOI name="PhyHealth">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Proxy">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="RDRE" lnType="RDRE1" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Disturbance Recorder</Val>
              </DAI>
            </DOI>
            <DOI name="RcdTrg" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="MemRs" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="MemClr" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
        <LDevice inst="Systems" desc="">
          <LN0 lnClass="LLN0" lnType="LLN01" inst="" desc="System Logical Device">
            <DataSet name="INDGGIOData" desc="Indications">
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind1" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind2" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind3" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind4" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind5" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind6" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind7" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind8" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind9" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind10" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind11" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind12" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind13" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind14" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind15" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind16" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind17" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind18" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind19" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind20" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind21" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind22" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind23" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind24" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind25" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind26" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind27" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind28" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind29" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind30" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind31" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind32" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind33" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind34" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind35" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind36" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind37" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind38" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind39" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind40" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind41" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind42" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind43" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind44" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind45" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind46" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind47" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind48" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind49" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind50" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind51" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind52" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind53" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind54" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind55" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind56" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind57" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind58" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind59" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind60" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind61" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind62" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind63" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind64" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind65" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind66" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind67" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind68" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind69" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind70" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind71" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind72" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind73" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind74" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind75" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind76" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind77" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind78" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind79" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind80" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind81" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind82" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind83" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind84" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind85" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind86" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind87" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind88" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind89" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind90" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind91" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind92" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind93" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind94" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind95" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind96" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind97" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind98" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind99" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind100" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind101" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind102" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind103" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind104" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind105" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind106" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind107" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind108" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind109" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind110" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind111" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind112" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind113" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind114" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind115" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind116" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind117" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind118" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind119" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind120" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind121" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind122" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind123" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind124" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind125" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind126" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind127" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind128" />
            </DataSet>
            <DataSet name="GGIOData" desc="Internal Logics">
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind1" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind2" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind3" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind4" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind5" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind6" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind7" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind8" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind9" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind10" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind11" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind12" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind13" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind14" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind15" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind16" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind17" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind18" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind19" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind20" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind21" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind22" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind23" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind24" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind25" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind26" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind27" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind28" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind29" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind30" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind31" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind32" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind33" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind34" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind35" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind36" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind37" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind38" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind39" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind40" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind41" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind42" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind43" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind44" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind45" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind46" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind47" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind48" />
            </DataSet>
            <DataSet name="PUBGGIOData" desc="Digiatl goose">
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind1" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind2" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind3" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind4" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind5" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind6" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind7" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind8" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind9" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind14" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind15" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind16" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind17" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind18" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind19" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind20" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind21" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind22" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind23" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind24" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind25" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind26" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind27" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind28" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind29" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind30" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind31" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind32" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind33" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind34" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind35" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind36" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind37" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind38" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind39" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind40" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind41" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind42" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind43" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind44" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind45" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind46" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind47" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind48" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind49" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind50" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind51" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind52" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind53" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind54" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind55" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind56" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind57" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind58" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind59" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind60" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind61" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind62" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind63" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind64" />
            </DataSet>
            <DataSet name="IntegerData" desc="Integer Data">
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn1" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn2" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn3" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn4" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn5" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn6" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn7" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn8" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn9" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn10" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn11" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn12" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn13" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn14" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn15" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn16" />
            </DataSet>
            <DataSet name="ANAINData" desc="Ana4-20mA">
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn1" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn2" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn3" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn4" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn5" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn6" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn7" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn8" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn9" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn10" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn11" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn12" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn13" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn14" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn15" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn16" />
            </DataSet>
            <DataSet name="LIMALMData" desc="Limit Alarms">
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm1" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm2" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm3" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm4" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm5" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm6" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm7" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm8" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm9" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm10" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm11" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm12" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm13" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm14" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm15" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm16" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm17" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm18" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm19" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm20" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm21" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm22" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm23" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm24" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm25" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm26" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm27" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm28" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm29" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm30" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm31" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm32" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm33" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm34" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm35" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm36" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm37" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm38" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm39" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm40" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm41" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm42" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm43" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm44" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm45" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm46" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm47" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm48" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm49" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm50" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm51" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm52" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm53" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm54" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm55" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm56" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm57" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm58" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm59" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm60" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm61" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm62" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm63" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm64" />
            </DataSet>
            <DataSet name="MTR1Data" desc="Meter1 Data">
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn1" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn2" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn3" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn4" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn5" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn6" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn7" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn8" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn9" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn10" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn11" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn12" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn13" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn14" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn15" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn16" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn17" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn18" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn19" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn20" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn21" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn22" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn23" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn24" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn25" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn26" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn27" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn28" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn29" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn30" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn31" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn32" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn33" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn34" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn35" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn36" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn37" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn38" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn39" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn40" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn41" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn42" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn43" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn44" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn45" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn46" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn47" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn48" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn49" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn50" />
            </DataSet>
            <DataSet name="MTR2Data" desc="Meter2 Data">
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn1" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn2" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn3" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn4" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn5" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn6" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn7" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn8" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn9" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn10" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn11" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn12" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn13" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn14" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn15" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn16" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn17" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn18" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn19" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn20" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn21" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn22" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn23" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn24" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn25" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn26" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn27" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn28" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn29" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn30" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn31" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn32" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn33" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn34" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn35" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn36" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn37" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn38" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn39" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn40" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn41" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn42" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn43" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn44" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn45" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn46" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn47" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn48" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn49" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn50" />
            </DataSet>
            <ReportControl name="INDGGIOReportBuf" confRev="1" desc="" datSet="INDGGIOData" intgPd="30000" rptID="INDGGIOReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" dupd="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="GGIOReportBuf" confRev="1" desc="" datSet="GGIOData" intgPd="30000" rptID="GGIOReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" dupd="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="PUBGGIOReportBuf" confRev="1" desc="" datSet="PUBGGIOData" intgPd="30000" rptID="PUBGGIOReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="IntegerReportUnBuf" confRev="1" desc="" datSet="IntegerData" intgPd="30000" rptID="IntegerReportUnBufID" buffered="false" bufTime="120">
              <TrgOps dchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="ANAINReportUnbuf" confRev="1" desc="" datSet="ANAINData" intgPd="30000" rptID="ANAINReportUnbufID" buffered="false" bufTime="120">
              <TrgOps dchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="LIMALMReportBuf" confRev="1" desc="" datSet="LIMALMData" intgPd="30000" rptID="LIMALMReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="MTR1ReportBuf" confRev="1" desc="" datSet="MTR1Data" intgPd="30000" rptID="MTR1ReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="MTR2ReportBuf" confRev="1" desc="" datSet="MTR2Data" intgPd="30000" rptID="MTR2ReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="ldNs" valKind="RO">
                <Val>IEC 61850-7-4:2010</Val>
              </DAI>
              <DAI name="vendor" desc="" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
              <DAI name="configRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Diag" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LEDRs" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnClass="LPHD" lnType="LPHD1" inst="1" prefix="" desc="Physical device Information">
            <DOI name="Sim">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="PhyNam">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="hwRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="serNum" valKind="Set">
                <Val>01</Val>
              </DAI>
              <DAI name="model" valKind="Set">
                <Val>2017-BHEL BCU-01 </Val>
              </DAI>
            </DOI>
            <DOI name="PhyHealth">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Proxy">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="LTIM" lnType="LTIM1" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Time Management</Val>
              </DAI>
            </DOI>
            <DOI name="StrWeekDay" desc="">
              <DAI name="setVal" valKind="Set">
                <Val>Monday</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="LTMS" lnType="LTMS1" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Time master supervision</Val>
              </DAI>
            </DOI>
            <DOI name="TmSyn" desc="">
              <DAI name="stVal">
                <Val>Synchronized by a global area clock signal</Val>
              </DAI>
              <DAI name="subVal">
                <Val>Synchronized by a global area clock signal</Val>
              </DAI>
            </DOI>
            <DOI name="TmSrcSet1">
              <DAI name="setVal" valKind="Set">
                <Val>192.168.1.200</Val>
              </DAI>
            </DOI>
            <DOI name="TmSrcSet2">
              <DAI name="setVal" valKind="Set">
                <Val>192.168.1.200</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="GGIO" lnType="GGIO1" inst="1" prefix="IND_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Digital Inputs</Val>
              </DAI>
            </DOI>
            <DOI name="Ind1" desc="DI1_P1_CH1" />
            <DOI name="Ind2" desc="DI1_P1_CH2" />
            <DOI name="Ind3" desc="DI1_P1_CH3" />
            <DOI name="Ind4" desc="DI1_P1_CH4" />
            <DOI name="Ind5" desc="DI1_P1_CH5" />
            <DOI name="Ind6" desc="DI1_P1_CH6" />
            <DOI name="Ind7" desc="DI1_P1_CH7" />
            <DOI name="Ind8" desc="DI1_P1_CH8" />
            <DOI name="Ind9" desc="DI1_P1_CH9" />
            <DOI name="Ind10" desc="DI1_P1_CH10" />
            <DOI name="Ind11" desc="DI1_P1_CH11" />
            <DOI name="Ind12" desc="DI1_P1_CH12" />
            <DOI name="Ind13" desc="DI1_P2_CH1" />
            <DOI name="Ind14" desc="DI1_P2_CH2" />
            <DOI name="Ind15" desc="DI1_P2_CH3" />
            <DOI name="Ind16" desc="DI1_P2_CH4" />
            <DOI name="Ind17" desc="DI1_P2_CH5" />
            <DOI name="Ind18" desc="DI1_P2_CH6" />
            <DOI name="Ind19" desc="DI1_P2_CH7" />
            <DOI name="Ind20" desc="DI1_P2_CH8" />
            <DOI name="Ind21" desc="DI1_P2_CH9" />
            <DOI name="Ind22" desc="DI1_P2_CH10" />
            <DOI name="Ind23" desc="DI1_P2_CH11" />
            <DOI name="Ind24" desc="DI1_P2_CH12" />
            <DOI name="Ind25" desc="DI2_P1_CH1" />
            <DOI name="Ind26" desc="DI2_P1_CH2" />
            <DOI name="Ind27" desc="DI2_P1_CH3" />
            <DOI name="Ind28" desc="DI2_P1_CH4" />
            <DOI name="Ind29" desc="DI2_P1_CH5" />
            <DOI name="Ind30" desc="DI2_P1_CH6" />
            <DOI name="Ind31" desc="DI2_P1_CH7" />
            <DOI name="Ind32" desc="DI2_P1_CH8" />
            <DOI name="Ind33" desc="DI2_P1_CH9" />
            <DOI name="Ind34" desc="DI2_P1_CH10" />
            <DOI name="Ind35" desc="DI2_P1_CH11" />
            <DOI name="Ind36" desc="DI2_P1_CH12" />
            <DOI name="Ind37" desc="DI2_P2_CH1" />
            <DOI name="Ind38" desc="DI2_P2_CH2" />
            <DOI name="Ind39" desc="DI2_P2_CH3" />
            <DOI name="Ind40" desc="DI2_P2_CH4" />
            <DOI name="Ind41" desc="DI2_P2_CH5" />
            <DOI name="Ind42" desc="DI2_P2_CH6" />
            <DOI name="Ind43" desc="DI2_P2_CH7" />
            <DOI name="Ind44" desc="DI2_P2_CH8" />
            <DOI name="Ind45" desc="DI2_P2_CH9" />
            <DOI name="Ind46" desc="DI2_P2_CH10" />
            <DOI name="Ind47" desc="DI2_P2_CH11" />
            <DOI name="Ind48" desc="DI2_P2_CH12" />
            <DOI name="Ind49" desc="DI3_P1_CH1" />
            <DOI name="Ind50" desc="DI3_P1_CH2" />
            <DOI name="Ind51" desc="DI3_P1_CH3" />
            <DOI name="Ind52" desc="DI3_P1_CH4" />
            <DOI name="Ind53" desc="DI3_P1_CH5" />
            <DOI name="Ind54" desc="DI3_P1_CH6" />
            <DOI name="Ind55" desc="DI3_P1_CH7" />
            <DOI name="Ind56" desc="DI3_P1_CH8" />
            <DOI name="Ind57" desc="DI3_P1_CH9" />
            <DOI name="Ind58" desc="DI3_P1_CH10" />
            <DOI name="Ind59" desc="DI3_P1_CH11" />
            <DOI name="Ind60" desc="DI3_P1_CH12" />
            <DOI name="Ind61" desc="DI3_P2_CH1" />
            <DOI name="Ind62" desc="DI3_P2_CH2" />
            <DOI name="Ind63" desc="DI3_P2_CH3" />
            <DOI name="Ind64" desc="DI3_P2_CH4" />
            <DOI name="Ind65" desc="DI3_P2_CH5" />
            <DOI name="Ind66" desc="DI3_P2_CH6" />
            <DOI name="Ind67" desc="DI3_P2_CH7" />
            <DOI name="Ind68" desc="DI3_P2_CH8" />
            <DOI name="Ind69" desc="DI3_P2_CH9" />
            <DOI name="Ind70" desc="DI3_P2_CH10" />
            <DOI name="Ind71" desc="DI3_P2_CH11" />
            <DOI name="Ind72" desc="DI3_P2_CH12" />
            <DOI name="Ind73" desc="DI4_P1_CH1" />
            <DOI name="Ind74" desc="DI4_P1_CH2" />
            <DOI name="Ind75" desc="DI4_P1_CH3" />
            <DOI name="Ind76" desc="DI4_P1_CH4" />
            <DOI name="Ind77" desc="DI4_P1_CH5" />
            <DOI name="Ind78" desc="DI4_P1_CH6" />
            <DOI name="Ind79" desc="DI4_P1_CH7" />
            <DOI name="Ind80" desc="DI4_P1_CH8" />
            <DOI name="Ind81" desc="DI4_P1_CH9" />
            <DOI name="Ind82" desc="DI4_P1_CH10" />
            <DOI name="Ind83" desc="DI4_P1_CH11" />
            <DOI name="Ind84" desc="DI4_P1_CH12" />
            <DOI name="Ind85" desc="DI4_P2_CH1" />
            <DOI name="Ind86" desc="DI4_P2_CH2" />
            <DOI name="Ind87" desc="DI4_P2_CH3" />
            <DOI name="Ind88" desc="DI4_P2_CH4" />
            <DOI name="Ind89" desc="DI4_P2_CH5" />
            <DOI name="Ind90" desc="DI4_P2_CH6" />
            <DOI name="Ind91" desc="DI4_P2_CH7" />
            <DOI name="Ind92" desc="DI4_P2_CH8" />
            <DOI name="Ind93" desc="DI4_P2_CH9" />
            <DOI name="Ind94" desc="DI4_P2_CH10" />
            <DOI name="Ind95" desc="DI4_P2_CH11" />
            <DOI name="Ind96" desc="DI4_P2_CH12" />
            <DOI name="Ind97" desc="DI_Dummy" />
            <DOI name="Ind98" desc="DI_Dummy" />
            <DOI name="Ind99" desc="DI_Dummy" />
            <DOI name="Ind100" desc="DI_Dummy" />
            <DOI name="Ind101" desc="DI_Dummy" />
            <DOI name="Ind102" desc="DI_Dummy" />
            <DOI name="Ind103" desc="DI_Dummy" />
            <DOI name="Ind104" desc="DI_Dummy" />
            <DOI name="Ind105" desc="DI_Dummy" />
            <DOI name="Ind106" desc="DI_Dummy" />
            <DOI name="Ind107" desc="DI_Dummy" />
            <DOI name="Ind108" desc="DI_Dummy" />
            <DOI name="Ind109" desc="DI_Dummy" />
            <DOI name="Ind110" desc="DI_Dummy" />
            <DOI name="Ind111" desc="DI_Dummy" />
            <DOI name="Ind112" desc="DI_Dummy" />
            <DOI name="Ind113" desc="DI_Dummy" />
            <DOI name="Ind114" desc="DI_Dummy" />
            <DOI name="Ind115" desc="DI_Dummy" />
            <DOI name="Ind116" desc="DI_Dummy" />
            <DOI name="Ind117" desc="DI_Dummy" />
            <DOI name="Ind118" desc="DI_Dummy" />
            <DOI name="Ind119" desc="DI_Dummy" />
            <DOI name="Ind120" desc="DI_Dummy" />
            <DOI name="Ind121" desc="DI_Dummy" />
            <DOI name="Ind122" desc="DI_Dummy" />
            <DOI name="Ind123" desc="DI_Dummy" />
            <DOI name="Ind124" desc="DI_Dummy" />
            <DOI name="Ind125" desc="DI_Dummy" />
            <DOI name="Ind126" desc="DI_Dummy" />
            <DOI name="Ind127" desc="DI_Dummy" />
            <DOI name="Ind128" desc="DI_Dummy" />
            <Inputs>
              <ExtRef iedName="R40321M1" ldInst="System" lnClass="GGIO" lnInst="2" prefix="Gos" doName="Ind2" daName="stVal" intAddr="0.DISCRETE_OUT:1612" serviceType="GOOSE" srcLDInst="System" srcLNClass="LLN0" srcCBName="gcb01" />
              <ExtRef iedName="KEMASIM" ldInst="LD1" lnClass="GGIO" lnInst="1" doName="Ind1" daName="stVal" intAddr="0.DISCRETE_OUT:1601" serviceType="GOOSE" srcLDInst="LD1" srcLNClass="LLN0" srcCBName="PingGOCB" />
              <ExtRef iedName="KEMASIM" ldInst="LD1" lnClass="GGIO" lnInst="1" doName="Ind2" daName="stVal" intAddr="0.DISCRETE_OUT:1602" serviceType="GOOSE" srcLDInst="LD1" srcLNClass="LLN0" srcCBName="PingGOCB" />
              <ExtRef iedName="KEMASIM" ldInst="LD1" lnClass="GGIO" lnInst="1" doName="Ind6" daName="stVal" intAddr="0.DISCRETE_OUT:1603" serviceType="GOOSE" srcLDInst="LD1" srcLNClass="LLN0" srcCBName="PingGOCB" />
              <ExtRef iedName="KEMASIM" ldInst="LD1" lnClass="GGIO" lnInst="1" doName="Ind7" daName="stVal" intAddr="0.DISCRETE_OUT:1604" serviceType="GOOSE" srcLDInst="LD1" srcLNClass="LLN0" srcCBName="PingGOCB" />
              <ExtRef iedName="KEMASIM" ldInst="LD1" lnClass="GGIO" lnInst="1" doName="Ind8" daName="stVal" intAddr="0.DISCRETE_OUT:1605" serviceType="GOOSE" srcLDInst="LD1" srcLNClass="LLN0" srcCBName="PingGOCB" />
            </Inputs>
          </LN>
          <LN lnClass="GGIO" lnType="GGIO2" inst="2" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Internal Variables</Val>
              </DAI>
            </DOI>
            <DOI name="Ind1" desc="GenTrip" />
            <DOI name="Ind2" desc="OvercurrTp" />
            <DOI name="Ind3" desc="OvercurrHstp" />
            <DOI name="Ind4" desc="EarthFltTp" />
            <DOI name="Ind5" desc="EarthFltHstp" />
            <DOI name="Ind6" desc="OverVol" />
            <DOI name="Ind7" desc="UnderVol" />
            <DOI name="Ind8" desc="BrkFail" />
            <DOI name="Ind9" desc="AutoReclose" />
            <DOI name="Ind10" desc="ChckSync" />
            <DOI name="Ind11" desc="UnderFreqTrip" />
            <DOI name="Ind12" desc="df/dt Trip" />
            <DOI name="Ind13" desc="Bus1 CVT Selected" />
            <DOI name="Ind14" desc="Bus1 CVT Deselected" />
            <DOI name="Ind15" desc="Bus2 CVT Selected" />
            <DOI name="Ind16" desc="Bus2 CVT Deselected" />
            <DOI name="Ind17" desc="GT1 CVT Selected" />
            <DOI name="Ind18" desc="GT1 CVT Deselected" />
            <DOI name="Ind19" desc="GT2 CVT Selected" />
            <DOI name="Ind20" desc="GT2 CVT Deselected" />
            <DOI name="Ind21" desc="Line1 CVT Selected" />
            <DOI name="Ind22" desc="Line1 CVT Deselected" />
            <DOI name="Ind23" desc="Line2 CVT Selected" />
            <DOI name="Ind24" desc="Line2 CVT Deselected" />
            <DOI name="Ind25" desc="CB Local Operation permissible" />
            <DOI name="Ind26" desc="DeadLineDeadBus status" />
            <DOI name="Ind27" desc="DeadLineLiveBus status" />
            <DOI name="Ind28" desc="LiveLineDeadBus status" />
            <DOI name="Ind29" desc="LiveLineLiveB status" />
            <DOI name="Ind30" desc="DeadLine status" />
            <DOI name="Ind31" desc="DeadBus status" />
            <DOI name="Ind33" desc="BCU L/R Flag" />
            <DOI name="Ind34" desc="AR_Block" />
            <DOI name="Ind35" desc="MODBUSTCP Master Health" />
            <DOI name="Ind36" desc="MODBUSSerial Master Health" />
            <DOI name="Ind37" desc="DNPTCP Master Health" />
            <DOI name="Ind38" desc="DNPSerial Master Health" />
            <DOI name="Ind39" desc="Server101_health" />
            <DOI name="Ind40" desc="Server104_health" />
            <DOI name="Ind41" desc="Dummy1" />
            <DOI name="Ind42" desc="Dummy2" />
            <DOI name="Ind43" desc="Dummy3" />
            <DOI name="Ind44" desc="Dummy4" />
            <DOI name="Ind45" desc="Dummy5" />
            <DOI name="Ind46" desc="Dummy6" />
            <DOI name="Ind47" desc="Dummy7" />
            <DOI name="Ind48" desc="Dummy8" />
          </LN>
          <LN lnClass="GGIO" lnType="GGIO3" inst="3" prefix="PUB_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Digital Goose Inputs</Val>
              </DAI>
            </DOI>
            <DOI name="Ind1" desc="Digital input 1" />
            <DOI name="Ind2" desc="Digital input 2" />
            <DOI name="Ind3" desc="Digital input 3" />
            <DOI name="Ind4" desc="Digital input 4" />
            <DOI name="Ind5" desc="Digital input 5" />
            <DOI name="Ind6" desc="Digital input 6" />
            <DOI name="Ind7" desc="Digital input 7" />
            <DOI name="Ind8" desc="Digital input 8" />
            <DOI name="Ind9" desc="Digital input 9" />
            <DOI name="Ind10" desc="Digital input 10" />
            <DOI name="Ind11" desc="Digital input 11" />
            <DOI name="Ind12" desc="Digital input 12" />
            <DOI name="Ind13" desc="Digital input 13" />
            <DOI name="Ind14" desc="Digital input 14" />
            <DOI name="Ind15" desc="Digital input 15" />
            <DOI name="Ind16" desc="Digital input 16" />
            <DOI name="Ind17" desc="Digital input 17" />
            <DOI name="Ind18" desc="Digital input 18" />
            <DOI name="Ind19" desc="Digital input 19" />
            <DOI name="Ind20" desc="Digital input 20" />
            <DOI name="Ind21" desc="Digital input 21" />
            <DOI name="Ind22" desc="Digital input 22" />
            <DOI name="Ind23" desc="Digital input 23" />
            <DOI name="Ind24" desc="Digital input 24" />
            <DOI name="Ind25" desc="Digital input 25" />
            <DOI name="Ind26" desc="Digital input 26" />
            <DOI name="Ind27" desc="Digital input 27" />
            <DOI name="Ind28" desc="Digital input 28" />
            <DOI name="Ind29" desc="Digital input 29" />
            <DOI name="Ind30" desc="Digital input 30" />
            <DOI name="Ind31" desc="Digital input 31" />
            <DOI name="Ind32" desc="Digital input 32" />
            <DOI name="Ind33" desc="Digital input 33" />
            <DOI name="Ind34" desc="Digital input 34" />
            <DOI name="Ind35" desc="Digital input 35" />
            <DOI name="Ind36" desc="Digital input 36" />
            <DOI name="Ind37" desc="Digital input 37" />
            <DOI name="Ind38" desc="Digital input 38" />
            <DOI name="Ind39" desc="Digital input 39" />
            <DOI name="Ind40" desc="Digital input 40" />
            <DOI name="Ind41" desc="Digital input 41" />
            <DOI name="Ind42" desc="Digital input 42" />
            <DOI name="Ind43" desc="Digital input 43" />
            <DOI name="Ind44" desc="Digital input 44" />
            <DOI name="Ind45" desc="Digital input 45" />
            <DOI name="Ind46" desc="Digital input 46" />
            <DOI name="Ind47" desc="Digital input 47" />
            <DOI name="Ind48" desc="Digital input 48" />
            <DOI name="Ind49" desc="Digital input 49" />
            <DOI name="Ind50" desc="Digital input 50" />
            <DOI name="Ind51" desc="Digital input 51" />
            <DOI name="Ind52" desc="Digital input 52" />
            <DOI name="Ind53" desc="Digital input 53" />
            <DOI name="Ind54" desc="Digital input 54" />
            <DOI name="Ind55" desc="Digital input 55" />
            <DOI name="Ind56" desc="Digital input 56" />
            <DOI name="Ind57" desc="Digital input 57" />
            <DOI name="Ind58" desc="Digital input 58" />
            <DOI name="Ind59" desc="Digital input 59" />
            <DOI name="Ind60" desc="Digital input 60" />
            <DOI name="Ind61" desc="Digital input 61" />
            <DOI name="Ind62" desc="Digital input 62" />
            <DOI name="Ind63" desc="Digital input 63" />
            <DOI name="Ind64" desc="Digital input 64" />
          </LN>
          <LN lnClass="GGIO" lnType="GGIO4" inst="4" prefix="INT_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Integer inputs</Val>
              </DAI>
            </DOI>
            <DOI name="IntIn1" desc="AR Failure Cause " />
            <DOI name="IntIn2" desc="CB Operation counter" />
            <DOI name="IntIn3" desc="Integer input 3" />
            <DOI name="IntIn4" desc="Integer input 4" />
            <DOI name="IntIn5" desc="Integer input 5" />
            <DOI name="IntIn6" desc="Integer input 6" />
            <DOI name="IntIn7" desc="Integer input 7" />
            <DOI name="IntIn8" desc="Integer input 8" />
            <DOI name="IntIn9" desc="Integer input 9" />
            <DOI name="IntIn10" desc="Integer input 10" />
            <DOI name="IntIn11" desc="Integer input 11" />
            <DOI name="IntIn12" desc="Integer input 12" />
            <DOI name="IntIn13" desc="Integer input 13" />
            <DOI name="IntIn14" desc="Integer input 14" />
            <DOI name="IntIn15" desc="Integer input 15" />
            <DOI name="IntIn16" desc="Integer input 16" />
            <DOI name="IntIn17" desc="Integer input 17" />
            <DOI name="IntIn18" desc="Integer input 18" />
            <DOI name="IntIn19" desc="Integer input 19" />
            <DOI name="IntIn20" desc="Integer input 20" />
            <DOI name="IntIn21" desc="Integer input 21" />
            <DOI name="IntIn22" desc="Integer input 22" />
            <DOI name="IntIn23" desc="Integer input 23" />
            <DOI name="IntIn24" desc="Integer input 24" />
            <DOI name="IntIn25" desc="Integer input 25" />
            <DOI name="IntIn26" desc="Integer input 26" />
            <DOI name="IntIn27" desc="Integer input 27" />
            <DOI name="IntIn28" desc="Integer input 28" />
            <DOI name="IntIn29" desc="Integer input 29" />
            <DOI name="IntIn30" desc="Integer input 30" />
            <DOI name="IntIn31" desc="Integer input 31" />
            <DOI name="IntIn32" desc="Integer input 32" />
          </LN>
          <LN lnClass="GGIO" lnType="GGIO5" inst="5" prefix="APUB_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Analog GOOSE</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn1" desc="Analog Goose 1" />
            <DOI name="AnIn2" desc="Analog Goose 2" />
            <DOI name="AnIn3" desc="Analog Goose 3" />
            <DOI name="AnIn4" desc="Analog Goose 4" />
            <DOI name="AnIn5" desc="Analog Goose 5" />
            <DOI name="AnIn6" desc="Analog Goose 6" />
            <DOI name="AnIn7" desc="Analog Goose 7" />
            <DOI name="AnIn8" desc="Analog Goose 8" />
            <DOI name="AnIn9" desc="Analog Goose 9" />
            <DOI name="AnIn10" desc="Analog Goose 10" />
            <DOI name="AnIn11" desc="Analog Goose 11" />
            <DOI name="AnIn12" desc="Analog Goose 12" />
            <DOI name="AnIn13" desc="Analog Goose 13" />
            <DOI name="AnIn14" desc="Analog Goose 14" />
            <DOI name="AnIn15" desc="Analog Goose 15" />
            <DOI name="AnIn16" desc="Analog Goose 16" />
            <DOI name="AnIn17" desc="Analog Goose 17" />
            <DOI name="AnIn18" desc="Analog Goose 18" />
            <DOI name="AnIn19" desc="Analog Goose 19" />
            <DOI name="AnIn20" desc="Analog Goose 20" />
            <DOI name="AnIn21" desc="Analog Goose 21" />
            <DOI name="AnIn22" desc="Analog Goose 22" />
            <DOI name="AnIn23" desc="Analog Goose 23" />
            <DOI name="AnIn24" desc="Analog Goose 24" />
            <DOI name="AnIn25" desc="Analog Goose 25" />
            <DOI name="AnIn26" desc="Analog Goose 26" />
            <DOI name="AnIn27" desc="Analog Goose 27" />
            <DOI name="AnIn28" desc="Analog Goose 28" />
            <DOI name="AnIn29" desc="Analog Goose 29" />
            <DOI name="AnIn30" desc="Analog Goose 30" />
            <DOI name="AnIn31" desc="Analog Goose 31" />
            <DOI name="AnIn32" desc="Analog Goose 32" />
          </LN>
          <LN lnClass="GGIO" lnType="GGIO6" inst="6" prefix="ANAIN_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>4-20mA Signals</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn1" desc="4-20mA signal 1" />
            <DOI name="AnIn2" desc="4-20mA signal 2" />
            <DOI name="AnIn3" desc="4-20mA signal 3" />
            <DOI name="AnIn4" desc="Tap Pos" />
            <DOI name="AnIn5" desc="4-20mA signal 5" />
            <DOI name="AnIn6" desc="4-20mA signal 6" />
            <DOI name="AnIn7" desc="4-20mA signal 7" />
            <DOI name="AnIn8" desc="4-20mA signal 8" />
            <DOI name="AnIn9" desc="4-20mA signal 9" />
            <DOI name="AnIn10" desc="4-20mA signal 10" />
            <DOI name="AnIn11" desc="4-20mA signal 11" />
            <DOI name="AnIn12" desc="4-20mA signal 12" />
            <DOI name="AnIn13" desc="4-20mA signal 13" />
            <DOI name="AnIn14" desc="4-20mA signal 14" />
            <DOI name="AnIn15" desc="4-20mA signal 15" />
            <DOI name="AnIn16" desc="4-20mA signal 16" />
          </LN>
          <LN lnClass="GGIO" lnType="GGIO7" inst="7" prefix="LALM_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Limit Alarms</Val>
              </DAI>
            </DOI>
            <DOI name="Alm1" desc="Vsen1 alarm greater than Limit2" />
            <DOI name="Alm2" desc="Vsen1 alarm greater than Limit1" />
            <DOI name="Alm3" desc="Vsen1 alarm less than Limit2 " />
            <DOI name="Alm4" desc="Vsen1 alarm less than Limit1" />
            <DOI name="Alm5" desc="Vsen2 alarm greater than Limit2" />
            <DOI name="Alm6" desc="Vsen2 alarm greater than Limit1" />
            <DOI name="Alm7" desc="Vsen2 alarm less than Limit2" />
            <DOI name="Alm8" desc="Vsen2 alarm less than Limit1" />
            <DOI name="Alm9" desc="Vsen3 alarm greater than Limit2" />
            <DOI name="Alm10" desc="Vsen3 alarm greater than Limit1" />
            <DOI name="Alm11" desc="Vsen3 alarm less than Limit2" />
            <DOI name="Alm12" desc="Vsen3 alarm less than Limit1" />
            <DOI name="Alm13" desc="Vsen4 alarm greater than Limit2" />
            <DOI name="Alm14" desc="Vsen4 alarm greater than Limit1" />
            <DOI name="Alm15" desc="Vsen4 alarm less than Limit2" />
            <DOI name="Alm16" desc="Vsen4 alarm less than Limit1" />
            <DOI name="Alm17" desc="Vsen5 alarm greater than Limit2 " />
            <DOI name="Alm18" desc="Vsen5 alarm greater than Limit1" />
            <DOI name="Alm19" desc="Vsen5 alarm less than Limit2" />
            <DOI name="Alm20" desc="Vsen5 alarm less than Limit1" />
            <DOI name="Alm21" desc="Vsen6 alarm greater than Limit2" />
            <DOI name="Alm22" desc="Vsen6 alarm greater than Limit1" />
            <DOI name="Alm23" desc="Vsen6 alarm less than Limit2" />
            <DOI name="Alm24" desc="Vsen6 alarm less than Limit1" />
            <DOI name="Alm25" desc="Vsen7 alarm greater than Limit2" />
            <DOI name="Alm26" desc="Vsen7 alarm greater than Limit1" />
            <DOI name="Alm27" desc="Vsen7 alarm less than Limit2" />
            <DOI name="Alm28" desc="Vsen7 alarm less than Limit1" />
            <DOI name="Alm29" desc="Vsen8 alarm greater than Limit2" />
            <DOI name="Alm30" desc="Vsen8 alarm greater than Limit1" />
            <DOI name="Alm31" desc="Vsen8 alarm less than Limit2" />
            <DOI name="Alm32" desc="Vsen8 alarm less than Limit1" />
            <DOI name="Alm33" desc="Vsen9 alarm greater than Limit2" />
            <DOI name="Alm34" desc="Vsen9 alarm greater than Limit1" />
            <DOI name="Alm35" desc="Vsen9 alarm less than Limit2" />
            <DOI name="Alm36" desc="Vsen9 alarm less than Limit1" />
            <DOI name="Alm37" desc="Vsen10 alarm greater than Limit2" />
            <DOI name="Alm38" desc="Vsen10 alarm greater than Limit1" />
            <DOI name="Alm39" desc="Vsen10 alarm less than Limit2" />
            <DOI name="Alm40" desc="Vsen10 alarm less than Limit1" />
            <DOI name="Alm41" desc="Vsen11 alarm greater than Limit2" />
            <DOI name="Alm42" desc="Vsen11 alarm greater than Limit1" />
            <DOI name="Alm43" desc="Vsen11 alarm less than Limit2" />
            <DOI name="Alm44" desc="Vsen11 alarm less than Limit1" />
            <DOI name="Alm45" desc="Vsen12 alarm greater than Limit2" />
            <DOI name="Alm46" desc="Vsen12 alarm greater than Limit1" />
            <DOI name="Alm47" desc="Vsen12 alarm less than Limit2" />
            <DOI name="Alm48" desc="Vsen12 alarm less than Limit1" />
            <DOI name="Alm49" desc="Vsen13 alarm greater than Limit2" />
            <DOI name="Alm50" desc="Vsen13 alarm greater than Limit1" />
            <DOI name="Alm51" desc="Vsen13 alarm less than Limit2" />
            <DOI name="Alm52" desc="Vsen13 alarm less than Limit1" />
            <DOI name="Alm53" desc="Vsen14 alarm greater than Limit2" />
            <DOI name="Alm54" desc="Vsen14 alarm greater than Limit1" />
            <DOI name="Alm55" desc="Vsen14 alarm less than Limit2" />
            <DOI name="Alm56" desc="Vsen14 alarm less than Limit1" />
            <DOI name="Alm57" desc="Vsen15 alarm greater than Limit2" />
            <DOI name="Alm58" desc="Vsen15 alarm greater than Limit1" />
            <DOI name="Alm59" desc="Vsen15 alarm less than Limit2" />
            <DOI name="Alm60" desc="Vsen15 alarm less than Limit1" />
            <DOI name="Alm61" desc="Vsen16 alarm greater than Limit2" />
            <DOI name="Alm62" desc="Vsen16 alarm greater than Limit1" />
            <DOI name="Alm63" desc="Vsen16 alarm less than Limit2" />
            <DOI name="Alm64" desc="Vsen16 alarm less than Limit1" />
          </LN>
          <LN lnClass="GGIO" lnType="GGIO9" inst="9" prefix="MTR1_" desc="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>3-phase Energy Meter1</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="GGIO" lnType="GGIO9" inst="10" prefix="MTR2_" desc="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>3-phase Energy Meter2</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="LGOS" lnType="LGOS1" inst="2" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>GOOSE subscription</Val>
              </DAI>
            </DOI>
            <DOI name="GoCBRef">
              <DAI name="setSrcCB" valKind="Set">
                <Val>KEMASIMLD1/LLN0.PingFCD</Val>
              </DAI>
              <DAI name="setSrcRef" valKind="Set">
                <Val>KEMASIMLD1/LLN0.PingFCD</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="LGOS" lnType="LGOS1" inst="3" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>GOOSE subscription</Val>
              </DAI>
            </DOI>
            <DOI name="GoCBRef">
              <DAI name="setSrcCB" valKind="Set">
                <Val>KEMASIMmaximumLengthLogicalDeviceNameWithSixtyFourCharacters1234/LLN0.PingGoCBwithMaximumCharacters012</Val>
              </DAI>
              <DAI name="setSrcRef" valKind="Set">
                <Val>KEMASIMmaximumLengthLogicalDeviceNameWithSixtyFourCharacters1234/LLN0.PingGoCBwithMaximumCharacters012</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
      </Server>
    </AccessPoint>
  </IED>
  <IED name="IED2" manufacturer="BHEL" type="BCUED2">
    <Services>
      <DynAssociation max="8" />
      <SettingGroups>
        <SGEdit />
      </SettingGroups>
      <GetDirectory />
      <GetDataObjectDefinition />
      <GetDataSetValue />
      <DataSetDirectory />
      <ConfDataSet max="50" maxAttributes="128" modify="false" />
      <ReadWrite />
      <ConfReportControl max="150" bufMode="both" bufConf="false" />
      <GetCBValues />
      <ConfLogControl max="5" />
      <ConfLNs fixPrefix="true" fixLnInst="false" />
      <GOOSE max="10" />
      <FileHandling mms="true" />
      <DynDataSet max="100" maxAttributes="120" />
      <ReportSettings cbName="Fix" datSet="Dyn" rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" resvTms="true" owner="true" />
      <LogSettings cbName="Conf" datSet="Conf" logEna="Conf" trgOps="Conf" intgPd="Conf" />
      <GSESettings cbName="Fix" datSet="Conf" appID="Conf" />
      <ClientServices bufReport="false" goose="true" gsse="false" readLog="false" sv="false" unbufReport="false" supportsLdName="false" maxAttributes="0" maxReports="0" maxGOOSE="0" maxSMV="0">
        <TimeSyncProt sntp="false" c37_238="false" other="false" />
      </ClientServices>
      <ConfLdName />
      <ValueHandling setToRO="false" />
      <RedProt hsr="false" prp="true" rstp="false" />
      <TimeSyncProt sntp="true" c37_238="false" other="false" />
      <SupSubscription maxGo="10" maxSv="2" />
    </Services>
    <AccessPoint name="accessPoint1" desc="">
      <Server>
        <Authentication />
        <LDevice inst="Control" desc="">
          <LN0 lnClass="LLN0" lnType="LLN02" inst="" desc="System Logical Device">
            <DataSet name="TapChgData" desc="Tap Changer Control">
              <FCDA ldInst="Control" lnClass="ATCC" fc="ST" lnInst="1" doName="Loc" />
              <FCDA ldInst="Control" lnClass="ATCC" fc="ST" lnInst="1" doName="TapChg" />
              <FCDA ldInst="Control" lnClass="ATCC" fc="ST" lnInst="1" doName="ParOp" />
              <FCDA ldInst="Control" lnClass="ATCC" fc="MX" lnInst="1" doName="CtlV" />
              <FCDA ldInst="Control" lnClass="ATCC" fc="ST" lnInst="1" doName="Auto" />
              <FCDA ldInst="Control" lnClass="ATCC" fc="ST" lnInst="1" doName="HiTapPos" />
              <FCDA ldInst="Control" lnClass="ATCC" fc="ST" lnInst="1" doName="LoTapPos" />
            </DataSet>
            <DataSet name="CSWIData" desc="CSWI Data">
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="1" prefix="CB52" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="1" prefix="CB52" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="1" prefix="CB52" doName="PosA" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="1" prefix="CB52" doName="PosB" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="1" prefix="CB52" doName="PosC" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="2" prefix="ISO89A" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="2" prefix="ISO89A" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="3" prefix="ISO89B" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="3" prefix="ISO89B" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="4" prefix="ISO89L" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="4" prefix="ISO89L" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="5" prefix="ISO89T" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="5" prefix="ISO89T" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="6" prefix="B189A" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="6" prefix="B189A" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="7" prefix="B289A" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="7" prefix="B289A" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="8" prefix="ES89AE" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="8" prefix="ES89AE" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="9" prefix="ES89BE" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="9" prefix="ES89BE" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="10" prefix="ES89LE" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="10" prefix="ES89LE" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="11" prefix="ES89TE" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="11" prefix="ES89TE" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="12" prefix="B1AE1" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="12" prefix="B1AE1" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="13" prefix="B1AE2" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="13" prefix="B1AE2" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="14" prefix="B2AE1" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="14" prefix="B2AE1" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="15" prefix="B2AE2" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="15" prefix="B2AE2" doName="Pos" />
            </DataSet>
            <DataSet name="CILOData" desc="CILO Data">
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="1" prefix="CB52" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="1" prefix="CB52" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="2" prefix="ISO89A" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="2" prefix="ISO89A" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="3" prefix="ISO89B" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="3" prefix="ISO89B" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="4" prefix="ISO89L" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="4" prefix="ISO89L" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="5" prefix="ISO89T" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="5" prefix="ISO89T" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="6" prefix="B189A" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="6" prefix="B189A" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="7" prefix="B289A" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="7" prefix="B289A" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="8" prefix="ES89AE" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="8" prefix="ES89AE" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="9" prefix="ES89BE" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="9" prefix="ES89BE" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="10" prefix="ES89LE" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="10" prefix="ES89LE" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="11" prefix="ES89TE" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="11" prefix="ES89TE" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="12" prefix="B1AE1" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="12" prefix="B1AE1" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="13" prefix="B1AE2" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="13" prefix="B1AE2" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="14" prefix="B2AE1" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="14" prefix="B2AE1" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="15" prefix="B2AE2" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="15" prefix="B2AE2" doName="EnaOpn" />
            </DataSet>
            <ReportControl name="CSWIReportBuf" confRev="1" datSet="CSWIData" rptID="CSWIReportBufID" buffered="true" intgPd="30000" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="CILOReportBuf" confRev="1" datSet="CILOData" rptID="CILOReportBufID" buffered="true" intgPd="30000" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="TapChgReportBuf" confRev="1" datSet="TapChgData" rptID="TapChgReportBufID" buffered="true" intgPd="30000" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="ldNs" valKind="RO">
                <Val>IEC 61850-7-4:2010</Val>
              </DAI>
              <DAI name="vendor" desc="" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
              <DAI name="configRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Diag" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LEDRs" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <GSEControl name="CSWISTSGCB" appID="CSWISTSGCBID" desc="" datSet="CSWIData" confRev="1" fixedOffs="false" type="GOOSE" />
            <SettingControl numOfSGs="4" actSG="1" resvTms="1200" />
          </LN0>
          <LN lnClass="LPHD" lnType="LPHD2" inst="1" prefix="" desc="Physical device Information">
            <DOI name="Sim">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="PhyNam">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="hwRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="serNum" valKind="Set">
                <Val>01</Val>
              </DAI>
              <DAI name="model" valKind="Set">
                <Val>2017-BHEL BCU-01</Val>
              </DAI>
            </DOI>
            <DOI name="PhyHealth">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Proxy">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI5" inst="1" prefix="CB52">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="PosA">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="PosB">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="PosC">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>CB52 Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
            <Inputs>
              <ExtRef iedName="IED1" ldInst="Control" lnClass="CSWI" lnInst="1" prefix="CB52" doName="Pos" intAddr="1.DISCRETE_OUT:1665,INVALID_OUT:0,INVALID_OUT:0" serviceType="GOOSE" srcLDInst="Control" srcLNClass="LLN0" srcCBName="CSWISTSGCB" />
              <ExtRef iedName="BCU_403L" ldInst="Control" lnClass="CSWI" lnInst="1" prefix="CB52" doName="Pos" intAddr="1.DISCRETE_OUT:1667,INVALID_OUT:0,INVALID_OUT:0" serviceType="GOOSE" srcLDInst="Control" srcLNClass="LLN0" srcCBName="CSWISTSGCB" />
            </Inputs>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI6" inst="2" prefix="ISO89A">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>ISO89A Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI6" inst="3" prefix="ISO89B">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>ISO89B-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI6" inst="4" prefix="ISO89L">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>ISO89L-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
            <Inputs>
              <ExtRef iedName="IED1" ldInst="Control" lnClass="CSWI" lnInst="4" prefix="ISO89L" doName="Pos" intAddr="1.DISCRETE_OUT:1677,INVALID_OUT:0,INVALID_OUT:0" serviceType="GOOSE" srcLDInst="Control" srcLNClass="LLN0" srcCBName="CSWISTSGCB" />
              <ExtRef iedName="BCU_403L" ldInst="Control" lnClass="CSWI" lnInst="4" prefix="ISO89L" doName="Pos" intAddr="1.DISCRETE_OUT:1679,INVALID_OUT:0,INVALID_OUT:0" serviceType="GOOSE" srcLDInst="Control" srcLNClass="LLN0" srcCBName="CSWISTSGCB" />
            </Inputs>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI6" inst="5" prefix="ISO89T">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>ISO89T-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI6" inst="6" prefix="B189A">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>B189A-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI6" inst="7" prefix="B289A">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>B289A-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI7" inst="8" prefix="ES89AE">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>ES89AE-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI7" inst="9" prefix="ES89BE">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>ES89BE-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI7" inst="10" prefix="ES89LE">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>ES89LE-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI7" inst="11" prefix="ES89TE">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>ES89TE-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI7" inst="12" prefix="B1AE1">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>B1AE1-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI7" inst="13" prefix="B1AE2">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>B1AE2-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI7" inst="14" prefix="B2AE1">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>B2AE1-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI7" inst="15" prefix="B2AE2">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>B2AE2-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI8" inst="16" prefix="AR_ON">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>VT Selected Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI8" inst="17" prefix="R86A_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>CVT Selected Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI8" inst="18" prefix="R86B_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>MTR Selected Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI8" inst="19" prefix="R96A_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>CB-52-R-Phase Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI8" inst="20" prefix="R96B_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>CB-52-Y-Phase Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI8" inst="21" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>CB-52-B-Phase Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI8" inst="22" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI8" inst="23" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI8" inst="24" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI8" inst="25" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO5" inst="1" prefix="CB52">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking -Circuit Breaker</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO6" inst="2" prefix="ISO89A">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking -Isolator 89A</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO6" inst="3" prefix="ISO89B">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking-Isolator 89B</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO6" inst="4" prefix="ISO89L">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking-Isolator 89L</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO6" inst="5" prefix="ISO89T">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking-Isolator 89T</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO6" inst="6" prefix="B189A">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking-Bus1 Isolator</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO6" inst="7" prefix="B289A">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking-Bus2 Isolator</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO7" inst="8" prefix="ES89AE">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking-Earth Switch 89 AE</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO7" inst="9" prefix="ES89BE">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking-Earth Switch 89 BE</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO7" inst="10" prefix="ES89LE">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking-Earth Switch 89 LE</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO7" inst="11" prefix="ES89TE">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking-Earth Switch 89 TE</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO7" inst="12" prefix="B1AE1">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - Bus1 Earth Switch 89 AE1</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO7" inst="13" prefix="B1AE2">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - Bus1 Earth Switch 89 AE2</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO7" inst="14" prefix="B2AE1">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - Bus2 Earth Switch 89 AE1</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO7" inst="15" prefix="B2AE2">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - Bus2 Earth Switch 89 AE2</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO8" inst="16" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - Cb Local Operation permissible</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO8" inst="17" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - CVT Selected</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO8" inst="18" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - MTR Reset</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO8" inst="19" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - CB-52-R-Phase</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO8" inst="20" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - CB-52-Y-Phase</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO8" inst="21" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - CB-52-B-Phase</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO8" inst="22" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - </Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO8" inst="23" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - </Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO8" inst="24" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - </Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO8" inst="25" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - </Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="ATCC" lnType="ATCC2" inst="1" prefix="">
            <DOI name="Auto">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="TapChg">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="ParOp">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Tap Changer</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="CtlV">
              <SDI name="mag">
                <DAI name="f" valKind="RO">
                  <Val>0.0</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="ParTraMod" desc="">
              <DAI name="setVal" valKind="Set">
                <Val> No Mode Predefined</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
        <LDevice inst="Measurements" desc="">
          <LN0 lnClass="LLN0" lnType="LLN02" inst="" desc="System Logical Device">
            <DataSet name="Fed1MeasData" desc="">
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="TotW" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="TotVAr" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="TotVA" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="TotPF" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="Hz" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="PPV" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="PhV" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="A" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="W" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="VAr" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="VA" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="PF" />
              <FCDA ldInst="Measurements" lnClass="MMXN" fc="MX" prefix="" lnInst="1" doName="Hz" />
              <FCDA ldInst="Measurements" lnClass="MMXN" fc="MX" prefix="" lnInst="1" doName="Vol" />
            </DataSet>
            <DataSet name="Fed2MeasData" desc="">
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="TotW" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="TotVAr" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="TotVA" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="TotPF" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="Hz" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="PPV" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="PhV" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="A" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="W" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="VAr" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="VA" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="PF" />
              <FCDA ldInst="Measurements" lnClass="MMXN" fc="MX" prefix="" lnInst="2" doName="Hz" />
              <FCDA ldInst="Measurements" lnClass="MMXN" fc="MX" prefix="" lnInst="2" doName="Vol" />
            </DataSet>
            <ReportControl name="Fed1MeasReportUnBuf" confRev="1" desc="" datSet="Fed1MeasData" intgPd="30000" rptID="Fed1MeasReportUnBufID" buffered="false" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="Fed2MeasReportUnBuf" confRev="1" desc="" datSet="Fed2MeasData" intgPd="30000" rptID="Fed2MeasReportUnBufID" buffered="false" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="ldNs" valKind="RO">
                <Val>IEC 61850-7-4:2010</Val>
              </DAI>
              <DAI name="vendor" desc="" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
              <DAI name="configRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Diag" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LEDRs" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnClass="LPHD" lnType="LPHD2" inst="1" prefix="" desc="Physical device Information">
            <DOI name="Sim">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="PhyNam">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="hwRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="serNum" valKind="Set">
                <Val>01</Val>
              </DAI>
              <DAI name="model" valKind="Set">
                <Val>2017-BHEL BCU-01</Val>
              </DAI>
            </DOI>
            <DOI name="PhyHealth">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Proxy">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="MMXU" lnType="MMXU2" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Feeder1 Measurements</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="MMXU" lnType="MMXU2" inst="2" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Feeder2 Measurements</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="MMXN" lnType="MMXN2" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Feeder1 Non-Phase related Measurement</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="MMXN" lnType="MMXN2" inst="2" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Feeder2 Non-Phase related Measurement</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
        <LDevice inst="Protection" desc="">
          <LN0 lnClass="LLN0" lnType="LLN02" inst="" desc="System Logical Device">
            <DataSet name="OCTripData" desc="">
              <FCDA ldInst="Protection" lnClass="PTOC" fc="ST" prefix="" lnInst="1" doName="Str" />
              <FCDA ldInst="Protection" lnClass="PTOC" fc="ST" prefix="" lnInst="1" doName="Op" />
              <FCDA ldInst="Protection" lnClass="PIOC" fc="ST" prefix="" lnInst="1" doName="Str" />
              <FCDA ldInst="Protection" lnClass="PIOC" fc="ST" prefix="" lnInst="1" doName="Op" />
            </DataSet>
            <DataSet name="VolTripData" desc="">
              <FCDA ldInst="Protection" lnClass="PTUV" fc="ST" prefix="" lnInst="1" doName="Str" />
              <FCDA ldInst="Protection" lnClass="PTUV" fc="ST" prefix="" lnInst="1" doName="Op" />
              <FCDA ldInst="Protection" lnClass="PTOV" fc="ST" prefix="" lnInst="1" doName="Str" />
              <FCDA ldInst="Protection" lnClass="PTOV" fc="ST" prefix="" lnInst="1" doName="Op" />
            </DataSet>
            <DataSet name="FreqTripData" desc="">
              <FCDA ldInst="Protection" lnClass="PTUF" fc="ST" prefix="" lnInst="1" doName="Str" />
              <FCDA ldInst="Protection" lnClass="PTUF" fc="ST" prefix="" lnInst="1" doName="Op" />
              <FCDA ldInst="Protection" lnClass="PFRC" fc="ST" prefix="" lnInst="1" doName="Str" />
              <FCDA ldInst="Protection" lnClass="PFRC" fc="ST" prefix="" lnInst="1" doName="Op" />
            </DataSet>
            <DataSet name="BrFailData" desc="">
              <FCDA ldInst="Protection" lnClass="RBRF" fc="ST" prefix="" lnInst="1" doName="Str" />
              <FCDA ldInst="Protection" lnClass="RBRF" fc="ST" prefix="" lnInst="1" doName="OpEx" />
            </DataSet>
            <DataSet name="EFTripData" desc="">
              <FCDA ldInst="Protection" lnClass="PTOC" fc="ST" prefix="" lnInst="2" doName="Str" />
              <FCDA ldInst="Protection" lnClass="PTOC" fc="ST" prefix="" lnInst="2" doName="Op" />
              <FCDA ldInst="Protection" lnClass="PIOC" fc="ST" prefix="" lnInst="2" doName="Str" />
              <FCDA ldInst="Protection" lnClass="PIOC" fc="ST" prefix="" lnInst="2" doName="Op" />
            </DataSet>
            <DataSet name="CommonTripData" desc="">
              <FCDA ldInst="Protection" lnClass="PTRC" fc="ST" prefix="" lnInst="1" doName="Tr" />
              <FCDA ldInst="Protection" lnClass="PTRC" fc="ST" prefix="" lnInst="1" doName="Op" />
              <FCDA ldInst="Protection" lnClass="PTRC" fc="ST" prefix="" lnInst="1" doName="Str" />
            </DataSet>
            <DataSet name="AutoRecData" desc="">
              <FCDA ldInst="Protection" lnClass="RREC" fc="ST" prefix="" lnInst="1" doName="OpCls" />
              <FCDA ldInst="Protection" lnClass="RREC" fc="ST" prefix="" lnInst="1" doName="AutoRecSt" />
            </DataSet>
            <DataSet name="ChkSyncData" desc="">
              <FCDA ldInst="Protection" lnClass="RSYN" fc="ST" prefix="" lnInst="1" doName="Rel" />
              <FCDA ldInst="Protection" lnClass="RSYN" fc="ST" prefix="" lnInst="1" doName="VInd" />
              <FCDA ldInst="Protection" lnClass="RSYN" fc="ST" prefix="" lnInst="1" doName="AngInd" />
              <FCDA ldInst="Protection" lnClass="RSYN" fc="ST" prefix="" lnInst="1" doName="HzInd" />
              <FCDA ldInst="Protection" lnClass="RSYN" fc="ST" prefix="" lnInst="1" doName="SynPrg" />
              <FCDA ldInst="Protection" lnClass="RSYN" fc="MX" prefix="" lnInst="1" doName="DifVClc" />
              <FCDA ldInst="Protection" lnClass="RSYN" fc="MX" prefix="" lnInst="1" doName="DifHzClc" />
              <FCDA ldInst="Protection" lnClass="RSYN" fc="MX" prefix="" lnInst="1" doName="DifAngClc" />
            </DataSet>
            <ReportControl name="OCTripReportBuf" confRev="1" desc="" datSet="OCTripData" intgPd="30000" rptID="OCTripReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="EFTripReportBuf" confRev="1" desc="" datSet="EFTripData" intgPd="30000" rptID="EFTripReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="VolTripReportBuf" confRev="1" desc="" datSet="VolTripData" intgPd="30000" rptID="VolTripReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="FreqTripReportBuf" confRev="1" desc="" datSet="FreqTripData" intgPd="30000" rptID="FreqTripReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="BrFailReportBuf" confRev="1" desc="" datSet="BrFailData" intgPd="30000" rptID="BrFailReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="CommonTripReportBuf" confRev="1" desc="" datSet="CommonTripData" intgPd="30000" rptID="CommonTripReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="AutoRecReportBuf" confRev="1" desc="" datSet="AutoRecData" intgPd="30000" rptID="AutoRecReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="ChkSyncReportBuf" confRev="1" desc="" datSet="ChkSyncData" intgPd="30000" rptID="ChkSyncReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="ldNs" valKind="RO">
                <Val>IEC 61850-7-4:2010</Val>
              </DAI>
              <DAI name="vendor" desc="" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
              <DAI name="configRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Diag" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LEDRs" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <SettingControl numOfSGs="4" actSG="1" resvTms="1200" />
          </LN0>
          <LN lnClass="LPHD" lnType="LPHD2" inst="1" prefix="" desc="Physical device Information">
            <DOI name="Sim">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="PhyNam">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="hwRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="serNum" valKind="Set">
                <Val>01</Val>
              </DAI>
              <DAI name="model" valKind="Set">
                <Val>2017-BHEL BCU-01</Val>
              </DAI>
            </DOI>
            <DOI name="PhyHealth">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Proxy">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="PTOC" lnType="PTOC3" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Time Overcurrent</Val>
              </DAI>
            </DOI>
            <DOI name="DirMod">
              <DAI name="setVal" valKind="RO">
                <Val>NonDirectional</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="PIOC" lnType="PIOC3" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Instantaneous Overcurrent</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="PTUF" lnType="PTUF2" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Under Frequency</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="PTUV" lnType="PTUV2" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Under Voltage</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="PTOV" lnType="PTOV2" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Over Voltage</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="RBRF" lnType="RBRF2" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Breaker Fail</Val>
              </DAI>
            </DOI>
            <DOI name="FailMod">
              <DAI name="setVal" valKind="RO">
                <Val>Both current and breaker status</Val>
              </DAI>
            </DOI>
            <DOI name="ReTrMod" desc="">
              <DAI name="setVal" valKind="RO">
                <Val>With Current and Breaker Status Check</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="PTRC" lnType="PTRC2" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Common Trip</Val>
              </DAI>
            </DOI>
            <DOI name="TrMod" desc="">
              <DAI name="setVal" valKind="RO">
                <Val>1 or 3 Phase Tripping</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="PIOC" lnType="PIOC4" inst="2" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Earthfault Hiset</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="PTOC" lnType="PTOC4" inst="2" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Neutral Overcurrent</Val>
              </DAI>
            </DOI>
            <DOI name="DirMod">
              <DAI name="setVal" valKind="RO">
                <Val>NonDirectional</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="PFRC" lnType="PFRC2" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Rate of Change of Frequency</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="RREC" lnType="RREC2" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Auto Reclosure</Val>
              </DAI>
            </DOI>
            <DOI name="TrBeh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>Undefined</Val>
              </DAI>
              <DAI name="subVal" valKind="RO">
                <Val>Undefined</Val>
              </DAI>
            </DOI>
            <DOI name="AutoRecSt" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>Ready</Val>
              </DAI>
              <DAI name="subVal" valKind="RO">
                <Val>Ready</Val>
              </DAI>
            </DOI>
            <DOI name="CycTrMod1" desc="">
              <DAI name="setVal" valKind="RO">
                <Val>specific</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="RSYN" lnType="RSYN2" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Check synchronism</Val>
              </DAI>
            </DOI>
            <DOI name="Rel">
              <DAI name="stVal" valKind="RO">
                <Val>1</Val>
              </DAI>
            </DOI>
            <DOI name="VInd">
              <DAI name="stVal" valKind="RO">
                <Val>1</Val>
              </DAI>
            </DOI>
            <DOI name="AngInd">
              <DAI name="stVal" valKind="RO">
                <Val>1</Val>
              </DAI>
            </DOI>
            <DOI name="HzInd">
              <DAI name="stVal" valKind="RO">
                <Val>1</Val>
              </DAI>
            </DOI>
            <DOI name="SynPrg">
              <DAI name="stVal" valKind="RO">
                <Val>1</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LivDeaMod" desc="">
              <DAI name="setVal" valKind="Set">
                <Val>Dead Line, Dead Bus</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
        <LDevice inst="Records" desc="">
          <LN0 lnClass="LLN0" lnType="LLN02" inst="" desc="System Logical Device">
            <DataSet name="RecordsData" desc="">
              <FCDA ldInst="Records" lnClass="RDRE" fc="ST" prefix="" lnInst="1" doName="RcdMade" />
              <FCDA ldInst="Records" lnClass="RDRE" fc="ST" prefix="" lnInst="1" doName="FltNum" />
            </DataSet>
            <ReportControl name="RecordsReportBuf" confRev="1" desc="" datSet="RecordsData" intgPd="30000" rptID="RecordsReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="ldNs" valKind="RO">
                <Val>IEC 61850-7-4:2010</Val>
              </DAI>
              <DAI name="vendor" desc="" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
              <DAI name="configRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Diag" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LEDRs" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <SettingControl numOfSGs="4" actSG="1" resvTms="1200" />
          </LN0>
          <LN lnClass="LPHD" lnType="LPHD2" inst="1" prefix="" desc="Physical device Information">
            <DOI name="Sim">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="PhyNam">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="hwRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="serNum" valKind="Set">
                <Val>01</Val>
              </DAI>
              <DAI name="model" valKind="Set">
                <Val>2017-BHEL BCU-01</Val>
              </DAI>
            </DOI>
            <DOI name="PhyHealth">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Proxy">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="RDRE" lnType="RDRE2" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Disturbance Recorder</Val>
              </DAI>
            </DOI>
            <DOI name="RcdTrg" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="MemRs" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="MemClr" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
        <LDevice inst="Systems" desc="">
          <LN0 lnClass="LLN0" lnType="LLN02" inst="" desc="System Logical Device">
            <DataSet name="INDGGIOData" desc="Indications">
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind1" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind2" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind3" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind4" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind5" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind6" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind7" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind8" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind9" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind10" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind11" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind12" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind13" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind14" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind15" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind16" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind17" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind18" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind19" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind20" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind21" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind22" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind23" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind24" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind25" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind26" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind27" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind28" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind29" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind30" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind31" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind32" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind33" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind34" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind35" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind36" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind37" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind38" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind39" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind40" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind41" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind42" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind43" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind44" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind45" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind46" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind47" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind48" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind49" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind50" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind51" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind52" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind53" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind54" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind55" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind56" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind57" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind58" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind59" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind60" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind61" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind62" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind63" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind64" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind65" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind66" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind67" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind68" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind69" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind70" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind71" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind72" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind73" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind74" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind75" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind76" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind77" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind78" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind79" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind80" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind81" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind82" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind83" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind84" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind85" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind86" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind87" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind88" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind89" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind90" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind91" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind92" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind93" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind94" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind95" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind96" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind97" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind98" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind99" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind100" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind101" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind102" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind103" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind104" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind105" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind106" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind107" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind108" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind109" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind110" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind111" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind112" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind113" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind114" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind115" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind116" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind117" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind118" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind119" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind120" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind121" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind122" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind123" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind124" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind125" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind126" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind127" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind128" />
            </DataSet>
            <DataSet name="GGIOData" desc="Internal Logics">
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind1" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind2" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind3" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind4" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind5" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind6" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind7" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind8" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind9" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind10" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind11" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind12" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind13" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind14" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind15" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind16" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind17" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind18" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind19" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind20" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind21" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind22" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind23" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind24" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind25" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind26" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind27" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind28" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind29" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind30" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind31" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind32" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind33" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind34" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind35" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind36" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind37" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind38" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind39" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind40" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind41" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind42" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind43" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind44" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind45" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind46" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind47" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind48" />
            </DataSet>
            <DataSet name="PUBGGIOData" desc="Digiatl goose">
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind1" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind2" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind3" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind4" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind5" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind6" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind7" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind8" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind9" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind14" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind15" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind16" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind17" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind18" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind19" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind20" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind21" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind22" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind23" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind24" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind25" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind26" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind27" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind28" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind29" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind30" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind31" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind32" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind33" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind34" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind35" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind36" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind37" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind38" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind39" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind40" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind41" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind42" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind43" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind44" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind45" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind46" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind47" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind48" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind49" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind50" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind51" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind52" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind53" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind54" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind55" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind56" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind57" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind58" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind59" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind60" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind61" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind62" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind63" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind64" />
            </DataSet>
            <DataSet name="IntegerData" desc="Integer Data">
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn1" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn2" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn3" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn4" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn5" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn6" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn7" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn8" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn9" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn10" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn11" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn12" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn13" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn14" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn15" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn16" />
            </DataSet>
            <DataSet name="ANAINData" desc="Ana4-20mA">
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn1" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn2" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn3" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn4" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn5" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn6" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn7" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn8" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn9" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn10" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn11" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn12" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn13" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn14" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn15" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn16" />
            </DataSet>
            <DataSet name="LIMALMData" desc="Limit Alarms">
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm1" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm2" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm3" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm4" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm5" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm6" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm7" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm8" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm9" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm10" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm11" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm12" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm13" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm14" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm15" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm16" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm17" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm18" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm19" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm20" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm21" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm22" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm23" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm24" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm25" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm26" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm27" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm28" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm29" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm30" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm31" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm32" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm33" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm34" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm35" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm36" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm37" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm38" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm39" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm40" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm41" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm42" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm43" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm44" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm45" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm46" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm47" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm48" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm49" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm50" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm51" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm52" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm53" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm54" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm55" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm56" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm57" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm58" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm59" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm60" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm61" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm62" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm63" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm64" />
            </DataSet>
            <DataSet name="MTR1Data" desc="Meter1 Data">
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn1" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn2" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn3" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn4" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn5" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn6" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn7" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn8" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn9" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn10" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn11" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn12" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn13" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn14" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn15" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn16" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn17" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn18" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn19" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn20" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn21" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn22" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn23" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn24" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn25" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn26" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn27" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn28" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn29" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn30" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn31" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn32" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn33" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn34" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn35" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn36" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn37" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn38" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn39" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn40" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn41" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn42" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn43" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn44" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn45" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn46" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn47" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn48" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn49" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn50" />
            </DataSet>
            <DataSet name="MTR2Data" desc="Meter2 Data">
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn1" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn2" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn3" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn4" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn5" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn6" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn7" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn8" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn9" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn10" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn11" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn12" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn13" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn14" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn15" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn16" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn17" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn18" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn19" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn20" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn21" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn22" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn23" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn24" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn25" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn26" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn27" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn28" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn29" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn30" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn31" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn32" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn33" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn34" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn35" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn36" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn37" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn38" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn39" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn40" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn41" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn42" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn43" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn44" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn45" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn46" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn47" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn48" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn49" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn50" />
            </DataSet>
            <ReportControl name="INDGGIOReportBuf" confRev="1" desc="" datSet="INDGGIOData" intgPd="30000" rptID="INDGGIOReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" dupd="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="GGIOReportBuf" confRev="1" desc="" datSet="GGIOData" intgPd="30000" rptID="GGIOReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" dupd="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="PUBGGIOReportBuf" confRev="1" desc="" datSet="PUBGGIOData" intgPd="30000" rptID="PUBGGIOReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="IntegerReportUnBuf" confRev="1" desc="" datSet="IntegerData" intgPd="30000" rptID="IntegerReportUnBufID" buffered="false" bufTime="120">
              <TrgOps dchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="ANAINReportUnbuf" confRev="1" desc="" datSet="ANAINData" intgPd="30000" rptID="ANAINReportUnbufID" buffered="false" bufTime="120">
              <TrgOps dchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="LIMALMReportBuf" confRev="1" desc="" datSet="LIMALMData" intgPd="30000" rptID="LIMALMReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="MTR1ReportBuf" confRev="1" desc="" datSet="MTR1Data" intgPd="30000" rptID="MTR1ReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="MTR2ReportBuf" confRev="1" desc="" datSet="MTR2Data" intgPd="30000" rptID="MTR2ReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="ldNs" valKind="RO">
                <Val>IEC 61850-7-4:2010</Val>
              </DAI>
              <DAI name="vendor" desc="" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
              <DAI name="configRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Diag" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LEDRs" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <GSEControl name="INDGGIOGCB" appID="INDGGIOGCBID" desc="" datSet="INDGGIOData" confRev="1" fixedOffs="true" type="GOOSE" />
            <GSEControl name="PUBGGIOGCB" appID="PUBGGIOGCBID" desc="" datSet="PUBGGIOData" confRev="1" fixedOffs="true" type="GOOSE" />
          </LN0>
          <LN lnClass="LPHD" lnType="LPHD2" inst="1" prefix="" desc="Physical device Information">
            <DOI name="Sim">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="PhyNam">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="hwRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="serNum" valKind="Set">
                <Val>01</Val>
              </DAI>
              <DAI name="model" valKind="Set">
                <Val>2017-BHEL BCU-01 </Val>
              </DAI>
            </DOI>
            <DOI name="PhyHealth">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Proxy">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="LTIM" lnType="LTIM2" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Time Management</Val>
              </DAI>
            </DOI>
            <DOI name="StrWeekDay" desc="">
              <DAI name="setVal" valKind="Set">
                <Val>Monday</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="LTMS" lnType="LTMS2" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Time master supervision</Val>
              </DAI>
            </DOI>
            <DOI name="TmSyn" desc="">
              <DAI name="stVal">
                <Val>Synchronized by a global area clock signal</Val>
              </DAI>
              <DAI name="subVal">
                <Val>Synchronized by a global area clock signal</Val>
              </DAI>
            </DOI>
            <DOI name="TmSrcSet1">
              <DAI name="setVal" valKind="Set">
                <Val>192.168.1.200</Val>
              </DAI>
            </DOI>
            <DOI name="TmSrcSet2">
              <DAI name="setVal" valKind="Set">
                <Val>192.168.1.200</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="GGIO" lnType="GGIO8" inst="1" prefix="IND_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Digital Inputs</Val>
              </DAI>
            </DOI>
            <DOI name="Ind1" desc="DI1_P1_CH1" />
            <DOI name="Ind2" desc="DI1_P1_CH2" />
            <DOI name="Ind3" desc="DI1_P1_CH3" />
            <DOI name="Ind4" desc="DI1_P1_CH4" />
            <DOI name="Ind5" desc="DI1_P1_CH5" />
            <DOI name="Ind6" desc="DI1_P1_CH6" />
            <DOI name="Ind7" desc="DI1_P1_CH7" />
            <DOI name="Ind8" desc="DI1_P1_CH8" />
            <DOI name="Ind9" desc="DI1_P1_CH9" />
            <DOI name="Ind10" desc="DI1_P1_CH10" />
            <DOI name="Ind11" desc="DI1_P1_CH11" />
            <DOI name="Ind12" desc="DI1_P1_CH12" />
            <DOI name="Ind13" desc="DI1_P2_CH1" />
            <DOI name="Ind14" desc="DI1_P2_CH2" />
            <DOI name="Ind15" desc="DI1_P2_CH3" />
            <DOI name="Ind16" desc="DI1_P2_CH4" />
            <DOI name="Ind17" desc="DI1_P2_CH5" />
            <DOI name="Ind18" desc="DI1_P2_CH6" />
            <DOI name="Ind19" desc="DI1_P2_CH7" />
            <DOI name="Ind20" desc="DI1_P2_CH8" />
            <DOI name="Ind21" desc="DI1_P2_CH9" />
            <DOI name="Ind22" desc="DI1_P2_CH10" />
            <DOI name="Ind23" desc="DI1_P2_CH11" />
            <DOI name="Ind24" desc="DI1_P2_CH12" />
            <DOI name="Ind25" desc="DI2_P1_CH1" />
            <DOI name="Ind26" desc="DI2_P1_CH2" />
            <DOI name="Ind27" desc="DI2_P1_CH3" />
            <DOI name="Ind28" desc="DI2_P1_CH4" />
            <DOI name="Ind29" desc="DI2_P1_CH5" />
            <DOI name="Ind30" desc="DI2_P1_CH6" />
            <DOI name="Ind31" desc="DI2_P1_CH7" />
            <DOI name="Ind32" desc="DI2_P1_CH8" />
            <DOI name="Ind33" desc="DI2_P1_CH9" />
            <DOI name="Ind34" desc="DI2_P1_CH10" />
            <DOI name="Ind35" desc="DI2_P1_CH11" />
            <DOI name="Ind36" desc="DI2_P1_CH12" />
            <DOI name="Ind37" desc="DI2_P2_CH1" />
            <DOI name="Ind38" desc="DI2_P2_CH2" />
            <DOI name="Ind39" desc="DI2_P2_CH3" />
            <DOI name="Ind40" desc="DI2_P2_CH4" />
            <DOI name="Ind41" desc="DI2_P2_CH5" />
            <DOI name="Ind42" desc="DI2_P2_CH6" />
            <DOI name="Ind43" desc="DI2_P2_CH7" />
            <DOI name="Ind44" desc="DI2_P2_CH8" />
            <DOI name="Ind45" desc="DI2_P2_CH9" />
            <DOI name="Ind46" desc="DI2_P2_CH10" />
            <DOI name="Ind47" desc="DI2_P2_CH11" />
            <DOI name="Ind48" desc="DI2_P2_CH12" />
            <DOI name="Ind49" desc="DI3_P1_CH1" />
            <DOI name="Ind50" desc="DI3_P1_CH2" />
            <DOI name="Ind51" desc="DI3_P1_CH3" />
            <DOI name="Ind52" desc="DI3_P1_CH4" />
            <DOI name="Ind53" desc="DI3_P1_CH5" />
            <DOI name="Ind54" desc="DI3_P1_CH6" />
            <DOI name="Ind55" desc="DI3_P1_CH7" />
            <DOI name="Ind56" desc="DI3_P1_CH8" />
            <DOI name="Ind57" desc="DI3_P1_CH9" />
            <DOI name="Ind58" desc="DI3_P1_CH10" />
            <DOI name="Ind59" desc="DI3_P1_CH11" />
            <DOI name="Ind60" desc="DI3_P1_CH12" />
            <DOI name="Ind61" desc="DI3_P2_CH1" />
            <DOI name="Ind62" desc="DI3_P2_CH2" />
            <DOI name="Ind63" desc="DI3_P2_CH3" />
            <DOI name="Ind64" desc="DI3_P2_CH4" />
            <DOI name="Ind65" desc="DI3_P2_CH5" />
            <DOI name="Ind66" desc="DI3_P2_CH6" />
            <DOI name="Ind67" desc="DI3_P2_CH7" />
            <DOI name="Ind68" desc="DI3_P2_CH8" />
            <DOI name="Ind69" desc="DI3_P2_CH9" />
            <DOI name="Ind70" desc="DI3_P2_CH10" />
            <DOI name="Ind71" desc="DI3_P2_CH11" />
            <DOI name="Ind72" desc="DI3_P2_CH12" />
            <DOI name="Ind73" desc="DI4_P1_CH1" />
            <DOI name="Ind74" desc="DI4_P1_CH2" />
            <DOI name="Ind75" desc="DI4_P1_CH3" />
            <DOI name="Ind76" desc="DI4_P1_CH4" />
            <DOI name="Ind77" desc="DI4_P1_CH5" />
            <DOI name="Ind78" desc="DI4_P1_CH6" />
            <DOI name="Ind79" desc="DI4_P1_CH7" />
            <DOI name="Ind80" desc="DI4_P1_CH8" />
            <DOI name="Ind81" desc="DI4_P1_CH9" />
            <DOI name="Ind82" desc="DI4_P1_CH10" />
            <DOI name="Ind83" desc="DI4_P1_CH11" />
            <DOI name="Ind84" desc="DI4_P1_CH12" />
            <DOI name="Ind85" desc="DI4_P2_CH1" />
            <DOI name="Ind86" desc="DI4_P2_CH2" />
            <DOI name="Ind87" desc="DI4_P2_CH3" />
            <DOI name="Ind88" desc="DI4_P2_CH4" />
            <DOI name="Ind89" desc="DI4_P2_CH5" />
            <DOI name="Ind90" desc="DI4_P2_CH6" />
            <DOI name="Ind91" desc="DI4_P2_CH7" />
            <DOI name="Ind92" desc="DI4_P2_CH8" />
            <DOI name="Ind93" desc="DI4_P2_CH9" />
            <DOI name="Ind94" desc="DI4_P2_CH10" />
            <DOI name="Ind95" desc="DI4_P2_CH11" />
            <DOI name="Ind96" desc="DI4_P2_CH12" />
            <DOI name="Ind97" desc="DI_Dummy" />
            <DOI name="Ind98" desc="DI_Dummy" />
            <DOI name="Ind99" desc="DI_Dummy" />
            <DOI name="Ind100" desc="DI_Dummy" />
            <DOI name="Ind101" desc="DI_Dummy" />
            <DOI name="Ind102" desc="DI_Dummy" />
            <DOI name="Ind103" desc="DI_Dummy" />
            <DOI name="Ind104" desc="DI_Dummy" />
            <DOI name="Ind105" desc="DI_Dummy" />
            <DOI name="Ind106" desc="DI_Dummy" />
            <DOI name="Ind107" desc="DI_Dummy" />
            <DOI name="Ind108" desc="DI_Dummy" />
            <DOI name="Ind109" desc="DI_Dummy" />
            <DOI name="Ind110" desc="DI_Dummy" />
            <DOI name="Ind111" desc="DI_Dummy" />
            <DOI name="Ind112" desc="DI_Dummy" />
            <DOI name="Ind113" desc="DI_Dummy" />
            <DOI name="Ind114" desc="DI_Dummy" />
            <DOI name="Ind115" desc="DI_Dummy" />
            <DOI name="Ind116" desc="DI_Dummy" />
            <DOI name="Ind117" desc="DI_Dummy" />
            <DOI name="Ind118" desc="DI_Dummy" />
            <DOI name="Ind119" desc="DI_Dummy" />
            <DOI name="Ind120" desc="DI_Dummy" />
            <DOI name="Ind121" desc="DI_Dummy" />
            <DOI name="Ind122" desc="DI_Dummy" />
            <DOI name="Ind123" desc="DI_Dummy" />
            <DOI name="Ind124" desc="DI_Dummy" />
            <DOI name="Ind125" desc="DI_Dummy" />
            <DOI name="Ind126" desc="DI_Dummy" />
            <DOI name="Ind127" desc="DI_Dummy" />
            <DOI name="Ind128" desc="DI_Dummy" />
            <Inputs>
              <ExtRef iedName="KEMASIM" ldInst="LD1" lnClass="GGIO" lnInst="1" doName="Ind1" daName="stVal" intAddr="0.DISCRETE_OUT:1601" serviceType="GOOSE" srcLDInst="LD1" srcLNClass="LLN0" srcCBName="PingGOCB" />
              <ExtRef iedName="KEMASIM" ldInst="LD1" lnClass="GGIO" lnInst="1" doName="Ind2" daName="stVal" intAddr="0.DISCRETE_OUT:1602" serviceType="GOOSE" srcLDInst="LD1" srcLNClass="LLN0" srcCBName="PingGOCB" />
              <ExtRef iedName="KEMASIM" ldInst="LD1" lnClass="GGIO" lnInst="1" doName="Ind6" daName="stVal" intAddr="0.DISCRETE_OUT:1603" serviceType="GOOSE" srcLDInst="LD1" srcLNClass="LLN0" srcCBName="PingGOCB" />
              <ExtRef iedName="KEMASIM" ldInst="LD1" lnClass="GGIO" lnInst="1" doName="Ind7" daName="stVal" intAddr="0.DISCRETE_OUT:1604" serviceType="GOOSE" srcLDInst="LD1" srcLNClass="LLN0" srcCBName="PingGOCB" />
              <ExtRef iedName="KEMASIM" ldInst="LD1" lnClass="GGIO" lnInst="1" doName="Ind8" daName="stVal" intAddr="0.DISCRETE_OUT:1605" serviceType="GOOSE" srcLDInst="LD1" srcLNClass="LLN0" srcCBName="PingGOCB" />
            </Inputs>
          </LN>
          <LN lnClass="GGIO" lnType="GGIO10" inst="2" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Internal Variables</Val>
              </DAI>
            </DOI>
            <DOI name="Ind1" desc="GenTrip" />
            <DOI name="Ind2" desc="OvercurrTp" />
            <DOI name="Ind3" desc="OvercurrHstp" />
            <DOI name="Ind4" desc="EarthFltTp" />
            <DOI name="Ind5" desc="EarthFltHstp" />
            <DOI name="Ind6" desc="OverVol" />
            <DOI name="Ind7" desc="UnderVol" />
            <DOI name="Ind8" desc="BrkFail" />
            <DOI name="Ind9" desc="AutoReclose" />
            <DOI name="Ind10" desc="ChckSync" />
            <DOI name="Ind11" desc="UnderFreqTrip" />
            <DOI name="Ind12" desc="df/dt Trip" />
            <DOI name="Ind13" desc="Bus1 CVT Selected" />
            <DOI name="Ind14" desc="Bus1 CVT Deselected" />
            <DOI name="Ind15" desc="Bus2 CVT Selected" />
            <DOI name="Ind16" desc="Bus2 CVT Deselected" />
            <DOI name="Ind17" desc="GT1 CVT Selected" />
            <DOI name="Ind18" desc="GT1 CVT Deselected" />
            <DOI name="Ind19" desc="GT2 CVT Selected" />
            <DOI name="Ind20" desc="GT2 CVT Deselected" />
            <DOI name="Ind21" desc="Line1 CVT Selected" />
            <DOI name="Ind22" desc="Line1 CVT Deselected" />
            <DOI name="Ind23" desc="Line2 CVT Selected" />
            <DOI name="Ind24" desc="Line2 CVT Deselected" />
            <DOI name="Ind25" desc="CB Local Operation permissible" />
            <DOI name="Ind26" desc="DeadLineDeadBus status" />
            <DOI name="Ind27" desc="DeadLineLiveBus status" />
            <DOI name="Ind28" desc="LiveLineDeadBus status" />
            <DOI name="Ind29" desc="LiveLineLiveB status" />
            <DOI name="Ind30" desc="DeadLine status" />
            <DOI name="Ind31" desc="DeadBus status" />
            <DOI name="Ind32" desc="AR_Lockout" />
            <DOI name="Ind33" desc="BCU L/R Flag" />
            <DOI name="Ind34" desc="AR_Block" />
            <DOI name="Ind35" desc="MODBUSTCP Master Health" />
            <DOI name="Ind36" desc="MODBUSSerial Master Health" />
            <DOI name="Ind37" desc="DNPTCP Master Health" />
            <DOI name="Ind38" desc="DNPSerial Master Health" />
            <DOI name="Ind39" desc="Server101_health" />
            <DOI name="Ind40" desc="Server104_health" />
            <DOI name="Ind41" desc="Dummy1" />
            <DOI name="Ind42" desc="Dummy2" />
            <DOI name="Ind43" desc="Dummy3" />
            <DOI name="Ind44" desc="Dummy4" />
            <DOI name="Ind45" desc="Dummy5" />
            <DOI name="Ind46" desc="Dummy6" />
            <DOI name="Ind47" desc="Dummy7" />
            <DOI name="Ind48" desc="Dummy8" />
          </LN>
          <LN lnClass="GGIO" lnType="GGIO11" inst="3" prefix="PUB_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Digital Goose Inputs</Val>
              </DAI>
            </DOI>
            <DOI name="Ind1" desc="Digital input 1" />
            <DOI name="Ind2" desc="Digital input 2" />
            <DOI name="Ind3" desc="Digital input 3" />
            <DOI name="Ind4" desc="Digital input 4" />
            <DOI name="Ind5" desc="Digital input 5" />
            <DOI name="Ind6" desc="Digital input 6" />
            <DOI name="Ind7" desc="Digital input 7" />
            <DOI name="Ind8" desc="Digital input 8" />
            <DOI name="Ind9" desc="Digital input 9" />
            <DOI name="Ind10" desc="Digital input 10" />
            <DOI name="Ind11" desc="Digital input 11" />
            <DOI name="Ind12" desc="Digital input 12" />
            <DOI name="Ind13" desc="Digital input 13" />
            <DOI name="Ind14" desc="Digital input 14" />
            <DOI name="Ind15" desc="Digital input 15" />
            <DOI name="Ind16" desc="Digital input 16" />
            <DOI name="Ind17" desc="Digital input 17" />
            <DOI name="Ind18" desc="Digital input 18" />
            <DOI name="Ind19" desc="Digital input 19" />
            <DOI name="Ind20" desc="Digital input 20" />
            <DOI name="Ind21" desc="Digital input 21" />
            <DOI name="Ind22" desc="Digital input 22" />
            <DOI name="Ind23" desc="Digital input 23" />
            <DOI name="Ind24" desc="Digital input 24" />
            <DOI name="Ind25" desc="Digital input 25" />
            <DOI name="Ind26" desc="Digital input 26" />
            <DOI name="Ind27" desc="Digital input 27" />
            <DOI name="Ind28" desc="Digital input 28" />
            <DOI name="Ind29" desc="Digital input 29" />
            <DOI name="Ind30" desc="Digital input 30" />
            <DOI name="Ind31" desc="Digital input 31" />
            <DOI name="Ind32" desc="Digital input 32" />
            <DOI name="Ind33" desc="Digital input 33" />
            <DOI name="Ind34" desc="Digital input 34" />
            <DOI name="Ind35" desc="Digital input 35" />
            <DOI name="Ind36" desc="Digital input 36" />
            <DOI name="Ind37" desc="Digital input 37" />
            <DOI name="Ind38" desc="Digital input 38" />
            <DOI name="Ind39" desc="Digital input 39" />
            <DOI name="Ind40" desc="Digital input 40" />
            <DOI name="Ind41" desc="Digital input 41" />
            <DOI name="Ind42" desc="Digital input 42" />
            <DOI name="Ind43" desc="Digital input 43" />
            <DOI name="Ind44" desc="Digital input 44" />
            <DOI name="Ind45" desc="Digital input 45" />
            <DOI name="Ind46" desc="Digital input 46" />
            <DOI name="Ind47" desc="Digital input 47" />
            <DOI name="Ind48" desc="Digital input 48" />
            <DOI name="Ind49" desc="Digital input 49" />
            <DOI name="Ind50" desc="Digital input 50" />
            <DOI name="Ind51" desc="Digital input 51" />
            <DOI name="Ind52" desc="Digital input 52" />
            <DOI name="Ind53" desc="Digital input 53" />
            <DOI name="Ind54" desc="Digital input 54" />
            <DOI name="Ind55" desc="Digital input 55" />
            <DOI name="Ind56" desc="Digital input 56" />
            <DOI name="Ind57" desc="Digital input 57" />
            <DOI name="Ind58" desc="Digital input 58" />
            <DOI name="Ind59" desc="Digital input 59" />
            <DOI name="Ind60" desc="Digital input 60" />
            <DOI name="Ind61" desc="Digital input 61" />
            <DOI name="Ind62" desc="Digital input 62" />
            <DOI name="Ind63" desc="Digital input 63" />
            <DOI name="Ind64" desc="Digital input 64" />
          </LN>
          <LN lnClass="GGIO" lnType="GGIO12" inst="4" prefix="INT_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Integer inputs</Val>
              </DAI>
            </DOI>
            <DOI name="IntIn1" desc="AR Failure Cause " />
            <DOI name="IntIn2" desc="CB Operation counter" />
            <DOI name="IntIn3" desc="Integer input 3" />
            <DOI name="IntIn4" desc="Integer input 4" />
            <DOI name="IntIn5" desc="Integer input 5" />
            <DOI name="IntIn6" desc="Integer input 6" />
            <DOI name="IntIn7" desc="Integer input 7" />
            <DOI name="IntIn8" desc="Integer input 8" />
            <DOI name="IntIn9" desc="Integer input 9" />
            <DOI name="IntIn10" desc="Integer input 10" />
            <DOI name="IntIn11" desc="Integer input 11" />
            <DOI name="IntIn12" desc="Integer input 12" />
            <DOI name="IntIn13" desc="Integer input 13" />
            <DOI name="IntIn14" desc="Integer input 14" />
            <DOI name="IntIn15" desc="Integer input 15" />
            <DOI name="IntIn16" desc="Integer input 16" />
            <DOI name="IntIn17" desc="Integer input 17" />
            <DOI name="IntIn18" desc="Integer input 18" />
            <DOI name="IntIn19" desc="Integer input 19" />
            <DOI name="IntIn20" desc="Integer input 20" />
            <DOI name="IntIn21" desc="Integer input 21" />
            <DOI name="IntIn22" desc="Integer input 22" />
            <DOI name="IntIn23" desc="Integer input 23" />
            <DOI name="IntIn24" desc="Integer input 24" />
            <DOI name="IntIn25" desc="Integer input 25" />
            <DOI name="IntIn26" desc="Integer input 26" />
            <DOI name="IntIn27" desc="Integer input 27" />
            <DOI name="IntIn28" desc="Integer input 28" />
            <DOI name="IntIn29" desc="Integer input 29" />
            <DOI name="IntIn30" desc="Integer input 30" />
            <DOI name="IntIn31" desc="Integer input 31" />
            <DOI name="IntIn32" desc="Integer input 32" />
          </LN>
          <LN lnClass="GGIO" lnType="GGIO13" inst="5" prefix="APUB_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Analog GOOSE</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn1" desc="Analog Goose 1" />
            <DOI name="AnIn2" desc="Analog Goose 2" />
            <DOI name="AnIn3" desc="Analog Goose 3" />
            <DOI name="AnIn4" desc="Analog Goose 4" />
            <DOI name="AnIn5" desc="Analog Goose 5" />
            <DOI name="AnIn6" desc="Analog Goose 6" />
            <DOI name="AnIn7" desc="Analog Goose 7" />
            <DOI name="AnIn8" desc="Analog Goose 8" />
            <DOI name="AnIn9" desc="Analog Goose 9" />
            <DOI name="AnIn10" desc="Analog Goose 10" />
            <DOI name="AnIn11" desc="Analog Goose 11" />
            <DOI name="AnIn12" desc="Analog Goose 12" />
            <DOI name="AnIn13" desc="Analog Goose 13" />
            <DOI name="AnIn14" desc="Analog Goose 14" />
            <DOI name="AnIn15" desc="Analog Goose 15" />
            <DOI name="AnIn16" desc="Analog Goose 16" />
            <DOI name="AnIn17" desc="Analog Goose 17" />
            <DOI name="AnIn18" desc="Analog Goose 18" />
            <DOI name="AnIn19" desc="Analog Goose 19" />
            <DOI name="AnIn20" desc="Analog Goose 20" />
            <DOI name="AnIn21" desc="Analog Goose 21" />
            <DOI name="AnIn22" desc="Analog Goose 22" />
            <DOI name="AnIn23" desc="Analog Goose 23" />
            <DOI name="AnIn24" desc="Analog Goose 24" />
            <DOI name="AnIn25" desc="Analog Goose 25" />
            <DOI name="AnIn26" desc="Analog Goose 26" />
            <DOI name="AnIn27" desc="Analog Goose 27" />
            <DOI name="AnIn28" desc="Analog Goose 28" />
            <DOI name="AnIn29" desc="Analog Goose 29" />
            <DOI name="AnIn30" desc="Analog Goose 30" />
            <DOI name="AnIn31" desc="Analog Goose 31" />
            <DOI name="AnIn32" desc="Analog Goose 32" />
          </LN>
          <LN lnClass="GGIO" lnType="GGIO14" inst="6" prefix="ANAIN_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>4-20mA Signals</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn1" desc="4-20mA signal 1" />
            <DOI name="AnIn2" desc="4-20mA signal 2" />
            <DOI name="AnIn3" desc="4-20mA signal 3" />
            <DOI name="AnIn4" desc="Tap Pos" />
            <DOI name="AnIn5" desc="4-20mA signal 5" />
            <DOI name="AnIn6" desc="4-20mA signal 6" />
            <DOI name="AnIn7" desc="4-20mA signal 7" />
            <DOI name="AnIn8" desc="4-20mA signal 8" />
            <DOI name="AnIn9" desc="4-20mA signal 9" />
            <DOI name="AnIn10" desc="4-20mA signal 10" />
            <DOI name="AnIn11" desc="4-20mA signal 11" />
            <DOI name="AnIn12" desc="4-20mA signal 12" />
            <DOI name="AnIn13" desc="4-20mA signal 13" />
            <DOI name="AnIn14" desc="4-20mA signal 14" />
            <DOI name="AnIn15" desc="4-20mA signal 15" />
            <DOI name="AnIn16" desc="4-20mA signal 16" />
          </LN>
          <LN lnClass="GGIO" lnType="GGIO15" inst="7" prefix="LALM_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Limit Alarms</Val>
              </DAI>
            </DOI>
            <DOI name="Alm1" desc="Vsen1 alarm greater than Limit2" />
            <DOI name="Alm2" desc="Vsen1 alarm greater than Limit1" />
            <DOI name="Alm3" desc="Vsen1 alarm less than Limit2 " />
            <DOI name="Alm4" desc="Vsen1 alarm less than Limit1" />
            <DOI name="Alm5" desc="Vsen2 alarm greater than Limit2" />
            <DOI name="Alm6" desc="Vsen2 alarm greater than Limit1" />
            <DOI name="Alm7" desc="Vsen2 alarm less than Limit2" />
            <DOI name="Alm8" desc="Vsen2 alarm less than Limit1" />
            <DOI name="Alm9" desc="Vsen3 alarm greater than Limit2" />
            <DOI name="Alm10" desc="Vsen3 alarm greater than Limit1" />
            <DOI name="Alm11" desc="Vsen3 alarm less than Limit2" />
            <DOI name="Alm12" desc="Vsen3 alarm less than Limit1" />
            <DOI name="Alm13" desc="Vsen4 alarm greater than Limit2" />
            <DOI name="Alm14" desc="Vsen4 alarm greater than Limit1" />
            <DOI name="Alm15" desc="Vsen4 alarm less than Limit2" />
            <DOI name="Alm16" desc="Vsen4 alarm less than Limit1" />
            <DOI name="Alm17" desc="Vsen5 alarm greater than Limit2 " />
            <DOI name="Alm18" desc="Vsen5 alarm greater than Limit1" />
            <DOI name="Alm19" desc="Vsen5 alarm less than Limit2" />
            <DOI name="Alm20" desc="Vsen5 alarm less than Limit1" />
            <DOI name="Alm21" desc="Vsen6 alarm greater than Limit2" />
            <DOI name="Alm22" desc="Vsen6 alarm greater than Limit1" />
            <DOI name="Alm23" desc="Vsen6 alarm less than Limit2" />
            <DOI name="Alm24" desc="Vsen6 alarm less than Limit1" />
            <DOI name="Alm25" desc="Vsen7 alarm greater than Limit2" />
            <DOI name="Alm26" desc="Vsen7 alarm greater than Limit1" />
            <DOI name="Alm27" desc="Vsen7 alarm less than Limit2" />
            <DOI name="Alm28" desc="Vsen7 alarm less than Limit1" />
            <DOI name="Alm29" desc="Vsen8 alarm greater than Limit2" />
            <DOI name="Alm30" desc="Vsen8 alarm greater than Limit1" />
            <DOI name="Alm31" desc="Vsen8 alarm less than Limit2" />
            <DOI name="Alm32" desc="Vsen8 alarm less than Limit1" />
            <DOI name="Alm33" desc="Vsen9 alarm greater than Limit2" />
            <DOI name="Alm34" desc="Vsen9 alarm greater than Limit1" />
            <DOI name="Alm35" desc="Vsen9 alarm less than Limit2" />
            <DOI name="Alm36" desc="Vsen9 alarm less than Limit1" />
            <DOI name="Alm37" desc="Vsen10 alarm greater than Limit2" />
            <DOI name="Alm38" desc="Vsen10 alarm greater than Limit1" />
            <DOI name="Alm39" desc="Vsen10 alarm less than Limit2" />
            <DOI name="Alm40" desc="Vsen10 alarm less than Limit1" />
            <DOI name="Alm41" desc="Vsen11 alarm greater than Limit2" />
            <DOI name="Alm42" desc="Vsen11 alarm greater than Limit1" />
            <DOI name="Alm43" desc="Vsen11 alarm less than Limit2" />
            <DOI name="Alm44" desc="Vsen11 alarm less than Limit1" />
            <DOI name="Alm45" desc="Vsen12 alarm greater than Limit2" />
            <DOI name="Alm46" desc="Vsen12 alarm greater than Limit1" />
            <DOI name="Alm47" desc="Vsen12 alarm less than Limit2" />
            <DOI name="Alm48" desc="Vsen12 alarm less than Limit1" />
            <DOI name="Alm49" desc="Vsen13 alarm greater than Limit2" />
            <DOI name="Alm50" desc="Vsen13 alarm greater than Limit1" />
            <DOI name="Alm51" desc="Vsen13 alarm less than Limit2" />
            <DOI name="Alm52" desc="Vsen13 alarm less than Limit1" />
            <DOI name="Alm53" desc="Vsen14 alarm greater than Limit2" />
            <DOI name="Alm54" desc="Vsen14 alarm greater than Limit1" />
            <DOI name="Alm55" desc="Vsen14 alarm less than Limit2" />
            <DOI name="Alm56" desc="Vsen14 alarm less than Limit1" />
            <DOI name="Alm57" desc="Vsen15 alarm greater than Limit2" />
            <DOI name="Alm58" desc="Vsen15 alarm greater than Limit1" />
            <DOI name="Alm59" desc="Vsen15 alarm less than Limit2" />
            <DOI name="Alm60" desc="Vsen15 alarm less than Limit1" />
            <DOI name="Alm61" desc="Vsen16 alarm greater than Limit2" />
            <DOI name="Alm62" desc="Vsen16 alarm greater than Limit1" />
            <DOI name="Alm63" desc="Vsen16 alarm less than Limit2" />
            <DOI name="Alm64" desc="Vsen16 alarm less than Limit1" />
          </LN>
          <LN lnClass="GGIO" lnType="GGIO16" inst="9" prefix="MTR1_" desc="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>3-phase Energy Meter1</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="GGIO" lnType="GGIO16" inst="10" prefix="MTR2_" desc="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>3-phase Energy Meter2</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="LGOS" lnType="LGOS2" inst="2" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>GOOSE subscription</Val>
              </DAI>
            </DOI>
            <DOI name="GoCBRef">
              <DAI name="setSrcCB" valKind="Set">
                <Val>KEMASIMLD1/LLN0.PingFCD</Val>
              </DAI>
              <DAI name="setSrcRef" valKind="Set">
                <Val>KEMASIMLD1/LLN0.PingFCD</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="LGOS" lnType="LGOS2" inst="3" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>GOOSE subscription</Val>
              </DAI>
            </DOI>
            <DOI name="GoCBRef">
              <DAI name="setSrcCB" valKind="Set">
                <Val>KEMASIMmaximumLengthLogicalDeviceNameWithSixtyFourCharacters1234/LLN0.PingGoCBwithMaximumCharacters012</Val>
              </DAI>
              <DAI name="setSrcRef" valKind="Set">
                <Val>KEMASIMmaximumLengthLogicalDeviceNameWithSixtyFourCharacters1234/LLN0.PingGoCBwithMaximumCharacters012</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
      </Server>
    </AccessPoint>
  </IED>
  <IED name="IED3" manufacturer="BHEL" type="BCUED2">
    <Services>
      <DynAssociation max="8" />
      <SettingGroups>
        <SGEdit />
      </SettingGroups>
      <GetDirectory />
      <GetDataObjectDefinition />
      <GetDataSetValue />
      <DataSetDirectory />
      <ConfDataSet max="50" maxAttributes="128" modify="false" />
      <ReadWrite />
      <ConfReportControl max="150" bufMode="both" bufConf="false" />
      <GetCBValues />
      <ConfLogControl max="5" />
      <ConfLNs fixPrefix="true" fixLnInst="false" />
      <GOOSE max="10" fixedOffs="false" goose="true" rGOOSE="false" />
      <FileHandling mms="true" />
      <DynDataSet max="100" maxAttributes="120" />
      <ReportSettings cbName="Fix" datSet="Dyn" rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" resvTms="true" owner="true" />
      <LogSettings cbName="Conf" datSet="Conf" logEna="Conf" trgOps="Conf" intgPd="Conf" />
      <GSESettings cbName="Conf" datSet="Conf" appID="Conf" kdaParticipant="false" />
      <ClientServices bufReport="false" goose="true" gsse="false" readLog="false" sv="false" unbufReport="false" supportsLdName="false" maxAttributes="0" maxReports="0" maxGOOSE="0" maxSMV="0">
        <TimeSyncProt sntp="false" c37_238="false" other="false" />
      </ClientServices>
      <ConfLdName />
      <ValueHandling setToRO="false" />
      <RedProt hsr="false" prp="true" rstp="false" />
      <TimeSyncProt sntp="true" c37_238="false" other="false" />
      <SupSubscription maxGo="10" maxSv="2" />
      <DataObjectDirectory />
      <SetDataSetValue />
      <SMVsc max="2" delivery="both" deliveryConf="false" sv="true" rSV="false" />
      <SMVSettings datSet="Fix" optFields="Fix" smpRate="Fix" svID="Fix" kdaParticipant="false" cbName="Fix" samplesPerSec="false">
        <SmpRate>80</SmpRate>
      </SMVSettings>
    </Services>
    <AccessPoint name="accessPoint1" desc="">
      <Server>
        <Authentication />
        <LDevice inst="Control" desc="">
          <LN0 lnClass="LLN0" lnType="LLN03" inst="" desc="System Logical Device">
            <DataSet name="TapChgData" desc="Tap Changer Control">
              <FCDA ldInst="Control" lnClass="ATCC" fc="ST" lnInst="1" doName="Loc" />
              <FCDA ldInst="Control" lnClass="ATCC" fc="ST" lnInst="1" doName="TapChg" />
              <FCDA ldInst="Control" lnClass="ATCC" fc="ST" lnInst="1" doName="ParOp" />
              <FCDA ldInst="Control" lnClass="ATCC" fc="MX" lnInst="1" doName="CtlV" />
              <FCDA ldInst="Control" lnClass="ATCC" fc="ST" lnInst="1" doName="Auto" />
              <FCDA ldInst="Control" lnClass="ATCC" fc="ST" lnInst="1" doName="HiTapPos" />
              <FCDA ldInst="Control" lnClass="ATCC" fc="ST" lnInst="1" doName="LoTapPos" />
            </DataSet>
            <DataSet name="CSWIData" desc="CSWI Data">
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="1" prefix="CB52" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="1" prefix="CB52" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="1" prefix="CB52" doName="PosA" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="1" prefix="CB52" doName="PosB" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="1" prefix="CB52" doName="PosC" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="2" prefix="ISO89A" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="2" prefix="ISO89A" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="3" prefix="ISO89B" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="3" prefix="ISO89B" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="4" prefix="ISO89L" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="4" prefix="ISO89L" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="5" prefix="ISO89T" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="5" prefix="ISO89T" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="6" prefix="B189A" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="6" prefix="B189A" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="7" prefix="B289A" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="7" prefix="B289A" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="8" prefix="ES89AE" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="8" prefix="ES89AE" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="9" prefix="ES89BE" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="9" prefix="ES89BE" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="10" prefix="ES89LE" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="10" prefix="ES89LE" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="11" prefix="ES89TE" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="11" prefix="ES89TE" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="12" prefix="B1AE1" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="12" prefix="B1AE1" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="13" prefix="B1AE2" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="13" prefix="B1AE2" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="14" prefix="B2AE1" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="14" prefix="B2AE1" doName="Pos" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="15" prefix="B2AE2" doName="Loc" />
              <FCDA ldInst="Control" lnClass="CSWI" fc="ST" lnInst="15" prefix="B2AE2" doName="Pos" />
            </DataSet>
            <DataSet name="CILOData" desc="CILO Data">
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="1" prefix="CB52" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="1" prefix="CB52" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="2" prefix="ISO89A" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="2" prefix="ISO89A" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="3" prefix="ISO89B" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="3" prefix="ISO89B" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="4" prefix="ISO89L" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="4" prefix="ISO89L" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="5" prefix="ISO89T" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="5" prefix="ISO89T" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="6" prefix="B189A" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="6" prefix="B189A" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="7" prefix="B289A" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="7" prefix="B289A" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="8" prefix="ES89AE" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="8" prefix="ES89AE" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="9" prefix="ES89BE" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="9" prefix="ES89BE" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="10" prefix="ES89LE" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="10" prefix="ES89LE" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="11" prefix="ES89TE" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="11" prefix="ES89TE" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="12" prefix="B1AE1" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="12" prefix="B1AE1" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="13" prefix="B1AE2" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="13" prefix="B1AE2" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="14" prefix="B2AE1" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="14" prefix="B2AE1" doName="EnaOpn" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="15" prefix="B2AE2" doName="EnaCls" />
              <FCDA ldInst="Control" lnClass="CILO" fc="ST" lnInst="15" prefix="B2AE2" doName="EnaOpn" />
            </DataSet>
            <ReportControl name="CSWIReportBuf" confRev="1" datSet="CSWIData" rptID="CSWIReportBufID" buffered="true" intgPd="30000" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="CILOReportBuf" confRev="1" datSet="CILOData" rptID="CILOReportBufID" buffered="true" intgPd="30000" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="TapChgReportBuf" confRev="1" datSet="TapChgData" rptID="TapChgReportBufID" buffered="true" intgPd="30000" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="ldNs" valKind="RO">
                <Val>IEC 61850-7-4:2010</Val>
              </DAI>
              <DAI name="vendor" desc="" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
              <DAI name="configRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Diag" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LEDRs" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <SampledValueControl name="smv1" smvID="SmvId" smpRate="4800" nofASDU="1" securityEnable="None" datSet="CSWIData" multicast="true" confRev="10000" desc="">
              <SmvOpts sampleSynchronized="true" />
            </SampledValueControl>
            <SettingControl numOfSGs="4" actSG="1" resvTms="1200" />
          </LN0>
          <LN lnClass="LPHD" lnType="LPHD3" inst="1" prefix="" desc="Physical device Information">
            <DOI name="Sim">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="PhyNam">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="hwRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="serNum" valKind="Set">
                <Val>01</Val>
              </DAI>
              <DAI name="model" valKind="Set">
                <Val>2017-BHEL BCU-01</Val>
              </DAI>
            </DOI>
            <DOI name="PhyHealth">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Proxy">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI9" inst="1" prefix="CB52">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="PosA">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="PosB">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="PosC">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>CB52 Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
            <Inputs>
              <ExtRef iedName="IED1" ldInst="Control" lnClass="CSWI" lnInst="1" prefix="CB52" doName="Pos" intAddr="1.DISCRETE_OUT:1665,INVALID_OUT:0,INVALID_OUT:0" serviceType="GOOSE" srcLDInst="Control" srcLNClass="LLN0" srcCBName="CSWISTSGCB" />
              <ExtRef iedName="IED2" ldInst="Control" lnClass="CSWI" lnInst="1" prefix="CB52" doName="Pos" intAddr="1.DISCRETE_OUT:1667,INVALID_OUT:0,INVALID_OUT:0" serviceType="GOOSE" srcLDInst="Control" srcLNClass="LLN0" srcCBName="CSWISTSGCB" />
            </Inputs>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI10" inst="2" prefix="ISO89A">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>ISO89A Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
            <Inputs>
              <ExtRef iedName="IED1" ldInst="Control" lnClass="CSWI" lnInst="2" prefix="ISO89A" doName="Pos" intAddr="1.DISCRETE_OUT:1669,INVALID_OUT:0,INVALID_OUT:0" serviceType="GOOSE" srcLDInst="Control" srcLNClass="LLN0" srcCBName="CSWISTSGCB" />
              <ExtRef iedName="IED2" ldInst="Control" lnClass="CSWI" lnInst="2" prefix="ISO89A" doName="Pos" intAddr="1.DISCRETE_OUT:1671,INVALID_OUT:0,INVALID_OUT:0" serviceType="GOOSE" srcLDInst="Control" srcLNClass="LLN0" srcCBName="CSWISTSGCB" />
            </Inputs>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI10" inst="3" prefix="ISO89B">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>ISO89B-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
            <Inputs>
              <ExtRef iedName="IED1" ldInst="Control" lnClass="CSWI" lnInst="3" prefix="ISO89B" doName="Pos" intAddr="1.DISCRETE_OUT:1673,INVALID_OUT:0,INVALID_OUT:0" serviceType="GOOSE" srcLDInst="Control" srcLNClass="LLN0" srcCBName="CSWISTSGCB" />
              <ExtRef iedName="IED2" ldInst="Control" lnClass="CSWI" lnInst="3" prefix="ISO89B" doName="Pos" intAddr="1.DISCRETE_OUT:1675,INVALID_OUT:0,INVALID_OUT:0" serviceType="GOOSE" srcLDInst="Control" srcLNClass="LLN0" srcCBName="CSWISTSGCB" />
            </Inputs>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI10" inst="4" prefix="ISO89L">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>ISO89L-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
            <Inputs>
              <ExtRef iedName="IED1" ldInst="Control" lnClass="CSWI" lnInst="4" prefix="ISO89L" doName="Pos" intAddr="1.DISCRETE_OUT:1677,INVALID_OUT:0,INVALID_OUT:0" serviceType="GOOSE" srcLDInst="Control" srcLNClass="LLN0" srcCBName="CSWISTSGCB" />
              <ExtRef iedName="IED2" ldInst="Control" lnClass="CSWI" lnInst="4" prefix="ISO89L" doName="Pos" intAddr="1.DISCRETE_OUT:1679,INVALID_OUT:0,INVALID_OUT:0" serviceType="GOOSE" srcLDInst="Control" srcLNClass="LLN0" srcCBName="CSWISTSGCB" />
            </Inputs>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI10" inst="5" prefix="ISO89T">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>ISO89T-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
            <Inputs>
              <ExtRef iedName="IED1" ldInst="Control" lnClass="CSWI" lnInst="5" prefix="ISO89T" doName="Pos" intAddr="1.DISCRETE_OUT:1681,INVALID_OUT:0,INVALID_OUT:0" serviceType="GOOSE" srcLDInst="Control" srcLNClass="LLN0" srcCBName="CSWISTSGCB" />
              <ExtRef iedName="IED2" ldInst="Control" lnClass="CSWI" lnInst="5" prefix="ISO89T" doName="Pos" intAddr="1.DISCRETE_OUT:1683,INVALID_OUT:0,INVALID_OUT:0" serviceType="GOOSE" srcLDInst="Control" srcLNClass="LLN0" srcCBName="CSWISTSGCB" />
            </Inputs>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI10" inst="6" prefix="B189A">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>B189A-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI10" inst="7" prefix="B289A">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>B289A-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI11" inst="8" prefix="ES89AE">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>ES89AE-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
            <Inputs>
              <ExtRef iedName="IED1" ldInst="Control" lnClass="CSWI" lnInst="8" prefix="ES89AE" doName="Pos" intAddr="1.DISCRETE_OUT:1685,INVALID_OUT:0,INVALID_OUT:0" serviceType="GOOSE" srcLDInst="Control" srcLNClass="LLN0" srcCBName="CSWISTSGCB" />
              <ExtRef iedName="IED2" ldInst="Control" lnClass="CSWI" lnInst="8" prefix="ES89AE" doName="Pos" intAddr="1.DISCRETE_OUT:1687,INVALID_OUT:0,INVALID_OUT:0" serviceType="GOOSE" srcLDInst="Control" srcLNClass="LLN0" srcCBName="CSWISTSGCB" />
            </Inputs>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI11" inst="9" prefix="ES89BE">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>ES89BE-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
            <Inputs>
              <ExtRef iedName="IED1" ldInst="Control" lnClass="CSWI" lnInst="9" prefix="ES89BE" doName="Pos" intAddr="1.DISCRETE_OUT:1689,INVALID_OUT:0,INVALID_OUT:0" serviceType="GOOSE" srcLDInst="Control" srcLNClass="LLN0" srcCBName="CSWISTSGCB" />
              <ExtRef iedName="IED2" ldInst="Control" lnClass="CSWI" lnInst="9" prefix="ES89BE" doName="Pos" intAddr="1.DISCRETE_OUT:1691,INVALID_OUT:0,INVALID_OUT:0" serviceType="GOOSE" srcLDInst="Control" srcLNClass="LLN0" srcCBName="CSWISTSGCB" />
            </Inputs>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI11" inst="10" prefix="ES89LE">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>ES89LE-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
            <Inputs>
              <ExtRef iedName="IED1" ldInst="Control" lnClass="CSWI" lnInst="10" prefix="ES89LE" doName="Pos" intAddr="1.DISCRETE_OUT:1693,INVALID_OUT:0,INVALID_OUT:0" serviceType="GOOSE" srcLDInst="Control" srcLNClass="LLN0" srcCBName="CSWISTSGCB" />
              <ExtRef iedName="IED2" ldInst="Control" lnClass="CSWI" lnInst="10" prefix="ES89LE" doName="Pos" intAddr="1.DISCRETE_OUT:1695,INVALID_OUT:0,INVALID_OUT:0" serviceType="GOOSE" srcLDInst="Control" srcLNClass="LLN0" srcCBName="CSWISTSGCB" />
            </Inputs>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI11" inst="11" prefix="ES89TE">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>ES89TE-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
            <Inputs>
              <ExtRef iedName="IED1" ldInst="Control" lnClass="CSWI" lnInst="11" prefix="ES89TE" doName="Pos" intAddr="1.DISCRETE_OUT:1697,INVALID_OUT:0,INVALID_OUT:0" serviceType="GOOSE" srcLDInst="Control" srcLNClass="LLN0" srcCBName="CSWISTSGCB" />
              <ExtRef iedName="IED2" ldInst="Control" lnClass="CSWI" lnInst="11" prefix="ES89TE" doName="Pos" intAddr="1.DISCRETE_OUT:1699,INVALID_OUT:0,INVALID_OUT:0" serviceType="GOOSE" srcLDInst="Control" srcLNClass="LLN0" srcCBName="CSWISTSGCB" />
            </Inputs>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI11" inst="12" prefix="B1AE1">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>B1AE1-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI11" inst="13" prefix="B1AE2">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>B1AE2-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI11" inst="14" prefix="B2AE1">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>B2AE1-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI11" inst="15" prefix="B2AE2">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>B2AE2-circuit switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI12" inst="16" prefix="AR_ON">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>VT Selected Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI12" inst="17" prefix="R86A_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>CVT Selected Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI12" inst="18" prefix="R86B_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>MTR Selected Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI12" inst="19" prefix="R96A_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>CB-52-R-Phase Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI12" inst="20" prefix="R96B_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>CB-52-Y-Phase Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI12" inst="21" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>CB-52-B-Phase Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI12" inst="22" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI12" inst="23" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI12" inst="24" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" lnType="CSWI12" inst="25" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass" valKind="Set">
                <Val>operate-once</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="CmdBlk" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Circuit Switch</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO9" inst="1" prefix="CB52">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking -Circuit Breaker</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO10" inst="2" prefix="ISO89A">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking -Isolator 89A</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO10" inst="3" prefix="ISO89B">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking-Isolator 89B</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO10" inst="4" prefix="ISO89L">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking-Isolator 89L</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO10" inst="5" prefix="ISO89T">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking-Isolator 89T</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO10" inst="6" prefix="B189A">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking-Bus1 Isolator</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO10" inst="7" prefix="B289A">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking-Bus2 Isolator</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO11" inst="8" prefix="ES89AE">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking-Earth Switch 89 AE</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO11" inst="9" prefix="ES89BE">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking-Earth Switch 89 BE</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO11" inst="10" prefix="ES89LE">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking-Earth Switch 89 LE</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO11" inst="11" prefix="ES89TE">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking-Earth Switch 89 TE</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO11" inst="12" prefix="B1AE1">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - Bus1 Earth Switch 89 AE1</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO11" inst="13" prefix="B1AE2">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - Bus1 Earth Switch 89 AE2</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO11" inst="14" prefix="B2AE1">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - Bus2 Earth Switch 89 AE1</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO11" inst="15" prefix="B2AE2">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - Bus2 Earth Switch 89 AE2</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO12" inst="16" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - Cb Local Operation permissible</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO12" inst="17" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - CVT Selected</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO12" inst="18" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - MTR Reset</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO12" inst="19" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - CB-52-R-Phase</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO12" inst="20" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - CB-52-Y-Phase</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO12" inst="21" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - CB-52-B-Phase</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO12" inst="22" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - </Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO12" inst="23" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - </Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO12" inst="24" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - </Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CILO" lnType="CILO12" inst="25" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Interlocking - </Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="ATCC" lnType="ATCC3" inst="1" prefix="">
            <DOI name="Auto">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="TapChg">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
              <DAI name="sboTimeout" valKind="Set">
                <Val>30000</Val>
              </DAI>
              <DAI name="operTimeout" desc="" valKind="Set">
                <Val>30000</Val>
              </DAI>
            </DOI>
            <DOI name="ParOp">
              <DAI name="ctlModel" valKind="Set">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Tap Changer</Val>
              </DAI>
            </DOI>
            <DOI name="Loc">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="CtlV">
              <SDI name="mag">
                <DAI name="f" valKind="RO">
                  <Val>0.0</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="ParTraMod" desc="">
              <DAI name="setVal" valKind="Set">
                <Val> No Mode Predefined</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
        <LDevice inst="Measurements" desc="">
          <LN0 lnClass="LLN0" lnType="LLN03" inst="" desc="System Logical Device">
            <DataSet name="Fed1MeasData" desc="">
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="TotW" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="TotVAr" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="TotVA" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="TotPF" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="Hz" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="PPV" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="PhV" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="A" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="W" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="VAr" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="VA" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="1" doName="PF" />
              <FCDA ldInst="Measurements" lnClass="MMXN" fc="MX" prefix="" lnInst="1" doName="Hz" />
              <FCDA ldInst="Measurements" lnClass="MMXN" fc="MX" prefix="" lnInst="1" doName="Vol" />
            </DataSet>
            <DataSet name="Fed2MeasData" desc="">
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="TotW" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="TotVAr" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="TotVA" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="TotPF" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="Hz" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="PPV" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="PhV" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="A" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="W" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="VAr" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="VA" />
              <FCDA ldInst="Measurements" lnClass="MMXU" fc="MX" prefix="" lnInst="2" doName="PF" />
              <FCDA ldInst="Measurements" lnClass="MMXN" fc="MX" prefix="" lnInst="2" doName="Hz" />
              <FCDA ldInst="Measurements" lnClass="MMXN" fc="MX" prefix="" lnInst="2" doName="Vol" />
            </DataSet>
            <ReportControl name="Fed1MeasReportUnBuf" confRev="1" desc="" datSet="Fed1MeasData" intgPd="30000" rptID="Fed1MeasReportUnBufID" buffered="false" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="Fed2MeasReportUnBuf" confRev="1" desc="" datSet="Fed2MeasData" intgPd="30000" rptID="Fed2MeasReportUnBufID" buffered="false" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="ldNs" valKind="RO">
                <Val>IEC 61850-7-4:2010</Val>
              </DAI>
              <DAI name="vendor" desc="" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
              <DAI name="configRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Diag" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LEDRs" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <SampledValueControl name="smv2" smvID="SmvId2" smpRate="4800" nofASDU="5" securityEnable="None" datSet="Fed1MeasData" multicast="true" confRev="10000" desc="">
              <SmvOpts sampleSynchronized="true" />
            </SampledValueControl>
          </LN0>
          <LN lnClass="LPHD" lnType="LPHD3" inst="1" prefix="" desc="Physical device Information">
            <DOI name="Sim">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="PhyNam">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="hwRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="serNum" valKind="Set">
                <Val>01</Val>
              </DAI>
              <DAI name="model" valKind="Set">
                <Val>2017-BHEL BCU-01</Val>
              </DAI>
            </DOI>
            <DOI name="PhyHealth">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Proxy">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="MMXU" lnType="MMXU3" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Feeder1 Measurements</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="MMXU" lnType="MMXU3" inst="2" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Feeder2 Measurements</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="MMXN" lnType="MMXN3" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Feeder1 Non-Phase related Measurement</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="MMXN" lnType="MMXN3" inst="2" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Feeder2 Non-Phase related Measurement</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
        <LDevice inst="Protection" desc="">
          <LN0 lnClass="LLN0" lnType="LLN03" inst="" desc="System Logical Device">
            <DataSet name="OCTripData" desc="">
              <FCDA ldInst="Protection" lnClass="PTOC" fc="ST" prefix="" lnInst="1" doName="Str" />
              <FCDA ldInst="Protection" lnClass="PTOC" fc="ST" prefix="" lnInst="1" doName="Op" />
              <FCDA ldInst="Protection" lnClass="PIOC" fc="ST" prefix="" lnInst="1" doName="Str" />
              <FCDA ldInst="Protection" lnClass="PIOC" fc="ST" prefix="" lnInst="1" doName="Op" />
            </DataSet>
            <DataSet name="VolTripData" desc="">
              <FCDA ldInst="Protection" lnClass="PTUV" fc="ST" prefix="" lnInst="1" doName="Str" />
              <FCDA ldInst="Protection" lnClass="PTUV" fc="ST" prefix="" lnInst="1" doName="Op" />
              <FCDA ldInst="Protection" lnClass="PTOV" fc="ST" prefix="" lnInst="1" doName="Str" />
              <FCDA ldInst="Protection" lnClass="PTOV" fc="ST" prefix="" lnInst="1" doName="Op" />
            </DataSet>
            <DataSet name="FreqTripData" desc="">
              <FCDA ldInst="Protection" lnClass="PTUF" fc="ST" prefix="" lnInst="1" doName="Str" />
              <FCDA ldInst="Protection" lnClass="PTUF" fc="ST" prefix="" lnInst="1" doName="Op" />
              <FCDA ldInst="Protection" lnClass="PFRC" fc="ST" prefix="" lnInst="1" doName="Str" />
              <FCDA ldInst="Protection" lnClass="PFRC" fc="ST" prefix="" lnInst="1" doName="Op" />
            </DataSet>
            <DataSet name="BrFailData" desc="">
              <FCDA ldInst="Protection" lnClass="RBRF" fc="ST" prefix="" lnInst="1" doName="Str" />
              <FCDA ldInst="Protection" lnClass="RBRF" fc="ST" prefix="" lnInst="1" doName="OpEx" />
            </DataSet>
            <DataSet name="EFTripData" desc="">
              <FCDA ldInst="Protection" lnClass="PTOC" fc="ST" prefix="" lnInst="2" doName="Str" />
              <FCDA ldInst="Protection" lnClass="PTOC" fc="ST" prefix="" lnInst="2" doName="Op" />
              <FCDA ldInst="Protection" lnClass="PIOC" fc="ST" prefix="" lnInst="2" doName="Str" />
              <FCDA ldInst="Protection" lnClass="PIOC" fc="ST" prefix="" lnInst="2" doName="Op" />
            </DataSet>
            <DataSet name="CommonTripData" desc="">
              <FCDA ldInst="Protection" lnClass="PTRC" fc="ST" prefix="" lnInst="1" doName="Tr" />
              <FCDA ldInst="Protection" lnClass="PTRC" fc="ST" prefix="" lnInst="1" doName="Op" />
              <FCDA ldInst="Protection" lnClass="PTRC" fc="ST" prefix="" lnInst="1" doName="Str" />
            </DataSet>
            <DataSet name="AutoRecData" desc="">
              <FCDA ldInst="Protection" lnClass="RREC" fc="ST" prefix="" lnInst="1" doName="OpCls" />
              <FCDA ldInst="Protection" lnClass="RREC" fc="ST" prefix="" lnInst="1" doName="AutoRecSt" />
            </DataSet>
            <DataSet name="ChkSyncData" desc="">
              <FCDA ldInst="Protection" lnClass="RSYN" fc="ST" prefix="" lnInst="1" doName="Rel" />
              <FCDA ldInst="Protection" lnClass="RSYN" fc="ST" prefix="" lnInst="1" doName="VInd" />
              <FCDA ldInst="Protection" lnClass="RSYN" fc="ST" prefix="" lnInst="1" doName="AngInd" />
              <FCDA ldInst="Protection" lnClass="RSYN" fc="ST" prefix="" lnInst="1" doName="HzInd" />
              <FCDA ldInst="Protection" lnClass="RSYN" fc="ST" prefix="" lnInst="1" doName="SynPrg" />
              <FCDA ldInst="Protection" lnClass="RSYN" fc="MX" prefix="" lnInst="1" doName="DifVClc" />
              <FCDA ldInst="Protection" lnClass="RSYN" fc="MX" prefix="" lnInst="1" doName="DifHzClc" />
              <FCDA ldInst="Protection" lnClass="RSYN" fc="MX" prefix="" lnInst="1" doName="DifAngClc" />
            </DataSet>
            <ReportControl name="OCTripReportBuf" confRev="1" desc="" datSet="OCTripData" intgPd="30000" rptID="OCTripReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="EFTripReportBuf" confRev="1" desc="" datSet="EFTripData" intgPd="30000" rptID="EFTripReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="VolTripReportBuf" confRev="1" desc="" datSet="VolTripData" intgPd="30000" rptID="VolTripReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="FreqTripReportBuf" confRev="1" desc="" datSet="FreqTripData" intgPd="30000" rptID="FreqTripReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="BrFailReportBuf" confRev="1" desc="" datSet="BrFailData" intgPd="30000" rptID="BrFailReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="CommonTripReportBuf" confRev="1" desc="" datSet="CommonTripData" intgPd="30000" rptID="CommonTripReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="AutoRecReportBuf" confRev="1" desc="" datSet="AutoRecData" intgPd="30000" rptID="AutoRecReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="ChkSyncReportBuf" confRev="1" desc="" datSet="ChkSyncData" intgPd="30000" rptID="ChkSyncReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="ldNs" valKind="RO">
                <Val>IEC 61850-7-4:2010</Val>
              </DAI>
              <DAI name="vendor" desc="" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
              <DAI name="configRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Diag" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LEDRs" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <SettingControl numOfSGs="4" actSG="1" resvTms="1200" />
          </LN0>
          <LN lnClass="LPHD" lnType="LPHD3" inst="1" prefix="" desc="Physical device Information">
            <DOI name="Sim">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="PhyNam">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="hwRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="serNum" valKind="Set">
                <Val>01</Val>
              </DAI>
              <DAI name="model" valKind="Set">
                <Val>2017-BHEL BCU-01</Val>
              </DAI>
            </DOI>
            <DOI name="PhyHealth">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Proxy">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="PTOC" lnType="PTOC5" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Time Overcurrent</Val>
              </DAI>
            </DOI>
            <DOI name="DirMod">
              <DAI name="setVal" valKind="RO">
                <Val>NonDirectional</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="PIOC" lnType="PIOC5" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Instantaneous Overcurrent</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="PTUF" lnType="PTUF3" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Under Frequency</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="PTUV" lnType="PTUV3" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Under Voltage</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="PTOV" lnType="PTOV3" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Over Voltage</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="RBRF" lnType="RBRF3" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Breaker Fail</Val>
              </DAI>
            </DOI>
            <DOI name="FailMod">
              <DAI name="setVal" valKind="RO">
                <Val>Both current and breaker status</Val>
              </DAI>
            </DOI>
            <DOI name="ReTrMod" desc="">
              <DAI name="setVal" valKind="RO">
                <Val>With Current and Breaker Status Check</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="PTRC" lnType="PTRC3" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Common Trip</Val>
              </DAI>
            </DOI>
            <DOI name="TrMod" desc="">
              <DAI name="setVal" valKind="RO">
                <Val>1 or 3 Phase Tripping</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="PIOC" lnType="PIOC6" inst="2" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Earthfault Hiset</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="PTOC" lnType="PTOC6" inst="2" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Neutral Overcurrent</Val>
              </DAI>
            </DOI>
            <DOI name="DirMod">
              <DAI name="setVal" valKind="RO">
                <Val>NonDirectional</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="PFRC" lnType="PFRC3" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Rate of Change of Frequency</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="RREC" lnType="RREC3" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Auto Reclosure</Val>
              </DAI>
            </DOI>
            <DOI name="TrBeh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>Undefined</Val>
              </DAI>
              <DAI name="subVal" valKind="RO">
                <Val>Undefined</Val>
              </DAI>
            </DOI>
            <DOI name="AutoRecSt" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>Ready</Val>
              </DAI>
              <DAI name="subVal" valKind="RO">
                <Val>Ready</Val>
              </DAI>
            </DOI>
            <DOI name="CycTrMod1" desc="">
              <DAI name="setVal" valKind="RO">
                <Val>specific</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="RSYN" lnType="RSYN3" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Check synchronism</Val>
              </DAI>
            </DOI>
            <DOI name="Rel">
              <DAI name="stVal" valKind="RO">
                <Val>1</Val>
              </DAI>
            </DOI>
            <DOI name="VInd">
              <DAI name="stVal" valKind="RO">
                <Val>1</Val>
              </DAI>
            </DOI>
            <DOI name="AngInd">
              <DAI name="stVal" valKind="RO">
                <Val>1</Val>
              </DAI>
            </DOI>
            <DOI name="HzInd">
              <DAI name="stVal" valKind="RO">
                <Val>1</Val>
              </DAI>
            </DOI>
            <DOI name="SynPrg">
              <DAI name="stVal" valKind="RO">
                <Val>1</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LivDeaMod" desc="">
              <DAI name="setVal" valKind="Set">
                <Val>Dead Line, Dead Bus</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
        <LDevice inst="Records" desc="">
          <LN0 lnClass="LLN0" lnType="LLN03" inst="" desc="System Logical Device">
            <DataSet name="RecordsData" desc="">
              <FCDA ldInst="Records" lnClass="RDRE" fc="ST" prefix="" lnInst="1" doName="RcdMade" />
              <FCDA ldInst="Records" lnClass="RDRE" fc="ST" prefix="" lnInst="1" doName="FltNum" />
            </DataSet>
            <ReportControl name="RecordsReportBuf" confRev="1" desc="" datSet="RecordsData" intgPd="30000" rptID="RecordsReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" qchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="ldNs" valKind="RO">
                <Val>IEC 61850-7-4:2010</Val>
              </DAI>
              <DAI name="vendor" desc="" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
              <DAI name="configRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Diag" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LEDRs" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <SettingControl numOfSGs="4" actSG="1" resvTms="1200" />
          </LN0>
          <LN lnClass="LPHD" lnType="LPHD3" inst="1" prefix="" desc="Physical device Information">
            <DOI name="Sim">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="PhyNam">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="hwRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="serNum" valKind="Set">
                <Val>01</Val>
              </DAI>
              <DAI name="model" valKind="Set">
                <Val>2017-BHEL BCU-01</Val>
              </DAI>
            </DOI>
            <DOI name="PhyHealth">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Proxy">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="RDRE" lnType="RDRE3" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh" desc="">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Disturbance Recorder</Val>
              </DAI>
            </DOI>
            <DOI name="RcdTrg" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="MemRs" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="MemClr" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
        <LDevice inst="Systems" desc="">
          <LN0 lnClass="LLN0" lnType="LLN03" inst="" desc="System Logical Device">
            <DataSet name="INDGGIOData" desc="Indications">
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind1" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind2" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind3" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind4" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind5" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind6" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind7" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind8" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind9" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind10" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind11" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind12" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind13" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind14" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind15" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind16" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind17" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind18" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind19" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind20" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind21" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind22" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind23" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind24" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind25" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind26" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind27" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind28" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind29" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind30" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind31" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind32" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind33" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind34" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind35" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind36" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind37" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind38" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind39" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind40" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind41" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind42" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind43" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind44" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind45" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind46" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind47" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind48" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind49" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind50" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind51" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind52" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind53" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind54" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind55" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind56" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind57" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind58" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind59" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind60" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind61" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind62" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind63" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind64" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind65" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind66" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind67" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind68" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind69" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind70" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind71" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind72" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind73" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind74" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind75" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind76" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind77" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind78" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind79" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind80" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind81" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind82" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind83" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind84" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind85" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind86" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind87" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind88" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind89" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind90" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind91" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind92" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind93" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind94" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind95" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind96" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind97" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind98" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind99" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind100" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind101" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind102" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind103" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind104" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind105" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind106" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind107" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind108" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind109" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind110" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind111" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind112" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind113" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind114" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind115" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind116" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind117" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind118" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind119" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind120" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind121" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind122" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind123" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind124" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind125" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind126" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind127" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="IND_" lnInst="1" doName="Ind128" />
            </DataSet>
            <DataSet name="GGIOData" desc="Internal Logics">
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind1" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind2" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind3" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind4" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind5" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind6" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind7" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind8" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind9" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind10" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind11" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind12" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind13" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind14" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind15" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind16" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind17" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind18" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind19" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind20" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind21" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind22" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind23" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind24" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind25" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind26" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind27" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind28" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind29" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind30" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind31" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind32" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind33" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind34" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind35" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind36" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind37" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind38" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind39" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind40" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind41" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind42" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind43" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind44" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind45" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind46" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind47" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="" lnInst="2" doName="Ind48" />
            </DataSet>
            <DataSet name="PUBGGIOData" desc="Digiatl goose">
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind1" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind2" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind3" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind4" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind5" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind6" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind7" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind8" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind9" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind14" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind15" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind16" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind17" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind18" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind19" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind20" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind21" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind22" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind23" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind24" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind25" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind26" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind27" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind28" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind29" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind30" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind31" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind32" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind33" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind34" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind35" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind36" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind37" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind38" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind39" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind40" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind41" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind42" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind43" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind44" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind45" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind46" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind47" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind48" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind49" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind50" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind51" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind52" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind53" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind54" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind55" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind56" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind57" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind58" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind59" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind60" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind61" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind62" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind63" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="PUB_" lnInst="3" doName="Ind64" />
            </DataSet>
            <DataSet name="IntegerData" desc="Integer Data">
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn1" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn2" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn3" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn4" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn5" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn6" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn7" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn8" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn9" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn10" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn11" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn12" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn13" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn14" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn15" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="INT_" lnInst="4" doName="IntIn16" />
            </DataSet>
            <DataSet name="ANAINData" desc="Ana4-20mA">
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn1" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn2" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn3" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn4" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn5" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn6" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn7" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn8" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn9" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn10" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn11" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn12" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn13" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn14" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn15" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="ANAIN_" lnInst="6" doName="AnIn16" />
            </DataSet>
            <DataSet name="LIMALMData" desc="Limit Alarms">
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm1" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm2" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm3" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm4" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm5" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm6" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm7" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm8" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm9" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm10" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm11" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm12" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm13" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm14" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm15" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm16" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm17" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm18" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm19" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm20" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm21" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm22" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm23" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm24" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm25" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm26" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm27" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm28" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm29" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm30" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm31" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm32" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm33" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm34" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm35" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm36" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm37" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm38" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm39" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm40" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm41" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm42" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm43" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm44" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm45" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm46" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm47" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm48" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm49" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm50" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm51" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm52" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm53" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm54" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm55" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm56" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm57" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm58" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm59" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm60" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm61" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm62" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm63" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="ST" prefix="LALM_" lnInst="7" doName="Alm64" />
            </DataSet>
            <DataSet name="MTR1Data" desc="Meter1 Data">
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn1" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn2" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn3" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn4" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn5" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn6" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn7" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn8" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn9" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn10" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn11" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn12" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn13" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn14" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn15" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn16" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn17" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn18" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn19" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn20" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn21" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn22" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn23" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn24" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn25" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn26" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn27" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn28" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn29" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn30" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn31" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn32" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn33" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn34" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn35" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn36" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn37" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn38" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn39" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn40" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn41" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn42" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn43" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn44" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn45" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn46" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn47" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn48" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn49" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR1_" lnInst="9" doName="AnIn50" />
            </DataSet>
            <DataSet name="MTR2Data" desc="Meter2 Data">
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn1" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn2" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn3" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn4" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn5" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn6" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn7" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn8" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn9" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn10" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn11" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn12" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn13" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn14" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn15" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn16" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn17" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn18" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn19" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn20" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn21" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn22" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn23" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn24" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn25" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn26" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn27" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn28" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn29" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn30" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn31" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn32" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn33" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn34" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn35" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn36" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn37" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn38" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn39" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn40" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn41" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn42" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn43" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn44" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn45" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn46" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn47" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn48" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn49" />
              <FCDA ldInst="Systems" lnClass="GGIO" fc="MX" prefix="MTR2_" lnInst="10" doName="AnIn50" />
            </DataSet>
            <ReportControl name="INDGGIOReportBuf" confRev="1" desc="" datSet="INDGGIOData" intgPd="30000" rptID="INDGGIOReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" dupd="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="GGIOReportBuf" confRev="1" desc="" datSet="GGIOData" intgPd="30000" rptID="GGIOReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" dupd="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="PUBGGIOReportBuf" confRev="1" desc="" datSet="PUBGGIOData" intgPd="30000" rptID="PUBGGIOReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="IntegerReportUnBuf" confRev="1" desc="" datSet="IntegerData" intgPd="30000" rptID="IntegerReportUnBufID" buffered="false" bufTime="120">
              <TrgOps dchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="ANAINReportUnbuf" confRev="1" desc="" datSet="ANAINData" intgPd="30000" rptID="ANAINReportUnbufID" buffered="false" bufTime="120">
              <TrgOps dchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="LIMALMReportBuf" confRev="1" desc="" datSet="LIMALMData" intgPd="30000" rptID="LIMALMReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="MTR1ReportBuf" confRev="1" desc="" datSet="MTR1Data" intgPd="30000" rptID="MTR1ReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <ReportControl name="MTR2ReportBuf" confRev="1" desc="" datSet="MTR2Data" intgPd="30000" rptID="MTR2ReportBufID" buffered="true" bufTime="120">
              <TrgOps dchg="true" period="true" />
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" />
              <RptEnabled max="5" />
            </ReportControl>
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="ldNs" valKind="RO">
                <Val>IEC 61850-7-4:2010</Val>
              </DAI>
              <DAI name="vendor" desc="" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
              <DAI name="configRev" desc="" valKind="Set">
                <Val>1.0.0</Val>
              </DAI>
            </DOI>
            <DOI name="LocSta" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Diag" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LEDRs" desc="">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnClass="LPHD" lnType="LPHD3" inst="1" prefix="" desc="Physical device Information">
            <DOI name="Sim">
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="PhyNam">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="hwRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="serNum" valKind="Set">
                <Val>01</Val>
              </DAI>
              <DAI name="model" valKind="Set">
                <Val>2017-BHEL BCU-01 </Val>
              </DAI>
            </DOI>
            <DOI name="PhyHealth">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="Proxy">
              <DAI name="stVal" valKind="RO">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="LTIM" lnType="LTIM3" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Time Management</Val>
              </DAI>
            </DOI>
            <DOI name="StrWeekDay" desc="">
              <DAI name="setVal" valKind="Set">
                <Val>Monday</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="LTMS" lnType="LTMS3" inst="1" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Time master supervision</Val>
              </DAI>
            </DOI>
            <DOI name="TmSyn" desc="">
              <DAI name="stVal">
                <Val>Synchronized by a global area clock signal</Val>
              </DAI>
              <DAI name="subVal">
                <Val>Synchronized by a global area clock signal</Val>
              </DAI>
            </DOI>
            <DOI name="TmSrcSet1">
              <DAI name="setVal" valKind="Set">
                <Val>192.168.1.200</Val>
              </DAI>
            </DOI>
            <DOI name="TmSrcSet2">
              <DAI name="setVal" valKind="Set">
                <Val>192.168.1.200</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="GGIO" lnType="GGIO17" inst="1" prefix="IND_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Digital Inputs</Val>
              </DAI>
            </DOI>
            <DOI name="Ind1" desc="DI1_P1_CH1" />
            <DOI name="Ind2" desc="DI1_P1_CH2" />
            <DOI name="Ind3" desc="DI1_P1_CH3" />
            <DOI name="Ind4" desc="DI1_P1_CH4" />
            <DOI name="Ind5" desc="DI1_P1_CH5" />
            <DOI name="Ind6" desc="DI1_P1_CH6" />
            <DOI name="Ind7" desc="DI1_P1_CH7" />
            <DOI name="Ind8" desc="DI1_P1_CH8" />
            <DOI name="Ind9" desc="DI1_P1_CH9" />
            <DOI name="Ind10" desc="DI1_P1_CH10" />
            <DOI name="Ind11" desc="DI1_P1_CH11" />
            <DOI name="Ind12" desc="DI1_P1_CH12" />
            <DOI name="Ind13" desc="DI1_P2_CH1" />
            <DOI name="Ind14" desc="DI1_P2_CH2" />
            <DOI name="Ind15" desc="DI1_P2_CH3" />
            <DOI name="Ind16" desc="DI1_P2_CH4" />
            <DOI name="Ind17" desc="DI1_P2_CH5" />
            <DOI name="Ind18" desc="DI1_P2_CH6" />
            <DOI name="Ind19" desc="DI1_P2_CH7" />
            <DOI name="Ind20" desc="DI1_P2_CH8" />
            <DOI name="Ind21" desc="DI1_P2_CH9" />
            <DOI name="Ind22" desc="DI1_P2_CH10" />
            <DOI name="Ind23" desc="DI1_P2_CH11" />
            <DOI name="Ind24" desc="DI1_P2_CH12" />
            <DOI name="Ind25" desc="DI2_P1_CH1" />
            <DOI name="Ind26" desc="DI2_P1_CH2" />
            <DOI name="Ind27" desc="DI2_P1_CH3" />
            <DOI name="Ind28" desc="DI2_P1_CH4" />
            <DOI name="Ind29" desc="DI2_P1_CH5" />
            <DOI name="Ind30" desc="DI2_P1_CH6" />
            <DOI name="Ind31" desc="DI2_P1_CH7" />
            <DOI name="Ind32" desc="DI2_P1_CH8" />
            <DOI name="Ind33" desc="DI2_P1_CH9" />
            <DOI name="Ind34" desc="DI2_P1_CH10" />
            <DOI name="Ind35" desc="DI2_P1_CH11" />
            <DOI name="Ind36" desc="DI2_P1_CH12" />
            <DOI name="Ind37" desc="DI2_P2_CH1" />
            <DOI name="Ind38" desc="DI2_P2_CH2" />
            <DOI name="Ind39" desc="DI2_P2_CH3" />
            <DOI name="Ind40" desc="DI2_P2_CH4" />
            <DOI name="Ind41" desc="DI2_P2_CH5" />
            <DOI name="Ind42" desc="DI2_P2_CH6" />
            <DOI name="Ind43" desc="DI2_P2_CH7" />
            <DOI name="Ind44" desc="DI2_P2_CH8" />
            <DOI name="Ind45" desc="DI2_P2_CH9" />
            <DOI name="Ind46" desc="DI2_P2_CH10" />
            <DOI name="Ind47" desc="DI2_P2_CH11" />
            <DOI name="Ind48" desc="DI2_P2_CH12" />
            <DOI name="Ind49" desc="DI3_P1_CH1" />
            <DOI name="Ind50" desc="DI3_P1_CH2" />
            <DOI name="Ind51" desc="DI3_P1_CH3" />
            <DOI name="Ind52" desc="DI3_P1_CH4" />
            <DOI name="Ind53" desc="DI3_P1_CH5" />
            <DOI name="Ind54" desc="DI3_P1_CH6" />
            <DOI name="Ind55" desc="DI3_P1_CH7" />
            <DOI name="Ind56" desc="DI3_P1_CH8" />
            <DOI name="Ind57" desc="DI3_P1_CH9" />
            <DOI name="Ind58" desc="DI3_P1_CH10" />
            <DOI name="Ind59" desc="DI3_P1_CH11" />
            <DOI name="Ind60" desc="DI3_P1_CH12" />
            <DOI name="Ind61" desc="DI3_P2_CH1" />
            <DOI name="Ind62" desc="DI3_P2_CH2" />
            <DOI name="Ind63" desc="DI3_P2_CH3" />
            <DOI name="Ind64" desc="DI3_P2_CH4" />
            <DOI name="Ind65" desc="DI3_P2_CH5" />
            <DOI name="Ind66" desc="DI3_P2_CH6" />
            <DOI name="Ind67" desc="DI3_P2_CH7" />
            <DOI name="Ind68" desc="DI3_P2_CH8" />
            <DOI name="Ind69" desc="DI3_P2_CH9" />
            <DOI name="Ind70" desc="DI3_P2_CH10" />
            <DOI name="Ind71" desc="DI3_P2_CH11" />
            <DOI name="Ind72" desc="DI3_P2_CH12" />
            <DOI name="Ind73" desc="DI4_P1_CH1" />
            <DOI name="Ind74" desc="DI4_P1_CH2" />
            <DOI name="Ind75" desc="DI4_P1_CH3" />
            <DOI name="Ind76" desc="DI4_P1_CH4" />
            <DOI name="Ind77" desc="DI4_P1_CH5" />
            <DOI name="Ind78" desc="DI4_P1_CH6" />
            <DOI name="Ind79" desc="DI4_P1_CH7" />
            <DOI name="Ind80" desc="DI4_P1_CH8" />
            <DOI name="Ind81" desc="DI4_P1_CH9" />
            <DOI name="Ind82" desc="DI4_P1_CH10" />
            <DOI name="Ind83" desc="DI4_P1_CH11" />
            <DOI name="Ind84" desc="DI4_P1_CH12" />
            <DOI name="Ind85" desc="DI4_P2_CH1" />
            <DOI name="Ind86" desc="DI4_P2_CH2" />
            <DOI name="Ind87" desc="DI4_P2_CH3" />
            <DOI name="Ind88" desc="DI4_P2_CH4" />
            <DOI name="Ind89" desc="DI4_P2_CH5" />
            <DOI name="Ind90" desc="DI4_P2_CH6" />
            <DOI name="Ind91" desc="DI4_P2_CH7" />
            <DOI name="Ind92" desc="DI4_P2_CH8" />
            <DOI name="Ind93" desc="DI4_P2_CH9" />
            <DOI name="Ind94" desc="DI4_P2_CH10" />
            <DOI name="Ind95" desc="DI4_P2_CH11" />
            <DOI name="Ind96" desc="DI4_P2_CH12" />
            <DOI name="Ind97" desc="DI_Dummy" />
            <DOI name="Ind98" desc="DI_Dummy" />
            <DOI name="Ind99" desc="DI_Dummy" />
            <DOI name="Ind100" desc="DI_Dummy" />
            <DOI name="Ind101" desc="DI_Dummy" />
            <DOI name="Ind102" desc="DI_Dummy" />
            <DOI name="Ind103" desc="DI_Dummy" />
            <DOI name="Ind104" desc="DI_Dummy" />
            <DOI name="Ind105" desc="DI_Dummy" />
            <DOI name="Ind106" desc="DI_Dummy" />
            <DOI name="Ind107" desc="DI_Dummy" />
            <DOI name="Ind108" desc="DI_Dummy" />
            <DOI name="Ind109" desc="DI_Dummy" />
            <DOI name="Ind110" desc="DI_Dummy" />
            <DOI name="Ind111" desc="DI_Dummy" />
            <DOI name="Ind112" desc="DI_Dummy" />
            <DOI name="Ind113" desc="DI_Dummy" />
            <DOI name="Ind114" desc="DI_Dummy" />
            <DOI name="Ind115" desc="DI_Dummy" />
            <DOI name="Ind116" desc="DI_Dummy" />
            <DOI name="Ind117" desc="DI_Dummy" />
            <DOI name="Ind118" desc="DI_Dummy" />
            <DOI name="Ind119" desc="DI_Dummy" />
            <DOI name="Ind120" desc="DI_Dummy" />
            <DOI name="Ind121" desc="DI_Dummy" />
            <DOI name="Ind122" desc="DI_Dummy" />
            <DOI name="Ind123" desc="DI_Dummy" />
            <DOI name="Ind124" desc="DI_Dummy" />
            <DOI name="Ind125" desc="DI_Dummy" />
            <DOI name="Ind126" desc="DI_Dummy" />
            <DOI name="Ind127" desc="DI_Dummy" />
            <DOI name="Ind128" desc="DI_Dummy" />
            <Inputs>
              <ExtRef iedName="KEMASIM" ldInst="LD1" lnClass="GGIO" lnInst="1" doName="Ind1" daName="stVal" intAddr="0.DISCRETE_OUT:1601" serviceType="GOOSE" srcLDInst="LD1" srcLNClass="LLN0" srcCBName="PingGOCB" />
              <ExtRef iedName="KEMASIM" ldInst="LD1" lnClass="GGIO" lnInst="1" doName="Ind2" daName="stVal" intAddr="0.DISCRETE_OUT:1602" serviceType="GOOSE" srcLDInst="LD1" srcLNClass="LLN0" srcCBName="PingGOCB" />
              <ExtRef iedName="KEMASIM" ldInst="LD1" lnClass="GGIO" lnInst="1" doName="Ind6" daName="stVal" intAddr="0.DISCRETE_OUT:1603" serviceType="GOOSE" srcLDInst="LD1" srcLNClass="LLN0" srcCBName="PingGOCB" />
              <ExtRef iedName="KEMASIM" ldInst="LD1" lnClass="GGIO" lnInst="1" doName="Ind7" daName="stVal" intAddr="0.DISCRETE_OUT:1604" serviceType="GOOSE" srcLDInst="LD1" srcLNClass="LLN0" srcCBName="PingGOCB" />
              <ExtRef iedName="KEMASIM" ldInst="LD1" lnClass="GGIO" lnInst="1" doName="Ind8" daName="stVal" intAddr="0.DISCRETE_OUT:1605" serviceType="GOOSE" srcLDInst="LD1" srcLNClass="LLN0" srcCBName="PingGOCB" />
            </Inputs>
          </LN>
          <LN lnClass="GGIO" lnType="GGIO18" inst="2" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Internal Variables</Val>
              </DAI>
            </DOI>
            <DOI name="Ind1" desc="GenTrip" />
            <DOI name="Ind2" desc="OvercurrTp" />
            <DOI name="Ind3" desc="OvercurrHstp" />
            <DOI name="Ind4" desc="EarthFltTp" />
            <DOI name="Ind5" desc="EarthFltHstp" />
            <DOI name="Ind6" desc="OverVol" />
            <DOI name="Ind7" desc="UnderVol" />
            <DOI name="Ind8" desc="BrkFail" />
            <DOI name="Ind9" desc="AutoReclose" />
            <DOI name="Ind10" desc="ChckSync" />
            <DOI name="Ind11" desc="UnderFreqTrip" />
            <DOI name="Ind12" desc="df/dt Trip" />
            <DOI name="Ind13" desc="Bus1 CVT Selected" />
            <DOI name="Ind14" desc="Bus1 CVT Deselected" />
            <DOI name="Ind15" desc="Bus2 CVT Selected" />
            <DOI name="Ind16" desc="Bus2 CVT Deselected" />
            <DOI name="Ind17" desc="GT1 CVT Selected" />
            <DOI name="Ind18" desc="GT1 CVT Deselected" />
            <DOI name="Ind19" desc="GT2 CVT Selected" />
            <DOI name="Ind20" desc="GT2 CVT Deselected" />
            <DOI name="Ind21" desc="Line1 CVT Selected" />
            <DOI name="Ind22" desc="Line1 CVT Deselected" />
            <DOI name="Ind23" desc="Line2 CVT Selected" />
            <DOI name="Ind24" desc="Line2 CVT Deselected" />
            <DOI name="Ind25" desc="CB Local Operation permissible" />
            <DOI name="Ind26" desc="DeadLineDeadBus status" />
            <DOI name="Ind27" desc="DeadLineLiveBus status" />
            <DOI name="Ind28" desc="LiveLineDeadBus status" />
            <DOI name="Ind29" desc="LiveLineLiveB status" />
            <DOI name="Ind30" desc="DeadLine status" />
            <DOI name="Ind31" desc="DeadBus status" />
            <DOI name="Ind32" desc="AR_Lockout" />
            <DOI name="Ind33" desc="BCU L/R Flag" />
            <DOI name="Ind34" desc="AR_Block" />
            <DOI name="Ind35" desc="MODBUSTCP Master Health" />
            <DOI name="Ind36" desc="MODBUSSerial Master Health" />
            <DOI name="Ind37" desc="DNPTCP Master Health" />
            <DOI name="Ind38" desc="DNPSerial Master Health" />
            <DOI name="Ind39" desc="Server101_health" />
            <DOI name="Ind40" desc="Server104_health" />
            <DOI name="Ind41" desc="Dummy1" />
            <DOI name="Ind42" desc="Dummy2" />
            <DOI name="Ind43" desc="Dummy3" />
            <DOI name="Ind44" desc="Dummy4" />
            <DOI name="Ind45" desc="Dummy5" />
            <DOI name="Ind46" desc="Dummy6" />
            <DOI name="Ind47" desc="Dummy7" />
            <DOI name="Ind48" desc="Dummy8" />
          </LN>
          <LN lnClass="GGIO" lnType="GGIO19" inst="3" prefix="PUB_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Digital Goose Inputs</Val>
              </DAI>
            </DOI>
            <DOI name="Ind1" desc="Digital input 1" />
            <DOI name="Ind2" desc="Digital input 2" />
            <DOI name="Ind3" desc="Digital input 3" />
            <DOI name="Ind4" desc="Digital input 4" />
            <DOI name="Ind5" desc="Digital input 5" />
            <DOI name="Ind6" desc="Digital input 6" />
            <DOI name="Ind7" desc="Digital input 7" />
            <DOI name="Ind8" desc="Digital input 8" />
            <DOI name="Ind9" desc="Digital input 9" />
            <DOI name="Ind10" desc="Digital input 10" />
            <DOI name="Ind11" desc="Digital input 11" />
            <DOI name="Ind12" desc="Digital input 12" />
            <DOI name="Ind13" desc="Digital input 13" />
            <DOI name="Ind14" desc="Digital input 14" />
            <DOI name="Ind15" desc="Digital input 15" />
            <DOI name="Ind16" desc="Digital input 16" />
            <DOI name="Ind17" desc="Digital input 17" />
            <DOI name="Ind18" desc="Digital input 18" />
            <DOI name="Ind19" desc="Digital input 19" />
            <DOI name="Ind20" desc="Digital input 20" />
            <DOI name="Ind21" desc="Digital input 21" />
            <DOI name="Ind22" desc="Digital input 22" />
            <DOI name="Ind23" desc="Digital input 23" />
            <DOI name="Ind24" desc="Digital input 24" />
            <DOI name="Ind25" desc="Digital input 25" />
            <DOI name="Ind26" desc="Digital input 26" />
            <DOI name="Ind27" desc="Digital input 27" />
            <DOI name="Ind28" desc="Digital input 28" />
            <DOI name="Ind29" desc="Digital input 29" />
            <DOI name="Ind30" desc="Digital input 30" />
            <DOI name="Ind31" desc="Digital input 31" />
            <DOI name="Ind32" desc="Digital input 32" />
            <DOI name="Ind33" desc="Digital input 33" />
            <DOI name="Ind34" desc="Digital input 34" />
            <DOI name="Ind35" desc="Digital input 35" />
            <DOI name="Ind36" desc="Digital input 36" />
            <DOI name="Ind37" desc="Digital input 37" />
            <DOI name="Ind38" desc="Digital input 38" />
            <DOI name="Ind39" desc="Digital input 39" />
            <DOI name="Ind40" desc="Digital input 40" />
            <DOI name="Ind41" desc="Digital input 41" />
            <DOI name="Ind42" desc="Digital input 42" />
            <DOI name="Ind43" desc="Digital input 43" />
            <DOI name="Ind44" desc="Digital input 44" />
            <DOI name="Ind45" desc="Digital input 45" />
            <DOI name="Ind46" desc="Digital input 46" />
            <DOI name="Ind47" desc="Digital input 47" />
            <DOI name="Ind48" desc="Digital input 48" />
            <DOI name="Ind49" desc="Digital input 49" />
            <DOI name="Ind50" desc="Digital input 50" />
            <DOI name="Ind51" desc="Digital input 51" />
            <DOI name="Ind52" desc="Digital input 52" />
            <DOI name="Ind53" desc="Digital input 53" />
            <DOI name="Ind54" desc="Digital input 54" />
            <DOI name="Ind55" desc="Digital input 55" />
            <DOI name="Ind56" desc="Digital input 56" />
            <DOI name="Ind57" desc="Digital input 57" />
            <DOI name="Ind58" desc="Digital input 58" />
            <DOI name="Ind59" desc="Digital input 59" />
            <DOI name="Ind60" desc="Digital input 60" />
            <DOI name="Ind61" desc="Digital input 61" />
            <DOI name="Ind62" desc="Digital input 62" />
            <DOI name="Ind63" desc="Digital input 63" />
            <DOI name="Ind64" desc="Digital input 64" />
          </LN>
          <LN lnClass="GGIO" lnType="GGIO20" inst="4" prefix="INT_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Integer inputs</Val>
              </DAI>
            </DOI>
            <DOI name="IntIn1" desc="AR Failure Cause " />
            <DOI name="IntIn2" desc="CB Operation counter" />
            <DOI name="IntIn3" desc="Integer input 3" />
            <DOI name="IntIn4" desc="Integer input 4" />
            <DOI name="IntIn5" desc="Integer input 5" />
            <DOI name="IntIn6" desc="Integer input 6" />
            <DOI name="IntIn7" desc="Integer input 7" />
            <DOI name="IntIn8" desc="Integer input 8" />
            <DOI name="IntIn9" desc="Integer input 9" />
            <DOI name="IntIn10" desc="Integer input 10" />
            <DOI name="IntIn11" desc="Integer input 11" />
            <DOI name="IntIn12" desc="Integer input 12" />
            <DOI name="IntIn13" desc="Integer input 13" />
            <DOI name="IntIn14" desc="Integer input 14" />
            <DOI name="IntIn15" desc="Integer input 15" />
            <DOI name="IntIn16" desc="Integer input 16" />
            <DOI name="IntIn17" desc="Integer input 17" />
            <DOI name="IntIn18" desc="Integer input 18" />
            <DOI name="IntIn19" desc="Integer input 19" />
            <DOI name="IntIn20" desc="Integer input 20" />
            <DOI name="IntIn21" desc="Integer input 21" />
            <DOI name="IntIn22" desc="Integer input 22" />
            <DOI name="IntIn23" desc="Integer input 23" />
            <DOI name="IntIn24" desc="Integer input 24" />
            <DOI name="IntIn25" desc="Integer input 25" />
            <DOI name="IntIn26" desc="Integer input 26" />
            <DOI name="IntIn27" desc="Integer input 27" />
            <DOI name="IntIn28" desc="Integer input 28" />
            <DOI name="IntIn29" desc="Integer input 29" />
            <DOI name="IntIn30" desc="Integer input 30" />
            <DOI name="IntIn31" desc="Integer input 31" />
            <DOI name="IntIn32" desc="Integer input 32" />
          </LN>
          <LN lnClass="GGIO" lnType="GGIO21" inst="5" prefix="APUB_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Analog GOOSE</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn1" desc="Analog Goose 1" />
            <DOI name="AnIn2" desc="Analog Goose 2" />
            <DOI name="AnIn3" desc="Analog Goose 3" />
            <DOI name="AnIn4" desc="Analog Goose 4" />
            <DOI name="AnIn5" desc="Analog Goose 5" />
            <DOI name="AnIn6" desc="Analog Goose 6" />
            <DOI name="AnIn7" desc="Analog Goose 7" />
            <DOI name="AnIn8" desc="Analog Goose 8" />
            <DOI name="AnIn9" desc="Analog Goose 9" />
            <DOI name="AnIn10" desc="Analog Goose 10" />
            <DOI name="AnIn11" desc="Analog Goose 11" />
            <DOI name="AnIn12" desc="Analog Goose 12" />
            <DOI name="AnIn13" desc="Analog Goose 13" />
            <DOI name="AnIn14" desc="Analog Goose 14" />
            <DOI name="AnIn15" desc="Analog Goose 15" />
            <DOI name="AnIn16" desc="Analog Goose 16" />
            <DOI name="AnIn17" desc="Analog Goose 17" />
            <DOI name="AnIn18" desc="Analog Goose 18" />
            <DOI name="AnIn19" desc="Analog Goose 19" />
            <DOI name="AnIn20" desc="Analog Goose 20" />
            <DOI name="AnIn21" desc="Analog Goose 21" />
            <DOI name="AnIn22" desc="Analog Goose 22" />
            <DOI name="AnIn23" desc="Analog Goose 23" />
            <DOI name="AnIn24" desc="Analog Goose 24" />
            <DOI name="AnIn25" desc="Analog Goose 25" />
            <DOI name="AnIn26" desc="Analog Goose 26" />
            <DOI name="AnIn27" desc="Analog Goose 27" />
            <DOI name="AnIn28" desc="Analog Goose 28" />
            <DOI name="AnIn29" desc="Analog Goose 29" />
            <DOI name="AnIn30" desc="Analog Goose 30" />
            <DOI name="AnIn31" desc="Analog Goose 31" />
            <DOI name="AnIn32" desc="Analog Goose 32" />
          </LN>
          <LN lnClass="GGIO" lnType="GGIO22" inst="6" prefix="ANAIN_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>4-20mA Signals</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn1" desc="4-20mA signal 1" />
            <DOI name="AnIn2" desc="4-20mA signal 2" />
            <DOI name="AnIn3" desc="4-20mA signal 3" />
            <DOI name="AnIn4" desc="Tap Pos" />
            <DOI name="AnIn5" desc="4-20mA signal 5" />
            <DOI name="AnIn6" desc="4-20mA signal 6" />
            <DOI name="AnIn7" desc="4-20mA signal 7" />
            <DOI name="AnIn8" desc="4-20mA signal 8" />
            <DOI name="AnIn9" desc="4-20mA signal 9" />
            <DOI name="AnIn10" desc="4-20mA signal 10" />
            <DOI name="AnIn11" desc="4-20mA signal 11" />
            <DOI name="AnIn12" desc="4-20mA signal 12" />
            <DOI name="AnIn13" desc="4-20mA signal 13" />
            <DOI name="AnIn14" desc="4-20mA signal 14" />
            <DOI name="AnIn15" desc="4-20mA signal 15" />
            <DOI name="AnIn16" desc="4-20mA signal 16" />
          </LN>
          <LN lnClass="GGIO" lnType="GGIO23" inst="7" prefix="LALM_">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>Limit Alarms</Val>
              </DAI>
            </DOI>
            <DOI name="Alm1" desc="Vsen1 alarm greater than Limit2" />
            <DOI name="Alm2" desc="Vsen1 alarm greater than Limit1" />
            <DOI name="Alm3" desc="Vsen1 alarm less than Limit2 " />
            <DOI name="Alm4" desc="Vsen1 alarm less than Limit1" />
            <DOI name="Alm5" desc="Vsen2 alarm greater than Limit2" />
            <DOI name="Alm6" desc="Vsen2 alarm greater than Limit1" />
            <DOI name="Alm7" desc="Vsen2 alarm less than Limit2" />
            <DOI name="Alm8" desc="Vsen2 alarm less than Limit1" />
            <DOI name="Alm9" desc="Vsen3 alarm greater than Limit2" />
            <DOI name="Alm10" desc="Vsen3 alarm greater than Limit1" />
            <DOI name="Alm11" desc="Vsen3 alarm less than Limit2" />
            <DOI name="Alm12" desc="Vsen3 alarm less than Limit1" />
            <DOI name="Alm13" desc="Vsen4 alarm greater than Limit2" />
            <DOI name="Alm14" desc="Vsen4 alarm greater than Limit1" />
            <DOI name="Alm15" desc="Vsen4 alarm less than Limit2" />
            <DOI name="Alm16" desc="Vsen4 alarm less than Limit1" />
            <DOI name="Alm17" desc="Vsen5 alarm greater than Limit2 " />
            <DOI name="Alm18" desc="Vsen5 alarm greater than Limit1" />
            <DOI name="Alm19" desc="Vsen5 alarm less than Limit2" />
            <DOI name="Alm20" desc="Vsen5 alarm less than Limit1" />
            <DOI name="Alm21" desc="Vsen6 alarm greater than Limit2" />
            <DOI name="Alm22" desc="Vsen6 alarm greater than Limit1" />
            <DOI name="Alm23" desc="Vsen6 alarm less than Limit2" />
            <DOI name="Alm24" desc="Vsen6 alarm less than Limit1" />
            <DOI name="Alm25" desc="Vsen7 alarm greater than Limit2" />
            <DOI name="Alm26" desc="Vsen7 alarm greater than Limit1" />
            <DOI name="Alm27" desc="Vsen7 alarm less than Limit2" />
            <DOI name="Alm28" desc="Vsen7 alarm less than Limit1" />
            <DOI name="Alm29" desc="Vsen8 alarm greater than Limit2" />
            <DOI name="Alm30" desc="Vsen8 alarm greater than Limit1" />
            <DOI name="Alm31" desc="Vsen8 alarm less than Limit2" />
            <DOI name="Alm32" desc="Vsen8 alarm less than Limit1" />
            <DOI name="Alm33" desc="Vsen9 alarm greater than Limit2" />
            <DOI name="Alm34" desc="Vsen9 alarm greater than Limit1" />
            <DOI name="Alm35" desc="Vsen9 alarm less than Limit2" />
            <DOI name="Alm36" desc="Vsen9 alarm less than Limit1" />
            <DOI name="Alm37" desc="Vsen10 alarm greater than Limit2" />
            <DOI name="Alm38" desc="Vsen10 alarm greater than Limit1" />
            <DOI name="Alm39" desc="Vsen10 alarm less than Limit2" />
            <DOI name="Alm40" desc="Vsen10 alarm less than Limit1" />
            <DOI name="Alm41" desc="Vsen11 alarm greater than Limit2" />
            <DOI name="Alm42" desc="Vsen11 alarm greater than Limit1" />
            <DOI name="Alm43" desc="Vsen11 alarm less than Limit2" />
            <DOI name="Alm44" desc="Vsen11 alarm less than Limit1" />
            <DOI name="Alm45" desc="Vsen12 alarm greater than Limit2" />
            <DOI name="Alm46" desc="Vsen12 alarm greater than Limit1" />
            <DOI name="Alm47" desc="Vsen12 alarm less than Limit2" />
            <DOI name="Alm48" desc="Vsen12 alarm less than Limit1" />
            <DOI name="Alm49" desc="Vsen13 alarm greater than Limit2" />
            <DOI name="Alm50" desc="Vsen13 alarm greater than Limit1" />
            <DOI name="Alm51" desc="Vsen13 alarm less than Limit2" />
            <DOI name="Alm52" desc="Vsen13 alarm less than Limit1" />
            <DOI name="Alm53" desc="Vsen14 alarm greater than Limit2" />
            <DOI name="Alm54" desc="Vsen14 alarm greater than Limit1" />
            <DOI name="Alm55" desc="Vsen14 alarm less than Limit2" />
            <DOI name="Alm56" desc="Vsen14 alarm less than Limit1" />
            <DOI name="Alm57" desc="Vsen15 alarm greater than Limit2" />
            <DOI name="Alm58" desc="Vsen15 alarm greater than Limit1" />
            <DOI name="Alm59" desc="Vsen15 alarm less than Limit2" />
            <DOI name="Alm60" desc="Vsen15 alarm less than Limit1" />
            <DOI name="Alm61" desc="Vsen16 alarm greater than Limit2" />
            <DOI name="Alm62" desc="Vsen16 alarm greater than Limit1" />
            <DOI name="Alm63" desc="Vsen16 alarm less than Limit2" />
            <DOI name="Alm64" desc="Vsen16 alarm less than Limit1" />
          </LN>
          <LN lnClass="GGIO" lnType="GGIO24" inst="9" prefix="MTR1_" desc="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>3-phase Energy Meter1</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="GGIO" lnType="GGIO24" inst="10" prefix="MTR2_" desc="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>3-phase Energy Meter2</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="LGOS" lnType="LGOS3" inst="2" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>GOOSE subscription</Val>
              </DAI>
            </DOI>
            <DOI name="GoCBRef">
              <DAI name="setSrcCB" valKind="Set">
                <Val>KEMASIMLD1/LLN0.PingFCD</Val>
              </DAI>
              <DAI name="setSrcRef" valKind="Set">
                <Val>KEMASIMLD1/LLN0.PingFCD</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="LGOS" lnType="LGOS3" inst="3" prefix="">
            <DOI name="Mod">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
              <DAI name="ctlModel" valKind="Set">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Beh">
              <DAI name="stVal" valKind="RO">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal" valKind="RO">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor" valKind="Set">
                <Val>BHEL</Val>
              </DAI>
              <DAI name="swRev" valKind="Set">
                <Val>1.0</Val>
              </DAI>
              <DAI name="d" valKind="Set">
                <Val>GOOSE subscription</Val>
              </DAI>
            </DOI>
            <DOI name="GoCBRef">
              <DAI name="setSrcCB" valKind="Set">
                <Val>KEMASIMmaximumLengthLogicalDeviceNameWithSixtyFourCharacters1234/LLN0.PingGoCBwithMaximumCharacters012</Val>
              </DAI>
              <DAI name="setSrcRef" valKind="Set">
                <Val>KEMASIMmaximumLengthLogicalDeviceNameWithSixtyFourCharacters1234/LLN0.PingGoCBwithMaximumCharacters012</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
      </Server>
    </AccessPoint>
  </IED>
  <IED name="IED4" desc="GOOSE simulator" type="KG" manufacturer="KEMA" configVersion="1.0" originalSclVersion="2007" originalSclRevision="A">
    <Services>
      <DynAssociation />
      <GetDirectory />
      <GetDataObjectDefinition />
      <GetDataSetValue />
      <DataSetDirectory />
      <DataObjectDirectory />
      <ReadWrite />
      <ConfLNs fixLnInst="true" fixPrefix="false" />
      <GetCBValues />
      <ConfDataSet max="28" maxAttributes="20" modify="true" />
      <ConfReportControl max="28" />
      <GOOSE max="16" />
      <SetDataSetValue />
      <GSESettings appID="Conf" cbName="Conf" dataLabel="Conf" datSet="Conf" kdaParticipant="false" />
      <SMVSettings datSet="Fix" optFields="Fix" smpRate="Fix" svID="Fix" kdaParticipant="false" cbName="Fix">
        <SmpRate>80</SmpRate>
      </SMVSettings>
    </Services>
    <AccessPoint name="AP1">
      <Server>
        <Authentication none="true" />
        <LDevice inst="LD1">
          <LN0 lnClass="LLN0" lnType="MyLLN0" inst="" desc="LLN0">
            <DataSet name="PingDS">
              <FCDA ldInst="LD1" lnClass="GGIO" fc="ST" prefix="" lnInst="1" doName="Ind1" daName="stVal" />
              <FCDA ldInst="LD1" lnClass="GGIO" fc="ST" prefix="" lnInst="1" doName="Ind1" daName="q" />
              <FCDA ldInst="LD1" lnClass="GGIO" fc="ST" prefix="" lnInst="1" doName="Ind2" daName="stVal" />
              <FCDA ldInst="LD1" lnClass="GGIO" fc="ST" prefix="" lnInst="1" doName="Ind2" daName="q" />
              <FCDA ldInst="LD1" lnClass="GGIO" fc="ST" prefix="" lnInst="1" doName="Ind6" daName="stVal" />
              <FCDA ldInst="LD1" lnClass="GGIO" fc="ST" prefix="" lnInst="1" doName="Ind6" daName="q" />
              <FCDA ldInst="LD1" lnClass="GGIO" fc="ST" prefix="" lnInst="1" doName="Ind7" daName="stVal" />
              <FCDA ldInst="LD1" lnClass="GGIO" fc="ST" prefix="" lnInst="1" doName="Ind7" daName="q" />
              <FCDA ldInst="LD1" lnClass="GGIO" fc="ST" prefix="" lnInst="1" doName="Ind8" daName="stVal" />
              <FCDA ldInst="LD1" lnClass="GGIO" fc="ST" prefix="" lnInst="1" doName="Ind8" daName="q" />
            </DataSet>
            <DataSet name="PingFCD">
              <FCDA ldInst="LD1" lnClass="GGIO" fc="ST" prefix="" lnInst="1" doName="Ind3" />
              <FCDA ldInst="LD1" lnClass="GGIO" fc="ST" prefix="" lnInst="1" doName="Ind4" />
            </DataSet>
            <GSEControl name="PingGOCB" appID="PingGOID" confRev="1" datSet="PingDS" />
            <GSEControl name="PingFCD" appID="PingFCD" confRev="1" datSet="PingFCD" />
            <SampledValueControl name="smv1" smvID="SmvId" smpRate="4800" nofASDU="5" securityEnable="None" multicast="true" confRev="10000" desc="">
              <SmvOpts sampleSynchronized="true" />
            </SampledValueControl>
          </LN0>
          <LN lnClass="LPHD" lnType="MyLPHD" inst="1" prefix="" desc="Physical device information" />
          <LN lnClass="GGIO" lnType="MyGGIO" inst="1" prefix="" desc="General input output" />
        </LDevice>
        <LDevice inst="maximumLengthLogicalDeviceNameWithSixtyFourCharacters1234">
          <LN0 lnClass="LLN0" lnType="MyLLN0" inst="" desc="LLN0">
            <DataSet name="PingDatasetwithMaximum32Length01">
              <FCDA ldInst="LD1" lnClass="GGIO" fc="ST" prefix="" lnInst="1" doName="Ind5" daName="stVal" />
              <FCDA ldInst="LD1" lnClass="GGIO" fc="ST" prefix="" lnInst="1" doName="Ind5" daName="q" />
            </DataSet>
            <GSEControl name="PingGoCBwithMaximumCharacters012" appID="PingGoIDwithmaximumLengthHunderd29charactersthatisalongIDnotefficientbuthtatiswhatisspecifiedintheEditionTwostandardAndSomeMore89" confRev="1" datSet="PingDatasetwithMaximum32Length01" />
          </LN0>
          <LN lnClass="LPHD" lnType="MyLPHD" inst="1" prefix="" desc="Physical device information" />
          <LN lnClass="GGIO" lnType="MyGGIO" inst="1" prefix="" desc="General input output" />
        </LDevice>
      </Server>
    </AccessPoint>
  </IED>
  <DataTypeTemplates>
    <LNodeType id="LLN01" lnClass="LLN0">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_3_NamPlt" />
      <DO name="LocKey" type="SPS_2_LocKey" />
      <DO name="Loc" type="SPS_2_LocKey" />
      <DO name="LocSta" type="SPC_2_LocSta" />
      <DO name="Diag" type="SPC_2_LocSta" />
      <DO name="LEDRs" type="SPC_2_LocSta" />
      <DO name="MltLev" type="SPG_1_MltLev" />
    </LNodeType>
    <LNodeType id="LPHD1" lnClass="LPHD">
      <DO name="PhyNam" type="DPL_2_PhyNam" />
      <DO name="PhyHealth" type="ENS_2_PhyHealth" />
      <DO name="Proxy" type="SPS_2_Proxy" />
      <DO name="Sim" type="SPC_2_LocSta" />
    </LNodeType>
    <LNodeType id="CSWI1" lnClass="CSWI">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="CmdBlk" type="SPC_2_CmdBlk" />
      <DO name="LocKey" type="SPS_2_LocKey" />
      <DO name="Loc" type="SPS_2_Proxy" />
      <DO name="LocSta" type="SPC_2_CmdBlk" />
      <DO name="Pos" type="DPC_1_Pos" />
      <DO name="PosA" type="DPC_1_Pos" />
      <DO name="PosB" type="DPC_1_Pos" />
      <DO name="PosC" type="DPC_1_Pos" />
    </LNodeType>
    <LNodeType id="CSWI2" lnClass="CSWI">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="CmdBlk" type="SPC_2_CmdBlk" />
      <DO name="LocKey" type="SPS_2_LocKey" />
      <DO name="Loc" type="SPS_2_Proxy" />
      <DO name="LocSta" type="SPC_2_CmdBlk" />
      <DO name="Pos" type="DPC_1_Pos" />
    </LNodeType>
    <LNodeType id="CSWI3" lnClass="CSWI">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="CmdBlk" type="SPC_2_CmdBlk" />
      <DO name="LocKey" type="SPS_2_LocKey" />
      <DO name="Loc" type="SPS_2_Proxy" />
      <DO name="LocSta" type="SPC_2_CmdBlk" />
      <DO name="Pos" type="DPC_1_Pos" />
    </LNodeType>
    <LNodeType id="CSWI4" lnClass="CSWI">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="CmdBlk" type="SPC_2_CmdBlk" />
      <DO name="LocKey" type="SPS_2_LocKey" />
      <DO name="Loc" type="SPS_2_Proxy" />
      <DO name="LocSta" type="SPC_2_CmdBlk" />
      <DO name="Pos" type="DPC_1_Pos" />
    </LNodeType>
    <LNodeType id="CILO1" lnClass="CILO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="EnaOpn" type="SPS_2_Proxy" />
      <DO name="EnaCls" type="SPS_2_Proxy" />
    </LNodeType>
    <LNodeType id="CILO2" lnClass="CILO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="EnaOpn" type="SPS_2_Proxy" />
      <DO name="EnaCls" type="SPS_2_Proxy" />
    </LNodeType>
    <LNodeType id="CILO3" lnClass="CILO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="EnaOpn" type="SPS_2_Proxy" />
      <DO name="EnaCls" type="SPS_2_Proxy" />
    </LNodeType>
    <LNodeType id="CILO4" lnClass="CILO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="EnaOpn" type="SPS_2_Proxy" />
      <DO name="EnaCls" type="SPS_2_Proxy" />
    </LNodeType>
    <LNodeType id="ATCC1" lnClass="ATCC">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Loc" type="SPS_2_Proxy" />
      <DO name="HiTapPos" type="INS_2_HiTapPos" />
      <DO name="LoTapPos" type="INS_2_HiTapPos" />
      <DO name="TapOpR" type="SPS_2_Proxy" />
      <DO name="TapOpL" type="SPS_2_Proxy" />
      <DO name="TapOpStop" type="SPS_2_Proxy" />
      <DO name="TapOpErr" type="SPS_2_Proxy" />
      <DO name="LTCBlkVLo" type="SPS_2_LTCBlkVLo" />
      <DO name="LTCBlkVHi" type="SPS_2_LTCBlkVLo" />
      <DO name="LTCBlkAHi" type="SPS_2_LTCBlkVLo" />
      <DO name="EndPosR" type="SPS_2_Proxy" />
      <DO name="EndPosL" type="SPS_2_Proxy" />
      <DO name="CtlV" type="MV_2_CtlV" />
      <DO name="LodA" type="MV_1_LodA" />
      <DO name="TapChg" type="BSC_1_TapChg" />
      <DO name="ParOp" type="SPC_1_ParOp" />
      <DO name="Auto" type="SPC_2_Auto" />
      <DO name="BndCtr" type="ASG_2_BndCtr" />
      <DO name="BndWid" type="ASG_2_BndCtr" />
      <DO name="CtlDlTmms" type="ING_2_CtlDlTmms" />
      <DO name="LDCR" type="ASG_2_BndCtr" />
      <DO name="LDCX" type="ASG_2_BndCtr" />
      <DO name="BlkLV" type="ASG_2_BndCtr" />
      <DO name="BlkRV" type="ASG_2_BndCtr" />
      <DO name="BlkVLo" type="ASG_2_BndCtr" />
      <DO name="BlkVHi" type="ASG_2_BndCtr" />
      <DO name="LimLodA" type="ASG_2_BndCtr" />
      <DO name="LDC" type="SPG_1_MltLev" />
      <DO name="ParTraMod" type="ENG_1_ParTraMod" />
      <DO name="TmDlChr" type="SPG_1_MltLev" />
      <DO name="LDCZ" type="ASG_2_BndCtr" />
      <DO name="TapBlkR" type="ING_2_CtlDlTmms" />
      <DO name="TapBlkL" type="ING_2_CtlDlTmms" />
    </LNodeType>
    <LNodeType id="MMXU1" lnClass="MMXU">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="TotW" type="MV_2_CtlV" />
      <DO name="TotVAr" type="MV_2_CtlV" />
      <DO name="TotVA" type="MV_2_CtlV" />
      <DO name="TotPF" type="MV_2_CtlV" />
      <DO name="Hz" type="MV_2_CtlV" />
      <DO name="PPV" type="DEL_2_PPV" />
      <DO name="PhV" type="WYE_2_PhV" />
      <DO name="A" type="WYE_2_PhV" />
      <DO name="W" type="WYE_2_PhV" />
      <DO name="VAr" type="WYE_2_PhV" />
      <DO name="VA" type="WYE_2_PhV" />
      <DO name="PF" type="WYE_2_PhV" />
    </LNodeType>
    <LNodeType id="MMXN1" lnClass="MMXN">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Vol" type="MV_2_CtlV" />
      <DO name="Hz" type="MV_2_CtlV" />
    </LNodeType>
    <LNodeType id="PTOC1" lnClass="PTOC">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Str" type="ACD_3_Str" />
      <DO name="Op" type="ACT_3_Op" />
      <DO name="TmACrv" type="CURVE_2_TmACrv" />
      <DO name="StrVal" type="ASG_2_BndCtr" />
      <DO name="TmMult" type="ASG_2_BndCtr" />
      <DO name="OpDlTmms" type="ING_2_CtlDlTmms" />
      <DO name="DirMod" type="ENG_2_DirMod" />
    </LNodeType>
    <LNodeType id="PTOC2" lnClass="PTOC">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Str" type="ACD_4_Str" />
      <DO name="Op" type="ACT_4_Op" />
      <DO name="TmACrv" type="CURVE_2_TmACrv" />
      <DO name="StrVal" type="ASG_2_BndCtr" />
      <DO name="TmMult" type="ASG_2_BndCtr" />
      <DO name="OpDlTmms" type="ING_2_CtlDlTmms" />
      <DO name="DirMod" type="ENG_2_DirMod" />
    </LNodeType>
    <LNodeType id="PIOC1" lnClass="PIOC">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Str" type="ACD_3_Str" />
      <DO name="Op" type="ACT_3_Op" />
      <DO name="StrVal" type="ASG_2_BndCtr" />
    </LNodeType>
    <LNodeType id="PTUF1" lnClass="PTUF">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Str" type="ACD_4_Str" />
      <DO name="Op" type="ACT_4_Op" />
      <DO name="BlkV" type="SPS_2_Proxy" />
      <DO name="StrVal" type="ASG_2_BndCtr" />
      <DO name="BlkVal" type="ASG_2_BndCtr" />
      <DO name="OpDlTmms" type="ING_2_CtlDlTmms" />
    </LNodeType>
    <LNodeType id="PTUV1" lnClass="PTUV">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Str" type="ACD_4_Str" />
      <DO name="Op" type="ACT_4_Op" />
      <DO name="TmVCrv" type="CURVE_2_TmACrv" />
      <DO name="StrVal" type="ASG_2_BndCtr" />
      <DO name="TmMult" type="ASG_2_BndCtr" />
      <DO name="OpDlTmms" type="ING_2_CtlDlTmms" />
    </LNodeType>
    <LNodeType id="PTOV1" lnClass="PTOV">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Str" type="ACD_4_Str" />
      <DO name="Op" type="ACT_4_Op" />
      <DO name="TmVCrv" type="CURVE_2_TmACrv" />
      <DO name="StrVal" type="ASG_2_BndCtr" />
      <DO name="TmMult" type="ASG_2_BndCtr" />
      <DO name="OpDlTmms" type="ING_2_CtlDlTmms" />
    </LNodeType>
    <LNodeType id="RBRF1" lnClass="RBRF">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Str" type="ACD_4_Str" />
      <DO name="OpEx" type="ACT_4_Op" />
      <DO name="OpIn" type="ACT_4_Op" />
      <DO name="FailMod" type="ENG_2_FailMod" />
      <DO name="FailTmms" type="ING_2_CtlDlTmms" />
      <DO name="SPlTrTmms" type="ING_2_CtlDlTmms" />
      <DO name="TPTrTmms" type="ING_2_CtlDlTmms" />
      <DO name="DetValA" type="ASG_2_BndCtr" />
      <DO name="ReTrMod" type="ENG_1_ReTrMod" />
    </LNodeType>
    <LNodeType id="PTRC1" lnClass="PTRC">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Tr" type="ACT_4_Op" />
      <DO name="Op" type="ACT_4_Op" />
      <DO name="Str" type="ACD_4_Str" />
      <DO name="TrMod" type="ENG_1_TrMod" />
      <DO name="TrPlsTmms" type="ING_2_CtlDlTmms" />
    </LNodeType>
    <LNodeType id="PIOC2" lnClass="PIOC">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Str" type="ACD_4_Str" />
      <DO name="Op" type="ACT_4_Op" />
      <DO name="StrVal" type="ASG_2_BndCtr" />
    </LNodeType>
    <LNodeType id="PFRC1" lnClass="PFRC">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Str" type="ACD_4_Str" />
      <DO name="Op" type="ACT_4_Op" />
      <DO name="BlkV" type="SPS_2_Proxy" />
      <DO name="StrVal" type="ASG_2_BndCtr" />
      <DO name="BlkVal" type="ASG_2_BndCtr" />
      <DO name="OpDlTmms" type="ING_2_CtlDlTmms" />
    </LNodeType>
    <LNodeType id="RREC1" lnClass="RREC">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="TrBeh" type="ENS_1_TrBeh" />
      <DO name="RecCyc" type="INS_2_HiTapPos" />
      <DO name="OpCls" type="ACT_2_OpCls" />
      <DO name="AutoRecSt" type="ENS_2_AutoRecSt" />
      <DO name="CycTrMod1" type="ENG_1_CycTrMod1" />
      <DO name="CycTrMod2" type="ENG_1_CycTrMod1" />
      <DO name="CycTrMod3" type="ENG_1_CycTrMod1" />
      <DO name="CycTrMod4" type="ENG_1_CycTrMod1" />
      <DO name="MaxCyc" type="ING_2_CtlDlTmms" />
      <DO name="UseCyc" type="ING_2_CtlDlTmms" />
      <DO name="MaxTmms" type="ING_2_CtlDlTmms" />
      <DO name="Rec1Tmms1" type="ING_2_CtlDlTmms" />
      <DO name="Rec1Tmms2" type="ING_2_CtlDlTmms" />
      <DO name="Rec1Tmms3" type="ING_2_CtlDlTmms" />
      <DO name="Rec1Tmms4" type="ING_2_CtlDlTmms" />
      <DO name="Rec3Tmms1" type="ING_2_CtlDlTmms" />
      <DO name="Rec3Tmms2" type="ING_2_CtlDlTmms" />
      <DO name="Rec3Tmms3" type="ING_2_CtlDlTmms" />
      <DO name="Rec3Tmms4" type="ING_2_CtlDlTmms" />
      <DO name="RclTmms" type="ING_2_CtlDlTmms" />
      <DO name="RdyTmms" type="ING_2_CtlDlTmms" />
    </LNodeType>
    <LNodeType id="RSYN1" lnClass="RSYN">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Rel" type="SPS_2_Proxy" />
      <DO name="VInd" type="SPS_2_Proxy" />
      <DO name="AngInd" type="SPS_2_Proxy" />
      <DO name="HzInd" type="SPS_2_Proxy" />
      <DO name="DifVClc" type="MV_2_CtlV" />
      <DO name="DifHzClc" type="MV_2_CtlV" />
      <DO name="DifAngClc" type="MV_2_CtlV" />
      <DO name="SynPrg" type="SPC_2_Auto" />
      <DO name="DifV" type="ASG_2_BndCtr" />
      <DO name="DifHz" type="ASG_2_BndCtr" />
      <DO name="DifAng" type="ASG_2_BndCtr" />
      <DO name="LivDeaMod" type="ENG_1_LivDeaMod" />
      <DO name="DeaLinVal" type="ASG_2_BndCtr" />
      <DO name="LivLinVal" type="ASG_2_BndCtr" />
      <DO name="DeaBusVal" type="ASG_2_BndCtr" />
      <DO name="LivBusVal" type="ASG_2_BndCtr" />
    </LNodeType>
    <LNodeType id="RDRE1" lnClass="RDRE">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="RcdMade" type="SPS_2_Proxy" />
      <DO name="FltNum" type="INS_2_HiTapPos" />
      <DO name="RcdStr" type="SPS_2_Proxy" />
      <DO name="RcdTrg" type="SPC_2_CmdBlk" />
      <DO name="MemRs" type="SPC_2_CmdBlk" />
      <DO name="MemClr" type="SPC_2_CmdBlk" />
      <DO name="TrgMod" type="ENG_1_TrgMod" />
      <DO name="LevMod" type="ENG_1_LevMod" />
      <DO name="PreTmms" type="ING_2_CtlDlTmms" />
      <DO name="PstTmms" type="ING_2_CtlDlTmms" />
      <DO name="MemFull" type="ING_2_CtlDlTmms" />
      <DO name="MaxNumRcd" type="ING_2_CtlDlTmms" />
      <DO name="ReTrgMod" type="SPG_1_MltLev" />
      <DO name="PerTrgTms" type="ING_2_CtlDlTmms" />
      <DO name="ExclTmms" type="ING_2_CtlDlTmms" />
      <DO name="RcdMod" type="ENG_1_RcdMod" />
      <DO name="StoRte" type="ING_2_CtlDlTmms" />
    </LNodeType>
    <LNodeType id="GGIO1" lnClass="GGIO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Ind1" type="SPS_2_Proxy" />
      <DO name="Ind2" type="SPS_2_Proxy" />
      <DO name="Ind3" type="SPS_2_Proxy" />
      <DO name="Ind4" type="SPS_2_Proxy" />
      <DO name="Ind5" type="SPS_2_Proxy" />
      <DO name="Ind6" type="SPS_2_Proxy" />
      <DO name="Ind7" type="SPS_2_Proxy" />
      <DO name="Ind8" type="SPS_2_Proxy" />
      <DO name="Ind9" type="SPS_2_Proxy" />
      <DO name="Ind10" type="SPS_2_Proxy" />
      <DO name="Ind11" type="SPS_2_Proxy" />
      <DO name="Ind12" type="SPS_2_Proxy" />
      <DO name="Ind13" type="SPS_2_Proxy" />
      <DO name="Ind14" type="SPS_2_Proxy" />
      <DO name="Ind15" type="SPS_2_Proxy" />
      <DO name="Ind16" type="SPS_2_Proxy" />
      <DO name="Ind17" type="SPS_2_Proxy" />
      <DO name="Ind18" type="SPS_2_Proxy" />
      <DO name="Ind19" type="SPS_2_Proxy" />
      <DO name="Ind20" type="SPS_2_Proxy" />
      <DO name="Ind21" type="SPS_2_Proxy" />
      <DO name="Ind22" type="SPS_2_Proxy" />
      <DO name="Ind23" type="SPS_2_Proxy" />
      <DO name="Ind24" type="SPS_2_Proxy" />
      <DO name="Ind25" type="SPS_2_Proxy" />
      <DO name="Ind26" type="SPS_2_Proxy" />
      <DO name="Ind27" type="SPS_2_Proxy" />
      <DO name="Ind28" type="SPS_2_Proxy" />
      <DO name="Ind29" type="SPS_2_Proxy" />
      <DO name="Ind30" type="SPS_2_Proxy" />
      <DO name="Ind31" type="SPS_2_Proxy" />
      <DO name="Ind32" type="SPS_2_Proxy" />
      <DO name="Ind33" type="SPS_2_Proxy" />
      <DO name="Ind34" type="SPS_2_Proxy" />
      <DO name="Ind35" type="SPS_2_Proxy" />
      <DO name="Ind36" type="SPS_2_Proxy" />
      <DO name="Ind37" type="SPS_2_Proxy" />
      <DO name="Ind38" type="SPS_2_Proxy" />
      <DO name="Ind39" type="SPS_2_Proxy" />
      <DO name="Ind40" type="SPS_2_Proxy" />
      <DO name="Ind41" type="SPS_2_Proxy" />
      <DO name="Ind42" type="SPS_2_Proxy" />
      <DO name="Ind43" type="SPS_2_Proxy" />
      <DO name="Ind44" type="SPS_2_Proxy" />
      <DO name="Ind45" type="SPS_2_Proxy" />
      <DO name="Ind46" type="SPS_2_Proxy" />
      <DO name="Ind47" type="SPS_2_Proxy" />
      <DO name="Ind48" type="SPS_2_Proxy" />
      <DO name="Ind49" type="SPS_2_Proxy" />
      <DO name="Ind50" type="SPS_2_Proxy" />
      <DO name="Ind51" type="SPS_2_Proxy" />
      <DO name="Ind52" type="SPS_2_Proxy" />
      <DO name="Ind53" type="SPS_2_Proxy" />
      <DO name="Ind54" type="SPS_2_Proxy" />
      <DO name="Ind55" type="SPS_2_Proxy" />
      <DO name="Ind56" type="SPS_2_Proxy" />
      <DO name="Ind57" type="SPS_2_Proxy" />
      <DO name="Ind58" type="SPS_2_Proxy" />
      <DO name="Ind59" type="SPS_2_Proxy" />
      <DO name="Ind60" type="SPS_2_Proxy" />
      <DO name="Ind61" type="SPS_2_Proxy" />
      <DO name="Ind62" type="SPS_2_Proxy" />
      <DO name="Ind63" type="SPS_2_Proxy" />
      <DO name="Ind64" type="SPS_2_Proxy" />
      <DO name="Ind65" type="SPS_2_Proxy" />
      <DO name="Ind66" type="SPS_2_Proxy" />
      <DO name="Ind67" type="SPS_2_Proxy" />
      <DO name="Ind68" type="SPS_2_Proxy" />
      <DO name="Ind69" type="SPS_2_Proxy" />
      <DO name="Ind70" type="SPS_2_Proxy" />
      <DO name="Ind71" type="SPS_2_Proxy" />
      <DO name="Ind72" type="SPS_2_Proxy" />
      <DO name="Ind73" type="SPS_2_Proxy" />
      <DO name="Ind74" type="SPS_2_Proxy" />
      <DO name="Ind75" type="SPS_2_Proxy" />
      <DO name="Ind76" type="SPS_2_Proxy" />
      <DO name="Ind77" type="SPS_2_Proxy" />
      <DO name="Ind78" type="SPS_2_Proxy" />
      <DO name="Ind79" type="SPS_2_Proxy" />
      <DO name="Ind80" type="SPS_2_Proxy" />
      <DO name="Ind81" type="SPS_2_Proxy" />
      <DO name="Ind82" type="SPS_2_Proxy" />
      <DO name="Ind83" type="SPS_2_Proxy" />
      <DO name="Ind84" type="SPS_2_Proxy" />
      <DO name="Ind85" type="SPS_2_Proxy" />
      <DO name="Ind86" type="SPS_2_Proxy" />
      <DO name="Ind87" type="SPS_2_Proxy" />
      <DO name="Ind88" type="SPS_2_Proxy" />
      <DO name="Ind89" type="SPS_2_Proxy" />
      <DO name="Ind90" type="SPS_2_Proxy" />
      <DO name="Ind91" type="SPS_2_Proxy" />
      <DO name="Ind92" type="SPS_2_Proxy" />
      <DO name="Ind93" type="SPS_2_Proxy" />
      <DO name="Ind94" type="SPS_2_Proxy" />
      <DO name="Ind95" type="SPS_2_Proxy" />
      <DO name="Ind96" type="SPS_2_Proxy" />
      <DO name="Ind97" type="SPS_2_Proxy" />
      <DO name="Ind98" type="SPS_2_Proxy" />
      <DO name="Ind99" type="SPS_2_Proxy" />
      <DO name="Ind100" type="SPS_2_Proxy" />
      <DO name="Ind101" type="SPS_2_Proxy" />
      <DO name="Ind102" type="SPS_2_Proxy" />
      <DO name="Ind103" type="SPS_2_Proxy" />
      <DO name="Ind104" type="SPS_2_Proxy" />
      <DO name="Ind105" type="SPS_2_Proxy" />
      <DO name="Ind106" type="SPS_2_Proxy" />
      <DO name="Ind107" type="SPS_2_Proxy" />
      <DO name="Ind108" type="SPS_2_Proxy" />
      <DO name="Ind109" type="SPS_2_Proxy" />
      <DO name="Ind110" type="SPS_2_Proxy" />
      <DO name="Ind111" type="SPS_2_Proxy" />
      <DO name="Ind112" type="SPS_2_Proxy" />
      <DO name="Ind113" type="SPS_2_Proxy" />
      <DO name="Ind114" type="SPS_2_Proxy" />
      <DO name="Ind115" type="SPS_2_Proxy" />
      <DO name="Ind116" type="SPS_2_Proxy" />
      <DO name="Ind117" type="SPS_2_Proxy" />
      <DO name="Ind118" type="SPS_2_Proxy" />
      <DO name="Ind119" type="SPS_2_Proxy" />
      <DO name="Ind120" type="SPS_2_Proxy" />
      <DO name="Ind121" type="SPS_2_Proxy" />
      <DO name="Ind122" type="SPS_2_Proxy" />
      <DO name="Ind123" type="SPS_2_Proxy" />
      <DO name="Ind124" type="SPS_2_Proxy" />
      <DO name="Ind125" type="SPS_2_Proxy" />
      <DO name="Ind126" type="SPS_2_Proxy" />
      <DO name="Ind127" type="SPS_2_Proxy" />
      <DO name="Ind128" type="SPS_2_Proxy" />
    </LNodeType>
    <LNodeType id="GGIO2" lnClass="GGIO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Ind1" type="SPS_2_Proxy" />
      <DO name="Ind2" type="SPS_2_Proxy" />
      <DO name="Ind3" type="SPS_2_Proxy" />
      <DO name="Ind4" type="SPS_2_Proxy" />
      <DO name="Ind5" type="SPS_2_Proxy" />
      <DO name="Ind6" type="SPS_2_Proxy" />
      <DO name="Ind7" type="SPS_2_Proxy" />
      <DO name="Ind8" type="SPS_2_Proxy" />
      <DO name="Ind9" type="SPS_2_Proxy" />
      <DO name="Ind10" type="SPS_2_Proxy" />
      <DO name="Ind11" type="SPS_2_Proxy" />
      <DO name="Ind12" type="SPS_2_Proxy" />
      <DO name="Ind13" type="SPS_2_Proxy" />
      <DO name="Ind14" type="SPS_2_Proxy" />
      <DO name="Ind15" type="SPS_2_Proxy" />
      <DO name="Ind16" type="SPS_2_Proxy" />
      <DO name="Ind17" type="SPS_2_Proxy" />
      <DO name="Ind18" type="SPS_2_Proxy" />
      <DO name="Ind19" type="SPS_2_Proxy" />
      <DO name="Ind20" type="SPS_2_Proxy" />
      <DO name="Ind21" type="SPS_2_Proxy" />
      <DO name="Ind22" type="SPS_2_Proxy" />
      <DO name="Ind23" type="SPS_2_Proxy" />
      <DO name="Ind24" type="SPS_2_Proxy" />
      <DO name="Ind25" type="SPS_2_Proxy" />
      <DO name="Ind26" type="SPS_2_Proxy" />
      <DO name="Ind27" type="SPS_2_Proxy" />
      <DO name="Ind28" type="SPS_2_Proxy" />
      <DO name="Ind29" type="SPS_2_Proxy" />
      <DO name="Ind30" type="SPS_2_Proxy" />
      <DO name="Ind31" type="SPS_2_Proxy" />
      <DO name="Ind32" type="SPS_2_Proxy" />
      <DO name="Ind33" type="SPS_2_Proxy" />
      <DO name="Ind34" type="SPS_2_Proxy" />
      <DO name="Ind35" type="SPS_2_Proxy" />
      <DO name="Ind36" type="SPS_2_Proxy" />
      <DO name="Ind37" type="SPS_2_Proxy" />
      <DO name="Ind38" type="SPS_2_Proxy" />
      <DO name="Ind39" type="SPS_2_Proxy" />
      <DO name="Ind40" type="SPS_2_Proxy" />
      <DO name="Ind41" type="SPS_2_Proxy" />
      <DO name="Ind42" type="SPS_2_Proxy" />
      <DO name="Ind43" type="SPS_2_Proxy" />
      <DO name="Ind44" type="SPS_2_Proxy" />
      <DO name="Ind45" type="SPS_2_Proxy" />
      <DO name="Ind46" type="SPS_2_Proxy" />
      <DO name="Ind47" type="SPS_2_Proxy" />
      <DO name="Ind48" type="SPS_2_Proxy" />
    </LNodeType>
    <LNodeType id="GGIO3" lnClass="GGIO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Ind1" type="SPS_2_Proxy" />
      <DO name="Ind2" type="SPS_2_Proxy" />
      <DO name="Ind3" type="SPS_2_Proxy" />
      <DO name="Ind4" type="SPS_2_Proxy" />
      <DO name="Ind5" type="SPS_2_Proxy" />
      <DO name="Ind6" type="SPS_2_Proxy" />
      <DO name="Ind7" type="SPS_2_Proxy" />
      <DO name="Ind8" type="SPS_2_Proxy" />
      <DO name="Ind9" type="SPS_2_Proxy" />
      <DO name="Ind10" type="SPS_2_Proxy" />
      <DO name="Ind11" type="SPS_2_Proxy" />
      <DO name="Ind12" type="SPS_2_Proxy" />
      <DO name="Ind13" type="SPS_2_Proxy" />
      <DO name="Ind14" type="SPS_2_Proxy" />
      <DO name="Ind15" type="SPS_2_Proxy" />
      <DO name="Ind16" type="SPS_2_Proxy" />
      <DO name="Ind17" type="SPS_2_Proxy" />
      <DO name="Ind18" type="SPS_2_Proxy" />
      <DO name="Ind19" type="SPS_2_Proxy" />
      <DO name="Ind20" type="SPS_2_Proxy" />
      <DO name="Ind21" type="SPS_2_Proxy" />
      <DO name="Ind22" type="SPS_2_Proxy" />
      <DO name="Ind23" type="SPS_2_Proxy" />
      <DO name="Ind24" type="SPS_2_Proxy" />
      <DO name="Ind25" type="SPS_2_Proxy" />
      <DO name="Ind26" type="SPS_2_Proxy" />
      <DO name="Ind27" type="SPS_2_Proxy" />
      <DO name="Ind28" type="SPS_2_Proxy" />
      <DO name="Ind29" type="SPS_2_Proxy" />
      <DO name="Ind30" type="SPS_2_Proxy" />
      <DO name="Ind31" type="SPS_2_Proxy" />
      <DO name="Ind32" type="SPS_2_Proxy" />
      <DO name="Ind33" type="SPS_2_Proxy" />
      <DO name="Ind34" type="SPS_2_Proxy" />
      <DO name="Ind35" type="SPS_2_Proxy" />
      <DO name="Ind36" type="SPS_2_Proxy" />
      <DO name="Ind37" type="SPS_2_Proxy" />
      <DO name="Ind38" type="SPS_2_Proxy" />
      <DO name="Ind39" type="SPS_2_Proxy" />
      <DO name="Ind40" type="SPS_2_Proxy" />
      <DO name="Ind41" type="SPS_2_Proxy" />
      <DO name="Ind42" type="SPS_2_Proxy" />
      <DO name="Ind43" type="SPS_2_Proxy" />
      <DO name="Ind44" type="SPS_2_Proxy" />
      <DO name="Ind45" type="SPS_2_Proxy" />
      <DO name="Ind46" type="SPS_2_Proxy" />
      <DO name="Ind47" type="SPS_2_Proxy" />
      <DO name="Ind48" type="SPS_2_Proxy" />
      <DO name="Ind49" type="SPS_2_Proxy" />
      <DO name="Ind50" type="SPS_2_Proxy" />
      <DO name="Ind51" type="SPS_2_Proxy" />
      <DO name="Ind52" type="SPS_2_Proxy" />
      <DO name="Ind53" type="SPS_2_Proxy" />
      <DO name="Ind54" type="SPS_2_Proxy" />
      <DO name="Ind55" type="SPS_2_Proxy" />
      <DO name="Ind56" type="SPS_2_Proxy" />
      <DO name="Ind57" type="SPS_2_Proxy" />
      <DO name="Ind58" type="SPS_2_Proxy" />
      <DO name="Ind59" type="SPS_2_Proxy" />
      <DO name="Ind60" type="SPS_2_Proxy" />
      <DO name="Ind61" type="SPS_2_Proxy" />
      <DO name="Ind62" type="SPS_2_Proxy" />
      <DO name="Ind63" type="SPS_2_Proxy" />
      <DO name="Ind64" type="SPS_2_Proxy" />
    </LNodeType>
    <LNodeType id="GGIO4" lnClass="GGIO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="IntIn1" type="INS_1_IntIn1" />
      <DO name="IntIn2" type="INS_1_IntIn1" />
      <DO name="IntIn3" type="INS_1_IntIn1" />
      <DO name="IntIn4" type="INS_1_IntIn1" />
      <DO name="IntIn5" type="INS_1_IntIn1" />
      <DO name="IntIn6" type="INS_1_IntIn1" />
      <DO name="IntIn7" type="INS_1_IntIn1" />
      <DO name="IntIn8" type="INS_1_IntIn1" />
      <DO name="IntIn9" type="INS_1_IntIn1" />
      <DO name="IntIn10" type="INS_1_IntIn1" />
      <DO name="IntIn11" type="INS_1_IntIn1" />
      <DO name="IntIn12" type="INS_1_IntIn1" />
      <DO name="IntIn13" type="INS_1_IntIn1" />
      <DO name="IntIn14" type="INS_1_IntIn1" />
      <DO name="IntIn15" type="INS_1_IntIn1" />
      <DO name="IntIn16" type="INS_1_IntIn1" />
      <DO name="IntIn17" type="INS_1_IntIn1" />
      <DO name="IntIn18" type="INS_1_IntIn1" />
      <DO name="IntIn19" type="INS_1_IntIn1" />
      <DO name="IntIn20" type="INS_1_IntIn1" />
      <DO name="IntIn21" type="INS_1_IntIn1" />
      <DO name="IntIn22" type="INS_1_IntIn1" />
      <DO name="IntIn23" type="INS_1_IntIn1" />
      <DO name="IntIn24" type="INS_1_IntIn1" />
      <DO name="IntIn25" type="INS_1_IntIn1" />
      <DO name="IntIn26" type="INS_1_IntIn1" />
      <DO name="IntIn27" type="INS_1_IntIn1" />
      <DO name="IntIn28" type="INS_1_IntIn1" />
      <DO name="IntIn29" type="INS_1_IntIn1" />
      <DO name="IntIn30" type="INS_1_IntIn1" />
      <DO name="IntIn31" type="INS_1_IntIn1" />
      <DO name="IntIn32" type="INS_1_IntIn1" />
    </LNodeType>
    <LNodeType id="GGIO5" lnClass="GGIO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="AnIn1" type="MV_2_CtlV" />
      <DO name="AnIn2" type="MV_2_CtlV" />
      <DO name="AnIn3" type="MV_2_CtlV" />
      <DO name="AnIn4" type="MV_2_CtlV" />
      <DO name="AnIn5" type="MV_2_CtlV" />
      <DO name="AnIn6" type="MV_2_CtlV" />
      <DO name="AnIn7" type="MV_2_CtlV" />
      <DO name="AnIn8" type="MV_2_CtlV" />
      <DO name="AnIn9" type="MV_2_CtlV" />
      <DO name="AnIn10" type="MV_2_CtlV" />
      <DO name="AnIn11" type="MV_2_CtlV" />
      <DO name="AnIn12" type="MV_2_CtlV" />
      <DO name="AnIn13" type="MV_2_CtlV" />
      <DO name="AnIn14" type="MV_2_CtlV" />
      <DO name="AnIn15" type="MV_2_CtlV" />
      <DO name="AnIn16" type="MV_2_CtlV" />
      <DO name="AnIn17" type="MV_2_CtlV" />
      <DO name="AnIn18" type="MV_2_CtlV" />
      <DO name="AnIn19" type="MV_2_CtlV" />
      <DO name="AnIn20" type="MV_2_CtlV" />
      <DO name="AnIn21" type="MV_2_CtlV" />
      <DO name="AnIn22" type="MV_2_CtlV" />
      <DO name="AnIn23" type="MV_2_CtlV" />
      <DO name="AnIn24" type="MV_2_CtlV" />
      <DO name="AnIn25" type="MV_2_CtlV" />
      <DO name="AnIn26" type="MV_2_CtlV" />
      <DO name="AnIn27" type="MV_2_CtlV" />
      <DO name="AnIn28" type="MV_2_CtlV" />
      <DO name="AnIn29" type="MV_2_CtlV" />
      <DO name="AnIn30" type="MV_2_CtlV" />
      <DO name="AnIn31" type="MV_2_CtlV" />
      <DO name="AnIn32" type="MV_2_CtlV" />
    </LNodeType>
    <LNodeType id="GGIO6" lnClass="GGIO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="AnIn1" type="MV_2_CtlV" />
      <DO name="AnIn2" type="MV_2_CtlV" />
      <DO name="AnIn3" type="MV_2_CtlV" />
      <DO name="AnIn4" type="MV_2_CtlV" />
      <DO name="AnIn5" type="MV_2_CtlV" />
      <DO name="AnIn6" type="MV_2_CtlV" />
      <DO name="AnIn7" type="MV_2_CtlV" />
      <DO name="AnIn8" type="MV_2_CtlV" />
      <DO name="AnIn9" type="MV_2_CtlV" />
      <DO name="AnIn10" type="MV_2_CtlV" />
      <DO name="AnIn11" type="MV_2_CtlV" />
      <DO name="AnIn12" type="MV_2_CtlV" />
      <DO name="AnIn13" type="MV_2_CtlV" />
      <DO name="AnIn14" type="MV_2_CtlV" />
      <DO name="AnIn15" type="MV_2_CtlV" />
      <DO name="AnIn16" type="MV_2_CtlV" />
    </LNodeType>
    <LNodeType id="GGIO7" lnClass="GGIO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Alm1" type="SPS_2_Proxy" />
      <DO name="Alm2" type="SPS_2_Proxy" />
      <DO name="Alm3" type="SPS_2_Proxy" />
      <DO name="Alm4" type="SPS_2_Proxy" />
      <DO name="Alm5" type="SPS_2_Proxy" />
      <DO name="Alm6" type="SPS_2_Proxy" />
      <DO name="Alm7" type="SPS_2_Proxy" />
      <DO name="Alm8" type="SPS_2_Proxy" />
      <DO name="Alm9" type="SPS_2_Proxy" />
      <DO name="Alm10" type="SPS_2_Proxy" />
      <DO name="Alm11" type="SPS_2_Proxy" />
      <DO name="Alm12" type="SPS_2_Proxy" />
      <DO name="Alm13" type="SPS_2_Proxy" />
      <DO name="Alm14" type="SPS_2_Proxy" />
      <DO name="Alm15" type="SPS_2_Proxy" />
      <DO name="Alm16" type="SPS_2_Proxy" />
      <DO name="Alm17" type="SPS_2_Proxy" />
      <DO name="Alm18" type="SPS_2_Proxy" />
      <DO name="Alm19" type="SPS_2_Proxy" />
      <DO name="Alm20" type="SPS_2_Proxy" />
      <DO name="Alm21" type="SPS_2_Proxy" />
      <DO name="Alm22" type="SPS_2_Proxy" />
      <DO name="Alm23" type="SPS_2_Proxy" />
      <DO name="Alm24" type="SPS_2_Proxy" />
      <DO name="Alm25" type="SPS_2_Proxy" />
      <DO name="Alm26" type="SPS_2_Proxy" />
      <DO name="Alm27" type="SPS_2_Proxy" />
      <DO name="Alm28" type="SPS_2_Proxy" />
      <DO name="Alm29" type="SPS_2_Proxy" />
      <DO name="Alm30" type="SPS_2_Proxy" />
      <DO name="Alm31" type="SPS_2_Proxy" />
      <DO name="Alm32" type="SPS_2_Proxy" />
      <DO name="Alm33" type="SPS_2_Proxy" />
      <DO name="Alm34" type="SPS_2_Proxy" />
      <DO name="Alm35" type="SPS_2_Proxy" />
      <DO name="Alm36" type="SPS_2_Proxy" />
      <DO name="Alm37" type="SPS_2_Proxy" />
      <DO name="Alm38" type="SPS_2_Proxy" />
      <DO name="Alm39" type="SPS_2_Proxy" />
      <DO name="Alm40" type="SPS_2_Proxy" />
      <DO name="Alm41" type="SPS_2_Proxy" />
      <DO name="Alm42" type="SPS_2_Proxy" />
      <DO name="Alm43" type="SPS_2_Proxy" />
      <DO name="Alm44" type="SPS_2_Proxy" />
      <DO name="Alm45" type="SPS_2_Proxy" />
      <DO name="Alm46" type="SPS_2_Proxy" />
      <DO name="Alm47" type="SPS_2_Proxy" />
      <DO name="Alm48" type="SPS_2_Proxy" />
      <DO name="Alm49" type="SPS_2_Proxy" />
      <DO name="Alm50" type="SPS_2_Proxy" />
      <DO name="Alm51" type="SPS_2_Proxy" />
      <DO name="Alm52" type="SPS_2_Proxy" />
      <DO name="Alm53" type="SPS_2_Proxy" />
      <DO name="Alm54" type="SPS_2_Proxy" />
      <DO name="Alm55" type="SPS_2_Proxy" />
      <DO name="Alm56" type="SPS_2_Proxy" />
      <DO name="Alm57" type="SPS_2_Proxy" />
      <DO name="Alm58" type="SPS_2_Proxy" />
      <DO name="Alm59" type="SPS_2_Proxy" />
      <DO name="Alm60" type="SPS_2_Proxy" />
      <DO name="Alm61" type="SPS_2_Proxy" />
      <DO name="Alm62" type="SPS_2_Proxy" />
      <DO name="Alm63" type="SPS_2_Proxy" />
      <DO name="Alm64" type="SPS_2_Proxy" />
    </LNodeType>
    <LNodeType id="GGIO9" lnClass="GGIO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Ind1" type="SPS_2_Proxy" />
      <DO name="Ind2" type="SPS_2_Proxy" />
      <DO name="Ind3" type="SPS_2_Proxy" />
      <DO name="Ind4" type="SPS_2_Proxy" />
      <DO name="Ind5" type="SPS_2_Proxy" />
      <DO name="Ind6" type="SPS_2_Proxy" />
      <DO name="Ind7" type="SPS_2_Proxy" />
      <DO name="Ind8" type="SPS_2_Proxy" />
      <DO name="Ind9" type="SPS_2_Proxy" />
      <DO name="Ind10" type="SPS_2_Proxy" />
      <DO name="Ind11" type="SPS_2_Proxy" />
      <DO name="Ind12" type="SPS_2_Proxy" />
      <DO name="Ind13" type="SPS_2_Proxy" />
      <DO name="Ind14" type="SPS_2_Proxy" />
      <DO name="Ind15" type="SPS_2_Proxy" />
      <DO name="Ind16" type="SPS_2_Proxy" />
      <DO name="Ind17" type="SPS_2_Proxy" />
      <DO name="Ind18" type="SPS_2_Proxy" />
      <DO name="Ind19" type="SPS_2_Proxy" />
      <DO name="Ind20" type="SPS_2_Proxy" />
      <DO name="Ind21" type="SPS_2_Proxy" />
      <DO name="Ind22" type="SPS_2_Proxy" />
      <DO name="Ind23" type="SPS_2_Proxy" />
      <DO name="Ind24" type="SPS_2_Proxy" />
      <DO name="Ind25" type="SPS_2_Proxy" />
      <DO name="Ind26" type="SPS_2_Proxy" />
      <DO name="Ind27" type="SPS_2_Proxy" />
      <DO name="Ind28" type="SPS_2_Proxy" />
      <DO name="Ind29" type="SPS_2_Proxy" />
      <DO name="Ind30" type="SPS_2_Proxy" />
      <DO name="Ind31" type="SPS_2_Proxy" />
      <DO name="Ind32" type="SPS_2_Proxy" />
      <DO name="Ind33" type="SPS_2_Proxy" />
      <DO name="Ind34" type="SPS_2_Proxy" />
      <DO name="Ind35" type="SPS_2_Proxy" />
      <DO name="Ind36" type="SPS_2_Proxy" />
      <DO name="Ind37" type="SPS_2_Proxy" />
      <DO name="Ind38" type="SPS_2_Proxy" />
      <DO name="Ind39" type="SPS_2_Proxy" />
      <DO name="Ind40" type="SPS_2_Proxy" />
      <DO name="Ind41" type="SPS_2_Proxy" />
      <DO name="Ind42" type="SPS_2_Proxy" />
      <DO name="Ind43" type="SPS_2_Proxy" />
      <DO name="Ind44" type="SPS_2_Proxy" />
      <DO name="Ind45" type="SPS_2_Proxy" />
      <DO name="Ind46" type="SPS_2_Proxy" />
      <DO name="Ind47" type="SPS_2_Proxy" />
      <DO name="Ind48" type="SPS_2_Proxy" />
      <DO name="Ind49" type="SPS_2_Proxy" />
      <DO name="Ind50" type="SPS_2_Proxy" />
      <DO name="AnIn1" type="MV_1_LodA" />
      <DO name="AnIn2" type="MV_1_LodA" />
      <DO name="AnIn3" type="MV_1_LodA" />
      <DO name="AnIn4" type="MV_1_LodA" />
      <DO name="AnIn5" type="MV_1_LodA" />
      <DO name="AnIn6" type="MV_1_LodA" />
      <DO name="AnIn7" type="MV_1_LodA" />
      <DO name="AnIn8" type="MV_1_LodA" />
      <DO name="AnIn9" type="MV_1_LodA" />
      <DO name="AnIn10" type="MV_1_LodA" />
      <DO name="AnIn11" type="MV_1_LodA" />
      <DO name="AnIn12" type="MV_1_LodA" />
      <DO name="AnIn13" type="MV_1_LodA" />
      <DO name="AnIn14" type="MV_1_LodA" />
      <DO name="AnIn15" type="MV_1_LodA" />
      <DO name="AnIn16" type="MV_1_LodA" />
      <DO name="AnIn17" type="MV_1_LodA" />
      <DO name="AnIn18" type="MV_1_LodA" />
      <DO name="AnIn19" type="MV_1_LodA" />
      <DO name="AnIn20" type="MV_1_LodA" />
      <DO name="AnIn21" type="MV_1_LodA" />
      <DO name="AnIn22" type="MV_1_LodA" />
      <DO name="AnIn23" type="MV_1_LodA" />
      <DO name="AnIn24" type="MV_1_LodA" />
      <DO name="AnIn25" type="MV_1_LodA" />
      <DO name="AnIn26" type="MV_1_LodA" />
      <DO name="AnIn27" type="MV_1_LodA" />
      <DO name="AnIn28" type="MV_1_LodA" />
      <DO name="AnIn29" type="MV_1_LodA" />
      <DO name="AnIn30" type="MV_1_LodA" />
      <DO name="AnIn31" type="MV_1_LodA" />
      <DO name="AnIn32" type="MV_1_LodA" />
      <DO name="AnIn33" type="MV_1_LodA" />
      <DO name="AnIn34" type="MV_1_LodA" />
      <DO name="AnIn35" type="MV_1_LodA" />
      <DO name="AnIn36" type="MV_1_LodA" />
      <DO name="AnIn37" type="MV_1_LodA" />
      <DO name="AnIn38" type="MV_1_LodA" />
      <DO name="AnIn39" type="MV_1_LodA" />
      <DO name="AnIn40" type="MV_1_LodA" />
      <DO name="AnIn41" type="MV_1_LodA" />
      <DO name="AnIn42" type="MV_1_LodA" />
      <DO name="AnIn43" type="MV_1_LodA" />
      <DO name="AnIn44" type="MV_1_LodA" />
      <DO name="AnIn45" type="MV_1_LodA" />
      <DO name="AnIn46" type="MV_1_LodA" />
      <DO name="AnIn47" type="MV_1_LodA" />
      <DO name="AnIn48" type="MV_1_LodA" />
      <DO name="AnIn49" type="MV_1_LodA" />
      <DO name="AnIn50" type="MV_1_LodA" />
    </LNodeType>
    <LNodeType id="LGOS1" lnClass="LGOS">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="NdsCom" type="SPS_2_Proxy" />
      <DO name="St" type="SPS_2_Proxy" />
      <DO name="SimSt" type="SPS_2_Proxy" />
      <DO name="LastStNum" type="INS_2_HiTapPos" />
      <DO name="ConfRevNum" type="INS_2_HiTapPos" />
      <DO name="GoCBRef" type="ORG_7_GoCBRef" />
    </LNodeType>
    <LNodeType id="LTMS1" lnClass="LTMS">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="TmAcc" type="INS_2_HiTapPos" />
      <DO name="TmSrc" type="VSS_1_TmSrc" />
      <DO name="TmSyn" type="ENS_1_TmSyn" />
      <DO name="TmChSt1" type="SPS_2_Proxy" />
      <DO name="TmSrcSet1" type="VSG_1_TmSrcSet1" />
      <DO name="TmChSt2" type="SPS_2_Proxy" />
      <DO name="TmSrcSet2" type="VSG_1_TmSrcSet1" />
    </LNodeType>
    <LNodeType id="LTIM1" lnClass="LTIM">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="TmDT" type="SPS_2_Proxy" />
      <DO name="TmOfsTmm" type="ING_1_TmOfsTmm" />
      <DO name="TmUseDT" type="SPG_1_MltLev" />
      <DO name="StrWeekDay" type="ENG_1_StrWeekDay" />
    </LNodeType>
    <LNodeType id="LLN02" lnClass="LLN0">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_3_NamPlt" />
      <DO name="LocKey" type="SPS_2_LocKey" />
      <DO name="Loc" type="SPS_2_LocKey" />
      <DO name="LocSta" type="SPC_2_LocSta" />
      <DO name="Diag" type="SPC_2_LocSta" />
      <DO name="LEDRs" type="SPC_2_LocSta" />
      <DO name="MltLev" type="SPG_1_MltLev" />
    </LNodeType>
    <LNodeType id="LPHD2" lnClass="LPHD">
      <DO name="PhyNam" type="DPL_2_PhyNam" />
      <DO name="PhyHealth" type="ENS_2_PhyHealth" />
      <DO name="Proxy" type="SPS_2_Proxy" />
      <DO name="Sim" type="SPC_2_LocSta" />
    </LNodeType>
    <LNodeType id="CSWI5" lnClass="CSWI">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="CmdBlk" type="SPC_2_CmdBlk" />
      <DO name="LocKey" type="SPS_2_LocKey" />
      <DO name="Loc" type="SPS_2_Proxy" />
      <DO name="LocSta" type="SPC_2_CmdBlk" />
      <DO name="Pos" type="DPC_1_Pos" />
      <DO name="PosA" type="DPC_1_Pos" />
      <DO name="PosB" type="DPC_1_Pos" />
      <DO name="PosC" type="DPC_1_Pos" />
    </LNodeType>
    <LNodeType id="CSWI6" lnClass="CSWI">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="CmdBlk" type="SPC_2_CmdBlk" />
      <DO name="LocKey" type="SPS_2_LocKey" />
      <DO name="Loc" type="SPS_2_Proxy" />
      <DO name="LocSta" type="SPC_2_CmdBlk" />
      <DO name="Pos" type="DPC_1_Pos" />
    </LNodeType>
    <LNodeType id="CSWI7" lnClass="CSWI">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="CmdBlk" type="SPC_2_CmdBlk" />
      <DO name="LocKey" type="SPS_2_LocKey" />
      <DO name="Loc" type="SPS_2_Proxy" />
      <DO name="LocSta" type="SPC_2_CmdBlk" />
      <DO name="Pos" type="DPC_1_Pos" />
    </LNodeType>
    <LNodeType id="CSWI8" lnClass="CSWI">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="CmdBlk" type="SPC_2_CmdBlk" />
      <DO name="LocKey" type="SPS_2_LocKey" />
      <DO name="Loc" type="SPS_2_Proxy" />
      <DO name="LocSta" type="SPC_2_CmdBlk" />
      <DO name="Pos" type="DPC_1_Pos" />
    </LNodeType>
    <LNodeType id="CILO5" lnClass="CILO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="EnaOpn" type="SPS_2_Proxy" />
      <DO name="EnaCls" type="SPS_2_Proxy" />
    </LNodeType>
    <LNodeType id="CILO6" lnClass="CILO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="EnaOpn" type="SPS_2_Proxy" />
      <DO name="EnaCls" type="SPS_2_Proxy" />
    </LNodeType>
    <LNodeType id="CILO7" lnClass="CILO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="EnaOpn" type="SPS_2_Proxy" />
      <DO name="EnaCls" type="SPS_2_Proxy" />
    </LNodeType>
    <LNodeType id="CILO8" lnClass="CILO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="EnaOpn" type="SPS_2_Proxy" />
      <DO name="EnaCls" type="SPS_2_Proxy" />
    </LNodeType>
    <LNodeType id="ATCC2" lnClass="ATCC">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Loc" type="SPS_2_Proxy" />
      <DO name="HiTapPos" type="INS_2_HiTapPos" />
      <DO name="LoTapPos" type="INS_2_HiTapPos" />
      <DO name="TapOpR" type="SPS_2_Proxy" />
      <DO name="TapOpL" type="SPS_2_Proxy" />
      <DO name="TapOpStop" type="SPS_2_Proxy" />
      <DO name="TapOpErr" type="SPS_2_Proxy" />
      <DO name="LTCBlkVLo" type="SPS_2_LTCBlkVLo" />
      <DO name="LTCBlkVHi" type="SPS_2_LTCBlkVLo" />
      <DO name="LTCBlkAHi" type="SPS_2_LTCBlkVLo" />
      <DO name="EndPosR" type="SPS_2_Proxy" />
      <DO name="EndPosL" type="SPS_2_Proxy" />
      <DO name="CtlV" type="MV_2_CtlV" />
      <DO name="LodA" type="MV_1_LodA" />
      <DO name="TapChg" type="BSC_1_TapChg" />
      <DO name="ParOp" type="SPC_1_ParOp" />
      <DO name="Auto" type="SPC_2_Auto" />
      <DO name="BndCtr" type="ASG_2_BndCtr" />
      <DO name="BndWid" type="ASG_2_BndCtr" />
      <DO name="CtlDlTmms" type="ING_2_CtlDlTmms" />
      <DO name="LDCR" type="ASG_2_BndCtr" />
      <DO name="LDCX" type="ASG_2_BndCtr" />
      <DO name="BlkLV" type="ASG_2_BndCtr" />
      <DO name="BlkRV" type="ASG_2_BndCtr" />
      <DO name="BlkVLo" type="ASG_2_BndCtr" />
      <DO name="BlkVHi" type="ASG_2_BndCtr" />
      <DO name="LimLodA" type="ASG_2_BndCtr" />
      <DO name="LDC" type="SPG_1_MltLev" />
      <DO name="ParTraMod" type="ENG_1_ParTraMod" />
      <DO name="TmDlChr" type="SPG_1_MltLev" />
      <DO name="LDCZ" type="ASG_2_BndCtr" />
      <DO name="TapBlkR" type="ING_2_CtlDlTmms" />
      <DO name="TapBlkL" type="ING_2_CtlDlTmms" />
    </LNodeType>
    <LNodeType id="MMXU2" lnClass="MMXU">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="TotW" type="MV_2_CtlV" />
      <DO name="TotVAr" type="MV_2_CtlV" />
      <DO name="TotVA" type="MV_2_CtlV" />
      <DO name="TotPF" type="MV_2_CtlV" />
      <DO name="Hz" type="MV_2_CtlV" />
      <DO name="PPV" type="DEL_2_PPV" />
      <DO name="PhV" type="WYE_2_PhV" />
      <DO name="A" type="WYE_2_PhV" />
      <DO name="W" type="WYE_2_PhV" />
      <DO name="VAr" type="WYE_2_PhV" />
      <DO name="VA" type="WYE_2_PhV" />
      <DO name="PF" type="WYE_2_PhV" />
    </LNodeType>
    <LNodeType id="MMXN2" lnClass="MMXN">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Vol" type="MV_2_CtlV" />
      <DO name="Hz" type="MV_2_CtlV" />
    </LNodeType>
    <LNodeType id="PTOC3" lnClass="PTOC">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Str" type="ACD_3_Str" />
      <DO name="Op" type="ACT_3_Op" />
      <DO name="TmACrv" type="CURVE_2_TmACrv" />
      <DO name="StrVal" type="ASG_2_BndCtr" />
      <DO name="TmMult" type="ASG_2_BndCtr" />
      <DO name="OpDlTmms" type="ING_2_CtlDlTmms" />
      <DO name="DirMod" type="ENG_2_DirMod" />
    </LNodeType>
    <LNodeType id="PTOC4" lnClass="PTOC">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Str" type="ACD_4_Str" />
      <DO name="Op" type="ACT_4_Op" />
      <DO name="TmACrv" type="CURVE_2_TmACrv" />
      <DO name="StrVal" type="ASG_2_BndCtr" />
      <DO name="TmMult" type="ASG_2_BndCtr" />
      <DO name="OpDlTmms" type="ING_2_CtlDlTmms" />
      <DO name="DirMod" type="ENG_2_DirMod" />
    </LNodeType>
    <LNodeType id="PIOC3" lnClass="PIOC">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Str" type="ACD_3_Str" />
      <DO name="Op" type="ACT_3_Op" />
      <DO name="StrVal" type="ASG_2_BndCtr" />
    </LNodeType>
    <LNodeType id="PTUF2" lnClass="PTUF">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Str" type="ACD_4_Str" />
      <DO name="Op" type="ACT_4_Op" />
      <DO name="BlkV" type="SPS_2_Proxy" />
      <DO name="StrVal" type="ASG_2_BndCtr" />
      <DO name="BlkVal" type="ASG_2_BndCtr" />
      <DO name="OpDlTmms" type="ING_2_CtlDlTmms" />
    </LNodeType>
    <LNodeType id="PTUV2" lnClass="PTUV">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Str" type="ACD_4_Str" />
      <DO name="Op" type="ACT_4_Op" />
      <DO name="TmVCrv" type="CURVE_2_TmACrv" />
      <DO name="StrVal" type="ASG_2_BndCtr" />
      <DO name="TmMult" type="ASG_2_BndCtr" />
      <DO name="OpDlTmms" type="ING_2_CtlDlTmms" />
    </LNodeType>
    <LNodeType id="PTOV2" lnClass="PTOV">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Str" type="ACD_4_Str" />
      <DO name="Op" type="ACT_4_Op" />
      <DO name="TmVCrv" type="CURVE_2_TmACrv" />
      <DO name="StrVal" type="ASG_2_BndCtr" />
      <DO name="TmMult" type="ASG_2_BndCtr" />
      <DO name="OpDlTmms" type="ING_2_CtlDlTmms" />
    </LNodeType>
    <LNodeType id="RBRF2" lnClass="RBRF">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Str" type="ACD_4_Str" />
      <DO name="OpEx" type="ACT_4_Op" />
      <DO name="OpIn" type="ACT_4_Op" />
      <DO name="FailMod" type="ENG_2_FailMod" />
      <DO name="FailTmms" type="ING_2_CtlDlTmms" />
      <DO name="SPlTrTmms" type="ING_2_CtlDlTmms" />
      <DO name="TPTrTmms" type="ING_2_CtlDlTmms" />
      <DO name="DetValA" type="ASG_2_BndCtr" />
      <DO name="ReTrMod" type="ENG_1_ReTrMod" />
    </LNodeType>
    <LNodeType id="PTRC2" lnClass="PTRC">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Tr" type="ACT_4_Op" />
      <DO name="Op" type="ACT_4_Op" />
      <DO name="Str" type="ACD_4_Str" />
      <DO name="TrMod" type="ENG_1_TrMod" />
      <DO name="TrPlsTmms" type="ING_2_CtlDlTmms" />
    </LNodeType>
    <LNodeType id="PIOC4" lnClass="PIOC">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Str" type="ACD_4_Str" />
      <DO name="Op" type="ACT_4_Op" />
      <DO name="StrVal" type="ASG_2_BndCtr" />
    </LNodeType>
    <LNodeType id="PFRC2" lnClass="PFRC">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Str" type="ACD_4_Str" />
      <DO name="Op" type="ACT_4_Op" />
      <DO name="BlkV" type="SPS_2_Proxy" />
      <DO name="StrVal" type="ASG_2_BndCtr" />
      <DO name="BlkVal" type="ASG_2_BndCtr" />
      <DO name="OpDlTmms" type="ING_2_CtlDlTmms" />
    </LNodeType>
    <LNodeType id="RREC2" lnClass="RREC">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="TrBeh" type="ENS_1_TrBeh" />
      <DO name="RecCyc" type="INS_2_HiTapPos" />
      <DO name="OpCls" type="ACT_2_OpCls" />
      <DO name="AutoRecSt" type="ENS_2_AutoRecSt" />
      <DO name="CycTrMod1" type="ENG_1_CycTrMod1" />
      <DO name="CycTrMod2" type="ENG_1_CycTrMod1" />
      <DO name="CycTrMod3" type="ENG_1_CycTrMod1" />
      <DO name="CycTrMod4" type="ENG_1_CycTrMod1" />
      <DO name="MaxCyc" type="ING_2_CtlDlTmms" />
      <DO name="UseCyc" type="ING_2_CtlDlTmms" />
      <DO name="MaxTmms" type="ING_2_CtlDlTmms" />
      <DO name="Rec1Tmms1" type="ING_2_CtlDlTmms" />
      <DO name="Rec1Tmms2" type="ING_2_CtlDlTmms" />
      <DO name="Rec1Tmms3" type="ING_2_CtlDlTmms" />
      <DO name="Rec1Tmms4" type="ING_2_CtlDlTmms" />
      <DO name="Rec3Tmms1" type="ING_2_CtlDlTmms" />
      <DO name="Rec3Tmms2" type="ING_2_CtlDlTmms" />
      <DO name="Rec3Tmms3" type="ING_2_CtlDlTmms" />
      <DO name="Rec3Tmms4" type="ING_2_CtlDlTmms" />
      <DO name="RclTmms" type="ING_2_CtlDlTmms" />
      <DO name="RdyTmms" type="ING_2_CtlDlTmms" />
    </LNodeType>
    <LNodeType id="RSYN2" lnClass="RSYN">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Rel" type="SPS_2_Proxy" />
      <DO name="VInd" type="SPS_2_Proxy" />
      <DO name="AngInd" type="SPS_2_Proxy" />
      <DO name="HzInd" type="SPS_2_Proxy" />
      <DO name="DifVClc" type="MV_2_CtlV" />
      <DO name="DifHzClc" type="MV_2_CtlV" />
      <DO name="DifAngClc" type="MV_2_CtlV" />
      <DO name="SynPrg" type="SPC_2_Auto" />
      <DO name="DifV" type="ASG_2_BndCtr" />
      <DO name="DifHz" type="ASG_2_BndCtr" />
      <DO name="DifAng" type="ASG_2_BndCtr" />
      <DO name="LivDeaMod" type="ENG_1_LivDeaMod" />
      <DO name="DeaLinVal" type="ASG_2_BndCtr" />
      <DO name="LivLinVal" type="ASG_2_BndCtr" />
      <DO name="DeaBusVal" type="ASG_2_BndCtr" />
      <DO name="LivBusVal" type="ASG_2_BndCtr" />
    </LNodeType>
    <LNodeType id="RDRE2" lnClass="RDRE">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="RcdMade" type="SPS_2_Proxy" />
      <DO name="FltNum" type="INS_2_HiTapPos" />
      <DO name="RcdStr" type="SPS_2_Proxy" />
      <DO name="RcdTrg" type="SPC_2_CmdBlk" />
      <DO name="MemRs" type="SPC_2_CmdBlk" />
      <DO name="MemClr" type="SPC_2_CmdBlk" />
      <DO name="TrgMod" type="ENG_1_TrgMod" />
      <DO name="LevMod" type="ENG_1_LevMod" />
      <DO name="PreTmms" type="ING_2_CtlDlTmms" />
      <DO name="PstTmms" type="ING_2_CtlDlTmms" />
      <DO name="MemFull" type="ING_2_CtlDlTmms" />
      <DO name="MaxNumRcd" type="ING_2_CtlDlTmms" />
      <DO name="ReTrgMod" type="SPG_1_MltLev" />
      <DO name="PerTrgTms" type="ING_2_CtlDlTmms" />
      <DO name="ExclTmms" type="ING_2_CtlDlTmms" />
      <DO name="RcdMod" type="ENG_1_RcdMod" />
      <DO name="StoRte" type="ING_2_CtlDlTmms" />
    </LNodeType>
    <LNodeType id="GGIO8" lnClass="GGIO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Ind1" type="SPS_2_Proxy" />
      <DO name="Ind2" type="SPS_2_Proxy" />
      <DO name="Ind3" type="SPS_2_Proxy" />
      <DO name="Ind4" type="SPS_2_Proxy" />
      <DO name="Ind5" type="SPS_2_Proxy" />
      <DO name="Ind6" type="SPS_2_Proxy" />
      <DO name="Ind7" type="SPS_2_Proxy" />
      <DO name="Ind8" type="SPS_2_Proxy" />
      <DO name="Ind9" type="SPS_2_Proxy" />
      <DO name="Ind10" type="SPS_2_Proxy" />
      <DO name="Ind11" type="SPS_2_Proxy" />
      <DO name="Ind12" type="SPS_2_Proxy" />
      <DO name="Ind13" type="SPS_2_Proxy" />
      <DO name="Ind14" type="SPS_2_Proxy" />
      <DO name="Ind15" type="SPS_2_Proxy" />
      <DO name="Ind16" type="SPS_2_Proxy" />
      <DO name="Ind17" type="SPS_2_Proxy" />
      <DO name="Ind18" type="SPS_2_Proxy" />
      <DO name="Ind19" type="SPS_2_Proxy" />
      <DO name="Ind20" type="SPS_2_Proxy" />
      <DO name="Ind21" type="SPS_2_Proxy" />
      <DO name="Ind22" type="SPS_2_Proxy" />
      <DO name="Ind23" type="SPS_2_Proxy" />
      <DO name="Ind24" type="SPS_2_Proxy" />
      <DO name="Ind25" type="SPS_2_Proxy" />
      <DO name="Ind26" type="SPS_2_Proxy" />
      <DO name="Ind27" type="SPS_2_Proxy" />
      <DO name="Ind28" type="SPS_2_Proxy" />
      <DO name="Ind29" type="SPS_2_Proxy" />
      <DO name="Ind30" type="SPS_2_Proxy" />
      <DO name="Ind31" type="SPS_2_Proxy" />
      <DO name="Ind32" type="SPS_2_Proxy" />
      <DO name="Ind33" type="SPS_2_Proxy" />
      <DO name="Ind34" type="SPS_2_Proxy" />
      <DO name="Ind35" type="SPS_2_Proxy" />
      <DO name="Ind36" type="SPS_2_Proxy" />
      <DO name="Ind37" type="SPS_2_Proxy" />
      <DO name="Ind38" type="SPS_2_Proxy" />
      <DO name="Ind39" type="SPS_2_Proxy" />
      <DO name="Ind40" type="SPS_2_Proxy" />
      <DO name="Ind41" type="SPS_2_Proxy" />
      <DO name="Ind42" type="SPS_2_Proxy" />
      <DO name="Ind43" type="SPS_2_Proxy" />
      <DO name="Ind44" type="SPS_2_Proxy" />
      <DO name="Ind45" type="SPS_2_Proxy" />
      <DO name="Ind46" type="SPS_2_Proxy" />
      <DO name="Ind47" type="SPS_2_Proxy" />
      <DO name="Ind48" type="SPS_2_Proxy" />
      <DO name="Ind49" type="SPS_2_Proxy" />
      <DO name="Ind50" type="SPS_2_Proxy" />
      <DO name="Ind51" type="SPS_2_Proxy" />
      <DO name="Ind52" type="SPS_2_Proxy" />
      <DO name="Ind53" type="SPS_2_Proxy" />
      <DO name="Ind54" type="SPS_2_Proxy" />
      <DO name="Ind55" type="SPS_2_Proxy" />
      <DO name="Ind56" type="SPS_2_Proxy" />
      <DO name="Ind57" type="SPS_2_Proxy" />
      <DO name="Ind58" type="SPS_2_Proxy" />
      <DO name="Ind59" type="SPS_2_Proxy" />
      <DO name="Ind60" type="SPS_2_Proxy" />
      <DO name="Ind61" type="SPS_2_Proxy" />
      <DO name="Ind62" type="SPS_2_Proxy" />
      <DO name="Ind63" type="SPS_2_Proxy" />
      <DO name="Ind64" type="SPS_2_Proxy" />
      <DO name="Ind65" type="SPS_2_Proxy" />
      <DO name="Ind66" type="SPS_2_Proxy" />
      <DO name="Ind67" type="SPS_2_Proxy" />
      <DO name="Ind68" type="SPS_2_Proxy" />
      <DO name="Ind69" type="SPS_2_Proxy" />
      <DO name="Ind70" type="SPS_2_Proxy" />
      <DO name="Ind71" type="SPS_2_Proxy" />
      <DO name="Ind72" type="SPS_2_Proxy" />
      <DO name="Ind73" type="SPS_2_Proxy" />
      <DO name="Ind74" type="SPS_2_Proxy" />
      <DO name="Ind75" type="SPS_2_Proxy" />
      <DO name="Ind76" type="SPS_2_Proxy" />
      <DO name="Ind77" type="SPS_2_Proxy" />
      <DO name="Ind78" type="SPS_2_Proxy" />
      <DO name="Ind79" type="SPS_2_Proxy" />
      <DO name="Ind80" type="SPS_2_Proxy" />
      <DO name="Ind81" type="SPS_2_Proxy" />
      <DO name="Ind82" type="SPS_2_Proxy" />
      <DO name="Ind83" type="SPS_2_Proxy" />
      <DO name="Ind84" type="SPS_2_Proxy" />
      <DO name="Ind85" type="SPS_2_Proxy" />
      <DO name="Ind86" type="SPS_2_Proxy" />
      <DO name="Ind87" type="SPS_2_Proxy" />
      <DO name="Ind88" type="SPS_2_Proxy" />
      <DO name="Ind89" type="SPS_2_Proxy" />
      <DO name="Ind90" type="SPS_2_Proxy" />
      <DO name="Ind91" type="SPS_2_Proxy" />
      <DO name="Ind92" type="SPS_2_Proxy" />
      <DO name="Ind93" type="SPS_2_Proxy" />
      <DO name="Ind94" type="SPS_2_Proxy" />
      <DO name="Ind95" type="SPS_2_Proxy" />
      <DO name="Ind96" type="SPS_2_Proxy" />
      <DO name="Ind97" type="SPS_2_Proxy" />
      <DO name="Ind98" type="SPS_2_Proxy" />
      <DO name="Ind99" type="SPS_2_Proxy" />
      <DO name="Ind100" type="SPS_2_Proxy" />
      <DO name="Ind101" type="SPS_2_Proxy" />
      <DO name="Ind102" type="SPS_2_Proxy" />
      <DO name="Ind103" type="SPS_2_Proxy" />
      <DO name="Ind104" type="SPS_2_Proxy" />
      <DO name="Ind105" type="SPS_2_Proxy" />
      <DO name="Ind106" type="SPS_2_Proxy" />
      <DO name="Ind107" type="SPS_2_Proxy" />
      <DO name="Ind108" type="SPS_2_Proxy" />
      <DO name="Ind109" type="SPS_2_Proxy" />
      <DO name="Ind110" type="SPS_2_Proxy" />
      <DO name="Ind111" type="SPS_2_Proxy" />
      <DO name="Ind112" type="SPS_2_Proxy" />
      <DO name="Ind113" type="SPS_2_Proxy" />
      <DO name="Ind114" type="SPS_2_Proxy" />
      <DO name="Ind115" type="SPS_2_Proxy" />
      <DO name="Ind116" type="SPS_2_Proxy" />
      <DO name="Ind117" type="SPS_2_Proxy" />
      <DO name="Ind118" type="SPS_2_Proxy" />
      <DO name="Ind119" type="SPS_2_Proxy" />
      <DO name="Ind120" type="SPS_2_Proxy" />
      <DO name="Ind121" type="SPS_2_Proxy" />
      <DO name="Ind122" type="SPS_2_Proxy" />
      <DO name="Ind123" type="SPS_2_Proxy" />
      <DO name="Ind124" type="SPS_2_Proxy" />
      <DO name="Ind125" type="SPS_2_Proxy" />
      <DO name="Ind126" type="SPS_2_Proxy" />
      <DO name="Ind127" type="SPS_2_Proxy" />
      <DO name="Ind128" type="SPS_2_Proxy" />
    </LNodeType>
    <LNodeType id="GGIO10" lnClass="GGIO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Ind1" type="SPS_2_Proxy" />
      <DO name="Ind2" type="SPS_2_Proxy" />
      <DO name="Ind3" type="SPS_2_Proxy" />
      <DO name="Ind4" type="SPS_2_Proxy" />
      <DO name="Ind5" type="SPS_2_Proxy" />
      <DO name="Ind6" type="SPS_2_Proxy" />
      <DO name="Ind7" type="SPS_2_Proxy" />
      <DO name="Ind8" type="SPS_2_Proxy" />
      <DO name="Ind9" type="SPS_2_Proxy" />
      <DO name="Ind10" type="SPS_2_Proxy" />
      <DO name="Ind11" type="SPS_2_Proxy" />
      <DO name="Ind12" type="SPS_2_Proxy" />
      <DO name="Ind13" type="SPS_2_Proxy" />
      <DO name="Ind14" type="SPS_2_Proxy" />
      <DO name="Ind15" type="SPS_2_Proxy" />
      <DO name="Ind16" type="SPS_2_Proxy" />
      <DO name="Ind17" type="SPS_2_Proxy" />
      <DO name="Ind18" type="SPS_2_Proxy" />
      <DO name="Ind19" type="SPS_2_Proxy" />
      <DO name="Ind20" type="SPS_2_Proxy" />
      <DO name="Ind21" type="SPS_2_Proxy" />
      <DO name="Ind22" type="SPS_2_Proxy" />
      <DO name="Ind23" type="SPS_2_Proxy" />
      <DO name="Ind24" type="SPS_2_Proxy" />
      <DO name="Ind25" type="SPS_2_Proxy" />
      <DO name="Ind26" type="SPS_2_Proxy" />
      <DO name="Ind27" type="SPS_2_Proxy" />
      <DO name="Ind28" type="SPS_2_Proxy" />
      <DO name="Ind29" type="SPS_2_Proxy" />
      <DO name="Ind30" type="SPS_2_Proxy" />
      <DO name="Ind31" type="SPS_2_Proxy" />
      <DO name="Ind32" type="SPS_2_Proxy" />
      <DO name="Ind33" type="SPS_2_Proxy" />
      <DO name="Ind34" type="SPS_2_Proxy" />
      <DO name="Ind35" type="SPS_2_Proxy" />
      <DO name="Ind36" type="SPS_2_Proxy" />
      <DO name="Ind37" type="SPS_2_Proxy" />
      <DO name="Ind38" type="SPS_2_Proxy" />
      <DO name="Ind39" type="SPS_2_Proxy" />
      <DO name="Ind40" type="SPS_2_Proxy" />
      <DO name="Ind41" type="SPS_2_Proxy" />
      <DO name="Ind42" type="SPS_2_Proxy" />
      <DO name="Ind43" type="SPS_2_Proxy" />
      <DO name="Ind44" type="SPS_2_Proxy" />
      <DO name="Ind45" type="SPS_2_Proxy" />
      <DO name="Ind46" type="SPS_2_Proxy" />
      <DO name="Ind47" type="SPS_2_Proxy" />
      <DO name="Ind48" type="SPS_2_Proxy" />
    </LNodeType>
    <LNodeType id="GGIO11" lnClass="GGIO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Ind1" type="SPS_2_Proxy" />
      <DO name="Ind2" type="SPS_2_Proxy" />
      <DO name="Ind3" type="SPS_2_Proxy" />
      <DO name="Ind4" type="SPS_2_Proxy" />
      <DO name="Ind5" type="SPS_2_Proxy" />
      <DO name="Ind6" type="SPS_2_Proxy" />
      <DO name="Ind7" type="SPS_2_Proxy" />
      <DO name="Ind8" type="SPS_2_Proxy" />
      <DO name="Ind9" type="SPS_2_Proxy" />
      <DO name="Ind10" type="SPS_2_Proxy" />
      <DO name="Ind11" type="SPS_2_Proxy" />
      <DO name="Ind12" type="SPS_2_Proxy" />
      <DO name="Ind13" type="SPS_2_Proxy" />
      <DO name="Ind14" type="SPS_2_Proxy" />
      <DO name="Ind15" type="SPS_2_Proxy" />
      <DO name="Ind16" type="SPS_2_Proxy" />
      <DO name="Ind17" type="SPS_2_Proxy" />
      <DO name="Ind18" type="SPS_2_Proxy" />
      <DO name="Ind19" type="SPS_2_Proxy" />
      <DO name="Ind20" type="SPS_2_Proxy" />
      <DO name="Ind21" type="SPS_2_Proxy" />
      <DO name="Ind22" type="SPS_2_Proxy" />
      <DO name="Ind23" type="SPS_2_Proxy" />
      <DO name="Ind24" type="SPS_2_Proxy" />
      <DO name="Ind25" type="SPS_2_Proxy" />
      <DO name="Ind26" type="SPS_2_Proxy" />
      <DO name="Ind27" type="SPS_2_Proxy" />
      <DO name="Ind28" type="SPS_2_Proxy" />
      <DO name="Ind29" type="SPS_2_Proxy" />
      <DO name="Ind30" type="SPS_2_Proxy" />
      <DO name="Ind31" type="SPS_2_Proxy" />
      <DO name="Ind32" type="SPS_2_Proxy" />
      <DO name="Ind33" type="SPS_2_Proxy" />
      <DO name="Ind34" type="SPS_2_Proxy" />
      <DO name="Ind35" type="SPS_2_Proxy" />
      <DO name="Ind36" type="SPS_2_Proxy" />
      <DO name="Ind37" type="SPS_2_Proxy" />
      <DO name="Ind38" type="SPS_2_Proxy" />
      <DO name="Ind39" type="SPS_2_Proxy" />
      <DO name="Ind40" type="SPS_2_Proxy" />
      <DO name="Ind41" type="SPS_2_Proxy" />
      <DO name="Ind42" type="SPS_2_Proxy" />
      <DO name="Ind43" type="SPS_2_Proxy" />
      <DO name="Ind44" type="SPS_2_Proxy" />
      <DO name="Ind45" type="SPS_2_Proxy" />
      <DO name="Ind46" type="SPS_2_Proxy" />
      <DO name="Ind47" type="SPS_2_Proxy" />
      <DO name="Ind48" type="SPS_2_Proxy" />
      <DO name="Ind49" type="SPS_2_Proxy" />
      <DO name="Ind50" type="SPS_2_Proxy" />
      <DO name="Ind51" type="SPS_2_Proxy" />
      <DO name="Ind52" type="SPS_2_Proxy" />
      <DO name="Ind53" type="SPS_2_Proxy" />
      <DO name="Ind54" type="SPS_2_Proxy" />
      <DO name="Ind55" type="SPS_2_Proxy" />
      <DO name="Ind56" type="SPS_2_Proxy" />
      <DO name="Ind57" type="SPS_2_Proxy" />
      <DO name="Ind58" type="SPS_2_Proxy" />
      <DO name="Ind59" type="SPS_2_Proxy" />
      <DO name="Ind60" type="SPS_2_Proxy" />
      <DO name="Ind61" type="SPS_2_Proxy" />
      <DO name="Ind62" type="SPS_2_Proxy" />
      <DO name="Ind63" type="SPS_2_Proxy" />
      <DO name="Ind64" type="SPS_2_Proxy" />
    </LNodeType>
    <LNodeType id="GGIO12" lnClass="GGIO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="IntIn1" type="INS_1_IntIn1" />
      <DO name="IntIn2" type="INS_1_IntIn1" />
      <DO name="IntIn3" type="INS_1_IntIn1" />
      <DO name="IntIn4" type="INS_1_IntIn1" />
      <DO name="IntIn5" type="INS_1_IntIn1" />
      <DO name="IntIn6" type="INS_1_IntIn1" />
      <DO name="IntIn7" type="INS_1_IntIn1" />
      <DO name="IntIn8" type="INS_1_IntIn1" />
      <DO name="IntIn9" type="INS_1_IntIn1" />
      <DO name="IntIn10" type="INS_1_IntIn1" />
      <DO name="IntIn11" type="INS_1_IntIn1" />
      <DO name="IntIn12" type="INS_1_IntIn1" />
      <DO name="IntIn13" type="INS_1_IntIn1" />
      <DO name="IntIn14" type="INS_1_IntIn1" />
      <DO name="IntIn15" type="INS_1_IntIn1" />
      <DO name="IntIn16" type="INS_1_IntIn1" />
      <DO name="IntIn17" type="INS_1_IntIn1" />
      <DO name="IntIn18" type="INS_1_IntIn1" />
      <DO name="IntIn19" type="INS_1_IntIn1" />
      <DO name="IntIn20" type="INS_1_IntIn1" />
      <DO name="IntIn21" type="INS_1_IntIn1" />
      <DO name="IntIn22" type="INS_1_IntIn1" />
      <DO name="IntIn23" type="INS_1_IntIn1" />
      <DO name="IntIn24" type="INS_1_IntIn1" />
      <DO name="IntIn25" type="INS_1_IntIn1" />
      <DO name="IntIn26" type="INS_1_IntIn1" />
      <DO name="IntIn27" type="INS_1_IntIn1" />
      <DO name="IntIn28" type="INS_1_IntIn1" />
      <DO name="IntIn29" type="INS_1_IntIn1" />
      <DO name="IntIn30" type="INS_1_IntIn1" />
      <DO name="IntIn31" type="INS_1_IntIn1" />
      <DO name="IntIn32" type="INS_1_IntIn1" />
    </LNodeType>
    <LNodeType id="GGIO13" lnClass="GGIO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="AnIn1" type="MV_2_CtlV" />
      <DO name="AnIn2" type="MV_2_CtlV" />
      <DO name="AnIn3" type="MV_2_CtlV" />
      <DO name="AnIn4" type="MV_2_CtlV" />
      <DO name="AnIn5" type="MV_2_CtlV" />
      <DO name="AnIn6" type="MV_2_CtlV" />
      <DO name="AnIn7" type="MV_2_CtlV" />
      <DO name="AnIn8" type="MV_2_CtlV" />
      <DO name="AnIn9" type="MV_2_CtlV" />
      <DO name="AnIn10" type="MV_2_CtlV" />
      <DO name="AnIn11" type="MV_2_CtlV" />
      <DO name="AnIn12" type="MV_2_CtlV" />
      <DO name="AnIn13" type="MV_2_CtlV" />
      <DO name="AnIn14" type="MV_2_CtlV" />
      <DO name="AnIn15" type="MV_2_CtlV" />
      <DO name="AnIn16" type="MV_2_CtlV" />
      <DO name="AnIn17" type="MV_2_CtlV" />
      <DO name="AnIn18" type="MV_2_CtlV" />
      <DO name="AnIn19" type="MV_2_CtlV" />
      <DO name="AnIn20" type="MV_2_CtlV" />
      <DO name="AnIn21" type="MV_2_CtlV" />
      <DO name="AnIn22" type="MV_2_CtlV" />
      <DO name="AnIn23" type="MV_2_CtlV" />
      <DO name="AnIn24" type="MV_2_CtlV" />
      <DO name="AnIn25" type="MV_2_CtlV" />
      <DO name="AnIn26" type="MV_2_CtlV" />
      <DO name="AnIn27" type="MV_2_CtlV" />
      <DO name="AnIn28" type="MV_2_CtlV" />
      <DO name="AnIn29" type="MV_2_CtlV" />
      <DO name="AnIn30" type="MV_2_CtlV" />
      <DO name="AnIn31" type="MV_2_CtlV" />
      <DO name="AnIn32" type="MV_2_CtlV" />
    </LNodeType>
    <LNodeType id="GGIO14" lnClass="GGIO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="AnIn1" type="MV_2_CtlV" />
      <DO name="AnIn2" type="MV_2_CtlV" />
      <DO name="AnIn3" type="MV_2_CtlV" />
      <DO name="AnIn4" type="MV_2_CtlV" />
      <DO name="AnIn5" type="MV_2_CtlV" />
      <DO name="AnIn6" type="MV_2_CtlV" />
      <DO name="AnIn7" type="MV_2_CtlV" />
      <DO name="AnIn8" type="MV_2_CtlV" />
      <DO name="AnIn9" type="MV_2_CtlV" />
      <DO name="AnIn10" type="MV_2_CtlV" />
      <DO name="AnIn11" type="MV_2_CtlV" />
      <DO name="AnIn12" type="MV_2_CtlV" />
      <DO name="AnIn13" type="MV_2_CtlV" />
      <DO name="AnIn14" type="MV_2_CtlV" />
      <DO name="AnIn15" type="MV_2_CtlV" />
      <DO name="AnIn16" type="MV_2_CtlV" />
    </LNodeType>
    <LNodeType id="GGIO15" lnClass="GGIO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Alm1" type="SPS_2_Proxy" />
      <DO name="Alm2" type="SPS_2_Proxy" />
      <DO name="Alm3" type="SPS_2_Proxy" />
      <DO name="Alm4" type="SPS_2_Proxy" />
      <DO name="Alm5" type="SPS_2_Proxy" />
      <DO name="Alm6" type="SPS_2_Proxy" />
      <DO name="Alm7" type="SPS_2_Proxy" />
      <DO name="Alm8" type="SPS_2_Proxy" />
      <DO name="Alm9" type="SPS_2_Proxy" />
      <DO name="Alm10" type="SPS_2_Proxy" />
      <DO name="Alm11" type="SPS_2_Proxy" />
      <DO name="Alm12" type="SPS_2_Proxy" />
      <DO name="Alm13" type="SPS_2_Proxy" />
      <DO name="Alm14" type="SPS_2_Proxy" />
      <DO name="Alm15" type="SPS_2_Proxy" />
      <DO name="Alm16" type="SPS_2_Proxy" />
      <DO name="Alm17" type="SPS_2_Proxy" />
      <DO name="Alm18" type="SPS_2_Proxy" />
      <DO name="Alm19" type="SPS_2_Proxy" />
      <DO name="Alm20" type="SPS_2_Proxy" />
      <DO name="Alm21" type="SPS_2_Proxy" />
      <DO name="Alm22" type="SPS_2_Proxy" />
      <DO name="Alm23" type="SPS_2_Proxy" />
      <DO name="Alm24" type="SPS_2_Proxy" />
      <DO name="Alm25" type="SPS_2_Proxy" />
      <DO name="Alm26" type="SPS_2_Proxy" />
      <DO name="Alm27" type="SPS_2_Proxy" />
      <DO name="Alm28" type="SPS_2_Proxy" />
      <DO name="Alm29" type="SPS_2_Proxy" />
      <DO name="Alm30" type="SPS_2_Proxy" />
      <DO name="Alm31" type="SPS_2_Proxy" />
      <DO name="Alm32" type="SPS_2_Proxy" />
      <DO name="Alm33" type="SPS_2_Proxy" />
      <DO name="Alm34" type="SPS_2_Proxy" />
      <DO name="Alm35" type="SPS_2_Proxy" />
      <DO name="Alm36" type="SPS_2_Proxy" />
      <DO name="Alm37" type="SPS_2_Proxy" />
      <DO name="Alm38" type="SPS_2_Proxy" />
      <DO name="Alm39" type="SPS_2_Proxy" />
      <DO name="Alm40" type="SPS_2_Proxy" />
      <DO name="Alm41" type="SPS_2_Proxy" />
      <DO name="Alm42" type="SPS_2_Proxy" />
      <DO name="Alm43" type="SPS_2_Proxy" />
      <DO name="Alm44" type="SPS_2_Proxy" />
      <DO name="Alm45" type="SPS_2_Proxy" />
      <DO name="Alm46" type="SPS_2_Proxy" />
      <DO name="Alm47" type="SPS_2_Proxy" />
      <DO name="Alm48" type="SPS_2_Proxy" />
      <DO name="Alm49" type="SPS_2_Proxy" />
      <DO name="Alm50" type="SPS_2_Proxy" />
      <DO name="Alm51" type="SPS_2_Proxy" />
      <DO name="Alm52" type="SPS_2_Proxy" />
      <DO name="Alm53" type="SPS_2_Proxy" />
      <DO name="Alm54" type="SPS_2_Proxy" />
      <DO name="Alm55" type="SPS_2_Proxy" />
      <DO name="Alm56" type="SPS_2_Proxy" />
      <DO name="Alm57" type="SPS_2_Proxy" />
      <DO name="Alm58" type="SPS_2_Proxy" />
      <DO name="Alm59" type="SPS_2_Proxy" />
      <DO name="Alm60" type="SPS_2_Proxy" />
      <DO name="Alm61" type="SPS_2_Proxy" />
      <DO name="Alm62" type="SPS_2_Proxy" />
      <DO name="Alm63" type="SPS_2_Proxy" />
      <DO name="Alm64" type="SPS_2_Proxy" />
    </LNodeType>
    <LNodeType id="GGIO16" lnClass="GGIO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Ind1" type="SPS_2_Proxy" />
      <DO name="Ind2" type="SPS_2_Proxy" />
      <DO name="Ind3" type="SPS_2_Proxy" />
      <DO name="Ind4" type="SPS_2_Proxy" />
      <DO name="Ind5" type="SPS_2_Proxy" />
      <DO name="Ind6" type="SPS_2_Proxy" />
      <DO name="Ind7" type="SPS_2_Proxy" />
      <DO name="Ind8" type="SPS_2_Proxy" />
      <DO name="Ind9" type="SPS_2_Proxy" />
      <DO name="Ind10" type="SPS_2_Proxy" />
      <DO name="Ind11" type="SPS_2_Proxy" />
      <DO name="Ind12" type="SPS_2_Proxy" />
      <DO name="Ind13" type="SPS_2_Proxy" />
      <DO name="Ind14" type="SPS_2_Proxy" />
      <DO name="Ind15" type="SPS_2_Proxy" />
      <DO name="Ind16" type="SPS_2_Proxy" />
      <DO name="Ind17" type="SPS_2_Proxy" />
      <DO name="Ind18" type="SPS_2_Proxy" />
      <DO name="Ind19" type="SPS_2_Proxy" />
      <DO name="Ind20" type="SPS_2_Proxy" />
      <DO name="Ind21" type="SPS_2_Proxy" />
      <DO name="Ind22" type="SPS_2_Proxy" />
      <DO name="Ind23" type="SPS_2_Proxy" />
      <DO name="Ind24" type="SPS_2_Proxy" />
      <DO name="Ind25" type="SPS_2_Proxy" />
      <DO name="Ind26" type="SPS_2_Proxy" />
      <DO name="Ind27" type="SPS_2_Proxy" />
      <DO name="Ind28" type="SPS_2_Proxy" />
      <DO name="Ind29" type="SPS_2_Proxy" />
      <DO name="Ind30" type="SPS_2_Proxy" />
      <DO name="Ind31" type="SPS_2_Proxy" />
      <DO name="Ind32" type="SPS_2_Proxy" />
      <DO name="Ind33" type="SPS_2_Proxy" />
      <DO name="Ind34" type="SPS_2_Proxy" />
      <DO name="Ind35" type="SPS_2_Proxy" />
      <DO name="Ind36" type="SPS_2_Proxy" />
      <DO name="Ind37" type="SPS_2_Proxy" />
      <DO name="Ind38" type="SPS_2_Proxy" />
      <DO name="Ind39" type="SPS_2_Proxy" />
      <DO name="Ind40" type="SPS_2_Proxy" />
      <DO name="Ind41" type="SPS_2_Proxy" />
      <DO name="Ind42" type="SPS_2_Proxy" />
      <DO name="Ind43" type="SPS_2_Proxy" />
      <DO name="Ind44" type="SPS_2_Proxy" />
      <DO name="Ind45" type="SPS_2_Proxy" />
      <DO name="Ind46" type="SPS_2_Proxy" />
      <DO name="Ind47" type="SPS_2_Proxy" />
      <DO name="Ind48" type="SPS_2_Proxy" />
      <DO name="Ind49" type="SPS_2_Proxy" />
      <DO name="Ind50" type="SPS_2_Proxy" />
      <DO name="AnIn1" type="MV_1_LodA" />
      <DO name="AnIn2" type="MV_1_LodA" />
      <DO name="AnIn3" type="MV_1_LodA" />
      <DO name="AnIn4" type="MV_1_LodA" />
      <DO name="AnIn5" type="MV_1_LodA" />
      <DO name="AnIn6" type="MV_1_LodA" />
      <DO name="AnIn7" type="MV_1_LodA" />
      <DO name="AnIn8" type="MV_1_LodA" />
      <DO name="AnIn9" type="MV_1_LodA" />
      <DO name="AnIn10" type="MV_1_LodA" />
      <DO name="AnIn11" type="MV_1_LodA" />
      <DO name="AnIn12" type="MV_1_LodA" />
      <DO name="AnIn13" type="MV_1_LodA" />
      <DO name="AnIn14" type="MV_1_LodA" />
      <DO name="AnIn15" type="MV_1_LodA" />
      <DO name="AnIn16" type="MV_1_LodA" />
      <DO name="AnIn17" type="MV_1_LodA" />
      <DO name="AnIn18" type="MV_1_LodA" />
      <DO name="AnIn19" type="MV_1_LodA" />
      <DO name="AnIn20" type="MV_1_LodA" />
      <DO name="AnIn21" type="MV_1_LodA" />
      <DO name="AnIn22" type="MV_1_LodA" />
      <DO name="AnIn23" type="MV_1_LodA" />
      <DO name="AnIn24" type="MV_1_LodA" />
      <DO name="AnIn25" type="MV_1_LodA" />
      <DO name="AnIn26" type="MV_1_LodA" />
      <DO name="AnIn27" type="MV_1_LodA" />
      <DO name="AnIn28" type="MV_1_LodA" />
      <DO name="AnIn29" type="MV_1_LodA" />
      <DO name="AnIn30" type="MV_1_LodA" />
      <DO name="AnIn31" type="MV_1_LodA" />
      <DO name="AnIn32" type="MV_1_LodA" />
      <DO name="AnIn33" type="MV_1_LodA" />
      <DO name="AnIn34" type="MV_1_LodA" />
      <DO name="AnIn35" type="MV_1_LodA" />
      <DO name="AnIn36" type="MV_1_LodA" />
      <DO name="AnIn37" type="MV_1_LodA" />
      <DO name="AnIn38" type="MV_1_LodA" />
      <DO name="AnIn39" type="MV_1_LodA" />
      <DO name="AnIn40" type="MV_1_LodA" />
      <DO name="AnIn41" type="MV_1_LodA" />
      <DO name="AnIn42" type="MV_1_LodA" />
      <DO name="AnIn43" type="MV_1_LodA" />
      <DO name="AnIn44" type="MV_1_LodA" />
      <DO name="AnIn45" type="MV_1_LodA" />
      <DO name="AnIn46" type="MV_1_LodA" />
      <DO name="AnIn47" type="MV_1_LodA" />
      <DO name="AnIn48" type="MV_1_LodA" />
      <DO name="AnIn49" type="MV_1_LodA" />
      <DO name="AnIn50" type="MV_1_LodA" />
    </LNodeType>
    <LNodeType id="LGOS2" lnClass="LGOS">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="NdsCom" type="SPS_2_Proxy" />
      <DO name="St" type="SPS_2_Proxy" />
      <DO name="SimSt" type="SPS_2_Proxy" />
      <DO name="LastStNum" type="INS_2_HiTapPos" />
      <DO name="ConfRevNum" type="INS_2_HiTapPos" />
      <DO name="GoCBRef" type="ORG_2_GoCBRef" />
    </LNodeType>
    <LNodeType id="LTMS2" lnClass="LTMS">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="TmAcc" type="INS_2_HiTapPos" />
      <DO name="TmSrc" type="VSS_1_TmSrc" />
      <DO name="TmSyn" type="ENS_1_TmSyn" />
      <DO name="TmChSt1" type="SPS_2_Proxy" />
      <DO name="TmSrcSet1" type="VSG_1_TmSrcSet1" />
      <DO name="TmChSt2" type="SPS_2_Proxy" />
      <DO name="TmSrcSet2" type="VSG_1_TmSrcSet1" />
    </LNodeType>
    <LNodeType id="LTIM2" lnClass="LTIM">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="TmDT" type="SPS_2_Proxy" />
      <DO name="TmOfsTmm" type="ING_1_TmOfsTmm" />
      <DO name="TmUseDT" type="SPG_1_MltLev" />
      <DO name="StrWeekDay" type="ENG_1_StrWeekDay" />
    </LNodeType>
    <LNodeType id="LLN03" lnClass="LLN0">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_3_NamPlt" />
      <DO name="LocKey" type="SPS_2_LocKey" />
      <DO name="Loc" type="SPS_2_LocKey" />
      <DO name="LocSta" type="SPC_2_LocSta" />
      <DO name="Diag" type="SPC_2_LocSta" />
      <DO name="LEDRs" type="SPC_2_LocSta" />
      <DO name="MltLev" type="SPG_1_MltLev" />
    </LNodeType>
    <LNodeType id="LPHD3" lnClass="LPHD">
      <DO name="PhyNam" type="DPL_2_PhyNam" />
      <DO name="PhyHealth" type="ENS_2_PhyHealth" />
      <DO name="Proxy" type="SPS_2_Proxy" />
      <DO name="Sim" type="SPC_2_LocSta" />
    </LNodeType>
    <LNodeType id="CSWI9" lnClass="CSWI">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="CmdBlk" type="SPC_2_CmdBlk" />
      <DO name="LocKey" type="SPS_2_LocKey" />
      <DO name="Loc" type="SPS_2_Proxy" />
      <DO name="LocSta" type="SPC_2_CmdBlk" />
      <DO name="Pos" type="DPC_1_Pos" />
      <DO name="PosA" type="DPC_1_Pos" />
      <DO name="PosB" type="DPC_1_Pos" />
      <DO name="PosC" type="DPC_1_Pos" />
    </LNodeType>
    <LNodeType id="CSWI10" lnClass="CSWI">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="CmdBlk" type="SPC_2_CmdBlk" />
      <DO name="LocKey" type="SPS_2_LocKey" />
      <DO name="Loc" type="SPS_2_Proxy" />
      <DO name="LocSta" type="SPC_2_CmdBlk" />
      <DO name="Pos" type="DPC_1_Pos" />
    </LNodeType>
    <LNodeType id="CSWI11" lnClass="CSWI">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="CmdBlk" type="SPC_2_CmdBlk" />
      <DO name="LocKey" type="SPS_2_LocKey" />
      <DO name="Loc" type="SPS_2_Proxy" />
      <DO name="LocSta" type="SPC_2_CmdBlk" />
      <DO name="Pos" type="DPC_1_Pos" />
    </LNodeType>
    <LNodeType id="CSWI12" lnClass="CSWI">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="CmdBlk" type="SPC_2_CmdBlk" />
      <DO name="LocKey" type="SPS_2_LocKey" />
      <DO name="Loc" type="SPS_2_Proxy" />
      <DO name="LocSta" type="SPC_2_CmdBlk" />
      <DO name="Pos" type="DPC_1_Pos" />
    </LNodeType>
    <LNodeType id="CILO9" lnClass="CILO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="EnaOpn" type="SPS_2_Proxy" />
      <DO name="EnaCls" type="SPS_2_Proxy" />
    </LNodeType>
    <LNodeType id="CILO10" lnClass="CILO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="EnaOpn" type="SPS_2_Proxy" />
      <DO name="EnaCls" type="SPS_2_Proxy" />
    </LNodeType>
    <LNodeType id="CILO11" lnClass="CILO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="EnaOpn" type="SPS_2_Proxy" />
      <DO name="EnaCls" type="SPS_2_Proxy" />
    </LNodeType>
    <LNodeType id="CILO12" lnClass="CILO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="EnaOpn" type="SPS_2_Proxy" />
      <DO name="EnaCls" type="SPS_2_Proxy" />
    </LNodeType>
    <LNodeType id="ATCC3" lnClass="ATCC">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Loc" type="SPS_2_Proxy" />
      <DO name="HiTapPos" type="INS_2_HiTapPos" />
      <DO name="LoTapPos" type="INS_2_HiTapPos" />
      <DO name="TapOpR" type="SPS_2_Proxy" />
      <DO name="TapOpL" type="SPS_2_Proxy" />
      <DO name="TapOpStop" type="SPS_2_Proxy" />
      <DO name="TapOpErr" type="SPS_2_Proxy" />
      <DO name="LTCBlkVLo" type="SPS_2_LTCBlkVLo" />
      <DO name="LTCBlkVHi" type="SPS_2_LTCBlkVLo" />
      <DO name="LTCBlkAHi" type="SPS_2_LTCBlkVLo" />
      <DO name="EndPosR" type="SPS_2_Proxy" />
      <DO name="EndPosL" type="SPS_2_Proxy" />
      <DO name="CtlV" type="MV_2_CtlV" />
      <DO name="LodA" type="MV_1_LodA" />
      <DO name="TapChg" type="BSC_1_TapChg" />
      <DO name="ParOp" type="SPC_1_ParOp" />
      <DO name="Auto" type="SPC_2_Auto" />
      <DO name="BndCtr" type="ASG_2_BndCtr" />
      <DO name="BndWid" type="ASG_2_BndCtr" />
      <DO name="CtlDlTmms" type="ING_2_CtlDlTmms" />
      <DO name="LDCR" type="ASG_2_BndCtr" />
      <DO name="LDCX" type="ASG_2_BndCtr" />
      <DO name="BlkLV" type="ASG_2_BndCtr" />
      <DO name="BlkRV" type="ASG_2_BndCtr" />
      <DO name="BlkVLo" type="ASG_2_BndCtr" />
      <DO name="BlkVHi" type="ASG_2_BndCtr" />
      <DO name="LimLodA" type="ASG_2_BndCtr" />
      <DO name="LDC" type="SPG_1_MltLev" />
      <DO name="ParTraMod" type="ENG_1_ParTraMod" />
      <DO name="TmDlChr" type="SPG_1_MltLev" />
      <DO name="LDCZ" type="ASG_2_BndCtr" />
      <DO name="TapBlkR" type="ING_2_CtlDlTmms" />
      <DO name="TapBlkL" type="ING_2_CtlDlTmms" />
    </LNodeType>
    <LNodeType id="MMXU3" lnClass="MMXU">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="TotW" type="MV_2_CtlV" />
      <DO name="TotVAr" type="MV_2_CtlV" />
      <DO name="TotVA" type="MV_2_CtlV" />
      <DO name="TotPF" type="MV_2_CtlV" />
      <DO name="Hz" type="MV_2_CtlV" />
      <DO name="PPV" type="DEL_2_PPV" />
      <DO name="PhV" type="WYE_2_PhV" />
      <DO name="A" type="WYE_2_PhV" />
      <DO name="W" type="WYE_2_PhV" />
      <DO name="VAr" type="WYE_2_PhV" />
      <DO name="VA" type="WYE_2_PhV" />
      <DO name="PF" type="WYE_2_PhV" />
    </LNodeType>
    <LNodeType id="MMXN3" lnClass="MMXN">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Vol" type="MV_2_CtlV" />
      <DO name="Hz" type="MV_2_CtlV" />
    </LNodeType>
    <LNodeType id="PTOC5" lnClass="PTOC">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Str" type="ACD_3_Str" />
      <DO name="Op" type="ACT_3_Op" />
      <DO name="TmACrv" type="CURVE_2_TmACrv" />
      <DO name="StrVal" type="ASG_2_BndCtr" />
      <DO name="TmMult" type="ASG_2_BndCtr" />
      <DO name="OpDlTmms" type="ING_2_CtlDlTmms" />
      <DO name="DirMod" type="ENG_2_DirMod" />
    </LNodeType>
    <LNodeType id="PTOC6" lnClass="PTOC">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Str" type="ACD_4_Str" />
      <DO name="Op" type="ACT_4_Op" />
      <DO name="TmACrv" type="CURVE_2_TmACrv" />
      <DO name="StrVal" type="ASG_2_BndCtr" />
      <DO name="TmMult" type="ASG_2_BndCtr" />
      <DO name="OpDlTmms" type="ING_2_CtlDlTmms" />
      <DO name="DirMod" type="ENG_2_DirMod" />
    </LNodeType>
    <LNodeType id="PIOC5" lnClass="PIOC">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Str" type="ACD_3_Str" />
      <DO name="Op" type="ACT_3_Op" />
      <DO name="StrVal" type="ASG_2_BndCtr" />
    </LNodeType>
    <LNodeType id="PTUF3" lnClass="PTUF">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Str" type="ACD_4_Str" />
      <DO name="Op" type="ACT_4_Op" />
      <DO name="BlkV" type="SPS_2_Proxy" />
      <DO name="StrVal" type="ASG_2_BndCtr" />
      <DO name="BlkVal" type="ASG_2_BndCtr" />
      <DO name="OpDlTmms" type="ING_2_CtlDlTmms" />
    </LNodeType>
    <LNodeType id="PTUV3" lnClass="PTUV">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Str" type="ACD_4_Str" />
      <DO name="Op" type="ACT_4_Op" />
      <DO name="TmVCrv" type="CURVE_2_TmACrv" />
      <DO name="StrVal" type="ASG_2_BndCtr" />
      <DO name="TmMult" type="ASG_2_BndCtr" />
      <DO name="OpDlTmms" type="ING_2_CtlDlTmms" />
    </LNodeType>
    <LNodeType id="PTOV3" lnClass="PTOV">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Str" type="ACD_4_Str" />
      <DO name="Op" type="ACT_4_Op" />
      <DO name="TmVCrv" type="CURVE_2_TmACrv" />
      <DO name="StrVal" type="ASG_2_BndCtr" />
      <DO name="TmMult" type="ASG_2_BndCtr" />
      <DO name="OpDlTmms" type="ING_2_CtlDlTmms" />
    </LNodeType>
    <LNodeType id="RBRF3" lnClass="RBRF">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Str" type="ACD_4_Str" />
      <DO name="OpEx" type="ACT_4_Op" />
      <DO name="OpIn" type="ACT_4_Op" />
      <DO name="FailMod" type="ENG_2_FailMod" />
      <DO name="FailTmms" type="ING_2_CtlDlTmms" />
      <DO name="SPlTrTmms" type="ING_2_CtlDlTmms" />
      <DO name="TPTrTmms" type="ING_2_CtlDlTmms" />
      <DO name="DetValA" type="ASG_2_BndCtr" />
      <DO name="ReTrMod" type="ENG_1_ReTrMod" />
    </LNodeType>
    <LNodeType id="PTRC3" lnClass="PTRC">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Tr" type="ACT_4_Op" />
      <DO name="Op" type="ACT_4_Op" />
      <DO name="Str" type="ACD_4_Str" />
      <DO name="TrMod" type="ENG_1_TrMod" />
      <DO name="TrPlsTmms" type="ING_2_CtlDlTmms" />
    </LNodeType>
    <LNodeType id="PIOC6" lnClass="PIOC">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Str" type="ACD_4_Str" />
      <DO name="Op" type="ACT_4_Op" />
      <DO name="StrVal" type="ASG_2_BndCtr" />
    </LNodeType>
    <LNodeType id="PFRC3" lnClass="PFRC">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Str" type="ACD_4_Str" />
      <DO name="Op" type="ACT_4_Op" />
      <DO name="BlkV" type="SPS_2_Proxy" />
      <DO name="StrVal" type="ASG_2_BndCtr" />
      <DO name="BlkVal" type="ASG_2_BndCtr" />
      <DO name="OpDlTmms" type="ING_2_CtlDlTmms" />
    </LNodeType>
    <LNodeType id="RREC3" lnClass="RREC">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="TrBeh" type="ENS_1_TrBeh" />
      <DO name="RecCyc" type="INS_2_HiTapPos" />
      <DO name="OpCls" type="ACT_2_OpCls" />
      <DO name="AutoRecSt" type="ENS_2_AutoRecSt" />
      <DO name="CycTrMod1" type="ENG_1_CycTrMod1" />
      <DO name="CycTrMod2" type="ENG_1_CycTrMod1" />
      <DO name="CycTrMod3" type="ENG_1_CycTrMod1" />
      <DO name="CycTrMod4" type="ENG_1_CycTrMod1" />
      <DO name="MaxCyc" type="ING_2_CtlDlTmms" />
      <DO name="UseCyc" type="ING_2_CtlDlTmms" />
      <DO name="MaxTmms" type="ING_2_CtlDlTmms" />
      <DO name="Rec1Tmms1" type="ING_2_CtlDlTmms" />
      <DO name="Rec1Tmms2" type="ING_2_CtlDlTmms" />
      <DO name="Rec1Tmms3" type="ING_2_CtlDlTmms" />
      <DO name="Rec1Tmms4" type="ING_2_CtlDlTmms" />
      <DO name="Rec3Tmms1" type="ING_2_CtlDlTmms" />
      <DO name="Rec3Tmms2" type="ING_2_CtlDlTmms" />
      <DO name="Rec3Tmms3" type="ING_2_CtlDlTmms" />
      <DO name="Rec3Tmms4" type="ING_2_CtlDlTmms" />
      <DO name="RclTmms" type="ING_2_CtlDlTmms" />
      <DO name="RdyTmms" type="ING_2_CtlDlTmms" />
    </LNodeType>
    <LNodeType id="RSYN3" lnClass="RSYN">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Rel" type="SPS_2_Proxy" />
      <DO name="VInd" type="SPS_2_Proxy" />
      <DO name="AngInd" type="SPS_2_Proxy" />
      <DO name="HzInd" type="SPS_2_Proxy" />
      <DO name="DifVClc" type="MV_2_CtlV" />
      <DO name="DifHzClc" type="MV_2_CtlV" />
      <DO name="DifAngClc" type="MV_2_CtlV" />
      <DO name="SynPrg" type="SPC_2_Auto" />
      <DO name="DifV" type="ASG_2_BndCtr" />
      <DO name="DifHz" type="ASG_2_BndCtr" />
      <DO name="DifAng" type="ASG_2_BndCtr" />
      <DO name="LivDeaMod" type="ENG_1_LivDeaMod" />
      <DO name="DeaLinVal" type="ASG_2_BndCtr" />
      <DO name="LivLinVal" type="ASG_2_BndCtr" />
      <DO name="DeaBusVal" type="ASG_2_BndCtr" />
      <DO name="LivBusVal" type="ASG_2_BndCtr" />
    </LNodeType>
    <LNodeType id="RDRE3" lnClass="RDRE">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="RcdMade" type="SPS_2_Proxy" />
      <DO name="FltNum" type="INS_2_HiTapPos" />
      <DO name="RcdStr" type="SPS_2_Proxy" />
      <DO name="RcdTrg" type="SPC_2_CmdBlk" />
      <DO name="MemRs" type="SPC_2_CmdBlk" />
      <DO name="MemClr" type="SPC_2_CmdBlk" />
      <DO name="TrgMod" type="ENG_1_TrgMod" />
      <DO name="LevMod" type="ENG_1_LevMod" />
      <DO name="PreTmms" type="ING_2_CtlDlTmms" />
      <DO name="PstTmms" type="ING_2_CtlDlTmms" />
      <DO name="MemFull" type="ING_2_CtlDlTmms" />
      <DO name="MaxNumRcd" type="ING_2_CtlDlTmms" />
      <DO name="ReTrgMod" type="SPG_1_MltLev" />
      <DO name="PerTrgTms" type="ING_2_CtlDlTmms" />
      <DO name="ExclTmms" type="ING_2_CtlDlTmms" />
      <DO name="RcdMod" type="ENG_1_RcdMod" />
      <DO name="StoRte" type="ING_2_CtlDlTmms" />
    </LNodeType>
    <LNodeType id="GGIO17" lnClass="GGIO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Ind1" type="SPS_2_Proxy" />
      <DO name="Ind2" type="SPS_2_Proxy" />
      <DO name="Ind3" type="SPS_2_Proxy" />
      <DO name="Ind4" type="SPS_2_Proxy" />
      <DO name="Ind5" type="SPS_2_Proxy" />
      <DO name="Ind6" type="SPS_2_Proxy" />
      <DO name="Ind7" type="SPS_2_Proxy" />
      <DO name="Ind8" type="SPS_2_Proxy" />
      <DO name="Ind9" type="SPS_2_Proxy" />
      <DO name="Ind10" type="SPS_2_Proxy" />
      <DO name="Ind11" type="SPS_2_Proxy" />
      <DO name="Ind12" type="SPS_2_Proxy" />
      <DO name="Ind13" type="SPS_2_Proxy" />
      <DO name="Ind14" type="SPS_2_Proxy" />
      <DO name="Ind15" type="SPS_2_Proxy" />
      <DO name="Ind16" type="SPS_2_Proxy" />
      <DO name="Ind17" type="SPS_2_Proxy" />
      <DO name="Ind18" type="SPS_2_Proxy" />
      <DO name="Ind19" type="SPS_2_Proxy" />
      <DO name="Ind20" type="SPS_2_Proxy" />
      <DO name="Ind21" type="SPS_2_Proxy" />
      <DO name="Ind22" type="SPS_2_Proxy" />
      <DO name="Ind23" type="SPS_2_Proxy" />
      <DO name="Ind24" type="SPS_2_Proxy" />
      <DO name="Ind25" type="SPS_2_Proxy" />
      <DO name="Ind26" type="SPS_2_Proxy" />
      <DO name="Ind27" type="SPS_2_Proxy" />
      <DO name="Ind28" type="SPS_2_Proxy" />
      <DO name="Ind29" type="SPS_2_Proxy" />
      <DO name="Ind30" type="SPS_2_Proxy" />
      <DO name="Ind31" type="SPS_2_Proxy" />
      <DO name="Ind32" type="SPS_2_Proxy" />
      <DO name="Ind33" type="SPS_2_Proxy" />
      <DO name="Ind34" type="SPS_2_Proxy" />
      <DO name="Ind35" type="SPS_2_Proxy" />
      <DO name="Ind36" type="SPS_2_Proxy" />
      <DO name="Ind37" type="SPS_2_Proxy" />
      <DO name="Ind38" type="SPS_2_Proxy" />
      <DO name="Ind39" type="SPS_2_Proxy" />
      <DO name="Ind40" type="SPS_2_Proxy" />
      <DO name="Ind41" type="SPS_2_Proxy" />
      <DO name="Ind42" type="SPS_2_Proxy" />
      <DO name="Ind43" type="SPS_2_Proxy" />
      <DO name="Ind44" type="SPS_2_Proxy" />
      <DO name="Ind45" type="SPS_2_Proxy" />
      <DO name="Ind46" type="SPS_2_Proxy" />
      <DO name="Ind47" type="SPS_2_Proxy" />
      <DO name="Ind48" type="SPS_2_Proxy" />
      <DO name="Ind49" type="SPS_2_Proxy" />
      <DO name="Ind50" type="SPS_2_Proxy" />
      <DO name="Ind51" type="SPS_2_Proxy" />
      <DO name="Ind52" type="SPS_2_Proxy" />
      <DO name="Ind53" type="SPS_2_Proxy" />
      <DO name="Ind54" type="SPS_2_Proxy" />
      <DO name="Ind55" type="SPS_2_Proxy" />
      <DO name="Ind56" type="SPS_2_Proxy" />
      <DO name="Ind57" type="SPS_2_Proxy" />
      <DO name="Ind58" type="SPS_2_Proxy" />
      <DO name="Ind59" type="SPS_2_Proxy" />
      <DO name="Ind60" type="SPS_2_Proxy" />
      <DO name="Ind61" type="SPS_2_Proxy" />
      <DO name="Ind62" type="SPS_2_Proxy" />
      <DO name="Ind63" type="SPS_2_Proxy" />
      <DO name="Ind64" type="SPS_2_Proxy" />
      <DO name="Ind65" type="SPS_2_Proxy" />
      <DO name="Ind66" type="SPS_2_Proxy" />
      <DO name="Ind67" type="SPS_2_Proxy" />
      <DO name="Ind68" type="SPS_2_Proxy" />
      <DO name="Ind69" type="SPS_2_Proxy" />
      <DO name="Ind70" type="SPS_2_Proxy" />
      <DO name="Ind71" type="SPS_2_Proxy" />
      <DO name="Ind72" type="SPS_2_Proxy" />
      <DO name="Ind73" type="SPS_2_Proxy" />
      <DO name="Ind74" type="SPS_2_Proxy" />
      <DO name="Ind75" type="SPS_2_Proxy" />
      <DO name="Ind76" type="SPS_2_Proxy" />
      <DO name="Ind77" type="SPS_2_Proxy" />
      <DO name="Ind78" type="SPS_2_Proxy" />
      <DO name="Ind79" type="SPS_2_Proxy" />
      <DO name="Ind80" type="SPS_2_Proxy" />
      <DO name="Ind81" type="SPS_2_Proxy" />
      <DO name="Ind82" type="SPS_2_Proxy" />
      <DO name="Ind83" type="SPS_2_Proxy" />
      <DO name="Ind84" type="SPS_2_Proxy" />
      <DO name="Ind85" type="SPS_2_Proxy" />
      <DO name="Ind86" type="SPS_2_Proxy" />
      <DO name="Ind87" type="SPS_2_Proxy" />
      <DO name="Ind88" type="SPS_2_Proxy" />
      <DO name="Ind89" type="SPS_2_Proxy" />
      <DO name="Ind90" type="SPS_2_Proxy" />
      <DO name="Ind91" type="SPS_2_Proxy" />
      <DO name="Ind92" type="SPS_2_Proxy" />
      <DO name="Ind93" type="SPS_2_Proxy" />
      <DO name="Ind94" type="SPS_2_Proxy" />
      <DO name="Ind95" type="SPS_2_Proxy" />
      <DO name="Ind96" type="SPS_2_Proxy" />
      <DO name="Ind97" type="SPS_2_Proxy" />
      <DO name="Ind98" type="SPS_2_Proxy" />
      <DO name="Ind99" type="SPS_2_Proxy" />
      <DO name="Ind100" type="SPS_2_Proxy" />
      <DO name="Ind101" type="SPS_2_Proxy" />
      <DO name="Ind102" type="SPS_2_Proxy" />
      <DO name="Ind103" type="SPS_2_Proxy" />
      <DO name="Ind104" type="SPS_2_Proxy" />
      <DO name="Ind105" type="SPS_2_Proxy" />
      <DO name="Ind106" type="SPS_2_Proxy" />
      <DO name="Ind107" type="SPS_2_Proxy" />
      <DO name="Ind108" type="SPS_2_Proxy" />
      <DO name="Ind109" type="SPS_2_Proxy" />
      <DO name="Ind110" type="SPS_2_Proxy" />
      <DO name="Ind111" type="SPS_2_Proxy" />
      <DO name="Ind112" type="SPS_2_Proxy" />
      <DO name="Ind113" type="SPS_2_Proxy" />
      <DO name="Ind114" type="SPS_2_Proxy" />
      <DO name="Ind115" type="SPS_2_Proxy" />
      <DO name="Ind116" type="SPS_2_Proxy" />
      <DO name="Ind117" type="SPS_2_Proxy" />
      <DO name="Ind118" type="SPS_2_Proxy" />
      <DO name="Ind119" type="SPS_2_Proxy" />
      <DO name="Ind120" type="SPS_2_Proxy" />
      <DO name="Ind121" type="SPS_2_Proxy" />
      <DO name="Ind122" type="SPS_2_Proxy" />
      <DO name="Ind123" type="SPS_2_Proxy" />
      <DO name="Ind124" type="SPS_2_Proxy" />
      <DO name="Ind125" type="SPS_2_Proxy" />
      <DO name="Ind126" type="SPS_2_Proxy" />
      <DO name="Ind127" type="SPS_2_Proxy" />
      <DO name="Ind128" type="SPS_2_Proxy" />
    </LNodeType>
    <LNodeType id="GGIO18" lnClass="GGIO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Ind1" type="SPS_2_Proxy" />
      <DO name="Ind2" type="SPS_2_Proxy" />
      <DO name="Ind3" type="SPS_2_Proxy" />
      <DO name="Ind4" type="SPS_2_Proxy" />
      <DO name="Ind5" type="SPS_2_Proxy" />
      <DO name="Ind6" type="SPS_2_Proxy" />
      <DO name="Ind7" type="SPS_2_Proxy" />
      <DO name="Ind8" type="SPS_2_Proxy" />
      <DO name="Ind9" type="SPS_2_Proxy" />
      <DO name="Ind10" type="SPS_2_Proxy" />
      <DO name="Ind11" type="SPS_2_Proxy" />
      <DO name="Ind12" type="SPS_2_Proxy" />
      <DO name="Ind13" type="SPS_2_Proxy" />
      <DO name="Ind14" type="SPS_2_Proxy" />
      <DO name="Ind15" type="SPS_2_Proxy" />
      <DO name="Ind16" type="SPS_2_Proxy" />
      <DO name="Ind17" type="SPS_2_Proxy" />
      <DO name="Ind18" type="SPS_2_Proxy" />
      <DO name="Ind19" type="SPS_2_Proxy" />
      <DO name="Ind20" type="SPS_2_Proxy" />
      <DO name="Ind21" type="SPS_2_Proxy" />
      <DO name="Ind22" type="SPS_2_Proxy" />
      <DO name="Ind23" type="SPS_2_Proxy" />
      <DO name="Ind24" type="SPS_2_Proxy" />
      <DO name="Ind25" type="SPS_2_Proxy" />
      <DO name="Ind26" type="SPS_2_Proxy" />
      <DO name="Ind27" type="SPS_2_Proxy" />
      <DO name="Ind28" type="SPS_2_Proxy" />
      <DO name="Ind29" type="SPS_2_Proxy" />
      <DO name="Ind30" type="SPS_2_Proxy" />
      <DO name="Ind31" type="SPS_2_Proxy" />
      <DO name="Ind32" type="SPS_2_Proxy" />
      <DO name="Ind33" type="SPS_2_Proxy" />
      <DO name="Ind34" type="SPS_2_Proxy" />
      <DO name="Ind35" type="SPS_2_Proxy" />
      <DO name="Ind36" type="SPS_2_Proxy" />
      <DO name="Ind37" type="SPS_2_Proxy" />
      <DO name="Ind38" type="SPS_2_Proxy" />
      <DO name="Ind39" type="SPS_2_Proxy" />
      <DO name="Ind40" type="SPS_2_Proxy" />
      <DO name="Ind41" type="SPS_2_Proxy" />
      <DO name="Ind42" type="SPS_2_Proxy" />
      <DO name="Ind43" type="SPS_2_Proxy" />
      <DO name="Ind44" type="SPS_2_Proxy" />
      <DO name="Ind45" type="SPS_2_Proxy" />
      <DO name="Ind46" type="SPS_2_Proxy" />
      <DO name="Ind47" type="SPS_2_Proxy" />
      <DO name="Ind48" type="SPS_2_Proxy" />
    </LNodeType>
    <LNodeType id="GGIO19" lnClass="GGIO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Ind1" type="SPS_2_Proxy" />
      <DO name="Ind2" type="SPS_2_Proxy" />
      <DO name="Ind3" type="SPS_2_Proxy" />
      <DO name="Ind4" type="SPS_2_Proxy" />
      <DO name="Ind5" type="SPS_2_Proxy" />
      <DO name="Ind6" type="SPS_2_Proxy" />
      <DO name="Ind7" type="SPS_2_Proxy" />
      <DO name="Ind8" type="SPS_2_Proxy" />
      <DO name="Ind9" type="SPS_2_Proxy" />
      <DO name="Ind10" type="SPS_2_Proxy" />
      <DO name="Ind11" type="SPS_2_Proxy" />
      <DO name="Ind12" type="SPS_2_Proxy" />
      <DO name="Ind13" type="SPS_2_Proxy" />
      <DO name="Ind14" type="SPS_2_Proxy" />
      <DO name="Ind15" type="SPS_2_Proxy" />
      <DO name="Ind16" type="SPS_2_Proxy" />
      <DO name="Ind17" type="SPS_2_Proxy" />
      <DO name="Ind18" type="SPS_2_Proxy" />
      <DO name="Ind19" type="SPS_2_Proxy" />
      <DO name="Ind20" type="SPS_2_Proxy" />
      <DO name="Ind21" type="SPS_2_Proxy" />
      <DO name="Ind22" type="SPS_2_Proxy" />
      <DO name="Ind23" type="SPS_2_Proxy" />
      <DO name="Ind24" type="SPS_2_Proxy" />
      <DO name="Ind25" type="SPS_2_Proxy" />
      <DO name="Ind26" type="SPS_2_Proxy" />
      <DO name="Ind27" type="SPS_2_Proxy" />
      <DO name="Ind28" type="SPS_2_Proxy" />
      <DO name="Ind29" type="SPS_2_Proxy" />
      <DO name="Ind30" type="SPS_2_Proxy" />
      <DO name="Ind31" type="SPS_2_Proxy" />
      <DO name="Ind32" type="SPS_2_Proxy" />
      <DO name="Ind33" type="SPS_2_Proxy" />
      <DO name="Ind34" type="SPS_2_Proxy" />
      <DO name="Ind35" type="SPS_2_Proxy" />
      <DO name="Ind36" type="SPS_2_Proxy" />
      <DO name="Ind37" type="SPS_2_Proxy" />
      <DO name="Ind38" type="SPS_2_Proxy" />
      <DO name="Ind39" type="SPS_2_Proxy" />
      <DO name="Ind40" type="SPS_2_Proxy" />
      <DO name="Ind41" type="SPS_2_Proxy" />
      <DO name="Ind42" type="SPS_2_Proxy" />
      <DO name="Ind43" type="SPS_2_Proxy" />
      <DO name="Ind44" type="SPS_2_Proxy" />
      <DO name="Ind45" type="SPS_2_Proxy" />
      <DO name="Ind46" type="SPS_2_Proxy" />
      <DO name="Ind47" type="SPS_2_Proxy" />
      <DO name="Ind48" type="SPS_2_Proxy" />
      <DO name="Ind49" type="SPS_2_Proxy" />
      <DO name="Ind50" type="SPS_2_Proxy" />
      <DO name="Ind51" type="SPS_2_Proxy" />
      <DO name="Ind52" type="SPS_2_Proxy" />
      <DO name="Ind53" type="SPS_2_Proxy" />
      <DO name="Ind54" type="SPS_2_Proxy" />
      <DO name="Ind55" type="SPS_2_Proxy" />
      <DO name="Ind56" type="SPS_2_Proxy" />
      <DO name="Ind57" type="SPS_2_Proxy" />
      <DO name="Ind58" type="SPS_2_Proxy" />
      <DO name="Ind59" type="SPS_2_Proxy" />
      <DO name="Ind60" type="SPS_2_Proxy" />
      <DO name="Ind61" type="SPS_2_Proxy" />
      <DO name="Ind62" type="SPS_2_Proxy" />
      <DO name="Ind63" type="SPS_2_Proxy" />
      <DO name="Ind64" type="SPS_2_Proxy" />
    </LNodeType>
    <LNodeType id="GGIO20" lnClass="GGIO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="IntIn1" type="INS_1_IntIn1" />
      <DO name="IntIn2" type="INS_1_IntIn1" />
      <DO name="IntIn3" type="INS_1_IntIn1" />
      <DO name="IntIn4" type="INS_1_IntIn1" />
      <DO name="IntIn5" type="INS_1_IntIn1" />
      <DO name="IntIn6" type="INS_1_IntIn1" />
      <DO name="IntIn7" type="INS_1_IntIn1" />
      <DO name="IntIn8" type="INS_1_IntIn1" />
      <DO name="IntIn9" type="INS_1_IntIn1" />
      <DO name="IntIn10" type="INS_1_IntIn1" />
      <DO name="IntIn11" type="INS_1_IntIn1" />
      <DO name="IntIn12" type="INS_1_IntIn1" />
      <DO name="IntIn13" type="INS_1_IntIn1" />
      <DO name="IntIn14" type="INS_1_IntIn1" />
      <DO name="IntIn15" type="INS_1_IntIn1" />
      <DO name="IntIn16" type="INS_1_IntIn1" />
      <DO name="IntIn17" type="INS_1_IntIn1" />
      <DO name="IntIn18" type="INS_1_IntIn1" />
      <DO name="IntIn19" type="INS_1_IntIn1" />
      <DO name="IntIn20" type="INS_1_IntIn1" />
      <DO name="IntIn21" type="INS_1_IntIn1" />
      <DO name="IntIn22" type="INS_1_IntIn1" />
      <DO name="IntIn23" type="INS_1_IntIn1" />
      <DO name="IntIn24" type="INS_1_IntIn1" />
      <DO name="IntIn25" type="INS_1_IntIn1" />
      <DO name="IntIn26" type="INS_1_IntIn1" />
      <DO name="IntIn27" type="INS_1_IntIn1" />
      <DO name="IntIn28" type="INS_1_IntIn1" />
      <DO name="IntIn29" type="INS_1_IntIn1" />
      <DO name="IntIn30" type="INS_1_IntIn1" />
      <DO name="IntIn31" type="INS_1_IntIn1" />
      <DO name="IntIn32" type="INS_1_IntIn1" />
    </LNodeType>
    <LNodeType id="GGIO21" lnClass="GGIO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="AnIn1" type="MV_2_CtlV" />
      <DO name="AnIn2" type="MV_2_CtlV" />
      <DO name="AnIn3" type="MV_2_CtlV" />
      <DO name="AnIn4" type="MV_2_CtlV" />
      <DO name="AnIn5" type="MV_2_CtlV" />
      <DO name="AnIn6" type="MV_2_CtlV" />
      <DO name="AnIn7" type="MV_2_CtlV" />
      <DO name="AnIn8" type="MV_2_CtlV" />
      <DO name="AnIn9" type="MV_2_CtlV" />
      <DO name="AnIn10" type="MV_2_CtlV" />
      <DO name="AnIn11" type="MV_2_CtlV" />
      <DO name="AnIn12" type="MV_2_CtlV" />
      <DO name="AnIn13" type="MV_2_CtlV" />
      <DO name="AnIn14" type="MV_2_CtlV" />
      <DO name="AnIn15" type="MV_2_CtlV" />
      <DO name="AnIn16" type="MV_2_CtlV" />
      <DO name="AnIn17" type="MV_2_CtlV" />
      <DO name="AnIn18" type="MV_2_CtlV" />
      <DO name="AnIn19" type="MV_2_CtlV" />
      <DO name="AnIn20" type="MV_2_CtlV" />
      <DO name="AnIn21" type="MV_2_CtlV" />
      <DO name="AnIn22" type="MV_2_CtlV" />
      <DO name="AnIn23" type="MV_2_CtlV" />
      <DO name="AnIn24" type="MV_2_CtlV" />
      <DO name="AnIn25" type="MV_2_CtlV" />
      <DO name="AnIn26" type="MV_2_CtlV" />
      <DO name="AnIn27" type="MV_2_CtlV" />
      <DO name="AnIn28" type="MV_2_CtlV" />
      <DO name="AnIn29" type="MV_2_CtlV" />
      <DO name="AnIn30" type="MV_2_CtlV" />
      <DO name="AnIn31" type="MV_2_CtlV" />
      <DO name="AnIn32" type="MV_2_CtlV" />
    </LNodeType>
    <LNodeType id="GGIO22" lnClass="GGIO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="AnIn1" type="MV_2_CtlV" />
      <DO name="AnIn2" type="MV_2_CtlV" />
      <DO name="AnIn3" type="MV_2_CtlV" />
      <DO name="AnIn4" type="MV_2_CtlV" />
      <DO name="AnIn5" type="MV_2_CtlV" />
      <DO name="AnIn6" type="MV_2_CtlV" />
      <DO name="AnIn7" type="MV_2_CtlV" />
      <DO name="AnIn8" type="MV_2_CtlV" />
      <DO name="AnIn9" type="MV_2_CtlV" />
      <DO name="AnIn10" type="MV_2_CtlV" />
      <DO name="AnIn11" type="MV_2_CtlV" />
      <DO name="AnIn12" type="MV_2_CtlV" />
      <DO name="AnIn13" type="MV_2_CtlV" />
      <DO name="AnIn14" type="MV_2_CtlV" />
      <DO name="AnIn15" type="MV_2_CtlV" />
      <DO name="AnIn16" type="MV_2_CtlV" />
    </LNodeType>
    <LNodeType id="GGIO23" lnClass="GGIO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Alm1" type="SPS_2_Proxy" />
      <DO name="Alm2" type="SPS_2_Proxy" />
      <DO name="Alm3" type="SPS_2_Proxy" />
      <DO name="Alm4" type="SPS_2_Proxy" />
      <DO name="Alm5" type="SPS_2_Proxy" />
      <DO name="Alm6" type="SPS_2_Proxy" />
      <DO name="Alm7" type="SPS_2_Proxy" />
      <DO name="Alm8" type="SPS_2_Proxy" />
      <DO name="Alm9" type="SPS_2_Proxy" />
      <DO name="Alm10" type="SPS_2_Proxy" />
      <DO name="Alm11" type="SPS_2_Proxy" />
      <DO name="Alm12" type="SPS_2_Proxy" />
      <DO name="Alm13" type="SPS_2_Proxy" />
      <DO name="Alm14" type="SPS_2_Proxy" />
      <DO name="Alm15" type="SPS_2_Proxy" />
      <DO name="Alm16" type="SPS_2_Proxy" />
      <DO name="Alm17" type="SPS_2_Proxy" />
      <DO name="Alm18" type="SPS_2_Proxy" />
      <DO name="Alm19" type="SPS_2_Proxy" />
      <DO name="Alm20" type="SPS_2_Proxy" />
      <DO name="Alm21" type="SPS_2_Proxy" />
      <DO name="Alm22" type="SPS_2_Proxy" />
      <DO name="Alm23" type="SPS_2_Proxy" />
      <DO name="Alm24" type="SPS_2_Proxy" />
      <DO name="Alm25" type="SPS_2_Proxy" />
      <DO name="Alm26" type="SPS_2_Proxy" />
      <DO name="Alm27" type="SPS_2_Proxy" />
      <DO name="Alm28" type="SPS_2_Proxy" />
      <DO name="Alm29" type="SPS_2_Proxy" />
      <DO name="Alm30" type="SPS_2_Proxy" />
      <DO name="Alm31" type="SPS_2_Proxy" />
      <DO name="Alm32" type="SPS_2_Proxy" />
      <DO name="Alm33" type="SPS_2_Proxy" />
      <DO name="Alm34" type="SPS_2_Proxy" />
      <DO name="Alm35" type="SPS_2_Proxy" />
      <DO name="Alm36" type="SPS_2_Proxy" />
      <DO name="Alm37" type="SPS_2_Proxy" />
      <DO name="Alm38" type="SPS_2_Proxy" />
      <DO name="Alm39" type="SPS_2_Proxy" />
      <DO name="Alm40" type="SPS_2_Proxy" />
      <DO name="Alm41" type="SPS_2_Proxy" />
      <DO name="Alm42" type="SPS_2_Proxy" />
      <DO name="Alm43" type="SPS_2_Proxy" />
      <DO name="Alm44" type="SPS_2_Proxy" />
      <DO name="Alm45" type="SPS_2_Proxy" />
      <DO name="Alm46" type="SPS_2_Proxy" />
      <DO name="Alm47" type="SPS_2_Proxy" />
      <DO name="Alm48" type="SPS_2_Proxy" />
      <DO name="Alm49" type="SPS_2_Proxy" />
      <DO name="Alm50" type="SPS_2_Proxy" />
      <DO name="Alm51" type="SPS_2_Proxy" />
      <DO name="Alm52" type="SPS_2_Proxy" />
      <DO name="Alm53" type="SPS_2_Proxy" />
      <DO name="Alm54" type="SPS_2_Proxy" />
      <DO name="Alm55" type="SPS_2_Proxy" />
      <DO name="Alm56" type="SPS_2_Proxy" />
      <DO name="Alm57" type="SPS_2_Proxy" />
      <DO name="Alm58" type="SPS_2_Proxy" />
      <DO name="Alm59" type="SPS_2_Proxy" />
      <DO name="Alm60" type="SPS_2_Proxy" />
      <DO name="Alm61" type="SPS_2_Proxy" />
      <DO name="Alm62" type="SPS_2_Proxy" />
      <DO name="Alm63" type="SPS_2_Proxy" />
      <DO name="Alm64" type="SPS_2_Proxy" />
    </LNodeType>
    <LNodeType id="GGIO24" lnClass="GGIO">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="Ind1" type="SPS_2_Proxy" />
      <DO name="Ind2" type="SPS_2_Proxy" />
      <DO name="Ind3" type="SPS_2_Proxy" />
      <DO name="Ind4" type="SPS_2_Proxy" />
      <DO name="Ind5" type="SPS_2_Proxy" />
      <DO name="Ind6" type="SPS_2_Proxy" />
      <DO name="Ind7" type="SPS_2_Proxy" />
      <DO name="Ind8" type="SPS_2_Proxy" />
      <DO name="Ind9" type="SPS_2_Proxy" />
      <DO name="Ind10" type="SPS_2_Proxy" />
      <DO name="Ind11" type="SPS_2_Proxy" />
      <DO name="Ind12" type="SPS_2_Proxy" />
      <DO name="Ind13" type="SPS_2_Proxy" />
      <DO name="Ind14" type="SPS_2_Proxy" />
      <DO name="Ind15" type="SPS_2_Proxy" />
      <DO name="Ind16" type="SPS_2_Proxy" />
      <DO name="Ind17" type="SPS_2_Proxy" />
      <DO name="Ind18" type="SPS_2_Proxy" />
      <DO name="Ind19" type="SPS_2_Proxy" />
      <DO name="Ind20" type="SPS_2_Proxy" />
      <DO name="Ind21" type="SPS_2_Proxy" />
      <DO name="Ind22" type="SPS_2_Proxy" />
      <DO name="Ind23" type="SPS_2_Proxy" />
      <DO name="Ind24" type="SPS_2_Proxy" />
      <DO name="Ind25" type="SPS_2_Proxy" />
      <DO name="Ind26" type="SPS_2_Proxy" />
      <DO name="Ind27" type="SPS_2_Proxy" />
      <DO name="Ind28" type="SPS_2_Proxy" />
      <DO name="Ind29" type="SPS_2_Proxy" />
      <DO name="Ind30" type="SPS_2_Proxy" />
      <DO name="Ind31" type="SPS_2_Proxy" />
      <DO name="Ind32" type="SPS_2_Proxy" />
      <DO name="Ind33" type="SPS_2_Proxy" />
      <DO name="Ind34" type="SPS_2_Proxy" />
      <DO name="Ind35" type="SPS_2_Proxy" />
      <DO name="Ind36" type="SPS_2_Proxy" />
      <DO name="Ind37" type="SPS_2_Proxy" />
      <DO name="Ind38" type="SPS_2_Proxy" />
      <DO name="Ind39" type="SPS_2_Proxy" />
      <DO name="Ind40" type="SPS_2_Proxy" />
      <DO name="Ind41" type="SPS_2_Proxy" />
      <DO name="Ind42" type="SPS_2_Proxy" />
      <DO name="Ind43" type="SPS_2_Proxy" />
      <DO name="Ind44" type="SPS_2_Proxy" />
      <DO name="Ind45" type="SPS_2_Proxy" />
      <DO name="Ind46" type="SPS_2_Proxy" />
      <DO name="Ind47" type="SPS_2_Proxy" />
      <DO name="Ind48" type="SPS_2_Proxy" />
      <DO name="Ind49" type="SPS_2_Proxy" />
      <DO name="Ind50" type="SPS_2_Proxy" />
      <DO name="AnIn1" type="MV_1_LodA" />
      <DO name="AnIn2" type="MV_1_LodA" />
      <DO name="AnIn3" type="MV_1_LodA" />
      <DO name="AnIn4" type="MV_1_LodA" />
      <DO name="AnIn5" type="MV_1_LodA" />
      <DO name="AnIn6" type="MV_1_LodA" />
      <DO name="AnIn7" type="MV_1_LodA" />
      <DO name="AnIn8" type="MV_1_LodA" />
      <DO name="AnIn9" type="MV_1_LodA" />
      <DO name="AnIn10" type="MV_1_LodA" />
      <DO name="AnIn11" type="MV_1_LodA" />
      <DO name="AnIn12" type="MV_1_LodA" />
      <DO name="AnIn13" type="MV_1_LodA" />
      <DO name="AnIn14" type="MV_1_LodA" />
      <DO name="AnIn15" type="MV_1_LodA" />
      <DO name="AnIn16" type="MV_1_LodA" />
      <DO name="AnIn17" type="MV_1_LodA" />
      <DO name="AnIn18" type="MV_1_LodA" />
      <DO name="AnIn19" type="MV_1_LodA" />
      <DO name="AnIn20" type="MV_1_LodA" />
      <DO name="AnIn21" type="MV_1_LodA" />
      <DO name="AnIn22" type="MV_1_LodA" />
      <DO name="AnIn23" type="MV_1_LodA" />
      <DO name="AnIn24" type="MV_1_LodA" />
      <DO name="AnIn25" type="MV_1_LodA" />
      <DO name="AnIn26" type="MV_1_LodA" />
      <DO name="AnIn27" type="MV_1_LodA" />
      <DO name="AnIn28" type="MV_1_LodA" />
      <DO name="AnIn29" type="MV_1_LodA" />
      <DO name="AnIn30" type="MV_1_LodA" />
      <DO name="AnIn31" type="MV_1_LodA" />
      <DO name="AnIn32" type="MV_1_LodA" />
      <DO name="AnIn33" type="MV_1_LodA" />
      <DO name="AnIn34" type="MV_1_LodA" />
      <DO name="AnIn35" type="MV_1_LodA" />
      <DO name="AnIn36" type="MV_1_LodA" />
      <DO name="AnIn37" type="MV_1_LodA" />
      <DO name="AnIn38" type="MV_1_LodA" />
      <DO name="AnIn39" type="MV_1_LodA" />
      <DO name="AnIn40" type="MV_1_LodA" />
      <DO name="AnIn41" type="MV_1_LodA" />
      <DO name="AnIn42" type="MV_1_LodA" />
      <DO name="AnIn43" type="MV_1_LodA" />
      <DO name="AnIn44" type="MV_1_LodA" />
      <DO name="AnIn45" type="MV_1_LodA" />
      <DO name="AnIn46" type="MV_1_LodA" />
      <DO name="AnIn47" type="MV_1_LodA" />
      <DO name="AnIn48" type="MV_1_LodA" />
      <DO name="AnIn49" type="MV_1_LodA" />
      <DO name="AnIn50" type="MV_1_LodA" />
    </LNodeType>
    <LNodeType id="LGOS3" lnClass="LGOS">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="NdsCom" type="SPS_2_Proxy" />
      <DO name="St" type="SPS_2_Proxy" />
      <DO name="SimSt" type="SPS_2_Proxy" />
      <DO name="LastStNum" type="INS_2_HiTapPos" />
      <DO name="ConfRevNum" type="INS_2_HiTapPos" />
      <DO name="GoCBRef" type="ORG_2_GoCBRef" />
    </LNodeType>
    <LNodeType id="LTMS3" lnClass="LTMS">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="TmAcc" type="INS_2_HiTapPos" />
      <DO name="TmSrc" type="VSS_1_TmSrc" />
      <DO name="TmSyn" type="ENS_1_TmSyn" />
      <DO name="TmChSt1" type="SPS_2_Proxy" />
      <DO name="TmSrcSet1" type="VSG_1_TmSrcSet1" />
      <DO name="TmChSt2" type="SPS_2_Proxy" />
      <DO name="TmSrcSet2" type="VSG_1_TmSrcSet1" />
    </LNodeType>
    <LNodeType id="LTIM3" lnClass="LTIM">
      <DO name="Mod" type="ENC_2_Mod" />
      <DO name="Beh" type="ENS_2_Beh" />
      <DO name="Health" type="ENS_2_Health" />
      <DO name="NamPlt" type="LPL_4_NamPlt" />
      <DO name="TmDT" type="SPS_2_Proxy" />
      <DO name="TmOfsTmm" type="ING_1_TmOfsTmm" />
      <DO name="TmUseDT" type="SPG_1_MltLev" />
      <DO name="StrWeekDay" type="ENG_1_StrWeekDay" />
    </LNodeType>
    <LNodeType id="MyLLN0" lnClass="LLN0">
      <DO name="Mod" type="ENC_1_Mod" />
      <DO name="Beh" type="INS_2_Beh" />
      <DO name="Health" type="INS_2_Health" />
      <DO name="NamPlt" type="LPL_3_NamPlt" />
    </LNodeType>
    <LNodeType id="MyLPHD" lnClass="LPHD">
      <DO name="PhyNam" type="DPL_1_PhyNam" />
      <DO name="PhyHealth" type="INS_2_Health" />
      <DO name="Proxy" type="SPS_2_LTCBlkVLo" />
    </LNodeType>
    <LNodeType id="MyGGIO" lnClass="GGIO">
      <DO name="Mod" type="ENC_1_Mod" />
      <DO name="Beh" type="INS_2_Beh" />
      <DO name="Health" type="INS_2_Health" />
      <DO name="NamPlt" type="LPL_3_NamPlt" />
      <DO name="Ind0" type="SPS_2_LTCBlkVLo" />
      <DO name="Ind1" type="SPS_2_LTCBlkVLo" />
      <DO name="Ind2" type="SPS_2_LTCBlkVLo" />
      <DO name="Ind3" type="SPS_2_LTCBlkVLo" />
      <DO name="Ind4" type="SPS_2_LTCBlkVLo" />
      <DO name="Ind5" type="SPS_2_LTCBlkVLo" />
      <DO name="Ind6" type="SPS_2_LTCBlkVLo" />
      <DO name="Ind7" type="SPS_2_LTCBlkVLo" />
      <DO name="Ind8" type="SPS_2_LTCBlkVLo" />
      <DO name="Ind9" type="SPS_2_LTCBlkVLo" />
    </LNodeType>
    <DOType id="ENC_2_Mod" cdc="ENC">
      <DA name="stVal" type="Mod" bType="Enum" fc="ST" dchg="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="ctlModel" type="ctlModel" bType="Enum" fc="CF" />
      <DA name="subEna" bType="BOOLEAN" fc="SV" />
      <DA name="subVal" type="Mod" bType="Enum" fc="SV" />
      <DA name="subQ" bType="Quality" fc="SV" />
      <DA name="subID" bType="VisString64" fc="SV" />
    </DOType>
    <DOType id="ENS_2_Beh" cdc="ENS">
      <DA name="stVal" type="Beh" bType="Enum" fc="ST" dchg="true" dupd="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="subEna" bType="BOOLEAN" fc="SV" />
      <DA name="subVal" type="Beh" bType="Enum" fc="SV" />
      <DA name="subQ" bType="Quality" fc="SV" />
      <DA name="subID" bType="VisString64" fc="SV" />
    </DOType>
    <DOType id="ENS_2_Health" cdc="ENS">
      <DA name="stVal" type="Health" bType="Enum" fc="ST" dchg="true" dupd="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="subEna" bType="BOOLEAN" fc="SV" />
      <DA name="subVal" type="Health" bType="Enum" fc="SV" />
      <DA name="subQ" bType="Quality" fc="SV" />
      <DA name="subID" bType="VisString64" fc="SV" />
    </DOType>
    <DOType id="LPL_3_NamPlt" cdc="LPL">
      <DA name="vendor" bType="VisString255" fc="DC" />
      <DA name="swRev" bType="VisString255" fc="DC" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="configRev" bType="VisString255" fc="DC" />
      <DA name="ldNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="SPS_2_LocKey" cdc="SPS">
      <DA name="stVal" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="subEna" bType="BOOLEAN" fc="SV" />
      <DA name="subVal" bType="BOOLEAN" fc="SV" />
      <DA name="subQ" bType="Quality" fc="SV" />
      <DA name="subID" bType="VisString64" fc="SV" />
      <DA name="blkEna" bType="BOOLEAN" fc="BL" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="SPC_2_LocSta" cdc="SPC">
      <DA name="stVal" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="stSeld" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="opRcvd" bType="BOOLEAN" fc="OR" dchg="true" />
      <DA name="opOk" bType="BOOLEAN" fc="OR" dchg="true" />
      <DA name="tOpOk" bType="Timestamp" fc="OR" />
      <DA name="subEna" bType="BOOLEAN" fc="SV" />
      <DA name="subVal" bType="BOOLEAN" fc="SV" />
      <DA name="subQ" bType="Quality" fc="SV" />
      <DA name="subID" bType="VisString64" fc="SV" />
      <DA name="blkEna" bType="BOOLEAN" fc="BL" />
      <DA name="ctlModel" type="ctlModel" bType="Enum" fc="CF" dchg="true" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="SPG_1_MltLev" cdc="SPG">
      <DA name="setVal" bType="BOOLEAN" fc="SE" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="DPL_2_PhyNam" cdc="DPL">
      <DA name="vendor" bType="VisString255" fc="DC" />
      <DA name="hwRev" bType="VisString255" fc="DC" />
      <DA name="swRev" bType="VisString255" fc="DC" />
      <DA name="serNum" bType="VisString255" fc="DC" />
      <DA name="model" bType="VisString255" fc="DC" />
    </DOType>
    <DOType id="ENS_2_PhyHealth" cdc="ENS">
      <DA name="stVal" type="PhyHealth" bType="Enum" fc="ST" dchg="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="SPS_2_Proxy" cdc="SPS">
      <DA name="stVal" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="subEna" bType="BOOLEAN" fc="SV" dchg="true" />
      <DA name="subVal" bType="BOOLEAN" fc="SV" dchg="true" />
      <DA name="subQ" bType="Quality" fc="SV" qchg="true" />
      <DA name="subID" bType="VisString64" fc="SV" dchg="true" />
    </DOType>
    <DOType id="LPL_4_NamPlt" cdc="LPL">
      <DA name="vendor" bType="VisString255" fc="DC" />
      <DA name="swRev" bType="VisString255" fc="DC" />
      <DA name="d" bType="VisString255" fc="DC" />
    </DOType>
    <DOType id="SPC_2_CmdBlk" cdc="SPC">
      <DA name="stVal" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="ctlModel" type="ctlModel" bType="Enum" fc="CF" dchg="true" />
      <DA name="SBO" bType="VisString129" fc="CO" />
      <DA name="SBOw" type="SPCSelectWithValue_1" bType="Struct" fc="CO" />
      <DA name="Oper" type="SPCSelectWithValue_1" bType="Struct" fc="CO" />
      <DA name="Cancel" type="SPCCancel_1" bType="Struct" fc="CO" />
    </DOType>
    <DOType id="DPC_1_Pos" cdc="DPC">
      <DA name="SBO" bType="VisString129" fc="CO" />
      <DA name="SBOw" type="SPCSelectWithValue_1" bType="Struct" fc="CO" />
      <DA name="Oper" type="SPCSelectWithValue_1" bType="Struct" fc="CO" />
      <DA name="Cancel" type="SPCCancel_1" bType="Struct" fc="CO" />
      <DA name="stVal" bType="Dbpos" fc="ST" dchg="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="stSeld" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="blkEna" bType="BOOLEAN" fc="BL" />
      <DA name="ctlModel" type="ctlModel" bType="Enum" fc="CF" />
      <DA name="sboTimeout" bType="INT32U" fc="CF" />
      <DA name="sboClass" type="sboClass" bType="Enum" fc="CF" />
      <DA name="operTimeout" bType="INT32U" fc="CF" />
    </DOType>
    <DOType id="INS_2_HiTapPos" cdc="INS">
      <DA name="stVal" bType="INT32" fc="ST" dchg="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="subEna" bType="BOOLEAN" fc="SV" dchg="true" />
      <DA name="subVal" bType="INT32" fc="SV" dchg="true" />
      <DA name="subQ" bType="Quality" fc="SV" qchg="true" />
      <DA name="subID" bType="VisString64" fc="SV" dchg="true" />
    </DOType>
    <DOType id="SPS_2_LTCBlkVLo" cdc="SPS">
      <DA name="stVal" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="MV_2_CtlV" cdc="MV">
      <DA name="mag" type="AnalogueValue_1" bType="Struct" fc="MX" dchg="true" />
      <DA name="q" bType="Quality" fc="MX" qchg="true" />
      <DA name="t" bType="Timestamp" fc="MX" />
      <DA name="subEna" bType="BOOLEAN" fc="SV" />
      <DA name="subMag" type="AnalogueValue_1" bType="Struct" fc="SV" />
      <DA name="subQ" bType="Quality" fc="SV" />
      <DA name="subID" bType="VisString64" fc="SV" />
      <DA name="db" bType="INT32U" fc="CF" />
      <DA name="zeroDb" bType="INT32U" fc="CF" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="MV_1_LodA" cdc="MV">
      <DA name="mag" type="AnalogueValue_2" bType="Struct" fc="MX" dchg="true" dupd="true" />
      <DA name="q" bType="Quality" fc="MX" qchg="true" />
      <DA name="t" bType="Timestamp" fc="MX" />
    </DOType>
    <DOType id="BSC_1_TapChg" cdc="BSC">
      <DA name="SBO" bType="VisString129" fc="CO" />
      <DA name="SBOw" type="BSCSelectWithValue_1" bType="Struct" fc="CO" />
      <DA name="Oper" type="BSCSelectWithValue_1" bType="Struct" fc="CO" />
      <DA name="Cancel" type="BSCCancel_1" bType="Struct" fc="CO" />
      <DA name="origin" type="Originator_2" bType="Struct" fc="ST" />
      <DA name="ctlNum" bType="INT8U" fc="ST" />
      <DA name="valWTr" type="ValWithTrans_2" bType="Struct" fc="ST" dchg="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="subEna" bType="BOOLEAN" fc="SV" />
      <DA name="subVal" type="ValWithTrans_2" bType="Struct" fc="SV" />
      <DA name="subQ" bType="Quality" fc="SV" />
      <DA name="subID" bType="VisString64" fc="SV" />
      <DA name="stSeld" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="blkEna" bType="BOOLEAN" fc="BL" />
      <DA name="persistent" bType="BOOLEAN" fc="CF" />
      <DA name="ctlModel" type="ctlModel" bType="Enum" fc="CF" />
      <DA name="sboTimeout" bType="INT32U" fc="CF" />
      <DA name="sboClass" type="sboClassEnum" bType="Enum" fc="CF" />
      <DA name="operTimeout" bType="INT32U" fc="CF" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="SPC_1_ParOp" cdc="SPC">
      <DA name="stVal" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="ctlModel" type="ctlModel" bType="Enum" fc="CF" />
      <DA name="Oper" type="SPCSelectWithValue_1" bType="Struct" fc="CO" />
    </DOType>
    <DOType id="SPC_2_Auto" cdc="SPC">
      <DA name="stVal" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="subEna" bType="BOOLEAN" fc="SV" dchg="true" />
      <DA name="subVal" bType="BOOLEAN" fc="SV" dchg="true" />
      <DA name="subQ" bType="Quality" fc="SV" qchg="true" />
      <DA name="subID" bType="VisString64" fc="SV" dchg="true" />
      <DA name="ctlModel" type="ctlModel" bType="Enum" fc="CF" />
    </DOType>
    <DOType id="ASG_2_BndCtr" cdc="ASG">
      <DA name="setMag" type="AnalogueValue_1" bType="Struct" fc="SE" />
    </DOType>
    <DOType id="ING_2_CtlDlTmms" cdc="ING">
      <DA name="setVal" bType="INT32" fc="SE" />
    </DOType>
    <DOType id="ENG_1_ParTraMod" cdc="ENG">
      <DA name="setVal" type="ParTraMod" bType="Enum" fc="SE" dchg="true" />
    </DOType>
    <DOType id="CMV_2_phsAB" cdc="CMV">
      <DA name="instCVal" type="Vector_2" bType="Struct" fc="MX" />
      <DA name="cVal" type="Vector_2" bType="Struct" fc="MX" dchg="true" dupd="true" />
      <DA name="q" bType="Quality" fc="MX" qchg="true" />
      <DA name="t" bType="Timestamp" fc="MX" />
      <DA name="subEna" bType="BOOLEAN" fc="SV" />
      <DA name="subCVal" type="Vector_2" bType="Struct" fc="SV" />
      <DA name="subQ" bType="Quality" fc="SV" />
      <DA name="subID" bType="VisString64" fc="SV" />
      <DA name="units" type="Unit_1" bType="Struct" fc="CF" />
      <DA name="db" bType="INT32U" fc="CF" />
      <DA name="dbAng" bType="INT32U" fc="CF" />
      <DA name="zeroDb" bType="INT32U" fc="CF" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="DEL_2_PPV" cdc="DEL">
      <SDO name="phsAB" type="CMV_2_phsAB" />
      <SDO name="phsBC" type="CMV_2_phsAB" />
      <SDO name="phsCA" type="CMV_2_phsAB" />
    </DOType>
    <DOType id="WYE_2_PhV" cdc="WYE">
      <SDO name="phsA" type="CMV_2_phsAB" />
      <SDO name="phsB" type="CMV_2_phsAB" />
      <SDO name="phsC" type="CMV_2_phsAB" />
      <SDO name="neut" type="CMV_2_phsAB" />
    </DOType>
    <DOType id="ACD_3_Str" cdc="ACD">
      <DA name="general" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="dirGeneral" type="dirGeneral" bType="Enum" fc="ST" dchg="true" />
      <DA name="phsA" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="dirPhsA" type="dirPhs" bType="Enum" fc="ST" dchg="true" />
      <DA name="phsB" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="dirPhsB" type="dirPhs" bType="Enum" fc="ST" dchg="true" />
      <DA name="phsC" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="dirPhsC" type="dirPhs" bType="Enum" fc="ST" dchg="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="ACT_3_Op" cdc="ACT">
      <DA name="general" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="phsA" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="phsB" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="phsC" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="CURVE_2_TmACrv" cdc="CURVE">
      <DA name="setCharact" type="setCharact" bType="Enum" fc="SE" />
    </DOType>
    <DOType id="ENG_2_DirMod" cdc="ENG">
      <DA name="setVal" type="DirMod" bType="Enum" fc="SE" />
    </DOType>
    <DOType id="ACD_4_Str" cdc="ACD">
      <DA name="general" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="dirGeneral" type="dirGeneral" bType="Enum" fc="ST" dchg="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="ACT_4_Op" cdc="ACT">
      <DA name="general" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="ENG_2_FailMod" cdc="ENG">
      <DA name="setVal" type="FailMod" bType="Enum" fc="SE" />
    </DOType>
    <DOType id="ENG_1_ReTrMod" cdc="ENG">
      <DA name="setVal" type="ReTrMod" bType="Enum" fc="SE" dchg="true" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="ENG_1_TrMod" cdc="ENG">
      <DA name="setVal" type="TrMod" bType="Enum" fc="SE" dchg="true" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="ENS_1_TrBeh" cdc="ENS">
      <DA name="stVal" type="TrBeh" bType="Enum" fc="ST" dchg="true" dupd="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="subEna" bType="BOOLEAN" fc="SV" />
      <DA name="subVal" type="TrBeh" bType="Enum" fc="SV" />
      <DA name="subQ" bType="Quality" fc="SV" />
      <DA name="subID" bType="VisString64" fc="SV" />
      <DA name="blkEna" bType="BOOLEAN" fc="BL" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="ACT_2_OpCls" cdc="ACT">
      <DA name="general" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="phsA" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="phsB" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="phsC" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="neut" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="originSrc" type="Originator_2" bType="Struct" fc="ST" />
      <DA name="operTmPhsA" bType="Timestamp" fc="ST" />
      <DA name="operTmPhsB" bType="Timestamp" fc="ST" />
      <DA name="operTmPhsC" bType="Timestamp" fc="ST" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="ENS_2_AutoRecSt" cdc="ENS">
      <DA name="stVal" type="AutoRecSt" bType="Enum" fc="ST" dchg="true" dupd="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="subEna" bType="BOOLEAN" fc="SV" />
      <DA name="subVal" type="AutoRecSt" bType="Enum" fc="SV" />
      <DA name="subQ" bType="Quality" fc="SV" />
      <DA name="subID" bType="VisString64" fc="SV" />
    </DOType>
    <DOType id="ENG_1_CycTrMod1" cdc="ENG">
      <DA name="setVal" type="CycTrMod1" bType="Enum" fc="SE" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="ENG_1_LivDeaMod" cdc="ENG">
      <DA name="setVal" type="LivDeaMod" bType="Enum" fc="SE" dchg="true" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="ENG_1_TrgMod" cdc="ENG">
      <DA name="setVal" type="TrgMod" bType="Enum" fc="SE" dchg="true" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="ENG_1_LevMod" cdc="ENG">
      <DA name="setVal" type="LevMod" bType="Enum" fc="SE" dchg="true" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="ENG_1_RcdMod" cdc="ENG">
      <DA name="setVal" type="RcdMod" bType="Enum" fc="SE" dchg="true" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="INS_1_IntIn1" cdc="INS">
      <DA name="stVal" bType="INT32" fc="ST" dchg="true" dupd="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="ORG_2_GoCBRef" cdc="ORG">
      <DA name="setSrcRef" bType="ObjRef" fc="SE" dchg="true" />
      <DA name="setTstRef" bType="ObjRef" fc="SE" dchg="true" />
      <DA name="setSrcCB" bType="ObjRef" fc="SE" dchg="true" />
      <DA name="setTstCB" bType="ObjRef" fc="SE" dchg="true" />
      <DA name="intAddr" bType="VisString255" fc="SE" dchg="true" />
      <DA name="tstEna" bType="BOOLEAN" fc="SE" dchg="true" />
      <DA name="purpose" bType="VisString255" fc="DC" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="VSS_1_TmSrc" cdc="VSS">
      <DA name="stVal" bType="VisString255" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="ENS_1_TmSyn" cdc="ENS">
      <DA name="stVal" type="TmSyn" bType="Enum" fc="ST" dchg="true" dupd="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="subEna" bType="BOOLEAN" fc="SV" />
      <DA name="subVal" type="TmSyn" bType="Enum" fc="SV" />
      <DA name="subQ" bType="Quality" fc="SV" />
      <DA name="subID" bType="VisString64" fc="SV" />
      <DA name="blkEna" bType="BOOLEAN" fc="BL" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="VSG_1_TmSrcSet1" cdc="VSG">
      <DA name="setVal" bType="VisString255" fc="SE" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="ING_1_TmOfsTmm" cdc="ING">
      <DA name="setVal" bType="INT32" fc="SE" />
      <DA name="minVal" bType="INT32" fc="CF" />
      <DA name="maxVal" bType="INT32" fc="CF" />
      <DA name="stepSize" bType="INT32U" fc="CF" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="ENG_1_StrWeekDay" cdc="ENG">
      <DA name="setVal" type="StrWeekDay" bType="Enum" fc="SE" dchg="true" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="ENC_1_Mod" cdc="ENC">
      <DA name="stVal" type="Mod" bType="Enum" fc="ST" dchg="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" dchg="true" />
      <DA name="ctlModel" type="ctlModel" bType="Enum" fc="CF" />
    </DOType>
    <DOType id="INS_2_Beh" cdc="INS">
      <DA name="stVal" type="Beh" bType="Enum" fc="ST" dchg="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="INS_2_Health" cdc="INS">
      <DA name="stVal" type="Health" bType="Enum" fc="ST" dchg="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="DPL_1_PhyNam" cdc="DPL">
      <DA name="vendor" bType="VisString255" fc="DC" />
      <DA name="hwRev" bType="VisString255" fc="DC" />
      <DA name="swRev" bType="VisString255" fc="DC" />
      <DA name="serNum" bType="VisString255" fc="DC" />
      <DA name="model" bType="VisString255" fc="DC" />
      <DA name="location" bType="VisString255" fc="DC" />
    </DOType>
    <DOType id="INC_1_Mod" cdc="INC">
      <DA name="stVal" type="R40621M1_Mod" bType="Enum" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="ctlModel" type="R40621M1_ctlModel" bType="Enum" fc="CF" />
    </DOType>
    <DOType id="INS_1_Beh" cdc="INS">
      <DA name="stVal" type="R40621M1_Beh" bType="Enum" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="INS_1_Health" cdc="INS">
      <DA name="stVal" type="R40621M1_Health" bType="Enum" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="SPS_1_Alm1" cdc="SPS">
      <DA name="stVal" bType="BOOLEAN" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="d" bType="VisString255" fc="DC" />
    </DOType>
    <DOType id="SPC_1_SPCSO1" cdc="SPC">
      <DA name="SBO" bType="VisString65" fc="CO" />
      <DA name="SBOw" type="SPCSelectWithValue_1" bType="Struct" fc="CO" />
      <DA name="Oper" type="SPCSelectWithValue_1" bType="Struct" fc="CO" />
      <DA name="Cancel" type="SPCCancel_1" bType="Struct" fc="CO" />
      <DA name="bypass" type="R40621M1_Bypass" bType="Enum" fc="CO" />
      <DA name="origin" type="Originator_2" bType="Struct" fc="ST" />
      <DA name="stVal" bType="BOOLEAN" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="ctlModel" type="R40621M1_ctlModel" bType="Enum" fc="CF" />
      <DA name="sboTimeout" bType="INT32U" fc="CF" />
    </DOType>
    <DOType id="INC_1_AscMod" cdc="INC">
      <DA name="stVal" type="R40621M1_Mod" bType="Enum" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="ctlModel" type="R40621M1_ctlModel" bType="Enum" fc="CF" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="INS_1_AscBeh" cdc="INS">
      <DA name="stVal" type="R40621M1_Beh" bType="Enum" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="SPS_1_OrdRun" cdc="SPS">
      <DA name="stVal" bType="BOOLEAN" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="MV_1_TotW" cdc="MV">
      <DA name="mag" type="AnalogueValue_1" bType="Struct" fc="MX" />
      <DA name="q" bType="Quality" fc="MX" />
      <DA name="t" bType="Timestamp" fc="MX" />
      <DA name="units" type="Unit_1" bType="Struct" fc="CF" />
      <DA name="db" bType="INT32U" fc="CF" />
      <DA name="rangeC" type="R40621M1_1" bType="Struct" fc="CF" />
    </DOType>
    <DOType id="CMV_1_phsAB" cdc="CMV">
      <DA name="cVal" type="Vector_2" bType="Struct" fc="MX" />
      <DA name="q" bType="Quality" fc="MX" />
      <DA name="t" bType="Timestamp" fc="MX" />
      <DA name="units" type="Unit_1" bType="Struct" fc="CF" />
      <DA name="db" bType="INT32U" fc="CF" />
      <DA name="rangeC" type="R40621M1_1" bType="Struct" fc="CF" />
    </DOType>
    <DOType id="DEL_1_PPV" cdc="DEL">
      <SDO name="phsAB" type="CMV_1_phsAB" desc="Measurement values for Phase A to Phase B" />
      <SDO name="phsBC" type="CMV_1_phsAB" desc="Measurement values for Phase B to Phase C" />
      <SDO name="phsCA" type="CMV_1_phsAB" desc="Measurement values for Phase C to Phase A" />
    </DOType>
    <DOType id="WYE_1_PhV" cdc="WYE">
      <SDO name="phsA" type="CMV_1_phsAB" desc="Measurement values for Phase A" />
      <SDO name="phsB" type="CMV_1_phsAB" desc="Measurement values for Phase B" />
      <SDO name="phsC" type="CMV_1_phsAB" desc="Measurement values for Phase C" />
      <SDO name="neut" type="CMV_1_phsAB" desc="Measurement values for neutral input" />
      <DA name="d" bType="VisString255" fc="DC" />
    </DOType>
    <DOType id="CMV_1_phsA" cdc="CMV">
      <DA name="cVal" type="R40621M1_Vector_Magnitude_Float_1" bType="Struct" fc="MX" />
      <DA name="q" bType="Quality" fc="MX" />
      <DA name="t" bType="Timestamp" fc="MX" />
      <DA name="units" type="Unit_1" bType="Struct" fc="CF" />
      <DA name="db" bType="INT32U" fc="CF" />
      <DA name="rangeC" type="R40621M1_1" bType="Struct" fc="CF" />
    </DOType>
    <DOType id="WYE_1_W" cdc="WYE">
      <SDO name="phsA" type="CMV_1_phsA" desc="Measurement values for Phase A" />
      <SDO name="phsB" type="CMV_1_phsA" desc="Measurement values for Phase B" />
      <SDO name="phsC" type="CMV_1_phsA" desc="Measurement values for Phase C" />
    </DOType>
    <DOType id="SEQ_1_SeqA" cdc="SEQ">
      <SDO name="c1" type="CMV_1_phsA" desc="Sequence component 1 (For semantic meaning see seqT)" />
      <SDO name="c2" type="CMV_1_phsA" desc="Sequence component 2 (For semantic meaning see seqT)" />
      <SDO name="c3" type="CMV_1_phsA" desc="Sequence component 3 (For semantic meaning see seqT)" />
      <DA name="seqT" type="R40621M1_seqT" bType="Enum" fc="MX" />
    </DOType>
    <DOType id="WYE_1_ImbA" cdc="WYE">
      <SDO name="res" type="CMV_1_phsAB" desc="Measurement values for the residual system current" />
      <DA name="d" bType="VisString255" fc="DC" />
    </DOType>
    <DOType id="MV_1_AvW" cdc="MV">
      <DA name="mag" type="AnalogueValue_1" bType="Struct" fc="MX" />
      <DA name="q" bType="Quality" fc="MX" />
      <DA name="t" bType="Timestamp" fc="MX" />
      <DA name="units" type="Unit_1" bType="Struct" fc="CF" />
      <DA name="db" bType="INT32U" fc="CF" />
      <DA name="rangeC" type="R40621M1_1" bType="Struct" fc="CF" />
      <DA name="d" bType="VisString255" fc="DC" />
    </DOType>
    <DOType id="ACD_1_Str" cdc="ACD">
      <DA name="general" bType="BOOLEAN" fc="ST" />
      <DA name="dirGeneral" type="R40621M1_dir" bType="Enum" fc="ST" />
      <DA name="phsA" bType="BOOLEAN" fc="ST" />
      <DA name="dirPhsA" type="R40621M1_dir" bType="Enum" fc="ST" />
      <DA name="phsB" bType="BOOLEAN" fc="ST" />
      <DA name="dirPhsB" type="R40621M1_dir" bType="Enum" fc="ST" />
      <DA name="phsC" bType="BOOLEAN" fc="ST" />
      <DA name="dirPhsC" type="R40621M1_dir" bType="Enum" fc="ST" />
      <DA name="neut" bType="BOOLEAN" fc="ST" />
      <DA name="dirNeut" type="R40621M1_dir" bType="Enum" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="ACT_1_Op" cdc="ACT">
      <DA name="general" bType="BOOLEAN" fc="ST" />
      <DA name="phsA" bType="BOOLEAN" fc="ST" />
      <DA name="phsB" bType="BOOLEAN" fc="ST" />
      <DA name="phsC" bType="BOOLEAN" fc="ST" />
      <DA name="neut" bType="BOOLEAN" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="ACD_2_Str" cdc="ACD">
      <DA name="general" bType="BOOLEAN" fc="ST" />
      <DA name="dirGeneral" type="R40621M1_dir" bType="Enum" fc="ST" />
      <DA name="neut" bType="BOOLEAN" fc="ST" />
      <DA name="dirNeut" type="R40621M1_dir" bType="Enum" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="ACT_2_Op" cdc="ACT">
      <DA name="general" bType="BOOLEAN" fc="ST" />
      <DA name="neut" bType="BOOLEAN" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="ACD_5_Str" cdc="ACD">
      <DA name="general" bType="BOOLEAN" fc="ST" />
      <DA name="dirGeneral" type="R40621M1_dir" bType="Enum" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="LPL_1_NamPlt" cdc="LPL">
      <DA name="vendor" bType="VisString255" fc="DC" />
      <DA name="swRev" bType="VisString255" fc="DC" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="lnNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="ACD_6_Str" cdc="ACD">
      <DA name="general" bType="BOOLEAN" fc="ST" />
      <DA name="dirGeneral" type="R40621M1_dir" bType="Enum" fc="ST" />
      <DA name="phsA" bType="BOOLEAN" fc="ST" />
      <DA name="dirPhsA" type="R40621M1_dir" bType="Enum" fc="ST" />
      <DA name="phsB" bType="BOOLEAN" fc="ST" />
      <DA name="dirPhsB" type="R40621M1_dir" bType="Enum" fc="ST" />
      <DA name="phsC" bType="BOOLEAN" fc="ST" />
      <DA name="dirPhsC" type="R40621M1_dir" bType="Enum" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="SPC_1_MTRRs" cdc="SPC">
      <DA name="SBO" bType="VisString65" fc="CO" />
      <DA name="SBOw" type="SPCSelectWithValue_1" bType="Struct" fc="CO" />
      <DA name="Oper" type="SPCSelectWithValue_1" bType="Struct" fc="CO" />
      <DA name="Cancel" type="SPCCancel_1" bType="Struct" fc="CO" />
      <DA name="bypass" type="R40621M1_Bypass" bType="Enum" fc="CO" />
      <DA name="origin" type="Originator_2" bType="Struct" fc="ST" />
      <DA name="stVal" bType="BOOLEAN" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="ctlModel" type="R40621M1_ctlModel" bType="Enum" fc="CF" />
      <DA name="sboTimeout" bType="INT32U" fc="CF" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="INS_1_AutoRecSt" cdc="INS">
      <DA name="stVal" type="R40621M1_AutoRecSt" bType="Enum" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType id="DPC_2_Pos" cdc="DPC">
      <DA name="SBO" bType="VisString65" fc="CO" />
      <DA name="SBOw" type="SPCSelectWithValue_1" bType="Struct" fc="CO" />
      <DA name="Oper" type="SPCSelectWithValue_1" bType="Struct" fc="CO" />
      <DA name="Cancel" type="SPCCancel_1" bType="Struct" fc="CO" />
      <DA name="bypass" type="R40621M1_Bypass" bType="Enum" fc="CO" />
      <DA name="origin" type="Originator_2" bType="Struct" fc="ST" />
      <DA name="stVal" bType="Dbpos" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="ctlModel" type="R40621M1_ctlModel" bType="Enum" fc="CF" />
      <DA name="sboTimeout" bType="INT32U" fc="CF" />
    </DOType>
    <DOType id="SPC_1_BlkOpn" cdc="SPC">
      <DA name="stVal" bType="BOOLEAN" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="ctlModel" type="R40621M1_ctlModel" bType="Enum" fc="CF" />
    </DOType>
    <DOType id="ORG_1_GoCBRef" cdc="ORG">
      <DA name="setSrcRef" bType="ObjRef" fc="SE" dchg="true" />
      <DA name="setTstRef" bType="ObjRef" fc="SE" dchg="true" />
      <DA name="setSrcCB" bType="ObjRef" fc="SE" dchg="true" />
      <DA name="setTstCB" bType="ObjRef" fc="SE" dchg="true" />
      <DA name="intAddr" bType="VisString255" fc="SE" dchg="true" />
      <DA name="tstEna" bType="BOOLEAN" fc="SE" dchg="true" />
      <DA name="purpose" bType="VisString255" fc="SE" />
      <DA name="d" bType="VisString255" fc="SE" />
      <DA name="cdcName" bType="VisString255" fc="SE" />
    </DOType>
    <DOType id="ORG_3_GoCBRef" cdc="ORG">
      <DA name="setSrcRef" bType="ObjRef" fc="SE" dchg="true" />
      <DA name="setTstRef" bType="ObjRef" fc="SE" dchg="true" />
      <DA name="setSrcCB" bType="ObjRef" fc="SE" dchg="true" />
      <DA name="setTstCB" bType="ObjRef" fc="SE" dchg="true" />
      <DA name="intAddr" bType="VisString255" fc="SE" dchg="true" />
      <DA name="tstEna" bType="BOOLEAN" fc="SE" dchg="true" />
      <DA name="purpose" bType="VisString255" fc="SE" />
      <DA name="d" bType="VisString255" fc="SE" />
      <DA name="cdcName" bType="VisString255" fc="SE" />
    </DOType>
    <DOType id="ORG_4_GoCBRef" cdc="ORG">
      <DA name="setSrcRef" bType="ObjRef" fc="SE" dchg="true" />
      <DA name="setTstRef" bType="ObjRef" fc="SE" dchg="true" />
      <DA name="setSrcCB" bType="ObjRef" fc="SE" dchg="true" />
      <DA name="setTstCB" bType="ObjRef" fc="SE" dchg="true" />
      <DA name="intAddr" bType="VisString255" fc="SE" dchg="true" />
      <DA name="tstEna" bType="BOOLEAN" fc="SE" dchg="true" />
      <DA name="purpose" bType="VisString255" fc="SE" />
      <DA name="d" bType="VisString255" fc="SE" />
      <DA name="cdcName" bType="VisString255" fc="SE" />
    </DOType>
    <DOType id="ORG_5_GoCBRef" cdc="ORG">
      <DA name="setSrcRef" bType="ObjRef" fc="SE" dchg="true" />
      <DA name="setTstRef" bType="ObjRef" fc="SE" dchg="true" />
      <DA name="setSrcCB" bType="ObjRef" fc="SE" dchg="true" />
      <DA name="setTstCB" bType="ObjRef" fc="SE" dchg="true" />
      <DA name="intAddr" bType="VisString255" fc="SE" dchg="true" />
      <DA name="tstEna" bType="BOOLEAN" fc="SE" dchg="true" />
      <DA name="purpose" bType="VisString255" fc="SE" />
      <DA name="d" bType="VisString255" fc="SE" />
      <DA name="cdcName" bType="VisString255" fc="SE" />
    </DOType>
    <DOType id="ORG_6_GoCBRef" cdc="ORG">
      <DA name="setSrcRef" bType="ObjRef" fc="SE" dchg="true" />
      <DA name="setTstRef" bType="ObjRef" fc="SE" dchg="true" />
      <DA name="setSrcCB" bType="ObjRef" fc="SE" dchg="true" />
      <DA name="setTstCB" bType="ObjRef" fc="SE" dchg="true" />
      <DA name="intAddr" bType="VisString255" fc="SE" dchg="true" />
      <DA name="tstEna" bType="BOOLEAN" fc="SE" dchg="true" />
      <DA name="purpose" bType="VisString255" fc="SE" />
      <DA name="d" bType="VisString255" fc="SE" />
      <DA name="cdcName" bType="VisString255" fc="SE" />
    </DOType>
    <DOType id="ORG_7_GoCBRef" cdc="ORG">
      <DA name="setSrcRef" bType="ObjRef" fc="SE" dchg="true" />
      <DA name="setTstRef" bType="ObjRef" fc="SE" dchg="true" />
      <DA name="setSrcCB" bType="ObjRef" fc="SE" dchg="true" />
      <DA name="setTstCB" bType="ObjRef" fc="SE" dchg="true" />
      <DA name="intAddr" bType="VisString255" fc="SE" dchg="true" />
      <DA name="tstEna" bType="BOOLEAN" fc="SE" dchg="true" />
      <DA name="purpose" bType="VisString255" fc="SE" />
      <DA name="d" bType="VisString255" fc="SE" />
      <DA name="cdcName" bType="VisString255" fc="SE" />
    </DOType>
    <DAType id="Originator_2">
      <BDA name="orCat" type="orCategory" bType="Enum" />
      <BDA name="orIdent" bType="Octet64" />
    </DAType>
    <DAType id="SPCSelectWithValue_1">
      <BDA name="ctlVal" bType="BOOLEAN" />
      <BDA name="origin" type="Originator_2" bType="Struct" />
      <BDA name="ctlNum" bType="INT8U" />
      <BDA name="T" bType="Timestamp" />
      <BDA name="Test" bType="BOOLEAN" />
      <BDA name="Check" bType="Check" />
    </DAType>
    <DAType id="SPCCancel_1">
      <BDA name="ctlVal" bType="BOOLEAN" />
      <BDA name="origin" type="Originator_2" bType="Struct" />
      <BDA name="ctlNum" bType="INT8U" />
      <BDA name="T" bType="Timestamp" />
      <BDA name="Test" bType="BOOLEAN" />
    </DAType>
    <DAType id="AnalogueValue_1">
      <BDA name="f" bType="FLOAT32" />
    </DAType>
    <DAType id="AnalogueValue_2">
      <BDA name="i" bType="INT32" />
      <BDA name="f" bType="FLOAT32" />
    </DAType>
    <DAType id="BSCSelectWithValue_1">
      <BDA name="ctlVal" bType="Dbpos" />
      <BDA name="origin" type="Originator_2" bType="Struct" />
      <BDA name="ctlNum" bType="INT8U" />
      <BDA name="T" bType="Timestamp" />
      <BDA name="Test" bType="BOOLEAN" />
      <BDA name="Check" bType="Check" />
    </DAType>
    <DAType id="BSCCancel_1">
      <BDA name="ctlVal" bType="Dbpos" />
      <BDA name="origin" type="Originator_2" bType="Struct" />
      <BDA name="ctlNum" bType="INT8U" />
      <BDA name="T" bType="Timestamp" />
      <BDA name="Test" bType="BOOLEAN" />
    </DAType>
    <DAType id="ValWithTrans_2">
      <BDA name="posVal" bType="INT8" />
    </DAType>
    <DAType id="Vector_2">
      <BDA name="mag" type="AnalogueValue_1" bType="Struct" />
      <BDA name="ang" type="AnalogueValue_1" bType="Struct" />
    </DAType>
    <DAType id="Unit_1">
      <BDA name="SIUnit" type="SIUnitEnum" bType="Enum" />
      <BDA name="multiplier" type="multiplierEnum" bType="Enum" />
    </DAType>
    <DAType id="R40621M1_1">
      <BDA name="hhLim" type="AnalogueValue_1" bType="Struct" desc="High High range limit" />
      <BDA name="hLim" type="AnalogueValue_1" bType="Struct" desc="High range limit" />
      <BDA name="lLim" type="AnalogueValue_1" bType="Struct" desc="Low range limit" />
      <BDA name="llLim" type="AnalogueValue_1" bType="Struct" desc="Low Low range limit" />
      <BDA name="min" type="AnalogueValue_1" bType="Struct" desc="Minimum process measurement for which values of i and f are considered within limits" />
      <BDA name="max" type="AnalogueValue_1" bType="Struct" desc="Maximum process measurement for which values of i and f are considered within limits" />
    </DAType>
    <DAType id="R40621M1_Vector_Magnitude_Float_1">
      <BDA name="mag" type="AnalogueValue_1" bType="Struct" desc="The magnitude of the complex value" />
    </DAType>
    <EnumType id="Mod">
      <EnumVal ord="1">on</EnumVal>
      <EnumVal ord="2">blocked</EnumVal>
      <EnumVal ord="3">test</EnumVal>
      <EnumVal ord="4">test/blocked</EnumVal>
      <EnumVal ord="5">off</EnumVal>
    </EnumType>
    <EnumType id="ctlModel">
      <EnumVal ord="0">status-only</EnumVal>
      <EnumVal ord="1">direct-with-normal-security</EnumVal>
      <EnumVal ord="2">sbo-with-normal-security</EnumVal>
      <EnumVal ord="3">direct-with-enhanced-security</EnumVal>
      <EnumVal ord="4">sbo-with-enhanced-security</EnumVal>
    </EnumType>
    <EnumType id="Beh">
      <EnumVal ord="1">on</EnumVal>
      <EnumVal ord="2">blocked</EnumVal>
      <EnumVal ord="3">test</EnumVal>
      <EnumVal ord="4">test/blocked</EnumVal>
      <EnumVal ord="5">off</EnumVal>
    </EnumType>
    <EnumType id="Health">
      <EnumVal ord="1">Ok</EnumVal>
      <EnumVal ord="2">Warning</EnumVal>
      <EnumVal ord="3">Alarm</EnumVal>
    </EnumType>
    <EnumType id="PhyHealth">
      <EnumVal ord="1">Ok</EnumVal>
      <EnumVal ord="2">Warning</EnumVal>
      <EnumVal ord="3">Alarm</EnumVal>
    </EnumType>
    <EnumType id="orCategory">
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
    <EnumType id="sboClass">
      <EnumVal ord="0">operate-once</EnumVal>
      <EnumVal ord="1">operate-many</EnumVal>
    </EnumType>
    <EnumType id="sboClassEnum">
      <EnumVal ord="0">operate-once</EnumVal>
      <EnumVal ord="1">operate-many</EnumVal>
    </EnumType>
    <EnumType id="ParTraMod">
      <EnumVal ord="1"> No Mode Predefined</EnumVal>
      <EnumVal ord="2"> Master</EnumVal>
      <EnumVal ord="3"> Follower</EnumVal>
      <EnumVal ord="4"> Power Factor</EnumVal>
      <EnumVal ord="5"> Negative Reactance</EnumVal>
      <EnumVal ord="6"> Circulating Current</EnumVal>
      <EnumVal ord="7"> Circulating Reactive Current</EnumVal>
      <EnumVal ord="8"> Circulating Reactive Current By Equalizing Calculated Transformer Power Factor</EnumVal>
    </EnumType>
    <EnumType id="SIUnitEnum">
      <EnumVal ord="30">ohm</EnumVal>
    </EnumType>
    <EnumType id="multiplierEnum">
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
    <EnumType id="dirGeneral">
      <EnumVal ord="0">unknown</EnumVal>
      <EnumVal ord="1">forward</EnumVal>
      <EnumVal ord="2">backward</EnumVal>
      <EnumVal ord="3">both</EnumVal>
    </EnumType>
    <EnumType id="dirPhs">
      <EnumVal ord="0">unknown</EnumVal>
      <EnumVal ord="1">forward</EnumVal>
      <EnumVal ord="2">backward</EnumVal>
    </EnumType>
    <EnumType id="setCharact">
      <EnumVal ord="1">ANSI Extremely Inverse</EnumVal>
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
    <EnumType id="DirMod">
      <EnumVal ord="1">NonDirectional</EnumVal>
      <EnumVal ord="2">Forward</EnumVal>
    </EnumType>
    <EnumType id="FailMod">
      <EnumVal ord="1">Current</EnumVal>
      <EnumVal ord="2">Breaker Status</EnumVal>
      <EnumVal ord="3">Both current and breaker status</EnumVal>
      <EnumVal ord="4">Other</EnumVal>
    </EnumType>
    <EnumType id="ReTrMod">
      <EnumVal ord="1">Off</EnumVal>
      <EnumVal ord="2">Without Check</EnumVal>
      <EnumVal ord="3">With Current Check</EnumVal>
      <EnumVal ord="4">With Breaker Status Check</EnumVal>
      <EnumVal ord="5">With Current and Breaker Status Check</EnumVal>
      <EnumVal ord="6">Other Checks</EnumVal>
    </EnumType>
    <EnumType id="TrMod">
      <EnumVal ord="1">3 Phase Tripping</EnumVal>
      <EnumVal ord="2">1 or 3 Phase Tripping</EnumVal>
      <EnumVal ord="3">Specific</EnumVal>
      <EnumVal ord="4">1 Phase Tripping</EnumVal>
    </EnumType>
    <EnumType id="TrBeh">
      <EnumVal ord="2">Undefined</EnumVal>
    </EnumType>
    <EnumType id="AutoRecSt">
      <EnumVal ord="1">Ready</EnumVal>
      <EnumVal ord="3">Successful</EnumVal>
      <EnumVal ord="10">Unsuccessful</EnumVal>
      <EnumVal ord="11">Aborted</EnumVal>
    </EnumType>
    <EnumType id="CycTrMod1">
      <EnumVal ord="3">specific</EnumVal>
    </EnumType>
    <EnumType id="LivDeaMod">
      <EnumVal ord="1">Dead Line, Dead Bus</EnumVal>
      <EnumVal ord="2">Live Line, Dead Bus</EnumVal>
      <EnumVal ord="3">Dead Line, Live Bus</EnumVal>
      <EnumVal ord="4">Dead Line, Dead Bus OR Live Line, Dead Bus</EnumVal>
      <EnumVal ord="5">Dead Line, Dead Bus OR Dead Line, Live Bus</EnumVal>
      <EnumVal ord="6">Live Line, Dead Bus OR Dead Line, Live Bus</EnumVal>
      <EnumVal ord="7">Dead Line, Dead Bus OR Live Line, Dead Bus OR Dead Line, Live Bus</EnumVal>
    </EnumType>
    <EnumType id="TrgMod">
      <EnumVal ord="1">Internal</EnumVal>
      <EnumVal ord="2">External</EnumVal>
      <EnumVal ord="3">Both</EnumVal>
    </EnumType>
    <EnumType id="LevMod">
      <EnumVal ord="1">Positive or Rising</EnumVal>
      <EnumVal ord="2">Negative or Falling</EnumVal>
      <EnumVal ord="3">Both</EnumVal>
      <EnumVal ord="4">Other</EnumVal>
    </EnumType>
    <EnumType id="RcdMod">
      <EnumVal ord="1">Overwrite existing values</EnumVal>
      <EnumVal ord="2">Stop when full or saturated</EnumVal>
    </EnumType>
    <EnumType id="TmSyn">
      <EnumVal ord="2">Synchronized by a global area clock signal</EnumVal>
      <EnumVal ord="1">Synchronized by a local area clock signal</EnumVal>
      <EnumVal ord="0">Not synchronized by a global area clock signal</EnumVal>
    </EnumType>
    <EnumType id="StrWeekDay">
      <EnumVal ord="1">Monday</EnumVal>
      <EnumVal ord="2">Tuesday</EnumVal>
      <EnumVal ord="3">Wednesday</EnumVal>
      <EnumVal ord="4">Thursday</EnumVal>
      <EnumVal ord="5">Friday</EnumVal>
      <EnumVal ord="6">Saturday</EnumVal>
      <EnumVal ord="7">Sunday</EnumVal>
    </EnumType>
    <EnumType id="R40621M1_Mod" desc="Mode">
      <EnumVal ord="1">on</EnumVal>
      <EnumVal ord="2">blocked</EnumVal>
      <EnumVal ord="3">test</EnumVal>
      <EnumVal ord="4">test/blocked</EnumVal>
      <EnumVal ord="5">off</EnumVal>
    </EnumType>
    <EnumType id="R40621M1_ctlModel" desc="Control Model">
      <EnumVal ord="0">status-only</EnumVal>
      <EnumVal ord="1">direct-with-normal-security</EnumVal>
      <EnumVal ord="2">sbo-with-normal-security</EnumVal>
      <EnumVal ord="3">direct-with-enhanced-security</EnumVal>
      <EnumVal ord="4">sbo-with-enhanced-security</EnumVal>
    </EnumType>
    <EnumType id="R40621M1_Beh" desc="Behaviour">
      <EnumVal ord="1">on</EnumVal>
      <EnumVal ord="2">blocked</EnumVal>
      <EnumVal ord="3">test</EnumVal>
      <EnumVal ord="4">test/blocked</EnumVal>
      <EnumVal ord="5">off</EnumVal>
    </EnumType>
    <EnumType id="R40621M1_Health" desc="Health">
      <EnumVal ord="1">Ok</EnumVal>
      <EnumVal ord="2">Warning</EnumVal>
      <EnumVal ord="3">Alarm</EnumVal>
    </EnumType>
    <EnumType id="R40621M1_Bypass" desc="Type of bypass">
      <EnumVal ord="0">locking-bypass</EnumVal>
      <EnumVal ord="1">mode-bypass</EnumVal>
      <EnumVal ord="2">automation-bypass</EnumVal>
      <EnumVal ord="3">uniqueness-bypass</EnumVal>
      <EnumVal ord="4">select-bypass</EnumVal>
      <EnumVal ord="5">status-bypass</EnumVal>
    </EnumType>
    <EnumType id="R40621M1_seqT" desc="Sequence Measurement Type">
      <EnumVal ord="0">pos-neg-zero</EnumVal>
      <EnumVal ord="1">dir-quad-zero</EnumVal>
    </EnumType>
    <EnumType id="R40621M1_dir" desc="Direction">
      <EnumVal ord="0">unknown</EnumVal>
      <EnumVal ord="1">forward</EnumVal>
      <EnumVal ord="2">backward</EnumVal>
      <EnumVal ord="3">both</EnumVal>
    </EnumType>
    <EnumType id="R40621M1_AutoRecSt" desc="Auto-Reclose State">
      <EnumVal ord="1">Ready</EnumVal>
      <EnumVal ord="2">InProgress</EnumVal>
      <EnumVal ord="3">Successful</EnumVal>
      <EnumVal ord="4">Unsuccessful</EnumVal>
    </EnumType>
  </DataTypeTemplates>
</SCL>
