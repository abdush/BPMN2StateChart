<?xml version="1.0" encoding="ASCII"?>
<pm:Process xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pm="http://BPMN/Simplified" xmi:id="test_multiple_data_outputs" id="test_multiple_data_outputs" name="Default Process">
  <flowElements xsi:type="pm:StartEvent" xmi:id="StartEvent_1" id="StartEvent_1" outgoing="SequenceFlow_2"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_2" id="SequenceFlow_2" sourceRef="StartEvent_1" targetRef="DataObject_1"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_6" id="SequenceFlow_6" sourceRef="_DataObjectReference_4" targetRef="ExclusiveGateway_2"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_7" id="SequenceFlow_7" sourceRef="_DataObjectReference_3" targetRef="ExclusiveGateway_2"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="DataObject_1" id="DataObject_1" name="Object" incoming="SequenceFlow_2" outgoing="SequenceFlow_4 SequenceFlow_5">
    <dataState xmi:id="DataState_1" id="DataState_1" name="State 1"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_3" id="_DataObjectReference_3" name="Object" incoming="SequenceFlow_5" outgoing="SequenceFlow_7">
    <dataState xmi:id="DataState_2" id="DataState_2" name="State 2"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_4" id="_DataObjectReference_4" name="Object" incoming="SequenceFlow_4" outgoing="SequenceFlow_6">
    <dataState xmi:id="DataState_3" id="DataState_3" name="State 3"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_5" id="_DataObjectReference_5" name="Object" incoming="SequenceFlow_8" outgoing="//@flowElements.13">
    <dataState xmi:id="DataState_4" id="DataState_4" name="State 4"/>
  </flowElements>
  <flowElements xsi:type="pm:EndEvent" xmi:id="EndEvent_1" id="EndEvent_1" incoming="//@flowElements.13"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_4" id="SequenceFlow_4" sourceRef="DataObject_1" targetRef="_DataObjectReference_4"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_5" id="SequenceFlow_5" sourceRef="DataObject_1" targetRef="_DataObjectReference_3"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="ExclusiveGateway_2" id="ExclusiveGateway_2" name="Exclusive Gateway 2" incoming="SequenceFlow_6 SequenceFlow_7" outgoing="SequenceFlow_8" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_8" id="SequenceFlow_8" sourceRef="ExclusiveGateway_2" targetRef="_DataObjectReference_5"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_5" sourceRef="_DataObjectReference_5" targetRef="EndEvent_1"/>
</pm:Process>
