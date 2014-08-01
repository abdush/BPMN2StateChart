<?xml version="1.0" encoding="ASCII"?>
<pm:Process xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pm="http://BPMN/Simplified" xmi:id="ID_32136603_1436_1204_0426_056655200001" id="ID_32136603_1436_1204_0426_056655200001" name="patient dermatology">
  <flowElements xsi:type="pm:StartEvent" xmi:id="BP176_BP94" id="BP176_BP94" name="" outgoing="BP176_BP96"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP96" id="BP176_BP96" name="" sourceRef="BP176_BP94" targetRef="DataObject_1"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP98" id="BP176_BP98" name="" sourceRef="DataObject_1" targetRef="BP176_BP103"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="BP176_BP103" id="BP176_BP103" name="Gateway4" incoming="BP176_BP98 BP176_BP164" outgoing="BP176_BP106 BP176_BP113" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP106" id="BP176_BP106" name="" sourceRef="BP176_BP103" targetRef="_DataObjectReference_4"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP108" id="BP176_BP108" name="" sourceRef="_DataObjectReference_4" targetRef="BP176_BP111"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="BP176_BP111" id="BP176_BP111" name="Gateway5" incoming="BP176_BP113 BP176_BP108" outgoing="BP176_BP115" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP113" id="BP176_BP113" name="" sourceRef="BP176_BP103" targetRef="BP176_BP111"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP115" id="BP176_BP115" name="" sourceRef="BP176_BP111" targetRef="_DataObjectReference_5"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP117" id="BP176_BP117" name="" sourceRef="_DataObjectReference_5" targetRef="_DataObjectReference_6"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP124" id="BP176_BP124" name="" sourceRef="_DataObjectReference_6" targetRef="_DataObjectReference_7"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP137" id="BP176_BP137" name="" sourceRef="_DataObjectReference_7" targetRef="BP176_BP159"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="BP176_BP159" id="BP176_BP159" name="Gateway16" incoming="BP176_BP137" outgoing="BP176_BP162 BP176_BP164" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:EndEvent" xmi:id="BP176_BP161" id="BP176_BP161" name="" incoming="BP176_BP162"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP162" id="BP176_BP162" name="" sourceRef="BP176_BP159" targetRef="BP176_BP161"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP164" id="BP176_BP164" name="" sourceRef="BP176_BP159" targetRef="BP176_BP103"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="DataObject_1" id="DataObject_1" name="Patient" incoming="BP176_BP96" outgoing="BP176_BP98">
    <dataState xmi:id="DataState_1" id="DataState_1" name="new"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_4" id="_DataObjectReference_4" name="Patient" incoming="BP176_BP106" outgoing="BP176_BP108">
    <dataState xmi:id="DataState_2" id="DataState_2" name="sampled"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_5" id="_DataObjectReference_5" name="Patient" incoming="BP176_BP115" outgoing="BP176_BP117">
    <dataState xmi:id="DataState_3" id="DataState_3" name="diagnosed"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_6" id="_DataObjectReference_6" name="Patient" incoming="BP176_BP117" outgoing="BP176_BP124">
    <dataState xmi:id="DataState_4" id="DataState_4" name="contacted"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_7" id="_DataObjectReference_7" name="Patient" incoming="BP176_BP124" outgoing="BP176_BP137">
    <dataState xmi:id="DataState_5" id="DataState_5" name="treated"/>
  </flowElements>
</pm:Process>
