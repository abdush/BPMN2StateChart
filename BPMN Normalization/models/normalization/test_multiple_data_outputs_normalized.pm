<?xml version="1.0" encoding="ASCII"?>
<pm:Process xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pm="http://BPMN/Simplified" xmi:id="test_multiple_data_outputs" id="test_multiple_data_outputs" name="Default Process">
  <flowElements xsi:type="pm:StartEvent" xmi:id="StartEvent_1" id="StartEvent_1" outgoing="SequenceFlow_2"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_2" id="SequenceFlow_2" sourceRef="StartEvent_1" targetRef="Task_1"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_1" id="Task_1" name="Task 1" incoming="SequenceFlow_2" outgoing="//@flowElements.37"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_3" id="SequenceFlow_3" sourceRef="//@flowElements.38" targetRef="ParallelGateway_1"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_1" id="ParallelGateway_1" name="Parallel Gateway 1" incoming="SequenceFlow_3" outgoing="SequenceFlow_4 SequenceFlow_5" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_4" id="SequenceFlow_4" sourceRef="ParallelGateway_1" targetRef="//@flowElements.30"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_5" id="SequenceFlow_5" sourceRef="ParallelGateway_1" targetRef="//@flowElements.32"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_2" id="Task_2" name="Task 2" incoming="//@flowElements.29" outgoing="//@flowElements.39"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_6" id="SequenceFlow_6" sourceRef="//@flowElements.40" targetRef="ParallelGateway_2"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_3" id="Task_3" name="Task 3" incoming="//@flowElements.31" outgoing="//@flowElements.41"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_7" id="SequenceFlow_7" sourceRef="//@flowElements.42" targetRef="ParallelGateway_2"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_2" id="ParallelGateway_2" name="Parallel Gateway 2" incoming="SequenceFlow_6 SequenceFlow_7" outgoing="SequenceFlow_8" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_8" id="SequenceFlow_8" sourceRef="ParallelGateway_2" targetRef="//@flowElements.34"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_4" id="Task_4" name="Task 4" incoming="//@flowElements.33" outgoing="//@flowElements.43"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_1" id="SequenceFlow_1" sourceRef="//@flowElements.44" targetRef="//@flowElements.36"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="DataObject_1" id="DataObject_1" name="Object" incoming="//@flowElements.20" outgoing="//@flowElements.21 //@flowElements.23">
    <dataState xmi:id="DataState_1" id="DataState_1" name="State 1"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_3" id="_DataObjectReference_3" name="Object" incoming="//@flowElements.24" outgoing="//@flowElements.26">
    <dataState xmi:id="DataState_2" id="DataState_2" name="State 2"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_4" id="_DataObjectReference_4" name="Object" incoming="//@flowElements.22" outgoing="//@flowElements.25">
    <dataState xmi:id="DataState_3" id="DataState_3" name="State 3"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_5" id="_DataObjectReference_5" name="Object" incoming="//@flowElements.27" outgoing="//@flowElements.28">
    <dataState xmi:id="DataState_4" id="DataState_4" name="State 4"/>
  </flowElements>
  <flowElements xsi:type="pm:EndEvent" xmi:id="EndEvent_1" id="EndEvent_1" incoming="//@flowElements.35"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_1" sourceRef="//@flowElements.38" targetRef="DataObject_1"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_2" sourceRef="DataObject_1" targetRef="//@flowElements.30"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_3" sourceRef="//@flowElements.40" targetRef="_DataObjectReference_4"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_1" sourceRef="DataObject_1" targetRef="//@flowElements.32"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_2" sourceRef="//@flowElements.42" targetRef="_DataObjectReference_3"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_3" sourceRef="_DataObjectReference_4" targetRef="//@flowElements.34"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_4" sourceRef="_DataObjectReference_3" targetRef="//@flowElements.34"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_4" sourceRef="//@flowElements.44" targetRef="_DataObjectReference_5"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_5" sourceRef="_DataObjectReference_5" targetRef="//@flowElements.36"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#30" sourceRef="//@flowElements.30" targetRef="Task_2"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#31" incoming="SequenceFlow_4 //@flowElements.21" outgoing="//@flowElements.29" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#32" sourceRef="//@flowElements.32" targetRef="Task_3"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#33" incoming="SequenceFlow_5 //@flowElements.23" outgoing="//@flowElements.31" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#34" sourceRef="//@flowElements.34" targetRef="Task_4"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#35" incoming="SequenceFlow_8 //@flowElements.25 //@flowElements.26" outgoing="//@flowElements.33" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#36" sourceRef="//@flowElements.36" targetRef="EndEvent_1"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#37" incoming="SequenceFlow_1 //@flowElements.28" outgoing="//@flowElements.35" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#38" sourceRef="Task_1" targetRef="//@flowElements.38"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#39" incoming="//@flowElements.37" outgoing="SequenceFlow_3 //@flowElements.20" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#40" sourceRef="Task_2" targetRef="//@flowElements.40"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#41" incoming="//@flowElements.39" outgoing="SequenceFlow_6 //@flowElements.22" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#42" sourceRef="Task_3" targetRef="//@flowElements.42"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#43" incoming="//@flowElements.41" outgoing="SequenceFlow_7 //@flowElements.24" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#44" sourceRef="Task_4" targetRef="//@flowElements.44"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#45" incoming="//@flowElements.43" outgoing="SequenceFlow_1 //@flowElements.27" gatewayDirection="Diverging"/>
</pm:Process>
