<?xml version="1.0" encoding="UTF-8"?>
<!--This file is generated using Kalkitech SCL Manager-->
<SCL xmlns:sxy="http://www.iec.ch/61850/2003/SCLcoordinates" version="2007" revision="B" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://www.iec.ch/61850/2003/SCL">
  <Header id="project1" version="V 0.0" revision="R 001" toolID="Kalkitech SCL Manager" nameStructure="IEDName">
    <History>
      <Hitem version="V 0.0" revision="R 001" when="Wed Aug 19 12:04:58 CEST 2015" who="System" what="History file created" why="History reset" />
    </History>
  </Header>
  <Substation name="AA1" desc="Brussels" sxy:x="4" sxy:y="4">
    <PowerTransformer name="TA1" type="PTR" sxy:y="8">
      <TransformerWinding name="W1" type="PTW">
        <Terminal name="TW" connectivityNode="AA1/D1/Q01/L12" substationName="AA1" voltageLevelName="D1" bayName="Q01" cNodeName="L12" />
      </TransformerWinding>
      <TransformerWinding name="W2" type="PTW">
        <Terminal name="TW" connectivityNode="AA1/H1/Q01/L12" substationName="AA1" voltageLevelName="H1" bayName="Q01" cNodeName="L12" />
      </TransformerWinding>
    </PowerTransformer>
    <PowerTransformer name="TA2" type="PTR" sxy:x="19" sxy:y="8">
      <TransformerWinding name="W1" type="PTW">
        <Terminal name="TW" connectivityNode="AA1/D1/Q04/L12" substationName="AA1" voltageLevelName="D1" bayName="Q04" cNodeName="L12" />
      </TransformerWinding>
      <TransformerWinding name="W2" type="PTW">
        <Terminal name="TW" connectivityNode="AA1/H1/Q02/L12" substationName="AA1" voltageLevelName="H1" bayName="Q02" cNodeName="L12" />
      </TransformerWinding>
    </PowerTransformer>
    <VoltageLevel name="D1">
      <Voltage unit="V" multiplier="k">380</Voltage>
      <Bay name="BB1">
        <ConnectivityNode name="L1" pathName="AA1/D1/BB1/L1" />
      </Bay>
      <Bay name="BB2" sxy:y="1">
        <ConnectivityNode name="L1" pathName="AA1/D1/BB2/L1" />
      </Bay>
      <Bay name="Q01" sxy:y="2">
        <LNode iedName="None" ldInst="BF" lnClass="RBRF" lnType="rbrf_hlx" lnInst="1" prefix="" />
        <LNode iedName="None" ldInst="MEAS" lnClass="MMXU" lnType="mmxu_hlx" lnInst="1" prefix="" />
        <LNode iedName="None" ldInst="PROT" lnClass="PDIF" lnType="pdif_hlx" lnInst="1" prefix="" />
        <LNode iedName="None" ldInst="PROT" lnClass="PTOC" lnType="ptoc_hlx" lnInst="1" prefix="" />
        <LNode iedName="None" ldInst="PROT" lnClass="PTRC" lnType="ptrc_hlx" lnInst="1" prefix="" />
        <LNode iedName="None" ldInst="TFC" lnClass="ATCC" lnType="atcc_hlx" lnInst="1" prefix="" />
        <LNode iedName="None" ldInst="TFC" lnClass="YPTR" lnType="yptr_hlx" lnInst="1" prefix="" />
        <LNode iedName="None" ldInst="TFC" lnClass="YLTC" lnType="yltc_hlx" lnInst="1" prefix="" />
        <ConductingEquipment name="QB1" type="DIS">
          <LNode iedName="None" ldInst="DISQB1" lnClass="XSWI" lnType="xswi" lnInst="1" prefix="QB1" />
          <LNode iedName="None" ldInst="DISQB1" lnClass="CSWI" lnType="cswi" lnInst="1" prefix="QB1" />
          <LNode iedName="None" ldInst="DISQB1" lnClass="CILO" lnType="cilo" lnInst="1" prefix="QB1" />
          <Terminal name="T1" connectivityNode="AA1/D1/Q01/L1" substationName="AA1" voltageLevelName="D1" bayName="Q01" cNodeName="L1" />
          <Terminal name="T2" connectivityNode="AA1/D1/BB1/L1" substationName="AA1" voltageLevelName="D1" bayName="BB1" cNodeName="L1" />
        </ConductingEquipment>
        <ConductingEquipment name="QB2" type="DIS" sxy:x="2">
          <LNode iedName="None" ldInst="DISQB2" lnClass="XSWI" lnType="xswi" lnInst="2" prefix="QB2" />
          <LNode iedName="None" ldInst="DISQB2" lnClass="CSWI" lnType="cswi" lnInst="2" prefix="QB2" />
          <LNode iedName="None" ldInst="DISQB2" lnClass="CILO" lnType="cilo" lnInst="2" prefix="QB2" />
          <Terminal name="T1" connectivityNode="AA1/D1/Q01/L1" substationName="AA1" voltageLevelName="D1" bayName="Q01" cNodeName="L1" />
          <Terminal name="T2" connectivityNode="AA1/D1/BB2/L1" substationName="AA1" voltageLevelName="D1" bayName="BB2" cNodeName="L1" />
        </ConductingEquipment>
        <ConductingEquipment name="BC1" type="CTR" sxy:y="3">
          <Terminal name="T1" connectivityNode="AA1/D1/Q01/L1" substationName="AA1" voltageLevelName="D1" bayName="Q01" cNodeName="L1" />
          <Terminal name="T2" connectivityNode="AA1/D1/Q01/L11" substationName="AA1" voltageLevelName="D1" bayName="Q01" cNodeName="L11" />
          <SubEquipment name="L1" phase="A">
            <LNode iedName="None" ldInst="CTRBC1" lnClass="TCTR" lnType="tctr" lnInst="1" prefix="A" />
          </SubEquipment>
          <SubEquipment name="L2" phase="B">
            <LNode iedName="None" ldInst="CTRBC1" lnClass="TCTR" lnType="tctr" lnInst="2" prefix="B" />
          </SubEquipment>
          <SubEquipment name="L3" phase="C">
            <LNode iedName="None" ldInst="CTRBC1" lnClass="TCTR" lnType="tctr" lnInst="3" prefix="C" />
          </SubEquipment>
          <SubEquipment name="L4" phase="N" />
        </ConductingEquipment>
        <ConductingEquipment name="QA1" type="CBR" sxy:y="4">
          <LNode iedName="None" ldInst="CBRQA1" lnClass="XCBR" lnType="xcbr" lnInst="1" prefix="QA1" />
          <LNode iedName="None" ldInst="CBRQA1" lnClass="CSWI" lnType="cswi" lnInst="3" prefix="QA1" />
          <LNode iedName="None" ldInst="CBRQA1" lnClass="CILO" lnType="cilo" lnInst="3" prefix="QA1" />
          <Terminal name="T1" connectivityNode="AA1/D1/Q01/L11" substationName="AA1" voltageLevelName="D1" bayName="Q01" cNodeName="L11" />
          <Terminal name="T2" connectivityNode="AA1/D1/Q01/L12" substationName="AA1" voltageLevelName="D1" bayName="Q01" cNodeName="L12" />
        </ConductingEquipment>
        <ConductingEquipment name="QC1" type="DIS" sxy:x="2" sxy:y="2">
          <LNode iedName="None" ldInst="DISQC1" lnClass="XSWI" lnType="xswi" lnInst="3" prefix="QC1" />
          <LNode iedName="None" ldInst="DISQC1" lnClass="CSWI" lnType="cswi" lnInst="4" prefix="QC1" />
          <LNode iedName="None" ldInst="DISQC1" lnClass="CILO" lnType="cilo" lnInst="4" prefix="QC1" />
          <Terminal name="T1" connectivityNode="AA1/D1/Q01/grounded" substationName="AA1" voltageLevelName="D1" bayName="Q01" cNodeName="grounded" />
          <Terminal name="T2" connectivityNode="AA1/D1/Q01/L1" substationName="AA1" voltageLevelName="D1" bayName="Q01" cNodeName="L1" />
        </ConductingEquipment>
        <ConnectivityNode name="grounded" pathName="AA1/D1/Q01/grounded" />
        <ConnectivityNode name="L1" pathName="AA1/D1/Q01/L1" />
        <ConnectivityNode name="L11" pathName="AA1/D1/Q01/L11" />
        <ConnectivityNode name="L12" pathName="AA1/D1/Q01/L12" />
      </Bay>
      <Bay name="Q04" sxy:x="18" sxy:y="2">
        <LNode iedName="None" ldInst="BF" lnClass="RBRF" lnType="rbrf_hlx" lnInst="1" prefix="" />
        <LNode iedName="None" ldInst="MEAS" lnClass="MMXU" lnType="mmxu_hlx" lnInst="1" prefix="" />
        <LNode iedName="None" ldInst="PROT" lnClass="PDIF" lnType="pdif_hlx" lnInst="1" prefix="" />
        <LNode iedName="None" ldInst="PROT" lnClass="PTOC" lnType="ptoc_hlx" lnInst="1" prefix="" />
        <LNode iedName="None" ldInst="PROT" lnClass="PTRC" lnType="ptrc_hlx" lnInst="1" prefix="" />
        <LNode iedName="None" ldInst="TFC" lnClass="ATCC" lnType="atcc_hlx" lnInst="1" prefix="" />
        <LNode iedName="None" ldInst="TFC" lnClass="YPTR" lnType="yptr_hlx" lnInst="1" prefix="" />
        <LNode iedName="None" ldInst="TFC" lnClass="YLTC" lnType="yltc_hlx" lnInst="1" prefix="" />
        <ConductingEquipment name="QC1" type="DIS" sxy:x="3" sxy:y="2">
          <LNode iedName="None" ldInst="DISQC1" lnClass="XSWI" lnType="xswi" lnInst="3" prefix="QC1" />
          <LNode iedName="None" ldInst="DISQC1" lnClass="CSWI" lnType="cswi" lnInst="4" prefix="QC1" />
          <LNode iedName="None" ldInst="DISQC1" lnClass="CILO" lnType="cilo" lnInst="4" prefix="QC1" />
          <Terminal name="T1" connectivityNode="AA1/D1/Q04/grounded" substationName="AA1" voltageLevelName="D1" bayName="Q04" cNodeName="grounded" />
        </ConductingEquipment>
        <ConductingEquipment name="BC1" type="CTR" sxy:y="3">
          <Terminal name="T1" connectivityNode="AA1/D1/Q04/L11" substationName="AA1" voltageLevelName="D1" bayName="Q04" cNodeName="L11" />
          <Terminal name="T2" connectivityNode="AA1/D1/Q04/L1" substationName="AA1" voltageLevelName="D1" bayName="Q04" cNodeName="L1" />
          <SubEquipment name="L1" phase="A">
            <LNode iedName="None" ldInst="CTRBC1" lnClass="TCTR" lnType="tctr" lnInst="1" prefix="A" />
          </SubEquipment>
          <SubEquipment name="L2" phase="B">
            <LNode iedName="None" ldInst="CTRBC1" lnClass="TCTR" lnType="tctr" lnInst="2" prefix="B" />
          </SubEquipment>
          <SubEquipment name="L3" phase="C">
            <LNode iedName="None" ldInst="CTRBC1" lnClass="TCTR" lnType="tctr" lnInst="3" prefix="C" />
          </SubEquipment>
          <SubEquipment name="L4" phase="N" />
        </ConductingEquipment>
        <ConductingEquipment name="QA1" type="CBR" sxy:x="1" sxy:y="4">
          <LNode iedName="None" ldInst="CBRQA1" lnClass="XCBR" lnType="xcbr" lnInst="1" prefix="QA1" />
          <LNode iedName="None" ldInst="CBRQA1" lnClass="CSWI" lnType="cswi" lnInst="3" prefix="QA1" />
          <LNode iedName="None" ldInst="CBRQA1" lnClass="CILO" lnType="cilo" lnInst="3" prefix="QA1" />
          <Terminal name="T1" connectivityNode="AA1/D1/Q04/L11" substationName="AA1" voltageLevelName="D1" bayName="Q04" cNodeName="L11" />
          <Terminal name="T2" connectivityNode="AA1/D1/Q04/L12" substationName="AA1" voltageLevelName="D1" bayName="Q04" cNodeName="L12" />
        </ConductingEquipment>
        <ConductingEquipment name="QB2" type="DIS" sxy:x="3">
          <LNode iedName="None" ldInst="DISQB2" lnClass="XSWI" lnType="xswi" lnInst="2" prefix="QB2" />
          <LNode iedName="None" ldInst="DISQB2" lnClass="CSWI" lnType="cswi" lnInst="2" prefix="QB2" />
          <LNode iedName="None" ldInst="DISQB2" lnClass="CILO" lnType="cilo" lnInst="2" prefix="QB2" />
          <Terminal name="T1" connectivityNode="AA1/D1/BB2/L1" substationName="AA1" voltageLevelName="D1" bayName="BB2" cNodeName="L1" />
        </ConductingEquipment>
        <ConductingEquipment name="QB1" type="DIS">
          <LNode iedName="None" ldInst="DISQB1" lnClass="XSWI" lnType="xswi" lnInst="1" prefix="QB1" />
          <LNode iedName="None" ldInst="DISQB1" lnClass="CSWI" lnType="cswi" lnInst="1" prefix="QB1" />
          <LNode iedName="None" ldInst="DISQB1" lnClass="CILO" lnType="cilo" lnInst="1" prefix="QB1" />
          <Terminal name="T1" connectivityNode="AA1/D1/Q04/L1" substationName="AA1" voltageLevelName="D1" bayName="Q04" cNodeName="L1" />
          <Terminal name="T2" connectivityNode="AA1/D1/BB1/L1" substationName="AA1" voltageLevelName="D1" bayName="BB1" cNodeName="L1" />
        </ConductingEquipment>
        <ConnectivityNode name="grounded" pathName="AA1/D1/Q04/grounded" />
        <ConnectivityNode name="L11" pathName="AA1/D1/Q04/L11" />
        <ConnectivityNode name="L1" pathName="AA1/D1/Q04/L1" />
        <ConnectivityNode name="L12" pathName="AA1/D1/Q04/L12" />
      </Bay>
      <Bay name="Q02" sxy:x="5" sxy:y="2">
        <LNode iedName="TEMPLATE" ldInst="Measurements" lnClass="MMXU" lnType="MMXU_TYPE" lnInst="1" prefix="BCA" />
        <LNode iedName="None" ldInst="PROT" lnClass="PDIS" lnType="pdis_hlx" lnInst="1" prefix="Z1" />
        <LNode iedName="None" ldInst="PROT" lnClass="PDIS" lnType="pdis_hlx" lnInst="2" prefix="Z2" />
        <LNode iedName="None" ldInst="PROT" lnClass="PDIS" lnType="pdis_hlx" lnInst="3" prefix="Z3" />
        <LNode iedName="TEMPLATE" ldInst="Protection" lnClass="PTOC" lnType="PTOC_TYPE" lnInst="1" prefix="" />
        <LNode iedName="None" ldInst="PROT" lnClass="PTRC" lnType="ptrc_hlx" lnInst="1" prefix="" />
        <LNode iedName="None" ldInst="PROT" lnClass="RDIR" lnType="rdir_hlx" lnInst="1" prefix="a67N" />
        <LNode iedName="None" ldInst="BF" lnClass="RBRF" lnType="rbrf_hlx" lnInst="1" prefix="QA1" />
        <ConductingEquipment name="QB1" type="DIS">
          <LNode iedName="None" ldInst="DISQB1" lnClass="XSWI" lnType="xswi" lnInst="1" prefix="QB1" />
          <LNode iedName="None" ldInst="DISQB1" lnClass="CSWI" lnType="cswi" lnInst="1" prefix="QB1" />
          <LNode iedName="None" ldInst="DISQB1" lnClass="CILO" lnType="cilo" lnInst="1" prefix="QB1" />
          <Terminal name="T1" connectivityNode="AA1/D1/Q02/L1" substationName="AA1" voltageLevelName="D1" bayName="Q02" cNodeName="L1" />
          <Terminal name="T2" connectivityNode="AA1/D1/BB1/L1" substationName="AA1" voltageLevelName="D1" bayName="BB1" cNodeName="L1" />
        </ConductingEquipment>
        <ConductingEquipment name="QB2" type="DIS" sxy:x="2">
          <LNode iedName="None" ldInst="DISQB2" lnClass="XSWI" lnType="xswi" lnInst="2" prefix="QB2" />
          <LNode iedName="None" ldInst="DISQB2" lnClass="CSWI" lnType="cswi" lnInst="2" prefix="QB2" />
          <LNode iedName="None" ldInst="DISQB2" lnClass="CILO" lnType="cilo" lnInst="2" prefix="QB2" />
          <Terminal name="T1" connectivityNode="AA1/D1/Q02/L1" substationName="AA1" voltageLevelName="D1" bayName="Q02" cNodeName="L1" />
          <Terminal name="T2" connectivityNode="AA1/D1/BB2/L1" substationName="AA1" voltageLevelName="D1" bayName="BB2" cNodeName="L1" />
        </ConductingEquipment>
        <ConductingEquipment name="QC1" type="DIS" sxy:x="2" sxy:y="2">
          <LNode iedName="None" ldInst="DISQC1" lnClass="XSWI" lnType="xswi" lnInst="3" prefix="QC1" />
          <LNode iedName="None" ldInst="DISQC1" lnClass="CSWI" lnType="cswi" lnInst="3" prefix="QC1" />
          <LNode iedName="None" ldInst="DISQC1" lnClass="CILO" lnType="cilo" lnInst="3" prefix="QC1" />
          <Terminal name="T1" connectivityNode="AA1/D1/Q02/grounded" substationName="AA1" voltageLevelName="D1" bayName="Q02" cNodeName="grounded" />
          <Terminal name="T2" connectivityNode="AA1/D1/Q02/L1" substationName="AA1" voltageLevelName="D1" bayName="Q02" cNodeName="L1" />
        </ConductingEquipment>
        <ConductingEquipment name="QA1" type="CBR" sxy:y="3">
          <LNode iedName="TEMPLATE1" ldInst="1" lnClass="XCBR" lnType="XCBR_TYPE" lnInst="1" prefix="" />
          <LNode iedName="None" ldInst="CBRQA1" lnClass="CSWI" lnType="cswi" lnInst="4" prefix="QA1" />
          <LNode iedName="None" ldInst="CBRQA1" lnClass="CILO" lnType="cilo" lnInst="4" prefix="QA1" />
          <LNode iedName="None" ldInst="CBRQA1" lnClass="RSYN" lnType="rsyn_hlx" lnInst="1" prefix="QA1" />
          <LNode iedName="None" ldInst="CBRQA1" lnClass="RREC" lnType="rrec_hlx" lnInst="1" prefix="QA1" />
          <Terminal name="T1" connectivityNode="AA1/D1/Q02/L1" substationName="AA1" voltageLevelName="D1" bayName="Q02" cNodeName="L1" />
          <Terminal name="T2" connectivityNode="AA1/D1/Q02/L11" substationName="AA1" voltageLevelName="D1" bayName="Q02" cNodeName="L11" />
        </ConductingEquipment>
        <ConductingEquipment name="BC1" type="CTR" sxy:y="5">
          <Terminal name="T1" connectivityNode="AA1/D1/Q02/L11" substationName="AA1" voltageLevelName="D1" bayName="Q02" cNodeName="L11" />
          <Terminal name="T2" connectivityNode="AA1/D1/Q02/L12" substationName="AA1" voltageLevelName="D1" bayName="Q02" cNodeName="L12" />
          <SubEquipment name="L1" phase="A">
            <LNode iedName="None" ldInst="CTRBC1" lnClass="TCTR" lnType="tctr" lnInst="1" prefix="A" />
          </SubEquipment>
          <SubEquipment name="L2" phase="B">
            <LNode iedName="None" ldInst="CTRBC1" lnClass="TCTR" lnType="tctr" lnInst="2" prefix="B" />
          </SubEquipment>
          <SubEquipment name="L3" phase="C">
            <LNode iedName="None" ldInst="CTRBC1" lnClass="TCTR" lnType="tctr" lnInst="3" prefix="C" />
          </SubEquipment>
          <SubEquipment name="L4" phase="N" />
        </ConductingEquipment>
        <ConductingEquipment name="QB9" type="DIS" sxy:y="6">
          <LNode iedName="None" ldInst="DISQB9" lnClass="XSWI" lnType="xswi" lnInst="4" prefix="QB9" />
          <LNode iedName="None" ldInst="DISQB9" lnClass="CSWI" lnType="cswi" lnInst="5" prefix="QB9" />
          <LNode iedName="None" ldInst="DISQB9" lnClass="CILO" lnType="cilo" lnInst="5" prefix="QB9" />
          <Terminal name="T1" connectivityNode="AA1/D1/Q02/L12" substationName="AA1" voltageLevelName="D1" bayName="Q02" cNodeName="L12" />
          <Terminal name="T2" connectivityNode="AA1/D1/Q02/L13" substationName="AA1" voltageLevelName="D1" bayName="Q02" cNodeName="L13" />
        </ConductingEquipment>
        <ConductingEquipment name="QC9" type="DIS" sxy:x="2" sxy:y="8">
          <LNode iedName="None" ldInst="DISQC9" lnClass="XSWI" lnType="xswi" lnInst="5" prefix="QC9" />
          <LNode iedName="None" ldInst="DISQC9" lnClass="CSWI" lnType="cswi" lnInst="6" prefix="QC9" />
          <LNode iedName="None" ldInst="DISQC9" lnClass="CILO" lnType="cilo" lnInst="6" prefix="QC9" />
          <Terminal name="T1" connectivityNode="AA1/D1/Q02/grounded" substationName="AA1" voltageLevelName="D1" bayName="Q02" cNodeName="grounded" />
          <Terminal name="T2" connectivityNode="AA1/D1/Q02/L13" substationName="AA1" voltageLevelName="D1" bayName="Q02" cNodeName="L13" />
        </ConductingEquipment>
        <ConductingEquipment name="BA1" type="VTR" sxy:x="2" sxy:y="10">
          <Terminal name="T1" connectivityNode="AA1/D1/Q02/L13" substationName="AA1" voltageLevelName="D1" bayName="Q02" cNodeName="L13" />
          <SubEquipment name="L1" phase="A">
            <LNode iedName="None" ldInst="VTRBA1" lnClass="TVTR" lnType="tvtr" lnInst="1" prefix="A" />
          </SubEquipment>
          <SubEquipment name="L2" phase="B">
            <LNode iedName="None" ldInst="VTRBA1" lnClass="TVTR" lnType="tvtr" lnInst="2" prefix="B" />
          </SubEquipment>
          <SubEquipment name="L3" phase="C">
            <LNode iedName="None" ldInst="VTRBA1" lnClass="TVTR" lnType="tvtr" lnInst="3" prefix="C" />
          </SubEquipment>
          <SubEquipment name="L4" phase="N" />
        </ConductingEquipment>
        <ConductingEquipment name="OHL Gent" type="IFL" sxy:y="10">
          <Terminal name="T1" connectivityNode="AA1/D1/Q02/L13" substationName="AA1" voltageLevelName="D1" bayName="Q02" cNodeName="L13" />
        </ConductingEquipment>
        <ConnectivityNode name="grounded" pathName="AA1/D1/Q02/grounded" />
        <ConnectivityNode name="L1" pathName="AA1/D1/Q02/L1" />
        <ConnectivityNode name="L11" pathName="AA1/D1/Q02/L11" />
        <ConnectivityNode name="L12" pathName="AA1/D1/Q02/L12" />
        <ConnectivityNode name="L13" pathName="AA1/D1/Q02/L13" />
      </Bay>
      <Bay name="Q03" sxy:x="13" sxy:y="2">
        <LNode iedName="None" ldInst="MEAS" lnClass="MMXU" lnType="mmxu_hlx" lnInst="1" prefix="" />
        <LNode iedName="None" ldInst="PROT" lnClass="PDIS" lnType="pdis_hlx" lnInst="1" prefix="Z1" />
        <LNode iedName="None" ldInst="PROT" lnClass="PDIS" lnType="pdis_hlx" lnInst="2" prefix="Z2" />
        <LNode iedName="None" ldInst="PROT" lnClass="PDIS" lnType="pdis_hlx" lnInst="3" prefix="Z3" />
        <LNode iedName="None" ldInst="PROT" lnClass="PTOC" lnType="ptoc_hlx" lnInst="1" prefix="a67N" />
        <LNode iedName="None" ldInst="PROT" lnClass="PTRC" lnType="ptrc_hlx" lnInst="1" prefix="" />
        <LNode iedName="None" ldInst="PROT" lnClass="RDIR" lnType="rdir_hlx" lnInst="1" prefix="a67N" />
        <LNode iedName="None" ldInst="BF" lnClass="RBRF" lnType="rbrf_hlx" lnInst="1" prefix="QA1" />
        <ConductingEquipment name="QA1" type="CBR" sxy:y="3">
          <LNode iedName="None" ldInst="CBRQA1" lnClass="XCBR" lnType="xcbr" lnInst="1" prefix="QA1" />
          <LNode iedName="None" ldInst="CBRQA1" lnClass="CSWI" lnType="cswi" lnInst="4" prefix="QA1" />
          <LNode iedName="None" ldInst="CBRQA1" lnClass="CILO" lnType="cilo" lnInst="4" prefix="QA1" />
          <LNode iedName="None" ldInst="CBRQA1" lnClass="RSYN" lnType="rsyn_hlx" lnInst="1" prefix="QA1" />
          <LNode iedName="None" ldInst="CBRQA1" lnClass="RREC" lnType="rrec_hlx" lnInst="1" prefix="QA1" />
          <Terminal name="T1" connectivityNode="AA1/D1/Q03/L1" substationName="AA1" voltageLevelName="D1" bayName="Q03" cNodeName="L1" />
          <Terminal name="T2" connectivityNode="AA1/D1/Q03/L11" substationName="AA1" voltageLevelName="D1" bayName="Q03" cNodeName="L11" />
        </ConductingEquipment>
        <ConductingEquipment name="QB1" type="DIS">
          <LNode iedName="None" ldInst="DISQB1" lnClass="XSWI" lnType="xswi" lnInst="1" prefix="QB1" />
          <LNode iedName="None" ldInst="DISQB1" lnClass="CSWI" lnType="cswi" lnInst="1" prefix="QB1" />
          <LNode iedName="None" ldInst="DISQB1" lnClass="CILO" lnType="cilo" lnInst="1" prefix="QB1" />
          <Terminal name="T1" connectivityNode="AA1/D1/Q03/L1" substationName="AA1" voltageLevelName="D1" bayName="Q03" cNodeName="L1" />
          <Terminal name="T2" connectivityNode="AA1/D1/BB1/L1" substationName="AA1" voltageLevelName="D1" bayName="BB1" cNodeName="L1" />
        </ConductingEquipment>
        <ConductingEquipment name="OHL Namur" type="IFL" sxy:y="10">
          <Terminal name="T1" connectivityNode="AA1/D1/Q03/L13" substationName="AA1" voltageLevelName="D1" bayName="Q03" cNodeName="L13" />
        </ConductingEquipment>
        <ConductingEquipment name="QC9" type="DIS" sxy:x="2" sxy:y="8">
          <LNode iedName="None" ldInst="DISQC9" lnClass="XSWI" lnType="xswi" lnInst="5" prefix="QC9" />
          <LNode iedName="None" ldInst="DISQC9" lnClass="CSWI" lnType="cswi" lnInst="6" prefix="QC9" />
          <LNode iedName="None" ldInst="DISQC9" lnClass="CILO" lnType="cilo" lnInst="6" prefix="QC9" />
          <Terminal name="T1" connectivityNode="AA1/D1/Q03/grounded" substationName="AA1" voltageLevelName="D1" bayName="Q03" cNodeName="grounded" />
        </ConductingEquipment>
        <ConductingEquipment name="QC1" type="DIS" sxy:x="2" sxy:y="2">
          <LNode iedName="None" ldInst="DISQC1" lnClass="XSWI" lnType="xswi" lnInst="3" prefix="QC1" />
          <LNode iedName="None" ldInst="DISQC1" lnClass="CSWI" lnType="cswi" lnInst="3" prefix="QC1" />
          <LNode iedName="None" ldInst="DISQC1" lnClass="CILO" lnType="cilo" lnInst="3" prefix="QC1" />
          <Terminal name="T1" connectivityNode="AA1/D1/Q03/grounded" substationName="AA1" voltageLevelName="D1" bayName="Q03" cNodeName="grounded" />
        </ConductingEquipment>
        <ConductingEquipment name="BA1" type="VTR" sxy:x="2" sxy:y="10">
          <SubEquipment name="L1" phase="A">
            <LNode iedName="None" ldInst="VTRBA1" lnClass="TVTR" lnType="tvtr" lnInst="1" prefix="A" />
          </SubEquipment>
          <SubEquipment name="L2" phase="B">
            <LNode iedName="None" ldInst="VTRBA1" lnClass="TVTR" lnType="tvtr" lnInst="2" prefix="B" />
          </SubEquipment>
          <SubEquipment name="L3" phase="C">
            <LNode iedName="None" ldInst="VTRBA1" lnClass="TVTR" lnType="tvtr" lnInst="3" prefix="C" />
          </SubEquipment>
          <SubEquipment name="L4" phase="N" />
        </ConductingEquipment>
        <ConductingEquipment name="QB2" type="DIS" sxy:x="2">
          <LNode iedName="None" ldInst="DISQB2" lnClass="XSWI" lnType="xswi" lnInst="2" prefix="QB2" />
          <LNode iedName="None" ldInst="DISQB2" lnClass="CSWI" lnType="cswi" lnInst="2" prefix="QB2" />
          <LNode iedName="None" ldInst="DISQB2" lnClass="CILO" lnType="cilo" lnInst="2" prefix="QB2" />
          <Terminal name="T1" connectivityNode="AA1/D1/BB2/L1" substationName="AA1" voltageLevelName="D1" bayName="BB2" cNodeName="L1" />
        </ConductingEquipment>
        <ConductingEquipment name="QB9" type="DIS" sxy:y="6">
          <LNode iedName="None" ldInst="DISQB9" lnClass="XSWI" lnType="xswi" lnInst="4" prefix="QB9" />
          <LNode iedName="None" ldInst="DISQB9" lnClass="CSWI" lnType="cswi" lnInst="5" prefix="QB9" />
          <LNode iedName="None" ldInst="DISQB9" lnClass="CILO" lnType="cilo" lnInst="5" prefix="QB9" />
          <Terminal name="T1" connectivityNode="AA1/D1/Q03/L13" substationName="AA1" voltageLevelName="D1" bayName="Q03" cNodeName="L13" />
          <Terminal name="T2" connectivityNode="AA1/D1/Q03/L12" substationName="AA1" voltageLevelName="D1" bayName="Q03" cNodeName="L12" />
        </ConductingEquipment>
        <ConductingEquipment name="BC1" type="CTR" sxy:y="5">
          <Terminal name="T1" connectivityNode="AA1/D1/Q03/L11" substationName="AA1" voltageLevelName="D1" bayName="Q03" cNodeName="L11" />
          <Terminal name="T2" connectivityNode="AA1/D1/Q03/L12" substationName="AA1" voltageLevelName="D1" bayName="Q03" cNodeName="L12" />
          <SubEquipment name="L1" phase="A">
            <LNode iedName="None" ldInst="CTRBC1" lnClass="TCTR" lnType="tctr" lnInst="1" prefix="A" />
          </SubEquipment>
          <SubEquipment name="L2" phase="B">
            <LNode iedName="None" ldInst="CTRBC1" lnClass="TCTR" lnType="tctr" lnInst="2" prefix="B" />
          </SubEquipment>
          <SubEquipment name="L3" phase="C">
            <LNode iedName="None" ldInst="CTRBC1" lnClass="TCTR" lnType="tctr" lnInst="3" prefix="C" />
          </SubEquipment>
          <SubEquipment name="L4" phase="N" />
        </ConductingEquipment>
        <ConnectivityNode name="grounded" pathName="AA1/D1/Q03/grounded" />
        <ConnectivityNode name="L1" pathName="AA1/D1/Q03/L1" />
        <ConnectivityNode name="L13" pathName="AA1/D1/Q03/L13" />
        <ConnectivityNode name="L11" pathName="AA1/D1/Q03/L11" />
        <ConnectivityNode name="L12" pathName="AA1/D1/Q03/L12" />
      </Bay>
      <Bay name="Q05" sxy:x="24" sxy:y="2">
        <LNode iedName="None" ldInst="MEAS" lnClass="MMXU" lnType="mmxu_hlx" lnInst="1" prefix="BCA" />
        <LNode iedName="None" ldInst="MEAS" lnClass="MMXU" lnType="mmxu_hlx" lnInst="2" prefix="BB1V" />
        <LNode iedName="None" ldInst="MEAS" lnClass="MMXU" lnType="mmxu_hlx" lnInst="3" prefix="BB2V" />
        <LNode iedName="None" ldInst="PROT" lnClass="PTOC" lnType="ptoc_hlx" lnInst="1" prefix="" />
        <LNode iedName="None" ldInst="PROT" lnClass="PTRC" lnType="ptrc_hlx" lnInst="1" prefix="" />
        <LNode iedName="None" ldInst="BF" lnClass="RBRF" lnType="rbrf_hlx" lnInst="1" prefix="QA1" />
        <ConductingEquipment name="QB1" type="DIS" sxy:x="2" sxy:y="1">
          <LNode iedName="None" ldInst="DISQB1" lnClass="XSWI" lnType="xswi" lnInst="1" prefix="QB1" />
          <LNode iedName="None" ldInst="DISQB1" lnClass="CSWI" lnType="cswi" lnInst="1" prefix="QB1" />
          <LNode iedName="None" ldInst="DISQB1" lnClass="CILO" lnType="cilo" lnInst="1" prefix="QB1" />
          <Terminal name="T1" connectivityNode="AA1/D1/Q05/L1" substationName="AA1" voltageLevelName="D1" bayName="Q05" cNodeName="L1" />
          <Terminal name="T2" connectivityNode="AA1/D1/BB1/L1" substationName="AA1" voltageLevelName="D1" bayName="BB1" cNodeName="L1" />
        </ConductingEquipment>
        <ConductingEquipment name="QB2" type="DIS" sxy:x="4" sxy:y="1">
          <LNode iedName="None" ldInst="DISQB2" lnClass="XSWI" lnType="xswi" lnInst="2" prefix="QB2" />
          <LNode iedName="None" ldInst="DISQB2" lnClass="CSWI" lnType="cswi" lnInst="2" prefix="QB2" />
          <LNode iedName="None" ldInst="DISQB2" lnClass="CILO" lnType="cilo" lnInst="2" prefix="QB2" />
          <Terminal name="T1" connectivityNode="AA1/D1/Q05/L11" substationName="AA1" voltageLevelName="D1" bayName="Q05" cNodeName="L11" />
          <Terminal name="T2" connectivityNode="AA1/D1/BB2/L1" substationName="AA1" voltageLevelName="D1" bayName="BB2" cNodeName="L1" />
        </ConductingEquipment>
        <ConductingEquipment name="QC11" type="DIS" sxy:y="1">
          <LNode iedName="None" ldInst="DISQC11" lnClass="XSWI" lnType="xswi" lnInst="3" prefix="QC11" />
          <LNode iedName="None" ldInst="DISQC11" lnClass="CSWI" lnType="cswi" lnInst="3" prefix="QC11" />
          <LNode iedName="None" ldInst="DISQC11" lnClass="CILO" lnType="cilo" lnInst="3" prefix="QC11" />
          <Terminal name="T1" connectivityNode="AA1/D1/Q05/grounded" substationName="AA1" voltageLevelName="D1" bayName="Q05" cNodeName="grounded" />
          <Terminal name="T2" connectivityNode="AA1/D1/BB1/L1" substationName="AA1" voltageLevelName="D1" bayName="BB1" cNodeName="L1" />
        </ConductingEquipment>
        <ConductingEquipment name="QC21" type="DIS" sxy:x="6" sxy:y="1">
          <LNode iedName="None" ldInst="DISQC21" lnClass="XSWI" lnType="xswi" lnInst="4" prefix="QC21" />
          <LNode iedName="None" ldInst="DISQC21" lnClass="CSWI" lnType="cswi" lnInst="4" prefix="QC21" />
          <LNode iedName="None" ldInst="DISQC21" lnClass="CILO" lnType="cilo" lnInst="4" prefix="QC21" />
          <Terminal name="T1" connectivityNode="AA1/D1/Q05/grounded" substationName="AA1" voltageLevelName="D1" bayName="Q05" cNodeName="grounded" />
          <Terminal name="T2" connectivityNode="AA1/D1/BB2/L1" substationName="AA1" voltageLevelName="D1" bayName="BB2" cNodeName="L1" />
        </ConductingEquipment>
        <ConductingEquipment name="BC1" type="CTR" sxy:x="2" sxy:y="2">
          <Terminal name="T1" connectivityNode="AA1/D1/Q05/L1" substationName="AA1" voltageLevelName="D1" bayName="Q05" cNodeName="L1" />
          <Terminal name="T2" connectivityNode="AA1/D1/Q05/L12" substationName="AA1" voltageLevelName="D1" bayName="Q05" cNodeName="L12" />
          <SubEquipment name="L1" phase="A">
            <LNode iedName="None" ldInst="CTRBC1" lnClass="TCTR" lnType="tctr" lnInst="1" prefix="A" />
          </SubEquipment>
          <SubEquipment name="L2" phase="B">
            <LNode iedName="None" ldInst="CTRBC1" lnClass="TCTR" lnType="tctr" lnInst="2" prefix="B" />
          </SubEquipment>
          <SubEquipment name="L3" phase="C">
            <LNode iedName="None" ldInst="CTRBC1" lnClass="TCTR" lnType="tctr" lnInst="3" prefix="C" />
          </SubEquipment>
          <SubEquipment name="L4" phase="N" />
        </ConductingEquipment>
        <ConductingEquipment name="QA1" type="CBR" sxy:x="4" sxy:y="2">
          <LNode iedName="None" ldInst="CBRQA1" lnClass="XCBR" lnType="xcbr" lnInst="1" prefix="QA1" />
          <LNode iedName="None" ldInst="CBRQA1" lnClass="CSWI" lnType="cswi" lnInst="5" prefix="QA1" />
          <LNode iedName="None" ldInst="CBRQA1" lnClass="CILO" lnType="cilo" lnInst="5" prefix="QA1" />
          <Terminal name="T1" connectivityNode="AA1/D1/Q05/L11" substationName="AA1" voltageLevelName="D1" bayName="Q05" cNodeName="L11" />
          <Terminal name="T2" connectivityNode="AA1/D1/Q05/L12" substationName="AA1" voltageLevelName="D1" bayName="Q05" cNodeName="L12" />
        </ConductingEquipment>
        <ConductingEquipment name="BA11" type="VTR" sxy:x="8">
          <Terminal name="T1" connectivityNode="AA1/D1/BB1/L1" substationName="AA1" voltageLevelName="D1" bayName="BB1" cNodeName="L1" />
          <SubEquipment name="L1" phase="A">
            <LNode iedName="None" ldInst="VTRBA11" lnClass="TVTR" lnType="tvtr" lnInst="1" prefix="A" />
          </SubEquipment>
          <SubEquipment name="L2" phase="B">
            <LNode iedName="None" ldInst="VTRBA11" lnClass="TVTR" lnType="tvtr" lnInst="2" prefix="B" />
          </SubEquipment>
          <SubEquipment name="L3" phase="C">
            <LNode iedName="None" ldInst="VTRBA11" lnClass="TVTR" lnType="tvtr" lnInst="3" prefix="C" />
          </SubEquipment>
          <SubEquipment name="L4" phase="N" />
        </ConductingEquipment>
        <ConductingEquipment name="BA21" type="VTR" sxy:x="10">
          <Terminal name="T1" connectivityNode="AA1/D1/BB2/L1" substationName="AA1" voltageLevelName="D1" bayName="BB2" cNodeName="L1" />
          <SubEquipment name="L1" phase="A">
            <LNode iedName="None" ldInst="VTRBA21" lnClass="TVTR" lnType="tvtr" lnInst="5" prefix="A" />
          </SubEquipment>
          <SubEquipment name="L2" phase="B">
            <LNode iedName="None" ldInst="VTRBA21" lnClass="TVTR" lnType="tvtr" lnInst="6" prefix="B" />
          </SubEquipment>
          <SubEquipment name="L3" phase="C">
            <LNode iedName="None" ldInst="VTRBA21" lnClass="TVTR" lnType="tvtr" lnInst="7" prefix="C" />
          </SubEquipment>
          <SubEquipment name="L4" phase="N" />
        </ConductingEquipment>
        <ConnectivityNode name="grounded" pathName="AA1/D1/Q05/grounded" />
        <ConnectivityNode name="L1" pathName="AA1/D1/Q05/L1" />
        <ConnectivityNode name="L11" pathName="AA1/D1/Q05/L11" />
        <ConnectivityNode name="L12" pathName="AA1/D1/Q05/L12" />
      </Bay>
    </VoltageLevel>
    <VoltageLevel name="H1" sxy:y="11">
      <Voltage unit="V" multiplier="k">33</Voltage>
      <Bay name="BB1" sxy:y="8">
        <ConnectivityNode name="L1" pathName="AA1/H1/BB1/L1" />
      </Bay>
      <Bay name="BB2" sxy:y="9">
        <ConnectivityNode name="L1" pathName="AA1/H1/BB2/L1" />
      </Bay>
      <Bay name="Q01">
        <LNode iedName="None" ldInst="BF" lnClass="RBRF" lnType="rbrf_hlx" lnInst="1" prefix="QA1" />
        <LNode iedName="None" ldInst="MEAS" lnClass="MMXU" lnType="mmxu_hlx" lnInst="1" prefix="" />
        <LNode iedName="None" ldInst="PROT" lnClass="PTOC" lnType="ptoc_hlx" lnInst="1" prefix="" />
        <LNode iedName="None" ldInst="PROT" lnClass="PTRC" lnType="ptrc_hlx" lnInst="1" prefix="" />
        <ConductingEquipment name="QB1" type="DIS" sxy:y="6">
          <LNode iedName="None" ldInst="DISQB1" lnClass="XSWI" lnType="xswi" lnInst="1" prefix="QB1" />
          <LNode iedName="None" ldInst="DISQB1" lnClass="CSWI" lnType="cswi" lnInst="1" prefix="QB1" />
          <LNode iedName="None" ldInst="DISQB1" lnClass="CILO" lnType="cilo" lnInst="1" prefix="QB1" />
          <Terminal name="T1" connectivityNode="AA1/H1/Q01/L1" substationName="AA1" voltageLevelName="H1" bayName="Q01" cNodeName="L1" />
          <Terminal name="T2" connectivityNode="AA1/H1/BB1/L1" substationName="AA1" voltageLevelName="H1" bayName="BB1" cNodeName="L1" />
        </ConductingEquipment>
        <ConductingEquipment name="QB2" type="DIS" sxy:x="2" sxy:y="6">
          <LNode iedName="None" ldInst="DISQB2" lnClass="XSWI" lnType="xswi" lnInst="2" prefix="QB2" />
          <LNode iedName="None" ldInst="DISQB2" lnClass="CSWI" lnType="cswi" lnInst="2" prefix="QB2" />
          <LNode iedName="None" ldInst="DISQB2" lnClass="CILO" lnType="cilo" lnInst="2" prefix="QB2" />
          <Terminal name="T1" connectivityNode="AA1/H1/Q01/L1" substationName="AA1" voltageLevelName="H1" bayName="Q01" cNodeName="L1" />
          <Terminal name="T2" connectivityNode="AA1/H1/BB2/L1" substationName="AA1" voltageLevelName="H1" bayName="BB2" cNodeName="L1" />
        </ConductingEquipment>
        <ConductingEquipment name="QA1" type="CBR" sxy:y="4">
          <LNode iedName="None" ldInst="CBRQA1" lnClass="XCBR" lnType="xcbr" lnInst="1" prefix="QA1" />
          <LNode iedName="None" ldInst="CBRQA1" lnClass="CSWI" lnType="cswi" lnInst="3" prefix="QA1" />
          <LNode iedName="None" ldInst="CBRQA1" lnClass="CILO" lnType="cilo" lnInst="3" prefix="QA1" />
          <LNode iedName="None" ldInst="CBRQA1" lnClass="XSWI" lnType="xswi" lnInst="3" prefix="QA1" />
          <Terminal name="T1" connectivityNode="AA1/H1/Q01/L1" substationName="AA1" voltageLevelName="H1" bayName="Q01" cNodeName="L1" />
          <Terminal name="T2" connectivityNode="AA1/H1/Q01/L11" substationName="AA1" voltageLevelName="H1" bayName="Q01" cNodeName="L11" />
        </ConductingEquipment>
        <ConductingEquipment name="BC1" type="CTR" sxy:y="3">
          <Terminal name="T1" connectivityNode="AA1/H1/Q01/L11" substationName="AA1" voltageLevelName="H1" bayName="Q01" cNodeName="L11" />
          <Terminal name="T2" connectivityNode="AA1/H1/Q01/L12" substationName="AA1" voltageLevelName="H1" bayName="Q01" cNodeName="L12" />
          <SubEquipment name="L1" phase="A">
            <LNode iedName="None" ldInst="CTRBC1" lnClass="TCTR" lnType="tctr" lnInst="1" prefix="A" />
          </SubEquipment>
          <SubEquipment name="L2" phase="B">
            <LNode iedName="None" ldInst="CTRBC1" lnClass="TCTR" lnType="tctr" lnInst="2" prefix="B" />
          </SubEquipment>
          <SubEquipment name="L3" phase="C">
            <LNode iedName="None" ldInst="CTRBC1" lnClass="TCTR" lnType="tctr" lnInst="3" prefix="C" />
          </SubEquipment>
          <SubEquipment name="L4" phase="N" />
        </ConductingEquipment>
        <ConductingEquipment name="BA1" type="VTR" sxy:x="2" sxy:y="3">
          <Terminal name="T1" connectivityNode="AA1/H1/Q01/L12" substationName="AA1" voltageLevelName="H1" bayName="Q01" cNodeName="L12" />
          <SubEquipment name="L1" phase="A">
            <LNode iedName="None" ldInst="VTRBA1" lnClass="TVTR" lnType="tvtr" lnInst="1" prefix="A" />
          </SubEquipment>
          <SubEquipment name="L2" phase="B">
            <LNode iedName="None" ldInst="VTRBA1" lnClass="TVTR" lnType="tvtr" lnInst="2" prefix="B" />
          </SubEquipment>
          <SubEquipment name="L3" phase="C">
            <LNode iedName="None" ldInst="VTRBA1" lnClass="TVTR" lnType="tvtr" lnInst="3" prefix="C" />
          </SubEquipment>
          <SubEquipment name="L4" phase="N" />
        </ConductingEquipment>
        <ConductingEquipment name="QC2" type="DIS" sxy:x="2">
          <LNode iedName="None" ldInst="DISQC2" lnClass="XSWI" lnType="xswi" lnInst="4" prefix="QC2" />
          <LNode iedName="None" ldInst="DISQC2" lnClass="CSWI" lnType="cswi" lnInst="4" prefix="QC2" />
          <LNode iedName="None" ldInst="DISQC2" lnClass="CILO" lnType="cilo" lnInst="4" prefix="QC2" />
          <Terminal name="T1" connectivityNode="AA1/H1/Q01/grounded" substationName="AA1" voltageLevelName="H1" bayName="Q01" cNodeName="grounded" />
          <Terminal name="T2" connectivityNode="AA1/H1/Q01/L12" substationName="AA1" voltageLevelName="H1" bayName="Q01" cNodeName="L12" />
        </ConductingEquipment>
        <ConnectivityNode name="grounded" pathName="AA1/H1/Q01/grounded" />
        <ConnectivityNode name="L1" pathName="AA1/H1/Q01/L1" />
        <ConnectivityNode name="L11" pathName="AA1/H1/Q01/L11" />
        <ConnectivityNode name="L12" pathName="AA1/H1/Q01/L12" />
      </Bay>
      <Bay name="Q02" sxy:x="19">
        <LNode iedName="None" ldInst="BF" lnClass="RBRF" lnType="rbrf_hlx" lnInst="1" prefix="QA1" />
        <LNode iedName="None" ldInst="MEAS" lnClass="MMXU" lnType="mmxu_hlx" lnInst="1" prefix="" />
        <LNode iedName="None" ldInst="PROT" lnClass="PTOC" lnType="ptoc_hlx" lnInst="1" prefix="" />
        <LNode iedName="None" ldInst="PROT" lnClass="PTRC" lnType="ptrc_hlx" lnInst="1" prefix="" />
        <ConductingEquipment name="QA1" type="CBR" sxy:y="4">
          <LNode iedName="None" ldInst="CBRQA1" lnClass="XCBR" lnType="xcbr" lnInst="1" prefix="QA1" />
          <LNode iedName="None" ldInst="CBRQA1" lnClass="CSWI" lnType="cswi" lnInst="3" prefix="QA1" />
          <LNode iedName="None" ldInst="CBRQA1" lnClass="CILO" lnType="cilo" lnInst="3" prefix="QA1" />
          <LNode iedName="None" ldInst="CBRQA1" lnClass="XSWI" lnType="xswi" lnInst="3" prefix="QA1" />
          <Terminal name="T1" connectivityNode="AA1/H1/Q02/L11" substationName="AA1" voltageLevelName="H1" bayName="Q02" cNodeName="L11" />
        </ConductingEquipment>
        <ConductingEquipment name="QB2" type="DIS" sxy:x="2" sxy:y="6">
          <LNode iedName="None" ldInst="DISQB2" lnClass="XSWI" lnType="xswi" lnInst="2" prefix="QB2" />
          <LNode iedName="None" ldInst="DISQB2" lnClass="CSWI" lnType="cswi" lnInst="2" prefix="QB2" />
          <LNode iedName="None" ldInst="DISQB2" lnClass="CILO" lnType="cilo" lnInst="2" prefix="QB2" />
          <Terminal name="T1" connectivityNode="AA1/H1/Q02/L1" substationName="AA1" voltageLevelName="H1" bayName="Q02" cNodeName="L1" />
          <Terminal name="T2" connectivityNode="AA1/H1/BB2/L1" substationName="AA1" voltageLevelName="H1" bayName="BB2" cNodeName="L1" />
        </ConductingEquipment>
        <ConductingEquipment name="BC1" type="CTR" sxy:y="3">
          <Terminal name="T1" connectivityNode="AA1/H1/Q02/L11" substationName="AA1" voltageLevelName="H1" bayName="Q02" cNodeName="L11" />
          <Terminal name="T2" connectivityNode="AA1/H1/Q02/L12" substationName="AA1" voltageLevelName="H1" bayName="Q02" cNodeName="L12" />
          <SubEquipment name="L1" phase="A">
            <LNode iedName="None" ldInst="CTRBC1" lnClass="TCTR" lnType="tctr" lnInst="1" prefix="A" />
          </SubEquipment>
          <SubEquipment name="L2" phase="B">
            <LNode iedName="None" ldInst="CTRBC1" lnClass="TCTR" lnType="tctr" lnInst="2" prefix="B" />
          </SubEquipment>
          <SubEquipment name="L3" phase="C">
            <LNode iedName="None" ldInst="CTRBC1" lnClass="TCTR" lnType="tctr" lnInst="3" prefix="C" />
          </SubEquipment>
          <SubEquipment name="L4" phase="N" />
        </ConductingEquipment>
        <ConductingEquipment name="QB1" type="DIS" sxy:y="6">
          <LNode iedName="None" ldInst="DISQB1" lnClass="XSWI" lnType="xswi" lnInst="1" prefix="QB1" />
          <LNode iedName="None" ldInst="DISQB1" lnClass="CSWI" lnType="cswi" lnInst="1" prefix="QB1" />
          <LNode iedName="None" ldInst="DISQB1" lnClass="CILO" lnType="cilo" lnInst="1" prefix="QB1" />
          <Terminal name="T1" connectivityNode="AA1/H1/Q02/L1" substationName="AA1" voltageLevelName="H1" bayName="Q02" cNodeName="L1" />
          <Terminal name="T2" connectivityNode="AA1/H1/BB1/L1" substationName="AA1" voltageLevelName="H1" bayName="BB1" cNodeName="L1" />
        </ConductingEquipment>
        <ConductingEquipment name="BA1" type="VTR" sxy:x="2" sxy:y="3">
          <Terminal name="T1" connectivityNode="AA1/H1/Q02/L12" substationName="AA1" voltageLevelName="H1" bayName="Q02" cNodeName="L12" />
          <SubEquipment name="L1" phase="A">
            <LNode iedName="None" ldInst="VTRBA1" lnClass="TVTR" lnType="tvtr" lnInst="1" prefix="A" />
          </SubEquipment>
          <SubEquipment name="L2" phase="B">
            <LNode iedName="None" ldInst="VTRBA1" lnClass="TVTR" lnType="tvtr" lnInst="2" prefix="B" />
          </SubEquipment>
          <SubEquipment name="L3" phase="C">
            <LNode iedName="None" ldInst="VTRBA1" lnClass="TVTR" lnType="tvtr" lnInst="3" prefix="C" />
          </SubEquipment>
          <SubEquipment name="L4" phase="N" />
        </ConductingEquipment>
        <ConductingEquipment name="QC2" type="DIS" sxy:x="2">
          <LNode iedName="None" ldInst="DISQC2" lnClass="XSWI" lnType="xswi" lnInst="4" prefix="QC2" />
          <LNode iedName="None" ldInst="DISQC2" lnClass="CSWI" lnType="cswi" lnInst="4" prefix="QC2" />
          <LNode iedName="None" ldInst="DISQC2" lnClass="CILO" lnType="cilo" lnInst="4" prefix="QC2" />
          <Terminal name="T1" connectivityNode="AA1/H1/Q02/grounded" substationName="AA1" voltageLevelName="H1" bayName="Q02" cNodeName="grounded" />
          <Terminal name="T2" connectivityNode="AA1/H1/Q02/L12" substationName="AA1" voltageLevelName="H1" bayName="Q02" cNodeName="L12" />
        </ConductingEquipment>
        <ConnectivityNode name="grounded" pathName="AA1/H1/Q02/grounded" />
        <ConnectivityNode name="L11" pathName="AA1/H1/Q02/L11" />
        <ConnectivityNode name="L1" pathName="AA1/H1/Q02/L1" />
        <ConnectivityNode name="L12" pathName="AA1/H1/Q02/L12" />
      </Bay>
    </VoltageLevel>
  </Substation>
  <Communication>
    <SubNetwork name="SubNetworkName">
      <ConnectedAP iedName="TEMPLATE" apName="AP">
        <Address>
          <P type="IP">10.0.0.3</P>
          <P type="IP-SUBNET">255.255.255.0</P>
          <P type="IP-GATEWAY">10.0.0.101</P>
          <P type="OSI-AP-Title">0001</P>
          <P type="OSI-AE-Qualifier">0001</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
      </ConnectedAP>
      <ConnectedAP iedName="TEMPLATE1" apName="AP">
        <Address>
          <P type="IP">10.0.0.3</P>
          <P type="IP-SUBNET">255.255.255.0</P>
          <P type="IP-GATEWAY">10.0.0.101</P>
          <P type="OSI-AP-Title">0001</P>
          <P type="OSI-AE-Qualifier">0001</P>
          <P type="OSI-PSEL">00000001</P>
          <P type="OSI-SSEL">0001</P>
          <P type="OSI-TSEL">0001</P>
        </Address>
      </ConnectedAP>
    </SubNetwork>
  </Communication>
  <IED name="TEMPLATE" manufacturer="TMW" configVersion="1.0" originalSclRevision="B" originalSclVersion="2007">
    <Services>
      <DynAssociation max="10" />
      <ConfLogControl max="10" />
      <GOOSE max="10" />
      <GSSE max="50" />
      <SMVsc max="20" />
      <GetDirectory />
      <GetDataObjectDefinition />
      <DataObjectDirectory />
      <GetDataSetValue />
      <SetDataSetValue />
      <DataSetDirectory />
      <ConfDataSet max="10" maxAttributes="50" modify="false" />
      <DynDataSet max="100" maxAttributes="50" />
      <ReadWrite />
      <ConfReportControl max="0" bufMode="both" bufConf="true" />
      <GetCBValues />
      <ReportSettings cbName="Conf" datSet="Dyn" rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" resvTms="true" owner="true" />
      <LogSettings datSet="Dyn" logEna="Dyn" trgOps="Dyn" intgPd="Dyn" />
      <GSESettings datSet="Dyn" appID="Dyn" dataLabel="Dyn" />
      <FileHandling />
      <ConfLNs />
      <ClientServices bufReport="true" goose="true" readLog="true" sv="true" unbufReport="true" />
    </Services>
    <AccessPoint name="AP">
      <Server>
        <Authentication />
        <LDevice inst="Control">
          <LN0 lnClass="LLN0" lnType="LLN0_TYPE" inst="" />
          <LN lnClass="LPHD" lnType="LPHD_TYPE" inst="1" prefix="" />
          <LN lnClass="TVTR" lnType="TVTR_TYPE" inst="1" prefix="A" />
          <LN lnClass="TVTR" lnType="TVTR_TYPE" inst="2" prefix="B" />
          <LN lnClass="TVTR" lnType="TVTR_TYPE" inst="3" prefix="C" />
          <LN lnClass="TVTR" lnType="TVTR_TYPE" inst="5" prefix="A" />
          <LN lnClass="TVTR" lnType="TVTR_TYPE" inst="6" prefix="B" />
          <LN lnClass="TVTR" lnType="TVTR_TYPE" inst="7" prefix="C" />
          <LN lnClass="TCTR" lnType="TCTR_TYPE" inst="1" prefix="A" />
          <LN lnClass="TCTR" lnType="TCTR_TYPE" inst="2" prefix="B" />
          <LN lnClass="TCTR" lnType="TCTR_TYPE" inst="3" prefix="C" />
        </LDevice>
        <LDevice inst="Protection">
          <LN0 lnClass="LLN0" lnType="LLN0_TYPE" inst="" />
          <LN lnClass="LPHD" lnType="LPHD_TYPE" inst="1" prefix="" />
          <LN lnClass="PTOC" lnType="PTOC_TYPE" inst="1" prefix="" />
          <LN lnClass="PTRC" lnType="PTRC_TYPE" inst="1" prefix="" />
        </LDevice>
        <LDevice inst="Measurements">
          <LN0 lnClass="LLN0" lnType="LLN0_TYPE" inst="" />
          <LN lnClass="LPHD" lnType="LPHD_TYPE" inst="1" prefix="" />
          <LN lnClass="MMXU" lnType="MMXU_TYPE" inst="1" prefix="BCA" />
          <LN lnClass="MMXU" lnType="MMXU_TYPE" inst="2" prefix="BB1V" />
          <LN lnClass="MMXU" lnType="MMXU_TYPE" inst="3" prefix="BB2V" />
        </LDevice>
      </Server>
    </AccessPoint>
  </IED>
  <IED name="TEMPLATE1" manufacturer="TMW" configVersion="1.0" originalSclRevision="B" originalSclVersion="2007">
    <Services>
      <DynAssociation max="10" />
      <ConfLogControl max="10" />
      <GOOSE max="10" />
      <GSSE max="50" />
      <SMVsc max="20" />
      <GetDirectory />
      <GetDataObjectDefinition />
      <DataObjectDirectory />
      <GetDataSetValue />
      <SetDataSetValue />
      <DataSetDirectory />
      <ConfDataSet max="10" maxAttributes="50" modify="false" />
      <DynDataSet max="100" maxAttributes="50" />
      <ReadWrite />
      <ConfReportControl max="0" bufMode="both" bufConf="true" />
      <GetCBValues />
      <ReportSettings cbName="Conf" datSet="Dyn" rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" resvTms="true" owner="true" />
      <LogSettings datSet="Dyn" logEna="Dyn" trgOps="Dyn" intgPd="Dyn" />
      <GSESettings datSet="Dyn" appID="Dyn" dataLabel="Dyn" />
      <FileHandling />
      <ConfLNs />
      <ClientServices bufReport="true" goose="true" readLog="true" sv="true" unbufReport="true" />
    </Services>
    <AccessPoint name="AP">
      <Server>
        <Authentication />
        <LDevice inst="1">
          <LN0 lnClass="LLN0" lnType="LLN01" inst="" />
          <LN lnClass="LPHD" lnType="LPHD1" inst="1" prefix="" />
          <LN lnClass="XCBR" lnType="XCBR_TYPE" inst="1" prefix="" />
        </LDevice>
      </Server>
    </AccessPoint>
  </IED>
  <DataTypeTemplates>
    <LNodeType id="LLN0_TYPE" lnClass="LLN0">
      <DO name="NamPlt" type="LPL_1_NamPlt" />
      <DO name="Beh" type="ENS_1_Beh" />
      <DO name="Health" type="ENS_1_Health" />
      <DO name="Mod" type="ENC_1_Mod" />
      <DO name="LocKey" type="SPS_1_LocKey" />
      <DO name="Loc" type="SPS_1_LocKey" />
      <DO name="LocSta" type="SPC_1_LocSta" />
      <DO name="Diag" type="SPC_1_LocSta" />
      <DO name="LEDRs" type="SPC_1_LocSta" />
      <DO name="MltLev" type="SPG_1_MltLev" />
    </LNodeType>
    <LNodeType id="LPHD_TYPE" lnClass="LPHD">
      <DO name="PhyNam" type="DPL_1_PhyNam" />
      <DO name="PhyHealth" type="ENS_1_Health" />
      <DO name="OutOv" type="SPS_1_LocKey" />
      <DO name="Proxy" type="SPS_1_LocKey" />
      <DO name="InOv" type="SPS_1_LocKey" />
      <DO name="OpTmh" type="INS_1_OpTmh" />
      <DO name="NumPwrUp" type="INS_1_OpTmh" />
      <DO name="WrmStr" type="INS_1_OpTmh" />
      <DO name="WacTrg" type="INS_1_OpTmh" />
      <DO name="PwrUp" type="SPS_1_LocKey" />
      <DO name="PwrDn" type="SPS_1_LocKey" />
      <DO name="PwrSupAlm" type="SPS_1_LocKey" />
      <DO name="RsStat" type="SPC_1_LocSta" />
      <DO name="Sim" type="SPC_1_LocSta" />
    </LNodeType>
    <LNodeType id="TVTR_TYPE" lnClass="TVTR">
      <DO name="NamPlt" type="LPL_1_NamPlt" />
      <DO name="Beh" type="ENS_1_Beh" />
      <DO name="Health" type="ENS_1_Health" />
      <DO name="Blk" type="SPS_1_LocKey" />
      <DO name="Mod" type="ENC_1_Mod" />
      <DO name="CmdBlk" type="SPC_1_LocSta" />
      <DO name="InRef1" type="ORG_1_InRef1" />
      <DO name="BlkRef1" type="ORG_1_InRef1" />
      <DO name="EEName" type="DPL_1_PhyNam" />
      <DO name="EEHealth" type="ENS_1_Health" />
      <DO name="OpTmh" type="INS_1_OpTmh" />
      <DO name="FuFail" type="SPS_1_LocKey" />
      <DO name="VolSv" type="SAV_1_VolSv" />
      <DO name="VRtg" type="ASG_1_VRtg" />
      <DO name="HzRtg" type="ASG_1_VRtg" />
      <DO name="Rat" type="ASG_1_VRtg" />
      <DO name="Cor" type="ASG_1_VRtg" />
      <DO name="AngCor" type="ASG_1_VRtg" />
      <DO name="CorCrv" type="CSG_1_CorCrv" />
    </LNodeType>
    <LNodeType id="TCTR_TYPE" lnClass="TCTR">
      <DO name="NamPlt" type="LPL_1_NamPlt" />
      <DO name="Beh" type="ENS_1_Beh" />
      <DO name="Health" type="ENS_1_Health" />
      <DO name="Blk" type="SPS_1_LocKey" />
      <DO name="Mod" type="ENC_1_Mod" />
      <DO name="CmdBlk" type="SPC_1_LocSta" />
      <DO name="InRef1" type="ORG_1_InRef1" />
      <DO name="BlkRef1" type="ORG_1_InRef1" />
      <DO name="InSyn" type="ORG_1_InRef1" />
      <DO name="EEName" type="DPL_1_PhyNam" />
      <DO name="EEHealth" type="ENS_1_Health" />
      <DO name="OpTmh" type="INS_1_OpTmh" />
      <DO name="AmpSv" type="SAV_1_VolSv" />
      <DO name="ARtg" type="ASG_1_VRtg" />
      <DO name="HzRtg" type="ASG_1_VRtg" />
      <DO name="Rat" type="ASG_1_VRtg" />
      <DO name="Cor" type="ASG_1_VRtg" />
      <DO name="AngCor" type="ASG_1_VRtg" />
      <DO name="CorCrv" type="CSG_1_CorCrv" />
    </LNodeType>
    <LNodeType id="PTOC_TYPE" lnClass="PTOC">
      <DO name="NamPlt" type="LPL_1_NamPlt" />
      <DO name="Beh" type="ENS_1_Beh" />
      <DO name="Health" type="ENS_1_Health" />
      <DO name="Blk" type="SPS_1_LocKey" />
      <DO name="Mod" type="ENC_1_Mod" />
      <DO name="CmdBlk" type="SPC_1_LocSta" />
      <DO name="InRef1" type="ORG_1_InRef1" />
      <DO name="BlkRef1" type="ORG_1_InRef1" />
      <DO name="Str" type="ACD_1_Str" />
      <DO name="Op" type="ACT_1_Op" />
      <DO name="OpCntRs" type="INC_1_OpCntRs" />
      <DO name="TmACrv" type="CURVE_1_TmACrv" />
      <DO name="TmAChr33" type="CSG_1_CorCrv" />
      <DO name="TmASt" type="CSD_1_TmASt" />
      <DO name="StrVal" type="ASG_1_VRtg" />
      <DO name="TmMult" type="ASG_1_VRtg" />
      <DO name="MinOpTmms" type="ING_1_MinOpTmms" />
      <DO name="MaxOpTmms" type="ING_1_MinOpTmms" />
      <DO name="OpDlTmms" type="ING_1_MinOpTmms" />
      <DO name="TypRsCrv" type="ENG_1_TypRsCrv" />
      <DO name="RsDlTmms" type="ING_1_MinOpTmms" />
      <DO name="DirMod" type="ENG_1_DirMod" />
    </LNodeType>
    <LNodeType id="PTRC_TYPE" lnClass="PTRC">
      <DO name="NamPlt" type="LPL_1_NamPlt" />
      <DO name="Beh" type="ENS_1_Beh" />
      <DO name="Health" type="ENS_1_Health" />
      <DO name="Blk" type="SPS_1_LocKey" />
      <DO name="Mod" type="ENC_1_Mod" />
      <DO name="CmdBlk" type="SPC_1_LocSta" />
      <DO name="InRef1" type="ORG_1_InRef1" />
      <DO name="BlkRef1" type="ORG_1_InRef1" />
      <DO name="Tr" type="ACT_1_Op" />
      <DO name="Op" type="ACT_1_Op" />
      <DO name="Str" type="ACD_1_Str" />
      <DO name="OpCntRs" type="INC_1_OpCntRs" />
      <DO name="TrMod" type="ENG_1_TrMod" />
      <DO name="TrPlsTmms" type="ING_1_MinOpTmms" />
    </LNodeType>
    <LNodeType id="MMXU_TYPE" lnClass="MMXU">
      <DO name="NamPlt" type="LPL_1_NamPlt" />
      <DO name="Beh" type="ENS_1_Beh" />
      <DO name="Health" type="ENS_1_Health" />
      <DO name="Blk" type="SPS_1_LocKey" />
      <DO name="Mod" type="ENC_1_Mod" />
      <DO name="CmdBlk" type="SPC_1_LocSta" />
      <DO name="InRef1" type="ORG_1_InRef1" />
      <DO name="BlkRef1" type="ORG_1_InRef1" />
      <DO name="TotW" type="MV_1_TotW" />
      <DO name="TotVAr" type="MV_1_TotW" />
      <DO name="TotVA" type="MV_1_TotW" />
      <DO name="TotPF" type="MV_1_TotW" />
      <DO name="Hz" type="MV_1_TotW" />
      <DO name="PPV" type="DEL_1_PPV" />
      <DO name="PNV" type="WYE_1_PNV" />
      <DO name="PhV" type="WYE_1_PNV" />
      <DO name="A" type="WYE_1_PNV" />
      <DO name="W" type="WYE_1_PNV" />
      <DO name="VAr" type="WYE_1_PNV" />
      <DO name="VA" type="WYE_1_PNV" />
      <DO name="PF" type="WYE_1_PNV" />
      <DO name="Z" type="WYE_1_PNV" />
      <DO name="AvAPhs" type="MV_1_TotW" />
      <DO name="AvPPVPhs" type="MV_1_TotW" />
      <DO name="AvPhVPhs" type="MV_1_TotW" />
      <DO name="AvWPhs" type="MV_1_TotW" />
      <DO name="AvVAPhs" type="MV_1_TotW" />
      <DO name="AvVArPhs" type="MV_1_TotW" />
      <DO name="AvPFPhs" type="MV_1_TotW" />
      <DO name="AvZPhs" type="MV_1_TotW" />
      <DO name="MaxAPhs" type="MV_1_TotW" />
      <DO name="MaxPPVPhs" type="MV_1_TotW" />
      <DO name="MaxPhVPhs" type="MV_1_TotW" />
      <DO name="MaxWPhs" type="MV_1_TotW" />
      <DO name="MaxVAPhs" type="MV_1_TotW" />
      <DO name="MaxVArPhs" type="MV_1_TotW" />
      <DO name="MaxPFPhs" type="MV_1_TotW" />
      <DO name="MaxZPhs" type="MV_1_TotW" />
      <DO name="MinAPhs" type="MV_1_TotW" />
      <DO name="MinPPVPhs" type="MV_1_TotW" />
      <DO name="MinPhVPhs" type="MV_1_TotW" />
      <DO name="MinWPhs" type="MV_1_TotW" />
      <DO name="MinVAPhs" type="MV_1_TotW" />
      <DO name="MinVArPhs" type="MV_1_TotW" />
      <DO name="MinPFPhs" type="MV_1_TotW" />
      <DO name="MinZPhs" type="MV_1_TotW" />
      <DO name="ClcTotVA" type="ENG_1_ClcTotVA" />
      <DO name="PFSign" type="ENG_1_PFSign" />
    </LNodeType>
    <LNodeType id="LLN01" lnClass="LLN0">
      <DO name="NamPlt" type="LPL_1_NamPlt" />
      <DO name="Beh" type="ENS_1_Beh" />
      <DO name="Health" type="ENS_1_Health" />
      <DO name="Blk" type="SPS_1_LocKey" />
      <DO name="Mod" type="ENC_1_Mod" />
      <DO name="CmdBlk" type="SPC_1_LocSta" />
      <DO name="InRef1" type="ORG_1_InRef1" />
      <DO name="BlkRef1" type="ORG_1_InRef1" />
      <DO name="LocKey" type="SPS_1_LocKey" />
      <DO name="Loc" type="SPS_1_LocKey" />
      <DO name="LocSta" type="SPC_1_LocSta" />
      <DO name="Diag" type="SPC_1_LocSta" />
      <DO name="LEDRs" type="SPC_1_LocSta" />
      <DO name="GrRef" type="ORG_1_InRef1" />
      <DO name="MltLev" type="SPG_1_MltLev" />
    </LNodeType>
    <LNodeType id="LPHD1" lnClass="LPHD">
      <DO name="PhyNam" type="DPL_1_PhyNam" />
      <DO name="PhyHealth" type="ENS_1_Health" />
      <DO name="OutOv" type="SPS_1_LocKey" />
      <DO name="Proxy" type="SPS_1_LocKey" />
      <DO name="InOv" type="SPS_1_LocKey" />
      <DO name="OpTmh" type="INS_1_OpTmh" />
      <DO name="NumPwrUp" type="INS_1_OpTmh" />
      <DO name="WrmStr" type="INS_1_OpTmh" />
      <DO name="WacTrg" type="INS_1_OpTmh" />
      <DO name="PwrUp" type="SPS_1_LocKey" />
      <DO name="PwrDn" type="SPS_1_LocKey" />
      <DO name="PwrSupAlm" type="SPS_1_LocKey" />
      <DO name="RsStat" type="SPC_1_LocSta" />
      <DO name="Sim" type="SPC_1_LocSta" />
    </LNodeType>
    <LNodeType id="XCBR_TYPE" lnClass="XCBR">
      <DO name="NamPlt" type="LPL_1_NamPlt" />
      <DO name="Beh" type="ENS_1_Beh" />
      <DO name="Health" type="ENS_1_Health" />
      <DO name="Blk" type="SPS_1_LocKey" />
      <DO name="Mod" type="ENC_1_Mod" />
      <DO name="CmdBlk" type="SPC_1_LocSta" />
      <DO name="InRef1" type="ORG_1_InRef1" />
      <DO name="BlkRef1" type="ORG_1_InRef1" />
      <DO name="EEName" type="DPL_1_PhyNam" />
      <DO name="EEHealth" type="ENS_1_Health" />
      <DO name="LocKey" type="SPS_1_LocKey" />
      <DO name="Loc" type="SPS_1_LocKey" />
      <DO name="OpCnt" type="INS_1_OpTmh" />
      <DO name="MaxOpCap" type="INS_1_OpTmh" />
      <DO name="Dsc" type="SPS_1_LocKey" />
      <DO name="SumSwARs" type="BCR_1_SumSwARs" />
      <DO name="LocSta" type="SPC_1_LocSta" />
      <DO name="Pos" type="DPC_1_Pos" />
      <DO name="BlkOpn" type="SPC_1_LocSta" />
      <DO name="BlkCls" type="SPC_1_LocSta" />
      <DO name="ChaMotEna" type="SPC_1_LocSta" />
      <DO name="CBTmms" type="ING_1_MinOpTmms" />
      <DO name="OpTmh" type="INS_1_OpTmh" />
    </LNodeType>
    <DOType id="LPL_1_NamPlt" cdc="LPL">
      <DA name="vendor" bType="VisString255" fc="DC" />
      <DA name="swRev" bType="VisString255" fc="DC" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="configRev" bType="VisString255" fc="DC" />
      <DA name="paramRev" bType="INT32" fc="ST" />
      <DA name="valRev" bType="INT32" fc="ST" />
      <DA name="ldNs" bType="VisString255" fc="EX" />
      <DA name="lnNs" bType="VisString255" fc="EX" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="ENS_1_Beh" cdc="ENS">
      <DA name="stVal" type="BehaviourModeKind" bType="Enum" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="subEna" bType="BOOLEAN" fc="SV" />
      <DA name="subVal" type="BehaviourModeKind" bType="Enum" fc="SV" />
      <DA name="subQ" bType="Quality" fc="SV" />
      <DA name="subID" bType="VisString64" fc="SV" />
      <DA name="blkEna" bType="BOOLEAN" fc="BL" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="ENS_1_Health" cdc="ENS">
      <DA name="stVal" type="HealthKind" bType="Enum" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="subEna" bType="BOOLEAN" fc="SV" />
      <DA name="subVal" type="HealthKind" bType="Enum" fc="SV" />
      <DA name="subQ" bType="Quality" fc="SV" />
      <DA name="subID" bType="VisString64" fc="SV" />
      <DA name="blkEna" bType="BOOLEAN" fc="BL" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="ENC_1_Mod" cdc="ENC">
      <DA name="origin" type="Originator_1" bType="Struct" fc="ST" />
      <DA name="ctlNum" bType="INT8U" fc="ST" />
      <DA name="stVal" type="BehaviourModeKind" bType="Enum" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="stSeld" bType="BOOLEAN" fc="ST" />
      <DA name="opRcvd" bType="BOOLEAN" fc="OR" />
      <DA name="opOk" bType="BOOLEAN" fc="OR" />
      <DA name="tOpOk" bType="Timestamp" fc="OR" />
      <DA name="subEna" bType="BOOLEAN" fc="SV" />
      <DA name="subVal" type="BehaviourModeKind" bType="Enum" fc="SV" />
      <DA name="subQ" bType="Quality" fc="SV" />
      <DA name="subID" bType="VisString64" fc="SV" />
      <DA name="blkEna" bType="BOOLEAN" fc="BL" />
      <DA name="ctlModel" type="CtlModelKind" bType="Enum" fc="CF" />
      <DA name="sboTimeout" bType="INT32U" fc="CF" />
      <DA name="sboClass" type="SboClassKind" bType="Enum" fc="CF" />
      <DA name="operTimeout" bType="INT32U" fc="CF" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
      <DA name="SBO" bType="VisString129" fc="CO" />
      <DA name="SBOw" type="SBOwEnum_1" bType="Struct" fc="CO" />
      <DA name="Oper" type="SBOwEnum_1" bType="Struct" fc="CO" />
      <DA name="Cancel" type="CancelEnum_1" bType="Struct" fc="CO" />
    </DOType>
    <DOType id="SPS_1_LocKey" cdc="SPS">
      <DA name="stVal" bType="BOOLEAN" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="subEna" bType="BOOLEAN" fc="SV" />
      <DA name="subVal" bType="BOOLEAN" fc="SV" />
      <DA name="subQ" bType="Quality" fc="SV" />
      <DA name="subID" bType="VisString64" fc="SV" />
      <DA name="blkEna" bType="BOOLEAN" fc="BL" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="SPC_1_LocSta" cdc="SPC">
      <DA name="origin" type="Originator_1" bType="Struct" fc="ST" />
      <DA name="ctlNum" bType="INT8U" fc="ST" />
      <DA name="stVal" bType="BOOLEAN" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="stSeld" bType="BOOLEAN" fc="ST" />
      <DA name="opRcvd" bType="BOOLEAN" fc="OR" />
      <DA name="opOk" bType="BOOLEAN" fc="OR" />
      <DA name="tOpOk" bType="Timestamp" fc="OR" />
      <DA name="subEna" bType="BOOLEAN" fc="SV" />
      <DA name="subVal" bType="BOOLEAN" fc="SV" />
      <DA name="subQ" bType="Quality" fc="SV" />
      <DA name="subID" bType="VisString64" fc="SV" />
      <DA name="blkEna" bType="BOOLEAN" fc="BL" />
      <DA name="pulseConfig" type="PulseConfig_1" bType="Struct" fc="CF" />
      <DA name="ctlModel" type="CtlModelKind" bType="Enum" fc="CF" />
      <DA name="sboTimeout" bType="INT32U" fc="CF" />
      <DA name="sboClass" type="SboClassKind" bType="Enum" fc="CF" />
      <DA name="operTimeout" bType="INT32U" fc="CF" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
      <DA name="SBO" bType="VisString129" fc="CO" />
      <DA name="SBOw" type="SBOwBOOLEAN_1" bType="Struct" fc="CO" />
      <DA name="Oper" type="SBOwBOOLEAN_1" bType="Struct" fc="CO" />
      <DA name="Cancel" type="CancelBOOLEAN_1" bType="Struct" fc="CO" />
    </DOType>
    <DOType id="SPG_1_MltLev" cdc="SPG">
      <DA name="setVal" bType="BOOLEAN" fc="SP" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="DPL_1_PhyNam" cdc="DPL">
      <DA name="vendor" bType="VisString255" fc="DC" />
      <DA name="hwRev" bType="VisString255" fc="DC" />
      <DA name="swRev" bType="VisString255" fc="DC" />
      <DA name="serNum" bType="VisString255" fc="DC" />
      <DA name="model" bType="VisString255" fc="DC" />
      <DA name="location" bType="VisString255" fc="DC" />
      <DA name="name" bType="VisString64" fc="DC" />
      <DA name="owner" bType="VisString255" fc="DC" />
      <DA name="ePSName" bType="VisString255" fc="DC" />
      <DA name="primeOper" bType="VisString255" fc="DC" />
      <DA name="secondOper" bType="VisString255" fc="DC" />
      <DA name="latitude" bType="FLOAT32" fc="DC" />
      <DA name="longitude" bType="FLOAT32" fc="DC" />
      <DA name="altitude" bType="FLOAT32" fc="DC" />
      <DA name="mRID" bType="VisString255" fc="DC" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="INS_1_OpTmh" cdc="INS">
      <DA name="stVal" bType="INT32" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="subEna" bType="BOOLEAN" fc="SV" />
      <DA name="subVal" bType="INT32" fc="SV" />
      <DA name="subQ" bType="Quality" fc="SV" />
      <DA name="subID" bType="VisString64" fc="SV" />
      <DA name="blkEna" bType="BOOLEAN" fc="BL" />
      <DA name="units" type="Unit_1" bType="Struct" fc="CF" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="ORG_1_InRef1" cdc="ORG">
      <DA name="setSrcRef" bType="ObjRef" fc="SP" />
      <DA name="setTstRef" bType="ObjRef" fc="SP" />
      <DA name="setSrcCB" bType="ObjRef" fc="SP" />
      <DA name="setTstCB" bType="ObjRef" fc="SP" />
      <DA name="intAddr" bType="VisString255" fc="SP" />
      <DA name="tstEna" bType="BOOLEAN" fc="SP" />
      <DA name="purpose" bType="VisString255" fc="DC" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="SAV_1_VolSv" cdc="SAV">
      <DA name="instMag" type="AnalogueValue_1" bType="Struct" fc="MX" />
      <DA name="q" bType="Quality" fc="MX" qchg="true" />
      <DA name="t" bType="Timestamp" fc="MX" />
      <DA name="units" type="Unit_1" bType="Struct" fc="CF" dchg="true" />
      <DA name="sVC" type="ScaledValueConfig_1" bType="Struct" fc="CF" dchg="true" />
      <DA name="min" type="AnalogueValue_1" bType="Struct" fc="CF" dchg="true" />
      <DA name="max" type="AnalogueValue_1" bType="Struct" fc="CF" dchg="true" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="ASG_1_VRtg" cdc="ASG">
      <DA name="setMag" type="AnalogueValue_1" bType="Struct" fc="SP" dchg="true" />
      <DA name="units" type="Unit_1" bType="Struct" fc="CF" dchg="true" />
      <DA name="sVC" type="ScaledValueConfig_1" bType="Struct" fc="CF" dchg="true" />
      <DA name="minVal" type="AnalogueValue_1" bType="Struct" fc="CF" dchg="true" />
      <DA name="maxVal" type="AnalogueValue_1" bType="Struct" fc="CF" dchg="true" />
      <DA name="stepSize" type="AnalogueValue_1" bType="Struct" fc="CF" dchg="true" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="CSG_1_CorCrv" cdc="CSG">
      <DA name="pointZ" bType="FLOAT32" fc="SP" />
      <DA name="numPts" bType="INT16U" fc="SP" />
      <DA name="crvPts" type="Point_1" bType="Struct" count="32" fc="SP" />
      <DA name="xUnits" type="Unit_1" bType="Struct" fc="CF" />
      <DA name="yUnits" type="Unit_1" bType="Struct" fc="CF" />
      <DA name="zUnits" type="Unit_1" bType="Struct" fc="CF" />
      <DA name="maxPts" bType="INT16U" fc="CF" />
      <DA name="xD" bType="VisString255" fc="DC" />
      <DA name="xDU" bType="Unicode255" fc="DC" />
      <DA name="yD" bType="VisString255" fc="DC" />
      <DA name="yDU" bType="Unicode255" fc="DC" />
      <DA name="zD" bType="VisString255" fc="DC" />
      <DA name="zDU" bType="Unicode255" fc="DC" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="ACD_1_Str" cdc="ACD">
      <DA name="general" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="dirGeneral" type="FaultDirectionKind" bType="Enum" fc="ST" dchg="true" />
      <DA name="phsA" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="dirPhsA" type="PhaseFaultDirectionKind" bType="Enum" fc="ST" dchg="true" />
      <DA name="phsB" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="dirPhsB" type="PhaseFaultDirectionKind" bType="Enum" fc="ST" dchg="true" />
      <DA name="phsC" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="dirPhsC" type="PhaseFaultDirectionKind" bType="Enum" fc="ST" dchg="true" />
      <DA name="neut" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="dirNeut" type="PhaseFaultDirectionKind" bType="Enum" fc="ST" dchg="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="ACT_1_Op" cdc="ACT">
      <DA name="general" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="phsA" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="phsB" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="phsC" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="neut" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="originSrc" type="Originator_1" bType="Struct" fc="ST" />
      <DA name="operTmPhsA" bType="Timestamp" fc="ST" />
      <DA name="operTmPhsB" bType="Timestamp" fc="ST" />
      <DA name="operTmPhsC" bType="Timestamp" fc="ST" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="INC_1_OpCntRs" cdc="INC">
      <DA name="origin" type="Originator_1" bType="Struct" fc="ST" />
      <DA name="ctlNum" bType="INT8U" fc="ST" />
      <DA name="stVal" bType="INT32" fc="ST" dchg="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="stSeld" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="opRcvd" bType="BOOLEAN" fc="OR" dchg="true" />
      <DA name="opOk" bType="BOOLEAN" fc="OR" dchg="true" />
      <DA name="tOpOk" bType="Timestamp" fc="OR" />
      <DA name="subEna" bType="BOOLEAN" fc="SV" />
      <DA name="subVal" bType="INT32" fc="SV" />
      <DA name="subQ" bType="Quality" fc="SV" />
      <DA name="subID" bType="VisString64" fc="SV" />
      <DA name="blkEna" bType="BOOLEAN" fc="BL" />
      <DA name="ctlModel" type="CtlModelKind" bType="Enum" fc="CF" dchg="true" />
      <DA name="sboTimeout" bType="INT32U" fc="CF" dchg="true" />
      <DA name="sboClass" type="SboClassKind" bType="Enum" fc="CF" dchg="true" />
      <DA name="minVal" bType="INT32" fc="CF" dchg="true" />
      <DA name="maxVal" bType="INT32" fc="CF" dchg="true" />
      <DA name="stepSize" bType="INT32U" fc="CF" dchg="true" />
      <DA name="operTimeout" bType="INT32U" fc="CF" dchg="true" />
      <DA name="units" type="Unit_1" bType="Struct" fc="CF" dchg="true" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
      <DA name="SBO" bType="VisString129" fc="CO" />
      <DA name="SBOw" type="SBOwINT32_1" bType="Struct" fc="CO" />
      <DA name="Oper" type="SBOwINT32_1" bType="Struct" fc="CO" />
      <DA name="Cancel" type="CancelINT32_1" bType="Struct" fc="CO" />
    </DOType>
    <DOType id="CURVE_1_TmACrv" cdc="CURVE">
      <DA name="setCharact" type="CurveCharKind" bType="Enum" fc="SP" dchg="true" />
      <DA name="setParA" bType="FLOAT32" fc="SP" dchg="true" />
      <DA name="setParB" bType="FLOAT32" fc="SP" dchg="true" />
      <DA name="setParC" bType="FLOAT32" fc="SP" dchg="true" />
      <DA name="setParD" bType="FLOAT32" fc="SP" dchg="true" />
      <DA name="setParE" bType="FLOAT32" fc="SP" dchg="true" />
      <DA name="setParF" bType="FLOAT32" fc="SP" dchg="true" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="CSD_1_TmASt" cdc="CSD">
      <DA name="xUnits" type="Unit_1" bType="Struct" fc="DC" />
      <DA name="xD" bType="VisString255" fc="DC" />
      <DA name="xDU" bType="Unicode255" fc="DC" />
      <DA name="yUnits" type="Unit_1" bType="Struct" fc="DC" />
      <DA name="yD" bType="VisString255" fc="DC" />
      <DA name="yDU" bType="Unicode255" fc="DC" />
      <DA name="zUnits" type="Unit_1" bType="Struct" fc="DC" />
      <DA name="zD" bType="VisString255" fc="DC" />
      <DA name="zDU" bType="Unicode255" fc="DC" />
      <DA name="numPts" bType="INT16U" fc="DC" />
      <DA name="crvPts" type="Point_1" bType="Struct" count="32" fc="DC" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="ING_1_MinOpTmms" cdc="ING">
      <DA name="setVal" bType="INT32" fc="SP" />
      <DA name="minVal" bType="INT32" fc="CF" />
      <DA name="maxVal" bType="INT32" fc="CF" />
      <DA name="stepSize" bType="INT32U" fc="CF" />
      <DA name="units" type="Unit_1" bType="Struct" fc="CF" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="ENG_1_TypRsCrv" cdc="ENG">
      <DA name="setVal" type="ResetCurveKind" bType="Enum" fc="SP" dchg="true" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="ENG_1_DirMod" cdc="ENG">
      <DA name="setVal" type="DirectionModeKind" bType="Enum" fc="SP" dchg="true" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="ENG_1_TrMod" cdc="ENG">
      <DA name="setVal" type="TripModeKind" bType="Enum" fc="SP" dchg="true" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="MV_1_TotW" cdc="MV">
      <DA name="instMag" type="AnalogueValue_1" bType="Struct" fc="MX" />
      <DA name="mag" type="AnalogueValue_1" bType="Struct" fc="MX" dchg="true" dupd="true" />
      <DA name="range" type="RangeKind" bType="Enum" fc="MX" dchg="true" />
      <DA name="q" bType="Quality" fc="MX" qchg="true" />
      <DA name="t" bType="Timestamp" fc="MX" />
      <DA name="subEna" bType="BOOLEAN" fc="SV" />
      <DA name="subMag" type="AnalogueValue_1" bType="Struct" fc="SV" />
      <DA name="subQ" bType="Quality" fc="SV" />
      <DA name="subID" bType="VisString64" fc="SV" />
      <DA name="blkEna" bType="BOOLEAN" fc="BL" />
      <DA name="units" type="Unit_1" bType="Struct" fc="CF" dchg="true" />
      <DA name="db" bType="INT32U" fc="CF" dchg="true" />
      <DA name="zeroDb" bType="INT32U" fc="CF" dchg="true" />
      <DA name="sVC" type="ScaledValueConfig_1" bType="Struct" fc="CF" dchg="true" />
      <DA name="rangeC" type="RangeConfig_1" bType="Struct" fc="CF" dchg="true" />
      <DA name="smpRate" bType="INT32U" fc="CF" dchg="true" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="CMV_1_phsAB" cdc="CMV">
      <DA name="instCVal" type="Vector_1" bType="Struct" fc="MX" />
      <DA name="cVal" type="Vector_1" bType="Struct" fc="MX" dchg="true" dupd="true" />
      <DA name="range" type="RangeKind" bType="Enum" fc="MX" dchg="true" />
      <DA name="rangeAng" type="RangeKind" bType="Enum" fc="MX" dchg="true" />
      <DA name="q" bType="Quality" fc="MX" qchg="true" />
      <DA name="t" bType="Timestamp" fc="MX" />
      <DA name="subEna" bType="BOOLEAN" fc="SV" />
      <DA name="subCVal" type="Vector_1" bType="Struct" fc="SV" />
      <DA name="subQ" bType="Quality" fc="SV" />
      <DA name="subID" bType="VisString64" fc="SV" />
      <DA name="blkEna" bType="BOOLEAN" fc="BL" />
      <DA name="units" type="Unit_1" bType="Struct" fc="CF" dchg="true" />
      <DA name="db" bType="INT32U" fc="CF" dchg="true" />
      <DA name="dbAng" bType="INT32U" fc="CF" dchg="true" />
      <DA name="zeroDb" bType="INT32U" fc="CF" dchg="true" />
      <DA name="rangeC" type="RangeConfig_1" bType="Struct" fc="CF" dchg="true" />
      <DA name="rangeAngC" type="RangeConfig_1" bType="Struct" fc="CF" dchg="true" />
      <DA name="magSVC" type="ScaledValueConfig_1" bType="Struct" fc="CF" dchg="true" />
      <DA name="angSVC" type="ScaledValueConfig_1" bType="Struct" fc="CF" dchg="true" />
      <DA name="angRef" type="PhaseAngleReferenceKind" bType="Enum" fc="CF" dchg="true" />
      <DA name="smpRate" bType="INT32U" fc="CF" dchg="true" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="DEL_1_PPV" cdc="DEL">
      <SDO name="phsAB" type="CMV_1_phsAB" />
      <SDO name="phsBC" type="CMV_1_phsAB" />
      <SDO name="phsCA" type="CMV_1_phsAB" />
      <DA name="angRef" type="PhaseAngleReferenceKind" bType="Enum" fc="CF" dchg="true" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="WYE_1_PNV" cdc="WYE">
      <SDO name="phsA" type="CMV_1_phsAB" />
      <SDO name="phsB" type="CMV_1_phsAB" />
      <SDO name="phsC" type="CMV_1_phsAB" />
      <SDO name="neut" type="CMV_1_phsAB" />
      <SDO name="net" type="CMV_1_phsAB" />
      <SDO name="res" type="CMV_1_phsAB" />
      <DA name="angRef" type="PhaseAngleReferenceKind" bType="Enum" fc="CF" dchg="true" />
      <DA name="phsToNeut" bType="BOOLEAN" fc="CF" dchg="true" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="ENG_1_ClcTotVA" cdc="ENG">
      <DA name="setVal" type="STotalCalcMethodKind" bType="Enum" fc="SP" dchg="true" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="ENG_1_PFSign" cdc="ENG">
      <DA name="setVal" type="PFSignKind" bType="Enum" fc="SP" dchg="true" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="BCR_1_SumSwARs" cdc="BCR">
      <DA name="actVal" bType="INT64" fc="ST" dchg="true" />
      <DA name="frVal" bType="INT64" fc="ST" dupd="true" />
      <DA name="frTm" bType="Timestamp" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="units" type="Unit_1" bType="Struct" fc="CF" dchg="true" />
      <DA name="pulsQty" bType="FLOAT32" fc="CF" dchg="true" />
      <DA name="frEna" bType="BOOLEAN" fc="CF" dchg="true" />
      <DA name="strTm" bType="Timestamp" fc="CF" dchg="true" />
      <DA name="frPd" bType="INT32" fc="CF" dchg="true" />
      <DA name="frRs" bType="BOOLEAN" fc="CF" dchg="true" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
    </DOType>
    <DOType id="DPC_1_Pos" cdc="DPC">
      <DA name="origin" type="Originator_1" bType="Struct" fc="ST" />
      <DA name="ctlNum" bType="INT8U" fc="ST" />
      <DA name="stVal" bType="Dbpos" fc="ST" dchg="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="stSeld" bType="BOOLEAN" fc="ST" dchg="true" />
      <DA name="opRcvd" bType="BOOLEAN" fc="OR" dchg="true" />
      <DA name="opOk" bType="BOOLEAN" fc="OR" dchg="true" />
      <DA name="tOpOk" bType="Timestamp" fc="OR" />
      <DA name="subEna" bType="BOOLEAN" fc="SV" />
      <DA name="subVal" bType="Dbpos" fc="SV" />
      <DA name="subQ" bType="Quality" fc="SV" />
      <DA name="subID" bType="VisString64" fc="SV" />
      <DA name="blkEna" bType="BOOLEAN" fc="BL" />
      <DA name="pulseConfig" type="PulseConfig_1" bType="Struct" fc="CF" dchg="true" />
      <DA name="ctlModel" type="CtlModelKind" bType="Enum" fc="CF" dchg="true" />
      <DA name="sboTimeout" bType="INT32U" fc="CF" dchg="true" />
      <DA name="sboClass" type="SboClassKind" bType="Enum" fc="CF" dchg="true" />
      <DA name="operTimeout" bType="INT32U" fc="CF" dchg="true" />
      <DA name="d" bType="VisString255" fc="DC" />
      <DA name="dU" bType="Unicode255" fc="DC" />
      <DA name="cdcNs" bType="VisString255" fc="EX" />
      <DA name="cdcName" bType="VisString255" fc="EX" />
      <DA name="dataNs" bType="VisString255" fc="EX" />
      <DA name="SBO" bType="VisString129" fc="CO" />
      <DA name="SBOw" type="SBOwBOOLEAN_1" bType="Struct" fc="CO" />
      <DA name="Oper" type="SBOwBOOLEAN_1" bType="Struct" fc="CO" />
      <DA name="Cancel" type="CancelBOOLEAN_1" bType="Struct" fc="CO" />
    </DOType>
    <DAType id="Originator_1">
      <BDA name="orCat" type="OriginatorCategoryKind" bType="Enum" />
      <BDA name="orIdent" bType="Octet64" />
    </DAType>
    <DAType id="SBOwEnum_1">
      <BDA name="ctlVal" type="BehaviourModeKind" bType="Enum" />
      <BDA name="origin" type="Originator_1" bType="Struct" />
      <BDA name="ctlNum" bType="INT8U" />
      <BDA name="T" bType="Timestamp" />
      <BDA name="Test" bType="BOOLEAN" />
      <BDA name="Check" bType="Check" />
    </DAType>
    <DAType id="CancelEnum_1">
      <BDA name="ctlVal" type="BehaviourModeKind" bType="Enum" />
      <BDA name="origin" type="Originator_1" bType="Struct" />
      <BDA name="ctlNum" bType="INT8U" />
      <BDA name="T" bType="Timestamp" />
      <BDA name="Test" bType="BOOLEAN" />
    </DAType>
    <DAType id="PulseConfig_1">
      <BDA name="cmdQual" type="ControlOutputKind" bType="Enum" />
      <BDA name="onDur" bType="INT32U" />
      <BDA name="offDur" bType="INT32U" />
      <BDA name="numPls" bType="INT32U" />
    </DAType>
    <DAType id="SBOwBOOLEAN_1">
      <BDA name="ctlVal" bType="BOOLEAN" />
      <BDA name="origin" type="Originator_1" bType="Struct" />
      <BDA name="ctlNum" bType="INT8U" />
      <BDA name="T" bType="Timestamp" />
      <BDA name="Test" bType="BOOLEAN" />
      <BDA name="Check" bType="Check" />
    </DAType>
    <DAType id="CancelBOOLEAN_1">
      <BDA name="ctlVal" bType="BOOLEAN" />
      <BDA name="origin" type="Originator_1" bType="Struct" />
      <BDA name="ctlNum" bType="INT8U" />
      <BDA name="T" bType="Timestamp" />
      <BDA name="Test" bType="BOOLEAN" />
    </DAType>
    <DAType id="Unit_1">
      <BDA name="SIUnit" type="SIUnitKind" bType="Enum" />
      <BDA name="multiplier" type="MultiplierKind" bType="Enum" />
    </DAType>
    <DAType id="AnalogueValue_1">
      <BDA name="i" bType="INT32" />
      <BDA name="f" bType="FLOAT32" />
    </DAType>
    <DAType id="ScaledValueConfig_1">
      <BDA name="scaleFactor" bType="FLOAT32" />
      <BDA name="offset" bType="FLOAT32" />
    </DAType>
    <DAType id="Point_1">
      <BDA name="xVal" bType="FLOAT32" />
      <BDA name="yVal" bType="FLOAT32" />
      <BDA name="zVal" bType="FLOAT32" />
    </DAType>
    <DAType id="SBOwINT32_1">
      <BDA name="ctlVal" bType="INT32" />
      <BDA name="origin" type="Originator_1" bType="Struct" />
      <BDA name="ctlNum" bType="INT8U" />
      <BDA name="T" bType="Timestamp" />
      <BDA name="Test" bType="BOOLEAN" />
      <BDA name="Check" bType="Check" />
    </DAType>
    <DAType id="CancelINT32_1">
      <BDA name="ctlVal" bType="INT32" />
      <BDA name="operTm" bType="Timestamp" />
      <BDA name="origin" type="Originator_1" bType="Struct" />
      <BDA name="ctlNum" bType="INT8U" />
      <BDA name="T" bType="Timestamp" />
      <BDA name="Test" bType="BOOLEAN" />
    </DAType>
    <DAType id="RangeConfig_1">
      <BDA name="hhLim" type="AnalogueValue_1" bType="Struct" />
      <BDA name="hLim" type="AnalogueValue_1" bType="Struct" />
      <BDA name="lLim" type="AnalogueValue_1" bType="Struct" />
      <BDA name="llLim" type="AnalogueValue_1" bType="Struct" />
      <BDA name="min" type="AnalogueValue_1" bType="Struct" />
      <BDA name="max" type="AnalogueValue_1" bType="Struct" />
      <BDA name="limDb" bType="INT32U" />
    </DAType>
    <DAType id="Vector_1">
      <BDA name="mag" type="AnalogueValue_1" bType="Struct" />
      <BDA name="ang" type="AnalogueValue_1" bType="Struct" />
    </DAType>
    <EnumType id="BehaviourModeKind">
      <EnumVal ord="1">on</EnumVal>
      <EnumVal ord="2">blocked</EnumVal>
      <EnumVal ord="3">test</EnumVal>
      <EnumVal ord="4">test/blocked</EnumVal>
      <EnumVal ord="5">off</EnumVal>
    </EnumType>
    <EnumType id="HealthKind">
      <EnumVal ord="1">Ok</EnumVal>
      <EnumVal ord="2">Warning</EnumVal>
      <EnumVal ord="3">Alarm</EnumVal>
    </EnumType>
    <EnumType id="OriginatorCategoryKind">
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
    <EnumType id="CtlModelKind">
      <EnumVal ord="0">status-only</EnumVal>
      <EnumVal ord="1">direct-with-normal-security</EnumVal>
      <EnumVal ord="2">sbo-with-normal-security</EnumVal>
      <EnumVal ord="3">direct-with-enhanced-security</EnumVal>
      <EnumVal ord="4">sbo-with-enhanced-security</EnumVal>
    </EnumType>
    <EnumType id="SboClassKind">
      <EnumVal ord="0">operate-once</EnumVal>
      <EnumVal ord="1">operate-many</EnumVal>
    </EnumType>
    <EnumType id="ControlOutputKind">
      <EnumVal ord="0">pulse</EnumVal>
      <EnumVal ord="1">persistent</EnumVal>
    </EnumType>
    <EnumType id="SIUnitKind">
      <EnumVal ord="1">No Units</EnumVal>
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
      <EnumVal ord="0">No Multiplier</EnumVal>
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
    <EnumType id="FaultDirectionKind">
      <EnumVal ord="0">unknown</EnumVal>
      <EnumVal ord="1">forward</EnumVal>
      <EnumVal ord="2">backward</EnumVal>
      <EnumVal ord="3">both</EnumVal>
    </EnumType>
    <EnumType id="PhaseFaultDirectionKind">
      <EnumVal ord="0">unknown</EnumVal>
      <EnumVal ord="1">forward</EnumVal>
      <EnumVal ord="2">backward</EnumVal>
    </EnumType>
    <EnumType id="CurveCharKind">
      <EnumVal ord="0">none</EnumVal>
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
      <EnumVal ord="17">Polynom 1</EnumVal>
      <EnumVal ord="18">Polynom 2</EnumVal>
      <EnumVal ord="19">Polynom 3</EnumVal>
      <EnumVal ord="20">Polynom 4</EnumVal>
      <EnumVal ord="21">Polynom 5</EnumVal>
      <EnumVal ord="22">Polynom 6</EnumVal>
      <EnumVal ord="23">Polynom 7</EnumVal>
      <EnumVal ord="24">Polynom 8</EnumVal>
      <EnumVal ord="25">Polynom 9</EnumVal>
      <EnumVal ord="26">Polynom 10</EnumVal>
      <EnumVal ord="27">Polynom 11</EnumVal>
      <EnumVal ord="28">Polynom 12</EnumVal>
      <EnumVal ord="29">Polynom 13</EnumVal>
      <EnumVal ord="30">Polynom 14</EnumVal>
      <EnumVal ord="31">Polynom 15</EnumVal>
      <EnumVal ord="32">Polynom 16</EnumVal>
      <EnumVal ord="33">Multiline 1</EnumVal>
      <EnumVal ord="34">Multiline 2</EnumVal>
      <EnumVal ord="35">Multiline 3</EnumVal>
      <EnumVal ord="36">Multiline 4</EnumVal>
      <EnumVal ord="37">Multiline 5</EnumVal>
      <EnumVal ord="38">Multiline 6</EnumVal>
      <EnumVal ord="39">Multiline 7</EnumVal>
      <EnumVal ord="40">Multiline 8</EnumVal>
      <EnumVal ord="41">Multiline 9</EnumVal>
      <EnumVal ord="42">Multiline 10</EnumVal>
      <EnumVal ord="43">Multiline 11</EnumVal>
      <EnumVal ord="44">Multiline 12</EnumVal>
      <EnumVal ord="45">Multiline 13</EnumVal>
      <EnumVal ord="46">Multiline 14</EnumVal>
      <EnumVal ord="47">Multiline 15</EnumVal>
      <EnumVal ord="48">Multiline 16</EnumVal>
    </EnumType>
    <EnumType id="ResetCurveKind">
      <EnumVal ord="1">None</EnumVal>
      <EnumVal ord="2">Definite Time Delayed Reset</EnumVal>
      <EnumVal ord="3">Inverse Reset</EnumVal>
    </EnumType>
    <EnumType id="DirectionModeKind">
      <EnumVal ord="1">NonDirectional</EnumVal>
      <EnumVal ord="2">Forward</EnumVal>
      <EnumVal ord="3">Reverse</EnumVal>
    </EnumType>
    <EnumType id="TripModeKind">
      <EnumVal ord="1">3 phase tripping</EnumVal>
      <EnumVal ord="2">1 or 3 phase tripping</EnumVal>
      <EnumVal ord="3">specific</EnumVal>
      <EnumVal ord="4">1 phase tripping</EnumVal>
    </EnumType>
    <EnumType id="RangeKind">
      <EnumVal ord="0">normal</EnumVal>
      <EnumVal ord="1">high</EnumVal>
      <EnumVal ord="2">low</EnumVal>
      <EnumVal ord="3">high-high</EnumVal>
      <EnumVal ord="4">low-low</EnumVal>
    </EnumType>
    <EnumType id="PhaseAngleReferenceKind">
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
      <EnumVal ord="11">Synchrophasor</EnumVal>
    </EnumType>
    <EnumType id="STotalCalcMethodKind">
      <EnumVal ord="1">Vector</EnumVal>
      <EnumVal ord="2">Arithmetic</EnumVal>
    </EnumType>
    <EnumType id="PFSignKind">
      <EnumVal ord="1">IEC</EnumVal>
      <EnumVal ord="2">EEI</EnumVal>
    </EnumType>
  </DataTypeTemplates>
</SCL>
