<?xml version="1.0" encoding="ASCII"?>
<pm:Process xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pm="http://BPMN/Simplified" xmi:id="permitrequest" id="permitrequest" name="Default Process">
  <flowElements xsi:type="pm:StartEvent" xmi:id="StartEvent_1" id="StartEvent_1" outgoing="SequenceFlow_2"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_2" id="SequenceFlow_2" sourceRef="StartEvent_1" targetRef="DataObject_1"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="DataObject_1" id="DataObject_1" name="permit [request received]" incoming="SequenceFlow_2" outgoing="//@flowElements.19">
    <dataState xmi:id="DataState_1" id="DataState_1" name="request received"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_3" id="_DataObjectReference_3" name="permit [permit sent]" incoming="//@flowElements.26" outgoing="SequenceFlow_8">
    <dataState xmi:id="DataState_2" id="DataState_2" name="permit sent"/>
  </flowElements>
  <flowElements xsi:type="pm:EndEvent" xmi:id="EndEvent_2" id="EndEvent_2" name="End Event 2" incoming="SequenceFlow_13"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_4" id="_DataObjectReference_4" name="permit [permit to be registered]" incoming="//@flowElements.31" outgoing="//@flowElements.27">
    <dataState xmi:id="DataState_3" id="DataState_3" name="permit to be registered"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_5" id="_DataObjectReference_5" name="permit [permit registered]" incoming="//@flowElements.27" outgoing="SequenceFlow_13">
    <dataState xmi:id="DataState_4" id="DataState_4" name="permit registered"/>
  </flowElements>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_8" id="SequenceFlow_8" sourceRef="_DataObjectReference_3" targetRef="EndEvent_1"/>
  <flowElements xsi:type="pm:EndEvent" xmi:id="EndEvent_1" id="EndEvent_1" incoming="SequenceFlow_8"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_13" id="SequenceFlow_13" sourceRef="_DataObjectReference_5" targetRef="EndEvent_2"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_6" id="_DataObjectReference_6" name="permit [permit to be sent]" incoming="//@flowElements.32" outgoing="//@flowElements.26">
    <dataState xmi:id="DataState_5" id="DataState_5" name="permit to be sent"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_7" id="_DataObjectReference_7" name="permit [geometry unknown]" incoming="//@flowElements.20" outgoing="//@flowElements.28">
    <dataState xmi:id="DataState_6" id="DataState_6" name="geometry unknown"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_8" id="_DataObjectReference_8" name="permit [address unchecked]" incoming="//@flowElements.21" outgoing="//@flowElements.22">
    <dataState xmi:id="DataState_7" id="DataState_7" name="address unchecked"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_9" id="_DataObjectReference_9" name="permit [decided geometry]" incoming="//@flowElements.29" outgoing="//@flowElements.34">
    <dataState xmi:id="DataState_8" id="DataState_8" name="decided geometry"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_10" id="_DataObjectReference_10" name="permit [address checked]" incoming="//@flowElements.22" outgoing="//@flowElements.23">
    <dataState xmi:id="DataState_10" id="DataState_10" name="address checked"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_11" id="_DataObjectReference_11" name="permit [geometry finalized]" incoming="//@flowElements.30" outgoing="//@flowElements.24">
    <dataState xmi:id="DataState_11" id="DataState_11" name="geometry finalized"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_12" id="_DataObjectReference_12" name="permit [permit granted]" incoming="//@flowElements.33" outgoing="//@flowElements.25">
    <dataState xmi:id="DataState_12" id="DataState_12" name="permit granted"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_13" id="_DataObjectReference_13" name="permit [address registered]" incoming="//@flowElements.36" outgoing="//@flowElements.35">
    <dataState xmi:id="DataState_14" id="DataState_14" name="address registered"/>
  </flowElements>
  <flowElements xsi:type="pm:EndEvent" xmi:id="EndEvent_6" id="EndEvent_6" name="End Event 6" incoming="//@flowElements.35"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_1" sourceRef="DataObject_1" targetRef="//@flowElements.38"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_6" sourceRef="//@flowElements.38" targetRef="_DataObjectReference_7"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_7" sourceRef="//@flowElements.38" targetRef="_DataObjectReference_8"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_5" sourceRef="_DataObjectReference_8" targetRef="_DataObjectReference_10"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_7" sourceRef="_DataObjectReference_10" targetRef="//@flowElements.37"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_8" sourceRef="_DataObjectReference_11" targetRef="//@flowElements.37"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_9" sourceRef="_DataObjectReference_12" targetRef="//@flowElements.37"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_3" sourceRef="_DataObjectReference_6" targetRef="_DataObjectReference_3"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_2" sourceRef="_DataObjectReference_4" targetRef="_DataObjectReference_5"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_4" sourceRef="_DataObjectReference_7" targetRef="//@flowElements.39"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_8" sourceRef="//@flowElements.39" targetRef="_DataObjectReference_9"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_10" sourceRef="//@flowElements.39" targetRef="_DataObjectReference_11"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_3" sourceRef="//@flowElements.40" targetRef="_DataObjectReference_4"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_5" sourceRef="//@flowElements.40" targetRef="_DataObjectReference_6"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_11" sourceRef="//@flowElements.40" targetRef="_DataObjectReference_12"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_6" sourceRef="_DataObjectReference_9" targetRef="//@flowElements.40"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_10" sourceRef="_DataObjectReference_13" targetRef="EndEvent_6"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#97" sourceRef="//@flowElements.37" targetRef="_DataObjectReference_13"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#98" incoming="//@flowElements.23 //@flowElements.24 //@flowElements.25" outgoing="//@flowElements.36" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#112" incoming="//@flowElements.19" outgoing="//@flowElements.20 //@flowElements.21" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#118" incoming="//@flowElements.28" outgoing="//@flowElements.29 //@flowElements.30" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#120" incoming="//@flowElements.34" outgoing="//@flowElements.31 //@flowElements.32 //@flowElements.33" gatewayDirection="Diverging"/>
</pm:Process>
