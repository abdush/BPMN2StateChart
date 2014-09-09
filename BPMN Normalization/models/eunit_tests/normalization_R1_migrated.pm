<?xml version="1.0" encoding="ASCII"?>
<pm:Process xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pm="http://BPMN/Simplified" xmi:id="_J84mQeneEeOgCMDZjxiKRQ" id="_J84mQeneEeOgCMDZjxiKRQ" name="process1">
  <flowElements xsi:type="pm:StartEvent" xmi:id="_J84mQuneEeOgCMDZjxiKRQ" id="_J84mQuneEeOgCMDZjxiKRQ" outgoing="_J84mQ-neEeOgCMDZjxiKRQ"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="_J84mQ-neEeOgCMDZjxiKRQ" id="_J84mQ-neEeOgCMDZjxiKRQ" sourceRef="_J84mQuneEeOgCMDZjxiKRQ" targetRef="_J84mROneEeOgCMDZjxiKRQ"/>
  <flowElements xsi:type="pm:Activity" xmi:id="_J84mROneEeOgCMDZjxiKRQ" id="_J84mROneEeOgCMDZjxiKRQ" name="task 1" incoming="_J84mQ-neEeOgCMDZjxiKRQ" outgoing="//@flowElements.23"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="_J84mReneEeOgCMDZjxiKRQ" id="_J84mReneEeOgCMDZjxiKRQ" sourceRef="//@flowElements.24" targetRef="_J84mR-neEeOgCMDZjxiKRQ"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="_7unF4OouEeO7IP1X9T78Pg" id="_7unF4OouEeO7IP1X9T78Pg" sourceRef="//@flowElements.24" targetRef="_J84mSOneEeOgCMDZjxiKRQ"/>
  <flowElements xsi:type="pm:Activity" xmi:id="_J84mR-neEeOgCMDZjxiKRQ" id="_J84mR-neEeOgCMDZjxiKRQ" name="task 2" incoming="_J84mReneEeOgCMDZjxiKRQ" outgoing="_J84mSeneEeOgCMDZjxiKRQ"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="_J84mSeneEeOgCMDZjxiKRQ" id="_J84mSeneEeOgCMDZjxiKRQ" sourceRef="_J84mR-neEeOgCMDZjxiKRQ" targetRef="_J84mS-neEeOgCMDZjxiKRQ"/>
  <flowElements xsi:type="pm:Activity" xmi:id="_J84mSOneEeOgCMDZjxiKRQ" id="_J84mSOneEeOgCMDZjxiKRQ" name="task 3" incoming="_7unF4OouEeO7IP1X9T78Pg" outgoing="_J84mSuneEeOgCMDZjxiKRQ"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="_J84mSuneEeOgCMDZjxiKRQ" id="_J84mSuneEeOgCMDZjxiKRQ" sourceRef="_J84mSOneEeOgCMDZjxiKRQ" targetRef="_J84mS-neEeOgCMDZjxiKRQ"/>
  <flowElements xsi:type="pm:ParallelGateway" xmi:id="_J84mS-neEeOgCMDZjxiKRQ" id="_J84mS-neEeOgCMDZjxiKRQ" incoming="_J84mSeneEeOgCMDZjxiKRQ _J84mSuneEeOgCMDZjxiKRQ" outgoing="_J84mTOneEeOgCMDZjxiKRQ" gatewayDirection="Converging"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="_J84mTOneEeOgCMDZjxiKRQ" id="_J84mTOneEeOgCMDZjxiKRQ" sourceRef="_J84mS-neEeOgCMDZjxiKRQ" targetRef="_7EecYOoxEeO7IP1X9T78Pg"/>
  <flowElements xsi:type="pm:Activity" xmi:id="_7EecYOoxEeO7IP1X9T78Pg" id="_7EecYOoxEeO7IP1X9T78Pg" name="task 4" incoming="_J84mTOneEeOgCMDZjxiKRQ" outgoing="_7EecYeoxEeO7IP1X9T78Pg"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="_7EecYeoxEeO7IP1X9T78Pg" id="_7EecYeoxEeO7IP1X9T78Pg" sourceRef="_7EecYOoxEeO7IP1X9T78Pg" targetRef="_7EecYuoxEeO7IP1X9T78Pg"/>
  <flowElements xsi:type="pm:ExclusiveGateway" xmi:id="_7EecYuoxEeO7IP1X9T78Pg" id="_7EecYuoxEeO7IP1X9T78Pg" incoming="_7EecYeoxEeO7IP1X9T78Pg" outgoing="_7EecY-oxEeO7IP1X9T78Pg _7EecZOoxEeO7IP1X9T78Pg" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:Activity" xmi:id="_7EecZeoxEeO7IP1X9T78Pg" id="_7EecZeoxEeO7IP1X9T78Pg" name="task 5" incoming="_7EecY-oxEeO7IP1X9T78Pg" outgoing="_7EecZuoxEeO7IP1X9T78Pg"/>
  <flowElements xsi:type="pm:Activity" xmi:id="_7EecZ-oxEeO7IP1X9T78Pg" id="_7EecZ-oxEeO7IP1X9T78Pg" name="task 6" incoming="_7EecZOoxEeO7IP1X9T78Pg" outgoing="_7EecaOoxEeO7IP1X9T78Pg"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="_7EecY-oxEeO7IP1X9T78Pg" id="_7EecY-oxEeO7IP1X9T78Pg" sourceRef="_7EecYuoxEeO7IP1X9T78Pg" targetRef="_7EecZeoxEeO7IP1X9T78Pg"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="_7EecZOoxEeO7IP1X9T78Pg" id="_7EecZOoxEeO7IP1X9T78Pg" sourceRef="_7EecYuoxEeO7IP1X9T78Pg" targetRef="_7EecZ-oxEeO7IP1X9T78Pg"/>
  <flowElements xsi:type="pm:Activity" xmi:id="_7EecaeoxEeO7IP1X9T78Pg" id="_7EecaeoxEeO7IP1X9T78Pg" name="task 7" incoming="//@flowElements.25" outgoing="_7EecauoxEeO7IP1X9T78Pg"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="_7EecZuoxEeO7IP1X9T78Pg" id="_7EecZuoxEeO7IP1X9T78Pg" sourceRef="_7EecZeoxEeO7IP1X9T78Pg" targetRef="//@flowElements.26"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="_7EecaOoxEeO7IP1X9T78Pg" id="_7EecaOoxEeO7IP1X9T78Pg" sourceRef="_7EecZ-oxEeO7IP1X9T78Pg" targetRef="//@flowElements.26"/>
  <flowElements xsi:type="pm:EndEvent" xmi:id="_J84mTeneEeOgCMDZjxiKRQ" id="_J84mTeneEeOgCMDZjxiKRQ" incoming="_7EecauoxEeO7IP1X9T78Pg"/>
  <flowElements xsi:type="pm:SequenceFlow" xmi:id="_7EecauoxEeO7IP1X9T78Pg" id="_7EecauoxEeO7IP1X9T78Pg" sourceRef="_7EecaeoxEeO7IP1X9T78Pg" targetRef="_J84mTeneEeOgCMDZjxiKRQ"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#24" sourceRef="_J84mROneEeOgCMDZjxiKRQ" targetRef="//@flowElements.24"/>
  <flowElements xsi:type="pm:ParallelGateway" id="fork#FlowElement#25" name="task 2task 3" incoming="//@flowElements.23" outgoing="_J84mReneEeOgCMDZjxiKRQ _7unF4OouEeO7IP1X9T78Pg" gatewayDirection="Diverging"/>
  <flowElements xsi:type="pm:SequenceFlow" id="sequenceFlow#FlowElement#26" sourceRef="//@flowElements.26" targetRef="_7EecaeoxEeO7IP1X9T78Pg"/>
  <flowElements xsi:type="pm:ExclusiveGateway" id="merge#FlowElement#27" name="task 5task 6" incoming="_7EecZuoxEeO7IP1X9T78Pg _7EecaOoxEeO7IP1X9T78Pg" outgoing="//@flowElements.25" gatewayDirection="Converging"/>
</pm:Process>
