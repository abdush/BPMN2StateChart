<?xml version="1.0" encoding="ASCII"?>
<pm:Process xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pm="http://BPMN/Simplified" xmi:id="test" id="test" name="Default Process">
  <flowElements xsi:type="pm:StartEvent" xmi:id="StartEvent_1" id="StartEvent_1" outgoing="SequenceFlow_2"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_2" id="SequenceFlow_2" sourceRef="StartEvent_1" targetRef="DataObject_1"/>
  <flowElements xsi:type="pm:EndEvent" xmi:id="EndEvent_1" id="EndEvent_1" incoming="//@flowElements.11"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="DataObject_1" id="DataObject_1" name="Object 1" incoming="SequenceFlow_2" outgoing="//@flowElements.6">
    <dataState xmi:id="DataState_1" id="DataState_1" name="Data State 1"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_3" id="_DataObjectReference_3" name="Reference to Object 1" incoming="//@flowElements.8" outgoing="//@flowElements.9">
    <dataState xmi:id="DataState_3" id="DataState_3" name="Data State 3"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_4" id="_DataObjectReference_4" name="Reference to Object 1" incoming="//@flowElements.7" outgoing="//@flowElements.10">
    <dataState xmi:id="DataState_2" id="DataState_2" name="Data State 2"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_1" sourceRef="DataObject_1" targetRef="//@flowElements.13"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_2" sourceRef="//@flowElements.13" targetRef="_DataObjectReference_4"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_3" sourceRef="//@flowElements.13" targetRef="_DataObjectReference_3"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_2" sourceRef="_DataObjectReference_3" targetRef="//@flowElements.12"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_3" sourceRef="_DataObjectReference_4" targetRef="//@flowElements.12"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#19" sourceRef="//@flowElements.12" targetRef="EndEvent_1"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#20" incoming="//@flowElements.9 //@flowElements.10" outgoing="//@flowElements.11" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#22" incoming="//@flowElements.6" outgoing="//@flowElements.7 //@flowElements.8" gatewayDirection="Diverging"/>
</pm:Process>
