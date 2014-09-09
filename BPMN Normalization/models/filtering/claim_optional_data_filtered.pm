<?xml version="1.0" encoding="ASCII"?>
<pm:Process xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pm="http://BPMN/Simplified" xmi:id="claim_optional_data" id="claim_optional_data" name="Default Process">
  <flowElements xsi:type="pm:StartEvent" xmi:id="StartEvent_1" id="StartEvent_1" outgoing="SequenceFlow_2"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_2" id="SequenceFlow_2" sourceRef="StartEvent_1" targetRef="DataObject_1"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_4" id="SequenceFlow_4" sourceRef="//@flowElements.44" targetRef="ExclusiveGateway_1"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="ExclusiveGateway_1" id="ExclusiveGateway_1" name="Exclusive Gateway 1" incoming="SequenceFlow_4" outgoing="SequenceFlow_5 SequenceFlow_6" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_5" id="SequenceFlow_5" sourceRef="ExclusiveGateway_1" targetRef="//@flowElements.41"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_6" id="SequenceFlow_6" sourceRef="ExclusiveGateway_1" targetRef="//@flowElements.43"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_2" id="ParallelGateway_2" name="Parallel Gateway 2" incoming="SequenceFlow_12 //@flowElements.29" outgoing="SequenceFlow_13" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_12" id="SequenceFlow_12" sourceRef="//@flowElements.45" targetRef="ParallelGateway_2"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_13" id="SequenceFlow_13" sourceRef="ParallelGateway_2" targetRef="ExclusiveGateway_3"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="ExclusiveGateway_3" id="ExclusiveGateway_3" name="Exclusive Gateway 3" incoming="SequenceFlow_13 SequenceFlow_14 //@flowElements.40" outgoing="SequenceFlow_16" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_16" id="SequenceFlow_16" sourceRef="ExclusiveGateway_3" targetRef="//@flowElements.39"/>
  <flowElements xsi:type="pm:EndEvent" xmi:id="EndEvent_1" id="EndEvent_1" incoming="//@flowElements.38"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="DataObject_1" id="DataObject_1" name="claim" incoming="SequenceFlow_2" outgoing="//@flowElements.23">
    <dataState xmi:id="DataState_1" id="DataState_1" name="new"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_3" id="_DataObjectReference_3" name="Reference to claim" incoming="//@flowElements.23" outgoing="//@flowElements.24">
    <dataState xmi:id="DataState_2" id="DataState_2" name="registered"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_4" id="_DataObjectReference_4" name="Reference to claim" incoming="//@flowElements.26" outgoing="//@flowElements.33">
    <dataState xmi:id="DataState_3" id="DataState_3" name="notfraudulent"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_5" id="_DataObjectReference_5" name="Reference to claim" incoming="//@flowElements.25" outgoing="//@flowElements.32">
    <dataState xmi:id="DataState_4" id="DataState_4" name="fraudulent"/>
  </flowElements>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_7" id="SequenceFlow_7" sourceRef="//@flowElements.46" targetRef="ExclusiveGateway_2"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="ExclusiveGateway_2" id="ExclusiveGateway_2" name="Exclusive Gateway 2" incoming="SequenceFlow_7" outgoing="SequenceFlow_8 SequenceFlow_14" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_8" id="SequenceFlow_8" name="claim accepted" sourceRef="ExclusiveGateway_2" targetRef="//@flowElements.37"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_14" id="SequenceFlow_14" name="claim rejected" sourceRef="ExclusiveGateway_2" targetRef="ExclusiveGateway_3"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_6" id="_DataObjectReference_6" name="Reference to claim" incoming="//@flowElements.34" outgoing="//@flowElements.27 //@flowElements.29">
    <dataState xmi:id="DataState_6" id="DataState_6" name="accepted"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_7" id="_DataObjectReference_7" name="Reference to claim" incoming="//@flowElements.35" outgoing="//@flowElements.30">
    <dataState xmi:id="DataState_5" id="DataState_5" name="rejected"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_8" id="_DataObjectReference_8" name="Reference to claim" incoming="//@flowElements.28" outgoing="//@flowElements.31">
    <dataState xmi:id="DataState_7" id="DataState_7" name="filled"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_1" sourceRef="DataObject_1" targetRef="_DataObjectReference_3"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_2" sourceRef="_DataObjectReference_3" targetRef="//@flowElements.44"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_2" sourceRef="//@flowElements.44" targetRef="_DataObjectReference_5"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_3" sourceRef="//@flowElements.44" targetRef="_DataObjectReference_4"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_6" sourceRef="_DataObjectReference_6" targetRef="//@flowElements.37"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_6" sourceRef="//@flowElements.45" targetRef="_DataObjectReference_8"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_5" sourceRef="_DataObjectReference_6" targetRef="ParallelGateway_2"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_7" sourceRef="_DataObjectReference_7" targetRef="//@flowElements.39"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_8" sourceRef="_DataObjectReference_8" targetRef="//@flowElements.39"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_3" sourceRef="_DataObjectReference_5" targetRef="//@flowElements.41"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_4" sourceRef="_DataObjectReference_4" targetRef="//@flowElements.43"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_4" sourceRef="//@flowElements.46" targetRef="_DataObjectReference_6"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_5" sourceRef="//@flowElements.46" targetRef="_DataObjectReference_7"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#54" sourceRef="//@flowElements.37" targetRef="//@flowElements.45"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#55" name="Parallel Gateway 1Reference to claim" incoming="//@flowElements.27 SequenceFlow_8" outgoing="//@flowElements.36" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#58" sourceRef="//@flowElements.39" targetRef="EndEvent_1"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#59" name="Exclusive Gateway 3Reference to claimReference to claim" incoming="SequenceFlow_16 //@flowElements.30 //@flowElements.31" outgoing="//@flowElements.38" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#60" sourceRef="//@flowElements.41" targetRef="ExclusiveGateway_3"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#61" name="Exclusive Gateway 1Reference to claim" incoming="SequenceFlow_5 //@flowElements.32" outgoing="//@flowElements.40" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#62" sourceRef="//@flowElements.43" targetRef="//@flowElements.46"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#63" name="Exclusive Gateway 1Reference to claim" incoming="SequenceFlow_6 //@flowElements.33" outgoing="//@flowElements.42" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#67" name="Exclusive Gateway 1Reference to claimReference to claim" incoming="//@flowElements.24" outgoing="SequenceFlow_4 //@flowElements.25 //@flowElements.26" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#69" name="Parallel Gateway 2Reference to claim" incoming="//@flowElements.36" outgoing="SequenceFlow_12 //@flowElements.28" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#71" name="Exclusive Gateway 2Reference to claimReference to claim" incoming="//@flowElements.42" outgoing="SequenceFlow_7 //@flowElements.34 //@flowElements.35" gatewayDirection="Diverging"/>
</pm:Process>
