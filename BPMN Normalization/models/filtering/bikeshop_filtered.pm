<?xml version="1.0" encoding="ASCII"?>
<pm:Process xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pm="http://BPMN/Simplified" xmi:id="bikeshop" id="bikeshop" name="Default Process">
  <flowElements xsi:type="pm:StartEvent" xmi:id="StartEvent_1" id="StartEvent_1" outgoing="SequenceFlow_2"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_2" id="SequenceFlow_2" sourceRef="StartEvent_1" targetRef="//@flowElements.49"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="DataObject_1" id="DataObject_1" name="Order [no trade-in]" incoming="//@flowElements.43" outgoing="//@flowElements.47">
    <dataState xmi:id="DataState_1" id="DataState_1" name="no trade-in"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_3" id="_DataObjectReference_3" name="Order [not ordered at supplier]" incoming="//@flowElements.44" outgoing="//@flowElements.46">
    <dataState xmi:id="DataState_2" id="DataState_2" name="not ordered at supplier"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_4" id="_DataObjectReference_4" name="Order [accessories unknown]" incoming="//@flowElements.45" outgoing="//@flowElements.48">
    <dataState xmi:id="DataState_3" id="DataState_3" name="accessories unknown"/>
  </flowElements>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_15" id="SequenceFlow_15" sourceRef="_DataObjectReference_5" targetRef="ParallelGateway_3"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_12" id="SequenceFlow_12" sourceRef="_DataObjectReference_6" targetRef="ParallelGateway_2"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="ExclusiveGateway_1" id="ExclusiveGateway_1" name="Exclusive Gateway 1" incoming="//@flowElements.47" outgoing="SequenceFlow_8 SequenceFlow_10" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_8" id="SequenceFlow_8" sourceRef="ExclusiveGateway_1" targetRef="_DataObjectReference_7"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_10" id="SequenceFlow_10" sourceRef="ExclusiveGateway_1" targetRef="ExclusiveGateway_2"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_5" id="_DataObjectReference_5" name="Order [ordered at supplier]" incoming="//@flowElements.46" outgoing="SequenceFlow_15">
    <dataState xmi:id="DataState_4" id="DataState_4" name="ordered at supplier"/>
  </flowElements>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_23" id="SequenceFlow_23" sourceRef="_DataObjectReference_12" targetRef="ParallelGateway_5"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_24" id="SequenceFlow_24" sourceRef="_DataObjectReference_11" targetRef="ParallelGateway_5"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_5" id="ParallelGateway_5" name="Parallel Gateway 5" incoming="SequenceFlow_23 SequenceFlow_24" outgoing="SequenceFlow_25" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_25" id="SequenceFlow_25" sourceRef="ParallelGateway_5" targetRef="_DataObjectReference_13"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="ExclusiveGateway_3" id="ExclusiveGateway_3" name="Exclusive Gateway 3" incoming="SequenceFlow_33 SequenceFlow_34" outgoing="SequenceFlow_16" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_16" id="SequenceFlow_16" sourceRef="ExclusiveGateway_3" targetRef="_DataObjectReference_9"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_6" id="_DataObjectReference_6" name="Order [accessories fixed]" incoming="//@flowElements.48" outgoing="SequenceFlow_12">
    <dataState xmi:id="DataState_5" id="DataState_5" name="accessories fixed"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_7" id="_DataObjectReference_7" name="Order [trade-in]" incoming="SequenceFlow_8" outgoing="SequenceFlow_9">
    <dataState xmi:id="DataState_6" id="DataState_6" name="trade-in"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_8" id="_DataObjectReference_8" name="Order [signed]" incoming="SequenceFlow_13" outgoing="SequenceFlow_14">
    <dataState xmi:id="DataState_7" id="DataState_7" name="signed"/>
  </flowElements>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_9" id="SequenceFlow_9" sourceRef="_DataObjectReference_7" targetRef="ExclusiveGateway_2"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="ExclusiveGateway_2" id="ExclusiveGateway_2" name="Exclusive Gateway 2" incoming="SequenceFlow_9 SequenceFlow_10" outgoing="SequenceFlow_11" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_11" id="SequenceFlow_11" sourceRef="ExclusiveGateway_2" targetRef="ParallelGateway_2"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_2" id="ParallelGateway_2" name="Parallel Gateway 2" incoming="SequenceFlow_11 SequenceFlow_12" outgoing="SequenceFlow_13" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_13" id="SequenceFlow_13" sourceRef="ParallelGateway_2" targetRef="_DataObjectReference_8"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_14" id="SequenceFlow_14" sourceRef="_DataObjectReference_8" targetRef="ParallelGateway_3"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_3" id="ParallelGateway_3" name="Parallel Gateway 3" incoming="SequenceFlow_14 SequenceFlow_15" outgoing="SequenceFlow_33" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_33" id="SequenceFlow_33" sourceRef="ParallelGateway_3" targetRef="ExclusiveGateway_3"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_17" id="SequenceFlow_17" sourceRef="_DataObjectReference_9" targetRef="ExclusiveGateway_4"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_9" id="_DataObjectReference_9" name="Order [bike ready]" incoming="SequenceFlow_16" outgoing="SequenceFlow_17">
    <dataState xmi:id="DataState_8" id="DataState_8" name="bike ready"/>
  </flowElements>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="ExclusiveGateway_4" id="ExclusiveGateway_4" name="Exclusive Gateway 4" incoming="SequenceFlow_17" outgoing="SequenceFlow_19 SequenceFlow_20" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_19" id="SequenceFlow_19" sourceRef="ExclusiveGateway_4" targetRef="ParallelGateway_4"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_20" id="SequenceFlow_20" sourceRef="ExclusiveGateway_4" targetRef="_DataObjectReference_10"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_34" id="SequenceFlow_34" sourceRef="_DataObjectReference_10" targetRef="ExclusiveGateway_3"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_4" id="ParallelGateway_4" name="Parallel Gateway 4" incoming="SequenceFlow_19" outgoing="SequenceFlow_21 SequenceFlow_22" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_21" id="SequenceFlow_21" sourceRef="ParallelGateway_4" targetRef="_DataObjectReference_12"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_22" id="SequenceFlow_22" sourceRef="ParallelGateway_4" targetRef="_DataObjectReference_11"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_10" id="_DataObjectReference_10" name="Order [reordered]" incoming="SequenceFlow_20" outgoing="SequenceFlow_34">
    <dataState xmi:id="DataState_9" id="DataState_9" name="reordered"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_11" id="_DataObjectReference_11" name="Order [accessories ready]" incoming="SequenceFlow_22" outgoing="SequenceFlow_24">
    <dataState xmi:id="DataState_10" id="DataState_10" name="accessories ready"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_12" id="_DataObjectReference_12" name="Order [bike ready]" incoming="SequenceFlow_21" outgoing="SequenceFlow_23">
    <dataState xmi:id="DataState_11" id="DataState_11" name="bike ready"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_13" id="_DataObjectReference_13" name="Order [closed]" incoming="SequenceFlow_25" outgoing="SequenceFlow_32">
    <dataState xmi:id="DataState_12" id="DataState_12" name="closed"/>
  </flowElements>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_32" id="SequenceFlow_32" sourceRef="_DataObjectReference_13" targetRef="EndEvent_1"/>
  <flowElements xsi:type="pm:EndEvent" xmi:id="EndEvent_1" id="EndEvent_1" incoming="SequenceFlow_32"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_1" sourceRef="//@flowElements.49" targetRef="DataObject_1"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_2" sourceRef="//@flowElements.49" targetRef="_DataObjectReference_3"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_3" sourceRef="//@flowElements.49" targetRef="_DataObjectReference_4"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_3" sourceRef="_DataObjectReference_3" targetRef="_DataObjectReference_5"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_2" sourceRef="DataObject_1" targetRef="ExclusiveGateway_1"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_1" sourceRef="_DataObjectReference_4" targetRef="_DataObjectReference_6"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#96" incoming="SequenceFlow_2" outgoing="//@flowElements.43 //@flowElements.44 //@flowElements.45" gatewayDirection="Diverging"/>
</pm:Process>
