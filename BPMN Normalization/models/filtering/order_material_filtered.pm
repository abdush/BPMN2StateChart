<?xml version="1.0" encoding="ASCII"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ecore="http://www.eclipse.org/emf/2002/Ecore" xmlns:pm="http://BPMN/Simplified">
  <pm:Process xmi:id="order_material" id="order_material" name="Default Process">
    <flowElements xsi:type="pm:StartEvent" xmi:id="StartEvent_1" id="StartEvent_1" outgoing="/0/@flowElements.19"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_2" id="SequenceFlow_2" sourceRef="DataObject_1" targetRef="_DataObjectReference_3"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_3" id="SequenceFlow_3" sourceRef="_DataObjectReference_3" targetRef="_DataObjectReference_4"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_4" id="SequenceFlow_4" sourceRef="_DataObjectReference_4" targetRef="ExclusiveGateway_1"/>
    <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="ExclusiveGateway_1" id="ExclusiveGateway_1" name="Needs Authorization?" incoming="SequenceFlow_4" outgoing="SequenceFlow_5 SequenceFlow_6" gatewayDirection="Diverging"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_5" id="SequenceFlow_5" name="yes" sourceRef="ExclusiveGateway_1" targetRef="_DataObjectReference_5" guard="yes"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_6" id="SequenceFlow_6" name="no" sourceRef="ExclusiveGateway_1" targetRef="ExclusiveGateway_2" guard="no"/>
    <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="ExclusiveGateway_2" id="ExclusiveGateway_2" name="Merge 1" incoming="SequenceFlow_6 SequenceFlow_7" outgoing="SequenceFlow_8" gatewayDirection="Converging"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_8" id="SequenceFlow_8" sourceRef="ExclusiveGateway_2" targetRef="_DataObjectReference_6"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_9" id="SequenceFlow_9" sourceRef="_DataObjectReference_6" targetRef="_DataObjectReference_7"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_7" id="SequenceFlow_7" sourceRef="_DataObjectReference_5" targetRef="ExclusiveGateway_2"/>
    <flowElements xsi:type="pm:SequenceFlow" xmi:id="SequenceFlow_17" id="SequenceFlow_17" sourceRef="_DataObjectReference_7" targetRef="EndEvent_1"/>
    <flowElements xsi:type="pm:EndEvent" xmi:id="EndEvent_1" id="EndEvent_1" incoming="SequenceFlow_17"/>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="DataObject_1" id="DataObject_1" name="Purchase Request [Not prepared]" incoming="/0/@flowElements.19" outgoing="SequenceFlow_2">
      <dataState xmi:id="DataState_1" id="DataState_1" name="Not prepared"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_3" id="_DataObjectReference_3" name="Purchase Request [Prepared]" incoming="SequenceFlow_2" outgoing="SequenceFlow_3">
      <dataState xmi:id="DataState_3" id="DataState_3" name="Prepared"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_4" id="_DataObjectReference_4" name="Purchase Request [Approved]" incoming="SequenceFlow_3" outgoing="SequenceFlow_4">
      <dataState xmi:id="DataState_5" id="DataState_5" name="Approved"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_5" id="_DataObjectReference_5" name="Purchase Request [Authorized]" incoming="SequenceFlow_5" outgoing="SequenceFlow_7">
      <dataState xmi:id="DataState_7" id="DataState_7" name="Authorized"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_6" id="_DataObjectReference_6" name="Purchase Request [Submitted]" incoming="SequenceFlow_8" outgoing="SequenceFlow_9">
      <dataState xmi:id="DataState_8" id="DataState_8" name="Submitted"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectNode" xmi:id="_DataObjectReference_7" id="_DataObjectReference_7" name="Purchase Request [Ordered]" incoming="SequenceFlow_9" outgoing="SequenceFlow_17">
      <dataState xmi:id="DataState_9" id="DataState_9" name="Ordered"/>
    </flowElements>
    <flowElements xsi:type="pm:ObjectFlow" id="DataOutputAssociation_1" sourceRef="StartEvent_1" targetRef="DataObject_1"/>
  </pm:Process>
  <ecore:EStringToStringMapEntry key="xsi" value="http://www.w3.org/2001/XMLSchema-instance"/>
  <ecore:EStringToStringMapEntry key="" value="http://org.eclipse.bpmn2/default/order_material_process"/>
  <ecore:EStringToStringMapEntry key="bpmn2" value="http://www.omg.org/spec/BPMN/20100524/MODEL"/>
  <ecore:EStringToStringMapEntry key="bpmndi" value="http://www.omg.org/spec/BPMN/20100524/DI"/>
  <ecore:EStringToStringMapEntry key="dc" value="http://www.omg.org/spec/DD/20100524/DC"/>
  <ecore:EStringToStringMapEntry key="di" value="http://www.omg.org/spec/DD/20100524/DI"/>
</xmi:XMI>
