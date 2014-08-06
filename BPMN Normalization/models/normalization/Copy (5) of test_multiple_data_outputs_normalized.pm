<?xml version="1.0" encoding="ASCII"?>
<pm:Process xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pm="http://BPMN/Simplified" xmi:id="test" id="test" name="Default Process">
  <flowElements xsi:type="pm:StartEvent" xmi:id="StartEvent_1" id="StartEvent_1" outgoing="SequenceFlow_2"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_2" id="SequenceFlow_2" sourceRef="StartEvent_1" targetRef="Task_1"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_2" id="Task_2" name="Task 2" incoming="//@flowElements.14" outgoing="//@flowElements.12"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_1" id="SequenceFlow_1" sourceRef="_DataObjectReference_3" targetRef="EndEvent_1"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_1" id="Task_1" name="Task 1" incoming="SequenceFlow_2" outgoing="//@flowElements.16"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_3" id="SequenceFlow_3" sourceRef="//@flowElements.17" targetRef="//@flowElements.15"/>
  <flowElements xsi:type="pm:EndEvent" xmi:id="EndEvent_1" id="EndEvent_1" incoming="SequenceFlow_1"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="DataObject_1" id="DataObject_1" name="Object 1" incoming="//@flowElements.13" outgoing="//@flowElements.10">
    <dataState xmi:id="DataState_1" id="DataState_1" name="Data State 1"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_3" id="_DataObjectReference_3" name="Reference to Object 1" incoming="//@flowElements.12" outgoing="SequenceFlow_1">
    <dataState xmi:id="DataState_3" id="DataState_3" name="Data State 3"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_4" id="_DataObjectReference_4" name="Reference to Object 1" incoming="//@flowElements.11" outgoing="//@flowElements.11">
    <dataState xmi:id="DataState_2" id="DataState_2" name="Data State 2"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_1" sourceRef="DataObject_1" targetRef="//@flowElements.15"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_2" sourceRef="_DataObjectReference_4" targetRef="_DataObjectReference_4"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_3" sourceRef="Task_2" targetRef="_DataObjectReference_3"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_1" sourceRef="//@flowElements.17" targetRef="DataObject_1"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#15" sourceRef="//@flowElements.15" targetRef="Task_2"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#16" incoming="SequenceFlow_3 //@flowElements.10" outgoing="//@flowElements.14" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#17" sourceRef="Task_1" targetRef="//@flowElements.17"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#18" incoming="//@flowElements.16" outgoing="SequenceFlow_3 //@flowElements.13" gatewayDirection="Diverging"/>
</pm:Process>
