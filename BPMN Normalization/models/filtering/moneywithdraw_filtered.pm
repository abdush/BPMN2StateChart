<?xml version="1.0" encoding="ASCII"?>
<pm:Process xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pm="http://BPMN/Simplified" xmi:id="moneywithdraw" id="moneywithdraw" name="Default Process">
  <flowElements xsi:type="pm:StartEvent" xmi:id="StartEvent_1" id="StartEvent_1" outgoing="SequenceFlow_2"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_2" id="SequenceFlow_2" sourceRef="StartEvent_1" targetRef="DataObject_1"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_11" id="SequenceFlow_11" sourceRef="_DataObjectReference_4" targetRef="EndEvent_2"/>
  <flowElements xsi:type="pm:EndEvent" xmi:id="EndEvent_2" id="EndEvent_2" name="End Event 2" incoming="SequenceFlow_11"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="DataObject_1" id="DataObject_1" name="Account [uncreditted]" incoming="SequenceFlow_2" outgoing="//@flowElements.7">
    <dataState xmi:id="DataState_1" id="DataState_1" name="uncreditted"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_3" id="_DataObjectReference_3" name="Account [checked]" incoming="//@flowElements.7" outgoing="//@flowElements.8">
    <dataState xmi:id="DataState_2" id="DataState_2" name="checked"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_4" id="_DataObjectReference_4" name="Account [creditted]" incoming="//@flowElements.8" outgoing="SequenceFlow_11">
    <dataState xmi:id="DataState_3" id="DataState_3" name="creditted"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_1" sourceRef="DataObject_1" targetRef="_DataObjectReference_3"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_2" sourceRef="_DataObjectReference_3" targetRef="_DataObjectReference_4"/>
</pm:Process>
