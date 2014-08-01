<?xml version="1.0" encoding="ASCII"?>
<pm:Process xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pm="http://BPMN/Simplified" xmi:id="moneywithdraw" id="moneywithdraw" name="Default Process">
  <flowElements xsi:type="pm:StartEvent" xmi:id="StartEvent_1" id="StartEvent_1" outgoing="SequenceFlow_2"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_2" id="SequenceFlow_2" sourceRef="StartEvent_1" targetRef="Task_1"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_1" id="Task_1" name="withdraw cash" incoming="SequenceFlow_2" outgoing="SequenceFlow_3"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_3" id="SequenceFlow_3" sourceRef="Task_1" targetRef="ParallelGateway_1"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_1" id="ParallelGateway_1" name="Parallel Gateway 1" incoming="SequenceFlow_3" outgoing="SequenceFlow_4 SequenceFlow_5" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_4" id="SequenceFlow_4" sourceRef="ParallelGateway_1" targetRef="DataObject_1"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_5" id="SequenceFlow_5" sourceRef="ParallelGateway_1" targetRef="Task_3"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_3" id="Task_3" name="log entry" incoming="SequenceFlow_5" outgoing="SequenceFlow_7"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_7" id="SequenceFlow_7" sourceRef="Task_3" targetRef="ParallelGateway_3"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_2" id="Task_2" name="check balance" incoming="//@flowElements.26" outgoing="//@flowElements.32"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_6" id="SequenceFlow_6" sourceRef="//@flowElements.33" targetRef="ParallelGateway_2"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_2" id="ParallelGateway_2" name="Parallel Gateway 2" incoming="SequenceFlow_6" outgoing="SequenceFlow_8 SequenceFlow_13" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_8" id="SequenceFlow_8" sourceRef="ParallelGateway_2" targetRef="//@flowElements.31"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_3" id="ParallelGateway_3" name="Parallel Gateway 3" incoming="SequenceFlow_7 SequenceFlow_13" outgoing="SequenceFlow_9" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_9" id="SequenceFlow_9" sourceRef="ParallelGateway_3" targetRef="Task_5"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_13" id="SequenceFlow_13" sourceRef="ParallelGateway_2" targetRef="ParallelGateway_3"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_5" id="Task_5" name="print receipt" incoming="SequenceFlow_9" outgoing="SequenceFlow_10"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_10" id="SequenceFlow_10" sourceRef="Task_5" targetRef="ParallelGateway_4"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_4" id="Task_4" name="dispense cash" incoming="//@flowElements.30" outgoing="//@flowElements.29"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_11" id="SequenceFlow_11" sourceRef="_DataObjectReference_4" targetRef="ParallelGateway_4"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_4" id="ParallelGateway_4" name="Parallel Gateway 4" incoming="SequenceFlow_10 SequenceFlow_11" outgoing="SequenceFlow_12" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_12" id="SequenceFlow_12" sourceRef="ParallelGateway_4" targetRef="EndEvent_2"/>
  <flowElements xsi:type="pm:EndEvent" xmi:id="EndEvent_2" id="EndEvent_2" name="End Event 2" incoming="SequenceFlow_12"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="DataObject_1" id="DataObject_1" name="Account [uncreditted]" incoming="SequenceFlow_4" outgoing="//@flowElements.26">
    <dataState xmi:id="DataState_1" id="DataState_1" name="uncreditted"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_3" id="_DataObjectReference_3" name="Account [checked]" incoming="//@flowElements.27" outgoing="//@flowElements.28">
    <dataState xmi:id="DataState_2" id="DataState_2" name="checked"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_4" id="_DataObjectReference_4" name="Account [creditted]" incoming="//@flowElements.29" outgoing="SequenceFlow_11">
    <dataState xmi:id="DataState_3" id="DataState_3" name="creditted"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_1" sourceRef="DataObject_1" targetRef="Task_2"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_1" sourceRef="//@flowElements.33" targetRef="_DataObjectReference_3"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_2" sourceRef="_DataObjectReference_3" targetRef="//@flowElements.31"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_2" sourceRef="Task_4" targetRef="_DataObjectReference_4"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#31" sourceRef="//@flowElements.31" targetRef="Task_4"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#32" incoming="SequenceFlow_8 //@flowElements.28" outgoing="//@flowElements.30" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#33" sourceRef="Task_2" targetRef="//@flowElements.33"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#34" incoming="//@flowElements.32" outgoing="SequenceFlow_6 //@flowElements.27" gatewayDirection="Diverging"/>
</pm:Process>
