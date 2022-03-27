<?xml version="1.0" encoding="UTF-8"?>
<SCL xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.iec.ch/61850/2003/SCL" xmlns:esel="http://www.selinc.com/2006/61850" revision="B" version="2007" release="4">
  <Header id="V1" nameStructure="IEDName" revision="R000" toolID="Helinks STS 2.13.0.21" version="V12">
    <History>
      <Hitem revision="R001" version="V0" what="History file created" when="Wed Sep 11 17:49:01 CEST 2019" who="System" why="History reset"/>
      <Hitem revision="R000" version="V1" what="partial completion of GOOSE/SV" when="Fri Sep 20 04:04:25 CEST 2019" who="PE" why=""/>
      <Hitem revision="R001" version="V1" what="reassigned IPs" when="Fri Sep 20 13:37:50 EDT 2019" who="PE" why=""/>
      <Hitem revision="R000" version="V2" what="added missing IEDs" when="Fri Sep 20 16:27:21 EDT 2019" who="HELINKS STS" why=""/>
      <Hitem revision="R000" version="V3" what="fixed schema problems, added most MAC addresses" when="Sun Sep 22 08:35:22 EDT 2019" who="HELINKS STS" why=""/>
      <Hitem revision="R000" version="V4" what="corrected remaining GOOSE Mac Addresses" when="Sun Sep 22 10:07:03 EDT 2019" who="PE" why=""/>
      <Hitem revision="R001" version="V4" what="locked MU for IncA IncB, BT" when="Sun Sep 22 13:17:14 EDT 2019" who="PE" why=""/>
      <Hitem revision="R000" version="V5" what="generated reports for all devices" when="Mon Sep 23 08:11:28 EDT 2019" who="PE" why=""/>
      <Hitem revision="R000" version="V6" what="updated RTDS, TMW" when="Mon Sep 23 12:34:39 EDT 2019" who="PE" why=""/>
      <Hitem revision="R000" version="V7" what="fixed DTT problems with VZMX, COPAD" when="Mon Sep 23 14:08:42 EDT 2019" who="PE" why=""/>
      <Hitem revision="R001" version="V7" what="corrected Mac Address for BT_PU" when="Mon Sep 23 16:17:01 EDT 2019" who="PE" why=""/>
      <Hitem revision="R002" version="V7" what="pass over interstation GOOSE" when="Tue Sep 24 02:48:42 EDT 2019" who="PE" why=""/>
      <Hitem revision="R000" version="V8" what="added missing reports, GSE elements" when="Tue Sep 24 16:11:50 EDT 2019" who="PE" why=""/>
      <Hitem revision="R000" version="V9" what="missing LNTypes readded" when="Tue Sep 24 17:09:20 EDT 2019" who="PE" why=""/>
      <Hitem revision="R001" version="V9" what="reloaded SEL icd to update DTT" when="Wed Sep 25 08:29:38 EDT 2019" who="PE" why=""/>
      <Hitem revision="R000" version="V10" what="changed XF_SCU to match internal logic" when="Wed Sep 25 10:51:05 EDT 2019" who="PE" why=""/>
      <Hitem revision="R001" version="V10" what="reloaded SEL451 from new icd" when="Wed Sep 25 10:51:23 EDT 2019" who="PE" why=""/>
      <Hitem revision="R000" version="V11" what="Updated data model of BT_PU" when="Wed Sep 25 15:33:54 EDT 2019" who="PE" why=""/>
      <Hitem revision="R001" version="V11" what="added HV ieds to subscribe to signals" when="Wed Sep 25 15:34:12 EDT 2019" who="PE" why=""/>
      <Hitem revision="R000" version="V12" what="added missing datatypes for HV side devices" when="Thu Sep 26 09:23:56 EDT 2019" who="PE" why=""/>
    </History>
  </Header>
  <Communication>
    <SubNetwork name="Subnetwork_Stationbus" type="8-MMS">
      <ConnectedAP apName="S1" iedName="TXB_MU1_BCU_SEL_401">
        <Address>
          <P type="IP">10.11.19.31</P>
          <P type="OSI-AP-Title">1,3,9999,33</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">10.11.0.1</P>
          <P type="OSI-AE-Qualifier">23</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
        <GSE cbName="GPub01" ldInst="CFG">
          <Address>
            <P type="MAC-Address">01-0C-CD-01-00-00</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">000</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
        <PhysConn type="Connection">
          <P type="Type">Connection Type FOC Plug LC Cable D1 Port 1-AConnection Type FOC Plug LC Cable D2 Port 1-B</P>
          <P type="Plug">LC</P>
          <P type="Cable">D1</P>
          <P type="Port">1-A</P>
        </PhysConn>
        <PhysConn type="Connection">
          <P type="Type">FOC</P>
          <P type="Plug">LC</P>
          <P type="Cable">D2</P>
          <P type="Port">1-B</P>
        </PhysConn>
      </ConnectedAP>
      <ConnectedAP apName="ETH_SERVICE" iedName="TXA_MU1_SCU_VIZ_PMU">
        <Address>
          <P type="IP">10.11.24.12</P>
          <P type="OSI-AP-Title">1,3,9999,23</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">10.11.0.1</P>
          <P type="OSI-AE-Qualifier">23</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">00000001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
        <PhysConn type="Connection">
          <P type="Type">Connection Type 100BaseT Plug RJ45</P>
          <P type="Plug">RJ45</P>
        </PhysConn>
      </ConnectedAP>
      <ConnectedAP apName="S1" iedName="TXA_PU1_SEL_487E">
        <Address>
          <P type="IP">10.11.19.31</P>
          <P type="OSI-AP-Title">1,3,9999,33</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">10.11.0.1</P>
          <P type="OSI-AE-Qualifier">23</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
        <GSE cbName="GPub01" ldInst="CFG">
          <Address>
            <P type="MAC-Address">01-0C-CD-01-00-00</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">000</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
        <GSE cbName="gcb1" ldInst="CFG">
          <Address>
            <P type="MAC-Address">01-0C-CD-01-00-00</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">000</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
        <GSE cbName="gcb2" ldInst="CFG">
          <Address>
            <P type="MAC-Address">01-0C-CD-01-00-00</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">000</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
        <PhysConn type="Connection">
          <P type="Type">Connection Type FOC Plug LC Cable D1 Port 1-AConnection Type FOC Plug LC Cable D2 Port 1-B</P>
          <P type="Plug">LC</P>
          <P type="Cable">D1</P>
          <P type="Port">1-A</P>
        </PhysConn>
        <PhysConn type="Connection">
          <P type="Type">FOC</P>
          <P type="Plug">LC</P>
          <P type="Cable">D2</P>
          <P type="Port">1-B</P>
        </PhysConn>
      </ConnectedAP>
      <ConnectedAP apName="F" iedName="TXA_PU3_SIE_7UT8">
        <Address>
          <P type="IP">10.11.18.21</P>
          <P type="OSI-AP-Title">1,3,9999,23</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">10.11.0.1</P>
          <P type="OSI-AE-Qualifier">23</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
        <GSE cbName="gcb1" ldInst="Application">
          <Address>
            <P type="APPID">3831</P>
            <P type="VLAN-ID">00B</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="MAC-Address">01-01-18-01-13-01</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
        <GSE cbName="gcb2" ldInst="Application">
          <Address>
            <P type="APPID">3831</P>
            <P type="VLAN-ID">00B</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="MAC-Address">01-01-18-01-13-02</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
      </ConnectedAP>
      <ConnectedAP apName="P1" iedName="TXB_PU1_TOS_GRT">
        <Address>
          <P type="IP">10.11.14.31</P>
          <P type="OSI-AP-Title">1,1,1,999,1</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">10.11.0.1</P>
          <P type="OSI-AE-Qualifier">12</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
        <GSE cbName="positions" ldInst="Control">
          <Address>
            <P type="MAC-Address">01-0C-CD-01-00-06</P>
            <P type="APPID">0001</P>
            <P type="VLAN-ID">020</P>
            <P type="VLAN-PRIORITY">4</P>
          </Address>
          <MinTime multiplier="m" unit="s">8</MinTime>
          <MaxTime multiplier="m" unit="s">4096</MaxTime>
        </GSE>
        <GSE cbName="trip_status" ldInst="Protection">
          <Address>
            <P type="MAC-Address">01-0C-CD-01-00-06</P>
            <P type="APPID">0001</P>
            <P type="VLAN-ID">020</P>
            <P type="VLAN-PRIORITY">1</P>
          </Address>
          <MinTime multiplier="m" unit="s">30</MinTime>
          <MaxTime multiplier="m" unit="s">5000</MaxTime>
        </GSE>
        <GSE cbName="gcb1" ldInst="Control">
          <Address>
            <P type="APPID">3421</P>
            <P type="VLAN-ID">00B</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="MAC-Address">01-01-14-01-12-31</P>
          </Address>
          <MinTime multiplier="m" unit="s">2</MinTime>
          <MaxTime multiplier="m" unit="s">20000</MaxTime>
        </GSE>
        <GSE cbName="goST" ldInst="System">
          <Address>
            <P type="MAC-Address">01-0C-CD-01-00-00</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">000</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
        <GSE cbName="goST_PB" ldInst="System">
          <Address>
            <P type="MAC-Address">01-0C-CD-01-00-00</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">000</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
        <GSE cbName="gcb1" ldInst="System">
          <Address>
            <P type="MAC-Address">01-0C-CD-01-00-00</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">000</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
      </ConnectedAP>
      <ConnectedAP apName="S1" iedName="TXB_PU2_ABB_670">
        <Address>
          <P type="IP">10.11.19.31</P>
          <P type="OSI-AP-Title">1,3,9999,33</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">10.11.0.1</P>
          <P type="OSI-AE-Qualifier">23</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
        <GSE cbName="gcb1" ldInst="LD0">
          <Address>
            <P type="MAC-Address">01-0C-CD-01-00-00</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">000</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
        <GSE cbName="gcb2" ldInst="LD0">
          <Address>
            <P type="MAC-Address">01-0C-CD-01-00-00</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">000</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
        <PhysConn type="Connection">
          <P type="Type">Connection Type FOC Plug LC Cable D1 Port 1-AConnection Type FOC Plug LC Cable D2 Port 1-B</P>
          <P type="Plug">LC</P>
          <P type="Cable">D1</P>
          <P type="Port">1-A</P>
        </PhysConn>
        <PhysConn type="Connection">
          <P type="Type">FOC</P>
          <P type="Plug">LC</P>
          <P type="Cable">D2</P>
          <P type="Port">1-B</P>
        </PhysConn>
      </ConnectedAP>
      <ConnectedAP apName="S1" iedName="TXB_PU3_NR_978">
        <Address>
          <P type="IP">10.11.19.31</P>
          <P type="OSI-AP-Title">1,3,9999,33</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">10.11.0.1</P>
          <P type="OSI-AE-Qualifier">23</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
        <GSE cbName="gocb0" ldInst="LD0">
          <Address>
            <P type="MAC-Address">01-0C-CD-01-00-00</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">000</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
        <PhysConn type="Connection">
          <P type="Type">Connection Type FOC Plug LC Cable D1 Port 1-AConnection Type FOC Plug LC Cable D2 Port 1-B</P>
          <P type="Plug">LC</P>
          <P type="Cable">D1</P>
          <P type="Port">1-A</P>
        </PhysConn>
        <PhysConn type="Connection">
          <P type="Type">FOC</P>
          <P type="Plug">LC</P>
          <P type="Cable">D2</P>
          <P type="Port">1-B</P>
        </PhysConn>
      </ConnectedAP>
    </SubNetwork>
    <SubNetwork name="Subnet1" type="8-MMS">
      <ConnectedAP apName="P1" iedName="BT_PU">
        <Address>
          <P type="IP">10.11.16.15</P>
          <P type="OSI-TSEL">0001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-AP-Title">1,1,9999,1</P>
          <P type="OSI-AE-Qualifier">12</P>
          <P type="IP-TCP-PORT">102</P>
          <P type="IP-SUBNET">255.255.0.0</P>
        </Address>
        <GSE cbName="gcb3" ldInst="PROT">
          <Address>
            <P type="MAC-Address">01-01-16-00-23-12</P>
            <P type="APPID">0003</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">00B</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
        <GSE cbName="gcb1" ldInst="PROT">
          <Address>
            <P type="MAC-Address">01-01-16-00-23-21</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">00B</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
        <GSE cbName="gcb2" ldInst="PROT">
          <Address>
            <P type="MAC-Address">01-01-16-00-23-11</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">00B</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
      </ConnectedAP>
      <ConnectedAP apName="P1" iedName="INCB_PU">
        <Address>
          <P type="IP">10.11.21.15</P>
          <P type="IP-GATEWAY">10.11.0.1</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="OSI-PSEL">01</P>
          <P type="OSI-SSEL">01</P>
          <P type="OSI-TSEL">00000001</P>
        </Address>
      </ConnectedAP>
      <ConnectedAP apName="AP" iedName="B2_PU">
        <Address>
          <P type="OSI-AP-Title">1,1,9999,1</P>
          <P type="OSI-AE-Qualifier">12</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
          <P type="IP">10.11.22.15</P>
          <P type="IP-SUBNET">255.255.0.0</P>
        </Address>
        <GSE cbName="gcb1" ldInst="PROT">
          <Address>
            <P type="MAC-Address">01-01-22-00-21-21</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">00B</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
        <GSE cbName="gcb2" ldInst="PROT">
          <Address>
            <P type="MAC-Address">01-01-22-00-21-11</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">00B</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
      </ConnectedAP>
      <ConnectedAP apName="AP1" iedName="B1_MEAS">
        <Address>
          <P type="IP">10.11.13.15</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">0.0.0.0</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
      </ConnectedAP>
      <ConnectedAP apName="S1" iedName="A1_BCU_PU">
        <Address>
          <P type="IP">10.11.7.15</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">127.0.0.1</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
          <P type="OSI-AP-Title">1,3,9999,1</P>
          <P type="OSI-AE-Qualifier">12</P>
          <P type="OSI-AP-Invoke">102</P>
          <P type="OSI-AE-Invoke">103</P>
        </Address>
        <GSE cbName="GoCB01" ldInst="Master">
          <Address>
            <P type="MAC-Address">01-01-07-00-18-21</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">00B</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
        <GSE cbName="GoCB02" ldInst="Master">
          <Address>
            <P type="MAC-Address">01-01-07-00-18-11</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">00B</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
        <GSE cbName="GoCB03" ldInst="Master">
          <Address>
            <P type="MAC-Address">01-01-07-00-18-01</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">00B</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
      </ConnectedAP>
      <ConnectedAP desc="SISCO AX-S4 61850 Secure Client" apName="AP1" iedName="SISCO_SEC_CLIENT">
        <Address>
          <P type="IP">10.10.20.1</P>
          <P type="OSI-AP-Title">1,3,9999,1</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">127.0.0.1</P>
          <P type="OSI-AE-Qualifier">1</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
      </ConnectedAP>
      <ConnectedAP desc="SISCO AX-S4 61850 Client for Integrated App" apName="AP1" iedName="SISCO_CLIENT">
        <Address>
          <P type="IP">10.10.20.1</P>
          <P type="OSI-AP-Title">1,3,9999,1</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">127.0.0.1</P>
          <P type="OSI-AE-Qualifier">1</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
      </ConnectedAP>
      <ConnectedAP desc="SISCO GOOSE Monitor" apName="AP1" iedName="SISCO_GOOSEMON">
        <Address>
          <P type="IP">10.10.20.1</P>
          <P type="OSI-AP-Title">1,3,9999,1</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">127.0.0.1</P>
          <P type="OSI-AE-Qualifier">1</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
      </ConnectedAP>
      <ConnectedAP apName="AP" iedName="TMW_CLIENT">
        <Address>
          <P type="IP">10.10.22.1</P>
          <P type="OSI-AP-Title">1,3,9999,23</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">10.10.0.1</P>
          <P type="OSI-AE-Qualifier">23</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
        <PhysConn type="Connection">
          <P type="Type">Connection Type 100BaseT</P>
        </PhysConn>
      </ConnectedAP>
      <ConnectedAP apName="accessPoint1" iedName="ASE_CLIENT">
        <Address>
          <P type="IP">10.10.3.1</P>
          <P type="OSI-AP-Title">1,3,9999,23</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">10.10.0.1</P>
          <P type="OSI-AE-Qualifier">23</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
        <PhysConn type="Connection">
          <P type="Type">Connection Type 100BaseT</P>
        </PhysConn>
      </ConnectedAP>
      <ConnectedAP apName="S1" iedName="SIFANG_CSD_CLIENT">
        <Address>
          <P type="IP">10.10.19.2</P>
          <P type="OSI-AP-Title">1,3,9999,23</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">10.10.0.1</P>
          <P type="OSI-AE-Qualifier">23</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
        <PhysConn type="Connection">
          <P type="Type">Connection Type 100BaseT</P>
        </PhysConn>
      </ConnectedAP>
      <ConnectedAP apName="C1" iedName="NOVATECH_ORION_CLIENT">
        <Address>
          <P xsi:type="tP_IP" type="IP">10.10.13.2</P>
          <P type="OSI-AP-Title">1,3,9999,23</P>
          <P xsi:type="tP_IP-SUBNET" type="IP-SUBNET">255.255.0.0</P>
          <P xsi:type="tP_IP-GATEWAY" type="IP-GATEWAY">0.0.0.0</P>
          <P type="OSI-AE-Qualifier">23</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">00000001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
      </ConnectedAP>
      <ConnectedAP apName="AP" iedName="ARC_CLIENT_1">
        <Address>
          <P type="IP">10.10.2.1</P>
          <P type="OSI-AP-Title">1,3,9999,23</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">10.11.0.1</P>
          <P type="OSI-AE-Qualifier">23</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
      </ConnectedAP>
      <ConnectedAP apName="AP" iedName="ARC_CLIENT_2">
        <Address>
          <P type="IP">10.10.2.2</P>
          <P type="OSI-AP-Title">1,3,9999,23</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">10.11.0.1</P>
          <P type="OSI-AE-Qualifier">23</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
      </ConnectedAP>
      <ConnectedAP apName="zenonClient1" iedName="COPADATA_2">
        <Address>
          <P type="IP">10.10.4.2</P>
          <P type="OSI-AP-Title">1,3,9999,23</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">10.10.0.1</P>
          <P type="OSI-AE-Qualifier">23</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
        <PhysConn type="Connection">
          <P type="Type">Connection Type Connection Type Connection Type 100BaseT</P>
        </PhysConn>
      </ConnectedAP>
      <ConnectedAP apName="AP" iedName="B2_BCU">
        <Address>
          <P type="IP">10.11.22.16</P>
          <P type="OSI-AP-Title">1,1,9999,1</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">10.11.0.1</P>
          <P type="OSI-AE-Qualifier">12</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
        <GSE cbName="gcb1" ldInst="Q">
          <Address>
            <P type="MAC-Address">01-01-16-00-21-01</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">00B</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
      </ConnectedAP>
      <ConnectedAP apName="P1" iedName="BT_BCU">
        <Address>
          <P type="IP">10.11.16.16</P>
          <P type="OSI-AP-Title">1,1,9999,1</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">10.11.0.1</P>
          <P type="OSI-AE-Qualifier">12</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
      </ConnectedAP>
      <ConnectedAP apName="AP1" iedName="A2_BCU_PU">
        <Address>
          <P type="IP">10.10.20.20</P>
          <P type="OSI-AP-Title">1,3,9999,23</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">10.11.0.1</P>
          <P type="OSI-AE-Qualifier">23</P>
          <P type="OSI-PSEL">00000010</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
        <GSE cbName="gcb1" ldInst="LD1">
          <Address>
            <P type="MAC-Address">01-01-20-00-19-21</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">00B</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
        <GSE cbName="gcb2" ldInst="LD1">
          <Address>
            <P type="MAC-Address">01-01-20-00-19-11</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">00B</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
        <GSE cbName="gcb3" ldInst="LD1">
          <Address>
            <P type="MAC-Address">01-01-20-00-19-01</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">00B</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
      </ConnectedAP>
      <ConnectedAP apName="AP" iedName="B1_BCU">
        <Address>
          <P type="IP">10.11.22.17</P>
          <P type="OSI-AP-Title">1,1,9999,1</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">10.11.0.1</P>
          <P type="OSI-AE-Qualifier">12</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
        <GSE cbName="gcb1" ldInst="Q">
          <Address>
            <P type="MAC-Address">01-01-22-00-20-21</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">00B</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
        <GSE cbName="gcb2" ldInst="Q">
          <Address>
            <P type="MAC-Address">01-01-22-00-20-01</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">00B</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
      </ConnectedAP>
      <ConnectedAP desc="MMS Server" apName="S1" iedName="SEL_CLIENT">
        <Address>
          <P type="IP">10.10.17.1</P>
          <P type="OSI-AP-Title">1,3,9999,23</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">10.11.0.1</P>
          <P type="OSI-AE-Qualifier">23</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
      </ConnectedAP>
      <ConnectedAP apName="zenonClient1" iedName="COPADATA_1">
        <Address>
          <P type="IP">10.10.4.1</P>
          <P type="OSI-AP-Title">1,3,9999,23</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">10.11.0.1</P>
          <P type="OSI-AE-Qualifier">23</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
      </ConnectedAP>
      <ConnectedAP apName="S1" iedName="XF_BCU_PU">
        <Address>
          <P type="IP">10.11.17.15</P>
          <P type="OSI-AP-Title">1,3,9999,23</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">10.11.0.1</P>
          <P type="OSI-AE-Qualifier">23</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
        <GSE cbName="gcb3" ldInst="CFG">
          <Address>
            <P type="MAC-Address">01-01-17-00-22-31</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">00B</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
        <GSE cbName="gcb1" ldInst="CFG">
          <Address>
            <P type="MAC-Address">01-01-17-00-22-21</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">00B</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
        <GSE cbName="gcb2" ldInst="CFG">
          <Address>
            <P type="MAC-Address">01-01-17-00-22-11</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">00B</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
      </ConnectedAP>
      <ConnectedAP apName="S1" iedName="INCA_BCU">
        <Address>
          <P type="IP">10.11.17.16</P>
          <P type="OSI-AP-Title">1,3,9999,23</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">10.11.0.1</P>
          <P type="OSI-AE-Qualifier">23</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
        <GSE cbName="gcb1" ldInst="CFG">
          <Address>
            <P type="MAC-Address">01-01-17-00-16-21</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">00B</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
        <GSE cbName="gcb2" ldInst="CFG">
          <Address>
            <P type="MAC-Address">01-01-17-00-16-11</P>
            <P type="APPID">0003</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">00B</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
        <GSE cbName="gcb3" ldInst="CFG">
          <Address>
            <P type="MAC-Address">01-01-17-00-16-01</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">00B</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
      </ConnectedAP>
      <ConnectedAP desc="MMS Server" apName="S1" iedName="INCB_BCU">
        <Address>
          <P type="IP">10.11.17.17</P>
          <P type="OSI-AP-Title">1,3,9999,23</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">10.11.0.1</P>
          <P type="OSI-AE-Qualifier">23</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
        <GSE cbName="gcb1" ldInst="CFG">
          <Address>
            <P type="MAC-Address">01-01-21-00-17-01</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">00B</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
      </ConnectedAP>
      <ConnectedAP apName="ETH_1" iedName="XF_SCU">
        <Address>
          <P type="IP">10.11.24.15</P>
          <P type="OSI-AP-Title">1,3,9999,23</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">10.11.0.1</P>
          <P type="OSI-AE-Qualifier">23</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">00000001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
        <GSE cbName="gcb01" ldInst="SYS">
          <Address>
            <P type="MAC-Address">01-0C-CD-01-00-00</P>
            <P type="APPID">0001</P>
            <P type="VLAN-ID">000</P>
            <P type="VLAN-PRIORITY">4</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
        <GSE cbName="gcb02" ldInst="SYS">
          <Address>
            <P type="MAC-Address">01-01-24-00-22-11</P>
            <P type="APPID">0001</P>
            <P type="VLAN-ID">00B</P>
            <P type="VLAN-PRIORITY">4</P>
          </Address>
          <MinTime multiplier="m" unit="s">5</MinTime>
          <MaxTime multiplier="m" unit="s">10000</MaxTime>
        </GSE>
        <SMV desc="9-2LE SV stream (F4000S1I4U4 and F4800S1I4U4)" cbName="MSVCB01" ldInst="SYS">
          <Address>
            <P type="MAC-Address">01-0C-CD-04-00-00</P>
            <P type="VLAN-ID">020</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="APPID">4000</P>
          </Address>
        </SMV>
        <SMV desc="9-2LE SV stream (F12800S8I4U4 and F15360S8I4U4)" cbName="MSVCB02" ldInst="SYS">
          <Address>
            <P type="MAC-Address">01-0C-CD-04-00-01</P>
            <P type="VLAN-ID">020</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="APPID">4000</P>
          </Address>
        </SMV>
        <SMV desc="preferred stream for apps needing measuring or protective class (F4800S2I4U4)" cbName="MSVCB03" ldInst="SYS">
          <Address>
            <P type="MAC-Address">01-0C-CD-04-00-02</P>
            <P type="VLAN-ID">020</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="APPID">4000</P>
          </Address>
        </SMV>
        <SMV desc="preferred stream for apps needing quality metering class (F14400S6I4U4)" cbName="MSVCB04" ldInst="SYS">
          <Address>
            <P type="MAC-Address">01-0C-CD-04-00-03</P>
            <P type="VLAN-ID">020</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="APPID">4000</P>
          </Address>
        </SMV>
        <PhysConn type="Connection">
          <P type="Type">Connection Type FOC Plug LC</P>
          <P type="Plug">LC</P>
        </PhysConn>
      </ConnectedAP>
      <ConnectedAP apName="S1" iedName="INCA_MU" redProt="hsr">
        <Address>
          <P type="IP">10.11.1.15</P>
          <P type="OSI-AP-Title">1,3,9999,23</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">10.11.0.1</P>
          <P type="OSI-AE-Qualifier">23</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">00000001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
        <SMV desc="9-2LE SV Stream (F4000S1I4U4)" cbName="MSVCB01" ldInst="MU01">
          <Address>
            <P xsi:type="tP_VLAN-ID" type="VLAN-ID">008</P>
            <P xsi:type="tP_VLAN-PRIORITY" type="VLAN-PRIORITY">4</P>
            <P xsi:type="tP_MAC-Address" type="MAC-Address">01-0C-CD-04-00-01</P>
            <P xsi:type="tP_APPID" type="APPID">4000</P>
          </Address>
        </SMV>
        <PhysConn type="Connection">
          <P type="Port">TS1-X103</P>
          <P type="Type">Connection Port TS1-X103 Type RJ45RedConn Port TS1-X104 Type RJ45</P>
        </PhysConn>
        <PhysConn type="RedConn">
          <P type="Port">TS1-X104</P>
          <P type="Type">RJ45</P>
        </PhysConn>
      </ConnectedAP>
      <ConnectedAP apName="S1" iedName="INCB_MU">
        <Address>
          <P type="IP">10.11.12.15</P>
          <P type="OSI-AP-Title">1,1,9999,1</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">10.11.0.1</P>
          <P type="OSI-AE-Qualifier">101</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
        <SMV cbName="MSVCB01" ldInst="MU01">
          <Address>
            <P type="MAC-Address">01-0C-CD-04-00-30</P>
            <P type="APPID">5000</P>
            <P type="VLAN-ID">008</P>
            <P type="VLAN-PRIORITY">4</P>
          </Address>
        </SMV>
        <SMV cbName="MSVCB02" ldInst="MU01">
          <Address>
            <P type="MAC-Address">01-0C-CD-04-00-31</P>
            <P type="APPID">5001</P>
            <P type="VLAN-ID">008</P>
            <P type="VLAN-PRIORITY">4</P>
          </Address>
        </SMV>
      </ConnectedAP>
      <ConnectedAP apName="S1" iedName="BT_MU" redProt="none">
        <Address>
          <P xsi:type="tP_IP" type="IP">10.11.1.15</P>
          <P xsi:type="tP_OSI-AP-Title" type="OSI-AP-Title">1,3,9999,23</P>
          <P xsi:type="tP_IP-SUBNET" type="IP-SUBNET">255.255.0.0</P>
          <P xsi:type="tP_IP-GATEWAY" type="IP-GATEWAY">10.11.0.1</P>
          <P xsi:type="tP_OSI-AE-Qualifier" type="OSI-AE-Qualifier">23</P>
          <P xsi:type="tP_OSI-PSEL" type="OSI-PSEL">00000001</P>
          <P xsi:type="tP_OSI-SSEL" type="OSI-SSEL">0001</P>
          <P xsi:type="tP_OSI-TSEL" type="OSI-TSEL">0001</P>
        </Address>
        <SMV cbName="MSVCB01" ldInst="LD0">
          <Address>
            <P xsi:type="tP_VLAN-ID" type="VLAN-ID">008</P>
            <P xsi:type="tP_VLAN-PRIORITY" type="VLAN-PRIORITY">4</P>
            <P xsi:type="tP_MAC-Address" type="MAC-Address">01-0C-CD-04-00-01</P>
            <P xsi:type="tP_APPID" type="APPID">4001</P>
          </Address>
        </SMV>
        <SMV cbName="MSVCB02" ldInst="LD0">
          <Address>
            <P xsi:type="tP_VLAN-ID" type="VLAN-ID">008</P>
            <P xsi:type="tP_VLAN-PRIORITY" type="VLAN-PRIORITY">4</P>
            <P xsi:type="tP_MAC-Address" type="MAC-Address">01-0C-CD-04-00-02</P>
            <P xsi:type="tP_APPID" type="APPID">4002</P>
          </Address>
        </SMV>
        <PhysConn type="Connection">
          <P type="Type">Connection Port SFP_301</P>
          <P type="Port">SFP_301</P>
        </PhysConn>
      </ConnectedAP>
      <ConnectedAP apName="AccessPoint" iedName="NOVATECH_ORION_SERVER">
        <Address>
          <P type="IP">10.10.13.1</P>
          <P type="OSI-AP-Title">1,3,9999,23</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">0.0.0.0</P>
          <P type="OSI-AE-Qualifier">23</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
        <GSE cbName="PongGcb" ldInst="OrionServer4">
          <Address>
            <P type="MAC-Address">01-01-13-00-10-01</P>
            <P type="APPID">0001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="VLAN-ID">00B</P>
          </Address>
          <MinTime multiplier="m" unit="s">10</MinTime>
          <MaxTime multiplier="m" unit="s">1000</MaxTime>
        </GSE>
      </ConnectedAP>
      <ConnectedAP apName="S1" iedName="B1_PU">
        <Address>
          <P type="IP">10.11.19.15</P>
          <P type="OSI-AP-Title">1,3,9999,33</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">10.11.0.1</P>
          <P type="OSI-AE-Qualifier">23</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
        <GSE cbName="GoCB1" ldInst="CTRL">
          <Address>
            <P type="MAC-Address">01-0C-CD-01-00-06</P>
            <P type="VLAN-ID">00B</P>
            <P type="APPID">1006</P>
            <P type="VLAN-PRIORITY">4</P>
          </Address>
          <MinTime multiplier="m" unit="s">2</MinTime>
          <MaxTime multiplier="m" unit="s">5000</MaxTime>
        </GSE>
      </ConnectedAP>
      <ConnectedAP apName="BI1" iedName="A1_MEAS">
        <Address>
          <P type="IP">10.11.13.16</P>
          <P type="OSI-AP-Title">1,3,9999,23</P>
          <P type="IP-SUBNET">255.255.0.0</P>
          <P type="IP-GATEWAY">10.11.0.1</P>
          <P type="OSI-AE-Qualifier">23</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
      </ConnectedAP>
    </SubNetwork>
  </Communication>
  <IED configVersion="0.1" manufacturer="TOSHIBA" originalSclRevision="B" originalSclVersion="2007" type="GRD200-41-231-00-LL-30-110-403D-LL4-2E" name="INCB_PU">
    <Services nameLength="64">
      <DynAssociation max="6"/>
      <SettingGroups/>
      <GetDirectory/>
      <GetDataObjectDefinition/>
      <DataObjectDirectory/>
      <GetDataSetValue/>
      <SetDataSetValue/>
      <DataSetDirectory/>
      <ConfDataSet max="10" maxAttributes="100"/>
      <ReadWrite/>
      <ConfReportControl max="10" bufConf="true" bufMode="both"/>
      <GetCBValues/>
      <ReportSettings cbName="Conf" datSet="Dyn" bufTime="Dyn" intgPd="Dyn" optFields="Dyn" owner="true" resvTms="true" rptID="Dyn" trgOps="Dyn"/>
      <GSESettings cbName="Fix" datSet="Fix" appID="Conf"/>
      <GSEDir/>
      <GOOSE max="10"/>
      <FileHandling/>
      <SupSubscription maxGo="320" maxSv="4"/>
    </Services>
    <AccessPoint name="P1">
      <Server>
        <Authentication/>
        <LDevice inst="System">
          <LN0 lnType="LLN0_0$_86c936f4-b35a-4326-b080-95aab97c1ebf" inst="" lnClass="LLN0">
            <DataSet name="STAT">
              <FCDA daName="stVal" doName="PhyHealth" fc="ST" ldInst="System" lnClass="LPHD" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="PhyHealth" fc="ST" ldInst="System" lnClass="LPHD" lnInst="1" prefix=""/>
              <FCDA daName="t" doName="PhyHealth" fc="ST" ldInst="System" lnClass="LPHD" lnInst="1" prefix=""/>
              <FCDA daName="stVal" doName="Proxy" fc="ST" ldInst="System" lnClass="LPHD" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="Proxy" fc="ST" ldInst="System" lnClass="LPHD" lnInst="1" prefix=""/>
              <FCDA daName="t" doName="Proxy" fc="ST" ldInst="System" lnClass="LPHD" lnInst="1" prefix=""/>
              <FCDA daName="stVal" doName="Beh" fc="ST" ldInst="System" lnClass="LLN0" prefix=""/>
              <FCDA daName="q" doName="Beh" fc="ST" ldInst="System" lnClass="LLN0" prefix=""/>
              <FCDA daName="t" doName="Beh" fc="ST" ldInst="System" lnClass="LLN0" prefix=""/>
              <FCDA daName="stVal" doName="Health" fc="ST" ldInst="System" lnClass="LLN0" prefix=""/>
              <FCDA daName="q" doName="Health" fc="ST" ldInst="System" lnClass="LLN0" prefix=""/>
              <FCDA daName="t" doName="Health" fc="ST" ldInst="System" lnClass="LLN0" prefix=""/>
              <FCDA daName="stVal" doName="Mod" fc="ST" ldInst="System" lnClass="LLN0" prefix=""/>
              <FCDA daName="q" doName="Mod" fc="ST" ldInst="System" lnClass="LLN0" prefix=""/>
              <FCDA daName="t" doName="Mod" fc="ST" ldInst="System" lnClass="LLN0" prefix=""/>
              <FCDA daName="stVal" doName="Loc" fc="ST" ldInst="System" lnClass="LLN0" prefix=""/>
              <FCDA daName="q" doName="Loc" fc="ST" ldInst="System" lnClass="LLN0" prefix=""/>
              <FCDA daName="t" doName="Loc" fc="ST" ldInst="System" lnClass="LLN0" prefix=""/>
              <FCDA daName="stVal" doName="Diag" fc="ST" ldInst="System" lnClass="LLN0" prefix=""/>
              <FCDA daName="q" doName="Diag" fc="ST" ldInst="System" lnClass="LLN0" prefix=""/>
              <FCDA daName="t" doName="Diag" fc="ST" ldInst="System" lnClass="LLN0" prefix=""/>
            </DataSet>
            <DataSet name="GOOSEDS">
              <FCDA daName="stVal" doName="Ind1" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="Ind1" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="stVal" doName="Ind2" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="Ind2" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="stVal" doName="Ind3" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="Ind3" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="stVal" doName="Ind4" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="Ind4" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="stVal" doName="Ind5" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="Ind5" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="stVal" doName="Ind6" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="Ind6" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="stVal" doName="Ind7" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="Ind7" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="stVal" doName="Ind8" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="Ind8" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="stVal" doName="Ind9" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="Ind9" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="stVal" doName="Ind10" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="Ind10" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="stVal" doName="Ind11" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="Ind11" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="stVal" doName="Ind12" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="Ind12" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="stVal" doName="Ind13" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="Ind13" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="stVal" doName="Ind14" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="Ind14" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="stVal" doName="Ind15" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="Ind15" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="stVal" doName="Ind16" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="Ind16" fc="ST" ldInst="System" lnClass="GGIO" lnInst="1" prefix=""/>
            </DataSet>
            <DataSet name="MEAS">
              <FCDA daName="mag.i" doName="Hz" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="mag.f" doName="Hz" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="Hz" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="t" doName="Hz" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.mag.i" doName="PhV.phsA" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.mag.f" doName="PhV.phsA" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.ang.i" doName="PhV.phsA" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.ang.f" doName="PhV.phsA" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="PhV.phsA" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="t" doName="PhV.phsA" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.mag.i" doName="PhV.phsB" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.mag.f" doName="PhV.phsB" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.ang.i" doName="PhV.phsB" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.ang.f" doName="PhV.phsB" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="PhV.phsB" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="t" doName="PhV.phsB" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.mag.i" doName="PhV.phsC" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.mag.f" doName="PhV.phsC" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.ang.i" doName="PhV.phsC" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.ang.f" doName="PhV.phsC" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="PhV.phsC" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="t" doName="PhV.phsC" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.mag.i" doName="PhV.neut" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.mag.f" doName="PhV.neut" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="PhV.neut" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="t" doName="PhV.neut" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.mag.i" doName="PhV.net" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.mag.f" doName="PhV.net" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="PhV.net" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="t" doName="PhV.net" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.mag.i" doName="PhV.res" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.mag.f" doName="PhV.res" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="PhV.res" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="t" doName="PhV.res" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.mag.i" doName="A.phsA" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.mag.f" doName="A.phsA" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.ang.i" doName="A.phsA" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.ang.f" doName="A.phsA" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="A.phsA" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="t" doName="A.phsA" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.mag.i" doName="A.phsB" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.mag.f" doName="A.phsB" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.ang.i" doName="A.phsB" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.ang.f" doName="A.phsB" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="A.phsB" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="t" doName="A.phsB" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.mag.i" doName="A.phsC" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.mag.f" doName="A.phsC" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.ang.i" doName="A.phsC" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.ang.f" doName="A.phsC" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="A.phsC" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="t" doName="A.phsC" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.mag.i" doName="A.neut" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.mag.f" doName="A.neut" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="A.neut" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="t" doName="A.neut" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.mag.i" doName="A.net" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.mag.f" doName="A.net" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="A.net" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="t" doName="A.net" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.mag.i" doName="A.res" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="cVal.mag.f" doName="A.res" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="A.res" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
              <FCDA daName="t" doName="A.res" fc="MX" ldInst="System" lnClass="MMXU" lnInst="1" prefix=""/>
            </DataSet>
            <ReportControl datSet="STAT" name="brcbST" intgPd="0" buffered="true" bufTime="0" confRev="1" indexed="true" rptID="RPT_TSB2">
              <TrgOps dchg="true" qchg="true"/>
              <OptFields configRef="true" dataRef="true" dataSet="true" entryID="true" reasonCode="true" seqNum="true" timeStamp="true"/>
              <RptEnabled max="2"/>
            </ReportControl>
            <DOI name="Mod">
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass">
                <Val>operate-once</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor">
                <Val>TOSHIBA</Val>
              </DAI>
              <DAI name="swRev">
                <Val>GS2RTIM1</Val>
              </DAI>
              <DAI name="d">
                <Val>no-data</Val>
              </DAI>
              <DAI name="configRev">
                <Val>no-data</Val>
              </DAI>
              <DAI name="ldNs">
                <Val>IEC 61850-7-4:2007</Val>
              </DAI>
            </DOI>
            <DOI name="Diag">
              <DAI name="ctlModel">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="LEDRs">
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <GSEControl datSet="GOOSEDS" name="goST_PB" confRev="0" appID="System/LLN0$goST_PB"/>
            <GSEControl datSet="GOOSEDS" name="goST" confRev="0" appID="System/LLN0$goST"/>
            <SettingControl desc="SettingGroupControlBlock" actSG="1" numOfSGs="8"/>
          </LN0>
          <LN lnType="LPHD_0$_6976c482-a37a-47c0-8531-28c5f3c35b55" inst="1" lnClass="LPHD" prefix="">
            <DOI name="PhyNam">
              <DAI name="vendor">
                <Val>TOSHIBA</Val>
              </DAI>
            </DOI>
            <DOI name="Sim">
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_0$_cfedb113-cc85-4534-a668-06ac85213102" inst="1" lnClass="GGIO"/>
          <LN lnType="MMXU_0$_28082ff0-718a-42b2-9d76-73e576dbf43d" inst="1" lnClass="MMXU">
            <DOI name="Hz">
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>Hz</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="PhV">
              <SDI name="phsA">
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>V</Val>
                  </DAI>
                </SDI>
              </SDI>
              <SDI name="phsB">
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>V</Val>
                  </DAI>
                </SDI>
              </SDI>
              <SDI name="phsC">
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>V</Val>
                  </DAI>
                </SDI>
              </SDI>
            </DOI>
            <DOI name="A">
              <SDI name="phsA">
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                </SDI>
              </SDI>
              <SDI name="phsB">
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                </SDI>
              </SDI>
              <SDI name="phsC">
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                </SDI>
              </SDI>
            </DOI>
          </LN>
          <LN lnType="LGOS_0$_9d82cb97-8da7-4292-a456-fc307f3302de" inst="1" lnClass="LGOS" prefix="">
            <DOI name="Mod">
              <DAI name="ctlModel">
                <Val>status-only</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="LSVS_0$_cb727946-589b-45d4-b021-88f000692464" inst="1" lnClass="LSVS" prefix="">
            <DOI name="Mod">
              <DAI name="ctlModel">
                <Val>status-only</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
        <LDevice inst="Prot">
          <LN0 lnType="LLN0_1$_480d6d24-053d-41f6-99d9-9b42eefa3899" inst="" lnClass="LLN0">
            <DataSet name="FAST_BB_BLK">
              <FCDA daName="general" doName="Tr" fc="ST" ldInst="Prot" lnClass="PTRC" lnInst="1" prefix="TRC_"/>
              <FCDA daName="general" doName="OpEx" fc="ST" ldInst="Prot" lnClass="RBRF" lnInst="2" prefix="CBF_"/>
              <FCDA daName="q" doName="Tr" fc="ST" ldInst="Prot" lnClass="PTRC" lnInst="1" prefix="TRC_"/>
              <FCDA daName="q" doName="OpEx" fc="ST" ldInst="Prot" lnClass="RBRF" lnInst="2" prefix="CBF_"/>
              <FCDA daName="t" doName="Tr" fc="ST" ldInst="Prot" lnClass="PTRC" lnInst="1" prefix="TRC_"/>
              <FCDA daName="t" doName="OpEx" fc="ST" ldInst="Prot" lnClass="RBRF" lnInst="2" prefix="CBF_"/>
            </DataSet>
            <DataSet name="STAT1">
              <FCDA daName="stVal" doName="Beh" fc="ST" ldInst="Prot" lnClass="LLN0" prefix=""/>
              <FCDA daName="q" doName="Beh" fc="ST" ldInst="Prot" lnClass="LLN0" prefix=""/>
              <FCDA daName="t" doName="Beh" fc="ST" ldInst="Prot" lnClass="LLN0" prefix=""/>
              <FCDA daName="stVal" doName="Health" fc="ST" ldInst="Prot" lnClass="LLN0" prefix=""/>
              <FCDA daName="q" doName="Health" fc="ST" ldInst="Prot" lnClass="LLN0" prefix=""/>
              <FCDA daName="t" doName="Health" fc="ST" ldInst="Prot" lnClass="LLN0" prefix=""/>
              <FCDA daName="stVal" doName="Mod" fc="ST" ldInst="Prot" lnClass="LLN0" prefix=""/>
              <FCDA daName="q" doName="Mod" fc="ST" ldInst="Prot" lnClass="LLN0" prefix=""/>
              <FCDA daName="t" doName="Mod" fc="ST" ldInst="Prot" lnClass="LLN0" prefix=""/>
              <FCDA daName="stVal" doName="PhyHealth" fc="ST" ldInst="Prot" lnClass="LPHD" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="PhyHealth" fc="ST" ldInst="Prot" lnClass="LPHD" lnInst="1" prefix=""/>
              <FCDA daName="t" doName="PhyHealth" fc="ST" ldInst="Prot" lnClass="LPHD" lnInst="1" prefix=""/>
              <FCDA daName="stVal" doName="Proxy" fc="ST" ldInst="Prot" lnClass="LPHD" lnInst="1" prefix=""/>
              <FCDA daName="q" doName="Proxy" fc="ST" ldInst="Prot" lnClass="LPHD" lnInst="1" prefix=""/>
              <FCDA daName="t" doName="Proxy" fc="ST" ldInst="Prot" lnClass="LPHD" lnInst="1" prefix=""/>
            </DataSet>
            <DataSet name="STAT2">
              <FCDA daName="general" doName="Str" fc="ST" ldInst="Prot" lnClass="PTOC" lnInst="1" prefix="OC_"/>
              <FCDA daName="dirGeneral" doName="Str" fc="ST" ldInst="Prot" lnClass="PTOC" lnInst="1" prefix="OC_"/>
              <FCDA daName="q" doName="Str" fc="ST" ldInst="Prot" lnClass="PTOC" lnInst="1" prefix="OC_"/>
              <FCDA daName="t" doName="Str" fc="ST" ldInst="Prot" lnClass="PTOC" lnInst="1" prefix="OC_"/>
              <FCDA daName="general" doName="Op" fc="ST" ldInst="Prot" lnClass="PTOC" lnInst="1" prefix="OC_"/>
              <FCDA daName="q" doName="Op" fc="ST" ldInst="Prot" lnClass="PTOC" lnInst="1" prefix="OC_"/>
              <FCDA daName="t" doName="Op" fc="ST" ldInst="Prot" lnClass="PTOC" lnInst="1" prefix="OC_"/>
              <FCDA daName="general" doName="Str" fc="ST" ldInst="Prot" lnClass="PTOC" lnInst="2" prefix="OC_"/>
              <FCDA daName="dirGeneral" doName="Str" fc="ST" ldInst="Prot" lnClass="PTOC" lnInst="2" prefix="OC_"/>
              <FCDA daName="q" doName="Str" fc="ST" ldInst="Prot" lnClass="PTOC" lnInst="2" prefix="OC_"/>
              <FCDA daName="t" doName="Str" fc="ST" ldInst="Prot" lnClass="PTOC" lnInst="2" prefix="OC_"/>
              <FCDA daName="general" doName="Op" fc="ST" ldInst="Prot" lnClass="PTOC" lnInst="2" prefix="OC_"/>
              <FCDA daName="q" doName="Op" fc="ST" ldInst="Prot" lnClass="PTOC" lnInst="2" prefix="OC_"/>
              <FCDA daName="t" doName="Op" fc="ST" ldInst="Prot" lnClass="PTOC" lnInst="2" prefix="OC_"/>
              <FCDA daName="general" doName="Str" fc="ST" ldInst="Prot" lnClass="PTOC" lnInst="3" prefix="OC_"/>
              <FCDA daName="dirGeneral" doName="Str" fc="ST" ldInst="Prot" lnClass="PTOC" lnInst="3" prefix="OC_"/>
              <FCDA daName="q" doName="Str" fc="ST" ldInst="Prot" lnClass="PTOC" lnInst="3" prefix="OC_"/>
              <FCDA daName="t" doName="Str" fc="ST" ldInst="Prot" lnClass="PTOC" lnInst="3" prefix="OC_"/>
              <FCDA daName="general" doName="Op" fc="ST" ldInst="Prot" lnClass="PTOC" lnInst="3" prefix="OC_"/>
              <FCDA daName="q" doName="Op" fc="ST" ldInst="Prot" lnClass="PTOC" lnInst="3" prefix="OC_"/>
              <FCDA daName="t" doName="Op" fc="ST" ldInst="Prot" lnClass="PTOC" lnInst="3" prefix="OC_"/>
              <FCDA daName="general" doName="Str" fc="ST" ldInst="Prot" lnClass="PTOC" lnInst="4" prefix="OC_"/>
              <FCDA daName="dirGeneral" doName="Str" fc="ST" ldInst="Prot" lnClass="PTOC" lnInst="4" prefix="OC_"/>
              <FCDA daName="q" doName="Str" fc="ST" ldInst="Prot" lnClass="PTOC" lnInst="4" prefix="OC_"/>
              <FCDA daName="t" doName="Str" fc="ST" ldInst="Prot" lnClass="PTOC" lnInst="4" prefix="OC_"/>
              <FCDA daName="general" doName="Op" fc="ST" ldInst="Prot" lnClass="PTOC" lnInst="4" prefix="OC_"/>
              <FCDA daName="q" doName="Op" fc="ST" ldInst="Prot" lnClass="PTOC" lnInst="4" prefix="OC_"/>
              <FCDA daName="t" doName="Op" fc="ST" ldInst="Prot" lnClass="PTOC" lnInst="4" prefix="OC_"/>
            </DataSet>
            <DataSet name="STAT3">
              <FCDA daName="general" doName="Str" fc="ST" ldInst="Prot" lnClass="PTUV" lnInst="1" prefix="UV_"/>
              <FCDA daName="dirGeneral" doName="Str" fc="ST" ldInst="Prot" lnClass="PTUV" lnInst="1" prefix="UV_"/>
              <FCDA daName="q" doName="Str" fc="ST" ldInst="Prot" lnClass="PTUV" lnInst="1" prefix="UV_"/>
              <FCDA daName="t" doName="Str" fc="ST" ldInst="Prot" lnClass="PTUV" lnInst="1" prefix="UV_"/>
              <FCDA daName="general" doName="Op" fc="ST" ldInst="Prot" lnClass="PTUV" lnInst="1" prefix="UV_"/>
              <FCDA daName="q" doName="Op" fc="ST" ldInst="Prot" lnClass="PTUV" lnInst="1" prefix="UV_"/>
              <FCDA daName="t" doName="Op" fc="ST" ldInst="Prot" lnClass="PTUV" lnInst="1" prefix="UV_"/>
              <FCDA daName="general" doName="Str" fc="ST" ldInst="Prot" lnClass="PTUV" lnInst="2" prefix="UV_"/>
              <FCDA daName="dirGeneral" doName="Str" fc="ST" ldInst="Prot" lnClass="PTUV" lnInst="2" prefix="UV_"/>
              <FCDA daName="q" doName="Str" fc="ST" ldInst="Prot" lnClass="PTUV" lnInst="2" prefix="UV_"/>
              <FCDA daName="t" doName="Str" fc="ST" ldInst="Prot" lnClass="PTUV" lnInst="2" prefix="UV_"/>
              <FCDA daName="general" doName="Op" fc="ST" ldInst="Prot" lnClass="PTUV" lnInst="2" prefix="UV_"/>
              <FCDA daName="q" doName="Op" fc="ST" ldInst="Prot" lnClass="PTUV" lnInst="2" prefix="UV_"/>
              <FCDA daName="t" doName="Op" fc="ST" ldInst="Prot" lnClass="PTUV" lnInst="2" prefix="UV_"/>
              <FCDA daName="general" doName="Str" fc="ST" ldInst="Prot" lnClass="PTUV" lnInst="3" prefix="UV_"/>
              <FCDA daName="dirGeneral" doName="Str" fc="ST" ldInst="Prot" lnClass="PTUV" lnInst="3" prefix="UV_"/>
              <FCDA daName="q" doName="Str" fc="ST" ldInst="Prot" lnClass="PTUV" lnInst="3" prefix="UV_"/>
              <FCDA daName="t" doName="Str" fc="ST" ldInst="Prot" lnClass="PTUV" lnInst="3" prefix="UV_"/>
              <FCDA daName="general" doName="Op" fc="ST" ldInst="Prot" lnClass="PTUV" lnInst="3" prefix="UV_"/>
              <FCDA daName="q" doName="Op" fc="ST" ldInst="Prot" lnClass="PTUV" lnInst="3" prefix="UV_"/>
              <FCDA daName="t" doName="Op" fc="ST" ldInst="Prot" lnClass="PTUV" lnInst="3" prefix="UV_"/>
              <FCDA daName="general" doName="Str" fc="ST" ldInst="Prot" lnClass="PTUV" lnInst="4" prefix="UV_"/>
              <FCDA daName="dirGeneral" doName="Str" fc="ST" ldInst="Prot" lnClass="PTUV" lnInst="4" prefix="UV_"/>
              <FCDA daName="q" doName="Str" fc="ST" ldInst="Prot" lnClass="PTUV" lnInst="4" prefix="UV_"/>
              <FCDA daName="t" doName="Str" fc="ST" ldInst="Prot" lnClass="PTUV" lnInst="4" prefix="UV_"/>
              <FCDA daName="general" doName="Op" fc="ST" ldInst="Prot" lnClass="PTUV" lnInst="4" prefix="UV_"/>
              <FCDA daName="q" doName="Op" fc="ST" ldInst="Prot" lnClass="PTUV" lnInst="4" prefix="UV_"/>
              <FCDA daName="t" doName="Op" fc="ST" ldInst="Prot" lnClass="PTUV" lnInst="4" prefix="UV_"/>
            </DataSet>
            <ReportControl datSet="STAT3" name="brcbST_C" intgPd="0" buffered="true" bufTime="0" confRev="1" indexed="true" rptID="RPT_TSB5">
              <TrgOps dchg="true" qchg="true"/>
              <OptFields configRef="true" dataRef="true" dataSet="true" entryID="true" reasonCode="true" seqNum="true" timeStamp="true"/>
              <RptEnabled max="2"/>
            </ReportControl>
            <DOI name="Mod">
              <DAI name="ctlModel">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor">
                <Val>TOSHIBA</Val>
              </DAI>
              <DAI name="swRev">
                <Val>GS2RDIM1</Val>
              </DAI>
              <DAI name="d">
                <Val>no-data</Val>
              </DAI>
              <DAI name="configRev">
                <Val>no-data</Val>
              </DAI>
              <DAI name="ldNs">
                <Val>IEC 61850-7-4:2007</Val>
              </DAI>
            </DOI>
            <Inputs>
              <ExtRef daName="stVal" doName="Ind1" iedName="TXB_PU1_TOS_GRT" ldInst="System" lnClass="GGIO" lnInst="1" prefix="" serviceType="GOOSE" srcCBName="goST" srcLDInst="System" srcLNClass="LLN0"/>
              <ExtRef daName="q" doName="Ind1" iedName="TXB_PU1_TOS_GRT" ldInst="System" lnClass="GGIO" lnInst="1" prefix="" serviceType="GOOSE" srcCBName="goST" srcLDInst="System" srcLNClass="LLN0"/>
              <ExtRef daName="general" doName="Op" iedName="TXB_PU2_ABB_670" ldInst="CTRL" lnClass="PTRC" lnInst="1" prefix="SMP" serviceType="GOOSE" srcCBName="gcb2" srcLDInst="LD0" srcLNClass="LLN0"/>
              <ExtRef daName="general" doName="Tr" iedName="TXB_PU3_NR_978" ldInst="LD0" lnClass="PTRC" lnInst="1" prefix="GOOUT" serviceType="GOOSE" srcCBName="gocb0" srcLDInst="LD0" srcLNClass="LLN0"/>
              <ExtRef daName="stVal" doName="SPCSO1" iedName="B1_PU" ldInst="CTRL" lnClass="GGIO" lnInst="1" prefix="wf" serviceType="GOOSE" srcCBName="GoCB1" srcLDInst="CTRL" srcLNClass="LLN0"/>
              <ExtRef daName="q" doName="SPCSO1" iedName="B1_PU" ldInst="CTRL" lnClass="GGIO" lnInst="1" prefix="wf" serviceType="GOOSE" srcCBName="GoCB1" srcLDInst="CTRL" srcLNClass="LLN0"/>
              <ExtRef daName="general" doName="OpEx" iedName="B2_PU" ldInst="PROT" lnClass="RBRF" lnInst="1" prefix="" serviceType="GOOSE" srcCBName="gcb1" srcLDInst="PROT" srcLNClass="LLN0"/>
              <ExtRef daName="q" doName="OpEx" iedName="B2_PU" ldInst="PROT" lnClass="RBRF" lnInst="1" prefix="" serviceType="GOOSE" srcCBName="gcb1" srcLDInst="PROT" srcLNClass="LLN0"/>
            </Inputs>
            <GSEControl datSet="FAST_BB_BLK" name="goFBB_BLK" confRev="1" appID="Prot/LLN0/goFBB_BLK" fixedOffs="false" type="GOOSE">
              <IEDName apRef="P1" ldInst="CCTBRK" lnClass="XCBR" lnInst="12" prefix="CB_BT_">BT_BCU</IEDName>
              <IEDName apRef="AP" ldInst="Q" lnClass="XCBR" lnInst="1" prefix="CB_B1">B1_BCU</IEDName>
              <IEDName apRef="AP" ldInst="Q" lnClass="XCBR" lnInst="1" prefix="CB_B1">B2_BCU</IEDName>
            </GSEControl>
          </LN0>
          <LN lnType="LPHD_1$_a565f113-234d-4a42-932d-982ac0093d90" inst="1" lnClass="LPHD">
            <DOI name="PhyNam">
              <DAI name="vendor">
                <Val>TOSHIBA</Val>
              </DAI>
            </DOI>
            <DOI name="Proxy">
              <DAI name="stVal">
                <Val>False</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="PTOC_0$_3d4088e1-ff99-44cd-8bd2-1ff740224a02" inst="1" lnClass="PTOC" prefix="OC_">
            <DOI name="Str">
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="PTOC_0$_3d4088e1-ff99-44cd-8bd2-1ff740224a02" inst="2" lnClass="PTOC" prefix="OC_">
            <DOI name="Str">
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="PTOC_0$_3d4088e1-ff99-44cd-8bd2-1ff740224a02" inst="3" lnClass="PTOC" prefix="OC_">
            <DOI name="Str">
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="PTOC_0$_3d4088e1-ff99-44cd-8bd2-1ff740224a02" inst="4" lnClass="PTOC" prefix="OC_">
            <DOI name="Str">
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="PTUV_0$_61dea127-0953-4735-b05a-1a6ca1d3ebff" inst="1" lnClass="PTUV" prefix="UV_">
            <DOI name="Str">
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="PTUV_0$_61dea127-0953-4735-b05a-1a6ca1d3ebff" inst="2" lnClass="PTUV" prefix="UV_">
            <DOI name="Str">
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="PTUV_0$_61dea127-0953-4735-b05a-1a6ca1d3ebff" inst="3" lnClass="PTUV" prefix="UV_">
            <DOI name="Str">
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="PTUV_0$_61dea127-0953-4735-b05a-1a6ca1d3ebff" inst="4" lnClass="PTUV" prefix="UV_">
            <DOI name="Str">
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="RBRF_0$_e207b646-41df-4459-9a6f-dcfdddb186c0" inst="1" lnClass="RBRF" prefix="CBF_">
            <DOI name="Mod">
              <DAI name="ctlModel">
                <Val>status-only</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="PTRC_0$_b551f2ad-31ab-45cb-bb64-681c719006cc" inst="1" lnClass="PTRC" prefix="TRC_">
            <DOI name="Mod">
              <DAI name="ctlModel">
                <Val>status-only</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="RBRF_1$_33b5e508-bb4e-4cd5-b520-e88cab8be0b6" inst="2" lnClass="RBRF" prefix="CBF_">
            <DOI name="Mod">
              <DAI name="ctlModel">
                <Val>status-only</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
        <LDevice inst="Ctrl">
          <LN0 lnType="LLN0_1$_480d6d24-053d-41f6-99d9-9b42eefa3899" inst="" lnClass="LLN0">
            <DOI name="Mod">
              <DAI name="ctlModel">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="NamPlt">
              <DAI name="vendor">
                <Val>TOSHIBA</Val>
              </DAI>
              <DAI name="swRev">
                <Val>GS2RTIM1</Val>
              </DAI>
              <DAI name="d">
                <Val>no-data</Val>
              </DAI>
              <DAI name="configRev">
                <Val>no-data</Val>
              </DAI>
              <DAI name="ldNs">
                <Val>IEC 61850-7-4:2007</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnType="LPHD_1$_a565f113-234d-4a42-932d-982ac0093d90" inst="1" lnClass="LPHD" prefix="">
            <DOI name="PhyNam">
              <DAI name="vendor">
                <Val>TOSHIBA</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XCBR_0$_5f8a931e-eb89-45de-8142-d6ffb2ca3360" inst="1" lnClass="XCBR" prefix="">
            <DOI name="Mod">
              <DAI name="ctlModel">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="BlkOpn">
              <DAI name="ctlModel">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="BlkCls">
              <DAI name="ctlModel">
                <Val>status-only</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="CSWI_0$_c294415d-ca40-4ba1-9894-524d0b71fc22" inst="1" lnClass="CSWI" prefix="">
            <DOI name="Mod">
              <DAI name="ctlModel">
                <Val>status-only</Val>
              </DAI>
            </DOI>
            <DOI name="OpCntRs">
              <DAI name="ctlModel">
                <Val>direct-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="ctlModel">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout">
                <Val>30000</Val>
              </DAI>
              <DAI name="sboClass">
                <Val>operate-once</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
      </Server>
      <Services>
        <ClientServices bufReport="false" goose="true" gsse="false" readLog="false" sv="false" unbufReport="false">
          <TimeSyncProt sntp="true" c37_238="true"/>
        </ClientServices>
        <RedProt hsr="true" prp="true" rstp="true"/>
        <CommProt ipv6="false"/>
      </Services>
    </AccessPoint>
    <AccessPoint desc="Process_Bus" name="P2">
      <ServerAt apName="P1"/>
      <Services>
        <ClientServices bufReport="false" goose="true" gsse="false" readLog="false" sv="true" unbufReport="false">
          <TimeSyncProt sntp="true" c37_238="true"/>
        </ClientServices>
        <RedProt hsr="true" prp="true" rstp="false"/>
        <CommProt ipv6="false"/>
      </Services>
    </AccessPoint>
  </IED>
  <IED desc="Edition 2 - IEC Sampled Values Subscriber - ICD i009 - FW X590-V9 or Higher" configVersion="ICD-451-6S-i009-V0-Z590006-D20190909" manufacturer="SEL" originalSclRevision="B" originalSclVersion="2007" type="S451_SEL_451_6S" name="INCA_BCU">
    <Private type="SEL_IedInfo">
      <esel:ModelNumber>SEL-451-6S</esel:ModelNumber>
      <esel:ClassFileVersion>006</esel:ClassFileVersion>
      <esel:ClassFileDescription default="false">Edition 2 - IEC Sampled Values Subscriber - Firmware Revision X590-V9 or Higher. Not For Public Release.</esel:ClassFileDescription>
      <esel:IcdFilePath>C:\ProgramData\SEL\AcSELerator\Architect\ICD\0451_6S_006 I009.ICD</esel:IcdFilePath>
    </Private>
    <Private type="SEL_IedComm">
      <esel:MMS inactivityTimeout="900"/>
    </Private>
    <Private type="SEL_IedResources">
      <esel:InDigitals>
        <esel:InBits format="VB{0:D3}" min="1" max="256"/>
      </esel:InDigitals>
      <esel:InAnalogs>
        <esel:InFloat format="RA{0:D3}" min="1" max="256"/>
      </esel:InAnalogs>
      <esel:GooseRxFilter APPID="true" goCbRef="true" datSetRef="true" goId="true" confRev="true" ndsCom="true" test="true"/>
      <esel:GooseTx minMaxTime="4"/>
      <esel:GooseTx maxBoolData="512"/>
      <esel:SVRx max="7"/>
      <esel:SVRxAnalogChannels max="12"/>
      <esel:Reports maxDataSetSize="8000"/>
      <esel:System mmsAuthenticationSupported="true"/>
      <esel:System controllableModeSupported="true"/>
    </Private>
    <Private type="SEL_HostFile">
      <esel:host_file path="SETTINGS\" filename="SET_LCC.TXT" allowRemoval="false"><![CDATA[[LCC]
		"PROTSEL1","CSV01 := DSTRT OR NSTRT"
		"PROTSEL2","CSV02 := EN AND ROKA"
		"PROTSEL3","CSV03 := EN AND ROKB"
		"PROTSEL4","CSV04 := HIF1_A OR HIF1_B OR HIF1_C"
		"PROTSEL5","CSV05 := HIF2_A OR HIF2_B OR HIF2_C" 
		"PROTSEL6","CSV06 := 0"
		"PROTSEL7","CSV07 := NTUNE_A OR NTUNE_B OR NTUNE_C OR ITUNE_A OR ITUNE_B OR ITUNE_C"
		"PROTSEL8",""
		"PROTSEL9",""
		"PROTSEL10",""
		"PROTSEL11",""
		"PROTSEL12",""
		"PROTSEL13",""
		"PROTSEL14",""
		"PROTSEL15",""
		"PROTSEL16",""
		"PROTSEL17",""
		"PROTSEL18",""
		"PROTSEL19",""
		"PROTSEL20",""
		"PROTSEL21",""
		"PROTSEL22",""
		"PROTSEL23",""
		"PROTSEL24",""
		"PROTSEL25",""
		"PROTSEL26",""
		"PROTSEL27",""
		"PROTSEL28",""
		"PROTSEL29",""
		"PROTSEL30",""
		"PROTSEL31",""
		"PROTSEL32",""]]></esel:host_file>
    </Private>
    <Private type="SEL_OriginatorAccess">
      <esel:Originator category="0" allowed="1"/>
      <esel:Originator category="1" allowed="1"/>
      <esel:Originator category="2" allowed="1"/>
      <esel:Originator category="3" allowed="1"/>
      <esel:Originator category="4" allowed="1"/>
      <esel:Originator category="5" allowed="1"/>
      <esel:Originator category="6" allowed="1"/>
      <esel:Originator category="7" allowed="1"/>
      <esel:Originator category="8" allowed="1"/>
    </Private>
    <Private type="SEL_SVSubscription"/>
    <Private type="SEL_GooseSubscription"/>
    <Services nameLength="64">
      <DynAssociation max="7"/>
      <SettingGroups/>
      <GetDirectory/>
      <GetDataObjectDefinition/>
      <DataObjectDirectory/>
      <GetDataSetValue/>
      <DataSetDirectory/>
      <ConfDataSet max="22" maxAttributes="200"/>
      <ReadWrite/>
      <ConfReportControl max="14" bufConf="true" bufMode="both"/>
      <GetCBValues/>
      <ReportSettings cbName="Conf" datSet="Conf" bufTime="Dyn" intgPd="Dyn" optFields="Dyn" rptID="Dyn" trgOps="Dyn"/>
      <GSESettings cbName="Conf" datSet="Conf" appID="Conf"/>
      <SMVSettings cbName="Conf" datSet="Conf" svID="Conf">
        <SmpRate>80</SmpRate>
      </SMVSettings>
      <GOOSE max="8"/>
      <SMVsc max="0"/>
      <FileHandling ftp="true"/>
      <ConfLNs/>
      <ClientServices goose="true" maxGOOSE="128" maxSMV="7" sv="true">
        <TimeSyncProt c37_238="true" other="true"/>
      </ClientServices>
      <SupSubscription maxGo="5" maxSv="5"/>
      <RedProt prp="true"/>
    </Services>
    <AccessPoint name="S1">
      <Server>
        <Authentication/>
        <LDevice desc="Data Sets, BRCBs, URCBs" inst="CFG">
          <LN0 lnType="LN0_Root$_a7d56aaf-9bc3-402f-a77f-cef8beb58a55" inst="" lnClass="LLN0">
            <DataSet name="ds_rcb1">
              <FCDA doName="Loc" fc="ST" ldInst="PRO" lnClass="XSWI" lnInst="2" prefix="DC2"/>
              <FCDA doName="Pos" fc="ST" ldInst="PRO" lnClass="XSWI" lnInst="2" prefix="DC2"/>
              <FCDA doName="OpCnt" fc="ST" ldInst="PRO" lnClass="XSWI" lnInst="2" prefix="DC2"/>
              <FCDA doName="Loc" fc="ST" ldInst="PRO" lnClass="XCBR" lnInst="1" prefix="BK1"/>
              <FCDA doName="Pos" fc="ST" ldInst="PRO" lnClass="XCBR" lnInst="1" prefix="BK1"/>
              <FCDA doName="OpCnt" fc="ST" ldInst="PRO" lnClass="XCBR" lnInst="1" prefix="BK1"/>
              <FCDA doName="Loc" fc="ST" ldInst="PRO" lnClass="XSWI" lnInst="1" prefix="DC1"/>
              <FCDA doName="Pos" fc="ST" ldInst="PRO" lnClass="XSWI" lnInst="1" prefix="DC1"/>
              <FCDA doName="OpCnt" fc="ST" ldInst="PRO" lnClass="XSWI" lnInst="1" prefix="DC1"/>
              <FCDA doName="Loc" fc="ST" ldInst="PRO" lnClass="XSWI" lnInst="3" prefix="DC3"/>
              <FCDA doName="Pos" fc="ST" ldInst="PRO" lnClass="XSWI" lnInst="3" prefix="DC3"/>
              <FCDA doName="OpCnt" fc="ST" ldInst="PRO" lnClass="XSWI" lnInst="3" prefix="DC3"/>
              <FCDA doName="Str" fc="ST" ldInst="PRO" lnClass="PTOC" lnInst="13" prefix="S1"/>
              <FCDA doName="Op" fc="ST" ldInst="PRO" lnClass="PTOC" lnInst="13" prefix="S1"/>
              <FCDA doName="Str" fc="ST" ldInst="PRO" lnClass="PTOC" lnInst="14" prefix="S2"/>
              <FCDA doName="Op" fc="ST" ldInst="PRO" lnClass="PTOC" lnInst="14" prefix="S2"/>
              <FCDA doName="Str" fc="ST" ldInst="PRO" lnClass="PTOC" lnInst="15" prefix="S3"/>
              <FCDA doName="Op" fc="ST" ldInst="PRO" lnClass="PTOC" lnInst="15" prefix="S3"/>
              <FCDA doName="Tr" fc="ST" ldInst="PRO" lnClass="PTRC" lnInst="1" prefix="TRIP"/>
              <FCDA doName="Str" fc="ST" ldInst="PRO" lnClass="RBRF" lnInst="1" prefix="BFR1"/>
              <FCDA doName="OpEx" fc="ST" ldInst="PRO" lnClass="RBRF" lnInst="1" prefix="BFR1"/>
            </DataSet>
            <DataSet name="ds_rcb2">
              <FCDA doName="Pos" fc="CF" ldInst="PRO" lnClass="XSWI" lnInst="2" prefix="DC2"/>
              <FCDA doName="BlkOpn" fc="CF" ldInst="PRO" lnClass="XSWI" lnInst="2" prefix="DC2"/>
              <FCDA doName="BlkCls" fc="CF" ldInst="PRO" lnClass="XSWI" lnInst="2" prefix="DC2"/>
              <FCDA doName="BlkOpn" fc="CF" ldInst="PRO" lnClass="XCBR" lnInst="1" prefix="BK1"/>
              <FCDA doName="BlkCls" fc="CF" ldInst="PRO" lnClass="XCBR" lnInst="1" prefix="BK1"/>
              <FCDA doName="Pos" fc="CF" ldInst="PRO" lnClass="XSWI" lnInst="1" prefix="DC1"/>
              <FCDA doName="BlkOpn" fc="CF" ldInst="PRO" lnClass="XSWI" lnInst="1" prefix="DC1"/>
              <FCDA doName="BlkCls" fc="CF" ldInst="PRO" lnClass="XSWI" lnInst="1" prefix="DC1"/>
              <FCDA doName="Pos" fc="CF" ldInst="PRO" lnClass="XSWI" lnInst="3" prefix="DC3"/>
              <FCDA doName="BlkOpn" fc="CF" ldInst="PRO" lnClass="XSWI" lnInst="3" prefix="DC3"/>
              <FCDA doName="BlkCls" fc="CF" ldInst="PRO" lnClass="XSWI" lnInst="3" prefix="DC3"/>
            </DataSet>
            <DataSet name="ds_gcb1">
              <FCDA daName="general" doName="OpEx" fc="ST" ldInst="PRO" lnClass="RBRF" lnInst="1" prefix="BFR1"/>
              <FCDA daName="q" doName="OpEx" fc="ST" ldInst="PRO" lnClass="RBRF" lnInst="1" prefix="BFR1"/>
            </DataSet>
            <DataSet name="ds_gcb2">
              <FCDA daName="general" doName="Tr" fc="ST" ldInst="PRO" lnClass="PTRC" lnInst="1" prefix="TRIP"/>
              <FCDA daName="q" doName="Tr" fc="ST" ldInst="PRO" lnClass="PTRC" lnInst="1" prefix="TRIP"/>
            </DataSet>
            <DataSet name="ds_gcb3">
              <FCDA daName="stVal" doName="Pos" fc="ST" ldInst="PRO" lnClass="XCBR" lnInst="1" prefix="BK1"/>
              <FCDA daName="q" doName="Pos" fc="ST" ldInst="PRO" lnClass="XCBR" lnInst="1" prefix="BK1"/>
            </DataSet>
            <ReportControl desc="Created by HELINKS STS" datSet="ds_rcb1" name="rcb1" intgPd="0" buffered="true" bufTime="100" confRev="10000" indexed="false" rptID="INCA_BCUCFG/LLN0.rcb1">
              <TrgOps dchg="true" dupd="false" gi="true" period="false" qchg="true"/>
              <OptFields bufOvfl="true" configRef="true" dataRef="false" dataSet="true" entryID="false" reasonCode="false" seqNum="true" timeStamp="true"/>
              <RptEnabled max="1">
                <ClientLN apRef="AP1" iedName="SISCO_CLIENT" ldInst="LD0" prefix="" lnClass="IHMI" lnInst="1"/>
              </RptEnabled>
            </ReportControl>
            <ReportControl desc="Created by HELINKS STS" datSet="ds_rcb1" name="rcb2" intgPd="0" buffered="true" bufTime="100" confRev="10000" indexed="false" rptID="INCA_BCUCFG/LLN0.rcb2">
              <TrgOps dchg="true" dupd="false" gi="true" period="false" qchg="true"/>
              <OptFields bufOvfl="true" configRef="true" dataRef="false" dataSet="true" entryID="false" reasonCode="false" seqNum="true" timeStamp="true"/>
              <RptEnabled max="7">
                <ClientLN apRef="S1" iedName="NOVATECH_ORION_CLIENT" ldInst="LD0" prefix="" lnClass="ITCI" lnInst="1"/>
                <ClientLN apRef="AP" iedName="ARC_CLIENT_2" ldInst="LD0" prefix="" lnClass="IHMI" lnInst="1"/>
                <ClientLN apRef="AP1" iedName="SISCO_SEC_CLIENT" ldInst="LD0" prefix="" lnClass="IHMI" lnInst="1"/>
                <ClientLN apRef="AP1" iedName="SISCO_GOOSEMON" ldInst="LD0" prefix="" lnClass="IHMI" lnInst="1"/>
                <ClientLN apRef="AP" iedName="TMW_CLIENT" ldInst="LD0" prefix="" lnClass="IHMI" lnInst="1"/>
                <ClientLN apRef="accessPoint1" iedName="ASE_CLIENT" ldInst="LD0" prefix="" lnClass="IHMI" lnInst="1"/>
                <ClientLN apRef="S1" iedName="SIFANG_CSD_CLIENT" ldInst="LD0" prefix="" lnClass="IHMI" lnInst="1"/>
              </RptEnabled>
            </ReportControl>
            <ReportControl desc="Created by HELINKS STS" datSet="ds_rcb2" name="rcb3" intgPd="0" buffered="false" bufTime="0" confRev="10000" indexed="false" rptID="INCA_BCUCFG/LLN0.rcb3">
              <TrgOps dchg="true" dupd="false" gi="true" period="false" qchg="true"/>
              <OptFields configRef="true" dataRef="false" dataSet="true" entryID="false" reasonCode="false" seqNum="false" timeStamp="true"/>
              <RptEnabled max="1">
                <ClientLN apRef="AP1" iedName="SISCO_CLIENT" ldInst="LD0" prefix="" lnClass="IHMI" lnInst="1"/>
              </RptEnabled>
            </ReportControl>
            <ReportControl desc="Created by HELINKS STS" datSet="ds_rcb2" name="rcb4" intgPd="0" buffered="false" bufTime="0" confRev="10000" indexed="false" rptID="INCA_BCUCFG/LLN0.rcb4">
              <TrgOps dchg="true" dupd="false" gi="true" period="false" qchg="true"/>
              <OptFields configRef="true" dataRef="false" dataSet="true" entryID="false" reasonCode="false" seqNum="false" timeStamp="true"/>
              <RptEnabled max="5">
                <ClientLN apRef="S1" iedName="NOVATECH_ORION_CLIENT" ldInst="LD0" prefix="" lnClass="ITCI" lnInst="1"/>
                <ClientLN apRef="AP" iedName="ARC_CLIENT_2" ldInst="LD0" prefix="" lnClass="IHMI" lnInst="1"/>
                <ClientLN apRef="AP1" iedName="SISCO_SEC_CLIENT" ldInst="LD0" prefix="" lnClass="IHMI" lnInst="1"/>
                <ClientLN apRef="AP1" iedName="SISCO_GOOSEMON" ldInst="LD0" prefix="" lnClass="IHMI" lnInst="1"/>
                <ClientLN apRef="AP" iedName="TMW_CLIENT" ldInst="LD0" prefix="" lnClass="IHMI" lnInst="1"/>
              </RptEnabled>
            </ReportControl>
            <DOI name="NamPlt">
              <DAI name="d">
                <Val>Config</Val>
              </DAI>
            </DOI>
            <Inputs>
              <ExtRef daName="instMag.i" desc="IAW" doName="AmpSv" iedName="INCA_MU" intAddr="IAW" ldInst="CT1" lnClass="TCTR" lnInst="1" prefix="I01A" serviceType="SMV" srcCBName="MSVCB01" srcLDInst="MU01" srcLNClass="LLN0"/>
              <ExtRef desc="IAW sum = IAW + IAW_2 + IAW_3" intAddr="IAW_2" serviceType="GOOSE"/>
              <ExtRef desc="IAW sum = IAW + IAW_2 + IAW_3" intAddr="IAW_3" serviceType="GOOSE"/>
              <ExtRef daName="instMag.i" desc="IBW" doName="AmpSv" iedName="INCA_MU" intAddr="IBW" ldInst="CT1" lnClass="TCTR" lnInst="2" prefix="I01B" serviceType="SMV" srcCBName="MSVCB01" srcLDInst="MU01" srcLNClass="LLN0"/>
              <ExtRef desc="IBW sum = IBW + IBW_2 + IBW_3" intAddr="IBW_2" serviceType="GOOSE"/>
              <ExtRef desc="IBW sum = IBW + IBW_2 + IBW_3" intAddr="IBW_3" serviceType="GOOSE"/>
              <ExtRef daName="instMag.i" desc="ICW" doName="AmpSv" iedName="INCA_MU" intAddr="ICW" ldInst="CT1" lnClass="TCTR" lnInst="3" prefix="I01C" serviceType="SMV" srcCBName="MSVCB01" srcLDInst="MU01" srcLNClass="LLN0"/>
              <ExtRef desc="ICW sum = ICW + ICW_2 + ICW_3" intAddr="ICW_2" serviceType="GOOSE"/>
              <ExtRef desc="ICW sum = ICW + ICW_2 + ICW_3" intAddr="ICW_3" serviceType="SMV"/>
              <ExtRef desc="IAX" intAddr="IAX" serviceType="SMV"/>
              <ExtRef desc="IAX sum = IAX + IAX_2 + IAX_3" intAddr="IAX_2" serviceType="SMV"/>
              <ExtRef desc="IAX sum = IAX + IAX_2 + IAX_3" intAddr="IAX_3" serviceType="SMV"/>
              <ExtRef desc="IBX" intAddr="IBX" serviceType="SMV"/>
              <ExtRef desc="IBX sum = IBX + IBX_2 + IBX_3" intAddr="IBX_2" serviceType="SMV"/>
              <ExtRef desc="IBX sum = IBX + IBX_2 + IBX_3" intAddr="IBX_3" serviceType="SMV"/>
              <ExtRef desc="ICX" intAddr="ICX" serviceType="SMV"/>
              <ExtRef desc="ICX sum = ICX + ICX_2 + ICX_3" intAddr="ICX_2" serviceType="SMV"/>
              <ExtRef desc="ICX sum = ICX + ICX_2 + ICX_3" intAddr="ICX_3" serviceType="SMV"/>
              <ExtRef daName="instMag.i" desc="VAY" doName="VolSv" iedName="INCA_MU" intAddr="VAY" ldInst="VT1" lnClass="TVTR" lnInst="1" prefix="U01A" serviceType="SMV" srcCBName="MSVCB01" srcLDInst="MU01" srcLNClass="LLN0"/>
              <ExtRef daName="instMag.i" desc="VBY" doName="VolSv" iedName="INCA_MU" intAddr="VBY" ldInst="VT1" lnClass="TVTR" lnInst="2" prefix="U01B" serviceType="SMV" srcCBName="MSVCB01" srcLDInst="MU01" srcLNClass="LLN0"/>
              <ExtRef daName="instMag.i" desc="VCY" doName="VolSv" iedName="INCA_MU" intAddr="VCY" ldInst="VT1" lnClass="TVTR" lnInst="3" prefix="U01C" serviceType="SMV" srcCBName="MSVCB01" srcLDInst="MU01" srcLNClass="LLN0"/>
              <ExtRef desc="VAZ" intAddr="VAZ" serviceType="SMV"/>
              <ExtRef desc="VBZ" intAddr="VBZ" serviceType="SMV"/>
              <ExtRef desc="VCZ" intAddr="VCZ" serviceType="SMV"/>
              <ExtRef intAddr="VB001" serviceType="GOOSE"/>
              <ExtRef intAddr="VB002" serviceType="GOOSE"/>
              <ExtRef intAddr="VB003" serviceType="GOOSE"/>
              <ExtRef intAddr="VB004" serviceType="GOOSE"/>
              <ExtRef intAddr="VB005" serviceType="GOOSE"/>
              <ExtRef intAddr="VB006" serviceType="GOOSE"/>
              <ExtRef intAddr="VB007" serviceType="GOOSE"/>
              <ExtRef intAddr="VB008" serviceType="GOOSE"/>
              <ExtRef intAddr="VB009" serviceType="GOOSE"/>
              <ExtRef intAddr="VB010" serviceType="GOOSE"/>
              <ExtRef daName="general" doName="OpEx" iedName="A1_BCU_PU" intAddr="VB011|q=0x1807" ldInst="Prot" lnClass="RBRF" lnInst="1" prefix="BkrFa" serviceType="GOOSE" srcCBName="GoCB01" srcLDInst="Master" srcLNClass="LLN0"/>
              <ExtRef intAddr="VB012" serviceType="GOOSE"/>
              <ExtRef daName="general" doName="OpEx" iedName="A2_BCU_PU" intAddr="VB013|q=0x1807" ldInst="LD1" lnClass="RBRF" lnInst="1" prefix="" serviceType="GOOSE" srcCBName="gcb1" srcLDInst="LD1" srcLNClass="LLN0"/>
              <ExtRef intAddr="VB014" serviceType="GOOSE"/>
              <ExtRef daName="general" doName="OpEx" iedName="XF_BCU_PU" intAddr="VB015|q=0x1807" ldInst="PRO" lnClass="RBRF" lnInst="1" prefix="BFR1" serviceType="GOOSE" srcCBName="gcb1" srcLDInst="CFG" srcLNClass="LLN0"/>
              <ExtRef intAddr="VB016" serviceType="GOOSE"/>
              <ExtRef daName="general" doName="OpEx" iedName="BT_PU" intAddr="VB017|q=0x1807" ldInst="PROT" lnClass="RBRF" lnInst="1" prefix="" serviceType="GOOSE" srcCBName="gcb1" srcLDInst="PROT" srcLNClass="LLN0"/>
              <ExtRef intAddr="VB018" serviceType="GOOSE"/>
              <ExtRef daName="general" doName="Str" iedName="A1_BCU_PU" intAddr="VB019|q=0x1807" ldInst="Prot" lnClass="PTOC" lnInst="1" prefix="PhsToc" serviceType="GOOSE" srcCBName="GoCB02" srcLDInst="Master" srcLNClass="LLN0"/>
              <ExtRef intAddr="VB020" serviceType="GOOSE"/>
              <ExtRef daName="general" doName="Str" iedName="A2_BCU_PU" intAddr="VB021|q=0x1807" ldInst="LD1" lnClass="PTOC" lnInst="2" prefix="" serviceType="GOOSE" srcCBName="gcb2" srcLDInst="LD1" srcLNClass="LLN0"/>
              <ExtRef intAddr="VB022" serviceType="GOOSE"/>
              <ExtRef daName="general" doName="Str" iedName="XF_BCU_PU" intAddr="VB023|q=0x1807" ldInst="PRO" lnClass="PIOC" lnInst="1" prefix="P1T" serviceType="GOOSE" srcCBName="gcb2" srcLDInst="CFG" srcLNClass="LLN0"/>
              <ExtRef intAddr="VB024" serviceType="GOOSE"/>
              <ExtRef daName="general" doName="Str" iedName="BT_PU" intAddr="VB025|q=0x1807" ldInst="PROT" lnClass="PTOC" lnInst="1" prefix="P51_" serviceType="GOOSE" srcCBName="gcb2" srcLDInst="PROT" srcLNClass="LLN0"/>
              <ExtRef intAddr="VB026" serviceType="GOOSE"/>
              <ExtRef daName="general" desc="" doName="OpEx" iedName="TXA_PU1_SEL_487E" intAddr="VB027|q=0x1807" ldInst="PRO" lnClass="RBRF" lnInst="1" prefix="BFRS" serviceType="GOOSE" srcCBName="gcb2" srcLDInst="CFG" srcLNClass="LLN0"/>
              <ExtRef intAddr="VB028" serviceType="GOOSE"/>
              <ExtRef daName="general" desc="" doName="Tr" iedName="TXA_PU1_SEL_487E" intAddr="VB029|q=0x1807" ldInst="PRO" lnClass="PTRC" lnInst="1" prefix="TRIP" serviceType="GOOSE" srcCBName="gcb1" srcLDInst="CFG" srcLNClass="LLN0"/>
              <ExtRef intAddr="VB030" serviceType="GOOSE"/>
              <ExtRef daName="general" desc="" doName="Tr" iedName="TXA_PU3_SIE_7UT8" intAddr="VB031|q=0x1807" ldInst="CB1" lnClass="PTRC" lnInst="1" prefix="" serviceType="GOOSE" srcCBName="gcb1" srcLDInst="Application" srcLNClass="LLN0"/>
              <ExtRef intAddr="VB032" serviceType="GOOSE"/>
              <ExtRef daName="general" desc="" doName="OpEx" iedName="TXA_PU3_SIE_7UT8" intAddr="VB033|q=0x1807" ldInst="CB1" lnClass="RBRF" lnInst="1" prefix="" serviceType="GOOSE" srcCBName="gcb2" srcLDInst="Application" srcLNClass="LLN0"/>
              <ExtRef intAddr="VB034" serviceType="GOOSE"/>
              <ExtRef intAddr="VB035" serviceType="GOOSE"/>
              <ExtRef intAddr="VB036" serviceType="GOOSE"/>
              <ExtRef intAddr="VB037" serviceType="GOOSE"/>
              <ExtRef intAddr="VB038" serviceType="GOOSE"/>
              <ExtRef intAddr="VB039" serviceType="GOOSE"/>
              <ExtRef intAddr="VB040" serviceType="GOOSE"/>
              <ExtRef intAddr="VB041" serviceType="GOOSE"/>
              <ExtRef intAddr="VB042" serviceType="GOOSE"/>
              <ExtRef intAddr="VB043" serviceType="GOOSE"/>
              <ExtRef intAddr="VB044" serviceType="GOOSE"/>
              <ExtRef intAddr="VB045" serviceType="GOOSE"/>
              <ExtRef intAddr="VB046" serviceType="GOOSE"/>
              <ExtRef intAddr="VB047" serviceType="GOOSE"/>
              <ExtRef intAddr="VB048" serviceType="GOOSE"/>
              <ExtRef intAddr="VB049" serviceType="GOOSE"/>
              <ExtRef intAddr="VB050" serviceType="GOOSE"/>
              <ExtRef intAddr="VB051" serviceType="GOOSE"/>
              <ExtRef intAddr="VB052" serviceType="GOOSE"/>
              <ExtRef intAddr="VB053" serviceType="GOOSE"/>
              <ExtRef intAddr="VB054" serviceType="GOOSE"/>
              <ExtRef intAddr="VB055" serviceType="GOOSE"/>
              <ExtRef intAddr="VB056" serviceType="GOOSE"/>
              <ExtRef intAddr="VB057" serviceType="GOOSE"/>
              <ExtRef intAddr="VB058" serviceType="GOOSE"/>
              <ExtRef intAddr="VB059" serviceType="GOOSE"/>
              <ExtRef intAddr="VB060" serviceType="GOOSE"/>
              <ExtRef intAddr="VB061" serviceType="GOOSE"/>
              <ExtRef intAddr="VB062" serviceType="GOOSE"/>
              <ExtRef intAddr="VB063" serviceType="GOOSE"/>
              <ExtRef intAddr="VB064" serviceType="GOOSE"/>
              <ExtRef intAddr="VB065" serviceType="GOOSE"/>
              <ExtRef intAddr="VB066" serviceType="GOOSE"/>
              <ExtRef intAddr="VB067" serviceType="GOOSE"/>
              <ExtRef intAddr="VB068" serviceType="GOOSE"/>
              <ExtRef intAddr="VB069" serviceType="GOOSE"/>
              <ExtRef intAddr="VB070" serviceType="GOOSE"/>
              <ExtRef intAddr="VB071" serviceType="GOOSE"/>
              <ExtRef intAddr="VB072" serviceType="GOOSE"/>
              <ExtRef intAddr="VB073" serviceType="GOOSE"/>
              <ExtRef intAddr="VB074" serviceType="GOOSE"/>
              <ExtRef intAddr="VB075" serviceType="GOOSE"/>
              <ExtRef intAddr="VB076" serviceType="GOOSE"/>
              <ExtRef intAddr="VB077" serviceType="GOOSE"/>
              <ExtRef intAddr="VB078" serviceType="GOOSE"/>
              <ExtRef intAddr="VB079" serviceType="GOOSE"/>
              <ExtRef intAddr="VB080" serviceType="GOOSE"/>
              <ExtRef intAddr="VB081" serviceType="GOOSE"/>
              <ExtRef intAddr="VB082" serviceType="GOOSE"/>
              <ExtRef intAddr="VB083" serviceType="GOOSE"/>
              <ExtRef intAddr="VB084" serviceType="GOOSE"/>
              <ExtRef intAddr="VB085" serviceType="GOOSE"/>
              <ExtRef intAddr="VB086" serviceType="GOOSE"/>
              <ExtRef intAddr="VB087" serviceType="GOOSE"/>
              <ExtRef intAddr="VB088" serviceType="GOOSE"/>
              <ExtRef intAddr="VB089" serviceType="GOOSE"/>
              <ExtRef intAddr="VB090" serviceType="GOOSE"/>
              <ExtRef intAddr="VB091" serviceType="GOOSE"/>
              <ExtRef intAddr="VB092" serviceType="GOOSE"/>
              <ExtRef intAddr="VB093" serviceType="GOOSE"/>
              <ExtRef intAddr="VB094" serviceType="GOOSE"/>
              <ExtRef intAddr="VB095" serviceType="GOOSE"/>
              <ExtRef intAddr="VB096" serviceType="GOOSE"/>
              <ExtRef intAddr="VB097" serviceType="GOOSE"/>
              <ExtRef intAddr="VB098" serviceType="GOOSE"/>
              <ExtRef intAddr="VB099" serviceType="GOOSE"/>
              <ExtRef intAddr="VB100" serviceType="GOOSE"/>
              <ExtRef intAddr="VB101" serviceType="GOOSE"/>
              <ExtRef intAddr="VB102" serviceType="GOOSE"/>
              <ExtRef intAddr="VB103" serviceType="GOOSE"/>
              <ExtRef intAddr="VB104" serviceType="GOOSE"/>
              <ExtRef intAddr="VB105" serviceType="GOOSE"/>
              <ExtRef intAddr="VB106" serviceType="GOOSE"/>
              <ExtRef intAddr="VB107" serviceType="GOOSE"/>
              <ExtRef intAddr="VB108" serviceType="GOOSE"/>
              <ExtRef intAddr="VB109" serviceType="GOOSE"/>
              <ExtRef intAddr="VB110" serviceType="GOOSE"/>
              <ExtRef intAddr="VB111" serviceType="GOOSE"/>
              <ExtRef intAddr="VB112" serviceType="GOOSE"/>
              <ExtRef intAddr="VB113" serviceType="GOOSE"/>
              <ExtRef intAddr="VB114" serviceType="GOOSE"/>
              <ExtRef intAddr="VB115" serviceType="GOOSE"/>
              <ExtRef intAddr="VB116" serviceType="GOOSE"/>
              <ExtRef intAddr="VB117" serviceType="GOOSE"/>
              <ExtRef intAddr="VB118" serviceType="GOOSE"/>
              <ExtRef intAddr="VB119" serviceType="GOOSE"/>
              <ExtRef intAddr="VB120" serviceType="GOOSE"/>
              <ExtRef intAddr="VB121" serviceType="GOOSE"/>
              <ExtRef intAddr="VB122" serviceType="GOOSE"/>
              <ExtRef intAddr="VB123" serviceType="GOOSE"/>
              <ExtRef intAddr="VB124" serviceType="GOOSE"/>
              <ExtRef intAddr="VB125" serviceType="GOOSE"/>
              <ExtRef intAddr="VB126" serviceType="GOOSE"/>
              <ExtRef intAddr="VB127" serviceType="GOOSE"/>
              <ExtRef intAddr="VB128" serviceType="GOOSE"/>
              <ExtRef intAddr="VB129" serviceType="GOOSE"/>
              <ExtRef intAddr="VB130" serviceType="GOOSE"/>
              <ExtRef intAddr="VB131" serviceType="GOOSE"/>
              <ExtRef intAddr="VB132" serviceType="GOOSE"/>
              <ExtRef intAddr="VB133" serviceType="GOOSE"/>
              <ExtRef intAddr="VB134" serviceType="GOOSE"/>
              <ExtRef intAddr="VB135" serviceType="GOOSE"/>
              <ExtRef intAddr="VB136" serviceType="GOOSE"/>
              <ExtRef intAddr="VB137" serviceType="GOOSE"/>
              <ExtRef intAddr="VB138" serviceType="GOOSE"/>
              <ExtRef intAddr="VB139" serviceType="GOOSE"/>
              <ExtRef intAddr="VB140" serviceType="GOOSE"/>
              <ExtRef intAddr="VB141" serviceType="GOOSE"/>
              <ExtRef intAddr="VB142" serviceType="GOOSE"/>
              <ExtRef intAddr="VB143" serviceType="GOOSE"/>
              <ExtRef intAddr="VB144" serviceType="GOOSE"/>
              <ExtRef intAddr="VB145" serviceType="GOOSE"/>
              <ExtRef intAddr="VB146" serviceType="GOOSE"/>
              <ExtRef intAddr="VB147" serviceType="GOOSE"/>
              <ExtRef intAddr="VB148" serviceType="GOOSE"/>
              <ExtRef intAddr="VB149" serviceType="GOOSE"/>
              <ExtRef intAddr="VB150" serviceType="GOOSE"/>
              <ExtRef intAddr="VB151" serviceType="GOOSE"/>
              <ExtRef intAddr="VB152" serviceType="GOOSE"/>
              <ExtRef intAddr="VB153" serviceType="GOOSE"/>
              <ExtRef intAddr="VB154" serviceType="GOOSE"/>
              <ExtRef intAddr="VB155" serviceType="GOOSE"/>
              <ExtRef intAddr="VB156" serviceType="GOOSE"/>
              <ExtRef intAddr="VB157" serviceType="GOOSE"/>
              <ExtRef intAddr="VB158" serviceType="GOOSE"/>
              <ExtRef intAddr="VB159" serviceType="GOOSE"/>
              <ExtRef intAddr="VB160" serviceType="GOOSE"/>
              <ExtRef intAddr="VB161" serviceType="GOOSE"/>
              <ExtRef intAddr="VB162" serviceType="GOOSE"/>
              <ExtRef intAddr="VB163" serviceType="GOOSE"/>
              <ExtRef intAddr="VB164" serviceType="GOOSE"/>
              <ExtRef intAddr="VB165" serviceType="GOOSE"/>
              <ExtRef intAddr="VB166" serviceType="GOOSE"/>
              <ExtRef intAddr="VB167" serviceType="GOOSE"/>
              <ExtRef intAddr="VB168" serviceType="GOOSE"/>
              <ExtRef intAddr="VB169" serviceType="GOOSE"/>
              <ExtRef intAddr="VB170" serviceType="GOOSE"/>
              <ExtRef intAddr="VB171" serviceType="GOOSE"/>
              <ExtRef intAddr="VB172" serviceType="GOOSE"/>
              <ExtRef intAddr="VB173" serviceType="GOOSE"/>
              <ExtRef intAddr="VB174" serviceType="GOOSE"/>
              <ExtRef intAddr="VB175" serviceType="GOOSE"/>
              <ExtRef intAddr="VB176" serviceType="GOOSE"/>
              <ExtRef intAddr="VB177" serviceType="GOOSE"/>
              <ExtRef intAddr="VB178" serviceType="GOOSE"/>
              <ExtRef intAddr="VB179" serviceType="GOOSE"/>
              <ExtRef intAddr="VB180" serviceType="GOOSE"/>
              <ExtRef intAddr="VB181" serviceType="GOOSE"/>
              <ExtRef intAddr="VB182" serviceType="GOOSE"/>
              <ExtRef intAddr="VB183" serviceType="GOOSE"/>
              <ExtRef intAddr="VB184" serviceType="GOOSE"/>
              <ExtRef intAddr="VB185" serviceType="GOOSE"/>
              <ExtRef intAddr="VB186" serviceType="GOOSE"/>
              <ExtRef intAddr="VB187" serviceType="GOOSE"/>
              <ExtRef intAddr="VB188" serviceType="GOOSE"/>
              <ExtRef intAddr="VB189" serviceType="GOOSE"/>
              <ExtRef intAddr="VB190" serviceType="GOOSE"/>
              <ExtRef intAddr="VB191" serviceType="GOOSE"/>
              <ExtRef intAddr="VB192" serviceType="GOOSE"/>
              <ExtRef intAddr="VB193" serviceType="GOOSE"/>
              <ExtRef intAddr="VB194" serviceType="GOOSE"/>
              <ExtRef intAddr="VB195" serviceType="GOOSE"/>
              <ExtRef intAddr="VB196" serviceType="GOOSE"/>
              <ExtRef intAddr="VB197" serviceType="GOOSE"/>
              <ExtRef intAddr="VB198" serviceType="GOOSE"/>
              <ExtRef intAddr="VB199" serviceType="GOOSE"/>
              <ExtRef intAddr="VB200" serviceType="GOOSE"/>
              <ExtRef intAddr="VB201" serviceType="GOOSE"/>
              <ExtRef intAddr="VB202" serviceType="GOOSE"/>
              <ExtRef intAddr="VB203" serviceType="GOOSE"/>
              <ExtRef intAddr="VB204" serviceType="GOOSE"/>
              <ExtRef intAddr="VB205" serviceType="GOOSE"/>
              <ExtRef intAddr="VB206" serviceType="GOOSE"/>
              <ExtRef intAddr="VB207" serviceType="GOOSE"/>
              <ExtRef intAddr="VB208" serviceType="GOOSE"/>
              <ExtRef intAddr="VB209" serviceType="GOOSE"/>
              <ExtRef intAddr="VB210" serviceType="GOOSE"/>
              <ExtRef intAddr="VB211" serviceType="GOOSE"/>
              <ExtRef intAddr="VB212" serviceType="GOOSE"/>
              <ExtRef intAddr="VB213" serviceType="GOOSE"/>
              <ExtRef intAddr="VB214" serviceType="GOOSE"/>
              <ExtRef intAddr="VB215" serviceType="GOOSE"/>
              <ExtRef intAddr="VB216" serviceType="GOOSE"/>
              <ExtRef intAddr="VB217" serviceType="GOOSE"/>
              <ExtRef intAddr="VB218" serviceType="GOOSE"/>
              <ExtRef intAddr="VB219" serviceType="GOOSE"/>
              <ExtRef intAddr="VB220" serviceType="GOOSE"/>
              <ExtRef intAddr="VB221" serviceType="GOOSE"/>
              <ExtRef intAddr="VB222" serviceType="GOOSE"/>
              <ExtRef intAddr="VB223" serviceType="GOOSE"/>
              <ExtRef intAddr="VB224" serviceType="GOOSE"/>
              <ExtRef intAddr="VB225" serviceType="GOOSE"/>
              <ExtRef intAddr="VB226" serviceType="GOOSE"/>
              <ExtRef intAddr="VB227" serviceType="GOOSE"/>
              <ExtRef intAddr="VB228" serviceType="GOOSE"/>
              <ExtRef intAddr="VB229" serviceType="GOOSE"/>
              <ExtRef intAddr="VB230" serviceType="GOOSE"/>
              <ExtRef intAddr="VB231" serviceType="GOOSE"/>
              <ExtRef intAddr="VB232" serviceType="GOOSE"/>
              <ExtRef intAddr="VB233" serviceType="GOOSE"/>
              <ExtRef intAddr="VB234" serviceType="GOOSE"/>
              <ExtRef intAddr="VB235" serviceType="GOOSE"/>
              <ExtRef intAddr="VB236" serviceType="GOOSE"/>
              <ExtRef intAddr="VB237" serviceType="GOOSE"/>
              <ExtRef intAddr="VB238" serviceType="GOOSE"/>
              <ExtRef intAddr="VB239" serviceType="GOOSE"/>
              <ExtRef intAddr="VB240" serviceType="GOOSE"/>
              <ExtRef intAddr="VB241" serviceType="GOOSE"/>
              <ExtRef intAddr="VB242" serviceType="GOOSE"/>
              <ExtRef intAddr="VB243" serviceType="GOOSE"/>
              <ExtRef intAddr="VB244" serviceType="GOOSE"/>
              <ExtRef intAddr="VB245" serviceType="GOOSE"/>
              <ExtRef intAddr="VB246" serviceType="GOOSE"/>
              <ExtRef intAddr="VB247" serviceType="GOOSE"/>
              <ExtRef intAddr="VB248" serviceType="GOOSE"/>
              <ExtRef intAddr="VB249" serviceType="GOOSE"/>
              <ExtRef intAddr="VB250" serviceType="GOOSE"/>
              <ExtRef intAddr="VB251" serviceType="GOOSE"/>
              <ExtRef intAddr="VB252" serviceType="GOOSE"/>
              <ExtRef intAddr="VB253" serviceType="GOOSE"/>
              <ExtRef intAddr="VB254" serviceType="GOOSE"/>
              <ExtRef intAddr="VB255" serviceType="GOOSE"/>
              <ExtRef intAddr="VB256" serviceType="GOOSE"/>
              <ExtRef intAddr="RA001" serviceType="GOOSE"/>
              <ExtRef intAddr="RA002" serviceType="GOOSE"/>
              <ExtRef intAddr="RA003" serviceType="GOOSE"/>
              <ExtRef intAddr="RA004" serviceType="GOOSE"/>
              <ExtRef intAddr="RA005" serviceType="GOOSE"/>
              <ExtRef intAddr="RA006" serviceType="GOOSE"/>
              <ExtRef intAddr="RA007" serviceType="GOOSE"/>
              <ExtRef intAddr="RA008" serviceType="GOOSE"/>
              <ExtRef intAddr="RA009" serviceType="GOOSE"/>
              <ExtRef intAddr="RA010" serviceType="GOOSE"/>
              <ExtRef intAddr="RA011" serviceType="GOOSE"/>
              <ExtRef intAddr="RA012" serviceType="GOOSE"/>
              <ExtRef intAddr="RA013" serviceType="GOOSE"/>
              <ExtRef intAddr="RA014" serviceType="GOOSE"/>
              <ExtRef intAddr="RA015" serviceType="GOOSE"/>
              <ExtRef intAddr="RA016" serviceType="GOOSE"/>
              <ExtRef intAddr="RA017" serviceType="GOOSE"/>
              <ExtRef intAddr="RA018" serviceType="GOOSE"/>
              <ExtRef intAddr="RA019" serviceType="GOOSE"/>
              <ExtRef intAddr="RA020" serviceType="GOOSE"/>
              <ExtRef intAddr="RA021" serviceType="GOOSE"/>
              <ExtRef intAddr="RA022" serviceType="GOOSE"/>
              <ExtRef intAddr="RA023" serviceType="GOOSE"/>
              <ExtRef intAddr="RA024" serviceType="GOOSE"/>
              <ExtRef intAddr="RA025" serviceType="GOOSE"/>
              <ExtRef intAddr="RA026" serviceType="GOOSE"/>
              <ExtRef intAddr="RA027" serviceType="GOOSE"/>
              <ExtRef intAddr="RA028" serviceType="GOOSE"/>
              <ExtRef intAddr="RA029" serviceType="GOOSE"/>
              <ExtRef intAddr="RA030" serviceType="GOOSE"/>
              <ExtRef intAddr="RA031" serviceType="GOOSE"/>
              <ExtRef intAddr="RA032" serviceType="GOOSE"/>
              <ExtRef intAddr="RA033" serviceType="GOOSE"/>
              <ExtRef intAddr="RA034" serviceType="GOOSE"/>
              <ExtRef intAddr="RA035" serviceType="GOOSE"/>
              <ExtRef intAddr="RA036" serviceType="GOOSE"/>
              <ExtRef intAddr="RA037" serviceType="GOOSE"/>
              <ExtRef intAddr="RA038" serviceType="GOOSE"/>
              <ExtRef intAddr="RA039" serviceType="GOOSE"/>
              <ExtRef intAddr="RA040" serviceType="GOOSE"/>
              <ExtRef intAddr="RA041" serviceType="GOOSE"/>
              <ExtRef intAddr="RA042" serviceType="GOOSE"/>
              <ExtRef intAddr="RA043" serviceType="GOOSE"/>
              <ExtRef intAddr="RA044" serviceType="GOOSE"/>
              <ExtRef intAddr="RA045" serviceType="GOOSE"/>
              <ExtRef intAddr="RA046" serviceType="GOOSE"/>
              <ExtRef intAddr="RA047" serviceType="GOOSE"/>
              <ExtRef intAddr="RA048" serviceType="GOOSE"/>
              <ExtRef intAddr="RA049" serviceType="GOOSE"/>
              <ExtRef intAddr="RA050" serviceType="GOOSE"/>
              <ExtRef intAddr="RA051" serviceType="GOOSE"/>
              <ExtRef intAddr="RA052" serviceType="GOOSE"/>
              <ExtRef intAddr="RA053" serviceType="GOOSE"/>
              <ExtRef intAddr="RA054" serviceType="GOOSE"/>
              <ExtRef intAddr="RA055" serviceType="GOOSE"/>
              <ExtRef intAddr="RA056" serviceType="GOOSE"/>
              <ExtRef intAddr="RA057" serviceType="GOOSE"/>
              <ExtRef intAddr="RA058" serviceType="GOOSE"/>
              <ExtRef intAddr="RA059" serviceType="GOOSE"/>
              <ExtRef intAddr="RA060" serviceType="GOOSE"/>
              <ExtRef intAddr="RA061" serviceType="GOOSE"/>
              <ExtRef intAddr="RA062" serviceType="GOOSE"/>
              <ExtRef intAddr="RA063" serviceType="GOOSE"/>
              <ExtRef intAddr="RA064" serviceType="GOOSE"/>
              <ExtRef intAddr="RA065" serviceType="GOOSE"/>
              <ExtRef intAddr="RA066" serviceType="GOOSE"/>
              <ExtRef intAddr="RA067" serviceType="GOOSE"/>
              <ExtRef intAddr="RA068" serviceType="GOOSE"/>
              <ExtRef intAddr="RA069" serviceType="GOOSE"/>
              <ExtRef intAddr="RA070" serviceType="GOOSE"/>
              <ExtRef intAddr="RA071" serviceType="GOOSE"/>
              <ExtRef intAddr="RA072" serviceType="GOOSE"/>
              <ExtRef intAddr="RA073" serviceType="GOOSE"/>
              <ExtRef intAddr="RA074" serviceType="GOOSE"/>
              <ExtRef intAddr="RA075" serviceType="GOOSE"/>
              <ExtRef intAddr="RA076" serviceType="GOOSE"/>
              <ExtRef intAddr="RA077" serviceType="GOOSE"/>
              <ExtRef intAddr="RA078" serviceType="GOOSE"/>
              <ExtRef intAddr="RA079" serviceType="GOOSE"/>
              <ExtRef intAddr="RA080" serviceType="GOOSE"/>
              <ExtRef intAddr="RA081" serviceType="GOOSE"/>
              <ExtRef intAddr="RA082" serviceType="GOOSE"/>
              <ExtRef intAddr="RA083" serviceType="GOOSE"/>
              <ExtRef intAddr="RA084" serviceType="GOOSE"/>
              <ExtRef intAddr="RA085" serviceType="GOOSE"/>
              <ExtRef intAddr="RA086" serviceType="GOOSE"/>
              <ExtRef intAddr="RA087" serviceType="GOOSE"/>
              <ExtRef intAddr="RA088" serviceType="GOOSE"/>
              <ExtRef intAddr="RA089" serviceType="GOOSE"/>
              <ExtRef intAddr="RA090" serviceType="GOOSE"/>
              <ExtRef intAddr="RA091" serviceType="GOOSE"/>
              <ExtRef intAddr="RA092" serviceType="GOOSE"/>
              <ExtRef intAddr="RA093" serviceType="GOOSE"/>
              <ExtRef intAddr="RA094" serviceType="GOOSE"/>
              <ExtRef intAddr="RA095" serviceType="GOOSE"/>
              <ExtRef intAddr="RA096" serviceType="GOOSE"/>
              <ExtRef intAddr="RA097" serviceType="GOOSE"/>
              <ExtRef intAddr="RA098" serviceType="GOOSE"/>
              <ExtRef intAddr="RA099" serviceType="GOOSE"/>
              <ExtRef intAddr="RA100" serviceType="GOOSE"/>
              <ExtRef intAddr="RA101" serviceType="GOOSE"/>
              <ExtRef intAddr="RA102" serviceType="GOOSE"/>
              <ExtRef intAddr="RA103" serviceType="GOOSE"/>
              <ExtRef intAddr="RA104" serviceType="GOOSE"/>
              <ExtRef intAddr="RA105" serviceType="GOOSE"/>
              <ExtRef intAddr="RA106" serviceType="GOOSE"/>
              <ExtRef intAddr="RA107" serviceType="GOOSE"/>
              <ExtRef intAddr="RA108" serviceType="GOOSE"/>
              <ExtRef intAddr="RA109" serviceType="GOOSE"/>
              <ExtRef intAddr="RA110" serviceType="GOOSE"/>
              <ExtRef intAddr="RA111" serviceType="GOOSE"/>
              <ExtRef intAddr="RA112" serviceType="GOOSE"/>
              <ExtRef intAddr="RA113" serviceType="GOOSE"/>
              <ExtRef intAddr="RA114" serviceType="GOOSE"/>
              <ExtRef intAddr="RA115" serviceType="GOOSE"/>
              <ExtRef intAddr="RA116" serviceType="GOOSE"/>
              <ExtRef intAddr="RA117" serviceType="GOOSE"/>
              <ExtRef intAddr="RA118" serviceType="GOOSE"/>
              <ExtRef intAddr="RA119" serviceType="GOOSE"/>
              <ExtRef intAddr="RA120" serviceType="GOOSE"/>
              <ExtRef intAddr="RA121" serviceType="GOOSE"/>
              <ExtRef intAddr="RA122" serviceType="GOOSE"/>
              <ExtRef intAddr="RA123" serviceType="GOOSE"/>
              <ExtRef intAddr="RA124" serviceType="GOOSE"/>
              <ExtRef intAddr="RA125" serviceType="GOOSE"/>
              <ExtRef intAddr="RA126" serviceType="GOOSE"/>
              <ExtRef intAddr="RA127" serviceType="GOOSE"/>
              <ExtRef intAddr="RA128" serviceType="GOOSE"/>
              <ExtRef intAddr="RA129" serviceType="GOOSE"/>
              <ExtRef intAddr="RA130" serviceType="GOOSE"/>
              <ExtRef intAddr="RA131" serviceType="GOOSE"/>
              <ExtRef intAddr="RA132" serviceType="GOOSE"/>
              <ExtRef intAddr="RA133" serviceType="GOOSE"/>
              <ExtRef intAddr="RA134" serviceType="GOOSE"/>
              <ExtRef intAddr="RA135" serviceType="GOOSE"/>
              <ExtRef intAddr="RA136" serviceType="GOOSE"/>
              <ExtRef intAddr="RA137" serviceType="GOOSE"/>
              <ExtRef intAddr="RA138" serviceType="GOOSE"/>
              <ExtRef intAddr="RA139" serviceType="GOOSE"/>
              <ExtRef intAddr="RA140" serviceType="GOOSE"/>
              <ExtRef intAddr="RA141" serviceType="GOOSE"/>
              <ExtRef intAddr="RA142" serviceType="GOOSE"/>
              <ExtRef intAddr="RA143" serviceType="GOOSE"/>
              <ExtRef intAddr="RA144" serviceType="GOOSE"/>
              <ExtRef intAddr="RA145" serviceType="GOOSE"/>
              <ExtRef intAddr="RA146" serviceType="GOOSE"/>
              <ExtRef intAddr="RA147" serviceType="GOOSE"/>
              <ExtRef intAddr="RA148" serviceType="GOOSE"/>
              <ExtRef intAddr="RA149" serviceType="GOOSE"/>
              <ExtRef intAddr="RA150" serviceType="GOOSE"/>
              <ExtRef intAddr="RA151" serviceType="GOOSE"/>
              <ExtRef intAddr="RA152" serviceType="GOOSE"/>
              <ExtRef intAddr="RA153" serviceType="GOOSE"/>
              <ExtRef intAddr="RA154" serviceType="GOOSE"/>
              <ExtRef intAddr="RA155" serviceType="GOOSE"/>
              <ExtRef intAddr="RA156" serviceType="GOOSE"/>
              <ExtRef intAddr="RA157" serviceType="GOOSE"/>
              <ExtRef intAddr="RA158" serviceType="GOOSE"/>
              <ExtRef intAddr="RA159" serviceType="GOOSE"/>
              <ExtRef intAddr="RA160" serviceType="GOOSE"/>
              <ExtRef intAddr="RA161" serviceType="GOOSE"/>
              <ExtRef intAddr="RA162" serviceType="GOOSE"/>
              <ExtRef intAddr="RA163" serviceType="GOOSE"/>
              <ExtRef intAddr="RA164" serviceType="GOOSE"/>
              <ExtRef intAddr="RA165" serviceType="GOOSE"/>
              <ExtRef intAddr="RA166" serviceType="GOOSE"/>
              <ExtRef intAddr="RA167" serviceType="GOOSE"/>
              <ExtRef intAddr="RA168" serviceType="GOOSE"/>
              <ExtRef intAddr="RA169" serviceType="GOOSE"/>
              <ExtRef intAddr="RA170" serviceType="GOOSE"/>
              <ExtRef intAddr="RA171" serviceType="GOOSE"/>
              <ExtRef intAddr="RA172" serviceType="GOOSE"/>
              <ExtRef intAddr="RA173" serviceType="GOOSE"/>
              <ExtRef intAddr="RA174" serviceType="GOOSE"/>
              <ExtRef intAddr="RA175" serviceType="GOOSE"/>
              <ExtRef intAddr="RA176" serviceType="GOOSE"/>
              <ExtRef intAddr="RA177" serviceType="GOOSE"/>
              <ExtRef intAddr="RA178" serviceType="GOOSE"/>
              <ExtRef intAddr="RA179" serviceType="GOOSE"/>
              <ExtRef intAddr="RA180" serviceType="GOOSE"/>
              <ExtRef intAddr="RA181" serviceType="GOOSE"/>
              <ExtRef intAddr="RA182" serviceType="GOOSE"/>
              <ExtRef intAddr="RA183" serviceType="GOOSE"/>
              <ExtRef intAddr="RA184" serviceType="GOOSE"/>
              <ExtRef intAddr="RA185" serviceType="GOOSE"/>
              <ExtRef intAddr="RA186" serviceType="GOOSE"/>
              <ExtRef intAddr="RA187" serviceType="GOOSE"/>
              <ExtRef intAddr="RA188" serviceType="GOOSE"/>
              <ExtRef intAddr="RA189" serviceType="GOOSE"/>
              <ExtRef intAddr="RA190" serviceType="GOOSE"/>
              <ExtRef intAddr="RA191" serviceType="GOOSE"/>
              <ExtRef intAddr="RA192" serviceType="GOOSE"/>
              <ExtRef intAddr="RA193" serviceType="GOOSE"/>
              <ExtRef intAddr="RA194" serviceType="GOOSE"/>
              <ExtRef intAddr="RA195" serviceType="GOOSE"/>
              <ExtRef intAddr="RA196" serviceType="GOOSE"/>
              <ExtRef intAddr="RA197" serviceType="GOOSE"/>
              <ExtRef intAddr="RA198" serviceType="GOOSE"/>
              <ExtRef intAddr="RA199" serviceType="GOOSE"/>
              <ExtRef intAddr="RA200" serviceType="GOOSE"/>
              <ExtRef intAddr="RA201" serviceType="GOOSE"/>
              <ExtRef intAddr="RA202" serviceType="GOOSE"/>
              <ExtRef intAddr="RA203" serviceType="GOOSE"/>
              <ExtRef intAddr="RA204" serviceType="GOOSE"/>
              <ExtRef intAddr="RA205" serviceType="GOOSE"/>
              <ExtRef intAddr="RA206" serviceType="GOOSE"/>
              <ExtRef intAddr="RA207" serviceType="GOOSE"/>
              <ExtRef intAddr="RA208" serviceType="GOOSE"/>
              <ExtRef intAddr="RA209" serviceType="GOOSE"/>
              <ExtRef intAddr="RA210" serviceType="GOOSE"/>
              <ExtRef intAddr="RA211" serviceType="GOOSE"/>
              <ExtRef intAddr="RA212" serviceType="GOOSE"/>
              <ExtRef intAddr="RA213" serviceType="GOOSE"/>
              <ExtRef intAddr="RA214" serviceType="GOOSE"/>
              <ExtRef intAddr="RA215" serviceType="GOOSE"/>
              <ExtRef intAddr="RA216" serviceType="GOOSE"/>
              <ExtRef intAddr="RA217" serviceType="GOOSE"/>
              <ExtRef intAddr="RA218" serviceType="GOOSE"/>
              <ExtRef intAddr="RA219" serviceType="GOOSE"/>
              <ExtRef intAddr="RA220" serviceType="GOOSE"/>
              <ExtRef intAddr="RA221" serviceType="GOOSE"/>
              <ExtRef intAddr="RA222" serviceType="GOOSE"/>
              <ExtRef intAddr="RA223" serviceType="GOOSE"/>
              <ExtRef intAddr="RA224" serviceType="GOOSE"/>
              <ExtRef intAddr="RA225" serviceType="GOOSE"/>
              <ExtRef intAddr="RA226" serviceType="GOOSE"/>
              <ExtRef intAddr="RA227" serviceType="GOOSE"/>
              <ExtRef intAddr="RA228" serviceType="GOOSE"/>
              <ExtRef intAddr="RA229" serviceType="GOOSE"/>
              <ExtRef intAddr="RA230" serviceType="GOOSE"/>
              <ExtRef intAddr="RA231" serviceType="GOOSE"/>
              <ExtRef intAddr="RA232" serviceType="GOOSE"/>
              <ExtRef intAddr="RA233" serviceType="GOOSE"/>
              <ExtRef intAddr="RA234" serviceType="GOOSE"/>
              <ExtRef intAddr="RA235" serviceType="GOOSE"/>
              <ExtRef intAddr="RA236" serviceType="GOOSE"/>
              <ExtRef intAddr="RA237" serviceType="GOOSE"/>
              <ExtRef intAddr="RA238" serviceType="GOOSE"/>
              <ExtRef intAddr="RA239" serviceType="GOOSE"/>
              <ExtRef intAddr="RA240" serviceType="GOOSE"/>
              <ExtRef intAddr="RA241" serviceType="GOOSE"/>
              <ExtRef intAddr="RA242" serviceType="GOOSE"/>
              <ExtRef intAddr="RA243" serviceType="GOOSE"/>
              <ExtRef intAddr="RA244" serviceType="GOOSE"/>
              <ExtRef intAddr="RA245" serviceType="GOOSE"/>
              <ExtRef intAddr="RA246" serviceType="GOOSE"/>
              <ExtRef intAddr="RA247" serviceType="GOOSE"/>
              <ExtRef intAddr="RA248" serviceType="GOOSE"/>
              <ExtRef intAddr="RA249" serviceType="GOOSE"/>
              <ExtRef intAddr="RA250" serviceType="GOOSE"/>
              <ExtRef intAddr="RA251" serviceType="GOOSE"/>
              <ExtRef intAddr="RA252" serviceType="GOOSE"/>
              <ExtRef intAddr="RA253" serviceType="GOOSE"/>
              <ExtRef intAddr="RA254" serviceType="GOOSE"/>
              <ExtRef intAddr="RA255" serviceType="GOOSE"/>
              <ExtRef intAddr="RA256" serviceType="GOOSE"/>
            </Inputs>
            <GSEControl desc="BreakerFailure" datSet="ds_gcb1" name="gcb1" confRev="10000" appID="Application1" securityEnable="None">
              <Private source="42" type="HELINKS_TAG"/>
              <IEDName apRef="P1" ldInst="CCTBRK" lnClass="XCBR" lnInst="12" prefix="CB_BT_">BT_BCU</IEDName>
              <IEDName apRef="S1" ldInst="System" lnClass="XCBR" lnInst="1" prefix="Bkr0">A1_BCU_PU</IEDName>
              <IEDName apRef="AP1" ldInst="LD1" lnClass="XCBR" lnInst="1" prefix="">A2_BCU_PU</IEDName>
            </GSEControl>
            <GSEControl desc="Trip" datSet="ds_gcb2" name="gcb2" confRev="10000" appID="Application1" securityEnable="None">
              <Private source="42" type="HELINKS_TAG"/>
              <IEDName apRef="P1" ldInst="CCTBRK" lnClass="XCBR" lnInst="12" prefix="CB_BT_">BT_BCU</IEDName>
            </GSEControl>
            <GSEControl desc="VoltageSourceSelection" datSet="ds_gcb3" name="gcb3" confRev="10000" appID="Application1" securityEnable="None">
              <Private source="42" type="HELINKS_TAG"/>
              <IEDName apRef="P1" ldInst="PROT" lnClass="LLN0">BT_PU</IEDName>
            </GSEControl>
            <SettingControl esel:activeGroupLabel="ACTGRP" esel:numberOfSettingGroupsLabel="MAXGRP" numOfSGs="6"/>
          </LN0>
          <LN lnType="LPHD2$_b84665ed-3ee2-45a7-8e90-e367f963f484" inst="1" lnClass="LPHD" prefix="DevID">
            <DOI name="Proxy">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Sim">
              <SDI name="Oper">
                <DAI esel:datasrc="db:LPHDSIM" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:LPHDSIM" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="LGOS1$_bc28cd11-6ae1-4666-8b16-fe1a08710bb0" inst="1" lnClass="LGOS">
            <DOI name="NdsCom">
              <DAI esel:datasrc="db:GNCM1" name="stVal"/>
            </DOI>
            <DOI name="St">
              <DAI esel:datasrc="db:GST1" name="stVal"/>
            </DOI>
            <DOI name="SimSt">
              <DAI esel:datasrc="db:GSIM1" name="stVal"/>
            </DOI>
            <DOI name="LastStNum">
              <DAI esel:datasrc="db:GLST1" name="stVal"/>
            </DOI>
            <DOI name="LastSqNum">
              <DAI esel:datasrc="db:GLSQ1" name="stVal"/>
            </DOI>
            <DOI name="LastTal">
              <DAI esel:datasrc="db:GTAL1" name="stVal"/>
            </DOI>
            <DOI name="ConfRevNum">
              <DAI esel:datasrc="imm" name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="RxConfRevNum">
              <DAI esel:datasrc="db:GCNF1" name="stVal"/>
            </DOI>
            <DOI name="ErrSt">
              <DAI esel:datasrc="db:GERR1" name="stVal"/>
            </DOI>
            <DOI name="OosCnt">
              <DAI esel:datasrc="db:GOOS1" name="stVal"/>
            </DOI>
            <DOI name="TalCnt">
              <DAI esel:datasrc="db:GTLC1" name="stVal"/>
            </DOI>
            <DOI name="DecErrCnt">
              <DAI esel:datasrc="db:GDER1" name="stVal"/>
            </DOI>
            <DOI name="BufOvflCnt">
              <DAI esel:datasrc="db:GBFO1" name="stVal"/>
            </DOI>
            <DOI name="MsgLosCnt">
              <DAI esel:datasrc="db:GMSL1" name="stVal"/>
            </DOI>
            <DOI name="MaxMsgLos">
              <DAI esel:datasrc="db:GMXM1" name="stVal"/>
            </DOI>
            <DOI name="TotDwnTm">
              <SDI name="instMag">
                <DAI esel:datasrc="db:GDWT1" name="f"/>
              </SDI>
              <DAI esel:datasrc="imm:100" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="MaxDwnTm">
              <SDI name="instMag">
                <DAI esel:datasrc="db:GMXD1" name="f"/>
              </SDI>
              <DAI esel:datasrc="imm:100" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="RsStat">
              <DAI esel:datasrc="db:GRST1" name="stVal"/>
              <DAI esel:datasrc="db:GQUAL" name="q"/>
              <SDI name="Oper">
                <DAI esel:datasrc="db:GRST1" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="imm" name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="GoCBRef">
              <DAI esel:datasrc="imm" name="setSrcRef">
                <Val></Val>
              </DAI>
            </DOI>
            <DOI name="DatSet">
              <DAI esel:datasrc="imm" name="setSrcRef">
                <Val></Val>
              </DAI>
            </DOI>
            <DOI name="GoID">
              <DAI esel:datasrc="imm" name="setVal">
                <Val>Application1</Val>
              </DAI>
            </DOI>
            <DOI name="Addr">
              <DAI esel:datasrc="imm" name="setVal">
                <Val></Val>
              </DAI>
            </DOI>
            <DOI name="VlanID">
              <DAI esel:datasrc="imm" name="setVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="VlanPri">
              <DAI esel:datasrc="imm" name="setVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="AppID">
              <DAI esel:datasrc="imm" name="setVal">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="LSVS1" inst="1" lnClass="LSVS">
            <DOI name="NdsCom">
              <DAI esel:datasrc="db:SNCM1" name="stVal"/>
            </DOI>
            <DOI name="St">
              <DAI esel:datasrc="db:SST1" name="stVal"/>
            </DOI>
            <DOI name="SimSt">
              <DAI esel:datasrc="db:SSIM1" name="stVal"/>
            </DOI>
            <DOI name="ConfRevNum">
              <DAI esel:datasrc="imm" name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="RxConfRevNum">
              <DAI esel:datasrc="db:SCNF1" name="stVal"/>
            </DOI>
            <DOI name="SmpSynch">
              <DAI esel:datasrc="db:SSMP1" name="stVal"/>
            </DOI>
            <DOI name="ErrSt">
              <DAI esel:datasrc="db:SERR1" name="stVal"/>
            </DOI>
            <DOI name="NetwDly">
              <SDI name="instMag">
                <DAI esel:datasrc="db:SNET1" name="f"/>
              </SDI>
              <DAI esel:datasrc="imm:100" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="OosCnt">
              <DAI esel:datasrc="db:SOOS1" name="stVal"/>
            </DOI>
            <DOI name="DscdCnt">
              <DAI esel:datasrc="db:SDIS1" name="stVal"/>
            </DOI>
            <DOI name="IntpCnt">
              <DAI esel:datasrc="db:SINT1" name="stVal"/>
            </DOI>
            <DOI name="TotDwnTm">
              <SDI name="instMag">
                <DAI esel:datasrc="db:SDWT1" name="f"/>
              </SDI>
              <DAI esel:datasrc="imm:100" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="MaxDwnTm">
              <SDI name="instMag">
                <DAI esel:datasrc="db:SMXD1" name="f"/>
              </SDI>
              <DAI esel:datasrc="imm:100" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="RsStat">
              <DAI esel:datasrc="db:SRST1" name="stVal"/>
              <DAI esel:datasrc="db:SVQUAL" name="q"/>
              <SDI name="Oper">
                <DAI esel:datasrc="db:SRST1" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="imm" name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="SvCBRef">
              <DAI esel:datasrc="imm" name="setSrcRef">
                <Val></Val>
              </DAI>
            </DOI>
            <DOI name="DatSet">
              <DAI esel:datasrc="imm" name="setSrcRef">
                <Val></Val>
              </DAI>
            </DOI>
            <DOI name="SvID">
              <DAI esel:datasrc="imm" name="setVal">
                <Val></Val>
              </DAI>
            </DOI>
            <DOI name="Addr">
              <DAI esel:datasrc="imm" name="setVal">
                <Val></Val>
              </DAI>
            </DOI>
            <DOI name="VlanID">
              <DAI esel:datasrc="imm" name="setVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="VlanPri">
              <DAI esel:datasrc="imm" name="setVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="AppID">
              <DAI esel:datasrc="imm" name="setVal">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
        <LDevice desc="Protection" inst="PRO">
          <LN0 lnType="LN0$_0747fb50-c26d-4fdb-9a67-b50d39640275" inst="" lnClass="LLN0">
            <DOI name="NamPlt">
              <DAI name="d">
                <Val>Protection</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnType="LPHD1$_9d075b70-3e2a-44c2-b215-bd66a9e6c52a" inst="1" lnClass="LPHD" prefix="PRO">
            <DOI name="Proxy">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="PIOC1$_4783516f-29ea-447f-aa55-317dc6f060a3" inst="1" lnClass="PIOC" prefix="P1">
            <DOI name="Op">
              <DAI esel:datasrc="db:50P1" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PIOC1$_4783516f-29ea-447f-aa55-317dc6f060a3" inst="2" lnClass="PIOC" prefix="G1">
            <DOI name="Op">
              <DAI esel:datasrc="db:50G1" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PIOC1$_4783516f-29ea-447f-aa55-317dc6f060a3" inst="3" lnClass="PIOC" prefix="Q1">
            <DOI name="Op">
              <DAI esel:datasrc="db:50Q1" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PIOC1$_4783516f-29ea-447f-aa55-317dc6f060a3" inst="4" lnClass="PIOC" prefix="P2">
            <DOI name="Op">
              <DAI esel:datasrc="db:50P2" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PIOC1$_4783516f-29ea-447f-aa55-317dc6f060a3" inst="5" lnClass="PIOC" prefix="G2">
            <DOI name="Op">
              <DAI esel:datasrc="db:50G2" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PIOC1$_4783516f-29ea-447f-aa55-317dc6f060a3" inst="6" lnClass="PIOC" prefix="Q2">
            <DOI name="Op">
              <DAI esel:datasrc="db:50Q2" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PIOC1$_4783516f-29ea-447f-aa55-317dc6f060a3" inst="7" lnClass="PIOC" prefix="P3">
            <DOI name="Op">
              <DAI esel:datasrc="db:50P3" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PIOC1$_4783516f-29ea-447f-aa55-317dc6f060a3" inst="8" lnClass="PIOC" prefix="G3">
            <DOI name="Op">
              <DAI esel:datasrc="db:50G3" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PIOC1$_4783516f-29ea-447f-aa55-317dc6f060a3" inst="9" lnClass="PIOC" prefix="Q3">
            <DOI name="Op">
              <DAI esel:datasrc="db:50Q3" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PIOC1$_4783516f-29ea-447f-aa55-317dc6f060a3" inst="10" lnClass="PIOC" prefix="P4">
            <DOI name="Op">
              <DAI esel:datasrc="db:50P4" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PIOC1$_4783516f-29ea-447f-aa55-317dc6f060a3" inst="11" lnClass="PIOC" prefix="G4">
            <DOI name="Op">
              <DAI esel:datasrc="db:50G4" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PIOC1$_4783516f-29ea-447f-aa55-317dc6f060a3" inst="12" lnClass="PIOC" prefix="Q4">
            <DOI name="Op">
              <DAI esel:datasrc="db:50Q4" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTOC1$_4d11ef83-88d3-4c03-ad69-b12442563ce7" inst="1" lnClass="PTOC" prefix="P1">
            <DOI name="Str">
              <DAI esel:datasrc="db:67P1" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:67P1T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTOC1$_4d11ef83-88d3-4c03-ad69-b12442563ce7" inst="2" lnClass="PTOC" prefix="G1">
            <DOI name="Str">
              <DAI esel:datasrc="db:67G1" name="general"/>
              <DAI name="dirGeneral">
                <Val>forward</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:67G1T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTOC1$_4d11ef83-88d3-4c03-ad69-b12442563ce7" inst="3" lnClass="PTOC" prefix="Q1">
            <DOI name="Str">
              <DAI esel:datasrc="db:67Q1" name="general"/>
              <DAI name="dirGeneral">
                <Val>forward</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:67Q1T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTOC1$_4d11ef83-88d3-4c03-ad69-b12442563ce7" inst="4" lnClass="PTOC" prefix="P2">
            <DOI name="Str">
              <DAI esel:datasrc="db:67P2" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:67P2T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTOC1$_4d11ef83-88d3-4c03-ad69-b12442563ce7" inst="5" lnClass="PTOC" prefix="G2">
            <DOI name="Str">
              <DAI esel:datasrc="db:67G2" name="general"/>
              <DAI name="dirGeneral">
                <Val>forward</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:67G2T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTOC1$_4d11ef83-88d3-4c03-ad69-b12442563ce7" inst="6" lnClass="PTOC" prefix="Q2">
            <DOI name="Str">
              <DAI esel:datasrc="db:67Q2" name="general"/>
              <DAI name="dirGeneral">
                <Val>forward</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:67Q2T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTOC1$_4d11ef83-88d3-4c03-ad69-b12442563ce7" inst="7" lnClass="PTOC" prefix="P3">
            <DOI name="Str">
              <DAI esel:datasrc="db:67P3" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:67P3T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTOC1$_4d11ef83-88d3-4c03-ad69-b12442563ce7" inst="8" lnClass="PTOC" prefix="G3">
            <DOI name="Str">
              <DAI esel:datasrc="db:67G3" name="general"/>
              <DAI esel:datasrc="db:RVRS3?1:2" name="dirGeneral"/>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:67G3T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTOC1$_4d11ef83-88d3-4c03-ad69-b12442563ce7" inst="9" lnClass="PTOC" prefix="Q3">
            <DOI name="Str">
              <DAI esel:datasrc="db:67Q3" name="general"/>
              <DAI esel:datasrc="db:RVRS3?1:2" name="dirGeneral"/>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:67Q3T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTOC1$_4d11ef83-88d3-4c03-ad69-b12442563ce7" inst="10" lnClass="PTOC" prefix="P4">
            <DOI name="Str">
              <DAI esel:datasrc="db:67P4" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:67P4T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTOC1$_4d11ef83-88d3-4c03-ad69-b12442563ce7" inst="11" lnClass="PTOC" prefix="G4">
            <DOI name="Str">
              <DAI esel:datasrc="db:67G4" name="general"/>
              <DAI esel:datasrc="db:RVRS4?1:2" name="dirGeneral"/>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:67G4T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTOC1$_4d11ef83-88d3-4c03-ad69-b12442563ce7" inst="12" lnClass="PTOC" prefix="Q4">
            <DOI name="Str">
              <DAI esel:datasrc="db:67Q4" name="general"/>
              <DAI esel:datasrc="db:RVRS4?1:2" name="dirGeneral"/>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:67Q4T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTOC1$_4d11ef83-88d3-4c03-ad69-b12442563ce7" inst="13" lnClass="PTOC" prefix="S1">
            <DOI name="Str">
              <DAI esel:datasrc="db:51S1" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:51S1T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTOC1$_4d11ef83-88d3-4c03-ad69-b12442563ce7" inst="14" lnClass="PTOC" prefix="S2">
            <DOI name="Str">
              <DAI esel:datasrc="db:51S2" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:51S2T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTOC1$_4d11ef83-88d3-4c03-ad69-b12442563ce7" inst="15" lnClass="PTOC" prefix="S3">
            <DOI name="Str">
              <DAI esel:datasrc="db:51S3" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:51S3T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTOC1$_4d11ef83-88d3-4c03-ad69-b12442563ce7" inst="16" lnClass="PTOC" prefix="S4">
            <DOI name="Str">
              <DAI esel:datasrc="db:51S4" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:51S4T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTOC1$_4d11ef83-88d3-4c03-ad69-b12442563ce7" inst="17" lnClass="PTOC" prefix="S5">
            <DOI name="Str">
              <DAI esel:datasrc="db:51S5" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:51S5T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTOC1$_4d11ef83-88d3-4c03-ad69-b12442563ce7" inst="18" lnClass="PTOC" prefix="S6">
            <DOI name="Str">
              <DAI esel:datasrc="db:51S6" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:51S6T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTUV1$_50b9c076-fc46-45f1-8a89-ffcee8ae1acd" inst="1" lnClass="PTUV" prefix="U1P1">
            <DOI name="Str">
              <DAI esel:datasrc="db:271P1" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:271P1T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTUV1$_50b9c076-fc46-45f1-8a89-ffcee8ae1acd" inst="1" lnClass="PTUV" prefix="U1P2">
            <DOI name="Str">
              <DAI esel:datasrc="db:271P2" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:271P2" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTUV1$_50b9c076-fc46-45f1-8a89-ffcee8ae1acd" inst="2" lnClass="PTUV" prefix="U2P1">
            <DOI name="Str">
              <DAI esel:datasrc="db:272P1" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:272P1T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTUV1$_50b9c076-fc46-45f1-8a89-ffcee8ae1acd" inst="2" lnClass="PTUV" prefix="U2P2">
            <DOI name="Str">
              <DAI esel:datasrc="db:272P2" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:272P2" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTUV1$_50b9c076-fc46-45f1-8a89-ffcee8ae1acd" inst="3" lnClass="PTUV" prefix="U3P1">
            <DOI name="Str">
              <DAI esel:datasrc="db:273P1" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:273P1T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTUV1$_50b9c076-fc46-45f1-8a89-ffcee8ae1acd" inst="3" lnClass="PTUV" prefix="U3P2">
            <DOI name="Str">
              <DAI esel:datasrc="db:273P2" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:273P2" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTUV1$_50b9c076-fc46-45f1-8a89-ffcee8ae1acd" inst="4" lnClass="PTUV" prefix="U4P1">
            <DOI name="Str">
              <DAI esel:datasrc="db:274P1" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:274P1T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTUV1$_50b9c076-fc46-45f1-8a89-ffcee8ae1acd" inst="4" lnClass="PTUV" prefix="U4P2">
            <DOI name="Str">
              <DAI esel:datasrc="db:274P2" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:274P2" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTUV1$_50b9c076-fc46-45f1-8a89-ffcee8ae1acd" inst="5" lnClass="PTUV" prefix="U5P1">
            <DOI name="Str">
              <DAI esel:datasrc="db:275P1" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:275P1T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTUV1$_50b9c076-fc46-45f1-8a89-ffcee8ae1acd" inst="5" lnClass="PTUV" prefix="U5P2">
            <DOI name="Str">
              <DAI esel:datasrc="db:275P2" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:275P2" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTUV1$_50b9c076-fc46-45f1-8a89-ffcee8ae1acd" inst="6" lnClass="PTUV" prefix="U6P1">
            <DOI name="Str">
              <DAI esel:datasrc="db:276P1" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:276P1T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTUV1$_50b9c076-fc46-45f1-8a89-ffcee8ae1acd" inst="6" lnClass="PTUV" prefix="U6P2">
            <DOI name="Str">
              <DAI esel:datasrc="db:276P2" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:276P2" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTOV1$_50727c5a-8363-4fac-9b0b-8e18c777999f" inst="1" lnClass="PTOV" prefix="O1P1">
            <DOI name="Str">
              <DAI esel:datasrc="db:591P1" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:591P1T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTOV2$_71cdd269-e003-44ec-a7bd-eec28c7ff0b3" inst="1" lnClass="PTOV" prefix="O1P2">
            <DOI name="Str">
              <DAI esel:datasrc="db:591P2" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="PTOV1$_50727c5a-8363-4fac-9b0b-8e18c777999f" inst="2" lnClass="PTOV" prefix="O2P1">
            <DOI name="Str">
              <DAI esel:datasrc="db:592P1" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:592P1T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTOV2$_71cdd269-e003-44ec-a7bd-eec28c7ff0b3" inst="2" lnClass="PTOV" prefix="O2P2">
            <DOI name="Str">
              <DAI esel:datasrc="db:592P2" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="PTOV1$_50727c5a-8363-4fac-9b0b-8e18c777999f" inst="3" lnClass="PTOV" prefix="O3P1">
            <DOI name="Str">
              <DAI esel:datasrc="db:593P1" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:593P1T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTOV2$_71cdd269-e003-44ec-a7bd-eec28c7ff0b3" inst="3" lnClass="PTOV" prefix="O3P2">
            <DOI name="Str">
              <DAI esel:datasrc="db:593P2" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="PTOV1$_50727c5a-8363-4fac-9b0b-8e18c777999f" inst="4" lnClass="PTOV" prefix="O4P1">
            <DOI name="Str">
              <DAI esel:datasrc="db:594P1" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:594P1T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTOV2$_71cdd269-e003-44ec-a7bd-eec28c7ff0b3" inst="4" lnClass="PTOV" prefix="O4P2">
            <DOI name="Str">
              <DAI esel:datasrc="db:594P2" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="PTOV1$_50727c5a-8363-4fac-9b0b-8e18c777999f" inst="5" lnClass="PTOV" prefix="O5P1">
            <DOI name="Str">
              <DAI esel:datasrc="db:595P1" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:595P1T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTOV2$_71cdd269-e003-44ec-a7bd-eec28c7ff0b3" inst="5" lnClass="PTOV" prefix="O5P2">
            <DOI name="Str">
              <DAI esel:datasrc="db:595P2" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="PTOV1$_50727c5a-8363-4fac-9b0b-8e18c777999f" inst="6" lnClass="PTOV" prefix="O6P1">
            <DOI name="Str">
              <DAI esel:datasrc="db:596P1" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:596P1T" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTOV2$_71cdd269-e003-44ec-a7bd-eec28c7ff0b3" inst="6" lnClass="PTOV" prefix="O6P2">
            <DOI name="Str">
              <DAI esel:datasrc="db:596P2" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="PHIZ1$_9e5b0bc8-a505-4036-8436-59ca47fa1f4f" inst="1" lnClass="PHIZ" prefix="HIZ">
            <DOI name="Str">
              <DAI esel:datasrc="db:CSV07" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:CSV04" name="general"/>
              <DAI esel:datasrc="db:HIF1_A" name="phsA"/>
              <DAI esel:datasrc="db:HIF1_B" name="phsB"/>
              <DAI esel:datasrc="db:HIF1_C" name="phsC"/>
            </DOI>
          </LN>
          <LN lnType="PHIZ1$_9e5b0bc8-a505-4036-8436-59ca47fa1f4f" inst="2" lnClass="PHIZ" prefix="HIZ">
            <DOI name="Str">
              <DAI esel:datasrc="db:CSV07" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:CSV05" name="general"/>
              <DAI esel:datasrc="db:HIF2_A" name="phsA"/>
              <DAI esel:datasrc="db:HIF2_B" name="phsB"/>
              <DAI esel:datasrc="db:HIF2_C" name="phsC"/>
            </DOI>
          </LN>
          <LN lnType="PHIZ2$_d799a720-0c03-4171-905e-b9e0098fa393" inst="3" lnClass="PHIZ" prefix="HIZ">
            <DOI name="Str">
              <DAI esel:datasrc="db:50GHIZ" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:50GHIZA" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PSCH1" inst="1" lnClass="PSCH" prefix="POTT">
            <DOI name="TxPrm">
              <DAI esel:datasrc="db:KEY" name="general"/>
            </DOI>
            <DOI name="RxPrm1">
              <DAI esel:datasrc="db:PTRX" name="general"/>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:RXPRM" name="general"/>
            </DOI>
            <DOI name="EchoWei">
              <DAI esel:datasrc="db:EKEY" name="stVal"/>
            </DOI>
            <DOI name="EchoWeiOp">
              <DAI esel:datasrc="db:ECTT" name="stVal"/>
            </DOI>
            <DOI name="TxBlk">
              <DAI esel:datasrc="db:Z3RB" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PSCH2$_e471cdd0-adbc-4072-9e60-ffc4cc82a2ea" inst="2" lnClass="PSCH" prefix="DCB">
            <DOI name="TxPrm">
              <DAI esel:datasrc="db:CSV01" name="general"/>
            </DOI>
            <DOI name="RxPrm1">
              <DAI esel:datasrc="db:BTX" name="general"/>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:RXPRM" name="general"/>
            </DOI>
            <DOI name="TxBlk">
              <DAI esel:datasrc="db:Z3RB" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PSCH1" inst="3" lnClass="PSCH" prefix="DCUB">
            <DOI name="TxPrm">
              <DAI esel:datasrc="db:KEY" name="general"/>
            </DOI>
            <DOI name="RxPrm1">
              <DAI esel:datasrc="db:PTRX" name="general"/>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:RXPRM" name="general"/>
            </DOI>
            <DOI name="EchoWei">
              <DAI esel:datasrc="db:EKEY" name="stVal"/>
            </DOI>
            <DOI name="EchoWeiOp">
              <DAI esel:datasrc="db:ECTT" name="stVal"/>
            </DOI>
            <DOI name="TxBlk">
              <DAI esel:datasrc="db:Z3RB" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTRC1$_14ea7e2d-b13f-4bd8-98b9-77a14ec2cf84" inst="1" lnClass="PTRC" prefix="TRIP">
            <DOI name="Tr">
              <DAI esel:datasrc="db:TRIP" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTRC1$_14ea7e2d-b13f-4bd8-98b9-77a14ec2cf84" inst="2" lnClass="PTRC" prefix="BKR1">
            <DOI name="Tr">
              <DAI esel:datasrc="db:T3P1" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTRC1$_14ea7e2d-b13f-4bd8-98b9-77a14ec2cf84" inst="3" lnClass="PTRC" prefix="BKR2">
            <DOI name="Tr">
              <DAI esel:datasrc="db:T3P2" name="general"/>
            </DOI>
          </LN>
          <LN lnType="RDIR1$_bd61a3a0-f399-44cb-b7df-0e9e770d7b06" inst="1" lnClass="RDIR" prefix="F32G">
            <DOI name="Dir">
              <DAI esel:datasrc="db:32GF" name="general"/>
              <DAI esel:datasrc="db:32GF?0:1" name="dirGeneral"/>
            </DOI>
          </LN>
          <LN lnType="RDIR1$_bd61a3a0-f399-44cb-b7df-0e9e770d7b06" inst="2" lnClass="RDIR" prefix="R32G">
            <DOI name="Dir">
              <DAI esel:datasrc="db:32GR" name="general"/>
              <DAI esel:datasrc="db:32GR?0:2" name="dirGeneral"/>
            </DOI>
          </LN>
          <LN lnType="RDIR1$_bd61a3a0-f399-44cb-b7df-0e9e770d7b06" inst="3" lnClass="RDIR" prefix="F32Q">
            <DOI name="Dir">
              <DAI esel:datasrc="db:F32Q" name="general"/>
              <DAI esel:datasrc="db:F32Q?0:1" name="dirGeneral"/>
            </DOI>
          </LN>
          <LN lnType="RDIR1$_bd61a3a0-f399-44cb-b7df-0e9e770d7b06" inst="4" lnClass="RDIR" prefix="R32Q">
            <DOI name="Dir">
              <DAI esel:datasrc="db:R32Q" name="general"/>
              <DAI esel:datasrc="db:R32Q?0:2" name="dirGeneral"/>
            </DOI>
          </LN>
          <LN lnType="RDIR1$_bd61a3a0-f399-44cb-b7df-0e9e770d7b06" inst="5" lnClass="RDIR" prefix="F32P">
            <DOI name="Dir">
              <DAI esel:datasrc="db:F32P" name="general"/>
              <DAI esel:datasrc="db:F32P?0:1" name="dirGeneral"/>
            </DOI>
          </LN>
          <LN lnType="RDIR1$_bd61a3a0-f399-44cb-b7df-0e9e770d7b06" inst="6" lnClass="RDIR" prefix="R32P">
            <DOI name="Dir">
              <DAI esel:datasrc="db:R32P" name="general"/>
              <DAI esel:datasrc="db:R32P?0:2" name="dirGeneral"/>
            </DOI>
          </LN>
          <LN lnType="RBRF1$_590e3c30-e17c-4451-af48-f150b560c2bb" inst="1" lnClass="RBRF" prefix="BFR1">
            <DOI name="Str">
              <DAI esel:datasrc="db:BFI3P1" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="OpEx">
              <DAI esel:datasrc="db:FBF1" name="general"/>
              <DAI esel:datasrc="db:FBFA1" name="phsA"/>
              <DAI esel:datasrc="db:FBFB1" name="phsB"/>
              <DAI esel:datasrc="db:FBFC1" name="phsC"/>
            </DOI>
            <DOI name="OpIn">
              <DAI esel:datasrc="db:RT1" name="general"/>
            </DOI>
          </LN>
          <LN lnType="RBRF1$_590e3c30-e17c-4451-af48-f150b560c2bb" inst="2" lnClass="RBRF" prefix="BFR2">
            <DOI name="Str">
              <DAI esel:datasrc="db:BFI3P2" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="OpEx">
              <DAI esel:datasrc="db:FBF2" name="general"/>
              <DAI esel:datasrc="db:FBFA2" name="phsA"/>
              <DAI esel:datasrc="db:FBFB2" name="phsB"/>
              <DAI esel:datasrc="db:FBFC2" name="phsC"/>
            </DOI>
            <DOI name="OpIn">
              <DAI esel:datasrc="db:RT2" name="general"/>
            </DOI>
          </LN>
          <LN lnType="XCBR1$_8edbe7f2-66d6-485b-b386-133eaf023067" inst="1" lnClass="XCBR" prefix="BK1">
            <DOI name="Loc">
              <DAI name="stVal">
                <Val>1</Val>
              </DAI>
            </DOI>
            <DOI name="TukRackPos">
              <DAI esel:datasrc="db:521RACK" name="stVal"/>
            </DOI>
            <DOI name="TukTestPos">
              <DAI esel:datasrc="db:521TEST" name="stVal"/>
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:52ACL1?1:2" name="stVal"/>
            </DOI>
            <DOI name="BlkOpn">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="BlkCls">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="CBOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XCBR1$_8edbe7f2-66d6-485b-b386-133eaf023067" inst="2" lnClass="XCBR" prefix="BK2">
            <DOI name="Loc">
              <DAI name="stVal">
                <Val>1</Val>
              </DAI>
            </DOI>
            <DOI name="TukRackPos">
              <DAI esel:datasrc="db:522RACK" name="stVal"/>
            </DOI>
            <DOI name="TukTestPos">
              <DAI esel:datasrc="db:522TEST" name="stVal"/>
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:52ACL2?1:2" name="stVal"/>
            </DOI>
            <DOI name="BlkOpn">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="BlkCls">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="CBOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" inst="1" lnClass="XSWI" prefix="DC1">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL01" name="stVal"/>
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL01?1:2" name="stVal"/>
            </DOI>
            <DOI name="BlkOpn">
              <DAI esel:datasrc="db:89OBL01" name="stVal"/>
            </DOI>
            <DOI name="BlkCls">
              <DAI esel:datasrc="db:89CBL01" name="stVal"/>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" inst="2" lnClass="XSWI" prefix="DC2">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL02" name="stVal"/>
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL02?1:2" name="stVal"/>
            </DOI>
            <DOI name="BlkOpn">
              <DAI esel:datasrc="db:89OBL02" name="stVal"/>
            </DOI>
            <DOI name="BlkCls">
              <DAI esel:datasrc="db:89CBL02" name="stVal"/>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" inst="3" lnClass="XSWI" prefix="DC3">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL03" name="stVal"/>
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL03?1:2" name="stVal"/>
            </DOI>
            <DOI name="BlkOpn">
              <DAI esel:datasrc="db:89OBL03" name="stVal"/>
            </DOI>
            <DOI name="BlkCls">
              <DAI esel:datasrc="db:89CBL03" name="stVal"/>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" inst="4" lnClass="XSWI" prefix="DC4">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL04" name="stVal"/>
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL04?1:2" name="stVal"/>
            </DOI>
            <DOI name="BlkOpn">
              <DAI esel:datasrc="db:89OBL04" name="stVal"/>
            </DOI>
            <DOI name="BlkCls">
              <DAI esel:datasrc="db:89CBL04" name="stVal"/>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" inst="5" lnClass="XSWI" prefix="DC5">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL05" name="stVal"/>
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL05?1:2" name="stVal"/>
            </DOI>
            <DOI name="BlkOpn">
              <DAI esel:datasrc="db:89OBL05" name="stVal"/>
            </DOI>
            <DOI name="BlkCls">
              <DAI esel:datasrc="db:89CBL05" name="stVal"/>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" inst="6" lnClass="XSWI" prefix="DC6">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL06" name="stVal"/>
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL06?1:2" name="stVal"/>
            </DOI>
            <DOI name="BlkOpn">
              <DAI esel:datasrc="db:89OBL06" name="stVal"/>
            </DOI>
            <DOI name="BlkCls">
              <DAI esel:datasrc="db:89CBL06" name="stVal"/>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" inst="7" lnClass="XSWI" prefix="DC7">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL07" name="stVal"/>
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL07?1:2" name="stVal"/>
            </DOI>
            <DOI name="BlkOpn">
              <DAI esel:datasrc="db:89OBL07" name="stVal"/>
            </DOI>
            <DOI name="BlkCls">
              <DAI esel:datasrc="db:89CBL07" name="stVal"/>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" inst="8" lnClass="XSWI" prefix="DC8">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL08" name="stVal"/>
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL08?1:2" name="stVal"/>
            </DOI>
            <DOI name="BlkOpn">
              <DAI esel:datasrc="db:89OBL08" name="stVal"/>
            </DOI>
            <DOI name="BlkCls">
              <DAI esel:datasrc="db:89CBL08" name="stVal"/>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" inst="9" lnClass="XSWI" prefix="DC9">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL09" name="stVal"/>
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL09?1:2" name="stVal"/>
            </DOI>
            <DOI name="BlkOpn">
              <DAI esel:datasrc="db:89OBL09" name="stVal"/>
            </DOI>
            <DOI name="BlkCls">
              <DAI esel:datasrc="db:89CBL09" name="stVal"/>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" inst="10" lnClass="XSWI" prefix="DC10">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL10" name="stVal"/>
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL10?1:2" name="stVal"/>
            </DOI>
            <DOI name="BlkOpn">
              <DAI esel:datasrc="db:89OBL10" name="stVal"/>
            </DOI>
            <DOI name="BlkCls">
              <DAI esel:datasrc="db:89CBL10" name="stVal"/>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" inst="11" lnClass="XSWI" prefix="DC11">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL11" name="stVal"/>
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL11?1:2" name="stVal"/>
            </DOI>
            <DOI name="BlkOpn">
              <DAI esel:datasrc="db:89OBL11" name="stVal"/>
            </DOI>
            <DOI name="BlkCls">
              <DAI esel:datasrc="db:89CBL11" name="stVal"/>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" inst="12" lnClass="XSWI" prefix="DC12">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL12" name="stVal"/>
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL12?1:2" name="stVal"/>
            </DOI>
            <DOI name="BlkOpn">
              <DAI esel:datasrc="db:89OBL12" name="stVal"/>
            </DOI>
            <DOI name="BlkCls">
              <DAI esel:datasrc="db:89CBL12" name="stVal"/>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" inst="13" lnClass="XSWI" prefix="DC13">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL13" name="stVal"/>
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL13?1:2" name="stVal"/>
            </DOI>
            <DOI name="BlkOpn">
              <DAI esel:datasrc="db:89OBL13" name="stVal"/>
            </DOI>
            <DOI name="BlkCls">
              <DAI esel:datasrc="db:89CBL13" name="stVal"/>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" inst="14" lnClass="XSWI" prefix="DC14">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL14" name="stVal"/>
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL14?1:2" name="stVal"/>
            </DOI>
            <DOI name="BlkOpn">
              <DAI esel:datasrc="db:89OBL14" name="stVal"/>
            </DOI>
            <DOI name="BlkCls">
              <DAI esel:datasrc="db:89CBL14" name="stVal"/>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" inst="15" lnClass="XSWI" prefix="DC15">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL15" name="stVal"/>
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL15?1:2" name="stVal"/>
            </DOI>
            <DOI name="BlkOpn">
              <DAI esel:datasrc="db:89OBL15" name="stVal"/>
            </DOI>
            <DOI name="BlkCls">
              <DAI esel:datasrc="db:89CBL15" name="stVal"/>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" inst="16" lnClass="XSWI" prefix="DC16">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL16" name="stVal"/>
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL16?1:2" name="stVal"/>
            </DOI>
            <DOI name="BlkOpn">
              <DAI esel:datasrc="db:89OBL16" name="stVal"/>
            </DOI>
            <DOI name="BlkCls">
              <DAI esel:datasrc="db:89CBL16" name="stVal"/>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" inst="17" lnClass="XSWI" prefix="DC17">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL17" name="stVal"/>
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL17?1:2" name="stVal"/>
            </DOI>
            <DOI name="BlkOpn">
              <DAI esel:datasrc="db:89OBL17" name="stVal"/>
            </DOI>
            <DOI name="BlkCls">
              <DAI esel:datasrc="db:89CBL17" name="stVal"/>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" inst="18" lnClass="XSWI" prefix="DC18">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL18" name="stVal"/>
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL18?1:2" name="stVal"/>
            </DOI>
            <DOI name="BlkOpn">
              <DAI esel:datasrc="db:89OBL18" name="stVal"/>
            </DOI>
            <DOI name="BlkCls">
              <DAI esel:datasrc="db:89CBL18" name="stVal"/>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" inst="19" lnClass="XSWI" prefix="DC19">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL19" name="stVal"/>
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL19?1:2" name="stVal"/>
            </DOI>
            <DOI name="BlkOpn">
              <DAI esel:datasrc="db:89OBL19" name="stVal"/>
            </DOI>
            <DOI name="BlkCls">
              <DAI esel:datasrc="db:89CBL19" name="stVal"/>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="XSWI1" inst="20" lnClass="XSWI" prefix="DC20">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="SwBayCtlEn">
              <DAI esel:datasrc="db:89CTL20" name="stVal"/>
            </DOI>
            <DOI name="OpCnt">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI esel:datasrc="db:89CL20?1:2" name="stVal"/>
            </DOI>
            <DOI name="BlkOpn">
              <DAI esel:datasrc="db:89OBL20" name="stVal"/>
            </DOI>
            <DOI name="BlkCls">
              <DAI esel:datasrc="db:89CBL20" name="stVal"/>
            </DOI>
            <DOI name="SwTyp">
              <DAI name="stVal">
                <Val>Load Break</Val>
              </DAI>
            </DOI>
            <DOI name="SwOpCap">
              <DAI name="stVal">
                <Val>None</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="CSWI1$_b36b103f-938a-4c8a-bf0d-09b4ed9cb4d3" inst="1" lnClass="CSWI" prefix="BKR1">
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:CC1:OC1" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:52ACL1?1:2" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:OC1" name="general"/>
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:CC1" name="general"/>
            </DOI>
          </LN>
          <LN lnType="CSWI1$_b36b103f-938a-4c8a-bf0d-09b4ed9cb4d3" inst="2" lnClass="CSWI" prefix="BKR2">
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:CC2:OC2" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:52ACL2?1:2" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:OC2" name="general"/>
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:CC2" name="general"/>
            </DOI>
          </LN>
          <LN lnType="CSWI2" inst="1" lnClass="CSWI" prefix="DC1">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC01:89OC01" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:89CL01|89OPN01?0:1:2:3" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE01" name="general"/>
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS01" name="general"/>
            </DOI>
          </LN>
          <LN lnType="CSWI2" inst="2" lnClass="CSWI" prefix="DC2">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC02:89OC02" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:89CL02|89OPN02?0:1:2:3" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE02" name="general"/>
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS02" name="general"/>
            </DOI>
          </LN>
          <LN lnType="CSWI2" inst="3" lnClass="CSWI" prefix="DC3">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC03:89OC03" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:89CL03|89OPN03?0:1:2:3" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE03" name="general"/>
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS03" name="general"/>
            </DOI>
          </LN>
          <LN lnType="CSWI2" inst="4" lnClass="CSWI" prefix="DC4">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC04:89OC04" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:89CL04|89OPN04?0:1:2:3" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE04" name="general"/>
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS04" name="general"/>
            </DOI>
          </LN>
          <LN lnType="CSWI2" inst="5" lnClass="CSWI" prefix="DC5">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC05:89OC05" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:89CL05|89OPN05?0:1:2:3" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE05" name="general"/>
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS05" name="general"/>
            </DOI>
          </LN>
          <LN lnType="CSWI2" inst="6" lnClass="CSWI" prefix="DC6">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC06:89OC06" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:89CL06|89OPN06?0:1:2:3" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE06" name="general"/>
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS06" name="general"/>
            </DOI>
          </LN>
          <LN lnType="CSWI2" inst="7" lnClass="CSWI" prefix="DC7">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC07:89OC07" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:89CL07|89OPN07?0:1:2:3" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE07" name="general"/>
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS07" name="general"/>
            </DOI>
          </LN>
          <LN lnType="CSWI2" inst="8" lnClass="CSWI" prefix="DC8">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC08:89OC08" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:89CL08|89OPN08?0:1:2:3" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE08" name="general"/>
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS08" name="general"/>
            </DOI>
          </LN>
          <LN lnType="CSWI2" inst="9" lnClass="CSWI" prefix="DC9">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC09:89OC09" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:89CL09|89OPN09?0:1:2:3" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE09" name="general"/>
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS09" name="general"/>
            </DOI>
          </LN>
          <LN lnType="CSWI2" inst="10" lnClass="CSWI" prefix="DC10">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC10:89OC10" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:89CL10|89OPN10?0:1:2:3" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE10" name="general"/>
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS10" name="general"/>
            </DOI>
          </LN>
          <LN lnType="CSWI2" inst="11" lnClass="CSWI" prefix="DC11">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC11:89OC11" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:89CL11|89OPN11?0:1:2:3" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE11" name="general"/>
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS11" name="general"/>
            </DOI>
          </LN>
          <LN lnType="CSWI2" inst="12" lnClass="CSWI" prefix="DC12">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC12:89OC12" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:89CL12|89OPN12?0:1:2:3" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE12" name="general"/>
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS12" name="general"/>
            </DOI>
          </LN>
          <LN lnType="CSWI2" inst="13" lnClass="CSWI" prefix="DC13">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC13:89OC13" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:89CL13|89OPN13?0:1:2:3" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE13" name="general"/>
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS13" name="general"/>
            </DOI>
          </LN>
          <LN lnType="CSWI2" inst="14" lnClass="CSWI" prefix="DC14">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC14:89OC14" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:89CL14|89OPN14?0:1:2:3" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE14" name="general"/>
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS14" name="general"/>
            </DOI>
          </LN>
          <LN lnType="CSWI2" inst="15" lnClass="CSWI" prefix="DC15">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC15:89OC15" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:89CL15|89OPN15?0:1:2:3" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE15" name="general"/>
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS15" name="general"/>
            </DOI>
          </LN>
          <LN lnType="CSWI2" inst="16" lnClass="CSWI" prefix="DC16">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC16:89OC16" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:89CL16|89OPN16?0:1:2:3" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE16" name="general"/>
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS16" name="general"/>
            </DOI>
          </LN>
          <LN lnType="CSWI2" inst="17" lnClass="CSWI" prefix="DC17">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC17:89OC17" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:89CL17|89OPN17?0:1:2:3" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE17" name="general"/>
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS17" name="general"/>
            </DOI>
          </LN>
          <LN lnType="CSWI2" inst="18" lnClass="CSWI" prefix="DC18">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC18:89OC18" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:89CL18|89OPN18?0:1:2:3" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE18" name="general"/>
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS18" name="general"/>
            </DOI>
          </LN>
          <LN lnType="CSWI2" inst="19" lnClass="CSWI" prefix="DC19">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC19:89OC19" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:89CL19|89OPN19?0:1:2:3" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE19" name="general"/>
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS19" name="general"/>
            </DOI>
          </LN>
          <LN lnType="CSWI2" inst="20" lnClass="CSWI" prefix="DC20">
            <DOI name="Loc">
              <DAI esel:datasrc="db:LOCAL" name="stVal"/>
            </DOI>
            <DOI name="Pos">
              <SDI name="Oper">
                <DAI esel:datasrc="db:89CC20:89OC20" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:89CL20|89OPN20?0:1:2:3" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="OpOpn">
              <DAI esel:datasrc="db:89OPE20" name="general"/>
            </DOI>
            <DOI name="OpCls">
              <DAI esel:datasrc="db:89CLS20" name="general"/>
            </DOI>
          </LN>
          <LN lnType="RFLO1" inst="1" lnClass="RFLO" prefix="FLT">
            <DOI name="FltZ">
              <SDI name="instCVal">
                <SDI name="mag">
                  <DAI esel:datasrc="db:FLZMAG" name="f"/>
                </SDI>
                <SDI name="ang">
                  <DAI esel:datasrc="db:FLZANG" name="f"/>
                </SDI>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>ohm</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>1</Val>
              </DAI>
              <DAI esel:datasrc="imm:360" name="dbAng">
                <Val>100</Val>
              </DAI>
            </DOI>
            <DOI name="FltDiskm">
              <SDI name="instMag">
                <DAI esel:datasrc="db:FLDIST" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>m</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val>k</Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>5</Val>
              </DAI>
            </DOI>
            <DOI name="A">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:FLIA" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:FLIB" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:FLIC" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="res">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:FLIG" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="Anseq">
              <SDI name="instCVal">
                <SDI name="mag">
                  <DAI esel:datasrc="db:FLIQ" name="f"/>
                </SDI>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>A</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>100</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="RDRE1" inst="1" lnClass="RDRE" prefix="FLT">
            <DOI name="RcdMade">
              <DAI esel:datasrc="db:FLREP" name="stVal"/>
            </DOI>
            <DOI name="FltNum">
              <DAI esel:datasrc="db:FLRNUM" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="PTUV1$_50b9c076-fc46-45f1-8a89-ffcee8ae1acd" inst="1" lnClass="PTUV" prefix="LOP">
            <DOI name="Str">
              <DAI esel:datasrc="db:LOP" name="general"/>
              <DAI name="dirGeneral">
                <Val>unknown</Val>
              </DAI>
            </DOI>
            <DOI name="Op">
              <DAI esel:datasrc="db:LOP" name="general"/>
            </DOI>
          </LN>
          <LN lnType="PTTR1" inst="1" lnClass="PTTR" prefix="TH1">
            <DOI name="Op">
              <DAI esel:datasrc="db:THRLT1" name="general"/>
            </DOI>
            <DOI name="AlmThm">
              <DAI esel:datasrc="db:THRLA1" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="PTTR1" inst="2" lnClass="PTTR" prefix="TH2">
            <DOI name="Op">
              <DAI esel:datasrc="db:THRLT2" name="general"/>
            </DOI>
            <DOI name="AlmThm">
              <DAI esel:datasrc="db:THRLA2" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="PTTR1" inst="3" lnClass="PTTR" prefix="TH3">
            <DOI name="Op">
              <DAI esel:datasrc="db:THRLT3" name="general"/>
            </DOI>
            <DOI name="AlmThm">
              <DAI esel:datasrc="db:THRLA3" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="SCBR1" inst="1" lnClass="SCBR" prefix="BS1A">
            <DOI name="ColOpn">
              <DAI esel:datasrc="db:OC1" name="stVal"/>
            </DOI>
            <DOI name="AbrAlm">
              <DAI esel:datasrc="db:B1BCWAL" name="stVal"/>
            </DOI>
            <DOI name="MechTmAlm">
              <DAI esel:datasrc="db:B1MSOAL" name="stVal"/>
            </DOI>
            <DOI name="OpTmAlm">
              <DAI esel:datasrc="db:B1ESOAL" name="stVal"/>
            </DOI>
            <DOI name="AccAbr">
              <SDI name="instMag">
                <DAI esel:datasrc="db:B1BCWPA" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>1</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="SCBR1" inst="2" lnClass="SCBR" prefix="BS1B">
            <DOI name="ColOpn">
              <DAI esel:datasrc="db:OC1" name="stVal"/>
            </DOI>
            <DOI name="AbrAlm">
              <DAI esel:datasrc="db:B1BCWAL" name="stVal"/>
            </DOI>
            <DOI name="MechTmAlm">
              <DAI esel:datasrc="db:B1MSOAL" name="stVal"/>
            </DOI>
            <DOI name="OpTmAlm">
              <DAI esel:datasrc="db:B1ESOAL" name="stVal"/>
            </DOI>
            <DOI name="AccAbr">
              <SDI name="instMag">
                <DAI esel:datasrc="db:B1BCWPB" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>1</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="SCBR1" inst="3" lnClass="SCBR" prefix="BS1C">
            <DOI name="ColOpn">
              <DAI esel:datasrc="db:OC1" name="stVal"/>
            </DOI>
            <DOI name="AbrAlm">
              <DAI esel:datasrc="db:B1BCWAL" name="stVal"/>
            </DOI>
            <DOI name="MechTmAlm">
              <DAI esel:datasrc="db:B1MSOAL" name="stVal"/>
            </DOI>
            <DOI name="OpTmAlm">
              <DAI esel:datasrc="db:B1ESOAL" name="stVal"/>
            </DOI>
            <DOI name="AccAbr">
              <SDI name="instMag">
                <DAI esel:datasrc="db:B1BCWPC" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>1</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="SCBR1" inst="4" lnClass="SCBR" prefix="BS2A">
            <DOI name="ColOpn">
              <DAI esel:datasrc="db:OC2" name="stVal"/>
            </DOI>
            <DOI name="AbrAlm">
              <DAI esel:datasrc="db:B2BCWAL" name="stVal"/>
            </DOI>
            <DOI name="MechTmAlm">
              <DAI esel:datasrc="db:B2MSOAL" name="stVal"/>
            </DOI>
            <DOI name="OpTmAlm">
              <DAI esel:datasrc="db:B2ESOAL" name="stVal"/>
            </DOI>
            <DOI name="AccAbr">
              <SDI name="instMag">
                <DAI esel:datasrc="db:B2BCWPA" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>1</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="SCBR1" inst="5" lnClass="SCBR" prefix="BS2B">
            <DOI name="ColOpn">
              <DAI esel:datasrc="db:OC2" name="stVal"/>
            </DOI>
            <DOI name="AbrAlm">
              <DAI esel:datasrc="db:B2BCWAL" name="stVal"/>
            </DOI>
            <DOI name="MechTmAlm">
              <DAI esel:datasrc="db:B2MSOAL" name="stVal"/>
            </DOI>
            <DOI name="OpTmAlm">
              <DAI esel:datasrc="db:B2ESOAL" name="stVal"/>
            </DOI>
            <DOI name="AccAbr">
              <SDI name="instMag">
                <DAI esel:datasrc="db:B2BCWPB" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>1</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="SCBR1" inst="6" lnClass="SCBR" prefix="BS2C">
            <DOI name="ColOpn">
              <DAI esel:datasrc="db:OC2" name="stVal"/>
            </DOI>
            <DOI name="AbrAlm">
              <DAI esel:datasrc="db:B2BCWAL" name="stVal"/>
            </DOI>
            <DOI name="MechTmAlm">
              <DAI esel:datasrc="db:B2MSOAL" name="stVal"/>
            </DOI>
            <DOI name="OpTmAlm">
              <DAI esel:datasrc="db:B2ESOAL" name="stVal"/>
            </DOI>
            <DOI name="AccAbr">
              <SDI name="instMag">
                <DAI esel:datasrc="db:B2BCWPC" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>1</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
        <LDevice desc="Metering" inst="MET">
          <LN0 lnType="LN0$_0747fb50-c26d-4fdb-9a67-b50d39640275" inst="" lnClass="LLN0">
            <DOI name="NamPlt">
              <DAI name="d">
                <Val>Metering</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnType="LPHD1$_9d075b70-3e2a-44c2-b215-bd66a9e6c52a" inst="1" lnClass="LPHD" prefix="MET">
            <DOI name="Proxy">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="MMXU1$_2c8c58b0-371b-4943-888e-22f7c73b3c6b" inst="1" lnClass="MMXU" prefix="MET3P">
            <DOI name="TotW">
              <SDI name="instMag">
                <DAI esel:datasrc="db:3P_F" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>Watts</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val>M</Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>500</Val>
              </DAI>
            </DOI>
            <DOI name="TotVAr">
              <SDI name="instMag">
                <DAI esel:datasrc="db:3Q_F" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>VAr</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val>M</Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>500</Val>
              </DAI>
            </DOI>
            <DOI name="TotVA">
              <SDI name="instMag">
                <DAI esel:datasrc="db:3S_F" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>VA</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val>M</Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>500</Val>
              </DAI>
            </DOI>
            <DOI name="TotPF">
              <SDI name="instMag">
                <DAI esel:datasrc="db:3DPF" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:1" name="db">
                <Val>500</Val>
              </DAI>
            </DOI>
            <DOI name="Hz">
              <SDI name="instMag">
                <DAI esel:datasrc="db:FREQ" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>Hz</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100" name="db">
                <Val>500</Val>
              </DAI>
            </DOI>
            <DOI name="PhV">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:VAFM" name="f"/>
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:VAFA" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>V</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>k</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:500000" name="db">
                  <Val>10</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:VBFM" name="f"/>
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:VBFA" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>V</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>k</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:500000" name="db">
                  <Val>10</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:VCFM" name="f"/>
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:VCFA" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>V</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>k</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:500000" name="db">
                  <Val>10</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="A">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:LIAFM" name="f"/>
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:LIAFA" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:LIBFM" name="f"/>
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:LIBFA" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:LICFM" name="f"/>
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:LICFA" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="W">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:PA_F" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>Watts</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:PB_F" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>Watts</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:PC_F" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>Watts</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="VAr">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:QA_F" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VAr</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:QB_F" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VAr</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:QC_F" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VAr</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="PF">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:DPFA" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val></Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:1" name="db">
                  <Val>5000</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:DPFB" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val></Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:1" name="db">
                  <Val>5000</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:DPFC" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val></Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:1" name="db">
                  <Val>5000</Val>
                </DAI>
              </SDI>
            </DOI>
          </LN>
          <LN lnType="MMXU2" inst="1" lnClass="MMXU" prefix="METBC1">
            <DOI name="A">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:B1IAFM" name="f"/>
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:B1IAFA" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:B1IBFM" name="f"/>
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:B1IBFA" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:B1ICFM" name="f"/>
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:B1ICFA" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
            </DOI>
          </LN>
          <LN lnType="MMXU2" inst="2" lnClass="MMXU" prefix="METBC2">
            <DOI name="A">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:B2IAFM" name="f"/>
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:B2IAFA" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:B2IBFM" name="f"/>
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:B2IBFA" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:B2ICFM" name="f"/>
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:B2ICFA" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
            </DOI>
          </LN>
          <LN lnType="MSQI1" inst="1" lnClass="MSQI" prefix="SEQ">
            <DOI name="SeqA">
              <SDI name="c1">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:LI1M" name="f"/>
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:LI1A" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="c2">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:L3I2M" name="f"/>
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:L3I2A" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="c3">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:LIGM" name="f"/>
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:LIGA" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <DAI name="seqT">
                <Val>pos-neg-zero</Val>
              </DAI>
            </DOI>
            <DOI name="SeqV">
              <SDI name="c1">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:V1M" name="f"/>
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:V1A" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>V</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>k</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:500000" name="db">
                  <Val>10</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="c2">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:3V2M" name="f"/>
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:3V2A" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>V</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>k</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:500000" name="db">
                  <Val>10</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="c3">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:3V0M" name="f"/>
                  </SDI>
                  <SDI name="ang">
                    <DAI esel:datasrc="db:3V0A" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>V</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>k</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:500000" name="db">
                  <Val>10</Val>
                </DAI>
                <DAI esel:datasrc="imm:360" name="dbAng">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <DAI name="seqT">
                <Val>pos-neg-zero</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="ZBAT1" inst="1" lnClass="ZBAT" prefix="DC">
            <DOI name="Vol">
              <SDI name="instMag">
                <DAI esel:datasrc="db:DC1" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>V</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:250" name="db">
                <Val>800</Val>
              </DAI>
            </DOI>
            <DOI name="BatWrn">
              <DAI esel:datasrc="db:DC1W" name="stVal"/>
            </DOI>
            <DOI name="BatFail">
              <DAI esel:datasrc="db:DC1F" name="stVal"/>
            </DOI>
            <DOI name="BatGndFlt">
              <DAI esel:datasrc="db:DC1G" name="stVal"/>
            </DOI>
            <DOI name="BatDvAlm">
              <DAI esel:datasrc="db:DC1R" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="ZBAT1" inst="2" lnClass="ZBAT" prefix="DC">
            <DOI name="Vol">
              <SDI name="instMag">
                <DAI esel:datasrc="db:DC2" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>V</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:250" name="db">
                <Val>800</Val>
              </DAI>
            </DOI>
            <DOI name="BatWrn">
              <DAI esel:datasrc="db:DC2W" name="stVal"/>
            </DOI>
            <DOI name="BatFail">
              <DAI esel:datasrc="db:DC2F" name="stVal"/>
            </DOI>
            <DOI name="BatGndFlt">
              <DAI esel:datasrc="db:DC2G" name="stVal"/>
            </DOI>
            <DOI name="BatDvAlm">
              <DAI esel:datasrc="db:DC2R" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="MDST1" inst="1" lnClass="MDST" prefix="DMD">
            <DOI name="NamPlt">
              <DAI name="d">
                <Val>Demand values</Val>
              </DAI>
            </DOI>
            <DOI name="A">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:IAD" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:500000" name="db">
                  <Val>10</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:IBD" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:500000" name="db">
                  <Val>10</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:ICD" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:500000" name="db">
                  <Val>10</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="W">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:PAD" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>Watts</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:PBD" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>Watts</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:PCD" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>Watts</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="VAr">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:QAD" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VAr</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:QBD" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VAr</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:QCD" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VAr</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="VA">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:UAD" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VA</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:UBD" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VA</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:UCD" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VA</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="SeqA">
              <SDI name="c1">
                <SDI name="instMag">
                  <DAI esel:datasrc="db:CSV06" name="f"/>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="c2">
                <SDI name="instMag">
                  <DAI esel:datasrc="db:3I2D" name="f"/>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="c3">
                <SDI name="instMag">
                  <DAI esel:datasrc="db:IGD" name="f"/>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <DAI name="seqT">
                <Val>pos-neg-zero</Val>
              </DAI>
            </DOI>
            <DOI name="TotW">
              <SDI name="instMag">
                <DAI esel:datasrc="db:3PD" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>Watts</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val>M</Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>500</Val>
              </DAI>
            </DOI>
            <DOI name="TotVAr">
              <SDI name="instMag">
                <DAI esel:datasrc="db:3QD" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>VAr</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val>M</Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>500</Val>
              </DAI>
            </DOI>
            <DOI name="TotVA">
              <SDI name="instMag">
                <DAI esel:datasrc="db:3UD" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>VA</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val>M</Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:25000" name="db">
                <Val>400</Val>
              </DAI>
            </DOI>
            <DOI name="SupWh">
              <DAI esel:datasrc="db:3MWHOUT" name="actVal"/>
            </DOI>
            <DOI name="DmdWh">
              <DAI esel:datasrc="db:3MWHIN" name="actVal"/>
            </DOI>
          </LN>
          <LN lnType="MDST2" inst="1" lnClass="MDST" prefix="PKDMD">
            <DOI name="NamPlt">
              <DAI name="d">
                <Val>Peak Demand values</Val>
              </DAI>
            </DOI>
            <DOI name="A">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:IAPKD" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:500000" name="db">
                  <Val>10</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:IBPKD" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:500000" name="db">
                  <Val>10</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:ICPKD" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:500000" name="db">
                  <Val>10</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="W">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:PAPKD" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>Watts</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:PBPKD" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>Watts</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:PCPKD" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>Watts</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="VAr">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:QAPKD" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VAr</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:QBPKD" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VAr</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:QCPKD" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VAr</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="VA">
              <SDI name="phsA">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:UAPKD" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VA</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsB">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:UBPKD" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VA</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
              <SDI name="phsC">
                <SDI name="instCVal">
                  <SDI name="mag">
                    <DAI esel:datasrc="db:UCPKD" name="f"/>
                  </SDI>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>VA</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val>M</Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:25000" name="db">
                  <Val>400</Val>
                </DAI>
              </SDI>
            </DOI>
            <DOI name="SeqA">
              <SDI name="c1">
                <SDI name="instMag">
                  <DAI esel:datasrc="db:3I2PKD" name="f"/>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="c2">
                <SDI name="instMag">
                  <DAI esel:datasrc="db:3I2PKD" name="f"/>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <SDI name="c3">
                <SDI name="instMag">
                  <DAI esel:datasrc="db:IGPKD" name="f"/>
                </SDI>
                <SDI name="units">
                  <DAI name="SIUnit">
                    <Val>A</Val>
                  </DAI>
                  <DAI name="multiplier">
                    <Val></Val>
                  </DAI>
                </SDI>
                <DAI esel:datasrc="imm:10000" name="db">
                  <Val>100</Val>
                </DAI>
              </SDI>
              <DAI name="seqT">
                <Val>pos-neg-zero</Val>
              </DAI>
            </DOI>
            <DOI name="TotW">
              <SDI name="instMag">
                <DAI esel:datasrc="db:3PPKD" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>Watts</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val>M</Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>500</Val>
              </DAI>
            </DOI>
            <DOI name="TotVAr">
              <SDI name="instMag">
                <DAI esel:datasrc="db:3QPKD" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>VAr</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val>M</Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:100000" name="db">
                <Val>500</Val>
              </DAI>
            </DOI>
            <DOI name="TotVA">
              <SDI name="instMag">
                <DAI esel:datasrc="db:3UPKD" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>VA</Val>
                </DAI>
                <DAI name="multiplier">
                  <Val>M</Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:25000" name="db">
                <Val>400</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
        <LDevice desc="Remote Control" inst="CON">
          <LN0 lnType="LN0$_0747fb50-c26d-4fdb-9a67-b50d39640275" inst="" lnClass="LLN0">
            <DOI name="NamPlt">
              <DAI name="d">
                <Val>Control</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnType="LPHD1$_9d075b70-3e2a-44c2-b215-bd66a9e6c52a" inst="1" lnClass="LPHD" prefix="CTRL">
            <DOI name="Proxy">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_BC01_08$_379bb887-e541-4b92-a6d3-60a73703e264" inst="1" lnClass="GGIO" prefix="RB">
            <DOI name="SPCSO01">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB01" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB01" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO02">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB02" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB02" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO03">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB03" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB03" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO04">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB04" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB04" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO05">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB05" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB05" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO06">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB06" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB06" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO07">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB07" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB07" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO08">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB08" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB08" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_BC09_16$_7f2bf10f-a6e3-489c-8af6-8db03605a3d9" inst="2" lnClass="GGIO" prefix="RB">
            <DOI name="SPCSO09">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB09" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB09" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO10">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB10" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB10" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO11">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB11" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB11" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO12">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB12" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB12" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO13">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB13" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB13" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO14">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB14" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB14" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO15">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB15" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB15" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO16">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB16" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB16" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_BC17_24$_1df115a3-d617-4a49-9674-aa04b2f03b2d" inst="3" lnClass="GGIO" prefix="RB">
            <DOI name="SPCSO17">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB17" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB17" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO18">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB18" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB18" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO19">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB19" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB19" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO20">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB20" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB20" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO21">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB21" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB21" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO22">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB22" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB22" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO23">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB23" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB23" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO24">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB24" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB24" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_BC25_32$_ce2cb191-ad4b-4e02-9ac8-36c273dfc2b5" inst="4" lnClass="GGIO" prefix="RB">
            <DOI name="SPCSO25">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB25" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB25" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO26">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB26" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB26" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO27">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB27" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB27" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO28">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB28" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB28" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO29">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB29" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB29" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO30">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB30" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB30" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO31">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB31" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB31" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO32">
              <SDI name="Oper">
                <DAI esel:datasrc="db:RB32" name="ctlVal"/>
              </SDI>
              <DAI esel:datasrc="db:RB32" name="stVal"/>
              <DAI name="ctlModel">
                <Val>direct-with-normal-security</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
        <LDevice desc="Annunciation" inst="ANN">
          <LN0 lnType="LN0$_0747fb50-c26d-4fdb-9a67-b50d39640275" inst="" lnClass="LLN0">
            <DOI name="NamPlt">
              <DAI name="d">
                <Val>Annunciation</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnType="LPHD1$_9d075b70-3e2a-44c2-b215-bd66a9e6c52a" inst="1" lnClass="LPHD" prefix="STA">
            <DOI name="Proxy">
              <DAI name="stVal">
                <Val>0</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS64" inst="1" lnClass="GGIO" prefix="PSV">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:PSV01" name="stVal"/>
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:PSV02" name="stVal"/>
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:PSV03" name="stVal"/>
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:PSV04" name="stVal"/>
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:PSV05" name="stVal"/>
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:PSV06" name="stVal"/>
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:PSV07" name="stVal"/>
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:PSV08" name="stVal"/>
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:PSV09" name="stVal"/>
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:PSV10" name="stVal"/>
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:PSV11" name="stVal"/>
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:PSV12" name="stVal"/>
            </DOI>
            <DOI name="Ind13">
              <DAI esel:datasrc="db:PSV13" name="stVal"/>
            </DOI>
            <DOI name="Ind14">
              <DAI esel:datasrc="db:PSV14" name="stVal"/>
            </DOI>
            <DOI name="Ind15">
              <DAI esel:datasrc="db:PSV15" name="stVal"/>
            </DOI>
            <DOI name="Ind16">
              <DAI esel:datasrc="db:PSV16" name="stVal"/>
            </DOI>
            <DOI name="Ind17">
              <DAI esel:datasrc="db:PSV17" name="stVal"/>
            </DOI>
            <DOI name="Ind18">
              <DAI esel:datasrc="db:PSV18" name="stVal"/>
            </DOI>
            <DOI name="Ind19">
              <DAI esel:datasrc="db:PSV19" name="stVal"/>
            </DOI>
            <DOI name="Ind20">
              <DAI esel:datasrc="db:PSV20" name="stVal"/>
            </DOI>
            <DOI name="Ind21">
              <DAI esel:datasrc="db:PSV21" name="stVal"/>
            </DOI>
            <DOI name="Ind22">
              <DAI esel:datasrc="db:PSV22" name="stVal"/>
            </DOI>
            <DOI name="Ind23">
              <DAI esel:datasrc="db:PSV23" name="stVal"/>
            </DOI>
            <DOI name="Ind24">
              <DAI esel:datasrc="db:PSV24" name="stVal"/>
            </DOI>
            <DOI name="Ind25">
              <DAI esel:datasrc="db:PSV25" name="stVal"/>
            </DOI>
            <DOI name="Ind26">
              <DAI esel:datasrc="db:PSV26" name="stVal"/>
            </DOI>
            <DOI name="Ind27">
              <DAI esel:datasrc="db:PSV27" name="stVal"/>
            </DOI>
            <DOI name="Ind28">
              <DAI esel:datasrc="db:PSV28" name="stVal"/>
            </DOI>
            <DOI name="Ind29">
              <DAI esel:datasrc="db:PSV29" name="stVal"/>
            </DOI>
            <DOI name="Ind30">
              <DAI esel:datasrc="db:PSV30" name="stVal"/>
            </DOI>
            <DOI name="Ind31">
              <DAI esel:datasrc="db:PSV31" name="stVal"/>
            </DOI>
            <DOI name="Ind32">
              <DAI esel:datasrc="db:PSV32" name="stVal"/>
            </DOI>
            <DOI name="Ind33">
              <DAI esel:datasrc="db:PSV33" name="stVal"/>
            </DOI>
            <DOI name="Ind34">
              <DAI esel:datasrc="db:PSV34" name="stVal"/>
            </DOI>
            <DOI name="Ind35">
              <DAI esel:datasrc="db:PSV35" name="stVal"/>
            </DOI>
            <DOI name="Ind36">
              <DAI esel:datasrc="db:PSV36" name="stVal"/>
            </DOI>
            <DOI name="Ind37">
              <DAI esel:datasrc="db:PSV37" name="stVal"/>
            </DOI>
            <DOI name="Ind38">
              <DAI esel:datasrc="db:PSV38" name="stVal"/>
            </DOI>
            <DOI name="Ind39">
              <DAI esel:datasrc="db:PSV39" name="stVal"/>
            </DOI>
            <DOI name="Ind40">
              <DAI esel:datasrc="db:PSV40" name="stVal"/>
            </DOI>
            <DOI name="Ind41">
              <DAI esel:datasrc="db:PSV41" name="stVal"/>
            </DOI>
            <DOI name="Ind42">
              <DAI esel:datasrc="db:PSV42" name="stVal"/>
            </DOI>
            <DOI name="Ind43">
              <DAI esel:datasrc="db:PSV43" name="stVal"/>
            </DOI>
            <DOI name="Ind44">
              <DAI esel:datasrc="db:PSV44" name="stVal"/>
            </DOI>
            <DOI name="Ind45">
              <DAI esel:datasrc="db:PSV45" name="stVal"/>
            </DOI>
            <DOI name="Ind46">
              <DAI esel:datasrc="db:PSV46" name="stVal"/>
            </DOI>
            <DOI name="Ind47">
              <DAI esel:datasrc="db:PSV47" name="stVal"/>
            </DOI>
            <DOI name="Ind48">
              <DAI esel:datasrc="db:PSV48" name="stVal"/>
            </DOI>
            <DOI name="Ind49">
              <DAI esel:datasrc="db:PSV49" name="stVal"/>
            </DOI>
            <DOI name="Ind50">
              <DAI esel:datasrc="db:PSV50" name="stVal"/>
            </DOI>
            <DOI name="Ind51">
              <DAI esel:datasrc="db:PSV51" name="stVal"/>
            </DOI>
            <DOI name="Ind52">
              <DAI esel:datasrc="db:PSV52" name="stVal"/>
            </DOI>
            <DOI name="Ind53">
              <DAI esel:datasrc="db:PSV53" name="stVal"/>
            </DOI>
            <DOI name="Ind54">
              <DAI esel:datasrc="db:PSV54" name="stVal"/>
            </DOI>
            <DOI name="Ind55">
              <DAI esel:datasrc="db:PSV55" name="stVal"/>
            </DOI>
            <DOI name="Ind56">
              <DAI esel:datasrc="db:PSV56" name="stVal"/>
            </DOI>
            <DOI name="Ind57">
              <DAI esel:datasrc="db:PSV57" name="stVal"/>
            </DOI>
            <DOI name="Ind58">
              <DAI esel:datasrc="db:PSV58" name="stVal"/>
            </DOI>
            <DOI name="Ind59">
              <DAI esel:datasrc="db:PSV59" name="stVal"/>
            </DOI>
            <DOI name="Ind60">
              <DAI esel:datasrc="db:PSV60" name="stVal"/>
            </DOI>
            <DOI name="Ind61">
              <DAI esel:datasrc="db:PSV61" name="stVal"/>
            </DOI>
            <DOI name="Ind62">
              <DAI esel:datasrc="db:PSV62" name="stVal"/>
            </DOI>
            <DOI name="Ind63">
              <DAI esel:datasrc="db:PSV63" name="stVal"/>
            </DOI>
            <DOI name="Ind64">
              <DAI esel:datasrc="db:PSV64" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS32" inst="2" lnClass="GGIO" prefix="PLT">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:PLT01" name="stVal"/>
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:PLT02" name="stVal"/>
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:PLT03" name="stVal"/>
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:PLT04" name="stVal"/>
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:PLT05" name="stVal"/>
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:PLT06" name="stVal"/>
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:PLT07" name="stVal"/>
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:PLT08" name="stVal"/>
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:PLT09" name="stVal"/>
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:PLT10" name="stVal"/>
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:PLT11" name="stVal"/>
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:PLT12" name="stVal"/>
            </DOI>
            <DOI name="Ind13">
              <DAI esel:datasrc="db:PLT13" name="stVal"/>
            </DOI>
            <DOI name="Ind14">
              <DAI esel:datasrc="db:PLT14" name="stVal"/>
            </DOI>
            <DOI name="Ind15">
              <DAI esel:datasrc="db:PLT15" name="stVal"/>
            </DOI>
            <DOI name="Ind16">
              <DAI esel:datasrc="db:PLT16" name="stVal"/>
            </DOI>
            <DOI name="Ind17">
              <DAI esel:datasrc="db:PLT17" name="stVal"/>
            </DOI>
            <DOI name="Ind18">
              <DAI esel:datasrc="db:PLT18" name="stVal"/>
            </DOI>
            <DOI name="Ind19">
              <DAI esel:datasrc="db:PLT19" name="stVal"/>
            </DOI>
            <DOI name="Ind20">
              <DAI esel:datasrc="db:PLT20" name="stVal"/>
            </DOI>
            <DOI name="Ind21">
              <DAI esel:datasrc="db:PLT21" name="stVal"/>
            </DOI>
            <DOI name="Ind22">
              <DAI esel:datasrc="db:PLT22" name="stVal"/>
            </DOI>
            <DOI name="Ind23">
              <DAI esel:datasrc="db:PLT23" name="stVal"/>
            </DOI>
            <DOI name="Ind24">
              <DAI esel:datasrc="db:PLT24" name="stVal"/>
            </DOI>
            <DOI name="Ind25">
              <DAI esel:datasrc="db:PLT25" name="stVal"/>
            </DOI>
            <DOI name="Ind26">
              <DAI esel:datasrc="db:PLT26" name="stVal"/>
            </DOI>
            <DOI name="Ind27">
              <DAI esel:datasrc="db:PLT27" name="stVal"/>
            </DOI>
            <DOI name="Ind28">
              <DAI esel:datasrc="db:PLT28" name="stVal"/>
            </DOI>
            <DOI name="Ind29">
              <DAI esel:datasrc="db:PLT29" name="stVal"/>
            </DOI>
            <DOI name="Ind30">
              <DAI esel:datasrc="db:PLT30" name="stVal"/>
            </DOI>
            <DOI name="Ind31">
              <DAI esel:datasrc="db:PLT31" name="stVal"/>
            </DOI>
            <DOI name="Ind32">
              <DAI esel:datasrc="db:PLT32" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="GGIO_AS64" inst="3" lnClass="GGIO" prefix="PMV">
            <DOI name="AnIn01">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV01" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn02">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV02" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn03">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV03" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn04">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV04" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn05">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV05" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn06">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV06" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn07">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV07" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn08">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV08" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn09">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV09" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn10">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV10" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn11">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV11" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn12">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV12" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn13">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV13" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn14">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV14" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn15">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV15" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn16">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV16" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn17">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV17" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn18">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV18" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn19">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV19" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn20">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV20" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn21">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV21" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn22">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV22" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn23">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV23" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn24">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV24" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn25">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV25" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn26">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV26" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn27">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV27" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn28">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV28" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn29">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV29" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn30">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV30" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn31">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV31" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn32">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV32" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn33">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV33" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn34">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV34" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn35">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV35" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn36">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV36" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn37">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV37" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn38">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV38" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn39">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV39" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn40">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV40" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn41">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV41" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn42">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV42" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn43">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV43" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn44">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV44" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn45">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV45" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn46">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV46" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn47">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV47" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn48">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV48" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn49">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV49" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn50">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV50" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn51">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV51" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn52">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV52" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn53">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV53" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn54">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV54" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn55">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV55" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn56">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV56" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn57">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV57" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn58">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV58" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn59">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV59" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn60">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV60" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn61">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV61" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn62">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV62" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn63">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV63" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn64">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PMV64" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS128" inst="4" lnClass="GGIO" prefix="ASV">
            <DOI name="Ind001">
              <DAI esel:datasrc="db:ASV001" name="stVal"/>
            </DOI>
            <DOI name="Ind002">
              <DAI esel:datasrc="db:ASV002" name="stVal"/>
            </DOI>
            <DOI name="Ind003">
              <DAI esel:datasrc="db:ASV003" name="stVal"/>
            </DOI>
            <DOI name="Ind004">
              <DAI esel:datasrc="db:ASV004" name="stVal"/>
            </DOI>
            <DOI name="Ind005">
              <DAI esel:datasrc="db:ASV005" name="stVal"/>
            </DOI>
            <DOI name="Ind006">
              <DAI esel:datasrc="db:ASV006" name="stVal"/>
            </DOI>
            <DOI name="Ind007">
              <DAI esel:datasrc="db:ASV007" name="stVal"/>
            </DOI>
            <DOI name="Ind008">
              <DAI esel:datasrc="db:ASV008" name="stVal"/>
            </DOI>
            <DOI name="Ind009">
              <DAI esel:datasrc="db:ASV009" name="stVal"/>
            </DOI>
            <DOI name="Ind010">
              <DAI esel:datasrc="db:ASV010" name="stVal"/>
            </DOI>
            <DOI name="Ind011">
              <DAI esel:datasrc="db:ASV011" name="stVal"/>
            </DOI>
            <DOI name="Ind012">
              <DAI esel:datasrc="db:ASV012" name="stVal"/>
            </DOI>
            <DOI name="Ind013">
              <DAI esel:datasrc="db:ASV013" name="stVal"/>
            </DOI>
            <DOI name="Ind014">
              <DAI esel:datasrc="db:ASV014" name="stVal"/>
            </DOI>
            <DOI name="Ind015">
              <DAI esel:datasrc="db:ASV015" name="stVal"/>
            </DOI>
            <DOI name="Ind016">
              <DAI esel:datasrc="db:ASV016" name="stVal"/>
            </DOI>
            <DOI name="Ind017">
              <DAI esel:datasrc="db:ASV017" name="stVal"/>
            </DOI>
            <DOI name="Ind018">
              <DAI esel:datasrc="db:ASV018" name="stVal"/>
            </DOI>
            <DOI name="Ind019">
              <DAI esel:datasrc="db:ASV019" name="stVal"/>
            </DOI>
            <DOI name="Ind020">
              <DAI esel:datasrc="db:ASV020" name="stVal"/>
            </DOI>
            <DOI name="Ind021">
              <DAI esel:datasrc="db:ASV021" name="stVal"/>
            </DOI>
            <DOI name="Ind022">
              <DAI esel:datasrc="db:ASV022" name="stVal"/>
            </DOI>
            <DOI name="Ind023">
              <DAI esel:datasrc="db:ASV023" name="stVal"/>
            </DOI>
            <DOI name="Ind024">
              <DAI esel:datasrc="db:ASV024" name="stVal"/>
            </DOI>
            <DOI name="Ind025">
              <DAI esel:datasrc="db:ASV025" name="stVal"/>
            </DOI>
            <DOI name="Ind026">
              <DAI esel:datasrc="db:ASV026" name="stVal"/>
            </DOI>
            <DOI name="Ind027">
              <DAI esel:datasrc="db:ASV027" name="stVal"/>
            </DOI>
            <DOI name="Ind028">
              <DAI esel:datasrc="db:ASV028" name="stVal"/>
            </DOI>
            <DOI name="Ind029">
              <DAI esel:datasrc="db:ASV029" name="stVal"/>
            </DOI>
            <DOI name="Ind030">
              <DAI esel:datasrc="db:ASV030" name="stVal"/>
            </DOI>
            <DOI name="Ind031">
              <DAI esel:datasrc="db:ASV031" name="stVal"/>
            </DOI>
            <DOI name="Ind032">
              <DAI esel:datasrc="db:ASV032" name="stVal"/>
            </DOI>
            <DOI name="Ind033">
              <DAI esel:datasrc="db:ASV033" name="stVal"/>
            </DOI>
            <DOI name="Ind034">
              <DAI esel:datasrc="db:ASV034" name="stVal"/>
            </DOI>
            <DOI name="Ind035">
              <DAI esel:datasrc="db:ASV035" name="stVal"/>
            </DOI>
            <DOI name="Ind036">
              <DAI esel:datasrc="db:ASV036" name="stVal"/>
            </DOI>
            <DOI name="Ind037">
              <DAI esel:datasrc="db:ASV037" name="stVal"/>
            </DOI>
            <DOI name="Ind038">
              <DAI esel:datasrc="db:ASV038" name="stVal"/>
            </DOI>
            <DOI name="Ind039">
              <DAI esel:datasrc="db:ASV039" name="stVal"/>
            </DOI>
            <DOI name="Ind040">
              <DAI esel:datasrc="db:ASV040" name="stVal"/>
            </DOI>
            <DOI name="Ind041">
              <DAI esel:datasrc="db:ASV041" name="stVal"/>
            </DOI>
            <DOI name="Ind042">
              <DAI esel:datasrc="db:ASV042" name="stVal"/>
            </DOI>
            <DOI name="Ind043">
              <DAI esel:datasrc="db:ASV043" name="stVal"/>
            </DOI>
            <DOI name="Ind044">
              <DAI esel:datasrc="db:ASV044" name="stVal"/>
            </DOI>
            <DOI name="Ind045">
              <DAI esel:datasrc="db:ASV045" name="stVal"/>
            </DOI>
            <DOI name="Ind046">
              <DAI esel:datasrc="db:ASV046" name="stVal"/>
            </DOI>
            <DOI name="Ind047">
              <DAI esel:datasrc="db:ASV047" name="stVal"/>
            </DOI>
            <DOI name="Ind048">
              <DAI esel:datasrc="db:ASV048" name="stVal"/>
            </DOI>
            <DOI name="Ind049">
              <DAI esel:datasrc="db:ASV049" name="stVal"/>
            </DOI>
            <DOI name="Ind050">
              <DAI esel:datasrc="db:ASV050" name="stVal"/>
            </DOI>
            <DOI name="Ind051">
              <DAI esel:datasrc="db:ASV051" name="stVal"/>
            </DOI>
            <DOI name="Ind052">
              <DAI esel:datasrc="db:ASV052" name="stVal"/>
            </DOI>
            <DOI name="Ind053">
              <DAI esel:datasrc="db:ASV053" name="stVal"/>
            </DOI>
            <DOI name="Ind054">
              <DAI esel:datasrc="db:ASV054" name="stVal"/>
            </DOI>
            <DOI name="Ind055">
              <DAI esel:datasrc="db:ASV055" name="stVal"/>
            </DOI>
            <DOI name="Ind056">
              <DAI esel:datasrc="db:ASV056" name="stVal"/>
            </DOI>
            <DOI name="Ind057">
              <DAI esel:datasrc="db:ASV057" name="stVal"/>
            </DOI>
            <DOI name="Ind058">
              <DAI esel:datasrc="db:ASV058" name="stVal"/>
            </DOI>
            <DOI name="Ind059">
              <DAI esel:datasrc="db:ASV059" name="stVal"/>
            </DOI>
            <DOI name="Ind060">
              <DAI esel:datasrc="db:ASV060" name="stVal"/>
            </DOI>
            <DOI name="Ind061">
              <DAI esel:datasrc="db:ASV061" name="stVal"/>
            </DOI>
            <DOI name="Ind062">
              <DAI esel:datasrc="db:ASV062" name="stVal"/>
            </DOI>
            <DOI name="Ind063">
              <DAI esel:datasrc="db:ASV063" name="stVal"/>
            </DOI>
            <DOI name="Ind064">
              <DAI esel:datasrc="db:ASV064" name="stVal"/>
            </DOI>
            <DOI name="Ind065">
              <DAI esel:datasrc="db:ASV065" name="stVal"/>
            </DOI>
            <DOI name="Ind066">
              <DAI esel:datasrc="db:ASV066" name="stVal"/>
            </DOI>
            <DOI name="Ind067">
              <DAI esel:datasrc="db:ASV067" name="stVal"/>
            </DOI>
            <DOI name="Ind068">
              <DAI esel:datasrc="db:ASV068" name="stVal"/>
            </DOI>
            <DOI name="Ind069">
              <DAI esel:datasrc="db:ASV069" name="stVal"/>
            </DOI>
            <DOI name="Ind070">
              <DAI esel:datasrc="db:ASV070" name="stVal"/>
            </DOI>
            <DOI name="Ind071">
              <DAI esel:datasrc="db:ASV071" name="stVal"/>
            </DOI>
            <DOI name="Ind072">
              <DAI esel:datasrc="db:ASV072" name="stVal"/>
            </DOI>
            <DOI name="Ind073">
              <DAI esel:datasrc="db:ASV073" name="stVal"/>
            </DOI>
            <DOI name="Ind074">
              <DAI esel:datasrc="db:ASV074" name="stVal"/>
            </DOI>
            <DOI name="Ind075">
              <DAI esel:datasrc="db:ASV075" name="stVal"/>
            </DOI>
            <DOI name="Ind076">
              <DAI esel:datasrc="db:ASV076" name="stVal"/>
            </DOI>
            <DOI name="Ind077">
              <DAI esel:datasrc="db:ASV077" name="stVal"/>
            </DOI>
            <DOI name="Ind078">
              <DAI esel:datasrc="db:ASV078" name="stVal"/>
            </DOI>
            <DOI name="Ind079">
              <DAI esel:datasrc="db:ASV079" name="stVal"/>
            </DOI>
            <DOI name="Ind080">
              <DAI esel:datasrc="db:ASV080" name="stVal"/>
            </DOI>
            <DOI name="Ind081">
              <DAI esel:datasrc="db:ASV081" name="stVal"/>
            </DOI>
            <DOI name="Ind082">
              <DAI esel:datasrc="db:ASV082" name="stVal"/>
            </DOI>
            <DOI name="Ind083">
              <DAI esel:datasrc="db:ASV083" name="stVal"/>
            </DOI>
            <DOI name="Ind084">
              <DAI esel:datasrc="db:ASV084" name="stVal"/>
            </DOI>
            <DOI name="Ind085">
              <DAI esel:datasrc="db:ASV085" name="stVal"/>
            </DOI>
            <DOI name="Ind086">
              <DAI esel:datasrc="db:ASV086" name="stVal"/>
            </DOI>
            <DOI name="Ind087">
              <DAI esel:datasrc="db:ASV087" name="stVal"/>
            </DOI>
            <DOI name="Ind088">
              <DAI esel:datasrc="db:ASV088" name="stVal"/>
            </DOI>
            <DOI name="Ind089">
              <DAI esel:datasrc="db:ASV089" name="stVal"/>
            </DOI>
            <DOI name="Ind090">
              <DAI esel:datasrc="db:ASV090" name="stVal"/>
            </DOI>
            <DOI name="Ind091">
              <DAI esel:datasrc="db:ASV091" name="stVal"/>
            </DOI>
            <DOI name="Ind092">
              <DAI esel:datasrc="db:ASV092" name="stVal"/>
            </DOI>
            <DOI name="Ind093">
              <DAI esel:datasrc="db:ASV093" name="stVal"/>
            </DOI>
            <DOI name="Ind094">
              <DAI esel:datasrc="db:ASV094" name="stVal"/>
            </DOI>
            <DOI name="Ind095">
              <DAI esel:datasrc="db:ASV095" name="stVal"/>
            </DOI>
            <DOI name="Ind096">
              <DAI esel:datasrc="db:ASV096" name="stVal"/>
            </DOI>
            <DOI name="Ind097">
              <DAI esel:datasrc="db:ASV097" name="stVal"/>
            </DOI>
            <DOI name="Ind098">
              <DAI esel:datasrc="db:ASV098" name="stVal"/>
            </DOI>
            <DOI name="Ind099">
              <DAI esel:datasrc="db:ASV099" name="stVal"/>
            </DOI>
            <DOI name="Ind100">
              <DAI esel:datasrc="db:ASV100" name="stVal"/>
            </DOI>
            <DOI name="Ind101">
              <DAI esel:datasrc="db:ASV101" name="stVal"/>
            </DOI>
            <DOI name="Ind102">
              <DAI esel:datasrc="db:ASV102" name="stVal"/>
            </DOI>
            <DOI name="Ind103">
              <DAI esel:datasrc="db:ASV103" name="stVal"/>
            </DOI>
            <DOI name="Ind104">
              <DAI esel:datasrc="db:ASV104" name="stVal"/>
            </DOI>
            <DOI name="Ind105">
              <DAI esel:datasrc="db:ASV105" name="stVal"/>
            </DOI>
            <DOI name="Ind106">
              <DAI esel:datasrc="db:ASV106" name="stVal"/>
            </DOI>
            <DOI name="Ind107">
              <DAI esel:datasrc="db:ASV107" name="stVal"/>
            </DOI>
            <DOI name="Ind108">
              <DAI esel:datasrc="db:ASV108" name="stVal"/>
            </DOI>
            <DOI name="Ind109">
              <DAI esel:datasrc="db:ASV109" name="stVal"/>
            </DOI>
            <DOI name="Ind110">
              <DAI esel:datasrc="db:ASV110" name="stVal"/>
            </DOI>
            <DOI name="Ind111">
              <DAI esel:datasrc="db:ASV111" name="stVal"/>
            </DOI>
            <DOI name="Ind112">
              <DAI esel:datasrc="db:ASV112" name="stVal"/>
            </DOI>
            <DOI name="Ind113">
              <DAI esel:datasrc="db:ASV113" name="stVal"/>
            </DOI>
            <DOI name="Ind114">
              <DAI esel:datasrc="db:ASV114" name="stVal"/>
            </DOI>
            <DOI name="Ind115">
              <DAI esel:datasrc="db:ASV115" name="stVal"/>
            </DOI>
            <DOI name="Ind116">
              <DAI esel:datasrc="db:ASV116" name="stVal"/>
            </DOI>
            <DOI name="Ind117">
              <DAI esel:datasrc="db:ASV117" name="stVal"/>
            </DOI>
            <DOI name="Ind118">
              <DAI esel:datasrc="db:ASV118" name="stVal"/>
            </DOI>
            <DOI name="Ind119">
              <DAI esel:datasrc="db:ASV119" name="stVal"/>
            </DOI>
            <DOI name="Ind120">
              <DAI esel:datasrc="db:ASV120" name="stVal"/>
            </DOI>
            <DOI name="Ind121">
              <DAI esel:datasrc="db:ASV121" name="stVal"/>
            </DOI>
            <DOI name="Ind122">
              <DAI esel:datasrc="db:ASV122" name="stVal"/>
            </DOI>
            <DOI name="Ind123">
              <DAI esel:datasrc="db:ASV123" name="stVal"/>
            </DOI>
            <DOI name="Ind124">
              <DAI esel:datasrc="db:ASV124" name="stVal"/>
            </DOI>
            <DOI name="Ind125">
              <DAI esel:datasrc="db:ASV125" name="stVal"/>
            </DOI>
            <DOI name="Ind126">
              <DAI esel:datasrc="db:ASV126" name="stVal"/>
            </DOI>
            <DOI name="Ind127">
              <DAI esel:datasrc="db:ASV127" name="stVal"/>
            </DOI>
            <DOI name="Ind128">
              <DAI esel:datasrc="db:ASV128" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS32" inst="5" lnClass="GGIO" prefix="ALT">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:ALT01" name="stVal"/>
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:ALT02" name="stVal"/>
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:ALT03" name="stVal"/>
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:ALT04" name="stVal"/>
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:ALT05" name="stVal"/>
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:ALT06" name="stVal"/>
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:ALT07" name="stVal"/>
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:ALT08" name="stVal"/>
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:ALT09" name="stVal"/>
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:ALT10" name="stVal"/>
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:ALT11" name="stVal"/>
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:ALT12" name="stVal"/>
            </DOI>
            <DOI name="Ind13">
              <DAI esel:datasrc="db:ALT13" name="stVal"/>
            </DOI>
            <DOI name="Ind14">
              <DAI esel:datasrc="db:ALT14" name="stVal"/>
            </DOI>
            <DOI name="Ind15">
              <DAI esel:datasrc="db:ALT15" name="stVal"/>
            </DOI>
            <DOI name="Ind16">
              <DAI esel:datasrc="db:ALT16" name="stVal"/>
            </DOI>
            <DOI name="Ind17">
              <DAI esel:datasrc="db:ALT17" name="stVal"/>
            </DOI>
            <DOI name="Ind18">
              <DAI esel:datasrc="db:ALT18" name="stVal"/>
            </DOI>
            <DOI name="Ind19">
              <DAI esel:datasrc="db:ALT19" name="stVal"/>
            </DOI>
            <DOI name="Ind20">
              <DAI esel:datasrc="db:ALT20" name="stVal"/>
            </DOI>
            <DOI name="Ind21">
              <DAI esel:datasrc="db:ALT21" name="stVal"/>
            </DOI>
            <DOI name="Ind22">
              <DAI esel:datasrc="db:ALT22" name="stVal"/>
            </DOI>
            <DOI name="Ind23">
              <DAI esel:datasrc="db:ALT23" name="stVal"/>
            </DOI>
            <DOI name="Ind24">
              <DAI esel:datasrc="db:ALT24" name="stVal"/>
            </DOI>
            <DOI name="Ind25">
              <DAI esel:datasrc="db:ALT25" name="stVal"/>
            </DOI>
            <DOI name="Ind26">
              <DAI esel:datasrc="db:ALT26" name="stVal"/>
            </DOI>
            <DOI name="Ind27">
              <DAI esel:datasrc="db:ALT27" name="stVal"/>
            </DOI>
            <DOI name="Ind28">
              <DAI esel:datasrc="db:ALT28" name="stVal"/>
            </DOI>
            <DOI name="Ind29">
              <DAI esel:datasrc="db:ALT29" name="stVal"/>
            </DOI>
            <DOI name="Ind30">
              <DAI esel:datasrc="db:ALT30" name="stVal"/>
            </DOI>
            <DOI name="Ind31">
              <DAI esel:datasrc="db:ALT31" name="stVal"/>
            </DOI>
            <DOI name="Ind32">
              <DAI esel:datasrc="db:ALT32" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS26" inst="7" lnClass="GGIO" prefix="TLED">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:EN" name="stVal"/>
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:TRIPLED" name="stVal"/>
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:TLED_1" name="stVal"/>
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:TLED_2" name="stVal"/>
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:TLED_3" name="stVal"/>
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:TLED_4" name="stVal"/>
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:TLED_5" name="stVal"/>
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:TLED_6" name="stVal"/>
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:TLED_7" name="stVal"/>
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:TLED_8" name="stVal"/>
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:TLED_9" name="stVal"/>
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:TLED_10" name="stVal"/>
            </DOI>
            <DOI name="Ind13">
              <DAI esel:datasrc="db:TLED_11" name="stVal"/>
            </DOI>
            <DOI name="Ind14">
              <DAI esel:datasrc="db:TLED_12" name="stVal"/>
            </DOI>
            <DOI name="Ind15">
              <DAI esel:datasrc="db:TLED_13" name="stVal"/>
            </DOI>
            <DOI name="Ind16">
              <DAI esel:datasrc="db:TLED_14" name="stVal"/>
            </DOI>
            <DOI name="Ind17">
              <DAI esel:datasrc="db:TLED_15" name="stVal"/>
            </DOI>
            <DOI name="Ind18">
              <DAI esel:datasrc="db:TLED_16" name="stVal"/>
            </DOI>
            <DOI name="Ind19">
              <DAI esel:datasrc="db:TLED_17" name="stVal"/>
            </DOI>
            <DOI name="Ind20">
              <DAI esel:datasrc="db:TLED_18" name="stVal"/>
            </DOI>
            <DOI name="Ind21">
              <DAI esel:datasrc="db:TLED_19" name="stVal"/>
            </DOI>
            <DOI name="Ind22">
              <DAI esel:datasrc="db:TLED_20" name="stVal"/>
            </DOI>
            <DOI name="Ind23">
              <DAI esel:datasrc="db:TLED_21" name="stVal"/>
            </DOI>
            <DOI name="Ind24">
              <DAI esel:datasrc="db:TLED_22" name="stVal"/>
            </DOI>
            <DOI name="Ind25">
              <DAI esel:datasrc="db:TLED_23" name="stVal"/>
            </DOI>
            <DOI name="Ind26">
              <DAI esel:datasrc="db:TLED_24" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS12" inst="8" lnClass="GGIO" prefix="PBLED">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:PB1_LED" name="stVal"/>
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:PB2_LED" name="stVal"/>
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:PB3_LED" name="stVal"/>
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:PB4_LED" name="stVal"/>
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:PB5_LED" name="stVal"/>
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:PB6_LED" name="stVal"/>
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:PB7_LED" name="stVal"/>
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:PB8_LED" name="stVal"/>
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:PB9_LED" name="stVal"/>
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:PB10LED" name="stVal"/>
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:PB11LED" name="stVal"/>
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:PB12LED" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS08" inst="9" lnClass="GGIO" prefix="RMBA">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:RMB1A" name="stVal"/>
              <DAI esel:datasrc="db:CSV02" name="q"/>
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:RMB2A" name="stVal"/>
              <DAI esel:datasrc="db:CSV02" name="q"/>
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:RMB3A" name="stVal"/>
              <DAI esel:datasrc="db:CSV02" name="q"/>
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:RMB4A" name="stVal"/>
              <DAI esel:datasrc="db:CSV02" name="q"/>
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:RMB5A" name="stVal"/>
              <DAI esel:datasrc="db:CSV02" name="q"/>
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:RMB6A" name="stVal"/>
              <DAI esel:datasrc="db:CSV02" name="q"/>
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:RMB7A" name="stVal"/>
              <DAI esel:datasrc="db:CSV02" name="q"/>
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:RMB8A" name="stVal"/>
              <DAI esel:datasrc="db:CSV02" name="q"/>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS08" inst="10" lnClass="GGIO" prefix="TMBA">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:TMB1A" name="stVal"/>
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:TMB2A" name="stVal"/>
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:TMB3A" name="stVal"/>
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:TMB4A" name="stVal"/>
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:TMB5A" name="stVal"/>
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:TMB6A" name="stVal"/>
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:TMB7A" name="stVal"/>
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:TMB8A" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS08" inst="11" lnClass="GGIO" prefix="RMBB">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:RMB1B" name="stVal"/>
              <DAI esel:datasrc="db:CSV03" name="q"/>
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:RMB2B" name="stVal"/>
              <DAI esel:datasrc="db:CSV03" name="q"/>
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:RMB3B" name="stVal"/>
              <DAI esel:datasrc="db:CSV03" name="q"/>
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:RMB4B" name="stVal"/>
              <DAI esel:datasrc="db:CSV03" name="q"/>
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:RMB5B" name="stVal"/>
              <DAI esel:datasrc="db:CSV03" name="q"/>
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:RMB6B" name="stVal"/>
              <DAI esel:datasrc="db:CSV03" name="q"/>
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:RMB7B" name="stVal"/>
              <DAI esel:datasrc="db:CSV03" name="q"/>
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:RMB8B" name="stVal"/>
              <DAI esel:datasrc="db:CSV03" name="q"/>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS08" inst="12" lnClass="GGIO" prefix="TMBB">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:TMB1B" name="stVal"/>
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:TMB2B" name="stVal"/>
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:TMB3B" name="stVal"/>
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:TMB4B" name="stVal"/>
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:TMB5B" name="stVal"/>
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:TMB6B" name="stVal"/>
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:TMB7B" name="stVal"/>
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:TMB8B" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS12" inst="13" lnClass="GGIO" prefix="MBOK">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:ROKA" name="stVal"/>
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:RBADA" name="stVal"/>
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:CBADA" name="stVal"/>
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:LBOKA" name="stVal"/>
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:ANOKA" name="stVal"/>
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:DOKA" name="stVal"/>
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:ROKB" name="stVal"/>
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:RBADB" name="stVal"/>
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:CBADB" name="stVal"/>
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:LBOKB" name="stVal"/>
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:ANOKB" name="stVal"/>
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:DOKB" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS24" inst="14" lnClass="GGIO" prefix="IN2">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:IN201" name="stVal"/>
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:IN202" name="stVal"/>
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:IN203" name="stVal"/>
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:IN204" name="stVal"/>
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:IN205" name="stVal"/>
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:IN206" name="stVal"/>
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:IN207" name="stVal"/>
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:IN208" name="stVal"/>
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:IN209" name="stVal"/>
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:IN210" name="stVal"/>
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:IN211" name="stVal"/>
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:IN212" name="stVal"/>
            </DOI>
            <DOI name="Ind13">
              <DAI esel:datasrc="db:IN213" name="stVal"/>
            </DOI>
            <DOI name="Ind14">
              <DAI esel:datasrc="db:IN214" name="stVal"/>
            </DOI>
            <DOI name="Ind15">
              <DAI esel:datasrc="db:IN215" name="stVal"/>
            </DOI>
            <DOI name="Ind16">
              <DAI esel:datasrc="db:IN216" name="stVal"/>
            </DOI>
            <DOI name="Ind17">
              <DAI esel:datasrc="db:IN217" name="stVal"/>
            </DOI>
            <DOI name="Ind18">
              <DAI esel:datasrc="db:IN218" name="stVal"/>
            </DOI>
            <DOI name="Ind19">
              <DAI esel:datasrc="db:IN219" name="stVal"/>
            </DOI>
            <DOI name="Ind20">
              <DAI esel:datasrc="db:IN220" name="stVal"/>
            </DOI>
            <DOI name="Ind21">
              <DAI esel:datasrc="db:IN221" name="stVal"/>
            </DOI>
            <DOI name="Ind22">
              <DAI esel:datasrc="db:IN222" name="stVal"/>
            </DOI>
            <DOI name="Ind23">
              <DAI esel:datasrc="db:IN223" name="stVal"/>
            </DOI>
            <DOI name="Ind24">
              <DAI esel:datasrc="db:IN224" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS24" inst="15" lnClass="GGIO" prefix="IN3">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:IN301" name="stVal"/>
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:IN302" name="stVal"/>
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:IN303" name="stVal"/>
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:IN304" name="stVal"/>
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:IN305" name="stVal"/>
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:IN306" name="stVal"/>
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:IN307" name="stVal"/>
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:IN308" name="stVal"/>
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:IN309" name="stVal"/>
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:IN310" name="stVal"/>
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:IN311" name="stVal"/>
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:IN312" name="stVal"/>
            </DOI>
            <DOI name="Ind13">
              <DAI esel:datasrc="db:IN313" name="stVal"/>
            </DOI>
            <DOI name="Ind14">
              <DAI esel:datasrc="db:IN314" name="stVal"/>
            </DOI>
            <DOI name="Ind15">
              <DAI esel:datasrc="db:IN315" name="stVal"/>
            </DOI>
            <DOI name="Ind16">
              <DAI esel:datasrc="db:IN316" name="stVal"/>
            </DOI>
            <DOI name="Ind17">
              <DAI esel:datasrc="db:IN317" name="stVal"/>
            </DOI>
            <DOI name="Ind18">
              <DAI esel:datasrc="db:IN318" name="stVal"/>
            </DOI>
            <DOI name="Ind19">
              <DAI esel:datasrc="db:IN319" name="stVal"/>
            </DOI>
            <DOI name="Ind20">
              <DAI esel:datasrc="db:IN320" name="stVal"/>
            </DOI>
            <DOI name="Ind21">
              <DAI esel:datasrc="db:IN321" name="stVal"/>
            </DOI>
            <DOI name="Ind22">
              <DAI esel:datasrc="db:IN322" name="stVal"/>
            </DOI>
            <DOI name="Ind23">
              <DAI esel:datasrc="db:IN323" name="stVal"/>
            </DOI>
            <DOI name="Ind24">
              <DAI esel:datasrc="db:IN324" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS24" inst="16" lnClass="GGIO" prefix="IN4">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:IN401" name="stVal"/>
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:IN402" name="stVal"/>
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:IN403" name="stVal"/>
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:IN404" name="stVal"/>
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:IN405" name="stVal"/>
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:IN406" name="stVal"/>
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:IN407" name="stVal"/>
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:IN408" name="stVal"/>
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:IN409" name="stVal"/>
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:IN410" name="stVal"/>
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:IN411" name="stVal"/>
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:IN412" name="stVal"/>
            </DOI>
            <DOI name="Ind13">
              <DAI esel:datasrc="db:IN413" name="stVal"/>
            </DOI>
            <DOI name="Ind14">
              <DAI esel:datasrc="db:IN414" name="stVal"/>
            </DOI>
            <DOI name="Ind15">
              <DAI esel:datasrc="db:IN415" name="stVal"/>
            </DOI>
            <DOI name="Ind16">
              <DAI esel:datasrc="db:IN416" name="stVal"/>
            </DOI>
            <DOI name="Ind17">
              <DAI esel:datasrc="db:IN417" name="stVal"/>
            </DOI>
            <DOI name="Ind18">
              <DAI esel:datasrc="db:IN418" name="stVal"/>
            </DOI>
            <DOI name="Ind19">
              <DAI esel:datasrc="db:IN419" name="stVal"/>
            </DOI>
            <DOI name="Ind20">
              <DAI esel:datasrc="db:IN420" name="stVal"/>
            </DOI>
            <DOI name="Ind21">
              <DAI esel:datasrc="db:IN421" name="stVal"/>
            </DOI>
            <DOI name="Ind22">
              <DAI esel:datasrc="db:IN422" name="stVal"/>
            </DOI>
            <DOI name="Ind23">
              <DAI esel:datasrc="db:IN423" name="stVal"/>
            </DOI>
            <DOI name="Ind24">
              <DAI esel:datasrc="db:IN424" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS16" inst="17" lnClass="GGIO" prefix="OUT2">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:OUT201" name="stVal"/>
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:OUT202" name="stVal"/>
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:OUT203" name="stVal"/>
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:OUT204" name="stVal"/>
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:OUT205" name="stVal"/>
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:OUT206" name="stVal"/>
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:OUT207" name="stVal"/>
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:OUT208" name="stVal"/>
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:OUT209" name="stVal"/>
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:OUT210" name="stVal"/>
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:OUT211" name="stVal"/>
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:OUT212" name="stVal"/>
            </DOI>
            <DOI name="Ind13">
              <DAI esel:datasrc="db:OUT213" name="stVal"/>
            </DOI>
            <DOI name="Ind14">
              <DAI esel:datasrc="db:OUT214" name="stVal"/>
            </DOI>
            <DOI name="Ind15">
              <DAI esel:datasrc="db:OUT215" name="stVal"/>
            </DOI>
            <DOI name="Ind16">
              <DAI esel:datasrc="db:OUT216" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS16" inst="18" lnClass="GGIO" prefix="OUT3">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:OUT301" name="stVal"/>
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:OUT302" name="stVal"/>
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:OUT303" name="stVal"/>
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:OUT304" name="stVal"/>
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:OUT305" name="stVal"/>
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:OUT306" name="stVal"/>
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:OUT307" name="stVal"/>
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:OUT308" name="stVal"/>
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:OUT309" name="stVal"/>
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:OUT310" name="stVal"/>
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:OUT311" name="stVal"/>
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:OUT312" name="stVal"/>
            </DOI>
            <DOI name="Ind13">
              <DAI esel:datasrc="db:OUT313" name="stVal"/>
            </DOI>
            <DOI name="Ind14">
              <DAI esel:datasrc="db:OUT314" name="stVal"/>
            </DOI>
            <DOI name="Ind15">
              <DAI esel:datasrc="db:OUT315" name="stVal"/>
            </DOI>
            <DOI name="Ind16">
              <DAI esel:datasrc="db:OUT316" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS16" inst="19" lnClass="GGIO" prefix="OUT4">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:OUT401" name="stVal"/>
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:OUT402" name="stVal"/>
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:OUT403" name="stVal"/>
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:OUT404" name="stVal"/>
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:OUT405" name="stVal"/>
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:OUT406" name="stVal"/>
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:OUT407" name="stVal"/>
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:OUT408" name="stVal"/>
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:OUT409" name="stVal"/>
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:OUT410" name="stVal"/>
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:OUT411" name="stVal"/>
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:OUT412" name="stVal"/>
            </DOI>
            <DOI name="Ind13">
              <DAI esel:datasrc="db:OUT413" name="stVal"/>
            </DOI>
            <DOI name="Ind14">
              <DAI esel:datasrc="db:OUT414" name="stVal"/>
            </DOI>
            <DOI name="Ind15">
              <DAI esel:datasrc="db:OUT415" name="stVal"/>
            </DOI>
            <DOI name="Ind16">
              <DAI esel:datasrc="db:OUT416" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="GGIO_AS001_064" inst="1" lnClass="GGIO" prefix="AMV">
            <DOI name="AnIn001">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV001" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn002">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV002" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn003">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV003" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn004">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV004" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn005">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV005" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn006">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV006" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn007">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV007" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn008">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV008" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn009">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV009" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn010">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV010" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn011">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV011" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn012">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV012" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn013">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV013" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn014">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV014" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn015">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV015" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn016">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV016" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn017">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV017" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn018">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV018" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn019">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV019" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn020">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV020" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn021">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV021" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn022">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV022" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn023">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV023" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn024">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV024" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn025">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV025" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn026">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV026" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn027">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV027" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn028">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV028" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn029">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV029" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn030">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV030" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn031">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV031" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn032">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV032" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn033">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV033" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn034">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV034" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn035">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV035" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn036">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV036" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn037">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV037" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn038">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV038" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn039">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV039" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn040">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV040" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn041">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV041" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn042">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV042" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn043">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV043" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn044">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV044" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn045">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV045" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn046">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV046" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn047">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV047" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn048">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV048" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn049">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV049" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn050">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV050" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn051">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV051" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn052">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV052" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn053">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV053" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn054">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV054" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn055">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV055" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn056">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV056" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn057">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV057" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn058">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV058" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn059">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV059" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn060">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV060" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn061">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV061" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn062">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV062" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn063">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV063" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn064">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV064" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_AS065_128" inst="2" lnClass="GGIO" prefix="AMV">
            <DOI name="AnIn065">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV065" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn066">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV066" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn067">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV067" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn068">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV068" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn069">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV069" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn070">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV070" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn071">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV071" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn072">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV072" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn073">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV073" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn074">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV074" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn075">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV075" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn076">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV076" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn077">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV077" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn078">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV078" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn079">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV079" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn080">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV080" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn081">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV081" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn082">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV082" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn083">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV083" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn084">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV084" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn085">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV085" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn086">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV086" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn087">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV087" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn088">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV088" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn089">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV089" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn090">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV090" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn091">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV091" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn092">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV092" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn093">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV093" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn094">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV094" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn095">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV095" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn096">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV096" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn097">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV097" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn098">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV098" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn099">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV099" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn100">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV100" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn101">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV101" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn102">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV102" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn103">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV103" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn104">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV104" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn105">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV105" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn106">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV106" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn107">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV107" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn108">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV108" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn109">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV109" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn110">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV110" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn111">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV111" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn112">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV112" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn113">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV113" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn114">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV114" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn115">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV115" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn116">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV116" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn117">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV117" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn118">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV118" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn119">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV119" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn120">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV120" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn121">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV121" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn122">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV122" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn123">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV123" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn124">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV124" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn125">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV125" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn126">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV126" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn127">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV127" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn128">
              <SDI name="instMag">
                <DAI esel:datasrc="db:AMV128" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_AS016" inst="1" lnClass="GGIO" prefix="PCN">
            <DOI name="AnIn001">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN01CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn002">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN02CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn003">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN03CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn004">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN04CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn005">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN05CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn006">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN06CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn007">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN07CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn008">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN08CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn009">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN09CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn010">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN10CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn011">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN11CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn012">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN12CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn013">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN13CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn014">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN14CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn015">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN15CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn016">
              <SDI name="instMag">
                <DAI esel:datasrc="db:PCN16CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_AS016" inst="2" lnClass="GGIO" prefix="ACN">
            <DOI name="AnIn001">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN01CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn002">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN02CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn003">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN03CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn004">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN04CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn005">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN05CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn006">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN06CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn007">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN07CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn008">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN08CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn009">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN09CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn010">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN10CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn011">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN11CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn012">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN12CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn013">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN13CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn014">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN14CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn015">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN15CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
            <DOI name="AnIn016">
              <SDI name="instMag">
                <DAI esel:datasrc="db:ACN16CV" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS32" inst="1" lnClass="GGIO" prefix="LB">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:LB01" name="stVal"/>
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:LB02" name="stVal"/>
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:LB03" name="stVal"/>
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:LB04" name="stVal"/>
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:LB05" name="stVal"/>
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:LB06" name="stVal"/>
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:LB07" name="stVal"/>
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:LB08" name="stVal"/>
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:LB09" name="stVal"/>
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:LB10" name="stVal"/>
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:LB11" name="stVal"/>
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:LB12" name="stVal"/>
            </DOI>
            <DOI name="Ind13">
              <DAI esel:datasrc="db:LB13" name="stVal"/>
            </DOI>
            <DOI name="Ind14">
              <DAI esel:datasrc="db:LB14" name="stVal"/>
            </DOI>
            <DOI name="Ind15">
              <DAI esel:datasrc="db:LB15" name="stVal"/>
            </DOI>
            <DOI name="Ind16">
              <DAI esel:datasrc="db:LB16" name="stVal"/>
            </DOI>
            <DOI name="Ind17">
              <DAI esel:datasrc="db:LB17" name="stVal"/>
            </DOI>
            <DOI name="Ind18">
              <DAI esel:datasrc="db:LB18" name="stVal"/>
            </DOI>
            <DOI name="Ind19">
              <DAI esel:datasrc="db:LB19" name="stVal"/>
            </DOI>
            <DOI name="Ind20">
              <DAI esel:datasrc="db:LB20" name="stVal"/>
            </DOI>
            <DOI name="Ind21">
              <DAI esel:datasrc="db:LB21" name="stVal"/>
            </DOI>
            <DOI name="Ind22">
              <DAI esel:datasrc="db:LB22" name="stVal"/>
            </DOI>
            <DOI name="Ind23">
              <DAI esel:datasrc="db:LB23" name="stVal"/>
            </DOI>
            <DOI name="Ind24">
              <DAI esel:datasrc="db:LB24" name="stVal"/>
            </DOI>
            <DOI name="Ind25">
              <DAI esel:datasrc="db:LB25" name="stVal"/>
            </DOI>
            <DOI name="Ind26">
              <DAI esel:datasrc="db:LB26" name="stVal"/>
            </DOI>
            <DOI name="Ind27">
              <DAI esel:datasrc="db:LB27" name="stVal"/>
            </DOI>
            <DOI name="Ind28">
              <DAI esel:datasrc="db:LB28" name="stVal"/>
            </DOI>
            <DOI name="Ind29">
              <DAI esel:datasrc="db:LB29" name="stVal"/>
            </DOI>
            <DOI name="Ind30">
              <DAI esel:datasrc="db:LB30" name="stVal"/>
            </DOI>
            <DOI name="Ind31">
              <DAI esel:datasrc="db:LB31" name="stVal"/>
            </DOI>
            <DOI name="Ind32">
              <DAI esel:datasrc="db:LB32" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS128" inst="1" lnClass="GGIO" prefix="VB">
            <DOI name="Ind001">
              <DAI esel:datasrc="db:VB001" name="stVal"/>
            </DOI>
            <DOI name="Ind002">
              <DAI esel:datasrc="db:VB002" name="stVal"/>
            </DOI>
            <DOI name="Ind003">
              <DAI esel:datasrc="db:VB003" name="stVal"/>
            </DOI>
            <DOI name="Ind004">
              <DAI esel:datasrc="db:VB004" name="stVal"/>
            </DOI>
            <DOI name="Ind005">
              <DAI esel:datasrc="db:VB005" name="stVal"/>
            </DOI>
            <DOI name="Ind006">
              <DAI esel:datasrc="db:VB006" name="stVal"/>
            </DOI>
            <DOI name="Ind007">
              <DAI esel:datasrc="db:VB007" name="stVal"/>
            </DOI>
            <DOI name="Ind008">
              <DAI esel:datasrc="db:VB008" name="stVal"/>
            </DOI>
            <DOI name="Ind009">
              <DAI esel:datasrc="db:VB009" name="stVal"/>
            </DOI>
            <DOI name="Ind010">
              <DAI esel:datasrc="db:VB010" name="stVal"/>
            </DOI>
            <DOI name="Ind011">
              <DAI esel:datasrc="db:VB011" name="stVal"/>
            </DOI>
            <DOI name="Ind012">
              <DAI esel:datasrc="db:VB012" name="stVal"/>
            </DOI>
            <DOI name="Ind013">
              <DAI esel:datasrc="db:VB013" name="stVal"/>
            </DOI>
            <DOI name="Ind014">
              <DAI esel:datasrc="db:VB014" name="stVal"/>
            </DOI>
            <DOI name="Ind015">
              <DAI esel:datasrc="db:VB015" name="stVal"/>
            </DOI>
            <DOI name="Ind016">
              <DAI esel:datasrc="db:VB016" name="stVal"/>
            </DOI>
            <DOI name="Ind017">
              <DAI esel:datasrc="db:VB017" name="stVal"/>
            </DOI>
            <DOI name="Ind018">
              <DAI esel:datasrc="db:VB018" name="stVal"/>
            </DOI>
            <DOI name="Ind019">
              <DAI esel:datasrc="db:VB019" name="stVal"/>
            </DOI>
            <DOI name="Ind020">
              <DAI esel:datasrc="db:VB020" name="stVal"/>
            </DOI>
            <DOI name="Ind021">
              <DAI esel:datasrc="db:VB021" name="stVal"/>
            </DOI>
            <DOI name="Ind022">
              <DAI esel:datasrc="db:VB022" name="stVal"/>
            </DOI>
            <DOI name="Ind023">
              <DAI esel:datasrc="db:VB023" name="stVal"/>
            </DOI>
            <DOI name="Ind024">
              <DAI esel:datasrc="db:VB024" name="stVal"/>
            </DOI>
            <DOI name="Ind025">
              <DAI esel:datasrc="db:VB025" name="stVal"/>
            </DOI>
            <DOI name="Ind026">
              <DAI esel:datasrc="db:VB026" name="stVal"/>
            </DOI>
            <DOI name="Ind027">
              <DAI esel:datasrc="db:VB027" name="stVal"/>
            </DOI>
            <DOI name="Ind028">
              <DAI esel:datasrc="db:VB028" name="stVal"/>
            </DOI>
            <DOI name="Ind029">
              <DAI esel:datasrc="db:VB029" name="stVal"/>
            </DOI>
            <DOI name="Ind030">
              <DAI esel:datasrc="db:VB030" name="stVal"/>
            </DOI>
            <DOI name="Ind031">
              <DAI esel:datasrc="db:VB031" name="stVal"/>
            </DOI>
            <DOI name="Ind032">
              <DAI esel:datasrc="db:VB032" name="stVal"/>
            </DOI>
            <DOI name="Ind033">
              <DAI esel:datasrc="db:VB033" name="stVal"/>
            </DOI>
            <DOI name="Ind034">
              <DAI esel:datasrc="db:VB034" name="stVal"/>
            </DOI>
            <DOI name="Ind035">
              <DAI esel:datasrc="db:VB035" name="stVal"/>
            </DOI>
            <DOI name="Ind036">
              <DAI esel:datasrc="db:VB036" name="stVal"/>
            </DOI>
            <DOI name="Ind037">
              <DAI esel:datasrc="db:VB037" name="stVal"/>
            </DOI>
            <DOI name="Ind038">
              <DAI esel:datasrc="db:VB038" name="stVal"/>
            </DOI>
            <DOI name="Ind039">
              <DAI esel:datasrc="db:VB039" name="stVal"/>
            </DOI>
            <DOI name="Ind040">
              <DAI esel:datasrc="db:VB040" name="stVal"/>
            </DOI>
            <DOI name="Ind041">
              <DAI esel:datasrc="db:VB041" name="stVal"/>
            </DOI>
            <DOI name="Ind042">
              <DAI esel:datasrc="db:VB042" name="stVal"/>
            </DOI>
            <DOI name="Ind043">
              <DAI esel:datasrc="db:VB043" name="stVal"/>
            </DOI>
            <DOI name="Ind044">
              <DAI esel:datasrc="db:VB044" name="stVal"/>
            </DOI>
            <DOI name="Ind045">
              <DAI esel:datasrc="db:VB045" name="stVal"/>
            </DOI>
            <DOI name="Ind046">
              <DAI esel:datasrc="db:VB046" name="stVal"/>
            </DOI>
            <DOI name="Ind047">
              <DAI esel:datasrc="db:VB047" name="stVal"/>
            </DOI>
            <DOI name="Ind048">
              <DAI esel:datasrc="db:VB048" name="stVal"/>
            </DOI>
            <DOI name="Ind049">
              <DAI esel:datasrc="db:VB049" name="stVal"/>
            </DOI>
            <DOI name="Ind050">
              <DAI esel:datasrc="db:VB050" name="stVal"/>
            </DOI>
            <DOI name="Ind051">
              <DAI esel:datasrc="db:VB051" name="stVal"/>
            </DOI>
            <DOI name="Ind052">
              <DAI esel:datasrc="db:VB052" name="stVal"/>
            </DOI>
            <DOI name="Ind053">
              <DAI esel:datasrc="db:VB053" name="stVal"/>
            </DOI>
            <DOI name="Ind054">
              <DAI esel:datasrc="db:VB054" name="stVal"/>
            </DOI>
            <DOI name="Ind055">
              <DAI esel:datasrc="db:VB055" name="stVal"/>
            </DOI>
            <DOI name="Ind056">
              <DAI esel:datasrc="db:VB056" name="stVal"/>
            </DOI>
            <DOI name="Ind057">
              <DAI esel:datasrc="db:VB057" name="stVal"/>
            </DOI>
            <DOI name="Ind058">
              <DAI esel:datasrc="db:VB058" name="stVal"/>
            </DOI>
            <DOI name="Ind059">
              <DAI esel:datasrc="db:VB059" name="stVal"/>
            </DOI>
            <DOI name="Ind060">
              <DAI esel:datasrc="db:VB060" name="stVal"/>
            </DOI>
            <DOI name="Ind061">
              <DAI esel:datasrc="db:VB061" name="stVal"/>
            </DOI>
            <DOI name="Ind062">
              <DAI esel:datasrc="db:VB062" name="stVal"/>
            </DOI>
            <DOI name="Ind063">
              <DAI esel:datasrc="db:VB063" name="stVal"/>
            </DOI>
            <DOI name="Ind064">
              <DAI esel:datasrc="db:VB064" name="stVal"/>
            </DOI>
            <DOI name="Ind065">
              <DAI esel:datasrc="db:VB065" name="stVal"/>
            </DOI>
            <DOI name="Ind066">
              <DAI esel:datasrc="db:VB066" name="stVal"/>
            </DOI>
            <DOI name="Ind067">
              <DAI esel:datasrc="db:VB067" name="stVal"/>
            </DOI>
            <DOI name="Ind068">
              <DAI esel:datasrc="db:VB068" name="stVal"/>
            </DOI>
            <DOI name="Ind069">
              <DAI esel:datasrc="db:VB069" name="stVal"/>
            </DOI>
            <DOI name="Ind070">
              <DAI esel:datasrc="db:VB070" name="stVal"/>
            </DOI>
            <DOI name="Ind071">
              <DAI esel:datasrc="db:VB071" name="stVal"/>
            </DOI>
            <DOI name="Ind072">
              <DAI esel:datasrc="db:VB072" name="stVal"/>
            </DOI>
            <DOI name="Ind073">
              <DAI esel:datasrc="db:VB073" name="stVal"/>
            </DOI>
            <DOI name="Ind074">
              <DAI esel:datasrc="db:VB074" name="stVal"/>
            </DOI>
            <DOI name="Ind075">
              <DAI esel:datasrc="db:VB075" name="stVal"/>
            </DOI>
            <DOI name="Ind076">
              <DAI esel:datasrc="db:VB076" name="stVal"/>
            </DOI>
            <DOI name="Ind077">
              <DAI esel:datasrc="db:VB077" name="stVal"/>
            </DOI>
            <DOI name="Ind078">
              <DAI esel:datasrc="db:VB078" name="stVal"/>
            </DOI>
            <DOI name="Ind079">
              <DAI esel:datasrc="db:VB079" name="stVal"/>
            </DOI>
            <DOI name="Ind080">
              <DAI esel:datasrc="db:VB080" name="stVal"/>
            </DOI>
            <DOI name="Ind081">
              <DAI esel:datasrc="db:VB081" name="stVal"/>
            </DOI>
            <DOI name="Ind082">
              <DAI esel:datasrc="db:VB082" name="stVal"/>
            </DOI>
            <DOI name="Ind083">
              <DAI esel:datasrc="db:VB083" name="stVal"/>
            </DOI>
            <DOI name="Ind084">
              <DAI esel:datasrc="db:VB084" name="stVal"/>
            </DOI>
            <DOI name="Ind085">
              <DAI esel:datasrc="db:VB085" name="stVal"/>
            </DOI>
            <DOI name="Ind086">
              <DAI esel:datasrc="db:VB086" name="stVal"/>
            </DOI>
            <DOI name="Ind087">
              <DAI esel:datasrc="db:VB087" name="stVal"/>
            </DOI>
            <DOI name="Ind088">
              <DAI esel:datasrc="db:VB088" name="stVal"/>
            </DOI>
            <DOI name="Ind089">
              <DAI esel:datasrc="db:VB089" name="stVal"/>
            </DOI>
            <DOI name="Ind090">
              <DAI esel:datasrc="db:VB090" name="stVal"/>
            </DOI>
            <DOI name="Ind091">
              <DAI esel:datasrc="db:VB091" name="stVal"/>
            </DOI>
            <DOI name="Ind092">
              <DAI esel:datasrc="db:VB092" name="stVal"/>
            </DOI>
            <DOI name="Ind093">
              <DAI esel:datasrc="db:VB093" name="stVal"/>
            </DOI>
            <DOI name="Ind094">
              <DAI esel:datasrc="db:VB094" name="stVal"/>
            </DOI>
            <DOI name="Ind095">
              <DAI esel:datasrc="db:VB095" name="stVal"/>
            </DOI>
            <DOI name="Ind096">
              <DAI esel:datasrc="db:VB096" name="stVal"/>
            </DOI>
            <DOI name="Ind097">
              <DAI esel:datasrc="db:VB097" name="stVal"/>
            </DOI>
            <DOI name="Ind098">
              <DAI esel:datasrc="db:VB098" name="stVal"/>
            </DOI>
            <DOI name="Ind099">
              <DAI esel:datasrc="db:VB099" name="stVal"/>
            </DOI>
            <DOI name="Ind100">
              <DAI esel:datasrc="db:VB100" name="stVal"/>
            </DOI>
            <DOI name="Ind101">
              <DAI esel:datasrc="db:VB101" name="stVal"/>
            </DOI>
            <DOI name="Ind102">
              <DAI esel:datasrc="db:VB102" name="stVal"/>
            </DOI>
            <DOI name="Ind103">
              <DAI esel:datasrc="db:VB103" name="stVal"/>
            </DOI>
            <DOI name="Ind104">
              <DAI esel:datasrc="db:VB104" name="stVal"/>
            </DOI>
            <DOI name="Ind105">
              <DAI esel:datasrc="db:VB105" name="stVal"/>
            </DOI>
            <DOI name="Ind106">
              <DAI esel:datasrc="db:VB106" name="stVal"/>
            </DOI>
            <DOI name="Ind107">
              <DAI esel:datasrc="db:VB107" name="stVal"/>
            </DOI>
            <DOI name="Ind108">
              <DAI esel:datasrc="db:VB108" name="stVal"/>
            </DOI>
            <DOI name="Ind109">
              <DAI esel:datasrc="db:VB109" name="stVal"/>
            </DOI>
            <DOI name="Ind110">
              <DAI esel:datasrc="db:VB110" name="stVal"/>
            </DOI>
            <DOI name="Ind111">
              <DAI esel:datasrc="db:VB111" name="stVal"/>
            </DOI>
            <DOI name="Ind112">
              <DAI esel:datasrc="db:VB112" name="stVal"/>
            </DOI>
            <DOI name="Ind113">
              <DAI esel:datasrc="db:VB113" name="stVal"/>
            </DOI>
            <DOI name="Ind114">
              <DAI esel:datasrc="db:VB114" name="stVal"/>
            </DOI>
            <DOI name="Ind115">
              <DAI esel:datasrc="db:VB115" name="stVal"/>
            </DOI>
            <DOI name="Ind116">
              <DAI esel:datasrc="db:VB116" name="stVal"/>
            </DOI>
            <DOI name="Ind117">
              <DAI esel:datasrc="db:VB117" name="stVal"/>
            </DOI>
            <DOI name="Ind118">
              <DAI esel:datasrc="db:VB118" name="stVal"/>
            </DOI>
            <DOI name="Ind119">
              <DAI esel:datasrc="db:VB119" name="stVal"/>
            </DOI>
            <DOI name="Ind120">
              <DAI esel:datasrc="db:VB120" name="stVal"/>
            </DOI>
            <DOI name="Ind121">
              <DAI esel:datasrc="db:VB121" name="stVal"/>
            </DOI>
            <DOI name="Ind122">
              <DAI esel:datasrc="db:VB122" name="stVal"/>
            </DOI>
            <DOI name="Ind123">
              <DAI esel:datasrc="db:VB123" name="stVal"/>
            </DOI>
            <DOI name="Ind124">
              <DAI esel:datasrc="db:VB124" name="stVal"/>
            </DOI>
            <DOI name="Ind125">
              <DAI esel:datasrc="db:VB125" name="stVal"/>
            </DOI>
            <DOI name="Ind126">
              <DAI esel:datasrc="db:VB126" name="stVal"/>
            </DOI>
            <DOI name="Ind127">
              <DAI esel:datasrc="db:VB127" name="stVal"/>
            </DOI>
            <DOI name="Ind128">
              <DAI esel:datasrc="db:VB128" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS129_BS256" inst="2" lnClass="GGIO" prefix="VB">
            <DOI name="Ind129">
              <DAI esel:datasrc="db:VB129" name="stVal"/>
            </DOI>
            <DOI name="Ind130">
              <DAI esel:datasrc="db:VB130" name="stVal"/>
            </DOI>
            <DOI name="Ind131">
              <DAI esel:datasrc="db:VB131" name="stVal"/>
            </DOI>
            <DOI name="Ind132">
              <DAI esel:datasrc="db:VB132" name="stVal"/>
            </DOI>
            <DOI name="Ind133">
              <DAI esel:datasrc="db:VB133" name="stVal"/>
            </DOI>
            <DOI name="Ind134">
              <DAI esel:datasrc="db:VB134" name="stVal"/>
            </DOI>
            <DOI name="Ind135">
              <DAI esel:datasrc="db:VB135" name="stVal"/>
            </DOI>
            <DOI name="Ind136">
              <DAI esel:datasrc="db:VB136" name="stVal"/>
            </DOI>
            <DOI name="Ind137">
              <DAI esel:datasrc="db:VB137" name="stVal"/>
            </DOI>
            <DOI name="Ind138">
              <DAI esel:datasrc="db:VB138" name="stVal"/>
            </DOI>
            <DOI name="Ind139">
              <DAI esel:datasrc="db:VB139" name="stVal"/>
            </DOI>
            <DOI name="Ind140">
              <DAI esel:datasrc="db:VB140" name="stVal"/>
            </DOI>
            <DOI name="Ind141">
              <DAI esel:datasrc="db:VB141" name="stVal"/>
            </DOI>
            <DOI name="Ind142">
              <DAI esel:datasrc="db:VB142" name="stVal"/>
            </DOI>
            <DOI name="Ind143">
              <DAI esel:datasrc="db:VB143" name="stVal"/>
            </DOI>
            <DOI name="Ind144">
              <DAI esel:datasrc="db:VB144" name="stVal"/>
            </DOI>
            <DOI name="Ind145">
              <DAI esel:datasrc="db:VB145" name="stVal"/>
            </DOI>
            <DOI name="Ind146">
              <DAI esel:datasrc="db:VB146" name="stVal"/>
            </DOI>
            <DOI name="Ind147">
              <DAI esel:datasrc="db:VB147" name="stVal"/>
            </DOI>
            <DOI name="Ind148">
              <DAI esel:datasrc="db:VB148" name="stVal"/>
            </DOI>
            <DOI name="Ind149">
              <DAI esel:datasrc="db:VB149" name="stVal"/>
            </DOI>
            <DOI name="Ind150">
              <DAI esel:datasrc="db:VB150" name="stVal"/>
            </DOI>
            <DOI name="Ind151">
              <DAI esel:datasrc="db:VB151" name="stVal"/>
            </DOI>
            <DOI name="Ind152">
              <DAI esel:datasrc="db:VB152" name="stVal"/>
            </DOI>
            <DOI name="Ind153">
              <DAI esel:datasrc="db:VB153" name="stVal"/>
            </DOI>
            <DOI name="Ind154">
              <DAI esel:datasrc="db:VB154" name="stVal"/>
            </DOI>
            <DOI name="Ind155">
              <DAI esel:datasrc="db:VB155" name="stVal"/>
            </DOI>
            <DOI name="Ind156">
              <DAI esel:datasrc="db:VB156" name="stVal"/>
            </DOI>
            <DOI name="Ind157">
              <DAI esel:datasrc="db:VB157" name="stVal"/>
            </DOI>
            <DOI name="Ind158">
              <DAI esel:datasrc="db:VB158" name="stVal"/>
            </DOI>
            <DOI name="Ind159">
              <DAI esel:datasrc="db:VB159" name="stVal"/>
            </DOI>
            <DOI name="Ind160">
              <DAI esel:datasrc="db:VB160" name="stVal"/>
            </DOI>
            <DOI name="Ind161">
              <DAI esel:datasrc="db:VB161" name="stVal"/>
            </DOI>
            <DOI name="Ind162">
              <DAI esel:datasrc="db:VB162" name="stVal"/>
            </DOI>
            <DOI name="Ind163">
              <DAI esel:datasrc="db:VB163" name="stVal"/>
            </DOI>
            <DOI name="Ind164">
              <DAI esel:datasrc="db:VB164" name="stVal"/>
            </DOI>
            <DOI name="Ind165">
              <DAI esel:datasrc="db:VB165" name="stVal"/>
            </DOI>
            <DOI name="Ind166">
              <DAI esel:datasrc="db:VB166" name="stVal"/>
            </DOI>
            <DOI name="Ind167">
              <DAI esel:datasrc="db:VB167" name="stVal"/>
            </DOI>
            <DOI name="Ind168">
              <DAI esel:datasrc="db:VB168" name="stVal"/>
            </DOI>
            <DOI name="Ind169">
              <DAI esel:datasrc="db:VB169" name="stVal"/>
            </DOI>
            <DOI name="Ind170">
              <DAI esel:datasrc="db:VB170" name="stVal"/>
            </DOI>
            <DOI name="Ind171">
              <DAI esel:datasrc="db:VB171" name="stVal"/>
            </DOI>
            <DOI name="Ind172">
              <DAI esel:datasrc="db:VB172" name="stVal"/>
            </DOI>
            <DOI name="Ind173">
              <DAI esel:datasrc="db:VB173" name="stVal"/>
            </DOI>
            <DOI name="Ind174">
              <DAI esel:datasrc="db:VB174" name="stVal"/>
            </DOI>
            <DOI name="Ind175">
              <DAI esel:datasrc="db:VB175" name="stVal"/>
            </DOI>
            <DOI name="Ind176">
              <DAI esel:datasrc="db:VB176" name="stVal"/>
            </DOI>
            <DOI name="Ind177">
              <DAI esel:datasrc="db:VB177" name="stVal"/>
            </DOI>
            <DOI name="Ind178">
              <DAI esel:datasrc="db:VB178" name="stVal"/>
            </DOI>
            <DOI name="Ind179">
              <DAI esel:datasrc="db:VB179" name="stVal"/>
            </DOI>
            <DOI name="Ind180">
              <DAI esel:datasrc="db:VB180" name="stVal"/>
            </DOI>
            <DOI name="Ind181">
              <DAI esel:datasrc="db:VB181" name="stVal"/>
            </DOI>
            <DOI name="Ind182">
              <DAI esel:datasrc="db:VB182" name="stVal"/>
            </DOI>
            <DOI name="Ind183">
              <DAI esel:datasrc="db:VB183" name="stVal"/>
            </DOI>
            <DOI name="Ind184">
              <DAI esel:datasrc="db:VB184" name="stVal"/>
            </DOI>
            <DOI name="Ind185">
              <DAI esel:datasrc="db:VB185" name="stVal"/>
            </DOI>
            <DOI name="Ind186">
              <DAI esel:datasrc="db:VB186" name="stVal"/>
            </DOI>
            <DOI name="Ind187">
              <DAI esel:datasrc="db:VB187" name="stVal"/>
            </DOI>
            <DOI name="Ind188">
              <DAI esel:datasrc="db:VB188" name="stVal"/>
            </DOI>
            <DOI name="Ind189">
              <DAI esel:datasrc="db:VB189" name="stVal"/>
            </DOI>
            <DOI name="Ind190">
              <DAI esel:datasrc="db:VB190" name="stVal"/>
            </DOI>
            <DOI name="Ind191">
              <DAI esel:datasrc="db:VB191" name="stVal"/>
            </DOI>
            <DOI name="Ind192">
              <DAI esel:datasrc="db:VB192" name="stVal"/>
            </DOI>
            <DOI name="Ind193">
              <DAI esel:datasrc="db:VB193" name="stVal"/>
            </DOI>
            <DOI name="Ind194">
              <DAI esel:datasrc="db:VB194" name="stVal"/>
            </DOI>
            <DOI name="Ind195">
              <DAI esel:datasrc="db:VB195" name="stVal"/>
            </DOI>
            <DOI name="Ind196">
              <DAI esel:datasrc="db:VB196" name="stVal"/>
            </DOI>
            <DOI name="Ind197">
              <DAI esel:datasrc="db:VB197" name="stVal"/>
            </DOI>
            <DOI name="Ind198">
              <DAI esel:datasrc="db:VB198" name="stVal"/>
            </DOI>
            <DOI name="Ind199">
              <DAI esel:datasrc="db:VB199" name="stVal"/>
            </DOI>
            <DOI name="Ind200">
              <DAI esel:datasrc="db:VB200" name="stVal"/>
            </DOI>
            <DOI name="Ind201">
              <DAI esel:datasrc="db:VB201" name="stVal"/>
            </DOI>
            <DOI name="Ind202">
              <DAI esel:datasrc="db:VB202" name="stVal"/>
            </DOI>
            <DOI name="Ind203">
              <DAI esel:datasrc="db:VB203" name="stVal"/>
            </DOI>
            <DOI name="Ind204">
              <DAI esel:datasrc="db:VB204" name="stVal"/>
            </DOI>
            <DOI name="Ind205">
              <DAI esel:datasrc="db:VB205" name="stVal"/>
            </DOI>
            <DOI name="Ind206">
              <DAI esel:datasrc="db:VB206" name="stVal"/>
            </DOI>
            <DOI name="Ind207">
              <DAI esel:datasrc="db:VB207" name="stVal"/>
            </DOI>
            <DOI name="Ind208">
              <DAI esel:datasrc="db:VB208" name="stVal"/>
            </DOI>
            <DOI name="Ind209">
              <DAI esel:datasrc="db:VB209" name="stVal"/>
            </DOI>
            <DOI name="Ind210">
              <DAI esel:datasrc="db:VB210" name="stVal"/>
            </DOI>
            <DOI name="Ind211">
              <DAI esel:datasrc="db:VB211" name="stVal"/>
            </DOI>
            <DOI name="Ind212">
              <DAI esel:datasrc="db:VB212" name="stVal"/>
            </DOI>
            <DOI name="Ind213">
              <DAI esel:datasrc="db:VB213" name="stVal"/>
            </DOI>
            <DOI name="Ind214">
              <DAI esel:datasrc="db:VB214" name="stVal"/>
            </DOI>
            <DOI name="Ind215">
              <DAI esel:datasrc="db:VB215" name="stVal"/>
            </DOI>
            <DOI name="Ind216">
              <DAI esel:datasrc="db:VB216" name="stVal"/>
            </DOI>
            <DOI name="Ind217">
              <DAI esel:datasrc="db:VB217" name="stVal"/>
            </DOI>
            <DOI name="Ind218">
              <DAI esel:datasrc="db:VB218" name="stVal"/>
            </DOI>
            <DOI name="Ind219">
              <DAI esel:datasrc="db:VB219" name="stVal"/>
            </DOI>
            <DOI name="Ind220">
              <DAI esel:datasrc="db:VB220" name="stVal"/>
            </DOI>
            <DOI name="Ind221">
              <DAI esel:datasrc="db:VB221" name="stVal"/>
            </DOI>
            <DOI name="Ind222">
              <DAI esel:datasrc="db:VB222" name="stVal"/>
            </DOI>
            <DOI name="Ind223">
              <DAI esel:datasrc="db:VB223" name="stVal"/>
            </DOI>
            <DOI name="Ind224">
              <DAI esel:datasrc="db:VB224" name="stVal"/>
            </DOI>
            <DOI name="Ind225">
              <DAI esel:datasrc="db:VB225" name="stVal"/>
            </DOI>
            <DOI name="Ind226">
              <DAI esel:datasrc="db:VB226" name="stVal"/>
            </DOI>
            <DOI name="Ind227">
              <DAI esel:datasrc="db:VB227" name="stVal"/>
            </DOI>
            <DOI name="Ind228">
              <DAI esel:datasrc="db:VB228" name="stVal"/>
            </DOI>
            <DOI name="Ind229">
              <DAI esel:datasrc="db:VB229" name="stVal"/>
            </DOI>
            <DOI name="Ind230">
              <DAI esel:datasrc="db:VB230" name="stVal"/>
            </DOI>
            <DOI name="Ind231">
              <DAI esel:datasrc="db:VB231" name="stVal"/>
            </DOI>
            <DOI name="Ind232">
              <DAI esel:datasrc="db:VB232" name="stVal"/>
            </DOI>
            <DOI name="Ind233">
              <DAI esel:datasrc="db:VB233" name="stVal"/>
            </DOI>
            <DOI name="Ind234">
              <DAI esel:datasrc="db:VB234" name="stVal"/>
            </DOI>
            <DOI name="Ind235">
              <DAI esel:datasrc="db:VB235" name="stVal"/>
            </DOI>
            <DOI name="Ind236">
              <DAI esel:datasrc="db:VB236" name="stVal"/>
            </DOI>
            <DOI name="Ind237">
              <DAI esel:datasrc="db:VB237" name="stVal"/>
            </DOI>
            <DOI name="Ind238">
              <DAI esel:datasrc="db:VB238" name="stVal"/>
            </DOI>
            <DOI name="Ind239">
              <DAI esel:datasrc="db:VB239" name="stVal"/>
            </DOI>
            <DOI name="Ind240">
              <DAI esel:datasrc="db:VB240" name="stVal"/>
            </DOI>
            <DOI name="Ind241">
              <DAI esel:datasrc="db:VB241" name="stVal"/>
            </DOI>
            <DOI name="Ind242">
              <DAI esel:datasrc="db:VB242" name="stVal"/>
            </DOI>
            <DOI name="Ind243">
              <DAI esel:datasrc="db:VB243" name="stVal"/>
            </DOI>
            <DOI name="Ind244">
              <DAI esel:datasrc="db:VB244" name="stVal"/>
            </DOI>
            <DOI name="Ind245">
              <DAI esel:datasrc="db:VB245" name="stVal"/>
            </DOI>
            <DOI name="Ind246">
              <DAI esel:datasrc="db:VB246" name="stVal"/>
            </DOI>
            <DOI name="Ind247">
              <DAI esel:datasrc="db:VB247" name="stVal"/>
            </DOI>
            <DOI name="Ind248">
              <DAI esel:datasrc="db:VB248" name="stVal"/>
            </DOI>
            <DOI name="Ind249">
              <DAI esel:datasrc="db:VB249" name="stVal"/>
            </DOI>
            <DOI name="Ind250">
              <DAI esel:datasrc="db:VB250" name="stVal"/>
            </DOI>
            <DOI name="Ind251">
              <DAI esel:datasrc="db:VB251" name="stVal"/>
            </DOI>
            <DOI name="Ind252">
              <DAI esel:datasrc="db:VB252" name="stVal"/>
            </DOI>
            <DOI name="Ind253">
              <DAI esel:datasrc="db:VB253" name="stVal"/>
            </DOI>
            <DOI name="Ind254">
              <DAI esel:datasrc="db:VB254" name="stVal"/>
            </DOI>
            <DOI name="Ind255">
              <DAI esel:datasrc="db:VB255" name="stVal"/>
            </DOI>
            <DOI name="Ind256">
              <DAI esel:datasrc="db:VB256" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="GGIO_AR001_032" inst="1" lnClass="GGIO" prefix="RA">
            <DOI name="Ra001">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA001" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra002">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA002" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra003">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA003" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra004">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA004" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra005">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA005" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra006">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA006" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra007">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA007" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra008">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA008" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra009">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA009" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra010">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA010" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra011">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA011" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra012">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA012" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra013">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA013" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra014">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA014" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra015">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA015" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra016">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA016" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra017">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA017" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra018">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA018" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra019">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA019" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra020">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA020" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra021">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA021" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra022">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA022" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra023">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA023" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra024">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA024" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra025">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA025" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra026">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA026" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra027">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA027" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra028">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA028" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra029">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA029" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra030">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA030" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra031">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA031" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra032">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA032" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_AR033_064" inst="2" lnClass="GGIO" prefix="RA">
            <DOI name="Ra033">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA033" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra034">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA034" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra035">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA035" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra036">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA036" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra037">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA037" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra038">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA038" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra039">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA039" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra040">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA040" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra041">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA041" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra042">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA042" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra043">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA043" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra044">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA044" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra045">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA045" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra046">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA046" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra047">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA047" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra048">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA048" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra049">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA049" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra050">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA050" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra051">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA051" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra052">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA052" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra053">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA053" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra054">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA054" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra055">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA055" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra056">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA056" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra057">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA057" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra058">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA058" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra059">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA059" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra060">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA060" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra061">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA061" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra062">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA062" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra063">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA063" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra064">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA064" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_AR065_096" inst="3" lnClass="GGIO" prefix="RA">
            <DOI name="Ra065">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA065" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra066">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA066" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra067">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA067" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra068">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA068" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra069">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA069" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra070">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA070" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra071">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA071" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra072">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA072" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra073">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA073" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra074">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA074" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra075">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA075" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra076">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA076" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra077">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA077" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra078">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA078" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra079">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA079" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra080">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA080" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra081">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA081" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra082">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA082" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra083">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA083" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra084">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA084" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra085">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA085" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra086">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA086" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra087">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA087" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra088">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA088" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra089">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA089" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra090">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA090" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra091">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA091" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra092">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA092" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra093">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA093" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra094">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA094" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra095">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA095" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra096">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA096" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_AR097_128" inst="4" lnClass="GGIO" prefix="RA">
            <DOI name="Ra097">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA097" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra098">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA098" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra099">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA099" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra100">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA100" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra101">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA101" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra102">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA102" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra103">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA103" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra104">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA104" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra105">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA105" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra106">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA106" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra107">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA107" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra108">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA108" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra109">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA109" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra110">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA110" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra111">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA111" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra112">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA112" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra113">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA113" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra114">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA114" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra115">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA115" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra116">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA116" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra117">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA117" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra118">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA118" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra119">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA119" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra120">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA120" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra121">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA121" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra122">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA122" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra123">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA123" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra124">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA124" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra125">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA125" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra126">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA126" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra127">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA127" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra128">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA128" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_AR129_160" inst="5" lnClass="GGIO" prefix="RA">
            <DOI name="Ra129">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA129" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra130">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA130" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra131">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA131" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra132">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA132" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra133">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA133" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra134">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA134" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra135">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA135" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra136">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA136" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra137">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA137" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra138">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA138" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra139">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA139" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra140">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA140" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra141">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA141" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra142">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA142" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra143">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA143" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra144">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA144" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra145">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA145" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra146">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA146" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra147">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA147" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra148">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA148" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra149">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA149" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra150">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA150" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra151">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA151" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra152">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA152" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra153">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA153" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra154">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA154" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra155">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA155" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra156">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA156" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra157">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA157" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra158">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA158" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra159">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA159" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra160">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA160" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_AR161_192" inst="6" lnClass="GGIO" prefix="RA">
            <DOI name="Ra161">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA161" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra162">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA162" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra163">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA163" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra164">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA164" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra165">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA165" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra166">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA166" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra167">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA167" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra168">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA168" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra169">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA169" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra170">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA170" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra171">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA171" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra172">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA172" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra173">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA173" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra174">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA174" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra175">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA175" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra176">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA176" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra177">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA177" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra178">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA178" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra179">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA179" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra180">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA180" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra181">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA181" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra182">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA182" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra183">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA183" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra184">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA184" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra185">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA185" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra186">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA186" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra187">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA187" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra188">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA188" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra189">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA189" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra190">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA190" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra191">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA191" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra192">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA192" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_AR193_224" inst="7" lnClass="GGIO" prefix="RA">
            <DOI name="Ra193">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA193" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra194">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA194" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra195">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA195" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra196">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA196" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra197">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA197" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra198">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA198" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra199">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA199" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra200">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA200" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra201">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA201" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra202">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA202" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra203">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA203" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra204">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA204" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra205">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA205" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra206">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA206" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra207">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA207" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra208">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA208" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra209">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA209" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra210">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA210" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra211">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA211" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra212">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA212" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra213">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA213" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra214">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA214" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra215">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA215" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra216">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA216" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra217">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA217" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra218">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA218" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra219">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA219" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra220">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA220" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra221">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA221" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra222">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA222" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra223">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA223" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra224">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA224" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_AR225_256" inst="8" lnClass="GGIO" prefix="RA">
            <DOI name="Ra225">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA225" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra226">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA226" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra227">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA227" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra228">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA228" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra229">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA229" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra230">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA230" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra231">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA231" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra232">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA232" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra233">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA233" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra234">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA234" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra235">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA235" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra236">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA236" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra237">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA237" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra238">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA238" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra239">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA239" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra240">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA240" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra241">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA241" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra242">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA242" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra243">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA243" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra244">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA244" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra245">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA245" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra246">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA246" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra247">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA247" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra248">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA248" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra249">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA249" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra250">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA250" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra251">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA251" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra252">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA252" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra253">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA253" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra254">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA254" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra255">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA255" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Ra256">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RA256" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_ARO01_32" inst="1" lnClass="GGIO" prefix="RAO">
            <DOI name="Rao01">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO01" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao02">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO02" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao03">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO03" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao04">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO04" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao05">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO05" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao06">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO06" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao07">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO07" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao08">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO08" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao09">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO09" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao10">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO10" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao11">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO11" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao12">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO12" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao13">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO13" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao14">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO14" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao15">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO15" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao16">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO16" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao17">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO17" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao18">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO18" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao19">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO19" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao20">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO20" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao21">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO21" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao22">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO22" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao23">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO23" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao24">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO24" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao25">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO25" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao26">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO26" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao27">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO27" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao28">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO28" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao29">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO29" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao30">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO30" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao31">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO31" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao32">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO32" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_ARO33_64" inst="2" lnClass="GGIO" prefix="RAO">
            <DOI name="Rao33">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO33" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao34">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO34" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao35">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO35" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao36">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO36" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao37">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO37" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao38">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO38" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao39">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO39" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao40">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO40" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao41">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO41" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao42">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO42" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao43">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO43" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao44">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO44" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao45">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO45" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao46">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO46" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao47">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO47" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao48">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO48" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao49">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO49" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao50">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO50" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao51">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO51" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao52">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO52" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao53">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO53" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao54">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO54" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao55">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO55" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao56">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO56" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao57">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO57" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao58">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO58" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao59">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO59" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao60">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO60" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao61">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO61" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao62">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO62" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao63">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO63" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
            <DOI name="Rao64">
              <SDI name="instMag">
                <DAI esel:datasrc="db:RAO64" name="f"/>
              </SDI>
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val></Val>
                </DAI>
                <DAI name="multiplier">
                  <Val></Val>
                </DAI>
              </SDI>
              <DAI esel:datasrc="imm:10000" name="db">
                <Val>1000</Val>
              </DAI>
              <DAI name="dataNs">
                <Val>SEL-61850:2006</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS12" inst="1" lnClass="GGIO" prefix="RTDH">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:RTD01ST" name="stVal"/>
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:RTD02ST" name="stVal"/>
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:RTD03ST" name="stVal"/>
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:RTD04ST" name="stVal"/>
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:RTD05ST" name="stVal"/>
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:RTD06ST" name="stVal"/>
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:RTD07ST" name="stVal"/>
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:RTD08ST" name="stVal"/>
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:RTD09ST" name="stVal"/>
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:RTD10ST" name="stVal"/>
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:RTD11ST" name="stVal"/>
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:RTD12ST" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS10" inst="1" lnClass="GGIO" prefix="ETH">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:P5ASEL" name="stVal"/>
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:LINK5A" name="stVal"/>
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:P5BSEL" name="stVal"/>
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:LINK5B" name="stVal"/>
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:P5CSEL" name="stVal"/>
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:LINK5C" name="stVal"/>
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:P5DSEL" name="stVal"/>
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:LINK5D" name="stVal"/>
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:LNKFAIL" name="stVal"/>
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:LNKFL2" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS08" inst="1" lnClass="GGIO" prefix="SG">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:SG1" name="stVal"/>
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:SG2" name="stVal"/>
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:SG3" name="stVal"/>
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:SG4" name="stVal"/>
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:SG5" name="stVal"/>
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:SG6" name="stVal"/>
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:CHSG" name="stVal"/>
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:GRPSW" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS16" inst="1" lnClass="GGIO" prefix="RTCA">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:RTCAD01" name="stVal"/>
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:RTCAD02" name="stVal"/>
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:RTCAD03" name="stVal"/>
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:RTCAD04" name="stVal"/>
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:RTCAD05" name="stVal"/>
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:RTCAD06" name="stVal"/>
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:RTCAD07" name="stVal"/>
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:RTCAD08" name="stVal"/>
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:RTCAD09" name="stVal"/>
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:RTCAD10" name="stVal"/>
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:RTCAD11" name="stVal"/>
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:RTCAD12" name="stVal"/>
            </DOI>
            <DOI name="Ind13">
              <DAI esel:datasrc="db:RTCAD13" name="stVal"/>
            </DOI>
            <DOI name="Ind14">
              <DAI esel:datasrc="db:RTCAD14" name="stVal"/>
            </DOI>
            <DOI name="Ind15">
              <DAI esel:datasrc="db:RTCAD15" name="stVal"/>
            </DOI>
            <DOI name="Ind16">
              <DAI esel:datasrc="db:RTCAD16" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS16" inst="2" lnClass="GGIO" prefix="RTCB">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:RTCBD01" name="stVal"/>
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:RTCBD02" name="stVal"/>
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:RTCBD03" name="stVal"/>
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:RTCBD04" name="stVal"/>
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:RTCBD05" name="stVal"/>
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:RTCBD06" name="stVal"/>
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:RTCBD07" name="stVal"/>
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:RTCBD08" name="stVal"/>
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:RTCBD09" name="stVal"/>
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:RTCBD10" name="stVal"/>
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:RTCBD11" name="stVal"/>
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:RTCBD12" name="stVal"/>
            </DOI>
            <DOI name="Ind13">
              <DAI esel:datasrc="db:RTCBD13" name="stVal"/>
            </DOI>
            <DOI name="Ind14">
              <DAI esel:datasrc="db:RTCBD14" name="stVal"/>
            </DOI>
            <DOI name="Ind15">
              <DAI esel:datasrc="db:RTCBD15" name="stVal"/>
            </DOI>
            <DOI name="Ind16">
              <DAI esel:datasrc="db:RTCBD16" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS08" inst="1" lnClass="GGIO" prefix="ALM">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:SALARM" name="stVal"/>
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:HALARM" name="stVal"/>
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:BADPASS" name="stVal"/>
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:SETCHG" name="stVal"/>
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:GRPSW" name="stVal"/>
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:ACCESS" name="stVal"/>
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:PASSDIS" name="stVal"/>
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:BRKENAB" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="GGIO_BS08" inst="1" lnClass="GGIO" prefix="TM">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:TIRIG" name="stVal"/>
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:TSOK" name="stVal"/>
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:BNC_OK" name="stVal"/>
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:SER_OK" name="stVal"/>
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:PTP_OK" name="stVal"/>
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:TPTP" name="stVal"/>
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:TSNTPB" name="stVal"/>
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:TSNTPP" name="stVal"/>
            </DOI>
          </LN>
          <LN lnType="GGIO_SVS" inst="1" lnClass="GGIO" prefix="SV">
            <DOI name="Ind01">
              <DAI esel:datasrc="db:SVS01OK" name="stVal"/>
            </DOI>
            <DOI name="Ind02">
              <DAI esel:datasrc="db:SVS02OK" name="stVal"/>
            </DOI>
            <DOI name="Ind03">
              <DAI esel:datasrc="db:SVS03OK" name="stVal"/>
            </DOI>
            <DOI name="Ind04">
              <DAI esel:datasrc="db:SVS04OK" name="stVal"/>
            </DOI>
            <DOI name="Ind05">
              <DAI esel:datasrc="db:SVS05OK" name="stVal"/>
            </DOI>
            <DOI name="Ind06">
              <DAI esel:datasrc="db:SVS06OK" name="stVal"/>
            </DOI>
            <DOI name="Ind07">
              <DAI esel:datasrc="db:SVS07OK" name="stVal"/>
            </DOI>
            <DOI name="Ind08">
              <DAI esel:datasrc="db:SVSALM" name="stVal"/>
            </DOI>
            <DOI name="Ind09">
              <DAI esel:datasrc="db:SVBLK" name="stVal"/>
            </DOI>
            <DOI name="Ind10">
              <DAI esel:datasrc="db:SVBK_EX" name="stVal"/>
            </DOI>
            <DOI name="Ind11">
              <DAI esel:datasrc="db:SVCC" name="stVal"/>
            </DOI>
            <DOI name="Ind12">
              <DAI esel:datasrc="db:SVSTST" name="stVal"/>
            </DOI>
            <DOI name="IntIn01">
              <DAI esel:datasrc="db:SMPSYNC" name="stVal"/>
            </DOI>
          </LN>
        </LDevice>
      </Server>
    </AccessPoint>
  </IED>
  <DataTypeTemplates>
    <LNodeType id="LPHD_0$_6976c482-a37a-47c0-8531-28c5f3c35b55" lnClass="LPHD">
      <DO name="PhyNam" type="PhyNam_0"/>
      <DO name="Proxy" type="Proxy_0$_47e41c1a-248b-402e-854c-0dab8d47843d"/>
      <DO name="Sim" type="Sim_0"/>
      <DO name="PhyHealth" type="PhyHealth_0"/>
    </LNodeType>
    <LNodeType id="GGIO_0$_cfedb113-cc85-4534-a668-06ac85213102" lnClass="GGIO">
      <DO name="Beh" type="Beh_0"/>
      <DO name="Ind1" type="Ind1_0$_b4468281-d057-4286-a437-38733838f2d7"/>
      <DO name="Ind10" type="Ind10_0$_af163584-7f99-407b-b9d5-68c565fd3f2a"/>
      <DO name="Ind11" type="Ind11_0$_186bb4ad-823f-4a97-907e-eb1bf3036c6e"/>
      <DO name="Ind12" type="Ind12_0$_f2c6d153-1a7e-493a-a561-29f78e040b65"/>
      <DO name="Ind13" type="Ind13_0$_c7d13d3f-a616-4353-aa67-f37dce3dbb0a"/>
      <DO name="Ind14" type="Ind14_0$_ca1aff8e-f576-4d7a-a48d-ba2547550589"/>
      <DO name="Ind15" type="Ind15_0$_27d486b6-532a-4248-9ea2-128b74434d0c"/>
      <DO name="Ind16" type="Ind16_0$_6679b2dd-ea06-479a-9de1-9c82453351fc"/>
      <DO name="Ind2" type="Ind2_0$_374e43de-3f5a-4b22-b2b0-cf6e3089ab66"/>
      <DO name="Ind3" type="Ind3_0$_c487ffc3-0489-417d-b8ad-b3f5b112ccb4"/>
      <DO name="Ind4" type="Ind4_0$_36913d2c-3fbd-419d-8ab8-a259312e499d"/>
      <DO name="Ind5" type="Ind5_0$_a693cd9d-bc3f-4a01-b78d-78e2babba5eb"/>
      <DO name="Ind6" type="Ind6_0$_0d5653aa-f8b7-4201-8163-a3eb277e5e36"/>
      <DO name="Ind7" type="Ind7_0$_0d95da50-d727-4418-bd66-f03e2a747c86"/>
      <DO name="Ind8" type="Ind8_0$_601235d5-fc8b-46d8-84a5-29f3de771e9a"/>
      <DO name="Ind9" type="Ind9_0$_9adcdbc6-9080-43aa-9a7a-27b64cb4867d"/>
    </LNodeType>
    <LNodeType id="MMXU_0$_28082ff0-718a-42b2-9d76-73e576dbf43d" lnClass="MMXU">
      <DO name="Beh" type="Beh_0"/>
      <DO name="Hz" type="Hz_0"/>
      <DO name="PhV" type="PhV_0"/>
      <DO name="A" type="A_0"/>
    </LNodeType>
    <LNodeType id="LGOS_0$_9d82cb97-8da7-4292-a456-fc307f3302de" lnClass="LGOS">
      <DO name="Mod" type="Mod_1"/>
      <DO name="Beh" type="Beh_0"/>
      <DO name="Health" type="Health_0"/>
      <DO name="NamPlt" type="NamPlt_1"/>
      <DO name="NdsCom" type="NdsCom_0$_f0c851f3-c091-469e-a6a8-ed1f1c298c9b"/>
      <DO name="St" type="St_0$_89f4711d-aa4d-4a61-891e-a9f7cd2538c3"/>
      <DO name="SimSt" type="SimSt_0$_47757126-db09-4360-b117-272078a2e6fb"/>
      <DO name="LastStNum" type="LastStNum_0$_9f3b7c01-d4b5-4cf6-8507-4e6057ccf8d8"/>
      <DO name="ConfRevNum" type="ConfRevNum_0$_a549979e-d6fb-47c8-a65d-2d55eac96ae5"/>
      <DO name="GoCBRef" type="GoCBRef_0"/>
    </LNodeType>
    <LNodeType id="LSVS_0$_cb727946-589b-45d4-b021-88f000692464" lnClass="LSVS">
      <DO name="Mod" type="Mod_1"/>
      <DO name="Beh" type="Beh_0"/>
      <DO name="Health" type="Health_0"/>
      <DO name="NamPlt" type="NamPlt_1"/>
      <DO name="NdsCom" type="NdsCom_0$_f0c851f3-c091-469e-a6a8-ed1f1c298c9b"/>
      <DO name="St" type="St_0$_89f4711d-aa4d-4a61-891e-a9f7cd2538c3"/>
      <DO name="SimSt" type="SimSt_0$_47757126-db09-4360-b117-272078a2e6fb"/>
      <DO name="ConfRevNum" type="ConfRevNum_0$_a549979e-d6fb-47c8-a65d-2d55eac96ae5"/>
      <DO name="SvCBRef" type="SvCBRef_0"/>
    </LNodeType>
    <LNodeType id="LPHD_1$_a565f113-234d-4a42-932d-982ac0093d90" lnClass="LPHD">
      <DO name="PhyNam" type="PhyNam_0"/>
      <DO name="Proxy" type="Proxy_0$_47e41c1a-248b-402e-854c-0dab8d47843d"/>
      <DO name="PhyHealth" type="PhyHealth_0"/>
    </LNodeType>
    <LNodeType id="PTOC_0$_3d4088e1-ff99-44cd-8bd2-1ff740224a02" lnClass="PTOC">
      <DO name="Beh" type="Beh_0"/>
      <DO name="Str" type="Str_0"/>
      <DO name="Op" type="Op_0"/>
    </LNodeType>
    <LNodeType id="PTUV_0$_61dea127-0953-4735-b05a-1a6ca1d3ebff" lnClass="PTUV">
      <DO name="Beh" type="Beh_0"/>
      <DO name="Str" type="Str_0"/>
      <DO name="Op" type="Op_0"/>
    </LNodeType>
    <LNodeType id="RBRF_0$_e207b646-41df-4459-9a6f-dcfdddb186c0" lnClass="RBRF">
      <DO name="Mod" type="Mod_1"/>
      <DO name="Beh" type="Beh_0"/>
      <DO name="Health" type="Health_0"/>
      <DO name="NamPlt" type="NamPlt_1"/>
      <DO name="OpIn" type="OpIn_0"/>
    </LNodeType>
    <LNodeType id="PTRC_0$_b551f2ad-31ab-45cb-bb64-681c719006cc" lnClass="PTRC">
      <DO name="Mod" type="Mod_1"/>
      <DO name="Beh" type="Beh_0"/>
      <DO name="Health" type="Health_0"/>
      <DO name="NamPlt" type="NamPlt_1"/>
      <DO name="Tr" type="Tr_0"/>
    </LNodeType>
    <LNodeType id="RBRF_1$_33b5e508-bb4e-4cd5-b520-e88cab8be0b6" lnClass="RBRF">
      <DO name="Mod" type="Mod_1"/>
      <DO name="Beh" type="Beh_0"/>
      <DO name="Health" type="Health_0"/>
      <DO name="NamPlt" type="NamPlt_1"/>
      <DO name="OpEx" type="OpEx_0"/>
    </LNodeType>
    <LNodeType id="XCBR_0$_5f8a931e-eb89-45de-8142-d6ffb2ca3360" lnClass="XCBR">
      <DO name="Mod" type="Mod_1"/>
      <DO name="Beh" type="Beh_0"/>
      <DO name="Health" type="Health_0"/>
      <DO name="NamPlt" type="NamPlt_1"/>
      <DO name="Loc" type="Loc_0$_40a4b74b-1f33-4971-b528-884e6133cd1c"/>
      <DO name="OpCnt" type="OpCnt_0$_48e4242b-cb85-4899-8a85-ac3bae281664"/>
      <DO name="Pos" type="Pos_0"/>
      <DO name="BlkOpn" type="BlkOpn_0"/>
      <DO name="BlkCls" type="BlkCls_0"/>
    </LNodeType>
    <LNodeType id="CSWI_0$_c294415d-ca40-4ba1-9894-524d0b71fc22" lnClass="CSWI">
      <DO name="Mod" type="Mod_1"/>
      <DO name="Beh" type="Beh_0"/>
      <DO name="Health" type="Health_0"/>
      <DO name="NamPlt" type="NamPlt_1"/>
      <DO name="OpCntRs" type="OpCntRs_0"/>
      <DO name="Pos" type="Pos_1"/>
    </LNodeType>
    <LNodeType id="LLN0_0$_86c936f4-b35a-4326-b080-95aab97c1ebf" lnClass="LLN0">
      <DO name="Mod" type="Mod_0"/>
      <DO name="Beh" type="Beh_0"/>
      <DO name="Health" type="Health_0"/>
      <DO name="NamPlt" type="NamPlt_0"/>
      <DO name="Loc" type="Loc_0$_40a4b74b-1f33-4971-b528-884e6133cd1c"/>
      <DO name="Diag" type="Diag_0"/>
      <DO name="LEDRs" type="LEDRs_0"/>
    </LNodeType>
    <LNodeType id="LLN0_1$_480d6d24-053d-41f6-99d9-9b42eefa3899" lnClass="LLN0">
      <DO name="Mod" type="Mod_1"/>
      <DO name="Beh" type="Beh_0"/>
      <DO name="Health" type="Health_0"/>
      <DO name="NamPlt" type="NamPlt_0"/>
    </LNodeType>
    <LNodeType id="LPHD2$_b84665ed-3ee2-45a7-8e90-e367f963f484" iedType="S451_SEL_451_6S" lnClass="LPHD">
      <DO name="PhyNam" type="S451_DPL_0$_9f473d67-bb44-4d5f-a4e4-70d6540b5b9a"/>
      <DO name="PhyHealth" type="S451_healthENS$_1b852f38-0925-4300-9e4e-d1d8b3f76b00"/>
      <DO name="Proxy" type="S451_SPS_0"/>
      <DO name="Sim" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
    </LNodeType>
    <LNodeType id="LGOS1$_bc28cd11-6ae1-4666-8b16-fe1a08710bb0" iedType="S451_SEL_451_6S" lnClass="LGOS">
      <DO name="Beh" type="S451_behENS$_43599cc2-ed23-4375-bd2f-c9d79673c5bd"/>
      <DO name="NdsCom" type="S451_SPS_LGOS_0"/>
      <DO name="St" type="S451_SPS_LGOS_0"/>
      <DO name="SimSt" type="S451_SPS_LGOS_0"/>
      <DO name="LastStNum" type="S451_INS_LGOS_0"/>
      <DO name="LastSqNum" type="S451_INS_LGOS_1$_73172416-6f28-4c66-9987-c319aa24497f"/>
      <DO name="LastTal" type="S451_INS_LGOS_1$_73172416-6f28-4c66-9987-c319aa24497f"/>
      <DO name="ConfRevNum" type="S451_INS_LGOS_0"/>
      <DO name="RxConfRevNum" type="S451_INS_LGOS_0"/>
      <DO name="ErrSt" type="S451_ENS_LGOS_0$_77cd16c7-d9c5-494a-a00d-81148c89e3c1"/>
      <DO name="OosCnt" type="S451_INS_LGOS_1$_73172416-6f28-4c66-9987-c319aa24497f"/>
      <DO name="TalCnt" type="S451_INS_LGOS_1$_73172416-6f28-4c66-9987-c319aa24497f"/>
      <DO name="DecErrCnt" type="S451_INS_LGOS_1$_73172416-6f28-4c66-9987-c319aa24497f"/>
      <DO name="BufOvflCnt" type="S451_INS_LGOS_1$_73172416-6f28-4c66-9987-c319aa24497f"/>
      <DO name="MsgLosCnt" type="S451_INS_LGOS_1$_73172416-6f28-4c66-9987-c319aa24497f"/>
      <DO name="MaxMsgLos" type="S451_INS_LGOS_1$_73172416-6f28-4c66-9987-c319aa24497f"/>
      <DO name="TotDwnTm" type="S451_MV_LGOS_0"/>
      <DO name="MaxDwnTm" type="S451_MV_LGOS_0"/>
      <DO name="RsStat" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
      <DO name="GoCBRef" type="S451_ORG_0"/>
      <DO name="DatSet" type="S451_ORG_1"/>
      <DO name="GoID" type="S451_VSG_LGOS_0"/>
      <DO name="Addr" type="S451_VSG_LGOS_0"/>
      <DO name="VlanID" type="S451_ING_LGOS_0"/>
      <DO name="VlanPri" type="S451_ING_LGOS_0"/>
      <DO name="AppID" type="S451_ING_LGOS_0"/>
    </LNodeType>
    <LNodeType id="LSVS1" iedType="S451_SEL_451_6S" lnClass="LSVS">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="NdsCom" type="S451_SPS_LSVS_0"/>
      <DO name="St" type="S451_SPS_LSVS_0"/>
      <DO name="SimSt" type="S451_SPS_LSVS_0"/>
      <DO name="ConfRevNum" type="S451_INS_LSVS_0"/>
      <DO name="RxConfRevNum" type="S451_INS_LSVS_0"/>
      <DO name="SmpSynch" type="S451_INS_LSVS_1"/>
      <DO name="ErrSt" type="S451_ENS_LSVS_0"/>
      <DO name="NetwDly" type="S451_MV_LSVS_1"/>
      <DO name="OosCnt" type="S451_INS_LSVS_1"/>
      <DO name="DscdCnt" type="S451_INS_LSVS_1"/>
      <DO name="IntpCnt" type="S451_INS_LSVS_1"/>
      <DO name="TotDwnTm" type="S451_MV_LSVS_0"/>
      <DO name="MaxDwnTm" type="S451_MV_LSVS_0"/>
      <DO name="RsStat" type="S451_SPC_direct_normal"/>
      <DO name="SvCBRef" type="S451_ORG_LSVS_0"/>
      <DO name="DatSet" type="S451_ORG_LSVS_1"/>
      <DO name="SvID" type="S451_VSG_LSVS_0"/>
      <DO name="Addr" type="S451_VSG_LSVS_0"/>
      <DO name="VlanID" type="S451_ING_LSVS_0"/>
      <DO name="VlanPri" type="S451_ING_LSVS_0"/>
      <DO name="AppID" type="S451_ING_LSVS_0"/>
    </LNodeType>
    <LNodeType id="LPHD1$_9d075b70-3e2a-44c2-b215-bd66a9e6c52a" iedType="S451_SEL_451_6S" lnClass="LPHD">
      <DO name="PhyNam" type="S451_DPL_0$_9f473d67-bb44-4d5f-a4e4-70d6540b5b9a"/>
      <DO name="PhyHealth" type="S451_healthENS$_1b852f38-0925-4300-9e4e-d1d8b3f76b00"/>
      <DO name="Proxy" type="S451_SPS_0"/>
    </LNodeType>
    <LNodeType id="PIOC1$_4783516f-29ea-447f-aa55-317dc6f060a3" iedType="S451_SEL_451_6S" lnClass="PIOC">
      <DO name="Beh" type="S451_behENS$_43599cc2-ed23-4375-bd2f-c9d79673c5bd"/>
      <DO name="Op" type="S451_ACT_0$_1cc8adad-7785-49dc-a8fb-94d8f6a7071e"/>
    </LNodeType>
    <LNodeType id="PTOC1$_4d11ef83-88d3-4c03-ad69-b12442563ce7" iedType="S451_SEL_451_6S" lnClass="PTOC">
      <DO name="Beh" type="S451_behENS$_43599cc2-ed23-4375-bd2f-c9d79673c5bd"/>
      <DO name="Str" type="S451_ACD_0$_14fd6c65-86d6-46a3-a074-a5bd0cd13724"/>
      <DO name="Op" type="S451_ACT_0$_1cc8adad-7785-49dc-a8fb-94d8f6a7071e"/>
    </LNodeType>
    <LNodeType id="PTUV1$_50b9c076-fc46-45f1-8a89-ffcee8ae1acd" iedType="S451_SEL_451_6S" lnClass="PTUV">
      <DO name="Beh" type="S451_behENS$_43599cc2-ed23-4375-bd2f-c9d79673c5bd"/>
      <DO name="Str" type="S451_ACD_0$_14fd6c65-86d6-46a3-a074-a5bd0cd13724"/>
      <DO name="Op" type="S451_ACT_0$_1cc8adad-7785-49dc-a8fb-94d8f6a7071e"/>
    </LNodeType>
    <LNodeType id="PTOV1$_50727c5a-8363-4fac-9b0b-8e18c777999f" iedType="S451_SEL_451_6S" lnClass="PTOV">
      <DO name="Beh" type="S451_behENS$_43599cc2-ed23-4375-bd2f-c9d79673c5bd"/>
      <DO name="Str" type="S451_ACD_0$_14fd6c65-86d6-46a3-a074-a5bd0cd13724"/>
      <DO name="Op" type="S451_ACT_0$_1cc8adad-7785-49dc-a8fb-94d8f6a7071e"/>
    </LNodeType>
    <LNodeType id="PTOV2$_71cdd269-e003-44ec-a7bd-eec28c7ff0b3" iedType="S451_SEL_451_6S" lnClass="PTOV">
      <DO name="Beh" type="S451_behENS$_43599cc2-ed23-4375-bd2f-c9d79673c5bd"/>
      <DO name="Str" type="S451_ACD_0$_14fd6c65-86d6-46a3-a074-a5bd0cd13724"/>
    </LNodeType>
    <LNodeType id="PHIZ1$_9e5b0bc8-a505-4036-8436-59ca47fa1f4f" iedType="S451_SEL_451_6S" lnClass="PHIZ">
      <DO name="Beh" type="S451_behENS$_43599cc2-ed23-4375-bd2f-c9d79673c5bd"/>
      <DO name="Str" type="S451_ACD_0$_14fd6c65-86d6-46a3-a074-a5bd0cd13724"/>
      <DO name="Op" type="S451_ACT_1$_855da7e2-13ea-4190-97f4-101815dfb422"/>
    </LNodeType>
    <LNodeType id="PHIZ2$_d799a720-0c03-4171-905e-b9e0098fa393" iedType="S451_SEL_451_6S" lnClass="PHIZ">
      <DO name="Beh" type="S451_behENS$_43599cc2-ed23-4375-bd2f-c9d79673c5bd"/>
      <DO name="Str" type="S451_ACD_0$_14fd6c65-86d6-46a3-a074-a5bd0cd13724"/>
      <DO name="Op" type="S451_ACT_0$_1cc8adad-7785-49dc-a8fb-94d8f6a7071e"/>
    </LNodeType>
    <LNodeType id="PSCH1" iedType="S451_SEL_451_6S" lnClass="PSCH">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="TxPrm" type="S451_ACT_0"/>
      <DO name="RxPrm1" type="S451_ACT_0"/>
      <DO name="Op" type="S451_ACT_0"/>
      <DO name="EchoWei" type="S451_SPS_0"/>
      <DO name="EchoWeiOp" type="S451_SPS_0"/>
      <DO name="TxBlk" type="S451_ACT_0"/>
    </LNodeType>
    <LNodeType id="PSCH2$_e471cdd0-adbc-4072-9e60-ffc4cc82a2ea" iedType="S451_SEL_451_6S" lnClass="PSCH">
      <DO name="Beh" type="S451_behENS$_43599cc2-ed23-4375-bd2f-c9d79673c5bd"/>
      <DO name="TxPrm" type="S451_ACT_0$_1cc8adad-7785-49dc-a8fb-94d8f6a7071e"/>
      <DO name="RxPrm1" type="S451_ACT_0$_1cc8adad-7785-49dc-a8fb-94d8f6a7071e"/>
      <DO name="Op" type="S451_ACT_0$_1cc8adad-7785-49dc-a8fb-94d8f6a7071e"/>
      <DO name="TxBlk" type="S451_ACT_0$_1cc8adad-7785-49dc-a8fb-94d8f6a7071e"/>
    </LNodeType>
    <LNodeType id="PTRC1$_14ea7e2d-b13f-4bd8-98b9-77a14ec2cf84" iedType="S451_SEL_451_6S" lnClass="PTRC">
      <DO name="Beh" type="S451_behENS$_43599cc2-ed23-4375-bd2f-c9d79673c5bd"/>
      <DO name="Tr" type="S451_ACT_0$_1cc8adad-7785-49dc-a8fb-94d8f6a7071e"/>
    </LNodeType>
    <LNodeType id="RDIR1$_bd61a3a0-f399-44cb-b7df-0e9e770d7b06" iedType="S451_SEL_451_6S" lnClass="RDIR">
      <DO name="Beh" type="S451_behENS$_43599cc2-ed23-4375-bd2f-c9d79673c5bd"/>
      <DO name="Dir" type="S451_ACD_0$_14fd6c65-86d6-46a3-a074-a5bd0cd13724"/>
    </LNodeType>
    <LNodeType id="RBRF1$_590e3c30-e17c-4451-af48-f150b560c2bb" iedType="S451_SEL_451_6S" lnClass="RBRF">
      <DO name="Beh" type="S451_behENS$_43599cc2-ed23-4375-bd2f-c9d79673c5bd"/>
      <DO name="Str" type="S451_ACD_0$_14fd6c65-86d6-46a3-a074-a5bd0cd13724"/>
      <DO name="OpEx" type="S451_ACT_1$_855da7e2-13ea-4190-97f4-101815dfb422"/>
      <DO name="OpIn" type="S451_ACT_0$_1cc8adad-7785-49dc-a8fb-94d8f6a7071e"/>
    </LNodeType>
    <LNodeType id="XCBR1$_8edbe7f2-66d6-485b-b386-133eaf023067" iedType="S451_SEL_451_6S" lnClass="XCBR">
      <DO name="Beh" type="S451_behENS$_43599cc2-ed23-4375-bd2f-c9d79673c5bd"/>
      <DO name="Loc" type="S451_SPS_0"/>
      <DO name="TukRackPos" type="S451_SPS_1$_19f84782-e510-4b96-84a6-647c2d8fcda1"/>
      <DO name="TukTestPos" type="S451_SPS_1$_19f84782-e510-4b96-84a6-647c2d8fcda1"/>
      <DO name="OpCnt" type="S451_INS_0"/>
      <DO name="Pos" type="S451_DPC_0"/>
      <DO name="BlkOpn" type="S451_SPC_1$_0c3cad1c-dc44-4889-bf9b-45f8848a8dbf"/>
      <DO name="BlkCls" type="S451_SPC_1$_0c3cad1c-dc44-4889-bf9b-45f8848a8dbf"/>
      <DO name="CBOpCap" type="S451_CBOpCapENS$_edcec50f-a7cd-47e4-927d-99b93958e192"/>
    </LNodeType>
    <LNodeType id="XSWI1" iedType="S451_SEL_451_6S" lnClass="XSWI">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="Loc" type="S451_SPS_0"/>
      <DO name="SwBayCtlEn" type="S451_SPS_1"/>
      <DO name="OpCnt" type="S451_INS_0"/>
      <DO name="Pos" type="S451_DPC_0"/>
      <DO name="BlkOpn" type="S451_SPC_1"/>
      <DO name="BlkCls" type="S451_SPC_1"/>
      <DO name="SwTyp" type="S451_SwTypENS"/>
      <DO name="SwOpCap" type="S451_SwOpCapENS"/>
    </LNodeType>
    <LNodeType id="CSWI1$_b36b103f-938a-4c8a-bf0d-09b4ed9cb4d3" iedType="S451_SEL_451_6S" lnClass="CSWI">
      <DO name="Beh" type="S451_behENS$_43599cc2-ed23-4375-bd2f-c9d79673c5bd"/>
      <DO name="Pos" type="S451_DPC_direct_normal"/>
      <DO name="OpOpn" type="S451_ACT_0$_1cc8adad-7785-49dc-a8fb-94d8f6a7071e"/>
      <DO name="OpCls" type="S451_ACT_0$_1cc8adad-7785-49dc-a8fb-94d8f6a7071e"/>
    </LNodeType>
    <LNodeType id="CSWI2" iedType="S451_SEL_451_6S" lnClass="CSWI">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="Loc" type="S451_SPS_0"/>
      <DO name="Pos" type="S451_DPC_1"/>
      <DO name="OpOpn" type="S451_ACT_0"/>
      <DO name="OpCls" type="S451_ACT_0"/>
    </LNodeType>
    <LNodeType id="RFLO1" iedType="S451_SEL_451_6S" lnClass="RFLO">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="FltZ" type="S451_CMV_0"/>
      <DO name="FltDiskm" type="S451_MV_0"/>
      <DO name="A" type="S451_WYE_5"/>
      <DO name="Anseq" type="S451_CMV_2"/>
    </LNodeType>
    <LNodeType id="RDRE1" iedType="S451_SEL_451_6S" lnClass="RDRE">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="RcdMade" type="S451_SPS_0"/>
      <DO name="FltNum" type="S451_INS_0"/>
    </LNodeType>
    <LNodeType id="PTTR1" iedType="S451_SEL_451_6S" lnClass="PTTR">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="Op" type="S451_ACT_0"/>
      <DO name="AlmThm" type="S451_SPS_0"/>
    </LNodeType>
    <LNodeType id="SCBR1" iedType="S451_SEL_451_6S" lnClass="SCBR">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="ColOpn" type="S451_SPS_0"/>
      <DO name="AbrAlm" type="S451_SPS_0"/>
      <DO name="MechTmAlm" type="S451_SPS_1"/>
      <DO name="OpTmAlm" type="S451_SPS_0"/>
      <DO name="AccAbr" type="S451_MV_0"/>
    </LNodeType>
    <LNodeType desc="MET3P" id="MMXU1$_2c8c58b0-371b-4943-888e-22f7c73b3c6b" iedType="S451_SEL_451_6S" lnClass="MMXU">
      <DO name="Beh" type="S451_behENS$_43599cc2-ed23-4375-bd2f-c9d79673c5bd"/>
      <DO name="TotW" type="S451_MV_0"/>
      <DO name="TotVAr" type="S451_MV_0"/>
      <DO name="TotVA" type="S451_MV_0"/>
      <DO name="TotPF" type="S451_MV_0"/>
      <DO name="Hz" type="S451_MV_0"/>
      <DO name="PhV" type="S451_WYE_4"/>
      <DO name="A" type="S451_WYE_4"/>
      <DO name="W" type="S451_WYE_0"/>
      <DO name="VAr" type="S451_WYE_0"/>
      <DO name="PF" type="S451_WYE_0"/>
    </LNodeType>
    <LNodeType desc="METBCn" id="MMXU2" iedType="S451_SEL_451_6S" lnClass="MMXU">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="A" type="S451_WYE_4"/>
    </LNodeType>
    <LNodeType id="MSQI1" iedType="S451_SEL_451_6S" lnClass="MSQI">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="SeqA" type="S451_SEQ_0"/>
      <DO name="SeqV" type="S451_SEQ_0"/>
    </LNodeType>
    <LNodeType id="ZBAT1" iedType="S451_SEL_451_6S" lnClass="ZBAT">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="Vol" type="S451_MV_0"/>
      <DO name="BatWrn" type="S451_SPS_1"/>
      <DO name="BatFail" type="S451_SPS_1"/>
      <DO name="BatGndFlt" type="S451_SPS_1"/>
      <DO name="BatDvAlm" type="S451_SPS_1"/>
    </LNodeType>
    <LNodeType id="MDST1" iedType="S451_SEL_451_6S" lnClass="MDST">
      <DO name="Beh" type="S451_behENS_1"/>
      <DO name="NamPlt" type="S451_LPL_1"/>
      <DO name="A" type="S451_WYE_0"/>
      <DO name="W" type="S451_WYE_0"/>
      <DO name="VAr" type="S451_WYE_0"/>
      <DO name="VA" type="S451_WYE_0"/>
      <DO name="SeqA" type="S451_SEQ_1"/>
      <DO name="TotW" type="S451_MV_2"/>
      <DO name="TotVAr" type="S451_MV_2"/>
      <DO name="TotVA" type="S451_MV_2"/>
      <DO name="SupWh" type="S451_BCR_1"/>
      <DO name="DmdWh" type="S451_BCR_1"/>
    </LNodeType>
    <LNodeType id="MDST2" iedType="S451_SEL_451_6S" lnClass="MDST">
      <DO name="Beh" type="S451_behENS_1"/>
      <DO name="NamPlt" type="S451_LPL_1"/>
      <DO name="A" type="S451_WYE_0"/>
      <DO name="W" type="S451_WYE_0"/>
      <DO name="VAr" type="S451_WYE_0"/>
      <DO name="VA" type="S451_WYE_0"/>
      <DO name="SeqA" type="S451_SEQ_1"/>
      <DO name="TotW" type="S451_MV_2"/>
      <DO name="TotVAr" type="S451_MV_2"/>
      <DO name="TotVA" type="S451_MV_2"/>
    </LNodeType>
    <LNodeType id="GGIO_BC01_08$_379bb887-e541-4b92-a6d3-60a73703e264" iedType="S451_SEL_451_6S" lnClass="GGIO">
      <DO name="Beh" type="S451_behENS$_43599cc2-ed23-4375-bd2f-c9d79673c5bd"/>
      <DO name="SPCSO01" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
      <DO name="SPCSO02" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
      <DO name="SPCSO03" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
      <DO name="SPCSO04" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
      <DO name="SPCSO05" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
      <DO name="SPCSO06" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
      <DO name="SPCSO07" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
      <DO name="SPCSO08" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
    </LNodeType>
    <LNodeType id="GGIO_BC09_16$_7f2bf10f-a6e3-489c-8af6-8db03605a3d9" iedType="S451_SEL_451_6S" lnClass="GGIO">
      <DO name="Beh" type="S451_behENS$_43599cc2-ed23-4375-bd2f-c9d79673c5bd"/>
      <DO name="SPCSO09" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
      <DO name="SPCSO10" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
      <DO name="SPCSO11" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
      <DO name="SPCSO12" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
      <DO name="SPCSO13" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
      <DO name="SPCSO14" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
      <DO name="SPCSO15" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
      <DO name="SPCSO16" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
    </LNodeType>
    <LNodeType id="GGIO_BC17_24$_1df115a3-d617-4a49-9674-aa04b2f03b2d" iedType="S451_SEL_451_6S" lnClass="GGIO">
      <DO name="Beh" type="S451_behENS$_43599cc2-ed23-4375-bd2f-c9d79673c5bd"/>
      <DO name="SPCSO17" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
      <DO name="SPCSO18" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
      <DO name="SPCSO19" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
      <DO name="SPCSO20" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
      <DO name="SPCSO21" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
      <DO name="SPCSO22" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
      <DO name="SPCSO23" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
      <DO name="SPCSO24" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
    </LNodeType>
    <LNodeType id="GGIO_BC25_32$_ce2cb191-ad4b-4e02-9ac8-36c273dfc2b5" iedType="S451_SEL_451_6S" lnClass="GGIO">
      <DO name="Beh" type="S451_behENS$_43599cc2-ed23-4375-bd2f-c9d79673c5bd"/>
      <DO name="SPCSO25" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
      <DO name="SPCSO26" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
      <DO name="SPCSO27" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
      <DO name="SPCSO28" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
      <DO name="SPCSO29" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
      <DO name="SPCSO30" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
      <DO name="SPCSO31" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
      <DO name="SPCSO32" type="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7"/>
    </LNodeType>
    <LNodeType id="GGIO_BS64" iedType="S451_SEL_451_6S" lnClass="GGIO">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="Ind01" type="S451_SPS_0"/>
      <DO name="Ind02" type="S451_SPS_0"/>
      <DO name="Ind03" type="S451_SPS_0"/>
      <DO name="Ind04" type="S451_SPS_0"/>
      <DO name="Ind05" type="S451_SPS_0"/>
      <DO name="Ind06" type="S451_SPS_0"/>
      <DO name="Ind07" type="S451_SPS_0"/>
      <DO name="Ind08" type="S451_SPS_0"/>
      <DO name="Ind09" type="S451_SPS_0"/>
      <DO name="Ind10" type="S451_SPS_0"/>
      <DO name="Ind11" type="S451_SPS_0"/>
      <DO name="Ind12" type="S451_SPS_0"/>
      <DO name="Ind13" type="S451_SPS_0"/>
      <DO name="Ind14" type="S451_SPS_0"/>
      <DO name="Ind15" type="S451_SPS_0"/>
      <DO name="Ind16" type="S451_SPS_0"/>
      <DO name="Ind17" type="S451_SPS_0"/>
      <DO name="Ind18" type="S451_SPS_0"/>
      <DO name="Ind19" type="S451_SPS_0"/>
      <DO name="Ind20" type="S451_SPS_0"/>
      <DO name="Ind21" type="S451_SPS_0"/>
      <DO name="Ind22" type="S451_SPS_0"/>
      <DO name="Ind23" type="S451_SPS_0"/>
      <DO name="Ind24" type="S451_SPS_0"/>
      <DO name="Ind25" type="S451_SPS_0"/>
      <DO name="Ind26" type="S451_SPS_0"/>
      <DO name="Ind27" type="S451_SPS_0"/>
      <DO name="Ind28" type="S451_SPS_0"/>
      <DO name="Ind29" type="S451_SPS_0"/>
      <DO name="Ind30" type="S451_SPS_0"/>
      <DO name="Ind31" type="S451_SPS_0"/>
      <DO name="Ind32" type="S451_SPS_0"/>
      <DO name="Ind33" type="S451_SPS_0"/>
      <DO name="Ind34" type="S451_SPS_0"/>
      <DO name="Ind35" type="S451_SPS_0"/>
      <DO name="Ind36" type="S451_SPS_0"/>
      <DO name="Ind37" type="S451_SPS_0"/>
      <DO name="Ind38" type="S451_SPS_0"/>
      <DO name="Ind39" type="S451_SPS_0"/>
      <DO name="Ind40" type="S451_SPS_0"/>
      <DO name="Ind41" type="S451_SPS_0"/>
      <DO name="Ind42" type="S451_SPS_0"/>
      <DO name="Ind43" type="S451_SPS_0"/>
      <DO name="Ind44" type="S451_SPS_0"/>
      <DO name="Ind45" type="S451_SPS_0"/>
      <DO name="Ind46" type="S451_SPS_0"/>
      <DO name="Ind47" type="S451_SPS_0"/>
      <DO name="Ind48" type="S451_SPS_0"/>
      <DO name="Ind49" type="S451_SPS_0"/>
      <DO name="Ind50" type="S451_SPS_0"/>
      <DO name="Ind51" type="S451_SPS_0"/>
      <DO name="Ind52" type="S451_SPS_0"/>
      <DO name="Ind53" type="S451_SPS_0"/>
      <DO name="Ind54" type="S451_SPS_0"/>
      <DO name="Ind55" type="S451_SPS_0"/>
      <DO name="Ind56" type="S451_SPS_0"/>
      <DO name="Ind57" type="S451_SPS_0"/>
      <DO name="Ind58" type="S451_SPS_0"/>
      <DO name="Ind59" type="S451_SPS_0"/>
      <DO name="Ind60" type="S451_SPS_0"/>
      <DO name="Ind61" type="S451_SPS_0"/>
      <DO name="Ind62" type="S451_SPS_0"/>
      <DO name="Ind63" type="S451_SPS_0"/>
      <DO name="Ind64" type="S451_SPS_0"/>
    </LNodeType>
    <LNodeType id="GGIO_BS32" iedType="S451_SEL_451_6S" lnClass="GGIO">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="Ind01" type="S451_SPS_0"/>
      <DO name="Ind02" type="S451_SPS_0"/>
      <DO name="Ind03" type="S451_SPS_0"/>
      <DO name="Ind04" type="S451_SPS_0"/>
      <DO name="Ind05" type="S451_SPS_0"/>
      <DO name="Ind06" type="S451_SPS_0"/>
      <DO name="Ind07" type="S451_SPS_0"/>
      <DO name="Ind08" type="S451_SPS_0"/>
      <DO name="Ind09" type="S451_SPS_0"/>
      <DO name="Ind10" type="S451_SPS_0"/>
      <DO name="Ind11" type="S451_SPS_0"/>
      <DO name="Ind12" type="S451_SPS_0"/>
      <DO name="Ind13" type="S451_SPS_0"/>
      <DO name="Ind14" type="S451_SPS_0"/>
      <DO name="Ind15" type="S451_SPS_0"/>
      <DO name="Ind16" type="S451_SPS_0"/>
      <DO name="Ind17" type="S451_SPS_0"/>
      <DO name="Ind18" type="S451_SPS_0"/>
      <DO name="Ind19" type="S451_SPS_0"/>
      <DO name="Ind20" type="S451_SPS_0"/>
      <DO name="Ind21" type="S451_SPS_0"/>
      <DO name="Ind22" type="S451_SPS_0"/>
      <DO name="Ind23" type="S451_SPS_0"/>
      <DO name="Ind24" type="S451_SPS_0"/>
      <DO name="Ind25" type="S451_SPS_0"/>
      <DO name="Ind26" type="S451_SPS_0"/>
      <DO name="Ind27" type="S451_SPS_0"/>
      <DO name="Ind28" type="S451_SPS_0"/>
      <DO name="Ind29" type="S451_SPS_0"/>
      <DO name="Ind30" type="S451_SPS_0"/>
      <DO name="Ind31" type="S451_SPS_0"/>
      <DO name="Ind32" type="S451_SPS_0"/>
    </LNodeType>
    <LNodeType id="GGIO_AS64" iedType="S451_SEL_451_6S" lnClass="GGIO">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="AnIn01" type="S451_MV_0"/>
      <DO name="AnIn02" type="S451_MV_0"/>
      <DO name="AnIn03" type="S451_MV_0"/>
      <DO name="AnIn04" type="S451_MV_0"/>
      <DO name="AnIn05" type="S451_MV_0"/>
      <DO name="AnIn06" type="S451_MV_0"/>
      <DO name="AnIn07" type="S451_MV_0"/>
      <DO name="AnIn08" type="S451_MV_0"/>
      <DO name="AnIn09" type="S451_MV_0"/>
      <DO name="AnIn10" type="S451_MV_0"/>
      <DO name="AnIn11" type="S451_MV_0"/>
      <DO name="AnIn12" type="S451_MV_0"/>
      <DO name="AnIn13" type="S451_MV_0"/>
      <DO name="AnIn14" type="S451_MV_0"/>
      <DO name="AnIn15" type="S451_MV_0"/>
      <DO name="AnIn16" type="S451_MV_0"/>
      <DO name="AnIn17" type="S451_MV_0"/>
      <DO name="AnIn18" type="S451_MV_0"/>
      <DO name="AnIn19" type="S451_MV_0"/>
      <DO name="AnIn20" type="S451_MV_0"/>
      <DO name="AnIn21" type="S451_MV_0"/>
      <DO name="AnIn22" type="S451_MV_0"/>
      <DO name="AnIn23" type="S451_MV_0"/>
      <DO name="AnIn24" type="S451_MV_0"/>
      <DO name="AnIn25" type="S451_MV_0"/>
      <DO name="AnIn26" type="S451_MV_0"/>
      <DO name="AnIn27" type="S451_MV_0"/>
      <DO name="AnIn28" type="S451_MV_0"/>
      <DO name="AnIn29" type="S451_MV_0"/>
      <DO name="AnIn30" type="S451_MV_0"/>
      <DO name="AnIn31" type="S451_MV_0"/>
      <DO name="AnIn32" type="S451_MV_0"/>
      <DO name="AnIn33" type="S451_MV_0"/>
      <DO name="AnIn34" type="S451_MV_0"/>
      <DO name="AnIn35" type="S451_MV_0"/>
      <DO name="AnIn36" type="S451_MV_0"/>
      <DO name="AnIn37" type="S451_MV_0"/>
      <DO name="AnIn38" type="S451_MV_0"/>
      <DO name="AnIn39" type="S451_MV_0"/>
      <DO name="AnIn40" type="S451_MV_0"/>
      <DO name="AnIn41" type="S451_MV_0"/>
      <DO name="AnIn42" type="S451_MV_0"/>
      <DO name="AnIn43" type="S451_MV_0"/>
      <DO name="AnIn44" type="S451_MV_0"/>
      <DO name="AnIn45" type="S451_MV_0"/>
      <DO name="AnIn46" type="S451_MV_0"/>
      <DO name="AnIn47" type="S451_MV_0"/>
      <DO name="AnIn48" type="S451_MV_0"/>
      <DO name="AnIn49" type="S451_MV_0"/>
      <DO name="AnIn50" type="S451_MV_0"/>
      <DO name="AnIn51" type="S451_MV_0"/>
      <DO name="AnIn52" type="S451_MV_0"/>
      <DO name="AnIn53" type="S451_MV_0"/>
      <DO name="AnIn54" type="S451_MV_0"/>
      <DO name="AnIn55" type="S451_MV_0"/>
      <DO name="AnIn56" type="S451_MV_0"/>
      <DO name="AnIn57" type="S451_MV_0"/>
      <DO name="AnIn58" type="S451_MV_0"/>
      <DO name="AnIn59" type="S451_MV_0"/>
      <DO name="AnIn60" type="S451_MV_0"/>
      <DO name="AnIn61" type="S451_MV_0"/>
      <DO name="AnIn62" type="S451_MV_0"/>
      <DO name="AnIn63" type="S451_MV_0"/>
      <DO name="AnIn64" type="S451_MV_0"/>
    </LNodeType>
    <LNodeType id="GGIO_BS128" iedType="S451_SEL_451_6S" lnClass="GGIO">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="Ind001" type="S451_SPS_0"/>
      <DO name="Ind002" type="S451_SPS_0"/>
      <DO name="Ind003" type="S451_SPS_0"/>
      <DO name="Ind004" type="S451_SPS_0"/>
      <DO name="Ind005" type="S451_SPS_0"/>
      <DO name="Ind006" type="S451_SPS_0"/>
      <DO name="Ind007" type="S451_SPS_0"/>
      <DO name="Ind008" type="S451_SPS_0"/>
      <DO name="Ind009" type="S451_SPS_0"/>
      <DO name="Ind010" type="S451_SPS_0"/>
      <DO name="Ind011" type="S451_SPS_0"/>
      <DO name="Ind012" type="S451_SPS_0"/>
      <DO name="Ind013" type="S451_SPS_0"/>
      <DO name="Ind014" type="S451_SPS_0"/>
      <DO name="Ind015" type="S451_SPS_0"/>
      <DO name="Ind016" type="S451_SPS_0"/>
      <DO name="Ind017" type="S451_SPS_0"/>
      <DO name="Ind018" type="S451_SPS_0"/>
      <DO name="Ind019" type="S451_SPS_0"/>
      <DO name="Ind020" type="S451_SPS_0"/>
      <DO name="Ind021" type="S451_SPS_0"/>
      <DO name="Ind022" type="S451_SPS_0"/>
      <DO name="Ind023" type="S451_SPS_0"/>
      <DO name="Ind024" type="S451_SPS_0"/>
      <DO name="Ind025" type="S451_SPS_0"/>
      <DO name="Ind026" type="S451_SPS_0"/>
      <DO name="Ind027" type="S451_SPS_0"/>
      <DO name="Ind028" type="S451_SPS_0"/>
      <DO name="Ind029" type="S451_SPS_0"/>
      <DO name="Ind030" type="S451_SPS_0"/>
      <DO name="Ind031" type="S451_SPS_0"/>
      <DO name="Ind032" type="S451_SPS_0"/>
      <DO name="Ind033" type="S451_SPS_0"/>
      <DO name="Ind034" type="S451_SPS_0"/>
      <DO name="Ind035" type="S451_SPS_0"/>
      <DO name="Ind036" type="S451_SPS_0"/>
      <DO name="Ind037" type="S451_SPS_0"/>
      <DO name="Ind038" type="S451_SPS_0"/>
      <DO name="Ind039" type="S451_SPS_0"/>
      <DO name="Ind040" type="S451_SPS_0"/>
      <DO name="Ind041" type="S451_SPS_0"/>
      <DO name="Ind042" type="S451_SPS_0"/>
      <DO name="Ind043" type="S451_SPS_0"/>
      <DO name="Ind044" type="S451_SPS_0"/>
      <DO name="Ind045" type="S451_SPS_0"/>
      <DO name="Ind046" type="S451_SPS_0"/>
      <DO name="Ind047" type="S451_SPS_0"/>
      <DO name="Ind048" type="S451_SPS_0"/>
      <DO name="Ind049" type="S451_SPS_0"/>
      <DO name="Ind050" type="S451_SPS_0"/>
      <DO name="Ind051" type="S451_SPS_0"/>
      <DO name="Ind052" type="S451_SPS_0"/>
      <DO name="Ind053" type="S451_SPS_0"/>
      <DO name="Ind054" type="S451_SPS_0"/>
      <DO name="Ind055" type="S451_SPS_0"/>
      <DO name="Ind056" type="S451_SPS_0"/>
      <DO name="Ind057" type="S451_SPS_0"/>
      <DO name="Ind058" type="S451_SPS_0"/>
      <DO name="Ind059" type="S451_SPS_0"/>
      <DO name="Ind060" type="S451_SPS_0"/>
      <DO name="Ind061" type="S451_SPS_0"/>
      <DO name="Ind062" type="S451_SPS_0"/>
      <DO name="Ind063" type="S451_SPS_0"/>
      <DO name="Ind064" type="S451_SPS_0"/>
      <DO name="Ind065" type="S451_SPS_0"/>
      <DO name="Ind066" type="S451_SPS_0"/>
      <DO name="Ind067" type="S451_SPS_0"/>
      <DO name="Ind068" type="S451_SPS_0"/>
      <DO name="Ind069" type="S451_SPS_0"/>
      <DO name="Ind070" type="S451_SPS_0"/>
      <DO name="Ind071" type="S451_SPS_0"/>
      <DO name="Ind072" type="S451_SPS_0"/>
      <DO name="Ind073" type="S451_SPS_0"/>
      <DO name="Ind074" type="S451_SPS_0"/>
      <DO name="Ind075" type="S451_SPS_0"/>
      <DO name="Ind076" type="S451_SPS_0"/>
      <DO name="Ind077" type="S451_SPS_0"/>
      <DO name="Ind078" type="S451_SPS_0"/>
      <DO name="Ind079" type="S451_SPS_0"/>
      <DO name="Ind080" type="S451_SPS_0"/>
      <DO name="Ind081" type="S451_SPS_0"/>
      <DO name="Ind082" type="S451_SPS_0"/>
      <DO name="Ind083" type="S451_SPS_0"/>
      <DO name="Ind084" type="S451_SPS_0"/>
      <DO name="Ind085" type="S451_SPS_0"/>
      <DO name="Ind086" type="S451_SPS_0"/>
      <DO name="Ind087" type="S451_SPS_0"/>
      <DO name="Ind088" type="S451_SPS_0"/>
      <DO name="Ind089" type="S451_SPS_0"/>
      <DO name="Ind090" type="S451_SPS_0"/>
      <DO name="Ind091" type="S451_SPS_0"/>
      <DO name="Ind092" type="S451_SPS_0"/>
      <DO name="Ind093" type="S451_SPS_0"/>
      <DO name="Ind094" type="S451_SPS_0"/>
      <DO name="Ind095" type="S451_SPS_0"/>
      <DO name="Ind096" type="S451_SPS_0"/>
      <DO name="Ind097" type="S451_SPS_0"/>
      <DO name="Ind098" type="S451_SPS_0"/>
      <DO name="Ind099" type="S451_SPS_0"/>
      <DO name="Ind100" type="S451_SPS_0"/>
      <DO name="Ind101" type="S451_SPS_0"/>
      <DO name="Ind102" type="S451_SPS_0"/>
      <DO name="Ind103" type="S451_SPS_0"/>
      <DO name="Ind104" type="S451_SPS_0"/>
      <DO name="Ind105" type="S451_SPS_0"/>
      <DO name="Ind106" type="S451_SPS_0"/>
      <DO name="Ind107" type="S451_SPS_0"/>
      <DO name="Ind108" type="S451_SPS_0"/>
      <DO name="Ind109" type="S451_SPS_0"/>
      <DO name="Ind110" type="S451_SPS_0"/>
      <DO name="Ind111" type="S451_SPS_0"/>
      <DO name="Ind112" type="S451_SPS_0"/>
      <DO name="Ind113" type="S451_SPS_0"/>
      <DO name="Ind114" type="S451_SPS_0"/>
      <DO name="Ind115" type="S451_SPS_0"/>
      <DO name="Ind116" type="S451_SPS_0"/>
      <DO name="Ind117" type="S451_SPS_0"/>
      <DO name="Ind118" type="S451_SPS_0"/>
      <DO name="Ind119" type="S451_SPS_0"/>
      <DO name="Ind120" type="S451_SPS_0"/>
      <DO name="Ind121" type="S451_SPS_0"/>
      <DO name="Ind122" type="S451_SPS_0"/>
      <DO name="Ind123" type="S451_SPS_0"/>
      <DO name="Ind124" type="S451_SPS_0"/>
      <DO name="Ind125" type="S451_SPS_0"/>
      <DO name="Ind126" type="S451_SPS_0"/>
      <DO name="Ind127" type="S451_SPS_0"/>
      <DO name="Ind128" type="S451_SPS_0"/>
    </LNodeType>
    <LNodeType id="GGIO_BS26" iedType="S451_SEL_451_6S" lnClass="GGIO">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="Ind01" type="S451_SPS_0"/>
      <DO name="Ind02" type="S451_SPS_0"/>
      <DO name="Ind03" type="S451_SPS_0"/>
      <DO name="Ind04" type="S451_SPS_0"/>
      <DO name="Ind05" type="S451_SPS_0"/>
      <DO name="Ind06" type="S451_SPS_0"/>
      <DO name="Ind07" type="S451_SPS_0"/>
      <DO name="Ind08" type="S451_SPS_0"/>
      <DO name="Ind09" type="S451_SPS_0"/>
      <DO name="Ind10" type="S451_SPS_0"/>
      <DO name="Ind11" type="S451_SPS_0"/>
      <DO name="Ind12" type="S451_SPS_0"/>
      <DO name="Ind13" type="S451_SPS_0"/>
      <DO name="Ind14" type="S451_SPS_0"/>
      <DO name="Ind15" type="S451_SPS_0"/>
      <DO name="Ind16" type="S451_SPS_0"/>
      <DO name="Ind17" type="S451_SPS_0"/>
      <DO name="Ind18" type="S451_SPS_0"/>
      <DO name="Ind19" type="S451_SPS_0"/>
      <DO name="Ind20" type="S451_SPS_0"/>
      <DO name="Ind21" type="S451_SPS_0"/>
      <DO name="Ind22" type="S451_SPS_0"/>
      <DO name="Ind23" type="S451_SPS_0"/>
      <DO name="Ind24" type="S451_SPS_0"/>
      <DO name="Ind25" type="S451_SPS_0"/>
      <DO name="Ind26" type="S451_SPS_0"/>
    </LNodeType>
    <LNodeType id="GGIO_BS12" iedType="S451_SEL_451_6S" lnClass="GGIO">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="Ind01" type="S451_SPS_0"/>
      <DO name="Ind02" type="S451_SPS_0"/>
      <DO name="Ind03" type="S451_SPS_0"/>
      <DO name="Ind04" type="S451_SPS_0"/>
      <DO name="Ind05" type="S451_SPS_0"/>
      <DO name="Ind06" type="S451_SPS_0"/>
      <DO name="Ind07" type="S451_SPS_0"/>
      <DO name="Ind08" type="S451_SPS_0"/>
      <DO name="Ind09" type="S451_SPS_0"/>
      <DO name="Ind10" type="S451_SPS_0"/>
      <DO name="Ind11" type="S451_SPS_0"/>
      <DO name="Ind12" type="S451_SPS_0"/>
    </LNodeType>
    <LNodeType id="GGIO_BS08" iedType="S451_SEL_451_6S" lnClass="GGIO">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="Ind01" type="S451_SPS_0"/>
      <DO name="Ind02" type="S451_SPS_0"/>
      <DO name="Ind03" type="S451_SPS_0"/>
      <DO name="Ind04" type="S451_SPS_0"/>
      <DO name="Ind05" type="S451_SPS_0"/>
      <DO name="Ind06" type="S451_SPS_0"/>
      <DO name="Ind07" type="S451_SPS_0"/>
      <DO name="Ind08" type="S451_SPS_0"/>
    </LNodeType>
    <LNodeType id="GGIO_BS24" iedType="S451_SEL_451_6S" lnClass="GGIO">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="Ind01" type="S451_SPS_0"/>
      <DO name="Ind02" type="S451_SPS_0"/>
      <DO name="Ind03" type="S451_SPS_0"/>
      <DO name="Ind04" type="S451_SPS_0"/>
      <DO name="Ind05" type="S451_SPS_0"/>
      <DO name="Ind06" type="S451_SPS_0"/>
      <DO name="Ind07" type="S451_SPS_0"/>
      <DO name="Ind08" type="S451_SPS_0"/>
      <DO name="Ind09" type="S451_SPS_0"/>
      <DO name="Ind10" type="S451_SPS_0"/>
      <DO name="Ind11" type="S451_SPS_0"/>
      <DO name="Ind12" type="S451_SPS_0"/>
      <DO name="Ind13" type="S451_SPS_0"/>
      <DO name="Ind14" type="S451_SPS_0"/>
      <DO name="Ind15" type="S451_SPS_0"/>
      <DO name="Ind16" type="S451_SPS_0"/>
      <DO name="Ind17" type="S451_SPS_0"/>
      <DO name="Ind18" type="S451_SPS_0"/>
      <DO name="Ind19" type="S451_SPS_0"/>
      <DO name="Ind20" type="S451_SPS_0"/>
      <DO name="Ind21" type="S451_SPS_0"/>
      <DO name="Ind22" type="S451_SPS_0"/>
      <DO name="Ind23" type="S451_SPS_0"/>
      <DO name="Ind24" type="S451_SPS_0"/>
    </LNodeType>
    <LNodeType id="GGIO_BS16" iedType="S451_SEL_451_6S" lnClass="GGIO">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="Ind01" type="S451_SPS_0"/>
      <DO name="Ind02" type="S451_SPS_0"/>
      <DO name="Ind03" type="S451_SPS_0"/>
      <DO name="Ind04" type="S451_SPS_0"/>
      <DO name="Ind05" type="S451_SPS_0"/>
      <DO name="Ind06" type="S451_SPS_0"/>
      <DO name="Ind07" type="S451_SPS_0"/>
      <DO name="Ind08" type="S451_SPS_0"/>
      <DO name="Ind09" type="S451_SPS_0"/>
      <DO name="Ind10" type="S451_SPS_0"/>
      <DO name="Ind11" type="S451_SPS_0"/>
      <DO name="Ind12" type="S451_SPS_0"/>
      <DO name="Ind13" type="S451_SPS_0"/>
      <DO name="Ind14" type="S451_SPS_0"/>
      <DO name="Ind15" type="S451_SPS_0"/>
      <DO name="Ind16" type="S451_SPS_0"/>
    </LNodeType>
    <LNodeType id="GGIO_AS001_064" iedType="S451_SEL_451_6S" lnClass="GGIO">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="AnIn001" type="S451_MV_0"/>
      <DO name="AnIn002" type="S451_MV_0"/>
      <DO name="AnIn003" type="S451_MV_0"/>
      <DO name="AnIn004" type="S451_MV_0"/>
      <DO name="AnIn005" type="S451_MV_0"/>
      <DO name="AnIn006" type="S451_MV_0"/>
      <DO name="AnIn007" type="S451_MV_0"/>
      <DO name="AnIn008" type="S451_MV_0"/>
      <DO name="AnIn009" type="S451_MV_0"/>
      <DO name="AnIn010" type="S451_MV_0"/>
      <DO name="AnIn011" type="S451_MV_0"/>
      <DO name="AnIn012" type="S451_MV_0"/>
      <DO name="AnIn013" type="S451_MV_0"/>
      <DO name="AnIn014" type="S451_MV_0"/>
      <DO name="AnIn015" type="S451_MV_0"/>
      <DO name="AnIn016" type="S451_MV_0"/>
      <DO name="AnIn017" type="S451_MV_0"/>
      <DO name="AnIn018" type="S451_MV_0"/>
      <DO name="AnIn019" type="S451_MV_0"/>
      <DO name="AnIn020" type="S451_MV_0"/>
      <DO name="AnIn021" type="S451_MV_0"/>
      <DO name="AnIn022" type="S451_MV_0"/>
      <DO name="AnIn023" type="S451_MV_0"/>
      <DO name="AnIn024" type="S451_MV_0"/>
      <DO name="AnIn025" type="S451_MV_0"/>
      <DO name="AnIn026" type="S451_MV_0"/>
      <DO name="AnIn027" type="S451_MV_0"/>
      <DO name="AnIn028" type="S451_MV_0"/>
      <DO name="AnIn029" type="S451_MV_0"/>
      <DO name="AnIn030" type="S451_MV_0"/>
      <DO name="AnIn031" type="S451_MV_0"/>
      <DO name="AnIn032" type="S451_MV_0"/>
      <DO name="AnIn033" type="S451_MV_0"/>
      <DO name="AnIn034" type="S451_MV_0"/>
      <DO name="AnIn035" type="S451_MV_0"/>
      <DO name="AnIn036" type="S451_MV_0"/>
      <DO name="AnIn037" type="S451_MV_0"/>
      <DO name="AnIn038" type="S451_MV_0"/>
      <DO name="AnIn039" type="S451_MV_0"/>
      <DO name="AnIn040" type="S451_MV_0"/>
      <DO name="AnIn041" type="S451_MV_0"/>
      <DO name="AnIn042" type="S451_MV_0"/>
      <DO name="AnIn043" type="S451_MV_0"/>
      <DO name="AnIn044" type="S451_MV_0"/>
      <DO name="AnIn045" type="S451_MV_0"/>
      <DO name="AnIn046" type="S451_MV_0"/>
      <DO name="AnIn047" type="S451_MV_0"/>
      <DO name="AnIn048" type="S451_MV_0"/>
      <DO name="AnIn049" type="S451_MV_0"/>
      <DO name="AnIn050" type="S451_MV_0"/>
      <DO name="AnIn051" type="S451_MV_0"/>
      <DO name="AnIn052" type="S451_MV_0"/>
      <DO name="AnIn053" type="S451_MV_0"/>
      <DO name="AnIn054" type="S451_MV_0"/>
      <DO name="AnIn055" type="S451_MV_0"/>
      <DO name="AnIn056" type="S451_MV_0"/>
      <DO name="AnIn057" type="S451_MV_0"/>
      <DO name="AnIn058" type="S451_MV_0"/>
      <DO name="AnIn059" type="S451_MV_0"/>
      <DO name="AnIn060" type="S451_MV_0"/>
      <DO name="AnIn061" type="S451_MV_0"/>
      <DO name="AnIn062" type="S451_MV_0"/>
      <DO name="AnIn063" type="S451_MV_0"/>
      <DO name="AnIn064" type="S451_MV_0"/>
    </LNodeType>
    <LNodeType id="GGIO_AS065_128" iedType="S451_SEL_451_6S" lnClass="GGIO">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="AnIn065" type="S451_MV_0"/>
      <DO name="AnIn066" type="S451_MV_0"/>
      <DO name="AnIn067" type="S451_MV_0"/>
      <DO name="AnIn068" type="S451_MV_0"/>
      <DO name="AnIn069" type="S451_MV_0"/>
      <DO name="AnIn070" type="S451_MV_0"/>
      <DO name="AnIn071" type="S451_MV_0"/>
      <DO name="AnIn072" type="S451_MV_0"/>
      <DO name="AnIn073" type="S451_MV_0"/>
      <DO name="AnIn074" type="S451_MV_0"/>
      <DO name="AnIn075" type="S451_MV_0"/>
      <DO name="AnIn076" type="S451_MV_0"/>
      <DO name="AnIn077" type="S451_MV_0"/>
      <DO name="AnIn078" type="S451_MV_0"/>
      <DO name="AnIn079" type="S451_MV_0"/>
      <DO name="AnIn080" type="S451_MV_0"/>
      <DO name="AnIn081" type="S451_MV_0"/>
      <DO name="AnIn082" type="S451_MV_0"/>
      <DO name="AnIn083" type="S451_MV_0"/>
      <DO name="AnIn084" type="S451_MV_0"/>
      <DO name="AnIn085" type="S451_MV_0"/>
      <DO name="AnIn086" type="S451_MV_0"/>
      <DO name="AnIn087" type="S451_MV_0"/>
      <DO name="AnIn088" type="S451_MV_0"/>
      <DO name="AnIn089" type="S451_MV_0"/>
      <DO name="AnIn090" type="S451_MV_0"/>
      <DO name="AnIn091" type="S451_MV_0"/>
      <DO name="AnIn092" type="S451_MV_0"/>
      <DO name="AnIn093" type="S451_MV_0"/>
      <DO name="AnIn094" type="S451_MV_0"/>
      <DO name="AnIn095" type="S451_MV_0"/>
      <DO name="AnIn096" type="S451_MV_0"/>
      <DO name="AnIn097" type="S451_MV_0"/>
      <DO name="AnIn098" type="S451_MV_0"/>
      <DO name="AnIn099" type="S451_MV_0"/>
      <DO name="AnIn100" type="S451_MV_0"/>
      <DO name="AnIn101" type="S451_MV_0"/>
      <DO name="AnIn102" type="S451_MV_0"/>
      <DO name="AnIn103" type="S451_MV_0"/>
      <DO name="AnIn104" type="S451_MV_0"/>
      <DO name="AnIn105" type="S451_MV_0"/>
      <DO name="AnIn106" type="S451_MV_0"/>
      <DO name="AnIn107" type="S451_MV_0"/>
      <DO name="AnIn108" type="S451_MV_0"/>
      <DO name="AnIn109" type="S451_MV_0"/>
      <DO name="AnIn110" type="S451_MV_0"/>
      <DO name="AnIn111" type="S451_MV_0"/>
      <DO name="AnIn112" type="S451_MV_0"/>
      <DO name="AnIn113" type="S451_MV_0"/>
      <DO name="AnIn114" type="S451_MV_0"/>
      <DO name="AnIn115" type="S451_MV_0"/>
      <DO name="AnIn116" type="S451_MV_0"/>
      <DO name="AnIn117" type="S451_MV_0"/>
      <DO name="AnIn118" type="S451_MV_0"/>
      <DO name="AnIn119" type="S451_MV_0"/>
      <DO name="AnIn120" type="S451_MV_0"/>
      <DO name="AnIn121" type="S451_MV_0"/>
      <DO name="AnIn122" type="S451_MV_0"/>
      <DO name="AnIn123" type="S451_MV_0"/>
      <DO name="AnIn124" type="S451_MV_0"/>
      <DO name="AnIn125" type="S451_MV_0"/>
      <DO name="AnIn126" type="S451_MV_0"/>
      <DO name="AnIn127" type="S451_MV_0"/>
      <DO name="AnIn128" type="S451_MV_0"/>
    </LNodeType>
    <LNodeType id="GGIO_AS016" iedType="S451_SEL_451_6S" lnClass="GGIO">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="AnIn001" type="S451_MV_0"/>
      <DO name="AnIn002" type="S451_MV_0"/>
      <DO name="AnIn003" type="S451_MV_0"/>
      <DO name="AnIn004" type="S451_MV_0"/>
      <DO name="AnIn005" type="S451_MV_0"/>
      <DO name="AnIn006" type="S451_MV_0"/>
      <DO name="AnIn007" type="S451_MV_0"/>
      <DO name="AnIn008" type="S451_MV_0"/>
      <DO name="AnIn009" type="S451_MV_0"/>
      <DO name="AnIn010" type="S451_MV_0"/>
      <DO name="AnIn011" type="S451_MV_0"/>
      <DO name="AnIn012" type="S451_MV_0"/>
      <DO name="AnIn013" type="S451_MV_0"/>
      <DO name="AnIn014" type="S451_MV_0"/>
      <DO name="AnIn015" type="S451_MV_0"/>
      <DO name="AnIn016" type="S451_MV_0"/>
    </LNodeType>
    <LNodeType id="GGIO_BS129_BS256" iedType="S451_SEL_451_6S" lnClass="GGIO">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="Ind129" type="S451_SPS_0"/>
      <DO name="Ind130" type="S451_SPS_0"/>
      <DO name="Ind131" type="S451_SPS_0"/>
      <DO name="Ind132" type="S451_SPS_0"/>
      <DO name="Ind133" type="S451_SPS_0"/>
      <DO name="Ind134" type="S451_SPS_0"/>
      <DO name="Ind135" type="S451_SPS_0"/>
      <DO name="Ind136" type="S451_SPS_0"/>
      <DO name="Ind137" type="S451_SPS_0"/>
      <DO name="Ind138" type="S451_SPS_0"/>
      <DO name="Ind139" type="S451_SPS_0"/>
      <DO name="Ind140" type="S451_SPS_0"/>
      <DO name="Ind141" type="S451_SPS_0"/>
      <DO name="Ind142" type="S451_SPS_0"/>
      <DO name="Ind143" type="S451_SPS_0"/>
      <DO name="Ind144" type="S451_SPS_0"/>
      <DO name="Ind145" type="S451_SPS_0"/>
      <DO name="Ind146" type="S451_SPS_0"/>
      <DO name="Ind147" type="S451_SPS_0"/>
      <DO name="Ind148" type="S451_SPS_0"/>
      <DO name="Ind149" type="S451_SPS_0"/>
      <DO name="Ind150" type="S451_SPS_0"/>
      <DO name="Ind151" type="S451_SPS_0"/>
      <DO name="Ind152" type="S451_SPS_0"/>
      <DO name="Ind153" type="S451_SPS_0"/>
      <DO name="Ind154" type="S451_SPS_0"/>
      <DO name="Ind155" type="S451_SPS_0"/>
      <DO name="Ind156" type="S451_SPS_0"/>
      <DO name="Ind157" type="S451_SPS_0"/>
      <DO name="Ind158" type="S451_SPS_0"/>
      <DO name="Ind159" type="S451_SPS_0"/>
      <DO name="Ind160" type="S451_SPS_0"/>
      <DO name="Ind161" type="S451_SPS_0"/>
      <DO name="Ind162" type="S451_SPS_0"/>
      <DO name="Ind163" type="S451_SPS_0"/>
      <DO name="Ind164" type="S451_SPS_0"/>
      <DO name="Ind165" type="S451_SPS_0"/>
      <DO name="Ind166" type="S451_SPS_0"/>
      <DO name="Ind167" type="S451_SPS_0"/>
      <DO name="Ind168" type="S451_SPS_0"/>
      <DO name="Ind169" type="S451_SPS_0"/>
      <DO name="Ind170" type="S451_SPS_0"/>
      <DO name="Ind171" type="S451_SPS_0"/>
      <DO name="Ind172" type="S451_SPS_0"/>
      <DO name="Ind173" type="S451_SPS_0"/>
      <DO name="Ind174" type="S451_SPS_0"/>
      <DO name="Ind175" type="S451_SPS_0"/>
      <DO name="Ind176" type="S451_SPS_0"/>
      <DO name="Ind177" type="S451_SPS_0"/>
      <DO name="Ind178" type="S451_SPS_0"/>
      <DO name="Ind179" type="S451_SPS_0"/>
      <DO name="Ind180" type="S451_SPS_0"/>
      <DO name="Ind181" type="S451_SPS_0"/>
      <DO name="Ind182" type="S451_SPS_0"/>
      <DO name="Ind183" type="S451_SPS_0"/>
      <DO name="Ind184" type="S451_SPS_0"/>
      <DO name="Ind185" type="S451_SPS_0"/>
      <DO name="Ind186" type="S451_SPS_0"/>
      <DO name="Ind187" type="S451_SPS_0"/>
      <DO name="Ind188" type="S451_SPS_0"/>
      <DO name="Ind189" type="S451_SPS_0"/>
      <DO name="Ind190" type="S451_SPS_0"/>
      <DO name="Ind191" type="S451_SPS_0"/>
      <DO name="Ind192" type="S451_SPS_0"/>
      <DO name="Ind193" type="S451_SPS_0"/>
      <DO name="Ind194" type="S451_SPS_0"/>
      <DO name="Ind195" type="S451_SPS_0"/>
      <DO name="Ind196" type="S451_SPS_0"/>
      <DO name="Ind197" type="S451_SPS_0"/>
      <DO name="Ind198" type="S451_SPS_0"/>
      <DO name="Ind199" type="S451_SPS_0"/>
      <DO name="Ind200" type="S451_SPS_0"/>
      <DO name="Ind201" type="S451_SPS_0"/>
      <DO name="Ind202" type="S451_SPS_0"/>
      <DO name="Ind203" type="S451_SPS_0"/>
      <DO name="Ind204" type="S451_SPS_0"/>
      <DO name="Ind205" type="S451_SPS_0"/>
      <DO name="Ind206" type="S451_SPS_0"/>
      <DO name="Ind207" type="S451_SPS_0"/>
      <DO name="Ind208" type="S451_SPS_0"/>
      <DO name="Ind209" type="S451_SPS_0"/>
      <DO name="Ind210" type="S451_SPS_0"/>
      <DO name="Ind211" type="S451_SPS_0"/>
      <DO name="Ind212" type="S451_SPS_0"/>
      <DO name="Ind213" type="S451_SPS_0"/>
      <DO name="Ind214" type="S451_SPS_0"/>
      <DO name="Ind215" type="S451_SPS_0"/>
      <DO name="Ind216" type="S451_SPS_0"/>
      <DO name="Ind217" type="S451_SPS_0"/>
      <DO name="Ind218" type="S451_SPS_0"/>
      <DO name="Ind219" type="S451_SPS_0"/>
      <DO name="Ind220" type="S451_SPS_0"/>
      <DO name="Ind221" type="S451_SPS_0"/>
      <DO name="Ind222" type="S451_SPS_0"/>
      <DO name="Ind223" type="S451_SPS_0"/>
      <DO name="Ind224" type="S451_SPS_0"/>
      <DO name="Ind225" type="S451_SPS_0"/>
      <DO name="Ind226" type="S451_SPS_0"/>
      <DO name="Ind227" type="S451_SPS_0"/>
      <DO name="Ind228" type="S451_SPS_0"/>
      <DO name="Ind229" type="S451_SPS_0"/>
      <DO name="Ind230" type="S451_SPS_0"/>
      <DO name="Ind231" type="S451_SPS_0"/>
      <DO name="Ind232" type="S451_SPS_0"/>
      <DO name="Ind233" type="S451_SPS_0"/>
      <DO name="Ind234" type="S451_SPS_0"/>
      <DO name="Ind235" type="S451_SPS_0"/>
      <DO name="Ind236" type="S451_SPS_0"/>
      <DO name="Ind237" type="S451_SPS_0"/>
      <DO name="Ind238" type="S451_SPS_0"/>
      <DO name="Ind239" type="S451_SPS_0"/>
      <DO name="Ind240" type="S451_SPS_0"/>
      <DO name="Ind241" type="S451_SPS_0"/>
      <DO name="Ind242" type="S451_SPS_0"/>
      <DO name="Ind243" type="S451_SPS_0"/>
      <DO name="Ind244" type="S451_SPS_0"/>
      <DO name="Ind245" type="S451_SPS_0"/>
      <DO name="Ind246" type="S451_SPS_0"/>
      <DO name="Ind247" type="S451_SPS_0"/>
      <DO name="Ind248" type="S451_SPS_0"/>
      <DO name="Ind249" type="S451_SPS_0"/>
      <DO name="Ind250" type="S451_SPS_0"/>
      <DO name="Ind251" type="S451_SPS_0"/>
      <DO name="Ind252" type="S451_SPS_0"/>
      <DO name="Ind253" type="S451_SPS_0"/>
      <DO name="Ind254" type="S451_SPS_0"/>
      <DO name="Ind255" type="S451_SPS_0"/>
      <DO name="Ind256" type="S451_SPS_0"/>
    </LNodeType>
    <LNodeType id="GGIO_AR001_032" iedType="S451_SEL_451_6S" lnClass="GGIO">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="Ra001" type="S451_MV_1"/>
      <DO name="Ra002" type="S451_MV_1"/>
      <DO name="Ra003" type="S451_MV_1"/>
      <DO name="Ra004" type="S451_MV_1"/>
      <DO name="Ra005" type="S451_MV_1"/>
      <DO name="Ra006" type="S451_MV_1"/>
      <DO name="Ra007" type="S451_MV_1"/>
      <DO name="Ra008" type="S451_MV_1"/>
      <DO name="Ra009" type="S451_MV_1"/>
      <DO name="Ra010" type="S451_MV_1"/>
      <DO name="Ra011" type="S451_MV_1"/>
      <DO name="Ra012" type="S451_MV_1"/>
      <DO name="Ra013" type="S451_MV_1"/>
      <DO name="Ra014" type="S451_MV_1"/>
      <DO name="Ra015" type="S451_MV_1"/>
      <DO name="Ra016" type="S451_MV_1"/>
      <DO name="Ra017" type="S451_MV_1"/>
      <DO name="Ra018" type="S451_MV_1"/>
      <DO name="Ra019" type="S451_MV_1"/>
      <DO name="Ra020" type="S451_MV_1"/>
      <DO name="Ra021" type="S451_MV_1"/>
      <DO name="Ra022" type="S451_MV_1"/>
      <DO name="Ra023" type="S451_MV_1"/>
      <DO name="Ra024" type="S451_MV_1"/>
      <DO name="Ra025" type="S451_MV_1"/>
      <DO name="Ra026" type="S451_MV_1"/>
      <DO name="Ra027" type="S451_MV_1"/>
      <DO name="Ra028" type="S451_MV_1"/>
      <DO name="Ra029" type="S451_MV_1"/>
      <DO name="Ra030" type="S451_MV_1"/>
      <DO name="Ra031" type="S451_MV_1"/>
      <DO name="Ra032" type="S451_MV_1"/>
    </LNodeType>
    <LNodeType id="GGIO_AR033_064" iedType="S451_SEL_451_6S" lnClass="GGIO">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="Ra033" type="S451_MV_1"/>
      <DO name="Ra034" type="S451_MV_1"/>
      <DO name="Ra035" type="S451_MV_1"/>
      <DO name="Ra036" type="S451_MV_1"/>
      <DO name="Ra037" type="S451_MV_1"/>
      <DO name="Ra038" type="S451_MV_1"/>
      <DO name="Ra039" type="S451_MV_1"/>
      <DO name="Ra040" type="S451_MV_1"/>
      <DO name="Ra041" type="S451_MV_1"/>
      <DO name="Ra042" type="S451_MV_1"/>
      <DO name="Ra043" type="S451_MV_1"/>
      <DO name="Ra044" type="S451_MV_1"/>
      <DO name="Ra045" type="S451_MV_1"/>
      <DO name="Ra046" type="S451_MV_1"/>
      <DO name="Ra047" type="S451_MV_1"/>
      <DO name="Ra048" type="S451_MV_1"/>
      <DO name="Ra049" type="S451_MV_1"/>
      <DO name="Ra050" type="S451_MV_1"/>
      <DO name="Ra051" type="S451_MV_1"/>
      <DO name="Ra052" type="S451_MV_1"/>
      <DO name="Ra053" type="S451_MV_1"/>
      <DO name="Ra054" type="S451_MV_1"/>
      <DO name="Ra055" type="S451_MV_1"/>
      <DO name="Ra056" type="S451_MV_1"/>
      <DO name="Ra057" type="S451_MV_1"/>
      <DO name="Ra058" type="S451_MV_1"/>
      <DO name="Ra059" type="S451_MV_1"/>
      <DO name="Ra060" type="S451_MV_1"/>
      <DO name="Ra061" type="S451_MV_1"/>
      <DO name="Ra062" type="S451_MV_1"/>
      <DO name="Ra063" type="S451_MV_1"/>
      <DO name="Ra064" type="S451_MV_1"/>
    </LNodeType>
    <LNodeType id="GGIO_AR065_096" iedType="S451_SEL_451_6S" lnClass="GGIO">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="Ra065" type="S451_MV_1"/>
      <DO name="Ra066" type="S451_MV_1"/>
      <DO name="Ra067" type="S451_MV_1"/>
      <DO name="Ra068" type="S451_MV_1"/>
      <DO name="Ra069" type="S451_MV_1"/>
      <DO name="Ra070" type="S451_MV_1"/>
      <DO name="Ra071" type="S451_MV_1"/>
      <DO name="Ra072" type="S451_MV_1"/>
      <DO name="Ra073" type="S451_MV_1"/>
      <DO name="Ra074" type="S451_MV_1"/>
      <DO name="Ra075" type="S451_MV_1"/>
      <DO name="Ra076" type="S451_MV_1"/>
      <DO name="Ra077" type="S451_MV_1"/>
      <DO name="Ra078" type="S451_MV_1"/>
      <DO name="Ra079" type="S451_MV_1"/>
      <DO name="Ra080" type="S451_MV_1"/>
      <DO name="Ra081" type="S451_MV_1"/>
      <DO name="Ra082" type="S451_MV_1"/>
      <DO name="Ra083" type="S451_MV_1"/>
      <DO name="Ra084" type="S451_MV_1"/>
      <DO name="Ra085" type="S451_MV_1"/>
      <DO name="Ra086" type="S451_MV_1"/>
      <DO name="Ra087" type="S451_MV_1"/>
      <DO name="Ra088" type="S451_MV_1"/>
      <DO name="Ra089" type="S451_MV_1"/>
      <DO name="Ra090" type="S451_MV_1"/>
      <DO name="Ra091" type="S451_MV_1"/>
      <DO name="Ra092" type="S451_MV_1"/>
      <DO name="Ra093" type="S451_MV_1"/>
      <DO name="Ra094" type="S451_MV_1"/>
      <DO name="Ra095" type="S451_MV_1"/>
      <DO name="Ra096" type="S451_MV_1"/>
    </LNodeType>
    <LNodeType id="GGIO_AR097_128" iedType="S451_SEL_451_6S" lnClass="GGIO">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="Ra097" type="S451_MV_1"/>
      <DO name="Ra098" type="S451_MV_1"/>
      <DO name="Ra099" type="S451_MV_1"/>
      <DO name="Ra100" type="S451_MV_1"/>
      <DO name="Ra101" type="S451_MV_1"/>
      <DO name="Ra102" type="S451_MV_1"/>
      <DO name="Ra103" type="S451_MV_1"/>
      <DO name="Ra104" type="S451_MV_1"/>
      <DO name="Ra105" type="S451_MV_1"/>
      <DO name="Ra106" type="S451_MV_1"/>
      <DO name="Ra107" type="S451_MV_1"/>
      <DO name="Ra108" type="S451_MV_1"/>
      <DO name="Ra109" type="S451_MV_1"/>
      <DO name="Ra110" type="S451_MV_1"/>
      <DO name="Ra111" type="S451_MV_1"/>
      <DO name="Ra112" type="S451_MV_1"/>
      <DO name="Ra113" type="S451_MV_1"/>
      <DO name="Ra114" type="S451_MV_1"/>
      <DO name="Ra115" type="S451_MV_1"/>
      <DO name="Ra116" type="S451_MV_1"/>
      <DO name="Ra117" type="S451_MV_1"/>
      <DO name="Ra118" type="S451_MV_1"/>
      <DO name="Ra119" type="S451_MV_1"/>
      <DO name="Ra120" type="S451_MV_1"/>
      <DO name="Ra121" type="S451_MV_1"/>
      <DO name="Ra122" type="S451_MV_1"/>
      <DO name="Ra123" type="S451_MV_1"/>
      <DO name="Ra124" type="S451_MV_1"/>
      <DO name="Ra125" type="S451_MV_1"/>
      <DO name="Ra126" type="S451_MV_1"/>
      <DO name="Ra127" type="S451_MV_1"/>
      <DO name="Ra128" type="S451_MV_1"/>
    </LNodeType>
    <LNodeType id="GGIO_AR129_160" iedType="S451_SEL_451_6S" lnClass="GGIO">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="Ra129" type="S451_MV_1"/>
      <DO name="Ra130" type="S451_MV_1"/>
      <DO name="Ra131" type="S451_MV_1"/>
      <DO name="Ra132" type="S451_MV_1"/>
      <DO name="Ra133" type="S451_MV_1"/>
      <DO name="Ra134" type="S451_MV_1"/>
      <DO name="Ra135" type="S451_MV_1"/>
      <DO name="Ra136" type="S451_MV_1"/>
      <DO name="Ra137" type="S451_MV_1"/>
      <DO name="Ra138" type="S451_MV_1"/>
      <DO name="Ra139" type="S451_MV_1"/>
      <DO name="Ra140" type="S451_MV_1"/>
      <DO name="Ra141" type="S451_MV_1"/>
      <DO name="Ra142" type="S451_MV_1"/>
      <DO name="Ra143" type="S451_MV_1"/>
      <DO name="Ra144" type="S451_MV_1"/>
      <DO name="Ra145" type="S451_MV_1"/>
      <DO name="Ra146" type="S451_MV_1"/>
      <DO name="Ra147" type="S451_MV_1"/>
      <DO name="Ra148" type="S451_MV_1"/>
      <DO name="Ra149" type="S451_MV_1"/>
      <DO name="Ra150" type="S451_MV_1"/>
      <DO name="Ra151" type="S451_MV_1"/>
      <DO name="Ra152" type="S451_MV_1"/>
      <DO name="Ra153" type="S451_MV_1"/>
      <DO name="Ra154" type="S451_MV_1"/>
      <DO name="Ra155" type="S451_MV_1"/>
      <DO name="Ra156" type="S451_MV_1"/>
      <DO name="Ra157" type="S451_MV_1"/>
      <DO name="Ra158" type="S451_MV_1"/>
      <DO name="Ra159" type="S451_MV_1"/>
      <DO name="Ra160" type="S451_MV_1"/>
    </LNodeType>
    <LNodeType id="GGIO_AR161_192" iedType="S451_SEL_451_6S" lnClass="GGIO">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="Ra161" type="S451_MV_1"/>
      <DO name="Ra162" type="S451_MV_1"/>
      <DO name="Ra163" type="S451_MV_1"/>
      <DO name="Ra164" type="S451_MV_1"/>
      <DO name="Ra165" type="S451_MV_1"/>
      <DO name="Ra166" type="S451_MV_1"/>
      <DO name="Ra167" type="S451_MV_1"/>
      <DO name="Ra168" type="S451_MV_1"/>
      <DO name="Ra169" type="S451_MV_1"/>
      <DO name="Ra170" type="S451_MV_1"/>
      <DO name="Ra171" type="S451_MV_1"/>
      <DO name="Ra172" type="S451_MV_1"/>
      <DO name="Ra173" type="S451_MV_1"/>
      <DO name="Ra174" type="S451_MV_1"/>
      <DO name="Ra175" type="S451_MV_1"/>
      <DO name="Ra176" type="S451_MV_1"/>
      <DO name="Ra177" type="S451_MV_1"/>
      <DO name="Ra178" type="S451_MV_1"/>
      <DO name="Ra179" type="S451_MV_1"/>
      <DO name="Ra180" type="S451_MV_1"/>
      <DO name="Ra181" type="S451_MV_1"/>
      <DO name="Ra182" type="S451_MV_1"/>
      <DO name="Ra183" type="S451_MV_1"/>
      <DO name="Ra184" type="S451_MV_1"/>
      <DO name="Ra185" type="S451_MV_1"/>
      <DO name="Ra186" type="S451_MV_1"/>
      <DO name="Ra187" type="S451_MV_1"/>
      <DO name="Ra188" type="S451_MV_1"/>
      <DO name="Ra189" type="S451_MV_1"/>
      <DO name="Ra190" type="S451_MV_1"/>
      <DO name="Ra191" type="S451_MV_1"/>
      <DO name="Ra192" type="S451_MV_1"/>
    </LNodeType>
    <LNodeType id="GGIO_AR193_224" iedType="S451_SEL_451_6S" lnClass="GGIO">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="Ra193" type="S451_MV_1"/>
      <DO name="Ra194" type="S451_MV_1"/>
      <DO name="Ra195" type="S451_MV_1"/>
      <DO name="Ra196" type="S451_MV_1"/>
      <DO name="Ra197" type="S451_MV_1"/>
      <DO name="Ra198" type="S451_MV_1"/>
      <DO name="Ra199" type="S451_MV_1"/>
      <DO name="Ra200" type="S451_MV_1"/>
      <DO name="Ra201" type="S451_MV_1"/>
      <DO name="Ra202" type="S451_MV_1"/>
      <DO name="Ra203" type="S451_MV_1"/>
      <DO name="Ra204" type="S451_MV_1"/>
      <DO name="Ra205" type="S451_MV_1"/>
      <DO name="Ra206" type="S451_MV_1"/>
      <DO name="Ra207" type="S451_MV_1"/>
      <DO name="Ra208" type="S451_MV_1"/>
      <DO name="Ra209" type="S451_MV_1"/>
      <DO name="Ra210" type="S451_MV_1"/>
      <DO name="Ra211" type="S451_MV_1"/>
      <DO name="Ra212" type="S451_MV_1"/>
      <DO name="Ra213" type="S451_MV_1"/>
      <DO name="Ra214" type="S451_MV_1"/>
      <DO name="Ra215" type="S451_MV_1"/>
      <DO name="Ra216" type="S451_MV_1"/>
      <DO name="Ra217" type="S451_MV_1"/>
      <DO name="Ra218" type="S451_MV_1"/>
      <DO name="Ra219" type="S451_MV_1"/>
      <DO name="Ra220" type="S451_MV_1"/>
      <DO name="Ra221" type="S451_MV_1"/>
      <DO name="Ra222" type="S451_MV_1"/>
      <DO name="Ra223" type="S451_MV_1"/>
      <DO name="Ra224" type="S451_MV_1"/>
    </LNodeType>
    <LNodeType id="GGIO_AR225_256" iedType="S451_SEL_451_6S" lnClass="GGIO">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="Ra225" type="S451_MV_1"/>
      <DO name="Ra226" type="S451_MV_1"/>
      <DO name="Ra227" type="S451_MV_1"/>
      <DO name="Ra228" type="S451_MV_1"/>
      <DO name="Ra229" type="S451_MV_1"/>
      <DO name="Ra230" type="S451_MV_1"/>
      <DO name="Ra231" type="S451_MV_1"/>
      <DO name="Ra232" type="S451_MV_1"/>
      <DO name="Ra233" type="S451_MV_1"/>
      <DO name="Ra234" type="S451_MV_1"/>
      <DO name="Ra235" type="S451_MV_1"/>
      <DO name="Ra236" type="S451_MV_1"/>
      <DO name="Ra237" type="S451_MV_1"/>
      <DO name="Ra238" type="S451_MV_1"/>
      <DO name="Ra239" type="S451_MV_1"/>
      <DO name="Ra240" type="S451_MV_1"/>
      <DO name="Ra241" type="S451_MV_1"/>
      <DO name="Ra242" type="S451_MV_1"/>
      <DO name="Ra243" type="S451_MV_1"/>
      <DO name="Ra244" type="S451_MV_1"/>
      <DO name="Ra245" type="S451_MV_1"/>
      <DO name="Ra246" type="S451_MV_1"/>
      <DO name="Ra247" type="S451_MV_1"/>
      <DO name="Ra248" type="S451_MV_1"/>
      <DO name="Ra249" type="S451_MV_1"/>
      <DO name="Ra250" type="S451_MV_1"/>
      <DO name="Ra251" type="S451_MV_1"/>
      <DO name="Ra252" type="S451_MV_1"/>
      <DO name="Ra253" type="S451_MV_1"/>
      <DO name="Ra254" type="S451_MV_1"/>
      <DO name="Ra255" type="S451_MV_1"/>
      <DO name="Ra256" type="S451_MV_1"/>
    </LNodeType>
    <LNodeType id="GGIO_ARO01_32" iedType="S451_SEL_451_6S" lnClass="GGIO">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="Rao01" type="S451_MV_1"/>
      <DO name="Rao02" type="S451_MV_1"/>
      <DO name="Rao03" type="S451_MV_1"/>
      <DO name="Rao04" type="S451_MV_1"/>
      <DO name="Rao05" type="S451_MV_1"/>
      <DO name="Rao06" type="S451_MV_1"/>
      <DO name="Rao07" type="S451_MV_1"/>
      <DO name="Rao08" type="S451_MV_1"/>
      <DO name="Rao09" type="S451_MV_1"/>
      <DO name="Rao10" type="S451_MV_1"/>
      <DO name="Rao11" type="S451_MV_1"/>
      <DO name="Rao12" type="S451_MV_1"/>
      <DO name="Rao13" type="S451_MV_1"/>
      <DO name="Rao14" type="S451_MV_1"/>
      <DO name="Rao15" type="S451_MV_1"/>
      <DO name="Rao16" type="S451_MV_1"/>
      <DO name="Rao17" type="S451_MV_1"/>
      <DO name="Rao18" type="S451_MV_1"/>
      <DO name="Rao19" type="S451_MV_1"/>
      <DO name="Rao20" type="S451_MV_1"/>
      <DO name="Rao21" type="S451_MV_1"/>
      <DO name="Rao22" type="S451_MV_1"/>
      <DO name="Rao23" type="S451_MV_1"/>
      <DO name="Rao24" type="S451_MV_1"/>
      <DO name="Rao25" type="S451_MV_1"/>
      <DO name="Rao26" type="S451_MV_1"/>
      <DO name="Rao27" type="S451_MV_1"/>
      <DO name="Rao28" type="S451_MV_1"/>
      <DO name="Rao29" type="S451_MV_1"/>
      <DO name="Rao30" type="S451_MV_1"/>
      <DO name="Rao31" type="S451_MV_1"/>
      <DO name="Rao32" type="S451_MV_1"/>
    </LNodeType>
    <LNodeType id="GGIO_ARO33_64" iedType="S451_SEL_451_6S" lnClass="GGIO">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="Rao33" type="S451_MV_1"/>
      <DO name="Rao34" type="S451_MV_1"/>
      <DO name="Rao35" type="S451_MV_1"/>
      <DO name="Rao36" type="S451_MV_1"/>
      <DO name="Rao37" type="S451_MV_1"/>
      <DO name="Rao38" type="S451_MV_1"/>
      <DO name="Rao39" type="S451_MV_1"/>
      <DO name="Rao40" type="S451_MV_1"/>
      <DO name="Rao41" type="S451_MV_1"/>
      <DO name="Rao42" type="S451_MV_1"/>
      <DO name="Rao43" type="S451_MV_1"/>
      <DO name="Rao44" type="S451_MV_1"/>
      <DO name="Rao45" type="S451_MV_1"/>
      <DO name="Rao46" type="S451_MV_1"/>
      <DO name="Rao47" type="S451_MV_1"/>
      <DO name="Rao48" type="S451_MV_1"/>
      <DO name="Rao49" type="S451_MV_1"/>
      <DO name="Rao50" type="S451_MV_1"/>
      <DO name="Rao51" type="S451_MV_1"/>
      <DO name="Rao52" type="S451_MV_1"/>
      <DO name="Rao53" type="S451_MV_1"/>
      <DO name="Rao54" type="S451_MV_1"/>
      <DO name="Rao55" type="S451_MV_1"/>
      <DO name="Rao56" type="S451_MV_1"/>
      <DO name="Rao57" type="S451_MV_1"/>
      <DO name="Rao58" type="S451_MV_1"/>
      <DO name="Rao59" type="S451_MV_1"/>
      <DO name="Rao60" type="S451_MV_1"/>
      <DO name="Rao61" type="S451_MV_1"/>
      <DO name="Rao62" type="S451_MV_1"/>
      <DO name="Rao63" type="S451_MV_1"/>
      <DO name="Rao64" type="S451_MV_1"/>
    </LNodeType>
    <LNodeType id="GGIO_BS10" iedType="S451_SEL_451_6S" lnClass="GGIO">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="Ind01" type="S451_SPS_0"/>
      <DO name="Ind02" type="S451_SPS_0"/>
      <DO name="Ind03" type="S451_SPS_0"/>
      <DO name="Ind04" type="S451_SPS_0"/>
      <DO name="Ind05" type="S451_SPS_0"/>
      <DO name="Ind06" type="S451_SPS_0"/>
      <DO name="Ind07" type="S451_SPS_0"/>
      <DO name="Ind08" type="S451_SPS_0"/>
      <DO name="Ind09" type="S451_SPS_0"/>
      <DO name="Ind10" type="S451_SPS_0"/>
    </LNodeType>
    <LNodeType id="GGIO_SVS" iedType="S451_SEL_451_6S" lnClass="GGIO">
      <DO name="Beh" type="S451_behENS"/>
      <DO name="Ind01" type="S451_SPS_0"/>
      <DO name="Ind02" type="S451_SPS_0"/>
      <DO name="Ind03" type="S451_SPS_0"/>
      <DO name="Ind04" type="S451_SPS_0"/>
      <DO name="Ind05" type="S451_SPS_0"/>
      <DO name="Ind06" type="S451_SPS_0"/>
      <DO name="Ind07" type="S451_SPS_0"/>
      <DO name="Ind08" type="S451_SPS_0"/>
      <DO name="Ind09" type="S451_SPS_0"/>
      <DO name="Ind10" type="S451_SPS_0"/>
      <DO name="Ind11" type="S451_SPS_0"/>
      <DO name="Ind12" type="S451_SPS_0"/>
      <DO name="IntIn01" type="S451_INS_0"/>
    </LNodeType>
    <LNodeType id="LN0_Root$_a7d56aaf-9bc3-402f-a77f-cef8beb58a55" iedType="S451_SEL_451_6S" lnClass="LLN0">
      <DO name="Mod" type="S451_modENC"/>
      <DO name="Beh" type="S451_behENS"/>
      <DO name="NamPlt" type="S451_LPL_LN0"/>
      <DO name="Health" type="S451_healthENS"/>
    </LNodeType>
    <LNodeType id="LN0$_0747fb50-c26d-4fdb-9a67-b50d39640275" iedType="S451_SEL_451_6S" lnClass="LLN0">
      <DO name="Mod" type="S451_modENC$_974d6f8a-fc05-455f-b705-6ec11500070d"/>
      <DO name="Beh" type="S451_behENS$_43599cc2-ed23-4375-bd2f-c9d79673c5bd"/>
      <DO name="NamPlt" type="S451_LPL_LN0$_788cfdb8-c0fe-4bb7-9b2f-447eab1ad47c"/>
      <DO name="GrRef" type="S451_ORG_0"/>
    </LNodeType>
    <DOType id="PhyNam_0" cdc="DPL" iedType="">
      <DA bType="VisString255" name="vendor" fc="DC"/>
    </DOType>
    <DOType id="Proxy_0$_47e41c1a-248b-402e-854c-0dab8d47843d" cdc="SPS" iedType="">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="Sim_0" cdc="SPC" iedType="">
      <DA bType="Struct" name="origin" type="origin_0" fc="ST"/>
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
      <DA bType="Enum" name="ctlModel" type="CtlModelKind" dchg="true" fc="CF"/>
      <DA bType="Struct" name="Oper" type="Oper_1$_ca1bc142-d800-42bc-a6a9-4b30f72425ab" fc="CO"/>
      <DA bType="Struct" name="Cancel" type="Cancel_1$_b843b06f-67cd-4d0f-a3ed-21b1ebd97c86" fc="CO"/>
    </DOType>
    <DOType id="PhyHealth_0" cdc="ENS" iedType="">
      <DA bType="Enum" name="stVal" type="HealthEnum" dchg="true" dupd="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="Beh_0" cdc="ENS" iedType="">
      <DA bType="Enum" name="stVal" type="BehEnum" dchg="true" dupd="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="Ind1_0$_b4468281-d057-4286-a437-38733838f2d7" cdc="SPS" iedType="">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="Ind10_0$_af163584-7f99-407b-b9d5-68c565fd3f2a" cdc="SPS" iedType="">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="Ind11_0$_186bb4ad-823f-4a97-907e-eb1bf3036c6e" cdc="SPS" iedType="">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="Ind12_0$_f2c6d153-1a7e-493a-a561-29f78e040b65" cdc="SPS" iedType="">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="Ind13_0$_c7d13d3f-a616-4353-aa67-f37dce3dbb0a" cdc="SPS" iedType="">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="Ind14_0$_ca1aff8e-f576-4d7a-a48d-ba2547550589" cdc="SPS" iedType="">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="Ind15_0$_27d486b6-532a-4248-9ea2-128b74434d0c" cdc="SPS" iedType="">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="Ind16_0$_6679b2dd-ea06-479a-9de1-9c82453351fc" cdc="SPS" iedType="">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="Ind2_0$_374e43de-3f5a-4b22-b2b0-cf6e3089ab66" cdc="SPS" iedType="">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="Ind3_0$_c487ffc3-0489-417d-b8ad-b3f5b112ccb4" cdc="SPS" iedType="">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="Ind4_0$_36913d2c-3fbd-419d-8ab8-a259312e499d" cdc="SPS" iedType="">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="Ind5_0$_a693cd9d-bc3f-4a01-b78d-78e2babba5eb" cdc="SPS" iedType="">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="Ind6_0$_0d5653aa-f8b7-4201-8163-a3eb277e5e36" cdc="SPS" iedType="">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="Ind7_0$_0d95da50-d727-4418-bd66-f03e2a747c86" cdc="SPS" iedType="">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="Ind8_0$_601235d5-fc8b-46d8-84a5-29f3de771e9a" cdc="SPS" iedType="">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="Ind9_0$_9adcdbc6-9080-43aa-9a7a-27b64cb4867d" cdc="SPS" iedType="">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="Hz_0" cdc="MV" iedType="">
      <DA bType="Struct" name="mag" type="mag_0" dchg="true" dupd="true" fc="MX"/>
      <DA bType="Quality" name="q" fc="MX" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="MX"/>
      <DA bType="Struct" name="units" type="units_0" dchg="true" fc="CF"/>
    </DOType>
    <DOType id="phsA_0" cdc="CMV" iedType="">
      <DA bType="Struct" name="cVal" type="cVal_0" dchg="true" dupd="true" fc="MX"/>
      <DA bType="Quality" name="q" fc="MX" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="MX"/>
      <DA bType="Struct" name="units" type="units_1" fc="CF"/>
    </DOType>
    <DOType id="phsB_0" cdc="CMV" iedType="">
      <DA bType="Struct" name="cVal" type="cVal_0" dchg="true" dupd="true" fc="MX"/>
      <DA bType="Quality" name="q" fc="MX" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="MX"/>
      <DA bType="Struct" name="units" type="units_1" fc="CF"/>
    </DOType>
    <DOType id="phsC_0" cdc="CMV" iedType="">
      <DA bType="Struct" name="cVal" type="cVal_0" dchg="true" dupd="true" fc="MX"/>
      <DA bType="Quality" name="q" fc="MX" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="MX"/>
      <DA bType="Struct" name="units" type="units_1" fc="CF"/>
    </DOType>
    <DOType id="neut_0" cdc="CMV" iedType="">
      <DA bType="Struct" name="cVal" type="cVal_1" dchg="true" dupd="true" fc="MX"/>
      <DA bType="Quality" name="q" fc="MX" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="MX"/>
    </DOType>
    <DOType id="net_0" cdc="CMV" iedType="">
      <DA bType="Struct" name="cVal" type="cVal_1" dchg="true" dupd="true" fc="MX"/>
      <DA bType="Quality" name="q" fc="MX" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="MX"/>
    </DOType>
    <DOType id="res_0" cdc="CMV" iedType="">
      <DA bType="Struct" name="cVal" type="cVal_1" dchg="true" dupd="true" fc="MX"/>
      <DA bType="Quality" name="q" fc="MX" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="MX"/>
    </DOType>
    <DOType id="PhV_0" cdc="WYE" iedType="">
      <SDO type="phsA_0" name="phsA"/>
      <SDO type="phsB_0" name="phsB"/>
      <SDO type="phsC_0" name="phsC"/>
      <SDO type="neut_0" name="neut"/>
      <SDO type="net_0" name="net"/>
      <SDO type="res_0" name="res"/>
    </DOType>
    <DOType id="A_0" cdc="WYE" iedType="">
      <SDO type="phsA_0" name="phsA"/>
      <SDO type="phsB_0" name="phsB"/>
      <SDO type="phsC_0" name="phsC"/>
      <SDO type="neut_0" name="neut"/>
      <SDO type="net_0" name="net"/>
      <SDO type="res_0" name="res"/>
    </DOType>
    <DOType id="Mod_1" cdc="ENC" iedType="">
      <DA bType="Enum" name="stVal" type="ModEnum" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
      <DA bType="Enum" name="ctlModel" type="CtlModelKind" dchg="true" fc="CF"/>
    </DOType>
    <DOType id="Health_0" cdc="ENS" iedType="">
      <DA bType="Enum" name="stVal" type="HealthEnum" dchg="true" dupd="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="NamPlt_1" cdc="LPL" iedType="">
      <DA bType="VisString255" name="vendor" fc="DC"/>
      <DA bType="VisString255" name="swRev" fc="DC"/>
    </DOType>
    <DOType id="NdsCom_0$_f0c851f3-c091-469e-a6a8-ed1f1c298c9b" cdc="SPS" iedType="">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="St_0$_89f4711d-aa4d-4a61-891e-a9f7cd2538c3" cdc="SPS" iedType="">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="SimSt_0$_47757126-db09-4360-b117-272078a2e6fb" cdc="SPS" iedType="">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="LastStNum_0$_9f3b7c01-d4b5-4cf6-8507-4e6057ccf8d8" cdc="INS" iedType="">
      <DA bType="INT32" name="stVal" dchg="true" dupd="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="ConfRevNum_0$_a549979e-d6fb-47c8-a65d-2d55eac96ae5" cdc="INS" iedType="">
      <DA bType="INT32" name="stVal" dchg="true" dupd="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="GoCBRef_0" cdc="ORG" iedType="">
      <DA bType="ObjRef" name="setSrcRef" valKind="RO" dchg="true" fc="SP"/>
    </DOType>
    <DOType id="SvCBRef_0" cdc="ORG" iedType="">
      <DA bType="ObjRef" name="setSrcRef" valKind="RO" dchg="true" fc="SP"/>
    </DOType>
    <DOType id="Str_0" cdc="ACD" iedType="">
      <DA bType="BOOLEAN" name="general" dchg="true" fc="ST"/>
      <DA bType="Enum" name="dirGeneral" type="FaultDirectionKind" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="Op_0" cdc="ACT" iedType="">
      <DA bType="BOOLEAN" name="general" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="OpIn_0" cdc="ACT" iedType="">
      <DA bType="BOOLEAN" name="general" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="Tr_0" cdc="ACT" iedType="">
      <DA bType="BOOLEAN" name="general" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="OpEx_0" cdc="ACT" iedType="">
      <DA bType="BOOLEAN" name="general" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="Loc_0$_40a4b74b-1f33-4971-b528-884e6133cd1c" cdc="SPS" iedType="">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="OpCnt_0$_48e4242b-cb85-4899-8a85-ac3bae281664" cdc="INS" iedType="">
      <DA bType="INT32" name="stVal" dchg="true" dupd="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="Pos_0" cdc="DPC" iedType="">
      <DA bType="Dbpos" name="stVal" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
      <DA bType="Enum" name="ctlModel" type="CtlModelKind" dchg="true" fc="CF"/>
    </DOType>
    <DOType id="BlkOpn_0" cdc="SPC" iedType="">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
      <DA bType="Enum" name="ctlModel" type="CtlModelKind" dchg="true" fc="CF"/>
    </DOType>
    <DOType id="BlkCls_0" cdc="SPC" iedType="">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
      <DA bType="Enum" name="ctlModel" type="CtlModelKind" dchg="true" fc="CF"/>
    </DOType>
    <DOType id="OpCntRs_0" cdc="INC" iedType="">
      <DA bType="Struct" name="origin" type="origin_0" fc="ST"/>
      <DA bType="INT32" name="stVal" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
      <DA bType="Enum" name="ctlModel" type="CtlModelKind" dchg="true" fc="CF"/>
      <DA bType="Struct" name="Oper" type="Oper_2$_b5ad226a-385b-47e1-8476-51c9ca2e513e" fc="CO"/>
      <DA bType="Struct" name="Cancel" type="Cancel_2$_9ff80070-9a7a-4526-b072-6cad5423173a" fc="CO"/>
    </DOType>
    <DOType id="Pos_1" cdc="DPC" iedType="">
      <DA bType="Struct" name="origin" type="origin_0" fc="ST"/>
      <DA bType="Dbpos" name="stVal" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
      <DA bType="BOOLEAN" name="stSeld" dchg="true" fc="ST"/>
      <DA bType="Enum" name="ctlModel" type="CtlModelKind" dchg="true" fc="CF"/>
      <DA bType="INT32U" name="sboTimeout" dchg="true" fc="CF"/>
      <DA bType="Enum" name="sboClass" type="SboClassKind" dchg="true" fc="CF"/>
      <DA bType="Struct" name="SBOw" type="SBOw_1" fc="CO"/>
      <DA bType="Struct" name="Oper" type="Oper_1$_ca1bc142-d800-42bc-a6a9-4b30f72425ab" fc="CO"/>
      <DA bType="Struct" name="Cancel" type="Cancel_1$_b843b06f-67cd-4d0f-a3ed-21b1ebd97c86" fc="CO"/>
    </DOType>
    <DOType id="Mod_0" cdc="ENC" iedType="">
      <DA bType="Enum" name="stVal" type="ModEnum" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
      <DA bType="Enum" name="ctlModel" type="CtlModelKind" dchg="true" fc="CF"/>
      <DA bType="INT32U" name="sboTimeout" dchg="true" fc="CF"/>
      <DA bType="Enum" name="sboClass" type="SboClassKind" dchg="true" fc="CF"/>
      <DA bType="Struct" name="SBOw" type="SBOw_0$_32eb99ed-ffab-467f-8af7-ac0cecb6ad83" fc="CO"/>
      <DA bType="Struct" name="Oper" type="Oper_0$_789afd21-d766-4cc1-9829-ebb0831ef6a4" fc="CO"/>
      <DA bType="Struct" name="Cancel" type="Cancel_0$_875964ee-ba93-498c-8420-5c1f5e2721be" fc="CO"/>
    </DOType>
    <DOType id="NamPlt_0" cdc="LPL" iedType="">
      <DA bType="VisString255" name="vendor" fc="DC"/>
      <DA bType="VisString255" name="swRev" fc="DC"/>
      <DA bType="VisString255" name="d" fc="DC"/>
      <DA bType="VisString255" name="configRev" fc="DC"/>
      <DA bType="VisString255" name="ldNs" fc="EX"/>
    </DOType>
    <DOType id="Diag_0" cdc="SPC" iedType="">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
      <DA bType="Enum" name="ctlModel" type="CtlModelKind" dchg="true" fc="CF"/>
    </DOType>
    <DOType id="LEDRs_0" cdc="SPC" iedType="">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA bType="Quality" name="q" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
      <DA bType="Enum" name="ctlModel" type="CtlModelKind" dchg="true" fc="CF"/>
      <DA bType="Struct" name="Oper" type="Oper_1$_ca1bc142-d800-42bc-a6a9-4b30f72425ab" fc="CO"/>
      <DA bType="Struct" name="Cancel" type="Cancel_1$_b843b06f-67cd-4d0f-a3ed-21b1ebd97c86" fc="CO"/>
    </DOType>
    <DOType id="S451_DPL_0$_9f473d67-bb44-4d5f-a4e4-70d6540b5b9a" cdc="DPL">
      <DA bType="VisString255" name="vendor" valKind="RO" fc="DC">
        <Val>SEL</Val>
      </DA>
      <DA esel:datasrc="dbi:SERNUM" bType="VisString255" name="serNum" sAddr="datasrc=dbi:SERNUM" valKind="RO" fc="DC"/>
      <DA esel:datasrc="dbi:PARNUM" bType="VisString255" name="model" sAddr="datasrc=dbi:PARNUM" valKind="RO" fc="DC"/>
    </DOType>
    <DOType id="S451_healthENS$_1b852f38-0925-4300-9e4e-d1d8b3f76b00" cdc="ENS">
      <DA esel:datasrc="db:EN?3:1" bType="Enum" name="stVal" sAddr="datasrc=db:EN?3:1" type="S451_Health" dchg="true" dupd="true" fc="ST"/>
      <DA esel:datasrc="db:I60MOD" bType="Quality" name="q" sAddr="datasrc=db:I60MOD" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="S451_SPS_0" cdc="SPS">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA esel:datasrc="db:EN" bType="Quality" name="q" sAddr="datasrc=db:EN" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="S451_SPC_direct_normal$_6473ff3c-c637-4ca1-86cb-de6fa2fd66a7" cdc="SPC">
      <DA bType="Struct" name="Oper" type="S451_Oper_b" fc="CO"/>
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA esel:datasrc="db:EN" bType="Quality" name="q" sAddr="datasrc=db:EN" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
      <DA bType="Enum" name="ctlModel" type="S451_ctlModel" valKind="RO" dchg="true" fc="CF"/>
      <DA bType="INT32U" name="operTimeout" valKind="RO" dchg="true" fc="CF">
        <Val>1000</Val>
      </DA>
    </DOType>
    <DOType id="S451_behENS$_43599cc2-ed23-4375-bd2f-c9d79673c5bd" cdc="ENS">
      <DA bType="Enum" name="stVal" type="S451_Beh" dchg="true" dupd="true" fc="ST"/>
      <DA esel:datasrc="db:I60MOD" bType="Quality" name="q" sAddr="datasrc=db:I60MOD" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="S451_SPS_LGOS_0" cdc="SPS">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA esel:datasrc="db:GQUAL" bType="Quality" name="q" sAddr="datasrc=db:GQUAL" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="S451_INS_LGOS_0" cdc="INS">
      <DA bType="INT32" name="stVal" dchg="true" fc="ST"/>
      <DA esel:datasrc="db:GQUAL" bType="Quality" name="q" sAddr="datasrc=db:GQUAL" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="S451_INS_LGOS_1$_73172416-6f28-4c66-9987-c319aa24497f" cdc="INS">
      <DA bType="INT32" name="stVal" dchg="true" fc="ST"/>
      <DA esel:datasrc="db:GQUAL" bType="Quality" name="q" sAddr="datasrc=db:GQUAL" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
      <DA bType="VisString255" name="dataNs" fc="EX">
        <Val>SEL-61850:2019</Val>
      </DA>
    </DOType>
    <DOType id="S451_ENS_LGOS_0$_77cd16c7-d9c5-494a-a00d-81148c89e3c1" cdc="ENS">
      <DA bType="Enum" name="stVal" type="S451_GOOSEErrSt" dchg="true" fc="ST"/>
      <DA esel:datasrc="db:GQUAL" bType="Quality" name="q" sAddr="datasrc=db:GQUAL" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
      <DA bType="VisString255" name="dataNs" fc="EX">
        <Val>SEL-61850:2019</Val>
      </DA>
    </DOType>
    <DOType id="S451_MV_LGOS_0" cdc="MV">
      <DA bType="Struct" name="instMag" type="S451_AnalogValue_0" fc="MX"/>
      <DA bType="Struct" name="mag" type="S451_AnalogValue_0" dchg="true" fc="MX"/>
      <DA esel:datasrc="db:GQUAL" bType="Quality" name="q" sAddr="datasrc=db:GQUAL" fc="MX" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="MX"/>
      <DA bType="Struct" name="units" type="S451_Units_LGOS_0" fc="CF"/>
      <DA bType="INT32U" name="db" fc="CF"/>
      <DA bType="VisString255" name="dataNs" fc="EX">
        <Val>SEL-61850:2019</Val>
      </DA>
    </DOType>
    <DOType id="S451_ORG_0" cdc="ORG">
      <DA bType="ObjRef" name="setSrcRef" dchg="true" fc="SP"/>
    </DOType>
    <DOType id="S451_ORG_1" cdc="ORG">
      <DA bType="ObjRef" name="setSrcRef" dchg="true" fc="SP"/>
      <DA bType="VisString255" name="dataNs" fc="EX">
        <Val>SEL-61850:2019</Val>
      </DA>
    </DOType>
    <DOType id="S451_VSG_LGOS_0" cdc="VSG">
      <DA bType="VisString255" name="setVal" fc="SP"/>
      <DA bType="VisString255" name="dataNs" fc="EX">
        <Val>SEL-61850:2019</Val>
      </DA>
    </DOType>
    <DOType id="S451_ING_LGOS_0" cdc="ING">
      <DA bType="INT32" name="setVal" fc="SP"/>
      <DA bType="VisString255" name="dataNs" fc="EX">
        <Val>SEL-61850:2019</Val>
      </DA>
    </DOType>
    <DOType id="S451_behENS" cdc="ENS">
      <DA bType="Enum" name="stVal" type="S451_Beh" dchg="true" dupd="true" fc="ST"/>
      <DA esel:datasrc="db:I60MOD" bType="Quality" name="q" sAddr="datasrc=db:I60MOD" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="S451_SPS_LSVS_0" cdc="SPS">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA esel:datasrc="db:SVQUAL" bType="Quality" name="q" sAddr="datasrc=db:SVQUAL" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="S451_INS_LSVS_0" cdc="INS">
      <DA bType="INT32" name="stVal" dchg="true" fc="ST"/>
      <DA esel:datasrc="db:SVQUAL" bType="Quality" name="q" sAddr="datasrc=db:SVQUAL" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="S451_INS_LSVS_1" cdc="INS">
      <DA bType="INT32" name="stVal" dchg="true" fc="ST"/>
      <DA esel:datasrc="db:SVQUAL" bType="Quality" name="q" sAddr="datasrc=db:SVQUAL" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
      <DA bType="VisString255" name="dataNs" fc="EX">
        <Val>SEL-61850:2019</Val>
      </DA>
    </DOType>
    <DOType id="S451_ENS_LSVS_0" cdc="ENS">
      <DA bType="Enum" name="stVal" type="S451_SVErrSt" dchg="true" fc="ST"/>
      <DA esel:datasrc="db:SVQUAL" bType="Quality" name="q" sAddr="datasrc=db:SVQUAL" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
      <DA bType="VisString255" name="dataNs" fc="EX">
        <Val>SEL-61850:2019</Val>
      </DA>
    </DOType>
    <DOType id="S451_MV_LSVS_1" cdc="MV">
      <DA bType="Struct" name="instMag" type="S451_AnalogValue_0" fc="MX"/>
      <DA bType="Struct" name="mag" type="S451_AnalogValue_0" dchg="true" fc="MX"/>
      <DA esel:datasrc="db:SVQUAL" bType="Quality" name="q" sAddr="datasrc=db:SVQUAL" fc="MX" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="MX"/>
      <DA bType="Struct" name="units" type="S451_Units_LSVS_1" fc="CF"/>
      <DA bType="INT32U" name="db" fc="CF"/>
      <DA bType="VisString255" name="dataNs" fc="EX">
        <Val>SEL-61850:2019</Val>
      </DA>
    </DOType>
    <DOType id="S451_MV_LSVS_0" cdc="MV">
      <DA bType="Struct" name="instMag" type="S451_AnalogValue_0" fc="MX"/>
      <DA bType="Struct" name="mag" type="S451_AnalogValue_0" dchg="true" fc="MX"/>
      <DA esel:datasrc="db:SVQUAL" bType="Quality" name="q" sAddr="datasrc=db:SVQUAL" fc="MX" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="MX"/>
      <DA bType="Struct" name="units" type="S451_Units_LSVS_0" fc="CF"/>
      <DA bType="INT32U" name="db" fc="CF"/>
      <DA bType="VisString255" name="dataNs" fc="EX">
        <Val>SEL-61850:2019</Val>
      </DA>
    </DOType>
    <DOType id="S451_SPC_direct_normal" cdc="SPC">
      <DA bType="Struct" name="Oper" type="S451_Oper_b" fc="CO"/>
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA esel:datasrc="db:EN" bType="Quality" name="q" sAddr="datasrc=db:EN" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
      <DA bType="Enum" name="ctlModel" type="S451_ctlModel" valKind="RO" dchg="true" fc="CF"/>
      <DA bType="INT32U" name="operTimeout" valKind="RO" dchg="true" fc="CF">
        <Val>1000</Val>
      </DA>
    </DOType>
    <DOType id="S451_ORG_LSVS_0" cdc="ORG">
      <DA bType="ObjRef" name="setSrcRef" fc="SP"/>
    </DOType>
    <DOType id="S451_ORG_LSVS_1" cdc="ORG">
      <DA bType="ObjRef" name="setSrcRef" fc="SP"/>
      <DA bType="VisString255" name="dataNs" fc="EX">
        <Val>SEL-61850:2019</Val>
      </DA>
    </DOType>
    <DOType id="S451_VSG_LSVS_0" cdc="VSG">
      <DA bType="VisString255" name="setVal" fc="SP"/>
      <DA bType="VisString255" name="dataNs" fc="EX">
        <Val>SEL-61850:2019</Val>
      </DA>
    </DOType>
    <DOType id="S451_ING_LSVS_0" cdc="ING">
      <DA bType="INT32" name="setVal" fc="SP"/>
      <DA bType="VisString255" name="dataNs" fc="EX">
        <Val>SEL-61850:2019</Val>
      </DA>
    </DOType>
    <DOType id="S451_ACT_0$_1cc8adad-7785-49dc-a8fb-94d8f6a7071e" cdc="ACT">
      <DA bType="BOOLEAN" name="general" dchg="true" fc="ST"/>
      <DA esel:datasrc="db:EN" bType="Quality" name="q" sAddr="datasrc=db:EN" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="S451_ACD_0$_14fd6c65-86d6-46a3-a074-a5bd0cd13724" cdc="ACD">
      <DA bType="BOOLEAN" name="general" dchg="true" fc="ST"/>
      <DA bType="Enum" name="dirGeneral" type="S451_dirGeneral" dchg="true" fc="ST"/>
      <DA esel:datasrc="db:EN" bType="Quality" name="q" sAddr="datasrc=db:EN" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="S451_ACT_1$_855da7e2-13ea-4190-97f4-101815dfb422" cdc="ACT">
      <DA bType="BOOLEAN" name="general" dchg="true" fc="ST"/>
      <DA bType="BOOLEAN" name="phsA" dchg="true" fc="ST"/>
      <DA bType="BOOLEAN" name="phsB" dchg="true" fc="ST"/>
      <DA bType="BOOLEAN" name="phsC" dchg="true" fc="ST"/>
      <DA esel:datasrc="db:EN" bType="Quality" name="q" sAddr="datasrc=db:EN" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="S451_ACT_0" cdc="ACT">
      <DA bType="BOOLEAN" name="general" dchg="true" fc="ST"/>
      <DA esel:datasrc="db:EN" bType="Quality" name="q" sAddr="datasrc=db:EN" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="S451_SPS_1$_19f84782-e510-4b96-84a6-647c2d8fcda1" cdc="SPS">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA esel:datasrc="db:EN" bType="Quality" name="q" sAddr="datasrc=db:EN" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
      <DA bType="VisString255" name="dataNs" fc="EX">
        <Val>SEL-61850:2006</Val>
      </DA>
    </DOType>
    <DOType id="S451_INS_0" cdc="INS">
      <DA bType="INT32" name="stVal" dchg="true" fc="ST"/>
      <DA esel:datasrc="db:EN" bType="Quality" name="q" sAddr="datasrc=db:EN" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="S451_DPC_0" cdc="DPC">
      <DA bType="Dbpos" name="stVal" dchg="true" fc="ST"/>
      <DA esel:datasrc="db:EN" bType="Quality" name="q" sAddr="datasrc=db:EN" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
      <DA bType="Enum" name="ctlModel" type="S451_ctlModel" valKind="RO" fc="CF">
        <Val>status-only</Val>
      </DA>
    </DOType>
    <DOType id="S451_SPC_1$_0c3cad1c-dc44-4889-bf9b-45f8848a8dbf" cdc="SPC">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA esel:datasrc="db:EN" bType="Quality" name="q" sAddr="datasrc=db:EN" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
      <DA bType="Enum" name="ctlModel" type="S451_ctlModel" valKind="RO" fc="CF">
        <Val>status-only</Val>
      </DA>
    </DOType>
    <DOType id="S451_CBOpCapENS$_edcec50f-a7cd-47e4-927d-99b93958e192" cdc="ENS">
      <DA bType="Enum" name="stVal" type="S451_CBOpCap" dchg="true" fc="ST"/>
      <DA esel:datasrc="db:EN" bType="Quality" name="q" sAddr="datasrc=db:EN" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType id="S451_SPS_1" cdc="SPS">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA esel:datasrc="db:EN" bType="Quality" name="q" sAddr="datasrc=db:EN" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
      <DA bType="VisString255" name="dataNs" fc="EX">
        <Val>SEL-61850:2006</Val>
      </DA>
    </DOType>
    <DOType id="S451_SPC_1" cdc="SPC">
      <DA bType="BOOLEAN" name="stVal" dchg="true" fc="ST"/>
      <DA esel:datasrc="db:EN" bType="Quality" name="q" sAddr="datasrc=db:EN" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
      <DA bType="Enum" name="ctlModel" type="S451_ctlModel" valKind="RO" fc="CF">
        <Val>status-only</Val>
      </DA>
    </DOType>
    <DOType id="S451_SwTypENS" cdc="ENS">
      <DA bType="Enum" name="stVal" type="S451_SwTyp" dchg="true" fc="ST"/>
      <DA esel:datasrc="db:EN" bType="Quality" name="q" sAddr="datasrc=db:EN" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" dchg="true" fc="ST"/>
    </DOType>
    <DOType id="S451_SwOpCapENS" cdc="ENS">
      <DA bType="Enum" name="stVal" type="S451_SwOpCap" dchg="true" fc="ST"/>
      <DA esel:datasrc="db:EN" bType="Quality" name="q" sAddr="datasrc=db:EN" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" dchg="true" fc="ST"/>
    </DOType>
    <DOType id="S451_DPC_direct_normal" cdc="DPC">
      <DA bType="Struct" name="Oper" type="S451_Oper_b" fc="CO"/>
      <DA bType="Dbpos" name="stVal" dchg="true" fc="ST"/>
      <DA esel:datasrc="db:EN" bType="Quality" name="q" sAddr="datasrc=db:EN" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
      <DA bType="Enum" name="ctlModel" type="S451_ctlModel" valKind="RO" fc="CF"/>
      <DA bType="INT32U" name="operTimeout" valKind="RO" fc="CF">
        <Val>1000</Val>
      </DA>
    </DOType>
    <DOType id="S451_DPC_1" cdc="DPC">
      <DA bType="Struct" name="Oper" type="S451_Oper_b" fc="CO"/>
      <DA bType="Dbpos" name="stVal" dchg="true" fc="ST"/>
      <DA esel:datasrc="db:EN" bType="Quality" name="q" sAddr="datasrc=db:EN" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
      <DA bType="Enum" name="ctlModel" type="S451_ctlModel" valKind="RO" fc="CF">
        <Val>status-only</Val>
      </DA>
    </DOType>
    <DOType id="S451_CMV_0" cdc="CMV">
      <DA bType="Struct" name="instCVal" type="S451_Vector_0" fc="MX"/>
      <DA bType="Struct" name="cVal" type="S451_Vector_0" dchg="true" dupd="true" fc="MX"/>
      <DA esel:datasrc="db:EN" bType="Quality" name="q" sAddr="datasrc=db:EN" fc="MX" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="MX"/>
      <DA bType="Struct" name="units" type="S451_Units_0" dchg="true" fc="CF"/>
      <DA bType="INT32U" name="db" valKind="RO" dchg="true" fc="CF"/>
      <DA bType="INT32U" name="dbAng" valKind="RO" dchg="true" fc="CF"/>
    </DOType>
    <DOType id="S451_MV_0" cdc="MV">
      <DA bType="Struct" name="instMag" type="S451_AnalogValue_0" fc="MX"/>
      <DA bType="Struct" name="mag" type="S451_AnalogValue_0" dchg="true" dupd="true" fc="MX"/>
      <DA esel:datasrc="db:EN" bType="Quality" name="q" sAddr="datasrc=db:EN" fc="MX" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="MX"/>
      <DA bType="Struct" name="units" type="S451_Units_0" dchg="true" fc="CF"/>
      <DA bType="INT32U" name="db" valKind="RO" dchg="true" fc="CF"/>
    </DOType>
    <DOType id="S451_CMV_1" cdc="CMV">
      <DA bType="Struct" name="instCVal" type="S451_Vector_1" fc="MX"/>
      <DA bType="Struct" name="cVal" type="S451_Vector_1" dchg="true" dupd="true" fc="MX"/>
      <DA esel:datasrc="db:EN" bType="Quality" name="q" sAddr="datasrc=db:EN" fc="MX" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="MX"/>
      <DA bType="Struct" name="units" type="S451_Units_0" dchg="true" fc="CF"/>
      <DA bType="INT32U" name="db" valKind="RO" dchg="true" fc="CF"/>
    </DOType>
    <DOType id="S451_WYE_5" cdc="WYE">
      <SDO type="S451_CMV_1" name="phsA"/>
      <SDO type="S451_CMV_1" name="phsB"/>
      <SDO type="S451_CMV_1" name="phsC"/>
      <SDO type="S451_CMV_1" name="res"/>
      <DA bType="BOOLEAN" name="phsToNeut" valKind="RO" fc="CF">
        <Val>true</Val>
      </DA>
    </DOType>
    <DOType id="S451_CMV_2" cdc="CMV">
      <DA bType="Struct" name="instCVal" type="S451_Vector_1" fc="MX"/>
      <DA bType="Struct" name="cVal" type="S451_Vector_1" dchg="true" dupd="true" fc="MX"/>
      <DA esel:datasrc="db:EN" bType="Quality" name="q" sAddr="datasrc=db:EN" fc="MX" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="MX"/>
      <DA bType="Struct" name="units" type="S451_Units_0" dchg="true" fc="CF"/>
      <DA bType="INT32U" name="db" valKind="RO" dchg="true" fc="CF"/>
      <DA bType="VisString255" name="dataNs" fc="EX">
        <Val>SEL-61850:2006</Val>
      </DA>
    </DOType>
    <DOType id="S451_WYE_4" cdc="WYE">
      <SDO type="S451_CMV_0" name="phsA"/>
      <SDO type="S451_CMV_0" name="phsB"/>
      <SDO type="S451_CMV_0" name="phsC"/>
      <DA bType="BOOLEAN" name="phsToNeut" valKind="RO" fc="CF">
        <Val>true</Val>
      </DA>
    </DOType>
    <DOType id="S451_WYE_0" cdc="WYE">
      <SDO type="S451_CMV_1" name="phsA"/>
      <SDO type="S451_CMV_1" name="phsB"/>
      <SDO type="S451_CMV_1" name="phsC"/>
      <DA bType="BOOLEAN" name="phsToNeut" valKind="RO" fc="CF">
        <Val>true</Val>
      </DA>
      <DA bType="VisString255" name="dataNs" fc="EX">
        <Val>IEC 61850-7-4:2007A</Val>
      </DA>
    </DOType>
    <DOType id="S451_SEQ_0" cdc="SEQ">
      <SDO type="S451_CMV_0" name="c1"/>
      <SDO type="S451_CMV_0" name="c2"/>
      <SDO type="S451_CMV_0" name="c3"/>
      <DA bType="Enum" name="seqT" type="S451_seqT" fc="MX"/>
    </DOType>
    <DOType id="S451_behENS_1" cdc="ENS">
      <DA bType="Enum" name="stVal" type="S451_Beh" dchg="true" dupd="true" fc="ST"/>
      <DA esel:datasrc="db:I60MOD" bType="Quality" name="q" sAddr="datasrc=db:I60MOD" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
      <DA bType="VisString255" name="dataNs" fc="EX">
        <Val>IEC 61850-7-4:2007A</Val>
      </DA>
    </DOType>
    <DOType id="S451_LPL_1" cdc="LPL">
      <DA bType="VisString255" name="vendor" valKind="RO" fc="DC">
        <Val>SEL</Val>
      </DA>
      <DA esel:datasrc="dbi:VERFID" bType="VisString255" name="swRev" sAddr="datasrc=dbi:VERFID" valKind="RO" fc="DC"/>
      <DA bType="VisString255" name="d" valKind="RO" fc="DC"/>
      <DA bType="VisString255" name="configRev" valKind="RO" fc="DC">
        <Val>0</Val>
      </DA>
      <DA bType="VisString255" name="lnNs" fc="EX">
        <Val>SEL-61850:2006</Val>
      </DA>
      <DA bType="VisString255" name="dataNs" fc="EX">
        <Val>IEC 61850-7-4:2007A</Val>
      </DA>
    </DOType>
    <DOType id="S451_SEQ_1" cdc="SEQ">
      <SDO type="S451_MV_0" name="c1"/>
      <SDO type="S451_MV_0" name="c2"/>
      <SDO type="S451_MV_0" name="c3"/>
      <DA bType="Enum" name="seqT" type="S451_seqT" fc="MX"/>
      <DA bType="VisString255" name="dataNs" fc="EX">
        <Val>IEC 61850-7-4:2007A</Val>
      </DA>
    </DOType>
    <DOType id="S451_MV_2" cdc="MV">
      <DA bType="Struct" name="instMag" type="S451_AnalogValue_0" fc="MX"/>
      <DA bType="Struct" name="mag" type="S451_AnalogValue_0" dchg="true" dupd="true" fc="MX"/>
      <DA esel:datasrc="db:EN" bType="Quality" name="q" sAddr="datasrc=db:EN" fc="MX" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="MX"/>
      <DA bType="Struct" name="units" type="S451_Units_0" dchg="true" fc="CF"/>
      <DA bType="INT32U" name="db" valKind="RO" dchg="true" fc="CF"/>
      <DA bType="VisString255" name="dataNs" fc="EX">
        <Val>IEC 61850-7-4:2007A</Val>
      </DA>
    </DOType>
    <DOType id="S451_BCR_1" cdc="BCR">
      <DA bType="INT64" name="actVal" dchg="true" fc="ST"/>
      <DA esel:datasrc="db:EN" bType="Quality" name="q" sAddr="datasrc=db:EN" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
      <DA bType="Struct" name="units" type="S451_Units_0" dchg="true" fc="CF"/>
      <DA bType="FLOAT32" name="pulsQty" valKind="RO" dchg="true" fc="CF"/>
      <DA bType="VisString255" name="dataNs" fc="EX">
        <Val>IEC 61850-7-4:2007A</Val>
      </DA>
    </DOType>
    <DOType id="S451_MV_1" cdc="MV">
      <DA bType="Struct" name="instMag" type="S451_AnalogValue_0" fc="MX"/>
      <DA bType="Struct" name="mag" type="S451_AnalogValue_0" dchg="true" dupd="true" fc="MX"/>
      <DA esel:datasrc="db:EN" bType="Quality" name="q" sAddr="datasrc=db:EN" fc="MX" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="MX"/>
      <DA bType="Struct" name="units" type="S451_Units_0" dchg="true" fc="CF"/>
      <DA bType="INT32U" name="db" valKind="RO" dchg="true" fc="CF"/>
      <DA bType="VisString255" name="dataNs" fc="EX">
        <Val>SEL-61850:2006</Val>
      </DA>
    </DOType>
    <DOType desc="For controllable IEC 61850 Mode/Behavior" id="S451_modENC" cdc="ENC">
      <DA esel:datasrc="db:I60MOD" bType="Enum" name="stVal" sAddr="datasrc=db:I60MOD" type="S451_Mod" dchg="true" fc="ST"/>
      <DA esel:datasrc="db:I60MOD" bType="Quality" name="q" sAddr="datasrc=db:I60MOD" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
      <DA bType="Enum" name="ctlModel" type="S451_ctlModel" valKind="RO" fc="CF">
        <Val>status-only</Val>
      </DA>
      <DA bType="VisString255" name="dataNs" fc="EX">
        <Val>IEC 61850-7-4:2007A</Val>
      </DA>
    </DOType>
    <DOType id="S451_LPL_LN0" cdc="LPL">
      <DA bType="VisString255" name="vendor" valKind="RO" fc="DC">
        <Val>SEL</Val>
      </DA>
      <DA esel:datasrc="dbi:VERFID" bType="VisString255" name="swRev" sAddr="datasrc=dbi:VERFID" valKind="RO" fc="DC"/>
      <DA bType="VisString255" name="d" valKind="RO" fc="DC"/>
      <DA bType="VisString255" name="configRev" valKind="RO" fc="DC">
        <Val>0</Val>
      </DA>
      <DA bType="VisString255" name="ldNs" fc="EX">
        <Val>IEC 61850-7-4:2007A</Val>
      </DA>
    </DOType>
    <DOType id="S451_healthENS" cdc="ENS">
      <DA esel:datasrc="db:EN?3:1" bType="Enum" name="stVal" sAddr="datasrc=db:EN?3:1" type="S451_Health" dchg="true" dupd="true" fc="ST"/>
      <DA esel:datasrc="db:I60MOD" bType="Quality" name="q" sAddr="datasrc=db:I60MOD" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
    </DOType>
    <DOType desc="For controllable IEC 61850 Mode/Behavior" id="S451_modENC$_974d6f8a-fc05-455f-b705-6ec11500070d" cdc="ENC">
      <DA esel:datasrc="db:I60MOD" bType="Enum" name="stVal" sAddr="datasrc=db:I60MOD" type="S451_Mod" dchg="true" fc="ST"/>
      <DA esel:datasrc="db:I60MOD" bType="Quality" name="q" sAddr="datasrc=db:I60MOD" fc="ST" qchg="true"/>
      <DA bType="Timestamp" name="t" fc="ST"/>
      <DA bType="Enum" name="ctlModel" type="S451_ctlModel" valKind="RO" fc="CF">
        <Val>status-only</Val>
      </DA>
      <DA bType="VisString255" name="dataNs" fc="EX">
        <Val>IEC 61850-7-4:2007A</Val>
      </DA>
    </DOType>
    <DOType id="S451_LPL_LN0$_788cfdb8-c0fe-4bb7-9b2f-447eab1ad47c" cdc="LPL">
      <DA bType="VisString255" name="vendor" valKind="RO" fc="DC">
        <Val>SEL</Val>
      </DA>
      <DA esel:datasrc="dbi:VERFID" bType="VisString255" name="swRev" sAddr="datasrc=dbi:VERFID" valKind="RO" fc="DC"/>
      <DA bType="VisString255" name="d" valKind="RO" fc="DC"/>
      <DA bType="VisString255" name="configRev" valKind="RO" fc="DC">
        <Val>0</Val>
      </DA>
      <DA bType="VisString255" name="ldNs" fc="EX">
        <Val>IEC 61850-7-4:2007A</Val>
      </DA>
    </DOType>
    <DAType id="origin_0" iedType="">
      <BDA bType="Enum" name="orCat" type="OriginatorCategoryKind"/>
      <BDA bType="Octet64" name="orIdent"/>
    </DAType>
    <DAType id="Oper_1$_ca1bc142-d800-42bc-a6a9-4b30f72425ab" iedType="">
      <BDA bType="BOOLEAN" name="ctlVal"/>
      <BDA bType="Struct" name="origin" type="origin_0"/>
      <BDA bType="INT8U" name="ctlNum"/>
      <BDA bType="Timestamp" name="T"/>
      <BDA bType="BOOLEAN" name="Test"/>
      <BDA bType="Check" name="Check"/>
      <ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
    </DAType>
    <DAType id="Cancel_1$_b843b06f-67cd-4d0f-a3ed-21b1ebd97c86" iedType="">
      <BDA bType="BOOLEAN" name="ctlVal"/>
      <BDA bType="Struct" name="origin" type="origin_0"/>
      <BDA bType="INT8U" name="ctlNum"/>
      <BDA bType="Timestamp" name="T"/>
      <BDA bType="BOOLEAN" name="Test"/>
      <ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
    </DAType>
    <DAType id="mag_0" iedType="">
      <BDA bType="INT32" name="i"/>
      <BDA bType="FLOAT32" name="f"/>
    </DAType>
    <DAType id="units_0" iedType="">
      <BDA bType="Enum" name="SIUnit" type="SIUnitKind$_533b3f06-924f-4ad4-b0a4-b04e0b6a30c6"/>
    </DAType>
    <DAType id="cVal_0" iedType="">
      <BDA bType="Struct" name="mag" type="mag_0"/>
      <BDA bType="Struct" name="ang" type="ang_0"/>
    </DAType>
    <DAType id="ang_0" iedType="">
      <BDA bType="INT32" name="i"/>
      <BDA bType="FLOAT32" name="f"/>
    </DAType>
    <DAType id="units_1" iedType="">
      <BDA bType="Enum" name="SIUnit" type="SIUnitKind$_533b3f06-924f-4ad4-b0a4-b04e0b6a30c6"/>
      <BDA bType="Enum" name="multiplier" type="MultiplierKind"/>
    </DAType>
    <DAType id="cVal_1" iedType="">
      <BDA bType="Struct" name="mag" type="mag_0"/>
    </DAType>
    <DAType id="Oper_2$_b5ad226a-385b-47e1-8476-51c9ca2e513e" iedType="">
      <BDA bType="INT32" name="ctlVal"/>
      <BDA bType="Struct" name="origin" type="origin_0"/>
      <BDA bType="INT8U" name="ctlNum"/>
      <BDA bType="Timestamp" name="T"/>
      <BDA bType="BOOLEAN" name="Test"/>
      <BDA bType="Check" name="Check"/>
      <ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
    </DAType>
    <DAType id="Cancel_2$_9ff80070-9a7a-4526-b072-6cad5423173a" iedType="">
      <BDA bType="INT32" name="ctlVal"/>
      <BDA bType="Struct" name="origin" type="origin_0"/>
      <BDA bType="INT8U" name="ctlNum"/>
      <BDA bType="Timestamp" name="T"/>
      <BDA bType="BOOLEAN" name="Test"/>
      <ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
    </DAType>
    <DAType id="SBOw_1" iedType="">
      <BDA bType="BOOLEAN" name="ctlVal"/>
      <BDA bType="Struct" name="origin" type="origin_0"/>
      <BDA bType="INT8U" name="ctlNum"/>
      <BDA bType="Timestamp" name="T"/>
      <BDA bType="BOOLEAN" name="Test"/>
      <BDA bType="Check" name="Check"/>
      <ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
    </DAType>
    <DAType id="SBOw_0$_32eb99ed-ffab-467f-8af7-ac0cecb6ad83" iedType="">
      <BDA bType="Enum" name="ctlVal" type="ModEnum"/>
      <BDA bType="Struct" name="origin" type="origin_0"/>
      <BDA bType="INT8U" name="ctlNum"/>
      <BDA bType="Timestamp" name="T"/>
      <BDA bType="BOOLEAN" name="Test"/>
      <BDA bType="Check" name="Check"/>
      <ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
    </DAType>
    <DAType id="Oper_0$_789afd21-d766-4cc1-9829-ebb0831ef6a4" iedType="">
      <BDA bType="Enum" name="ctlVal" type="ModEnum"/>
      <BDA bType="Struct" name="origin" type="origin_0"/>
      <BDA bType="INT8U" name="ctlNum"/>
      <BDA bType="Timestamp" name="T"/>
      <BDA bType="BOOLEAN" name="Test"/>
      <BDA bType="Check" name="Check"/>
      <ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
    </DAType>
    <DAType id="Cancel_0$_875964ee-ba93-498c-8420-5c1f5e2721be" iedType="">
      <BDA bType="Enum" name="ctlVal" type="ModEnum"/>
      <BDA bType="Struct" name="origin" type="origin_0"/>
      <BDA bType="INT8U" name="ctlNum"/>
      <BDA bType="Timestamp" name="T"/>
      <BDA bType="BOOLEAN" name="Test"/>
      <ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
    </DAType>
    <DAType desc="Operate service structure for CDCs with a Boolean ctlVal" id="S451_Oper_b">
      <BDA bType="BOOLEAN" name="ctlVal"/>
      <BDA bType="Struct" name="origin" type="S451_Originator_0"/>
      <BDA bType="INT8U" name="ctlNum"/>
      <BDA bType="Timestamp" name="T"/>
      <BDA bType="BOOLEAN" name="Test"/>
      <BDA bType="Check" name="Check"/>
      <ProtNs type="S451_8-MMS">IEC 61850-8-1:2003</ProtNs>
    </DAType>
    <DAType id="S451_Originator_0">
      <BDA bType="Enum" name="orCat" type="S451_orCat">
        <Val>automatic-station</Val>
      </BDA>
      <BDA bType="Octet64" name="orIdent"/>
    </DAType>
    <DAType id="S451_AnalogValue_0">
      <BDA bType="FLOAT32" name="f"/>
    </DAType>
    <DAType id="S451_Units_LGOS_0">
      <BDA bType="Enum" name="SIUnit" type="S451_SIUnit">
        <Val>s</Val>
      </BDA>
      <BDA bType="Enum" name="multiplier" type="S451_multiplier">
        <Val></Val>
      </BDA>
    </DAType>
    <DAType id="S451_Units_LSVS_1">
      <BDA bType="Enum" name="SIUnit" type="S451_SIUnit">
        <Val>s</Val>
      </BDA>
      <BDA bType="Enum" name="multiplier" type="S451_multiplier">
        <Val>m</Val>
      </BDA>
    </DAType>
    <DAType id="S451_Units_LSVS_0">
      <BDA bType="Enum" name="SIUnit" type="S451_SIUnit">
        <Val>s</Val>
      </BDA>
      <BDA bType="Enum" name="multiplier" type="S451_multiplier">
        <Val></Val>
      </BDA>
    </DAType>
    <DAType id="S451_Vector_0">
      <BDA bType="Struct" name="mag" type="S451_AnalogValue_0"/>
      <BDA bType="Struct" name="ang" type="S451_AnalogValue_0"/>
    </DAType>
    <DAType id="S451_Units_0">
      <BDA bType="Enum" name="SIUnit" type="S451_SIUnit" valKind="RO"/>
      <BDA bType="Enum" name="multiplier" type="S451_multiplier" valKind="RO"/>
    </DAType>
    <DAType id="S451_Vector_1">
      <BDA bType="Struct" name="mag" type="S451_AnalogValue_0"/>
    </DAType>
    <EnumType id="OriginatorCategoryKind">
      <EnumVal desc="not-supported" ord="0">not-supported</EnumVal>
      <EnumVal desc="bay-control" ord="1">bay-control</EnumVal>
      <EnumVal desc="station-control" ord="2">station-control</EnumVal>
      <EnumVal desc="remote-control" ord="3">remote-control</EnumVal>
      <EnumVal desc="automatic-bay" ord="4">automatic-bay</EnumVal>
      <EnumVal desc="automatic-station" ord="5">automatic-station</EnumVal>
      <EnumVal desc="automatic-remote" ord="6">automatic-remote</EnumVal>
      <EnumVal desc="maintenance" ord="7">maintenance</EnumVal>
      <EnumVal desc="process" ord="8">process</EnumVal>
    </EnumType>
    <EnumType id="CtlModelKind">
      <EnumVal desc="status-only" ord="0">status-only</EnumVal>
      <EnumVal desc="direct-with-normal-security" ord="1">direct-with-normal-security</EnumVal>
      <EnumVal desc="sbo-with-normal-security" ord="2">sbo-with-normal-security</EnumVal>
      <EnumVal desc="direct-with-enhanced-security" ord="3">direct-with-enhanced-security</EnumVal>
      <EnumVal desc="sbo-with-enhanced-security" ord="4">sbo-with-enhanced-security</EnumVal>
    </EnumType>
    <EnumType id="HealthEnum">
      <EnumVal ord="1">Ok</EnumVal>
      <EnumVal ord="2">Warning</EnumVal>
      <EnumVal ord="3">Alarm</EnumVal>
    </EnumType>
    <EnumType id="BehEnum">
      <EnumVal ord="1">on</EnumVal>
      <EnumVal ord="2">blocked</EnumVal>
      <EnumVal ord="3">test</EnumVal>
      <EnumVal ord="4">test/blocked</EnumVal>
      <EnumVal ord="5">off</EnumVal>
    </EnumType>
    <EnumType id="SIUnitKind$_533b3f06-924f-4ad4-b0a4-b04e0b6a30c6">
      <EnumVal ord="1"></EnumVal>
      <EnumVal ord="2">m</EnumVal>
      <EnumVal ord="3">kg</EnumVal>
      <EnumVal ord="4">s</EnumVal>
      <EnumVal ord="5">A</EnumVal>
      <EnumVal ord="6">K</EnumVal>
      <EnumVal ord="7">mol</EnumVal>
      <EnumVal ord="8">cd</EnumVal>
      <EnumVal ord="9">deg</EnumVal>
      <EnumVal ord="10">rad</EnumVal>
      <EnumVal ord="11">sr</EnumVal>
      <EnumVal ord="21">Gy</EnumVal>
      <EnumVal ord="22">Bq</EnumVal>
      <EnumVal ord="23">°C</EnumVal>
      <EnumVal ord="24">Sv</EnumVal>
      <EnumVal ord="25">F</EnumVal>
      <EnumVal ord="26">C</EnumVal>
      <EnumVal ord="27">S</EnumVal>
      <EnumVal ord="28">H</EnumVal>
      <EnumVal ord="29">V</EnumVal>
      <EnumVal ord="30">ohm</EnumVal>
      <EnumVal ord="31">J</EnumVal>
      <EnumVal ord="32">N</EnumVal>
      <EnumVal ord="33">Hz</EnumVal>
      <EnumVal ord="34">lx</EnumVal>
      <EnumVal ord="35">Lm</EnumVal>
      <EnumVal ord="36">Wb</EnumVal>
      <EnumVal ord="37">T</EnumVal>
      <EnumVal ord="38">W</EnumVal>
      <EnumVal ord="39">Pa</EnumVal>
      <EnumVal ord="41">m²</EnumVal>
      <EnumVal ord="42">m³</EnumVal>
      <EnumVal ord="43">m/s</EnumVal>
      <EnumVal ord="44">m/s²</EnumVal>
      <EnumVal ord="45">m³/s</EnumVal>
      <EnumVal ord="46">m/m³</EnumVal>
      <EnumVal ord="47">M</EnumVal>
      <EnumVal ord="48">kg/m³</EnumVal>
      <EnumVal ord="49">m²/s</EnumVal>
      <EnumVal ord="50">W/m K</EnumVal>
      <EnumVal ord="51">J/K</EnumVal>
      <EnumVal ord="52">ppm</EnumVal>
      <EnumVal ord="53">1/s</EnumVal>
      <EnumVal ord="54">rad/s</EnumVal>
      <EnumVal ord="55">W/m²</EnumVal>
      <EnumVal ord="56">J/m²</EnumVal>
      <EnumVal ord="57">S/m</EnumVal>
      <EnumVal ord="58">K/s</EnumVal>
      <EnumVal ord="59">Pa/s</EnumVal>
      <EnumVal ord="60">J/kg K</EnumVal>
      <EnumVal ord="61">VA</EnumVal>
      <EnumVal ord="62">Watts</EnumVal>
      <EnumVal ord="63">VAr</EnumVal>
      <EnumVal ord="64">phi</EnumVal>
      <EnumVal ord="65">cos(phi)</EnumVal>
      <EnumVal ord="66">Vs</EnumVal>
      <EnumVal ord="67">V²</EnumVal>
      <EnumVal ord="68">As</EnumVal>
      <EnumVal ord="69">A²</EnumVal>
      <EnumVal ord="70">A²t</EnumVal>
      <EnumVal ord="71">VAh</EnumVal>
      <EnumVal ord="72">Wh</EnumVal>
      <EnumVal ord="73">VArh</EnumVal>
      <EnumVal ord="74">V/Hz</EnumVal>
      <EnumVal ord="75">Hz/s</EnumVal>
      <EnumVal ord="76">char</EnumVal>
      <EnumVal ord="77">char/s</EnumVal>
      <EnumVal ord="78">kgm²</EnumVal>
      <EnumVal ord="79">dB</EnumVal>
      <EnumVal ord="80">J/Wh</EnumVal>
      <EnumVal ord="81">W/s</EnumVal>
      <EnumVal ord="82">l/s</EnumVal>
      <EnumVal ord="83">dBm</EnumVal>
    </EnumType>
    <EnumType id="MultiplierKind">
      <EnumVal desc="y" ord="-24">y</EnumVal>
      <EnumVal desc="z" ord="-21">z</EnumVal>
      <EnumVal desc="a" ord="-18">a</EnumVal>
      <EnumVal desc="f" ord="-15">f</EnumVal>
      <EnumVal desc="p" ord="-12">p</EnumVal>
      <EnumVal desc="n" ord="-9">n</EnumVal>
      <EnumVal desc="µ" ord="-6">µ</EnumVal>
      <EnumVal desc="m" ord="-3">m</EnumVal>
      <EnumVal desc="c" ord="-2">c</EnumVal>
      <EnumVal desc="d" ord="-1">d</EnumVal>
      <EnumVal desc="" ord="0"></EnumVal>
      <EnumVal desc="da" ord="1">da</EnumVal>
      <EnumVal desc="h" ord="2">h</EnumVal>
      <EnumVal desc="k" ord="3">k</EnumVal>
      <EnumVal desc="M" ord="6">M</EnumVal>
      <EnumVal desc="G" ord="9">G</EnumVal>
      <EnumVal desc="T" ord="12">T</EnumVal>
      <EnumVal desc="P" ord="15">P</EnumVal>
      <EnumVal desc="E" ord="18">E</EnumVal>
      <EnumVal desc="Z" ord="21">Z</EnumVal>
      <EnumVal desc="Y" ord="24">Y</EnumVal>
    </EnumType>
    <EnumType id="ModEnum">
      <EnumVal ord="1">on</EnumVal>
      <EnumVal ord="2">blocked</EnumVal>
      <EnumVal ord="3">test</EnumVal>
      <EnumVal ord="4">test/blocked</EnumVal>
      <EnumVal ord="5">off</EnumVal>
    </EnumType>
    <EnumType id="FaultDirectionKind">
      <EnumVal desc="unknown" ord="0">unknown</EnumVal>
      <EnumVal desc="forward" ord="1">forward</EnumVal>
      <EnumVal desc="backward" ord="2">backward</EnumVal>
      <EnumVal desc="both" ord="3">both</EnumVal>
    </EnumType>
    <EnumType id="SboClassKind">
      <EnumVal desc="operate-once" ord="0">operate-once</EnumVal>
      <EnumVal desc="operate-many" ord="1">operate-many</EnumVal>
    </EnumType>
    <EnumType id="S451_Health">
      <EnumVal ord="1">Ok</EnumVal>
      <EnumVal ord="2">Warning</EnumVal>
      <EnumVal ord="3">Alarm</EnumVal>
    </EnumType>
    <EnumType id="S451_orCat">
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
    <EnumType id="S451_ctlModel">
      <EnumVal ord="0">status-only</EnumVal>
      <EnumVal ord="1">direct-with-normal-security</EnumVal>
      <EnumVal ord="2">sbo-with-normal-security</EnumVal>
      <EnumVal ord="3">direct-with-enhanced-security</EnumVal>
      <EnumVal ord="4">sbo-with-enhanced-security</EnumVal>
    </EnumType>
    <EnumType id="S451_Beh">
      <EnumVal ord="1">on</EnumVal>
      <EnumVal ord="2">blocked</EnumVal>
      <EnumVal ord="3">test</EnumVal>
      <EnumVal ord="4">test/blocked</EnumVal>
      <EnumVal ord="5">off</EnumVal>
    </EnumType>
    <EnumType id="S451_GOOSEErrSt">
      <EnumVal ord="0">OK</EnumVal>
      <EnumVal ord="1">Device Disabled</EnumVal>
      <EnumVal ord="2">ConfRev Mismatch</EnumVal>
      <EnumVal ord="3">Needs Commissioning</EnumVal>
      <EnumVal ord="4">Message Corrupted</EnumVal>
      <EnumVal ord="5">TTL Expired</EnumVal>
      <EnumVal ord="6">Out of Sequence</EnumVal>
    </EnumType>
    <EnumType id="S451_SIUnit">
      <EnumVal ord="1"></EnumVal>
      <EnumVal ord="2">m</EnumVal>
      <EnumVal ord="3">kg</EnumVal>
      <EnumVal ord="4">s</EnumVal>
      <EnumVal ord="5">A</EnumVal>
      <EnumVal ord="6">K</EnumVal>
      <EnumVal ord="7">mol</EnumVal>
      <EnumVal ord="8">cd</EnumVal>
      <EnumVal ord="9">deg</EnumVal>
      <EnumVal ord="10">rad</EnumVal>
      <EnumVal ord="11">sr</EnumVal>
      <EnumVal ord="21">Gy</EnumVal>
      <EnumVal ord="22">Bq</EnumVal>
      <EnumVal ord="23">°C</EnumVal>
      <EnumVal ord="24">Sv</EnumVal>
      <EnumVal ord="25">F</EnumVal>
      <EnumVal ord="26">C</EnumVal>
      <EnumVal ord="27">S</EnumVal>
      <EnumVal ord="28">H</EnumVal>
      <EnumVal ord="29">V</EnumVal>
      <EnumVal ord="30">ohm</EnumVal>
      <EnumVal ord="31">J</EnumVal>
      <EnumVal ord="32">N</EnumVal>
      <EnumVal ord="33">Hz</EnumVal>
      <EnumVal ord="34">lx</EnumVal>
      <EnumVal ord="35">Lm</EnumVal>
      <EnumVal ord="36">Wb</EnumVal>
      <EnumVal ord="37">T</EnumVal>
      <EnumVal ord="38">W</EnumVal>
      <EnumVal ord="39">Pa</EnumVal>
      <EnumVal ord="41">m²</EnumVal>
      <EnumVal ord="42">m³</EnumVal>
      <EnumVal ord="43">m/s</EnumVal>
      <EnumVal ord="44">m/s²</EnumVal>
      <EnumVal ord="45">m³/s</EnumVal>
      <EnumVal ord="46">m/m³</EnumVal>
      <EnumVal ord="47">M</EnumVal>
      <EnumVal ord="48">kg/m³</EnumVal>
      <EnumVal ord="49">m²/s</EnumVal>
      <EnumVal ord="50">W/m K</EnumVal>
      <EnumVal ord="51">J/K</EnumVal>
      <EnumVal ord="52">ppm</EnumVal>
      <EnumVal ord="53">1/s</EnumVal>
      <EnumVal ord="54">rad/s</EnumVal>
      <EnumVal ord="61">VA</EnumVal>
      <EnumVal ord="62">Watts</EnumVal>
      <EnumVal ord="63">VAr</EnumVal>
      <EnumVal ord="64">phi</EnumVal>
      <EnumVal ord="65">cos(phi)</EnumVal>
      <EnumVal ord="66">Vs</EnumVal>
      <EnumVal ord="67">V²</EnumVal>
      <EnumVal ord="68">As</EnumVal>
      <EnumVal ord="69">A²</EnumVal>
      <EnumVal ord="70">A²t</EnumVal>
      <EnumVal ord="71">VAh</EnumVal>
      <EnumVal ord="72">Wh</EnumVal>
      <EnumVal ord="73">VArh</EnumVal>
      <EnumVal ord="74">V/Hz</EnumVal>
    </EnumType>
    <EnumType id="S451_multiplier">
      <EnumVal ord="-24">y</EnumVal>
      <EnumVal ord="-21">z</EnumVal>
      <EnumVal ord="-18">a</EnumVal>
      <EnumVal ord="-15">f</EnumVal>
      <EnumVal ord="-12">p</EnumVal>
      <EnumVal ord="-9">n</EnumVal>
      <EnumVal ord="-6">µ</EnumVal>
      <EnumVal ord="-3">m</EnumVal>
      <EnumVal ord="-2">c</EnumVal>
      <EnumVal ord="-1">d</EnumVal>
      <EnumVal ord="0"></EnumVal>
      <EnumVal ord="1">da</EnumVal>
      <EnumVal ord="2">h</EnumVal>
      <EnumVal ord="3">k</EnumVal>
      <EnumVal ord="6">M</EnumVal>
      <EnumVal ord="9">G</EnumVal>
      <EnumVal ord="12">T</EnumVal>
      <EnumVal ord="15">P</EnumVal>
      <EnumVal ord="18">E</EnumVal>
      <EnumVal ord="21">Z</EnumVal>
      <EnumVal ord="24">Y</EnumVal>
    </EnumType>
    <EnumType id="S451_SVErrSt">
      <EnumVal ord="0">OK</EnumVal>
      <EnumVal ord="1">Device Disabled</EnumVal>
      <EnumVal ord="2">Message Corrupted</EnumVal>
      <EnumVal ord="3">ASDU Error</EnumVal>
      <EnumVal ord="4">SVID Range Error</EnumVal>
      <EnumVal ord="5">SmpCnt Range Error</EnumVal>
      <EnumVal ord="6">ConfRev Mismatch</EnumVal>
      <EnumVal ord="7">SmpSynch Mismatch</EnumVal>
      <EnumVal ord="8">PDU Length Error</EnumVal>
      <EnumVal ord="9">SV Stream Lost</EnumVal>
      <EnumVal ord="10">Invalid Quality</EnumVal>
      <EnumVal ord="11">Channel Delay Exceeded</EnumVal>
      <EnumVal ord="12">Interpolated</EnumVal>
      <EnumVal ord="13">Out of Sequence</EnumVal>
      <EnumVal ord="14">Test Sample(s) Received</EnumVal>
    </EnumType>
    <EnumType id="S451_dirGeneral">
      <EnumVal ord="0">unknown</EnumVal>
      <EnumVal ord="1">forward</EnumVal>
      <EnumVal ord="2">backward</EnumVal>
      <EnumVal ord="3">both</EnumVal>
    </EnumType>
    <EnumType id="S451_CBOpCap">
      <EnumVal ord="1">None</EnumVal>
      <EnumVal ord="2">Open</EnumVal>
      <EnumVal ord="3">Close-Open</EnumVal>
      <EnumVal ord="4">Open-Close-Open</EnumVal>
      <EnumVal ord="5">Close-Open-Close-Open</EnumVal>
    </EnumType>
    <EnumType id="S451_SwTyp">
      <EnumVal ord="1">Load Break</EnumVal>
      <EnumVal ord="2">Disconnector</EnumVal>
      <EnumVal ord="3">Earthing Switch</EnumVal>
      <EnumVal ord="4">High Speed Earthing Switch</EnumVal>
    </EnumType>
    <EnumType id="S451_SwOpCap">
      <EnumVal ord="1">None</EnumVal>
      <EnumVal ord="2">Open</EnumVal>
      <EnumVal ord="3">Close</EnumVal>
      <EnumVal ord="4">Open and Close</EnumVal>
    </EnumType>
    <EnumType id="S451_seqT">
      <EnumVal ord="0">pos-neg-zero</EnumVal>
      <EnumVal ord="1">dir-quad-zero</EnumVal>
    </EnumType>
    <EnumType id="S451_Mod">
      <EnumVal ord="1">on</EnumVal>
      <EnumVal ord="2">blocked</EnumVal>
      <EnumVal ord="3">test</EnumVal>
      <EnumVal ord="4">test/blocked</EnumVal>
      <EnumVal ord="5">off</EnumVal>
    </EnumType>
  </DataTypeTemplates>
</SCL>