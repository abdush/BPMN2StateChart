<?xml version="1.0" encoding="ASCII"?>
<pm:Process xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pm="http://BPMN/Simplified" xmi:id="order_production" id="order_production" name="Default Process">
  <flowElements xsi:type="pm:StartEvent" xmi:id="StartEvent_1" id="StartEvent_1" outgoing="SequenceFlow_2"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_2" id="SequenceFlow_2" sourceRef="StartEvent_1" targetRef="//@flowElements.31"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_16" id="SequenceFlow_16" sourceRef="_DataObjectReference_11" targetRef="EndEvent_1"/>
  <flowElements xsi:type="pm:EndEvent" xmi:id="EndEvent_1" id="EndEvent_1" incoming="SequenceFlow_16"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="DataObject_1" id="DataObject_1" name="Order [unplanned]" incoming="//@flowElements.15" outgoing="//@flowElements.23">
    <dataState xmi:id="DataState_11" id="DataState_11" name="unplanned"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_4" id="_DataObjectReference_4" name="Order [unchecked]" incoming="//@flowElements.14" outgoing="//@flowElements.16">
    <dataState xmi:id="DataState_2" id="DataState_2" name="unchecked"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_5" id="_DataObjectReference_5" name="Order [checked]" incoming="//@flowElements.16" outgoing="//@flowElements.18">
    <dataState xmi:id="DataState_3" id="DataState_3" name="checked"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_6" id="_DataObjectReference_6" name="Order [planned]" incoming="//@flowElements.24" outgoing="//@flowElements.26">
    <dataState xmi:id="DataState_4" id="DataState_4" name="planned"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_7" id="_DataObjectReference_7" name="Order [costs unknown]" incoming="//@flowElements.25" outgoing="//@flowElements.17">
    <dataState xmi:id="DataState_5" id="DataState_5" name="costs unknown"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_8" id="_DataObjectReference_8" name="Order [billed]" incoming="//@flowElements.27" outgoing="//@flowElements.20">
    <dataState xmi:id="DataState_6" id="DataState_6" name="billed"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_9" id="_DataObjectReference_9" name="Order [paid]" incoming="//@flowElements.20" outgoing="//@flowElements.22">
    <dataState xmi:id="DataState_7" id="DataState_7" name="paid"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_10" id="_DataObjectReference_10" name="Order [produced]" incoming="//@flowElements.26" outgoing="//@flowElements.21">
    <dataState xmi:id="DataState_8" id="DataState_8" name="produced"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_11" id="_DataObjectReference_11" name="Order [shipped]" incoming="//@flowElements.29" outgoing="SequenceFlow_16">
    <dataState xmi:id="DataState_9" id="DataState_9" name="shipped"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_12" id="_DataObjectReference_12" name="Order [costs calculated]" incoming="//@flowElements.17" outgoing="//@flowElements.19">
    <dataState xmi:id="DataState_10" id="DataState_10" name="costs calculated"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_2" sourceRef="//@flowElements.31" targetRef="_DataObjectReference_4"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_11" sourceRef="//@flowElements.31" targetRef="DataObject_1"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_5" sourceRef="_DataObjectReference_4" targetRef="_DataObjectReference_5"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_4" sourceRef="_DataObjectReference_7" targetRef="_DataObjectReference_12"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_6" sourceRef="_DataObjectReference_5" targetRef="//@flowElements.28"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_9" sourceRef="_DataObjectReference_12" targetRef="//@flowElements.28"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_7" sourceRef="_DataObjectReference_8" targetRef="_DataObjectReference_9"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_3" sourceRef="_DataObjectReference_10" targetRef="//@flowElements.30"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_8" sourceRef="_DataObjectReference_9" targetRef="//@flowElements.30"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_10" sourceRef="DataObject_1" targetRef="//@flowElements.32"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_3" sourceRef="//@flowElements.32" targetRef="_DataObjectReference_6"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_6" sourceRef="//@flowElements.32" targetRef="_DataObjectReference_7"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_2" sourceRef="_DataObjectReference_6" targetRef="_DataObjectReference_10"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#63" sourceRef="//@flowElements.28" targetRef="_DataObjectReference_8"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#64" name="join1Order [checked]Order [costs calculated]" incoming="//@flowElements.18 //@flowElements.19" outgoing="//@flowElements.27" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#67" sourceRef="//@flowElements.30" targetRef="_DataObjectReference_11"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#68" name="join2Order [produced]Order [paid]" incoming="//@flowElements.21 //@flowElements.22" outgoing="//@flowElements.29" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#74" name="fork1Order [unchecked]Order [unplanned]" incoming="SequenceFlow_2" outgoing="//@flowElements.14 //@flowElements.15" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#84" name="fork2Order [planned]Order [costs unknown]" incoming="//@flowElements.23" outgoing="//@flowElements.24 //@flowElements.25" gatewayDirection="Diverging"/>
</pm:Process>
