<?xml version="1.0" encoding="ASCII"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ecore="http://www.eclipse.org/emf/2002/Ecore" xmlns:pm="http://BPMN/Simplified">
  <pm:Process xmi:id="claim" id="claim" name="Default Process">
    <flowElements xsi:type="pm:StartEvent" xmi:id="StartEvent_1" id="StartEvent_1" outgoing="SequenceFlow_1"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_1" id="SequenceFlow_1" sourceRef="StartEvent_1" targetRef="Task_1"/>
    <flowElements xsi:type="pm:Activity" xmi:id="Task_1" id="Task_1" name="Receive" incoming="SequenceFlow_1" outgoing="/0/@flowElements.85"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_2" id="SequenceFlow_2" sourceRef="/0/@flowElements.86" targetRef="ParallelGateway_1"/>
    <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_1" id="ParallelGateway_1" name="Parallel Gateway 1" incoming="SequenceFlow_2" outgoing="SequenceFlow_3 SequenceFlow_4 SequenceFlow_5" gatewayDirection="Diverging"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_3" id="SequenceFlow_3" sourceRef="ParallelGateway_1" targetRef="/0/@flowElements.82"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_4" id="SequenceFlow_4" sourceRef="ParallelGateway_1" targetRef="/0/@flowElements.72"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_5" id="SequenceFlow_5" sourceRef="ParallelGateway_1" targetRef="/0/@flowElements.74"/>
    <flowElements xsi:type="pm:Activity" xmi:id="Task_3" id="Task_3" name="Check policy" incoming="/0/@flowElements.71" outgoing="/0/@flowElements.87"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_6" id="SequenceFlow_6" sourceRef="/0/@flowElements.88" targetRef="ParallelGateway_2"/>
    <flowElements xsi:type="pm:Activity" xmi:id="Task_4" id="Task_4" name="Check damage" incoming="/0/@flowElements.73" outgoing="/0/@flowElements.89"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_7" id="SequenceFlow_7" sourceRef="/0/@flowElements.90" targetRef="ParallelGateway_2"/>
    <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_2" id="ParallelGateway_2" name="Parallel Gateway 2" incoming="SequenceFlow_6 SequenceFlow_7" outgoing="SequenceFlow_8" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_8" id="SequenceFlow_8" sourceRef="ParallelGateway_2" targetRef="/0/@flowElements.76"/>
    <flowElements xsi:type="pm:Activity" xmi:id="Task_5" id="Task_5" name="Decide" incoming="/0/@flowElements.75" outgoing="/0/@flowElements.91"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_9" id="SequenceFlow_9" sourceRef="/0/@flowElements.92" targetRef="ExclusiveGateway_1"/>
    <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="ExclusiveGateway_1" id="ExclusiveGateway_1" name="Exclusive Gateway 1" incoming="SequenceFlow_9" outgoing="SequenceFlow_10 SequenceFlow_11" gatewayDirection="Diverging"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_10" id="SequenceFlow_10" sourceRef="ExclusiveGateway_1" targetRef="/0/@flowElements.84" guard="[else]"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_11" id="SequenceFlow_11" sourceRef="ExclusiveGateway_1" targetRef="ParallelGateway_3" guard="[ok]"/>
    <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_3" id="ParallelGateway_3" name="Parallel Gateway 3" incoming="SequenceFlow_11" outgoing="SequenceFlow_12 SequenceFlow_13" gatewayDirection="Diverging"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_12" id="SequenceFlow_12" sourceRef="ParallelGateway_3" targetRef="Task_7"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_13" id="SequenceFlow_13" sourceRef="ParallelGateway_3" targetRef="/0/@flowElements.78"/>
    <flowElements xsi:type="pm:Activity" xmi:id="Task_7" id="Task_7" name="Update client contribution " incoming="SequenceFlow_12" outgoing="SequenceFlow_15"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_15" id="SequenceFlow_15" sourceRef="Task_7" targetRef="ParallelGateway_4"/>
    <flowElements xsi:type="pm:Activity" xmi:id="Task_8" id="Task_8" name="Determine cost" incoming="/0/@flowElements.77" outgoing="/0/@flowElements.93"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_14" id="SequenceFlow_14" sourceRef="/0/@flowElements.94" targetRef="/0/@flowElements.80"/>
    <flowElements xsi:type="pm:Activity" xmi:id="Task_9" id="Task_9" name="Pay" incoming="/0/@flowElements.79" outgoing="/0/@flowElements.65"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_16" id="SequenceFlow_16" sourceRef="_DataObjectReference_11" targetRef="ParallelGateway_4"/>
    <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_4" id="ParallelGateway_4" name="Parallel Gateway 4" incoming="SequenceFlow_15 SequenceFlow_16" outgoing="SequenceFlow_17" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_17" id="SequenceFlow_17" sourceRef="ParallelGateway_4" targetRef="ExclusiveGateway_2"/>
    <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="ExclusiveGateway_2" id="ExclusiveGateway_2" name="Exclusive Gateway 2" incoming="SequenceFlow_17 SequenceFlow_18" outgoing="SequenceFlow_19" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_19" id="SequenceFlow_19" sourceRef="ExclusiveGateway_2" targetRef="ParallelGateway_5"/>
    <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_5" id="ParallelGateway_5" name="Parallel Gateway 5" incoming="SequenceFlow_19 SequenceFlow_22" outgoing="SequenceFlow_20" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_20" id="SequenceFlow_20" sourceRef="ParallelGateway_5" targetRef="Task_10"/>
    <flowElements xsi:type="pm:Activity" xmi:id="Task_10" id="Task_10" name="Notify client" incoming="SequenceFlow_20" outgoing="/0/@flowElements.66"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_21" id="SequenceFlow_21" sourceRef="_DataObjectReference_12" targetRef="EndEvent_1"/>
    <flowElements xsi:type="pm:EndEvent" xmi:id="EndEvent_1" id="EndEvent_1" incoming="SequenceFlow_21"/>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="DataObject_1" id="DataObject_1" name="Claim [Received]" incoming="/0/@flowElements.52" outgoing="/0/@flowElements.67">
      <dataState xmi:id="DataState_1" id="DataState_1" name="received"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_3" id="_DataObjectReference_3" name="Claim [policy not checked]" incoming="/0/@flowElements.53" outgoing="/0/@flowElements.55">
      <dataState xmi:id="DataState_2" id="DataState_2" name="policy not checked"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_4" id="_DataObjectReference_4" name="Claim [damage not checked]" incoming="/0/@flowElements.54" outgoing="/0/@flowElements.57">
      <dataState xmi:id="DataState_3" id="DataState_3" name="damage not checked"/>
    </flowElements>
    <flowElements xsi:type="pm:Activity" xmi:id="Task_2" id="Task_2" name="Confirm receipt" incoming="/0/@flowElements.81" outgoing="/0/@flowElements.68"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_22" id="SequenceFlow_22" sourceRef="_DataObjectReference_7" targetRef="ParallelGateway_5"/>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_5" id="_DataObjectReference_5" name="Claim [policy checked]" incoming="/0/@flowElements.56" outgoing="/0/@flowElements.60">
      <dataState xmi:id="DataState_4" id="DataState_4" name="policy checked"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_6" id="_DataObjectReference_6" name="Claim [damage checked]" incoming="/0/@flowElements.58" outgoing="/0/@flowElements.59">
      <dataState xmi:id="DataState_5" id="DataState_5" name="damage checked"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_7" id="_DataObjectReference_7" name="Claim [confirmed]" incoming="/0/@flowElements.68" outgoing="SequenceFlow_22">
      <dataState xmi:id="DataState_6" id="DataState_6" name="confirmed"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_8" id="_DataObjectReference_8" name="Claim [decided]" incoming="/0/@flowElements.61" outgoing="/0/@flowElements.62 /0/@flowElements.69">
      <dataState xmi:id="DataState_7" id="DataState_7" name="decided"/>
    </flowElements>
    <flowElements xsi:type="pm:Activity" xmi:id="Task_6" id="Task_6" name="Reject" incoming="/0/@flowElements.83" outgoing="/0/@flowElements.70"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_18" id="SequenceFlow_18" sourceRef="_DataObjectReference_9" targetRef="ExclusiveGateway_2"/>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_9" id="_DataObjectReference_9" name="Claim [Rejected]" incoming="/0/@flowElements.70" outgoing="SequenceFlow_18">
      <dataState xmi:id="DataState_8" id="DataState_8" name="Rejected"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_10" id="_DataObjectReference_10" name="Claim [assessed]" incoming="/0/@flowElements.63" outgoing="/0/@flowElements.64">
      <dataState xmi:id="DataState_9" id="DataState_9" name="assessed"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_11" id="_DataObjectReference_11" name="Claim [settled]" incoming="/0/@flowElements.65" outgoing="SequenceFlow_16">
      <dataState xmi:id="DataState_10" id="DataState_10" name="settled"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_12" id="_DataObjectReference_12" name="Claim [archived]" incoming="/0/@flowElements.66" outgoing="SequenceFlow_21">
      <dataState xmi:id="DataState_11" id="DataState_11" name="archived"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_1" sourceRef="/0/@flowElements.86" targetRef="DataObject_1"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_2" sourceRef="/0/@flowElements.86" targetRef="_DataObjectReference_3"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_3" sourceRef="/0/@flowElements.86" targetRef="_DataObjectReference_4"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_1" sourceRef="_DataObjectReference_3" targetRef="/0/@flowElements.72"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_5" sourceRef="/0/@flowElements.88" targetRef="_DataObjectReference_5"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_4" sourceRef="_DataObjectReference_4" targetRef="/0/@flowElements.74"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_4" sourceRef="/0/@flowElements.90" targetRef="_DataObjectReference_6"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_5" sourceRef="_DataObjectReference_6" targetRef="/0/@flowElements.76"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_6" sourceRef="_DataObjectReference_5" targetRef="/0/@flowElements.76"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_7" sourceRef="/0/@flowElements.92" targetRef="_DataObjectReference_8"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_7" sourceRef="_DataObjectReference_8" targetRef="/0/@flowElements.78"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_9" sourceRef="/0/@flowElements.94" targetRef="_DataObjectReference_10"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_9" sourceRef="_DataObjectReference_10" targetRef="/0/@flowElements.80"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_10" sourceRef="Task_9" targetRef="_DataObjectReference_11"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_11" sourceRef="Task_10" targetRef="_DataObjectReference_12"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_3" sourceRef="DataObject_1" targetRef="/0/@flowElements.82"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_6" sourceRef="Task_2" targetRef="_DataObjectReference_7"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_8" sourceRef="_DataObjectReference_8" targetRef="/0/@flowElements.84"/>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_8" sourceRef="Task_6" targetRef="_DataObjectReference_9"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#72" sourceRef="/0/@flowElements.72" targetRef="Task_3"/>
    <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#73" incoming="SequenceFlow_4 /0/@flowElements.55" outgoing="/0/@flowElements.71" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#74" sourceRef="/0/@flowElements.74" targetRef="Task_4"/>
    <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#75" incoming="SequenceFlow_5 /0/@flowElements.57" outgoing="/0/@flowElements.73" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#76" sourceRef="/0/@flowElements.76" targetRef="Task_5"/>
    <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#77" incoming="SequenceFlow_8 /0/@flowElements.59 /0/@flowElements.60" outgoing="/0/@flowElements.75" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#78" sourceRef="/0/@flowElements.78" targetRef="Task_8"/>
    <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#79" incoming="SequenceFlow_13 /0/@flowElements.62" outgoing="/0/@flowElements.77" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#80" sourceRef="/0/@flowElements.80" targetRef="Task_9"/>
    <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#81" incoming="SequenceFlow_14 /0/@flowElements.64" outgoing="/0/@flowElements.79" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#82" sourceRef="/0/@flowElements.82" targetRef="Task_2"/>
    <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#83" incoming="SequenceFlow_3 /0/@flowElements.67" outgoing="/0/@flowElements.81" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#84" sourceRef="/0/@flowElements.84" targetRef="Task_6"/>
    <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#85" incoming="SequenceFlow_10 /0/@flowElements.69" outgoing="/0/@flowElements.83" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#86" sourceRef="Task_1" targetRef="/0/@flowElements.86"/>
    <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#87" incoming="/0/@flowElements.85" outgoing="SequenceFlow_2 /0/@flowElements.52 /0/@flowElements.53 /0/@flowElements.54" gatewayDirection="Diverging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#88" sourceRef="Task_3" targetRef="/0/@flowElements.88"/>
    <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#89" incoming="/0/@flowElements.87" outgoing="SequenceFlow_6 /0/@flowElements.56" gatewayDirection="Diverging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#90" sourceRef="Task_4" targetRef="/0/@flowElements.90"/>
    <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#91" incoming="/0/@flowElements.89" outgoing="SequenceFlow_7 /0/@flowElements.58" gatewayDirection="Diverging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#92" sourceRef="Task_5" targetRef="/0/@flowElements.92"/>
    <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#93" incoming="/0/@flowElements.91" outgoing="SequenceFlow_9 /0/@flowElements.61" gatewayDirection="Diverging"/>
    <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#94" sourceRef="Task_8" targetRef="/0/@flowElements.94"/>
    <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#95" incoming="/0/@flowElements.93" outgoing="SequenceFlow_14 /0/@flowElements.63" gatewayDirection="Diverging"/>
  </pm:Process>
  <ecore:EStringToStringMapEntry key="xsi" value="http://www.w3.org/2001/XMLSchema-instance"/>
  <ecore:EStringToStringMapEntry key="" value="http://org.eclipse.bpmn2/default/claim_process"/>
  <ecore:EStringToStringMapEntry key="bpmn2" value="http://www.omg.org/spec/BPMN/20100524/MODEL"/>
  <ecore:EStringToStringMapEntry key="bpmndi" value="http://www.omg.org/spec/BPMN/20100524/DI"/>
  <ecore:EStringToStringMapEntry key="dc" value="http://www.omg.org/spec/DD/20100524/DC"/>
  <ecore:EStringToStringMapEntry key="di" value="http://www.omg.org/spec/DD/20100524/DI"/>
</xmi:XMI>
