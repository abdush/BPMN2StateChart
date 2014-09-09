<?xml version="1.0" encoding="ASCII"?>
<pm:Process xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pm="http://BPMN/Simplified" xmi:id="taxprocess" id="taxprocess" name="Default Process">
  <flowElements xsi:type="pm:StartEvent" xmi:id="StartEvent_1" id="StartEvent_1" outgoing="//@flowElements.19"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_2" id="SequenceFlow_2" sourceRef="_DataObjectReference_20" targetRef="DataObject_1"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="DataObject_1" id="DataObject_1" name="declaration [submitted]" incoming="SequenceFlow_2" outgoing="//@flowElements.20">
    <dataState xmi:id="DataState_1" id="DataState_1" name="submitted"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_15" id="_DataObjectReference_15" name="declaration [rejected]" incoming="SequenceFlow_6" outgoing="//@flowElements.21">
    <dataState xmi:id="DataState_2" id="DataState_2" name="rejected"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_16" id="_DataObjectReference_16" name="declaration [accepted]" incoming="SequenceFlow_10" outgoing="//@flowElements.22">
    <dataState xmi:id="DataState_3" id="DataState_3" name="accepted"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_17" id="_DataObjectReference_17" name="declaration [processed]" incoming="SequenceFlow_12" outgoing="//@flowElements.23">
    <dataState xmi:id="DataState_4" id="DataState_4" name="processed"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_18" id="_DataObjectReference_18" name="declaration [assessed]" incoming="//@flowElements.23" outgoing="//@flowElements.24">
    <dataState xmi:id="DataState_5" id="DataState_5" name="assessed"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_19" id="_DataObjectReference_19" name="declaration [returned]" incoming="//@flowElements.24" outgoing="//@flowElements.25">
    <dataState xmi:id="DataState_6" id="DataState_6" name="returned"/>
  </flowElements>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="ExclusiveGateway_1" id="ExclusiveGateway_1" name="Exclusive Gateway 1" incoming="//@flowElements.20" outgoing="SequenceFlow_6 SequenceFlow_7" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_6" id="SequenceFlow_6" sourceRef="ExclusiveGateway_1" targetRef="_DataObjectReference_15"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_7" id="SequenceFlow_7" sourceRef="ExclusiveGateway_1" targetRef="ParallelGateway_1"/>
  <flowElements xsi:type="pm:EndEvent" xmi:id="EndEvent_2" id="EndEvent_2" name="End Event 2" incoming="//@flowElements.21"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_1" id="ParallelGateway_1" name="Parallel Gateway 1" incoming="SequenceFlow_7" outgoing="SequenceFlow_10 SequenceFlow_12" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_10" id="SequenceFlow_10" sourceRef="ParallelGateway_1" targetRef="_DataObjectReference_16"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_12" id="SequenceFlow_12" sourceRef="ParallelGateway_1" targetRef="_DataObjectReference_17"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_2" id="ParallelGateway_2" name="Parallel Gateway 2" incoming="//@flowElements.22 //@flowElements.25" outgoing="SequenceFlow_19" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_19" id="SequenceFlow_19" sourceRef="ParallelGateway_2" targetRef="EndEvent_1"/>
  <flowElements xsi:type="pm:EndEvent" xmi:id="EndEvent_1" id="EndEvent_1" incoming="SequenceFlow_19"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_20" id="_DataObjectReference_20" name="declaration [not submitted]" incoming="//@flowElements.19" outgoing="SequenceFlow_2">
    <dataState xmi:id="DataState_7" id="DataState_7" name="not submitted"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_7" sourceRef="StartEvent_1" targetRef="_DataObjectReference_20"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_1" sourceRef="DataObject_1" targetRef="ExclusiveGateway_1"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_2" sourceRef="_DataObjectReference_15" targetRef="EndEvent_2"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_3" sourceRef="_DataObjectReference_16" targetRef="ParallelGateway_2"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_4" sourceRef="_DataObjectReference_17" targetRef="_DataObjectReference_18"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_5" sourceRef="_DataObjectReference_18" targetRef="_DataObjectReference_19"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_6" sourceRef="_DataObjectReference_19" targetRef="ParallelGateway_2"/>
</pm:Process>
