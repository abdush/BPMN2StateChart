<?xml version="1.0" encoding="UTF-8"?>
<pm:Process xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pm="http://BPMN/Simplified" name="process1">
  <flowElements xsi:type="pm:StartEvent" id="_J84mQuneEeOgCMDZjxiKRQ" outgoing="//@flowElements.2"/>
  <flowElements xsi:type="pm:Activity" id="_J84mROneEeOgCMDZjxiKRQ" name="task 1" incoming="//@flowElements.2" outgoing="//@flowElements.4"/>
  <flowElements xsi:type="pm:SequenceFlow" id="_J84mQ-neEeOgCMDZjxiKRQ" sourceRef="//@flowElements.0" targetRef="//@flowElements.1"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#25" incoming="//@flowElements.4" outgoing="//@flowElements.6 //@flowElements.8" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#24" sourceRef="//@flowElements.1" targetRef="//@flowElements.3"/>
  <flowElements xsi:type="pm:Activity" id="_J84mR-neEeOgCMDZjxiKRQ" name="task 2" incoming="//@flowElements.6" outgoing="//@flowElements.10"/>
  <flowElements xsi:type="pm:SequenceFlow" id="_J84mReneEeOgCMDZjxiKRQ" sourceRef="//@flowElements.3" targetRef="//@flowElements.5"/>
  <flowElements xsi:type="pm:Activity" id="_J84mSOneEeOgCMDZjxiKRQ" name="task 3" incoming="//@flowElements.8" outgoing="//@flowElements.11"/>
  <flowElements xsi:type="pm:SequenceFlow" id="_7unF4OouEeO7IP1X9T78Pg" sourceRef="//@flowElements.3" targetRef="//@flowElements.7"/>
  <flowElements xsi:type="pm:ParallelGateway" id="_J84mS-neEeOgCMDZjxiKRQ" incoming="//@flowElements.10 //@flowElements.11" outgoing="//@flowElements.13" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="_J84mSeneEeOgCMDZjxiKRQ" sourceRef="//@flowElements.5" targetRef="//@flowElements.9"/>
  <flowElements xsi:type="pm:SequenceFlow" id="_J84mSuneEeOgCMDZjxiKRQ" sourceRef="//@flowElements.7" targetRef="//@flowElements.9"/>
  <flowElements xsi:type="pm:Activity" id="_7EecYOoxEeO7IP1X9T78Pg" name="task 4" incoming="//@flowElements.13" outgoing="//@flowElements.15"/>
  <flowElements xsi:type="pm:SequenceFlow" id="_J84mTOneEeOgCMDZjxiKRQ" sourceRef="//@flowElements.9" targetRef="//@flowElements.12"/>
  <flowElements xsi:type="pm:ExclusiveGateway" id="_7EecYuoxEeO7IP1X9T78Pg" incoming="//@flowElements.15" outgoing="//@flowElements.17 //@flowElements.19" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="_7EecYeoxEeO7IP1X9T78Pg" sourceRef="//@flowElements.12" targetRef="//@flowElements.14"/>
  <flowElements xsi:type="pm:Activity" id="_7EecZeoxEeO7IP1X9T78Pg" name="task 5" incoming="//@flowElements.17" outgoing="//@flowElements.21"/>
  <flowElements xsi:type="pm:SequenceFlow" id="_7EecY-oxEeO7IP1X9T78Pg" sourceRef="//@flowElements.14" targetRef="//@flowElements.16"/>
  <flowElements xsi:type="pm:Activity" id="_7EecZ-oxEeO7IP1X9T78Pg" name="task 6" incoming="//@flowElements.19" outgoing="//@flowElements.22"/>
  <flowElements xsi:type="pm:SequenceFlow" id="_7EecZOoxEeO7IP1X9T78Pg" sourceRef="//@flowElements.14" targetRef="//@flowElements.18"/>
  <flowElements xsi:type="pm:ExclusiveGateway" id="merge#FlowElement#27" incoming="//@flowElements.21 //@flowElements.22" outgoing="//@flowElements.24" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="_7EecZuoxEeO7IP1X9T78Pg" sourceRef="//@flowElements.16" targetRef="//@flowElements.20"/>
  <flowElements xsi:type="pm:SequenceFlow" id="_7EecaOoxEeO7IP1X9T78Pg" sourceRef="//@flowElements.18" targetRef="//@flowElements.20"/>
  <flowElements xsi:type="pm:Activity" id="_7EecaeoxEeO7IP1X9T78Pg" name="task 7" incoming="//@flowElements.24" outgoing="//@flowElements.26"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#26" sourceRef="//@flowElements.20" targetRef="//@flowElements.23"/>
  <flowElements xsi:type="pm:EndEvent" id="_J84mTeneEeOgCMDZjxiKRQ" incoming="//@flowElements.26"/>
  <flowElements xsi:type="pm:SequenceFlow" id="_7EecauoxEeO7IP1X9T78Pg" sourceRef="//@flowElements.23" targetRef="//@flowElements.25"/>
</pm:Process>
