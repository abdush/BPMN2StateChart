<?xml version="1.0" encoding="ASCII"?>
<pm:Process xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pm="http://BPMN/Simplified" xmi:id="claim_optional_data" id="claim_optional_data" name="Default Process">
  <flowElements xsi:type="pm:StartEvent" xmi:id="StartEvent_1" id="StartEvent_1" outgoing="SequenceFlow_2"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_2" id="SequenceFlow_2" sourceRef="StartEvent_1" targetRef="DataObject_1"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_1" id="Task_1" name="Task 1" incoming="//@flowElements.37" outgoing="//@flowElements.62"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_3" id="SequenceFlow_3" sourceRef="//@flowElements.63" targetRef="//@flowElements.51"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_2" id="Task_2" name="Task 2" incoming="//@flowElements.50" outgoing="//@flowElements.64"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_4" id="SequenceFlow_4" sourceRef="//@flowElements.65" targetRef="ExclusiveGateway_1"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="ExclusiveGateway_1" id="ExclusiveGateway_1" name="Exclusive Gateway 1" incoming="SequenceFlow_4" outgoing="SequenceFlow_5 SequenceFlow_6" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_5" id="SequenceFlow_5" sourceRef="ExclusiveGateway_1" targetRef="//@flowElements.59"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_6" id="SequenceFlow_6" sourceRef="ExclusiveGateway_1" targetRef="//@flowElements.61"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_1" id="ParallelGateway_1" name="Parallel Gateway 1" incoming="SequenceFlow_8" outgoing="SequenceFlow_9 SequenceFlow_10" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_9" id="SequenceFlow_9" sourceRef="ParallelGateway_1" targetRef="//@flowElements.55"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_10" id="SequenceFlow_10" sourceRef="ParallelGateway_1" targetRef="//@flowElements.53"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_6" id="Task_6" name="Task 6" incoming="//@flowElements.52" outgoing="//@flowElements.43"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_5" id="Task_5" name="Task 5" incoming="//@flowElements.54" outgoing="SequenceFlow_11"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_11" id="SequenceFlow_11" sourceRef="Task_5" targetRef="ParallelGateway_2"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_2" id="ParallelGateway_2" name="Parallel Gateway 2" incoming="SequenceFlow_11 SequenceFlow_12" outgoing="SequenceFlow_13" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_12" id="SequenceFlow_12" sourceRef="_DataObjectReference_8" targetRef="ParallelGateway_2"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_13" id="SequenceFlow_13" sourceRef="ParallelGateway_2" targetRef="ExclusiveGateway_3"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="ExclusiveGateway_3" id="ExclusiveGateway_3" name="Exclusive Gateway 3" incoming="SequenceFlow_13 SequenceFlow_14 SequenceFlow_15" outgoing="SequenceFlow_16" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_16" id="SequenceFlow_16" sourceRef="ExclusiveGateway_3" targetRef="//@flowElements.57"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_7" id="Task_7" name="Task 7" incoming="//@flowElements.56" outgoing="SequenceFlow_17"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_17" id="SequenceFlow_17" sourceRef="Task_7" targetRef="EndEvent_1"/>
  <flowElements xsi:type="pm:EndEvent" xmi:id="EndEvent_1" id="EndEvent_1" incoming="SequenceFlow_17"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="DataObject_1" id="DataObject_1" name="claim" incoming="SequenceFlow_2" outgoing="//@flowElements.37">
    <dataState xmi:id="DataState_1" id="DataState_1" name="new"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_3" id="_DataObjectReference_3" name="Reference to claim" incoming="//@flowElements.38" outgoing="//@flowElements.39">
    <dataState xmi:id="DataState_2" id="DataState_2" name="registered"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_4" id="_DataObjectReference_4" name="Reference to claim" incoming="//@flowElements.41" outgoing="//@flowElements.47">
    <dataState xmi:id="DataState_3" id="DataState_3" name="notfraudulent"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_5" id="_DataObjectReference_5" name="Reference to claim" incoming="//@flowElements.40" outgoing="//@flowElements.46">
    <dataState xmi:id="DataState_4" id="DataState_4" name="fraudulent"/>
  </flowElements>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_3" id="Task_3" name="Task 3" incoming="//@flowElements.58" outgoing="SequenceFlow_15"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_15" id="SequenceFlow_15" sourceRef="Task_3" targetRef="ExclusiveGateway_3"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_4" id="Task_4" name="Task 4" incoming="//@flowElements.60" outgoing="//@flowElements.66"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_7" id="SequenceFlow_7" sourceRef="//@flowElements.67" targetRef="ExclusiveGateway_2"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="ExclusiveGateway_2" id="ExclusiveGateway_2" name="Exclusive Gateway 2" incoming="SequenceFlow_7" outgoing="SequenceFlow_8 SequenceFlow_14" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_8" id="SequenceFlow_8" name="claim accepted" sourceRef="ExclusiveGateway_2" targetRef="ParallelGateway_1"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_14" id="SequenceFlow_14" name="claim rejected" sourceRef="ExclusiveGateway_2" targetRef="ExclusiveGateway_3"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_6" id="_DataObjectReference_6" name="Reference to claim" incoming="//@flowElements.48" outgoing="//@flowElements.42 //@flowElements.44">
    <dataState xmi:id="DataState_6" id="DataState_6" name="accepted"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_7" id="_DataObjectReference_7" name="Reference to claim" incoming="//@flowElements.49" outgoing="//@flowElements.45">
    <dataState xmi:id="DataState_5" id="DataState_5" name="rejected"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_8" id="_DataObjectReference_8" name="Reference to claim" incoming="//@flowElements.43" outgoing="SequenceFlow_12">
    <dataState xmi:id="DataState_7" id="DataState_7" name="filled"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_1" sourceRef="DataObject_1" targetRef="Task_1"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_1" sourceRef="//@flowElements.63" targetRef="_DataObjectReference_3"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_2" sourceRef="_DataObjectReference_3" targetRef="//@flowElements.51"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_2" sourceRef="//@flowElements.65" targetRef="_DataObjectReference_5"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_3" sourceRef="//@flowElements.65" targetRef="_DataObjectReference_4"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_6" sourceRef="_DataObjectReference_6" targetRef="//@flowElements.53"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_6" sourceRef="Task_6" targetRef="_DataObjectReference_8"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_5" sourceRef="_DataObjectReference_6" targetRef="//@flowElements.55"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_7" sourceRef="_DataObjectReference_7" targetRef="//@flowElements.57"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_3" sourceRef="_DataObjectReference_5" targetRef="//@flowElements.59"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_4" sourceRef="_DataObjectReference_4" targetRef="//@flowElements.61"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_4" sourceRef="//@flowElements.67" targetRef="_DataObjectReference_6"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_5" sourceRef="//@flowElements.67" targetRef="_DataObjectReference_7"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#51" sourceRef="//@flowElements.51" targetRef="Task_2"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#52" name="Task 1Reference to claim" incoming="SequenceFlow_3 //@flowElements.39" outgoing="//@flowElements.50" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#53" sourceRef="//@flowElements.53" targetRef="Task_6"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#54" name="Parallel Gateway 1Reference to claim" incoming="SequenceFlow_10 //@flowElements.42" outgoing="//@flowElements.52" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#55" sourceRef="//@flowElements.55" targetRef="Task_5"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#56" name="Parallel Gateway 1Reference to claim" incoming="SequenceFlow_9 //@flowElements.44" outgoing="//@flowElements.54" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#57" sourceRef="//@flowElements.57" targetRef="Task_7"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#58" name="Exclusive Gateway 3Reference to claim" incoming="SequenceFlow_16 //@flowElements.45" outgoing="//@flowElements.56" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#59" sourceRef="//@flowElements.59" targetRef="Task_3"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#60" name="Exclusive Gateway 1Reference to claim" incoming="SequenceFlow_5 //@flowElements.46" outgoing="//@flowElements.58" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#61" sourceRef="//@flowElements.61" targetRef="Task_4"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#62" name="Exclusive Gateway 1Reference to claim" incoming="SequenceFlow_6 //@flowElements.47" outgoing="//@flowElements.60" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#63" sourceRef="Task_1" targetRef="//@flowElements.63"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#64" name="Task 1Reference to claimReference to claim" incoming="//@flowElements.62" outgoing="SequenceFlow_3 //@flowElements.38" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#65" sourceRef="Task_2" targetRef="//@flowElements.65"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#66" name="Exclusive Gateway 1Reference to claimReference to claim" incoming="//@flowElements.64" outgoing="SequenceFlow_4 //@flowElements.40 //@flowElements.41" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#67" sourceRef="Task_4" targetRef="//@flowElements.67"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#68" name="Exclusive Gateway 2Reference to claimReference to claim" incoming="//@flowElements.66" outgoing="SequenceFlow_7 //@flowElements.48 //@flowElements.49" gatewayDirection="Diverging"/>
</pm:Process>
