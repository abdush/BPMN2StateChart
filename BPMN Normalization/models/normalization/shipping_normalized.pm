<?xml version="1.0" encoding="ASCII"?>
<pm:Process xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pm="http://BPMN/Simplified" xmi:id="shipping" id="shipping" name="Default Process">
  <flowElements xsi:type="pm:EndEvent" xmi:id="EndEvent_1" id="EndEvent_1" incoming="SequenceFlow_13"/>
  <flowElements xsi:type="pm:StartEvent" xmi:id="StartEvent_1" id="StartEvent_1" outgoing="SequenceFlow_2"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_2" id="SequenceFlow_2" sourceRef="StartEvent_1" targetRef="Task_1"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_1" id="Task_1" name="take" incoming="SequenceFlow_2" outgoing="//@flowElements.47"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_3" id="SequenceFlow_3" sourceRef="//@flowElements.48" targetRef="Task_2"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_2" id="Task_2" name="get data" incoming="SequenceFlow_3" outgoing="SequenceFlow_4"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_4" id="SequenceFlow_4" sourceRef="Task_2" targetRef="ParallelGateway_1"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_1" id="ParallelGateway_1" name="Parallel Gateway 1" incoming="SequenceFlow_4" outgoing="SequenceFlow_5 SequenceFlow_6" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_5" id="SequenceFlow_5" sourceRef="ParallelGateway_1" targetRef="Task_3"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_6" id="SequenceFlow_6" sourceRef="ParallelGateway_1" targetRef="//@flowElements.42"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_3" id="Task_3" name="checkout" incoming="SequenceFlow_5" outgoing="SequenceFlow_7"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_7" id="SequenceFlow_7" sourceRef="Task_3" targetRef="Task_5"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_5" id="Task_5" name="deliver" incoming="SequenceFlow_7" outgoing="SequenceFlow_8"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_8" id="SequenceFlow_8" sourceRef="Task_5" targetRef="ParallelGateway_2"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_4" id="Task_4" name="confirm checkout" incoming="//@flowElements.41" outgoing="//@flowElements.49"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_9" id="SequenceFlow_9" sourceRef="//@flowElements.50" targetRef="ParallelGateway_3"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_3" id="ParallelGateway_3" name="Parallel Gateway 3" incoming="SequenceFlow_9 SequenceFlow_10" outgoing="SequenceFlow_11" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_11" id="SequenceFlow_11" sourceRef="ParallelGateway_3" targetRef="//@flowElements.44"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_2" id="ParallelGateway_2" name="Parallel Gateway 2" incoming="SequenceFlow_8" outgoing="SequenceFlow_10 SequenceFlow_12" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_10" id="SequenceFlow_10" sourceRef="ParallelGateway_2" targetRef="ParallelGateway_3"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_12" id="SequenceFlow_12" sourceRef="ParallelGateway_2" targetRef="Task_7"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_7" id="Task_7" name="pay" incoming="SequenceFlow_12" outgoing="SequenceFlow_13"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_13" id="SequenceFlow_13" sourceRef="Task_7" targetRef="EndEvent_1"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_6" id="Task_6" name="confirm delivery" incoming="//@flowElements.43" outgoing="//@flowElements.51"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_14" id="SequenceFlow_14" sourceRef="//@flowElements.52" targetRef="Task_8"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_8" id="Task_8" name="get debit" incoming="SequenceFlow_14" outgoing="SequenceFlow_15"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_15" id="SequenceFlow_15" sourceRef="Task_8" targetRef="Task_9"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_9" id="Task_9" name="get payment" incoming="SequenceFlow_15" outgoing="SequenceFlow_16"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_16" id="SequenceFlow_16" sourceRef="Task_9" targetRef="//@flowElements.46"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_10" id="Task_10" name="give" incoming="//@flowElements.45" outgoing="SequenceFlow_17"/>
  <flowElements xsi:type="pm:EndEvent" xmi:id="EndEvent_2" id="EndEvent_2" name="End Event 2" incoming="SequenceFlow_17"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_17" id="SequenceFlow_17" sourceRef="Task_10" targetRef="EndEvent_2"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="DataObject_1" id="DataObject_1" name="order [accepted]" incoming="//@flowElements.35" outgoing="//@flowElements.36">
    <dataState xmi:id="DataState_1" id="DataState_1" name="accepted"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_3" id="_DataObjectReference_3" name="order [processing]" incoming="//@flowElements.37" outgoing="//@flowElements.38">
    <dataState xmi:id="DataState_2" id="DataState_2" name="processing"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_4" id="_DataObjectReference_4" name="order [done]" incoming="//@flowElements.39" outgoing="//@flowElements.40">
    <dataState xmi:id="DataState_3" id="DataState_3" name="done"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_1" sourceRef="//@flowElements.48" targetRef="DataObject_1"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_1" sourceRef="DataObject_1" targetRef="//@flowElements.42"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_2" sourceRef="//@flowElements.50" targetRef="_DataObjectReference_3"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_2" sourceRef="_DataObjectReference_3" targetRef="//@flowElements.44"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_3" sourceRef="//@flowElements.52" targetRef="_DataObjectReference_4"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_3" sourceRef="_DataObjectReference_4" targetRef="//@flowElements.46"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#42" sourceRef="//@flowElements.42" targetRef="Task_4"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#43" name="Parallel Gateway 1order [accepted]" incoming="SequenceFlow_6 //@flowElements.36" outgoing="//@flowElements.41" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#44" sourceRef="//@flowElements.44" targetRef="Task_6"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#45" name="Parallel Gateway 3order [processing]" incoming="SequenceFlow_11 //@flowElements.38" outgoing="//@flowElements.43" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#46" sourceRef="//@flowElements.46" targetRef="Task_10"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#47" name="get paymentorder [done]" incoming="SequenceFlow_16 //@flowElements.40" outgoing="//@flowElements.45" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#48" sourceRef="Task_1" targetRef="//@flowElements.48"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#49" name="get dataorder [accepted]" incoming="//@flowElements.47" outgoing="SequenceFlow_3 //@flowElements.35" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#50" sourceRef="Task_4" targetRef="//@flowElements.50"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#51" name="Parallel Gateway 3order [processing]" incoming="//@flowElements.49" outgoing="SequenceFlow_9 //@flowElements.37" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#52" sourceRef="Task_6" targetRef="//@flowElements.52"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#53" name="get debitorder [done]" incoming="//@flowElements.51" outgoing="SequenceFlow_14 //@flowElements.39" gatewayDirection="Diverging"/>
</pm:Process>
