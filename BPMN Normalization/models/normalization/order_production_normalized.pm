<?xml version="1.0" encoding="ASCII"?>
<pm:Process xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pm="http://BPMN/Simplified" xmi:id="order_production" id="order_production" name="Default Process">
  <flowElements xsi:type="pm:StartEvent" xmi:id="StartEvent_1" id="StartEvent_1" outgoing="SequenceFlow_2"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_2" id="SequenceFlow_2" sourceRef="StartEvent_1" targetRef="Task_1"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_1" id="Task_1" name="Receive" incoming="SequenceFlow_2" outgoing="//@flowElements.72"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_3" id="SequenceFlow_3" sourceRef="//@flowElements.73" targetRef="ParallelGateway_1"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_1" id="ParallelGateway_1" name="fork1" incoming="SequenceFlow_3" outgoing="SequenceFlow_4 SequenceFlow_5" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_4" id="SequenceFlow_4" sourceRef="ParallelGateway_1" targetRef="//@flowElements.69"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_5" id="SequenceFlow_5" sourceRef="ParallelGateway_1" targetRef="//@flowElements.59"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_3" id="Task_3" name="Check client details" incoming="//@flowElements.58" outgoing="//@flowElements.74"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_7" id="SequenceFlow_7" sourceRef="//@flowElements.75" targetRef="ParallelGateway_3"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_3" id="ParallelGateway_3" name="join1" incoming="SequenceFlow_7 SequenceFlow_11" outgoing="SequenceFlow_10" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_10" id="SequenceFlow_10" sourceRef="ParallelGateway_3" targetRef="//@flowElements.63"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_5" id="Task_5" name="Calculate cost" incoming="//@flowElements.60" outgoing="//@flowElements.76"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_11" id="SequenceFlow_11" sourceRef="//@flowElements.77" targetRef="ParallelGateway_3"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_6" id="Task_6" name="Create bill" incoming="//@flowElements.62" outgoing="//@flowElements.78"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_12" id="SequenceFlow_12" sourceRef="//@flowElements.79" targetRef="//@flowElements.65"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_7" id="Task_7" name="Receive payment" incoming="//@flowElements.64" outgoing="//@flowElements.80"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_13" id="SequenceFlow_13" sourceRef="//@flowElements.81" targetRef="ParallelGateway_4"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_4" id="ParallelGateway_4" name="join2" incoming="SequenceFlow_13 SequenceFlow_14" outgoing="SequenceFlow_15" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_15" id="SequenceFlow_15" sourceRef="ParallelGateway_4" targetRef="//@flowElements.67"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_8" id="Task_8" name="Ship order" incoming="//@flowElements.66" outgoing="//@flowElements.52"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_16" id="SequenceFlow_16" sourceRef="_DataObjectReference_11" targetRef="EndEvent_1"/>
  <flowElements xsi:type="pm:EndEvent" xmi:id="EndEvent_1" id="EndEvent_1" incoming="SequenceFlow_16"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="DataObject_1" id="DataObject_1" name="Order [unplanned]" incoming="//@flowElements.40" outgoing="//@flowElements.53">
    <dataState xmi:id="DataState_11" id="DataState_11" name="unplanned"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_4" id="_DataObjectReference_4" name="Order [unchecked]" incoming="//@flowElements.39" outgoing="//@flowElements.41">
    <dataState xmi:id="DataState_2" id="DataState_2" name="unchecked"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_5" id="_DataObjectReference_5" name="Order [checked]" incoming="//@flowElements.42" outgoing="//@flowElements.45">
    <dataState xmi:id="DataState_3" id="DataState_3" name="checked"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_6" id="_DataObjectReference_6" name="Order [planned]" incoming="//@flowElements.54" outgoing="//@flowElements.56">
    <dataState xmi:id="DataState_4" id="DataState_4" name="planned"/>
  </flowElements>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_2" id="Task_2" name="Make production plan" incoming="//@flowElements.68" outgoing="//@flowElements.82"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_6" id="SequenceFlow_6" sourceRef="//@flowElements.83" targetRef="ParallelGateway_2"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_2" id="ParallelGateway_2" name="fork2" incoming="SequenceFlow_6" outgoing="SequenceFlow_8 SequenceFlow_9" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_8" id="SequenceFlow_8" sourceRef="ParallelGateway_2" targetRef="//@flowElements.71"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_9" id="SequenceFlow_9" sourceRef="ParallelGateway_2" targetRef="//@flowElements.61"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_4" id="Task_4" name="Produce" incoming="//@flowElements.70" outgoing="//@flowElements.84"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_14" id="SequenceFlow_14" sourceRef="//@flowElements.85" targetRef="ParallelGateway_4"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_7" id="_DataObjectReference_7" name="Order [costs unknown]" incoming="//@flowElements.55" outgoing="//@flowElements.43">
    <dataState xmi:id="DataState_5" id="DataState_5" name="costs unknown"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_8" id="_DataObjectReference_8" name="Order [billed]" incoming="//@flowElements.47" outgoing="//@flowElements.48">
    <dataState xmi:id="DataState_6" id="DataState_6" name="billed"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_9" id="_DataObjectReference_9" name="Order [paid]" incoming="//@flowElements.49" outgoing="//@flowElements.51">
    <dataState xmi:id="DataState_7" id="DataState_7" name="paid"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_10" id="_DataObjectReference_10" name="Order [produced]" incoming="//@flowElements.57" outgoing="//@flowElements.50">
    <dataState xmi:id="DataState_8" id="DataState_8" name="produced"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_11" id="_DataObjectReference_11" name="Order [shipped]" incoming="//@flowElements.52" outgoing="SequenceFlow_16">
    <dataState xmi:id="DataState_9" id="DataState_9" name="shipped"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_12" id="_DataObjectReference_12" name="Order [costs calculated]" incoming="//@flowElements.44" outgoing="//@flowElements.46">
    <dataState xmi:id="DataState_10" id="DataState_10" name="costs calculated"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_2" sourceRef="//@flowElements.73" targetRef="_DataObjectReference_4"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_11" sourceRef="//@flowElements.73" targetRef="DataObject_1"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_5" sourceRef="_DataObjectReference_4" targetRef="//@flowElements.59"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_7" sourceRef="//@flowElements.75" targetRef="_DataObjectReference_5"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_4" sourceRef="_DataObjectReference_7" targetRef="//@flowElements.61"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_10" sourceRef="//@flowElements.77" targetRef="_DataObjectReference_12"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_6" sourceRef="_DataObjectReference_5" targetRef="//@flowElements.63"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_9" sourceRef="_DataObjectReference_12" targetRef="//@flowElements.63"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_8" sourceRef="//@flowElements.79" targetRef="_DataObjectReference_8"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_7" sourceRef="_DataObjectReference_8" targetRef="//@flowElements.65"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_9" sourceRef="//@flowElements.81" targetRef="_DataObjectReference_9"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_3" sourceRef="_DataObjectReference_10" targetRef="//@flowElements.67"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_8" sourceRef="_DataObjectReference_9" targetRef="//@flowElements.67"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_5" sourceRef="Task_8" targetRef="_DataObjectReference_11"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_10" sourceRef="DataObject_1" targetRef="//@flowElements.69"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_3" sourceRef="//@flowElements.83" targetRef="_DataObjectReference_6"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_6" sourceRef="//@flowElements.83" targetRef="_DataObjectReference_7"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_2" sourceRef="_DataObjectReference_6" targetRef="//@flowElements.71"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_4" sourceRef="//@flowElements.85" targetRef="_DataObjectReference_10"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#59" sourceRef="//@flowElements.59" targetRef="Task_3"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#60" incoming="SequenceFlow_5 //@flowElements.41" outgoing="//@flowElements.58" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#61" sourceRef="//@flowElements.61" targetRef="Task_5"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#62" incoming="SequenceFlow_9 //@flowElements.43" outgoing="//@flowElements.60" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#63" sourceRef="//@flowElements.63" targetRef="Task_6"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#64" incoming="SequenceFlow_10 //@flowElements.45 //@flowElements.46" outgoing="//@flowElements.62" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#65" sourceRef="//@flowElements.65" targetRef="Task_7"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#66" incoming="SequenceFlow_12 //@flowElements.48" outgoing="//@flowElements.64" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#67" sourceRef="//@flowElements.67" targetRef="Task_8"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#68" incoming="SequenceFlow_15 //@flowElements.50 //@flowElements.51" outgoing="//@flowElements.66" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#69" sourceRef="//@flowElements.69" targetRef="Task_2"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#70" incoming="SequenceFlow_4 //@flowElements.53" outgoing="//@flowElements.68" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#71" sourceRef="//@flowElements.71" targetRef="Task_4"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#72" incoming="SequenceFlow_8 //@flowElements.56" outgoing="//@flowElements.70" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#73" sourceRef="Task_1" targetRef="//@flowElements.73"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#74" incoming="//@flowElements.72" outgoing="SequenceFlow_3 //@flowElements.39 //@flowElements.40" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#75" sourceRef="Task_3" targetRef="//@flowElements.75"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#76" incoming="//@flowElements.74" outgoing="SequenceFlow_7 //@flowElements.42" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#77" sourceRef="Task_5" targetRef="//@flowElements.77"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#78" incoming="//@flowElements.76" outgoing="SequenceFlow_11 //@flowElements.44" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#79" sourceRef="Task_6" targetRef="//@flowElements.79"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#80" incoming="//@flowElements.78" outgoing="SequenceFlow_12 //@flowElements.47" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#81" sourceRef="Task_7" targetRef="//@flowElements.81"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#82" incoming="//@flowElements.80" outgoing="SequenceFlow_13 //@flowElements.49" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#83" sourceRef="Task_2" targetRef="//@flowElements.83"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#84" incoming="//@flowElements.82" outgoing="SequenceFlow_6 //@flowElements.54 //@flowElements.55" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#85" sourceRef="Task_4" targetRef="//@flowElements.85"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#86" incoming="//@flowElements.84" outgoing="SequenceFlow_14 //@flowElements.57" gatewayDirection="Diverging"/>
</pm:Process>
