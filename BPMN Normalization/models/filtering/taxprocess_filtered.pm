<?xml version="1.0" encoding="ASCII"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ecore="http://www.eclipse.org/emf/2002/Ecore" xmlns:pm="http://BPMN/Simplified">
  <pm:Process xmi:id="taxprocess" id="taxprocess" name="Default Process">
    <flowElements xsi:type="pm:StartEvent" xmi:id="StartEvent_1" id="StartEvent_1" outgoing="SequenceFlow_2"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_2" id="SequenceFlow_2" sourceRef="StartEvent_1" targetRef="DataObject_1"/>
    <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="ExclusiveGateway_1" id="ExclusiveGateway_1" name="Exclusive Gateway 1" incoming="/0/@flowElements.18" outgoing="SequenceFlow_6 SequenceFlow_7" gatewayDirection="Diverging"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_6" id="SequenceFlow_6" sourceRef="ExclusiveGateway_1" targetRef="_DataObjectReference_15"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_7" id="SequenceFlow_7" sourceRef="ExclusiveGateway_1" targetRef="ParallelGateway_1"/>
    <flowElements xsi:type="pm:EndEvent" xmi:id="EndEvent_2" id="EndEvent_2" name="End Event 2" incoming="/0/@flowElements.19"/>
    <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_1" id="ParallelGateway_1" name="Parallel Gateway 1" incoming="SequenceFlow_7" outgoing="SequenceFlow_10 SequenceFlow_12" gatewayDirection="Diverging"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_10" id="SequenceFlow_10" sourceRef="ParallelGateway_1" targetRef="_DataObjectReference_16"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_12" id="SequenceFlow_12" sourceRef="ParallelGateway_1" targetRef="_DataObjectReference_17"/>
    <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_2" id="ParallelGateway_2" name="Parallel Gateway 2" incoming="/0/@flowElements.22 /0/@flowElements.23" outgoing="SequenceFlow_19" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_19" id="SequenceFlow_19" sourceRef="ParallelGateway_2" targetRef="EndEvent_1"/>
    <flowElements xsi:type="pm:EndEvent" xmi:id="EndEvent_1" id="EndEvent_1" incoming="SequenceFlow_19"/>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="DataObject_1" id="DataObject_1" name="declaration [submitted]" incoming="SequenceFlow_2" outgoing="/0/@flowElements.18">
      <dataState xmi:id="DataState_1" id="DataState_1" name="submitted"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_15" id="_DataObjectReference_15" name="declaration [rejected]" incoming="SequenceFlow_6" outgoing="/0/@flowElements.19">
      <dataState xmi:id="DataState_2" id="DataState_2" name="rejected"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_16" id="_DataObjectReference_16" name="declaration [accepted]" incoming="SequenceFlow_10" outgoing="/0/@flowElements.23">
      <dataState xmi:id="DataState_3" id="DataState_3" name="accepted"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_17" id="_DataObjectReference_17" name="declaration [processed]" incoming="SequenceFlow_12" outgoing="/0/@flowElements.20">
      <dataState xmi:id="DataState_4" id="DataState_4" name="processed"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_18" id="_DataObjectReference_18" name="declaration [assessed]" incoming="/0/@flowElements.20" outgoing="/0/@flowElements.21">
      <dataState xmi:id="DataState_5" id="DataState_5" name="assessed"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_19" id="_DataObjectReference_19" name="declaration [returned]" incoming="/0/@flowElements.21" outgoing="/0/@flowElements.22">
      <dataState xmi:id="DataState_6" id="DataState_6" name="returned"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_1" sourceRef="DataObject_1" targetRef="ExclusiveGateway_1"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_2" sourceRef="_DataObjectReference_15" targetRef="EndEvent_2"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_4" sourceRef="_DataObjectReference_17" targetRef="_DataObjectReference_18"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_5" sourceRef="_DataObjectReference_18" targetRef="_DataObjectReference_19"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_6" sourceRef="_DataObjectReference_19" targetRef="ParallelGateway_2"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_3" sourceRef="_DataObjectReference_16" targetRef="ParallelGateway_2"/>
  </pm:Process>
  <ecore:EStringToStringMapEntry key="xsi" value="http://www.w3.org/2001/XMLSchema-instance"/>
  <ecore:EStringToStringMapEntry key="bpmn2" value="http://www.omg.org/spec/BPMN/20100524/MODEL"/>
  <ecore:EStringToStringMapEntry key="bpmndi" value="http://www.omg.org/spec/BPMN/20100524/DI"/>
  <ecore:EStringToStringMapEntry key="dc" value="http://www.omg.org/spec/DD/20100524/DC"/>
  <ecore:EStringToStringMapEntry key="di" value="http://www.omg.org/spec/DD/20100524/DI"/>
</xmi:XMI>
