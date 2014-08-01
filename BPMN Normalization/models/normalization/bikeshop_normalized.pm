<?xml version="1.0" encoding="ASCII"?>
<pm:Process xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pm="http://BPMN/Simplified" xmi:id="bikeshop" id="bikeshop" name="Default Process">
  <flowElements xsi:type="pm:StartEvent" xmi:id="StartEvent_1" id="StartEvent_1" outgoing="SequenceFlow_2"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_2" id="SequenceFlow_2" sourceRef="StartEvent_1" targetRef="Task_1"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="DataObject_1" id="DataObject_1" name="Order [no trade-in]" incoming="//@flowElements.73" outgoing="//@flowElements.78">
    <dataState xmi:id="DataState_1" id="DataState_1" name="no trade-in"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_3" id="_DataObjectReference_3" name="Order [not ordered at supplier]" incoming="//@flowElements.74" outgoing="//@flowElements.76">
    <dataState xmi:id="DataState_2" id="DataState_2" name="not ordered at supplier"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_4" id="_DataObjectReference_4" name="Order [accessories unknown]" incoming="//@flowElements.75" outgoing="//@flowElements.79">
    <dataState xmi:id="DataState_3" id="DataState_3" name="accessories unknown"/>
  </flowElements>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_1" id="Task_1" name="pick bike model" incoming="SequenceFlow_2" outgoing="//@flowElements.94"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_3" id="SequenceFlow_3" sourceRef="//@flowElements.95" targetRef="ParallelGateway_1"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_1" id="ParallelGateway_1" name="Parallel Gateway 1" incoming="SequenceFlow_3" outgoing="SequenceFlow_4 SequenceFlow_5 SequenceFlow_6" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_4" id="SequenceFlow_4" sourceRef="ParallelGateway_1" targetRef="//@flowElements.89"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_5" id="SequenceFlow_5" sourceRef="ParallelGateway_1" targetRef="//@flowElements.91"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_6" id="SequenceFlow_6" sourceRef="ParallelGateway_1" targetRef="//@flowElements.93"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_2" id="Task_2" name="order from supplier" incoming="//@flowElements.88" outgoing="//@flowElements.77"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_15" id="SequenceFlow_15" sourceRef="_DataObjectReference_5" targetRef="ParallelGateway_3"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_3" id="Task_3" name="decide trade-in" incoming="//@flowElements.90" outgoing="SequenceFlow_7"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_7" id="SequenceFlow_7" sourceRef="Task_3" targetRef="ExclusiveGateway_1"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_4" id="Task_4" name="determine accessories" incoming="//@flowElements.92" outgoing="//@flowElements.80"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_12" id="SequenceFlow_12" sourceRef="_DataObjectReference_6" targetRef="ParallelGateway_2"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="ExclusiveGateway_1" id="ExclusiveGateway_1" name="Exclusive Gateway 1" incoming="SequenceFlow_7" outgoing="SequenceFlow_8 SequenceFlow_10" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_8" id="SequenceFlow_8" sourceRef="ExclusiveGateway_1" targetRef="Task_5"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_10" id="SequenceFlow_10" sourceRef="ExclusiveGateway_1" targetRef="ExclusiveGateway_2"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_5" id="_DataObjectReference_5" name="Order [ordered at supplier]" incoming="//@flowElements.77" outgoing="SequenceFlow_15">
    <dataState xmi:id="DataState_4" id="DataState_4" name="ordered at supplier"/>
  </flowElements>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_10" id="Task_10" name="prepare bike" incoming="SequenceFlow_21" outgoing="//@flowElements.81"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_23" id="SequenceFlow_23" sourceRef="_DataObjectReference_12" targetRef="ParallelGateway_5"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_11" id="Task_11" name="prepare accessories" incoming="SequenceFlow_22" outgoing="//@flowElements.82"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_24" id="SequenceFlow_24" sourceRef="_DataObjectReference_11" targetRef="ParallelGateway_5"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_5" id="ParallelGateway_5" name="Parallel Gateway 5" incoming="SequenceFlow_23 SequenceFlow_24" outgoing="SequenceFlow_25" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_25" id="SequenceFlow_25" sourceRef="ParallelGateway_5" targetRef="Task_12"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_12" id="Task_12" name="notify customer" incoming="SequenceFlow_25" outgoing="SequenceFlow_27"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_27" id="SequenceFlow_27" sourceRef="Task_12" targetRef="ParallelGateway_6"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="ExclusiveGateway_3" id="ExclusiveGateway_3" name="Exclusive Gateway 3" incoming="SequenceFlow_33 SequenceFlow_34" outgoing="SequenceFlow_16" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_16" id="SequenceFlow_16" sourceRef="ExclusiveGateway_3" targetRef="Task_7"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_6" id="_DataObjectReference_6" name="Order [accessories fixed]" incoming="//@flowElements.80" outgoing="SequenceFlow_12">
    <dataState xmi:id="DataState_5" id="DataState_5" name="accessories fixed"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_7" id="_DataObjectReference_7" name="Order [trade-in]" incoming="//@flowElements.83" outgoing="SequenceFlow_9">
    <dataState xmi:id="DataState_6" id="DataState_6" name="trade-in"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_8" id="_DataObjectReference_8" name="Order [signed]" incoming="//@flowElements.84" outgoing="SequenceFlow_14">
    <dataState xmi:id="DataState_7" id="DataState_7" name="signed"/>
  </flowElements>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_5" id="Task_5" name="assess trade-in" incoming="SequenceFlow_8" outgoing="//@flowElements.83"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_9" id="SequenceFlow_9" sourceRef="_DataObjectReference_7" targetRef="ExclusiveGateway_2"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="ExclusiveGateway_2" id="ExclusiveGateway_2" name="Exclusive Gateway 2" incoming="SequenceFlow_9 SequenceFlow_10" outgoing="SequenceFlow_11" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_11" id="SequenceFlow_11" sourceRef="ExclusiveGateway_2" targetRef="ParallelGateway_2"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_2" id="ParallelGateway_2" name="Parallel Gateway 2" incoming="SequenceFlow_11 SequenceFlow_12" outgoing="SequenceFlow_13" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_13" id="SequenceFlow_13" sourceRef="ParallelGateway_2" targetRef="Task_6"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_6" id="Task_6" name="finalize contract" incoming="SequenceFlow_13" outgoing="//@flowElements.84"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_14" id="SequenceFlow_14" sourceRef="_DataObjectReference_8" targetRef="ParallelGateway_3"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_3" id="ParallelGateway_3" name="Parallel Gateway 3" incoming="SequenceFlow_14 SequenceFlow_15" outgoing="SequenceFlow_33" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_33" id="SequenceFlow_33" sourceRef="ParallelGateway_3" targetRef="ExclusiveGateway_3"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_7" id="Task_7" name="bike arrives" incoming="SequenceFlow_16" outgoing="//@flowElements.85"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_17" id="SequenceFlow_17" sourceRef="_DataObjectReference_9" targetRef="Task_8"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_9" id="_DataObjectReference_9" name="Order [bike ready]" incoming="//@flowElements.85" outgoing="SequenceFlow_17">
    <dataState xmi:id="DataState_8" id="DataState_8" name="bike ready"/>
  </flowElements>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_8" id="Task_8" name="check order" incoming="SequenceFlow_17" outgoing="SequenceFlow_18"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_18" id="SequenceFlow_18" sourceRef="Task_8" targetRef="ExclusiveGateway_4"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="ExclusiveGateway_4" id="ExclusiveGateway_4" name="Exclusive Gateway 4" incoming="SequenceFlow_18" outgoing="SequenceFlow_19 SequenceFlow_20" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_19" id="SequenceFlow_19" sourceRef="ExclusiveGateway_4" targetRef="ParallelGateway_4"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_20" id="SequenceFlow_20" sourceRef="ExclusiveGateway_4" targetRef="Task_9"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_9" id="Task_9" name="reorder" incoming="SequenceFlow_20" outgoing="//@flowElements.86"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_34" id="SequenceFlow_34" sourceRef="_DataObjectReference_10" targetRef="ExclusiveGateway_3"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_4" id="ParallelGateway_4" name="Parallel Gateway 4" incoming="SequenceFlow_19" outgoing="SequenceFlow_21 SequenceFlow_22" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_21" id="SequenceFlow_21" sourceRef="ParallelGateway_4" targetRef="Task_10"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_22" id="SequenceFlow_22" sourceRef="ParallelGateway_4" targetRef="Task_11"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_10" id="_DataObjectReference_10" name="Order [reordered]" incoming="//@flowElements.86" outgoing="SequenceFlow_34">
    <dataState xmi:id="DataState_9" id="DataState_9" name="reordered"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_11" id="_DataObjectReference_11" name="Order [accessories ready]" incoming="//@flowElements.82" outgoing="SequenceFlow_24">
    <dataState xmi:id="DataState_10" id="DataState_10" name="accessories ready"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_12" id="_DataObjectReference_12" name="Order [bike ready]" incoming="//@flowElements.81" outgoing="SequenceFlow_23">
    <dataState xmi:id="DataState_11" id="DataState_11" name="bike ready"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_13" id="_DataObjectReference_13" name="Order [closed]" incoming="//@flowElements.87" outgoing="SequenceFlow_32">
    <dataState xmi:id="DataState_12" id="DataState_12" name="closed"/>
  </flowElements>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_6" id="ParallelGateway_6" name="Parallel Gateway 6" incoming="SequenceFlow_27" outgoing="SequenceFlow_26 SequenceFlow_28" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_26" id="SequenceFlow_26" sourceRef="ParallelGateway_6" targetRef="Task_13"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_28" id="SequenceFlow_28" sourceRef="ParallelGateway_6" targetRef="Task_14"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_13" id="Task_13" name="pick up bike" incoming="SequenceFlow_26" outgoing="SequenceFlow_29"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_29" id="SequenceFlow_29" sourceRef="Task_13" targetRef="ParallelGateway_7"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_14" id="Task_14" name="pay" incoming="SequenceFlow_28" outgoing="SequenceFlow_30"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_30" id="SequenceFlow_30" sourceRef="Task_14" targetRef="ParallelGateway_7"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="ParallelGateway_7" id="ParallelGateway_7" name="Parallel Gateway 7" incoming="SequenceFlow_29 SequenceFlow_30" outgoing="SequenceFlow_31" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_31" id="SequenceFlow_31" sourceRef="ParallelGateway_7" targetRef="Task_15"/>
  <flowElements xsi:type="pm:Activity" xmi:id="Task_15" id="Task_15" name="archive" incoming="SequenceFlow_31" outgoing="//@flowElements.87"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_32" id="SequenceFlow_32" sourceRef="_DataObjectReference_13" targetRef="EndEvent_1"/>
  <flowElements xsi:type="pm:EndEvent" xmi:id="EndEvent_1" id="EndEvent_1" incoming="SequenceFlow_32"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_1" sourceRef="//@flowElements.95" targetRef="DataObject_1"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_2" sourceRef="//@flowElements.95" targetRef="_DataObjectReference_3"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_3" sourceRef="//@flowElements.95" targetRef="_DataObjectReference_4"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_3" sourceRef="_DataObjectReference_3" targetRef="//@flowElements.89"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_4" sourceRef="Task_2" targetRef="_DataObjectReference_5"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_2" sourceRef="DataObject_1" targetRef="//@flowElements.91"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataInputAssociation_1" sourceRef="_DataObjectReference_4" targetRef="//@flowElements.93"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_5" sourceRef="Task_4" targetRef="_DataObjectReference_6"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_11" sourceRef="Task_10" targetRef="_DataObjectReference_12"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_10" sourceRef="Task_11" targetRef="_DataObjectReference_11"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_6" sourceRef="Task_5" targetRef="_DataObjectReference_7"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_7" sourceRef="Task_6" targetRef="_DataObjectReference_8"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_8" sourceRef="Task_7" targetRef="_DataObjectReference_9"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_9" sourceRef="Task_9" targetRef="_DataObjectReference_10"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_12" sourceRef="Task_15" targetRef="_DataObjectReference_13"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#89" sourceRef="//@flowElements.89" targetRef="Task_2"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#90" incoming="SequenceFlow_4 //@flowElements.76" outgoing="//@flowElements.88" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#91" sourceRef="//@flowElements.91" targetRef="Task_3"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#92" incoming="SequenceFlow_5 //@flowElements.78" outgoing="//@flowElements.90" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#93" sourceRef="//@flowElements.93" targetRef="Task_4"/>
  <flowElements xsi:type="pm:ParallelGateway" id="join#FlowElement#94" incoming="SequenceFlow_6 //@flowElements.79" outgoing="//@flowElements.92" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#95" sourceRef="Task_1" targetRef="//@flowElements.95"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#96" incoming="//@flowElements.94" outgoing="SequenceFlow_3 //@flowElements.73 //@flowElements.74 //@flowElements.75" gatewayDirection="Diverging"/>
</pm:Process>
