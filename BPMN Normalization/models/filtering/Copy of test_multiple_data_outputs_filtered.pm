<?xml version="1.0" encoding="ASCII"?>
<pm:Process xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pm="http://BPMN/Simplified" xmi:id="test_multiple_data_outputs" id="test_multiple_data_outputs" name="Default Process">
  <flowElements xsi:type="pm:StartEvent" xmi:id="StartEvent_1" id="StartEvent_1" outgoing="SequenceFlow_2"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_2" id="SequenceFlow_2" sourceRef="StartEvent_1" targetRef="DataObject_1"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_3" id="SequenceFlow_3" sourceRef="DataObject_1" targetRef="ParallelGateway_1"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_1" id="ParallelGateway_1" name="Parallel Gateway 1" incoming="SequenceFlow_3" outgoing="//@flowElements.9 //@flowElements.10" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="DataObject_1" id="DataObject_1" name="Object" incoming="SequenceFlow_2" outgoing="SequenceFlow_3">
    <dataState xmi:id="DataState_1" id="DataState_1" name="State 1"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_3" id="_DataObjectReference_3" name="Object" incoming="//@flowElements.10" outgoing="//@flowElements.12">
    <dataState xmi:id="DataState_2" id="DataState_2" name="State 2"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_4" id="_DataObjectReference_4" name="Object" incoming="//@flowElements.9" outgoing="//@flowElements.11">
    <dataState xmi:id="DataState_3" id="DataState_3" name="State 3"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_5" id="_DataObjectReference_5" name="Object" incoming="//@flowElements.14" outgoing="//@flowElements.13">
    <dataState xmi:id="DataState_4" id="DataState_4" name="State 4"/>
  </flowElements>
  <flowElements xsi:type="pm:EndEvent" xmi:id="EndEvent_1" id="EndEvent_1" incoming="//@flowElements.13"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_3" sourceRef="ParallelGateway_1" targetRef="_DataObjectReference_4"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_2" sourceRef="ParallelGateway_1" targetRef="_DataObjectReference_3"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_3" sourceRef="_DataObjectReference_4" targetRef="//@flowElements.15"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_4" sourceRef="_DataObjectReference_3" targetRef="//@flowElements.15"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_5" sourceRef="_DataObjectReference_5" targetRef="EndEvent_1"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#28" sourceRef="//@flowElements.15" targetRef="_DataObjectReference_5"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#29" incoming="//@flowElements.11 //@flowElements.12" outgoing="//@flowElements.14" gatewayDirection="Converging"/>
</pm:Process>
