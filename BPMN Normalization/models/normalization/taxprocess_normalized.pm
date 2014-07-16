<?xml version="1.0" encoding="ASCII"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ecore="http://www.eclipse.org/emf/2002/Ecore" xmlns:pm="http://BPMN/Simplified">
  <pm:Process xmi:id="taxprocess" id="taxprocess" name="Default Process">
    <flowElements xsi:type="pm:StartEvent" xmi:id="StartEvent_1" id="StartEvent_1" outgoing="SequenceFlow_2"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_2" id="SequenceFlow_2" sourceRef="StartEvent_1" targetRef="Task_1"/>
    <flowElements xsi:type="pm:Activity" xmi:id="Task_1" id="Task_1" name="send annual statement" incoming="SequenceFlow_2" outgoing="/0/@flowElements.68"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_3" id="SequenceFlow_3" sourceRef="/0/@flowElements.69" targetRef="/0/@flowElements.57"/>
    <flowElements xsi:type="pm:Activity" xmi:id="Task_2" id="Task_2" name="receive annual statement" incoming="/0/@flowElements.56" outgoing="SequenceFlow_4"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_4" id="SequenceFlow_4" sourceRef="Task_2" targetRef="Task_3"/>
    <flowElements xsi:type="pm:Activity" xmi:id="Task_3" id="Task_3" name="check annual statement" incoming="SequenceFlow_4" outgoing="SequenceFlow_5"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_5" id="SequenceFlow_5" sourceRef="Task_3" targetRef="ExclusiveGateway_1"/>
    <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="ExclusiveGateway_1" id="ExclusiveGateway_1" name="Exclusive Gateway 1" incoming="SequenceFlow_5" outgoing="SequenceFlow_6 SequenceFlow_7" gatewayDirection="Diverging"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_6" id="SequenceFlow_6" sourceRef="ExclusiveGateway_1" targetRef="Task_4"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_7" id="SequenceFlow_7" sourceRef="ExclusiveGateway_1" targetRef="ParallelGateway_1"/>
    <flowElements xsi:type="pm:Activity" xmi:id="Task_4" id="Task_4" name="send rejection" incoming="SequenceFlow_6" outgoing="/0/@flowElements.70"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_8" id="SequenceFlow_8" sourceRef="/0/@flowElements.71" targetRef="/0/@flowElements.59"/>
    <flowElements xsi:type="pm:Activity" xmi:id="Task_5" id="Task_5" name="receive rejection" incoming="/0/@flowElements.58" outgoing="SequenceFlow_9"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_9" id="SequenceFlow_9" sourceRef="Task_5" targetRef="EndEvent_2"/>
    <flowElements xsi:type="pm:EndEvent" xmi:id="EndEvent_2" id="EndEvent_2" name="End Event 2" incoming="SequenceFlow_9"/>
    <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_1" id="ParallelGateway_1" name="Parallel Gateway 1" incoming="SequenceFlow_7" outgoing="SequenceFlow_10 SequenceFlow_12" gatewayDirection="Diverging"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_10" id="SequenceFlow_10" sourceRef="ParallelGateway_1" targetRef="Task_6"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_12" id="SequenceFlow_12" sourceRef="ParallelGateway_1" targetRef="Task_8"/>
    <flowElements xsi:type="pm:Activity" xmi:id="Task_8" id="Task_8" name="send processed annual statement" incoming="SequenceFlow_12" outgoing="/0/@flowElements.72"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_13" id="SequenceFlow_13" sourceRef="/0/@flowElements.73" targetRef="/0/@flowElements.61"/>
    <flowElements xsi:type="pm:Activity" xmi:id="Task_10" id="Task_10" name="send tax assessment" incoming="SequenceFlow_14" outgoing="/0/@flowElements.74"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_15" id="SequenceFlow_15" sourceRef="/0/@flowElements.75" targetRef="/0/@flowElements.63"/>
    <flowElements xsi:type="pm:Activity" xmi:id="Task_9" id="Task_9" name="receive processed annual statement" incoming="/0/@flowElements.60" outgoing="SequenceFlow_14"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_14" id="SequenceFlow_14" sourceRef="Task_9" targetRef="Task_10"/>
    <flowElements xsi:type="pm:Activity" xmi:id="Task_11" id="Task_11" name="receive tax assessment" incoming="/0/@flowElements.62" outgoing="/0/@flowElements.76"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_16" id="SequenceFlow_16" sourceRef="/0/@flowElements.77" targetRef="/0/@flowElements.65"/>
    <flowElements xsi:type="pm:Activity" xmi:id="Task_12" id="Task_12" name="send processed tax assessment" incoming="/0/@flowElements.64" outgoing="SequenceFlow_17"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_17" id="SequenceFlow_17" sourceRef="Task_12" targetRef="ParallelGateway_2"/>
    <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_2" id="ParallelGateway_2" name="Parallel Gateway 2" incoming="SequenceFlow_17 SequenceFlow_18" outgoing="SequenceFlow_19" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_19" id="SequenceFlow_19" sourceRef="ParallelGateway_2" targetRef="Task_13"/>
    <flowElements xsi:type="pm:Activity" xmi:id="Task_13" id="Task_13" name="receive processed tax assessment" incoming="SequenceFlow_19" outgoing="SequenceFlow_20"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_20" id="SequenceFlow_20" sourceRef="Task_13" targetRef="EndEvent_1"/>
    <flowElements xsi:type="pm:EndEvent" xmi:id="EndEvent_1" id="EndEvent_1" incoming="SequenceFlow_20"/>
    <flowElements xsi:type="pm:Activity" xmi:id="Task_6" id="Task_6" name="send confirmation of acceptance" incoming="SequenceFlow_10" outgoing="/0/@flowElements.78"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_11" id="SequenceFlow_11" sourceRef="/0/@flowElements.79" targetRef="/0/@flowElements.67"/>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="DataObject_1" id="DataObject_1" name="declaration [submitted]" incoming="/0/@flowElements.44" outgoing="/0/@flowElements.45">
      <dataState xmi:id="DataState_1" id="DataState_1" name="submitted"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_15" id="_DataObjectReference_15" name="declaration [rejected]" incoming="/0/@flowElements.46" outgoing="/0/@flowElements.47">
      <dataState xmi:id="DataState_2" id="DataState_2" name="rejected"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_16" id="_DataObjectReference_16" name="declaration [accepted]" incoming="/0/@flowElements.54" outgoing="/0/@flowElements.55">
      <dataState xmi:id="DataState_3" id="DataState_3" name="accepted"/>
    </flowElements>
    <flowElements xsi:type="pm:Activity" xmi:id="Task_7" id="Task_7" name="receive confirmation of acceptance" incoming="/0/@flowElements.66" outgoing="SequenceFlow_18"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_18" id="SequenceFlow_18" sourceRef="Task_7" targetRef="ParallelGateway_2"/>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_17" id="_DataObjectReference_17" name="declaration [processed]" incoming="/0/@flowElements.48" outgoing="/0/@flowElements.50">
      <dataState xmi:id="DataState_4" id="DataState_4" name="processed"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_18" id="_DataObjectReference_18" name="declaration [assessed]" incoming="/0/@flowElements.49" outgoing="/0/@flowElements.51">
      <dataState xmi:id="DataState_5" id="DataState_5" name="assessed"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_19" id="_DataObjectReference_19" name="declaration [returned]" incoming="/0/@flowElements.52" outgoing="/0/@flowElements.53">
      <dataState xmi:id="DataState_6" id="DataState_6" name="returned"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_1" sourceRef="/0/@flowElements.69" targetRef="DataObject_1"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_1" sourceRef="DataObject_1" targetRef="/0/@flowElements.57"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_2" sourceRef="/0/@flowElements.71" targetRef="_DataObjectReference_15"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_2" sourceRef="_DataObjectReference_15" targetRef="/0/@flowElements.59"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_4" sourceRef="/0/@flowElements.73" targetRef="_DataObjectReference_17"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_5" sourceRef="/0/@flowElements.75" targetRef="_DataObjectReference_18"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_4" sourceRef="_DataObjectReference_17" targetRef="/0/@flowElements.61"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_5" sourceRef="_DataObjectReference_18" targetRef="/0/@flowElements.63"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_6" sourceRef="/0/@flowElements.77" targetRef="_DataObjectReference_19"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_6" sourceRef="_DataObjectReference_19" targetRef="/0/@flowElements.65"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_3" sourceRef="/0/@flowElements.79" targetRef="_DataObjectReference_16"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_3" sourceRef="_DataObjectReference_16" targetRef="/0/@flowElements.67"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#57" sourceRef="/0/@flowElements.57" targetRef="Task_2"/>
    <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#58" incoming="SequenceFlow_3 /0/@flowElements.45" outgoing="/0/@flowElements.56" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#59" sourceRef="/0/@flowElements.59" targetRef="Task_5"/>
    <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#60" incoming="SequenceFlow_8 /0/@flowElements.47" outgoing="/0/@flowElements.58" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#61" sourceRef="/0/@flowElements.61" targetRef="Task_9"/>
    <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#62" incoming="SequenceFlow_13 /0/@flowElements.50" outgoing="/0/@flowElements.60" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#63" sourceRef="/0/@flowElements.63" targetRef="Task_11"/>
    <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#64" incoming="SequenceFlow_15 /0/@flowElements.51" outgoing="/0/@flowElements.62" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#65" sourceRef="/0/@flowElements.65" targetRef="Task_12"/>
    <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#66" incoming="SequenceFlow_16 /0/@flowElements.53" outgoing="/0/@flowElements.64" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#67" sourceRef="/0/@flowElements.67" targetRef="Task_7"/>
    <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#68" incoming="SequenceFlow_11 /0/@flowElements.55" outgoing="/0/@flowElements.66" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#69" sourceRef="Task_1" targetRef="/0/@flowElements.69"/>
    <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#70" incoming="/0/@flowElements.68" outgoing="SequenceFlow_3 /0/@flowElements.44" gatewayDirection="Diverging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#71" sourceRef="Task_4" targetRef="/0/@flowElements.71"/>
    <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#72" incoming="/0/@flowElements.70" outgoing="SequenceFlow_8 /0/@flowElements.46" gatewayDirection="Diverging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#73" sourceRef="Task_8" targetRef="/0/@flowElements.73"/>
    <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#74" incoming="/0/@flowElements.72" outgoing="SequenceFlow_13 /0/@flowElements.48" gatewayDirection="Diverging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#75" sourceRef="Task_10" targetRef="/0/@flowElements.75"/>
    <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#76" incoming="/0/@flowElements.74" outgoing="SequenceFlow_15 /0/@flowElements.49" gatewayDirection="Diverging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#77" sourceRef="Task_11" targetRef="/0/@flowElements.77"/>
    <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#78" incoming="/0/@flowElements.76" outgoing="SequenceFlow_16 /0/@flowElements.52" gatewayDirection="Diverging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#79" sourceRef="Task_6" targetRef="/0/@flowElements.79"/>
    <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#80" incoming="/0/@flowElements.78" outgoing="SequenceFlow_11 /0/@flowElements.54" gatewayDirection="Diverging"/>
  </pm:Process>
  <ecore:EStringToStringMapEntry key="xsi" value="http://www.w3.org/2001/XMLSchema-instance"/>
  <ecore:EStringToStringMapEntry key="bpmn2" value="http://www.omg.org/spec/BPMN/20100524/MODEL"/>
  <ecore:EStringToStringMapEntry key="bpmndi" value="http://www.omg.org/spec/BPMN/20100524/DI"/>
  <ecore:EStringToStringMapEntry key="dc" value="http://www.omg.org/spec/DD/20100524/DC"/>
  <ecore:EStringToStringMapEntry key="di" value="http://www.omg.org/spec/DD/20100524/DI"/>
</xmi:XMI>
