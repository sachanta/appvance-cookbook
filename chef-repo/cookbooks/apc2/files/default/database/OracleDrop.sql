drop table apc.PercentileCache purge;


drop table apc.IterationSummaryData purge;
drop table apc.IterationSummary purge;
drop table apc.MonitoringData purge;
drop table apc.ResourceMonitoring purge;
drop table apc.ServerMonitoring purge;

drop table apc.FailingRequest purge;
drop table apc.RequestPerStep purge;
drop table apc.FailingStep purge;
drop table apc.StepPerTestcaseExecution purge;
drop table apc.TestcaseExecutionLog purge;
drop table apc.FailingTestcaseExecution purge;
drop table apc.TestcaseExecution purge;

drop table apc.TestcaseFailureSummary purge;
drop table apc.ResponseCodeDetail purge;

drop table apc.RequestFailureSummary purge;
drop table apc.RequestDurationDetail purge;
drop table apc.RequestSummary purge;
drop table apc.StepFailureSummary purge;
drop table apc.StepSummary purge;
drop table apc.TestcasePerIterationSummary purge;
drop table apc.LocationPerIterationSummary purge;
drop table apc.NodePerIterationSummary purge;
drop table apc.TestNodePerIterationSummary purge;
drop table apc.IterationPerExecution purge;
drop table apc.TestcaseSummary purge;

drop table apc.SummaryData purge;
drop table apc.TestNodePerExecution purge;
drop table apc.ScenarioExecution purge;

drop table apc.ControllerDefinition purge;
drop table apc.FailureDefinition purge;
drop table apc.GoalDefinition purge;
drop table apc.StepDefinition purge;
drop table apc.RequestDefinition purge;
drop table apc.ServerDefinition purge;
drop table apc.LocationDefinition purge;
drop table apc.TestcaseDefinition purge;
drop table apc.ScenarioDefinition purge;

drop sequence hibernate_sequence ;