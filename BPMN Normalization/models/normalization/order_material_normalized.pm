<?xml version="1.0" encoding="ASCII"?>
<pm:Process xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pm="http://BPMN/Simplified" xmi:id="order_material" id="order_material" name="Default Process">
  <flowElements xsi:type="pm:StartEvent" xmi:id="StartEvent_1" id="StartEvent_1" outgoing="//@flowElements.37"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_2" id="SequenceFlow_2" sourceRef="DataObject_1" targetRef="Task_1"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_1" id="Task_1" name="Prepare Purchase Request" incoming="SequenceFlow_2" outgoing="//@flowElements.38"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_3" id="SequenceFlow_3" sourceRef="_DataObjectReference_3" targetRef="Task_2"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_2" id="Task_2" name="Obtain Account's Manager Approval" incoming="SequenceFlow_3" outgoing="//@flowElements.39"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_4" id="SequenceFlow_4" sourceRef="_DataObjectReference_4" targetRef="ExclusiveGateway_1"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="ExclusiveGateway_1" id="ExclusiveGateway_1" name="Needs Authorization?" incoming="SequenceFlow_4" outgoing="SequenceFlow_5 SequenceFlow_6" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_5" id="SequenceFlow_5" name="yes" sourceRef="ExclusiveGateway_1" targetRef="Task_3" guard="yes"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_6" id="SequenceFlow_6" name="no" sourceRef="ExclusiveGateway_1" targetRef="ExclusiveGateway_2" guard="no"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="ExclusiveGateway_2" id="ExclusiveGateway_2" name="Merge 1" incoming="SequenceFlow_6 SequenceFlow_7" outgoing="SequenceFlow_8" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_4" id="Task_4" name="Submit Signed Purchase Request" incoming="SequenceFlow_8" outgoing="//@flowElements.40"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_8" id="SequenceFlow_8" sourceRef="ExclusiveGateway_2" targetRef="Task_4"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_9" id="SequenceFlow_9" sourceRef="_DataObjectReference_6" targetRef="ExclusiveGateway_3"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_3" id="Task_3" name="Obtain Authorization Signature" incoming="SequenceFlow_5" outgoing="//@flowElements.41"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_7" id="SequenceFlow_7" sourceRef="_DataObjectReference_5" targetRef="ExclusiveGateway_2"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="ExclusiveGateway_3" id="ExclusiveGateway_3" name="Is there a current supplier?" incoming="SequenceFlow_9" outgoing="SequenceFlow_10 SequenceFlow_11" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_10" id="SequenceFlow_10" name="yes" sourceRef="ExclusiveGateway_3" targetRef="Task_5" guard="yes"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_11" id="SequenceFlow_11" name="no" sourceRef="ExclusiveGateway_3" targetRef="Task_6" guard="no"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_5" id="Task_5" name="Identify current supplier" incoming="SequenceFlow_10" outgoing="SequenceFlow_15"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_15" id="SequenceFlow_15" sourceRef="Task_5" targetRef="ExclusiveGateway_4"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_6" id="Task_6" name="Identify potential suppliers" incoming="SequenceFlow_11" outgoing="SequenceFlow_12"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_12" id="SequenceFlow_12" sourceRef="Task_6" targetRef="Task_7"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_7" id="Task_7" name="Request Bids" incoming="SequenceFlow_12" outgoing="SequenceFlow_13"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_13" id="SequenceFlow_13" sourceRef="Task_7" targetRef="Task_8"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_8" id="Task_8" name="Evaluate Bids" incoming="SequenceFlow_13" outgoing="SequenceFlow_14"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_14" id="SequenceFlow_14" sourceRef="Task_8" targetRef="ExclusiveGateway_4"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="ExclusiveGateway_4" id="ExclusiveGateway_4" name="Merge 2" incoming="SequenceFlow_15 SequenceFlow_14" outgoing="SequenceFlow_16" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_16" id="SequenceFlow_16" sourceRef="ExclusiveGateway_4" targetRef="Task_9"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_9" id="Task_9" name="Order Requested Material" incoming="SequenceFlow_16" outgoing="//@flowElements.42"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_17" id="SequenceFlow_17" sourceRef="_DataObjectReference_7" targetRef="EndEvent_1"/>
  <flowElements xsi:type="pm:EndEvent" xmi:id="EndEvent_1" id="EndEvent_1" incoming="SequenceFlow_17"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="DataObject_1" id="DataObject_1" name="Purchase Request [Not prepared]" incoming="//@flowElements.37" outgoing="SequenceFlow_2">
    <dataState xmi:id="DataState_1" id="DataState_1" name="Not prepared"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_3" id="_DataObjectReference_3" name="Purchase Request [Prepared]" incoming="//@flowElements.38" outgoing="SequenceFlow_3">
    <dataState xmi:id="DataState_3" id="DataState_3" name="Prepared"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_4" id="_DataObjectReference_4" name="Purchase Request [Approved]" incoming="//@flowElements.39" outgoing="SequenceFlow_4">
    <dataState xmi:id="DataState_5" id="DataState_5" name="Approved"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_5" id="_DataObjectReference_5" name="Purchase Request [Authorized]" incoming="//@flowElements.41" outgoing="SequenceFlow_7">
    <dataState xmi:id="DataState_7" id="DataState_7" name="Authorized"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_6" id="_DataObjectReference_6" name="Purchase Request [Submitted]" incoming="//@flowElements.40" outgoing="SequenceFlow_9">
    <dataState xmi:id="DataState_8" id="DataState_8" name="Submitted"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_7" id="_DataObjectReference_7" name="Purchase Request [Ordered]" incoming="//@flowElements.42" outgoing="SequenceFlow_17">
    <dataState xmi:id="DataState_9" id="DataState_9" name="Ordered"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_1" sourceRef="StartEvent_1" targetRef="DataObject_1"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_2" sourceRef="Task_1" targetRef="_DataObjectReference_3"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_3" sourceRef="Task_2" targetRef="_DataObjectReference_4"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_5" sourceRef="Task_4" targetRef="_DataObjectReference_6"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_4" sourceRef="Task_3" targetRef="_DataObjectReference_5"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_6" sourceRef="Task_9" targetRef="_DataObjectReference_7"/>
</pm:Process>
