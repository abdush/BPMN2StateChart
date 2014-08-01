<?xml version="1.0" encoding="ASCII"?>
<pm:Process xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pm="http://BPMN/Simplified" xmi:id="claim" id="claim" name="Default Process">
  <flowElements xsi:type="pm:StartEvent" xmi:id="StartEvent_1" id="StartEvent_1" outgoing="SequenceFlow_1"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_1" id="SequenceFlow_1" sourceRef="StartEvent_1" targetRef="//@flowElements.66"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_3" id="SequenceFlow_3" sourceRef="//@flowElements.66" targetRef="//@flowElements.63"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_4" id="SequenceFlow_4" sourceRef="//@flowElements.66" targetRef="//@flowElements.53"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_5" id="SequenceFlow_5" sourceRef="//@flowElements.66" targetRef="//@flowElements.55"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_6" id="SequenceFlow_6" sourceRef="//@flowElements.67" targetRef="//@flowElements.57"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_7" id="SequenceFlow_7" sourceRef="//@flowElements.68" targetRef="//@flowElements.57"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_9" id="SequenceFlow_9" sourceRef="//@flowElements.69" targetRef="ExclusiveGateway_1"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="ExclusiveGateway_1" id="ExclusiveGateway_1" name="Exclusive Gateway 1" incoming="SequenceFlow_9" outgoing="SequenceFlow_10 SequenceFlow_11" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_10" id="SequenceFlow_10" sourceRef="ExclusiveGateway_1" targetRef="//@flowElements.65" guard="[else]"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_11" id="SequenceFlow_11" sourceRef="ExclusiveGateway_1" targetRef="ParallelGateway_3" guard="[ok]"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_3" id="ParallelGateway_3" name="Parallel Gateway 3" incoming="SequenceFlow_11" outgoing="SequenceFlow_12 SequenceFlow_13" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_12" id="SequenceFlow_12" sourceRef="ParallelGateway_3" targetRef="ParallelGateway_4"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_13" id="SequenceFlow_13" sourceRef="ParallelGateway_3" targetRef="//@flowElements.59"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_14" id="SequenceFlow_14" sourceRef="//@flowElements.70" targetRef="//@flowElements.61"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_16" id="SequenceFlow_16" sourceRef="_DataObjectReference_11" targetRef="ParallelGateway_4"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_4" id="ParallelGateway_4" name="Parallel Gateway 4" incoming="SequenceFlow_16 SequenceFlow_12" outgoing="SequenceFlow_17" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_17" id="SequenceFlow_17" sourceRef="ParallelGateway_4" targetRef="ExclusiveGateway_2"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="ExclusiveGateway_2" id="ExclusiveGateway_2" name="Exclusive Gateway 2" incoming="SequenceFlow_17 SequenceFlow_18" outgoing="SequenceFlow_19" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_19" id="SequenceFlow_19" sourceRef="ExclusiveGateway_2" targetRef="ParallelGateway_5"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_5" id="ParallelGateway_5" name="Parallel Gateway 5" incoming="SequenceFlow_19 SequenceFlow_22" outgoing="SequenceFlow_20" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_20" id="SequenceFlow_20" sourceRef="ParallelGateway_5" targetRef="_DataObjectReference_12"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_21" id="SequenceFlow_21" sourceRef="_DataObjectReference_12" targetRef="EndEvent_1"/>
  <flowElements xsi:type="pm:EndEvent" xmi:id="EndEvent_1" id="EndEvent_1" incoming="SequenceFlow_21"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="DataObject_1" id="DataObject_1" name="Claim [Received]" incoming="//@flowElements.37" outgoing="//@flowElements.50">
    <dataState xmi:id="DataState_1" id="DataState_1" name="received"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_3" id="_DataObjectReference_3" name="Claim [policy not checked]" incoming="//@flowElements.38" outgoing="//@flowElements.40">
    <dataState xmi:id="DataState_2" id="DataState_2" name="policy not checked"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_4" id="_DataObjectReference_4" name="Claim [damage not checked]" incoming="//@flowElements.39" outgoing="//@flowElements.42">
    <dataState xmi:id="DataState_3" id="DataState_3" name="damage not checked"/>
  </flowElements>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_22" id="SequenceFlow_22" sourceRef="_DataObjectReference_7" targetRef="ParallelGateway_5"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_5" id="_DataObjectReference_5" name="Claim [policy checked]" incoming="//@flowElements.41" outgoing="//@flowElements.45">
    <dataState xmi:id="DataState_4" id="DataState_4" name="policy checked"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_6" id="_DataObjectReference_6" name="Claim [damage checked]" incoming="//@flowElements.43" outgoing="//@flowElements.44">
    <dataState xmi:id="DataState_5" id="DataState_5" name="damage checked"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_7" id="_DataObjectReference_7" name="Claim [confirmed]" incoming="//@flowElements.62" outgoing="SequenceFlow_22">
    <dataState xmi:id="DataState_6" id="DataState_6" name="confirmed"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_8" id="_DataObjectReference_8" name="Claim [decided]" incoming="//@flowElements.46" outgoing="//@flowElements.47 //@flowElements.51">
    <dataState xmi:id="DataState_7" id="DataState_7" name="decided"/>
  </flowElements>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_18" id="SequenceFlow_18" sourceRef="_DataObjectReference_9" targetRef="ExclusiveGateway_2"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_9" id="_DataObjectReference_9" name="Claim [Rejected]" incoming="//@flowElements.64" outgoing="SequenceFlow_18">
    <dataState xmi:id="DataState_8" id="DataState_8" name="Rejected"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_10" id="_DataObjectReference_10" name="Claim [assessed]" incoming="//@flowElements.48" outgoing="//@flowElements.49">
    <dataState xmi:id="DataState_9" id="DataState_9" name="assessed"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_11" id="_DataObjectReference_11" name="Claim [settled]" incoming="//@flowElements.60" outgoing="SequenceFlow_16">
    <dataState xmi:id="DataState_10" id="DataState_10" name="settled"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_12" id="_DataObjectReference_12" name="Claim [archived]" incoming="SequenceFlow_20" outgoing="SequenceFlow_21">
    <dataState xmi:id="DataState_11" id="DataState_11" name="archived"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_1" sourceRef="//@flowElements.66" targetRef="DataObject_1"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_2" sourceRef="//@flowElements.66" targetRef="_DataObjectReference_3"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_3" sourceRef="//@flowElements.66" targetRef="_DataObjectReference_4"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_1" sourceRef="_DataObjectReference_3" targetRef="//@flowElements.53"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_5" sourceRef="//@flowElements.67" targetRef="_DataObjectReference_5"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_4" sourceRef="_DataObjectReference_4" targetRef="//@flowElements.55"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_4" sourceRef="//@flowElements.68" targetRef="_DataObjectReference_6"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_5" sourceRef="_DataObjectReference_6" targetRef="//@flowElements.57"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_6" sourceRef="_DataObjectReference_5" targetRef="//@flowElements.57"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_7" sourceRef="//@flowElements.69" targetRef="_DataObjectReference_8"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_7" sourceRef="_DataObjectReference_8" targetRef="//@flowElements.59"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_9" sourceRef="//@flowElements.70" targetRef="_DataObjectReference_10"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_9" sourceRef="_DataObjectReference_10" targetRef="//@flowElements.61"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_3" sourceRef="DataObject_1" targetRef="//@flowElements.63"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_8" sourceRef="_DataObjectReference_8" targetRef="//@flowElements.65"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#72" sourceRef="//@flowElements.53" targetRef="//@flowElements.67"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#73" incoming="SequenceFlow_4 //@flowElements.40" outgoing="//@flowElements.52" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#74" sourceRef="//@flowElements.55" targetRef="//@flowElements.68"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#75" incoming="SequenceFlow_5 //@flowElements.42" outgoing="//@flowElements.54" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#76" sourceRef="//@flowElements.57" targetRef="//@flowElements.69"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#77" incoming="//@flowElements.44 //@flowElements.45 SequenceFlow_6 SequenceFlow_7" outgoing="//@flowElements.56" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#78" sourceRef="//@flowElements.59" targetRef="//@flowElements.70"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#79" incoming="SequenceFlow_13 //@flowElements.47" outgoing="//@flowElements.58" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#80" sourceRef="//@flowElements.61" targetRef="_DataObjectReference_11"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#81" incoming="SequenceFlow_14 //@flowElements.49" outgoing="//@flowElements.60" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#82" sourceRef="//@flowElements.63" targetRef="_DataObjectReference_7"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#83" incoming="SequenceFlow_3 //@flowElements.50" outgoing="//@flowElements.62" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#84" sourceRef="//@flowElements.65" targetRef="_DataObjectReference_9"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#85" incoming="SequenceFlow_10 //@flowElements.51" outgoing="//@flowElements.64" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#87" incoming="SequenceFlow_1" outgoing="//@flowElements.37 //@flowElements.38 //@flowElements.39 SequenceFlow_3 SequenceFlow_4 SequenceFlow_5" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#89" incoming="//@flowElements.52" outgoing="SequenceFlow_6 //@flowElements.41" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#91" incoming="//@flowElements.54" outgoing="SequenceFlow_7 //@flowElements.43" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#93" incoming="//@flowElements.56" outgoing="SequenceFlow_9 //@flowElements.46" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#95" incoming="//@flowElements.58" outgoing="SequenceFlow_14 //@flowElements.48" gatewayDirection="Diverging"/>
</pm:Process>
