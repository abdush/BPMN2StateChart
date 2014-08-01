<?xml version="1.0" encoding="ASCII"?>
<pm:Process xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pm="http://BPMN/Simplified" xmi:id="ID_32136603_1436_1204_0426_056655200001" id="ID_32136603_1436_1204_0426_056655200001" name="patient dermatology">
  <flowElements xsi:type="pm:StartEvent" xmi:id="BP176_BP94" id="BP176_BP94" name="" outgoing="BP176_BP96"/>
  <flowElements xsi:type="pm:Activity" xmi:id="BP176_BP95" id="BP176_BP95" name="make appointment" incoming="BP176_BP96" outgoing="//@flowElements.77"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP96" id="BP176_BP96" name="" sourceRef="BP176_BP94" targetRef="BP176_BP95"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="BP176_BP97" id="BP176_BP97" name="Gateway3" incoming="BP176_BP98 BP176_BP165" outgoing="BP176_BP100" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP98" id="BP176_BP98" name="" sourceRef="DataObject_1" targetRef="BP176_BP97"/>
  <flowElements xsi:type="pm:Activity" xmi:id="BP176_BP99" id="BP176_BP99" name="consult" incoming="BP176_BP100" outgoing="BP176_BP102"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP100" id="BP176_BP100" name="" sourceRef="BP176_BP97" targetRef="BP176_BP99"/>
  <flowElements xsi:type="pm:Activity" xmi:id="BP176_BP101" id="BP176_BP101" name="analyze" incoming="BP176_BP102" outgoing="BP176_BP104"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP102" id="BP176_BP102" name="" sourceRef="BP176_BP99" targetRef="BP176_BP101"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="BP176_BP103" id="BP176_BP103" name="Gateway4" incoming="BP176_BP104" outgoing="BP176_BP106 BP176_BP113" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP104" id="BP176_BP104" name="" sourceRef="BP176_BP101" targetRef="BP176_BP103"/>
  <flowElements xsi:type="pm:Activity" xmi:id="BP176_BP105" id="BP176_BP105" name="take sample" incoming="BP176_BP106" outgoing="//@flowElements.78"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP106" id="BP176_BP106" name="" sourceRef="BP176_BP103" targetRef="BP176_BP105"/>
  <flowElements xsi:type="pm:Activity" xmi:id="BP176_BP107" id="BP176_BP107" name="send sample to lab" incoming="BP176_BP108" outgoing="BP176_BP110"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP108" id="BP176_BP108" name="" sourceRef="_DataObjectReference_4" targetRef="BP176_BP107"/>
  <flowElements xsi:type="pm:Activity" xmi:id="BP176_BP109" id="BP176_BP109" name="receive lab results" incoming="BP176_BP110" outgoing="BP176_BP112"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP110" id="BP176_BP110" name="" sourceRef="BP176_BP107" targetRef="BP176_BP109"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="BP176_BP111" id="BP176_BP111" name="Gateway5" incoming="BP176_BP112 BP176_BP113" outgoing="BP176_BP115" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP112" id="BP176_BP112" name="" sourceRef="BP176_BP109" targetRef="BP176_BP111"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP113" id="BP176_BP113" name="" sourceRef="BP176_BP103" targetRef="BP176_BP111"/>
  <flowElements xsi:type="pm:Activity" xmi:id="BP176_BP114" id="BP176_BP114" name="diagnose" incoming="BP176_BP115" outgoing="//@flowElements.79"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP115" id="BP176_BP115" name="" sourceRef="BP176_BP111" targetRef="BP176_BP114"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="BP176_BP116" id="BP176_BP116" name="Gateway6" incoming="BP176_BP117" outgoing="BP176_BP119 BP176_BP121" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP117" id="BP176_BP117" name="" sourceRef="_DataObjectReference_5" targetRef="BP176_BP116"/>
  <flowElements xsi:type="pm:Activity" xmi:id="BP176_BP118" id="BP176_BP118" name="update patient info" incoming="BP176_BP119" outgoing="BP176_BP123"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP119" id="BP176_BP119" name="" sourceRef="BP176_BP116" targetRef="BP176_BP118"/>
  <flowElements xsi:type="pm:Activity" xmi:id="BP176_BP120" id="BP176_BP120" name="contact patient" incoming="BP176_BP121" outgoing="//@flowElements.80"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP121" id="BP176_BP121" name="" sourceRef="BP176_BP116" targetRef="BP176_BP120"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="BP176_BP122" id="BP176_BP122" name="Gateway7" incoming="BP176_BP123 BP176_BP124" outgoing="BP176_BP126" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP123" id="BP176_BP123" name="" sourceRef="BP176_BP118" targetRef="BP176_BP122"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP124" id="BP176_BP124" name="" sourceRef="_DataObjectReference_6" targetRef="BP176_BP122"/>
  <flowElements xsi:type="pm:Activity" xmi:id="BP176_BP125" id="BP176_BP125" name="check anesctization" incoming="BP176_BP126" outgoing="BP176_BP128"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP126" id="BP176_BP126" name="" sourceRef="BP176_BP122" targetRef="BP176_BP125"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="BP176_BP127" id="BP176_BP127" name="Gateway8" incoming="BP176_BP128" outgoing="BP176_BP130 BP176_BP133" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP128" id="BP176_BP128" name="" sourceRef="BP176_BP125" targetRef="BP176_BP127"/>
  <flowElements xsi:type="pm:Activity" xmi:id="BP176_BP129" id="BP176_BP129" name="do preoperative screening" incoming="BP176_BP130" outgoing="BP176_BP132"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP130" id="BP176_BP130" name="" sourceRef="BP176_BP127" targetRef="BP176_BP129"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="BP176_BP131" id="BP176_BP131" name="Gateway9" incoming="BP176_BP132 BP176_BP133" outgoing="BP176_BP135" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP132" id="BP176_BP132" name="" sourceRef="BP176_BP129" targetRef="BP176_BP131"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP133" id="BP176_BP133" name="" sourceRef="BP176_BP127" targetRef="BP176_BP131"/>
  <flowElements xsi:type="pm:Activity" xmi:id="BP176_BP134" id="BP176_BP134" name="treatment" incoming="BP176_BP135" outgoing="//@flowElements.81"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP135" id="BP176_BP135" name="" sourceRef="BP176_BP131" targetRef="BP176_BP134"/>
  <flowElements xsi:type="pm:Activity" xmi:id="BP176_BP136" id="BP176_BP136" name="schedule post treatment checks" incoming="BP176_BP137" outgoing="BP176_BP139"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP137" id="BP176_BP137" name="" sourceRef="_DataObjectReference_7" targetRef="BP176_BP136"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="BP176_BP138" id="BP176_BP138" name="Gateway10" incoming="BP176_BP139" outgoing="BP176_BP141 BP176_BP143" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP139" id="BP176_BP139" name="" sourceRef="BP176_BP136" targetRef="BP176_BP138"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="BP176_BP140" id="BP176_BP140" name="Gateway11" incoming="BP176_BP141" outgoing="BP176_BP145 BP176_BP148" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP141" id="BP176_BP141" name="" sourceRef="BP176_BP138" targetRef="BP176_BP140"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="BP176_BP142" id="BP176_BP142" name="Gateway12" incoming="BP176_BP143" outgoing="BP176_BP150 BP176_BP153" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP143" id="BP176_BP143" name="" sourceRef="BP176_BP138" targetRef="BP176_BP142"/>
  <flowElements xsi:type="pm:Activity" xmi:id="BP176_BP144" id="BP176_BP144" name="wound control" incoming="BP176_BP145" outgoing="BP176_BP147"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP145" id="BP176_BP145" name="" sourceRef="BP176_BP140" targetRef="BP176_BP144"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="BP176_BP146" id="BP176_BP146" name="Gateway13" incoming="BP176_BP147 BP176_BP148" outgoing="BP176_BP155" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP147" id="BP176_BP147" name="" sourceRef="BP176_BP144" targetRef="BP176_BP146"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP148" id="BP176_BP148" name="" sourceRef="BP176_BP140" targetRef="BP176_BP146"/>
  <flowElements xsi:type="pm:Activity" xmi:id="BP176_BP149" id="BP176_BP149" name="remove stitches" incoming="BP176_BP150" outgoing="BP176_BP152"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP150" id="BP176_BP150" name="" sourceRef="BP176_BP142" targetRef="BP176_BP149"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="BP176_BP151" id="BP176_BP151" name="Gateway14" incoming="BP176_BP152 BP176_BP153" outgoing="BP176_BP156" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP152" id="BP176_BP152" name="" sourceRef="BP176_BP149" targetRef="BP176_BP151"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP153" id="BP176_BP153" name="" sourceRef="BP176_BP142" targetRef="BP176_BP151"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="BP176_BP154" id="BP176_BP154" name="Gateway15" incoming="BP176_BP155 BP176_BP156" outgoing="BP176_BP158" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP155" id="BP176_BP155" name="" sourceRef="BP176_BP146" targetRef="BP176_BP154"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP156" id="BP176_BP156" name="" sourceRef="BP176_BP151" targetRef="BP176_BP154"/>
  <flowElements xsi:type="pm:Activity" xmi:id="BP176_BP157" id="BP176_BP157" name="check if long term health check needed" incoming="BP176_BP158" outgoing="BP176_BP160"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP158" id="BP176_BP158" name="" sourceRef="BP176_BP154" targetRef="BP176_BP157"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="BP176_BP159" id="BP176_BP159" name="Gateway16" incoming="BP176_BP160" outgoing="BP176_BP162 BP176_BP164" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP160" id="BP176_BP160" name="" sourceRef="BP176_BP157" targetRef="BP176_BP159"/>
  <flowElements xsi:type="pm:EndEvent" xmi:id="BP176_BP161" id="BP176_BP161" name="" incoming="BP176_BP162"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP162" id="BP176_BP162" name="" sourceRef="BP176_BP159" targetRef="BP176_BP161"/>
  <flowElements xsi:type="pm:Activity" xmi:id="BP176_BP163" id="BP176_BP163" name="schedule long term health check" incoming="BP176_BP164" outgoing="BP176_BP165"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP164" id="BP176_BP164" name="" sourceRef="BP176_BP159" targetRef="BP176_BP163"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="BP176_BP165" id="BP176_BP165" name="" sourceRef="BP176_BP163" targetRef="BP176_BP97"/>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="DataObject_1" id="DataObject_1" name="Patient" incoming="//@flowElements.77" outgoing="BP176_BP98">
    <dataState xmi:id="DataState_1" id="DataState_1" name="new"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_4" id="_DataObjectReference_4" name="Patient" incoming="//@flowElements.78" outgoing="BP176_BP108">
    <dataState xmi:id="DataState_2" id="DataState_2" name="sampled"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_5" id="_DataObjectReference_5" name="Patient" incoming="//@flowElements.79" outgoing="BP176_BP117">
    <dataState xmi:id="DataState_3" id="DataState_3" name="diagnosed"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_6" id="_DataObjectReference_6" name="Patient" incoming="//@flowElements.80" outgoing="BP176_BP124">
    <dataState xmi:id="DataState_4" id="DataState_4" name="contacted"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_7" id="_DataObjectReference_7" name="Patient" incoming="//@flowElements.81" outgoing="BP176_BP137">
    <dataState xmi:id="DataState_5" id="DataState_5" name="treated"/>
  </flowElements>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_2" sourceRef="BP176_BP95" targetRef="DataObject_1"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_3" sourceRef="BP176_BP105" targetRef="_DataObjectReference_4"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_4" sourceRef="BP176_BP114" targetRef="_DataObjectReference_5"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_5" sourceRef="BP176_BP120" targetRef="_DataObjectReference_6"/>
  <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_6" sourceRef="BP176_BP134" targetRef="_DataObjectReference_7"/>
</pm:Process>
