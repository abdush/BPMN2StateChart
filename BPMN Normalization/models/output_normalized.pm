<?xml version="1.0" encoding="ASCII"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ecore="http://www.eclipse.org/emf/2002/Ecore" xmlns:pm="http://BPMN/Simplified">
  <pm:Process xmi:id="_J84mQeneEeOgCMDZjxiKRQ" id="_J84mQeneEeOgCMDZjxiKRQ" name="process_sample">
    <flowElements xsi:type="pm:ObjectNode" xmi:id="DataObject_1" id="DataObject_1" name="Data Object 1" incoming="/0/@flowElements.28" outgoing="/0/@flowElements.29">
      <dataState xmi:id="_vlBPUPGsEeOb54kXqxMk0A_2" id="_vlBPUPGsEeOb54kXqxMk0A_2" name="DataState 1"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_3" id="_DataObjectReference_3" name="Reference 1 to Data Object 1" incoming="/0/@flowElements.30" outgoing="/0/@flowElements.33">
      <dataState xmi:id="_vlBPUPGsEeOb54kXqxMk0A" id="_vlBPUPGsEeOb54kXqxMk0A" name="DataState 2"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_4" id="_DataObjectReference_4" name="Reference 2 to Data Object 1" incoming="/0/@flowElements.31" outgoing="/0/@flowElements.32">
      <dataState xmi:id="_vlBPUfGsEeOb54kXqxMk0A" id="_vlBPUfGsEeOb54kXqxMk0A" name="DataState 3"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_Var6UPG1EeOb54kXqxMk0A" id="_Var6UPG1EeOb54kXqxMk0A" name="Reference 3 to Data Object 1" incoming="/0/@flowElements.34" outgoing="Seq_7EecaeoxEeO7IP1X9T78Pg">
      <dataState xmi:id="_Var6UfG1EeOb54kXqxMk0A" id="_Var6UfG1EeOb54kXqxMk0A" name="DataState 4"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_Var6UvG1EeOb54kXqxMk0A" id="_Var6UvG1EeOb54kXqxMk0A" name="Reference 4 to Data Object 1" incoming="Seq_7EecaeoxEeO7IP1X9T78Pg" outgoing="/0/@flowElements.35">
      <dataState xmi:id="_Var6U_G1EeOb54kXqxMk0A" id="_Var6U_G1EeOb54kXqxMk0A" name="DataState 5"/>
    </flowElements>
    <flowElements xsi:type="pm:StartEvent" xmi:id="_J84mQuneEeOgCMDZjxiKRQ" id="_J84mQuneEeOgCMDZjxiKRQ" outgoing="/0/@flowElements.46"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="_J84mQ-neEeOgCMDZjxiKRQ" id="_J84mQ-neEeOgCMDZjxiKRQ" sourceRef="/0/@flowElements.47" targetRef="/0/@flowElements.41"/>
    <flowElements xsi:type="pm:Activity" xmi:id="_J84mROneEeOgCMDZjxiKRQ" id="_J84mROneEeOgCMDZjxiKRQ" name="task 1" incoming="/0/@flowElements.40" outgoing="/0/@flowElements.48"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="_J84mReneEeOgCMDZjxiKRQ" id="_J84mReneEeOgCMDZjxiKRQ" sourceRef="/0/@flowElements.37" targetRef="/0/@flowElements.43"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="_7unF4OouEeO7IP1X9T78Pg" id="_7unF4OouEeO7IP1X9T78Pg" sourceRef="/0/@flowElements.37" targetRef="/0/@flowElements.45"/>
    <flowElements xsi:type="pm:Activity" xmi:id="_J84mR-neEeOgCMDZjxiKRQ" id="_J84mR-neEeOgCMDZjxiKRQ" name="task 2" incoming="/0/@flowElements.42" outgoing="_J84mSeneEeOgCMDZjxiKRQ"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="_J84mSeneEeOgCMDZjxiKRQ" id="_J84mSeneEeOgCMDZjxiKRQ" sourceRef="_J84mR-neEeOgCMDZjxiKRQ" targetRef="_J84mS-neEeOgCMDZjxiKRQ"/>
    <flowElements xsi:type="pm:Activity" xmi:id="_J84mSOneEeOgCMDZjxiKRQ" id="_J84mSOneEeOgCMDZjxiKRQ" name="task 3" incoming="/0/@flowElements.44" outgoing="_J84mSuneEeOgCMDZjxiKRQ"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="_J84mSuneEeOgCMDZjxiKRQ" id="_J84mSuneEeOgCMDZjxiKRQ" sourceRef="_J84mSOneEeOgCMDZjxiKRQ" targetRef="_J84mS-neEeOgCMDZjxiKRQ"/>
    <flowElements xsi:type="pm:ParallelGateway" xmi:id="_J84mS-neEeOgCMDZjxiKRQ" id="_J84mS-neEeOgCMDZjxiKRQ" incoming="_J84mSeneEeOgCMDZjxiKRQ _J84mSuneEeOgCMDZjxiKRQ" outgoing="_J84mTOneEeOgCMDZjxiKRQ" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="_J84mTOneEeOgCMDZjxiKRQ" id="_J84mTOneEeOgCMDZjxiKRQ" sourceRef="_J84mS-neEeOgCMDZjxiKRQ" targetRef="_7EecYOoxEeO7IP1X9T78Pg"/>
    <flowElements xsi:type="pm:Activity" xmi:id="_7EecYOoxEeO7IP1X9T78Pg" id="_7EecYOoxEeO7IP1X9T78Pg" name="task 4" incoming="_J84mTOneEeOgCMDZjxiKRQ" outgoing="_7EecYeoxEeO7IP1X9T78Pg"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="_7EecYeoxEeO7IP1X9T78Pg" id="_7EecYeoxEeO7IP1X9T78Pg" sourceRef="_7EecYOoxEeO7IP1X9T78Pg" targetRef="_7EecYuoxEeO7IP1X9T78Pg"/>
    <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="_7EecYuoxEeO7IP1X9T78Pg" id="_7EecYuoxEeO7IP1X9T78Pg" incoming="_7EecYeoxEeO7IP1X9T78Pg" outgoing="_7EecY-oxEeO7IP1X9T78Pg _7EecZOoxEeO7IP1X9T78Pg" gatewayDirection="Diverging"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="_7EecY-oxEeO7IP1X9T78Pg" id="_7EecY-oxEeO7IP1X9T78Pg" sourceRef="_7EecYuoxEeO7IP1X9T78Pg" targetRef="_7EecZeoxEeO7IP1X9T78Pg" guard="x > 10"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="_7EecZOoxEeO7IP1X9T78Pg" id="_7EecZOoxEeO7IP1X9T78Pg" sourceRef="_7EecYuoxEeO7IP1X9T78Pg" targetRef="_7EecZ-oxEeO7IP1X9T78Pg" guard="x &lt;= 10"/>
    <flowElements xsi:type="pm:Activity" xmi:id="_7EecZeoxEeO7IP1X9T78Pg" id="_7EecZeoxEeO7IP1X9T78Pg" name="task 5" incoming="_7EecY-oxEeO7IP1X9T78Pg" outgoing="_7EecZuoxEeO7IP1X9T78Pg"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="_7EecZuoxEeO7IP1X9T78Pg" id="_7EecZuoxEeO7IP1X9T78Pg" sourceRef="_7EecZeoxEeO7IP1X9T78Pg" targetRef="/0/@flowElements.39"/>
    <flowElements xsi:type="pm:Activity" xmi:id="_7EecZ-oxEeO7IP1X9T78Pg" id="_7EecZ-oxEeO7IP1X9T78Pg" name="task 6" incoming="_7EecZOoxEeO7IP1X9T78Pg" outgoing="_7EecaOoxEeO7IP1X9T78Pg"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="_7EecaOoxEeO7IP1X9T78Pg" id="_7EecaOoxEeO7IP1X9T78Pg" sourceRef="_7EecZ-oxEeO7IP1X9T78Pg" targetRef="/0/@flowElements.39"/>
    <flowElements xsi:type="pm:Activity" xmi:id="_7EecaeoxEeO7IP1X9T78Pg" id="_7EecaeoxEeO7IP1X9T78Pg" name="task 7" incoming="/0/@flowElements.38" outgoing="/0/@flowElements.34"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="Seq_7EecaeoxEeO7IP1X9T78Pg" id="Seq_7EecaeoxEeO7IP1X9T78Pg" sourceRef="_Var6UPG1EeOb54kXqxMk0A" targetRef="_Var6UvG1EeOb54kXqxMk0A"/>
    <flowElements xsi:type="pm:EndEvent" xmi:id="_J84mTeneEeOgCMDZjxiKRQ" id="_J84mTeneEeOgCMDZjxiKRQ" incoming="/0/@flowElements.35"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_1" sourceRef="/0/@flowElements.47" targetRef="DataObject_1"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_1" sourceRef="DataObject_1" targetRef="/0/@flowElements.41"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_2" sourceRef="/0/@flowElements.49" targetRef="_DataObjectReference_3"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_3" sourceRef="/0/@flowElements.49" targetRef="_DataObjectReference_4"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_3" sourceRef="_DataObjectReference_4" targetRef="/0/@flowElements.43"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_2" sourceRef="_DataObjectReference_3" targetRef="/0/@flowElements.45"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_4" sourceRef="_7EecaeoxEeO7IP1X9T78Pg" targetRef="_Var6UPG1EeOb54kXqxMk0A"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_4" sourceRef="_Var6UvG1EeOb54kXqxMk0A" targetRef="_J84mTeneEeOgCMDZjxiKRQ"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#37" sourceRef="/0/@flowElements.49" targetRef="/0/@flowElements.37"/>
    <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#38" incoming="/0/@flowElements.36" outgoing="_J84mReneEeOgCMDZjxiKRQ _7unF4OouEeO7IP1X9T78Pg" gatewayDirection="Diverging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#39" sourceRef="/0/@flowElements.39" targetRef="_7EecaeoxEeO7IP1X9T78Pg"/>
    <flowElements xsi:type="pm:ExclusiveGateway" id="merge#FlowElement#40" incoming="_7EecZuoxEeO7IP1X9T78Pg _7EecaOoxEeO7IP1X9T78Pg" outgoing="/0/@flowElements.38" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#41" sourceRef="/0/@flowElements.41" targetRef="_J84mROneEeOgCMDZjxiKRQ"/>
    <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#42" incoming="_J84mQ-neEeOgCMDZjxiKRQ /0/@flowElements.29" outgoing="/0/@flowElements.40" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#43" sourceRef="/0/@flowElements.43" targetRef="_J84mR-neEeOgCMDZjxiKRQ"/>
    <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#44" incoming="_J84mReneEeOgCMDZjxiKRQ /0/@flowElements.32" outgoing="/0/@flowElements.42" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#45" sourceRef="/0/@flowElements.45" targetRef="_J84mSOneEeOgCMDZjxiKRQ"/>
    <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#46" incoming="_7unF4OouEeO7IP1X9T78Pg /0/@flowElements.33" outgoing="/0/@flowElements.44" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#47" sourceRef="_J84mQuneEeOgCMDZjxiKRQ" targetRef="/0/@flowElements.47"/>
    <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#48" incoming="/0/@flowElements.46" outgoing="_J84mQ-neEeOgCMDZjxiKRQ /0/@flowElements.28" gatewayDirection="Diverging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#49" sourceRef="_J84mROneEeOgCMDZjxiKRQ" targetRef="/0/@flowElements.49"/>
    <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#50" incoming="/0/@flowElements.48" outgoing="/0/@flowElements.30 /0/@flowElements.31 /0/@flowElements.36" gatewayDirection="Diverging"/>
  </pm:Process>
  <ecore:EStringToStringMapEntry key="xsi" value="http://www.w3.org/2001/XMLSchema-instance"/>
  <ecore:EStringToStringMapEntry key="" value="bpmn2"/>
  <ecore:EStringToStringMapEntry key="bpmn2" value="http://www.omg.org/spec/BPMN/20100524/MODEL"/>
  <ecore:EStringToStringMapEntry key="bpmndi" value="http://www.omg.org/spec/BPMN/20100524/DI"/>
  <ecore:EStringToStringMapEntry key="dc" value="http://www.omg.org/spec/DD/20100524/DC"/>
  <ecore:EStringToStringMapEntry key="di" value="http://www.omg.org/spec/DD/20100524/DI"/>
</xmi:XMI>
