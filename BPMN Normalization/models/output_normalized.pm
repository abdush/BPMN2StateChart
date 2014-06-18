<?xml version="1.0" encoding="ASCII"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ecore="http://www.eclipse.org/emf/2002/Ecore" xmlns:pm="http://BPMN/Simplified">
  <pm:Process xmi:id="_J84mQeneEeOgCMDZjxiKRQ" id="_J84mQeneEeOgCMDZjxiKRQ" name="process_sample">
    <flowElements xsi:type="pm:StartEvent" xmi:id="_J84mQuneEeOgCMDZjxiKRQ" id="_J84mQuneEeOgCMDZjxiKRQ" outgoing="/0/@flowElements.21"/>
    <flowElements xsi:type="pm:ParallelGateway" xmi:id="_J84mS-neEeOgCMDZjxiKRQ" id="_J84mS-neEeOgCMDZjxiKRQ" incoming="/0/@flowElements.16 /0/@flowElements.17" outgoing="_J84mTOneEeOgCMDZjxiKRQ" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="_J84mTOneEeOgCMDZjxiKRQ" id="_J84mTOneEeOgCMDZjxiKRQ" sourceRef="_J84mS-neEeOgCMDZjxiKRQ" targetRef="_7EecYuoxEeO7IP1X9T78Pg"/>
    <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="_7EecYuoxEeO7IP1X9T78Pg" id="_7EecYuoxEeO7IP1X9T78Pg" incoming="_J84mTOneEeOgCMDZjxiKRQ" outgoing="_7EecY-oxEeO7IP1X9T78Pg _7EecZOoxEeO7IP1X9T78Pg" gatewayDirection="Diverging"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="_7EecY-oxEeO7IP1X9T78Pg" id="_7EecY-oxEeO7IP1X9T78Pg" sourceRef="_7EecYuoxEeO7IP1X9T78Pg" targetRef="/0/@flowElements.20"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="_7EecZOoxEeO7IP1X9T78Pg" id="_7EecZOoxEeO7IP1X9T78Pg" sourceRef="_7EecYuoxEeO7IP1X9T78Pg" targetRef="/0/@flowElements.20"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="Seq_7EecaeoxEeO7IP1X9T78Pg" id="Seq_7EecaeoxEeO7IP1X9T78Pg" sourceRef="_Var6UPG1EeOb54kXqxMk0A" targetRef="_Var6UvG1EeOb54kXqxMk0A"/>
    <flowElements xsi:type="pm:EndEvent" xmi:id="_J84mTeneEeOgCMDZjxiKRQ" id="_J84mTeneEeOgCMDZjxiKRQ" incoming="/0/@flowElements.18"/>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="DataObject_1" id="DataObject_1" name="Data Object 1" incoming="/0/@flowElements.21" outgoing="/0/@flowElements.13">
      <dataState xmi:id="_vlBPUPGsEeOb54kXqxMk0A_2" id="_vlBPUPGsEeOb54kXqxMk0A_2" name="DataState 1"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_3" id="_DataObjectReference_3" name="Reference 1 to Data Object 1" incoming="/0/@flowElements.14" outgoing="/0/@flowElements.17">
      <dataState xmi:id="_vlBPUPGsEeOb54kXqxMk0A" id="_vlBPUPGsEeOb54kXqxMk0A" name="DataState 2"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_4" id="_DataObjectReference_4" name="Reference 2 to Data Object 1" incoming="/0/@flowElements.15" outgoing="/0/@flowElements.16">
      <dataState xmi:id="_vlBPUfGsEeOb54kXqxMk0A" id="_vlBPUfGsEeOb54kXqxMk0A" name="DataState 3"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_Var6UPG1EeOb54kXqxMk0A" id="_Var6UPG1EeOb54kXqxMk0A" name="Reference 3 to Data Object 1" incoming="/0/@flowElements.19" outgoing="Seq_7EecaeoxEeO7IP1X9T78Pg">
      <dataState xmi:id="_Var6UfG1EeOb54kXqxMk0A" id="_Var6UfG1EeOb54kXqxMk0A" name="DataState 4"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_Var6UvG1EeOb54kXqxMk0A" id="_Var6UvG1EeOb54kXqxMk0A" name="Reference 4 to Data Object 1" incoming="Seq_7EecaeoxEeO7IP1X9T78Pg" outgoing="/0/@flowElements.18">
      <dataState xmi:id="_Var6U_G1EeOb54kXqxMk0A" id="_Var6U_G1EeOb54kXqxMk0A" name="DataState 5"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_1" sourceRef="DataObject_1" targetRef="/0/@flowElements.22"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_2" sourceRef="/0/@flowElements.22" targetRef="_DataObjectReference_3"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_3" sourceRef="/0/@flowElements.22" targetRef="_DataObjectReference_4"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_3" sourceRef="_DataObjectReference_4" targetRef="_J84mS-neEeOgCMDZjxiKRQ"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_2" sourceRef="_DataObjectReference_3" targetRef="_J84mS-neEeOgCMDZjxiKRQ"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_4" sourceRef="_Var6UvG1EeOb54kXqxMk0A" targetRef="_J84mTeneEeOgCMDZjxiKRQ"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#39" sourceRef="/0/@flowElements.20" targetRef="_Var6UPG1EeOb54kXqxMk0A"/>
    <flowElements xsi:type="pm:ExclusiveGateway" id="merge#FlowElement#40" incoming="_7EecY-oxEeO7IP1X9T78Pg _7EecZOoxEeO7IP1X9T78Pg" outgoing="/0/@flowElements.19" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#47" sourceRef="_J84mQuneEeOgCMDZjxiKRQ" targetRef="DataObject_1"/>
    <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#50" incoming="/0/@flowElements.13" outgoing="/0/@flowElements.14 /0/@flowElements.15" gatewayDirection="Diverging"/>
  </pm:Process>
  <ecore:EStringToStringMapEntry key="" value="bpmn2"/>
  <ecore:EStringToStringMapEntry key="bpmn2" value="http://www.omg.org/spec/BPMN/20100524/MODEL"/>
  <ecore:EStringToStringMapEntry key="bpmndi" value="http://www.omg.org/spec/BPMN/20100524/DI"/>
  <ecore:EStringToStringMapEntry key="dc" value="http://www.omg.org/spec/DD/20100524/DC"/>
  <ecore:EStringToStringMapEntry key="di" value="http://www.omg.org/spec/DD/20100524/DI"/>
  <ecore:EStringToStringMapEntry key="xsi" value="http://www.w3.org/2001/XMLSchema-instance"/>
</xmi:XMI>
