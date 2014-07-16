<?xml version="1.0" encoding="ASCII"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ecore="http://www.eclipse.org/emf/2002/Ecore" xmlns:pm="http://BPMN/Simplified">
  <pm:Process xmi:id="claim" id="claim" name="Default Process">
    <flowElements xsi:type="pm:StartEvent" xmi:id="StartEvent_1" id="StartEvent_1" outgoing="SequenceFlow_1"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_1" id="SequenceFlow_1" sourceRef="StartEvent_1" targetRef="/0/@flowElements.54"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_3" id="SequenceFlow_3" sourceRef="/0/@flowElements.54" targetRef="/0/@flowElements.51"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_4" id="SequenceFlow_4" sourceRef="/0/@flowElements.54" targetRef="/0/@flowElements.44"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_5" id="SequenceFlow_5" sourceRef="/0/@flowElements.54" targetRef="/0/@flowElements.45"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_6" id="SequenceFlow_6" sourceRef="/0/@flowElements.44" targetRef="/0/@flowElements.46"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_7" id="SequenceFlow_7" sourceRef="/0/@flowElements.45" targetRef="/0/@flowElements.46"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_10" id="SequenceFlow_10" sourceRef="_DataObjectReference_8" targetRef="/0/@flowElements.53" guard="[else]"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_11" id="SequenceFlow_11" sourceRef="_DataObjectReference_8" targetRef="/0/@flowElements.47" guard="[ok]"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_16" id="SequenceFlow_16" sourceRef="_DataObjectReference_11" targetRef="ParallelGateway_4"/>
    <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_4" id="ParallelGateway_4" name="Parallel Gateway 4" incoming="SequenceFlow_16" outgoing="SequenceFlow_17" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_17" id="SequenceFlow_17" sourceRef="ParallelGateway_4" targetRef="ExclusiveGateway_2"/>
    <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="ExclusiveGateway_2" id="ExclusiveGateway_2" name="Exclusive Gateway 2" incoming="SequenceFlow_17 SequenceFlow_18" outgoing="SequenceFlow_19" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_19" id="SequenceFlow_19" sourceRef="ExclusiveGateway_2" targetRef="ParallelGateway_5"/>
    <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_5" id="ParallelGateway_5" name="Parallel Gateway 5" incoming="SequenceFlow_19 SequenceFlow_22" outgoing="SequenceFlow_20" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_20" id="SequenceFlow_20" sourceRef="ParallelGateway_5" targetRef="_DataObjectReference_12"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_21" id="SequenceFlow_21" sourceRef="_DataObjectReference_12" targetRef="EndEvent_1"/>
    <flowElements xsi:type="pm:EndEvent" xmi:id="EndEvent_1" id="EndEvent_1" incoming="SequenceFlow_21"/>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="DataObject_1" id="DataObject_1" name="Claim [Received]" incoming="/0/@flowElements.31" outgoing="/0/@flowElements.43">
      <dataState xmi:id="DataState_1" id="DataState_1" name="received"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_3" id="_DataObjectReference_3" name="Claim [policy not checked]" incoming="/0/@flowElements.32" outgoing="/0/@flowElements.34">
      <dataState xmi:id="DataState_2" id="DataState_2" name="policy not checked"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_4" id="_DataObjectReference_4" name="Claim [damage not checked]" incoming="/0/@flowElements.33" outgoing="/0/@flowElements.36">
      <dataState xmi:id="DataState_3" id="DataState_3" name="damage not checked"/>
    </flowElements>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_22" id="SequenceFlow_22" sourceRef="_DataObjectReference_7" targetRef="ParallelGateway_5"/>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_5" id="_DataObjectReference_5" name="Claim [policy checked]" incoming="/0/@flowElements.35" outgoing="/0/@flowElements.39">
      <dataState xmi:id="DataState_4" id="DataState_4" name="policy checked"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_6" id="_DataObjectReference_6" name="Claim [damage checked]" incoming="/0/@flowElements.37" outgoing="/0/@flowElements.38">
      <dataState xmi:id="DataState_5" id="DataState_5" name="damage checked"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_7" id="_DataObjectReference_7" name="Claim [confirmed]" incoming="/0/@flowElements.50" outgoing="SequenceFlow_22">
      <dataState xmi:id="DataState_6" id="DataState_6" name="confirmed"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_8" id="_DataObjectReference_8" name="Claim [decided]" incoming="/0/@flowElements.40" outgoing="SequenceFlow_10 SequenceFlow_11">
      <dataState xmi:id="DataState_7" id="DataState_7" name="decided"/>
    </flowElements>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_18" id="SequenceFlow_18" sourceRef="_DataObjectReference_9" targetRef="ExclusiveGateway_2"/>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_9" id="_DataObjectReference_9" name="Claim [Rejected]" incoming="/0/@flowElements.52" outgoing="SequenceFlow_18">
      <dataState xmi:id="DataState_8" id="DataState_8" name="Rejected"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_10" id="_DataObjectReference_10" name="Claim [assessed]" incoming="/0/@flowElements.41" outgoing="/0/@flowElements.42">
      <dataState xmi:id="DataState_9" id="DataState_9" name="assessed"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_11" id="_DataObjectReference_11" name="Claim [settled]" incoming="/0/@flowElements.48" outgoing="SequenceFlow_16">
      <dataState xmi:id="DataState_10" id="DataState_10" name="settled"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_12" id="_DataObjectReference_12" name="Claim [archived]" incoming="SequenceFlow_20" outgoing="SequenceFlow_21">
      <dataState xmi:id="DataState_11" id="DataState_11" name="archived"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_1" sourceRef="/0/@flowElements.54" targetRef="DataObject_1"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_2" sourceRef="/0/@flowElements.54" targetRef="_DataObjectReference_3"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_3" sourceRef="/0/@flowElements.54" targetRef="_DataObjectReference_4"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_1" sourceRef="_DataObjectReference_3" targetRef="/0/@flowElements.44"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_5" sourceRef="/0/@flowElements.44" targetRef="_DataObjectReference_5"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_4" sourceRef="_DataObjectReference_4" targetRef="/0/@flowElements.45"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_4" sourceRef="/0/@flowElements.45" targetRef="_DataObjectReference_6"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_5" sourceRef="_DataObjectReference_6" targetRef="/0/@flowElements.46"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_6" sourceRef="_DataObjectReference_5" targetRef="/0/@flowElements.46"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_7" sourceRef="/0/@flowElements.46" targetRef="_DataObjectReference_8"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_9" sourceRef="/0/@flowElements.47" targetRef="_DataObjectReference_10"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_9" sourceRef="_DataObjectReference_10" targetRef="/0/@flowElements.49"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_3" sourceRef="DataObject_1" targetRef="/0/@flowElements.51"/>
    <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#73" incoming="SequenceFlow_4 /0/@flowElements.34" outgoing="SequenceFlow_6 /0/@flowElements.35" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#75" incoming="SequenceFlow_5 /0/@flowElements.36" outgoing="SequenceFlow_7 /0/@flowElements.37" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#77" incoming="/0/@flowElements.38 /0/@flowElements.39 SequenceFlow_6 SequenceFlow_7" outgoing="/0/@flowElements.40" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#79" incoming="SequenceFlow_11" outgoing="/0/@flowElements.41" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#80" sourceRef="/0/@flowElements.49" targetRef="_DataObjectReference_11"/>
    <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#81" incoming="/0/@flowElements.42" outgoing="/0/@flowElements.48" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#82" sourceRef="/0/@flowElements.51" targetRef="_DataObjectReference_7"/>
    <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#83" incoming="SequenceFlow_3 /0/@flowElements.43" outgoing="/0/@flowElements.50" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#84" sourceRef="/0/@flowElements.53" targetRef="_DataObjectReference_9"/>
    <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#85" incoming="SequenceFlow_10" outgoing="/0/@flowElements.52" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#87" incoming="SequenceFlow_1" outgoing="/0/@flowElements.31 /0/@flowElements.32 /0/@flowElements.33 SequenceFlow_3 SequenceFlow_4 SequenceFlow_5" gatewayDirection="Diverging"/>
  </pm:Process>
  <ecore:EStringToStringMapEntry key="xsi" value="http://www.w3.org/2001/XMLSchema-instance"/>
  <ecore:EStringToStringMapEntry key="bpmn2" value="http://www.omg.org/spec/BPMN/20100524/MODEL"/>
  <ecore:EStringToStringMapEntry key="bpmndi" value="http://www.omg.org/spec/BPMN/20100524/DI"/>
  <ecore:EStringToStringMapEntry key="dc" value="http://www.omg.org/spec/DD/20100524/DC"/>
  <ecore:EStringToStringMapEntry key="di" value="http://www.omg.org/spec/DD/20100524/DI"/>
</xmi:XMI>
