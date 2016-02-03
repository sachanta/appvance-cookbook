

CREATE TABLE appvance.Transactions (
                TransactionID  INT  NOT NULL primary  key GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
                Duration INT NOT NULL  ,
                Offset INT NOT NULL  ,
                Success  SMALLINT NOT NULL,
                SequenceID  INT  NOT NULL,
                NodeID INT NOT NULL,
                ErrLog CLOB(65535),
                OutputLog CLOB(65535),
                ExecutionID BIGINT NOT NULL ,
                Timestamp BIGINT NOT NULL 
);


CREATE TABLE appvance.StepDefinitions (
                StepDefinitionID INT NOT NULL primary key ,
                PositionInUsecase  SMALLINT    NOT NULL,
                Name VARCHAR(2000) NOT NULL,
                UsecaseID INT NOT NULL
);


CREATE TABLE appvance.Controllers (
                ControllerID INT NOT NULL primary key ,
                Users INT NOT NULL  ,
                ControllerName VARCHAR(200) NOT NULL
);


CREATE TABLE appvance.Nodes (
                NodeID INT NOT NULL primary key ,
                IP VARCHAR(200) NOT NULL,
                Name VARCHAR(200) NOT NULL
);


CREATE TABLE appvance.Goals (
                GoalID INT NOT NULL  primary key,
                GoalName VARCHAR(200) NOT NULL
);


CREATE TABLE appvance.Usecases (
                UsecaseID INT NOT NULL  primary key,
                UsecaseName VARCHAR(2000) NOT NULL
);


CREATE TABLE appvance.Failures (
                FailureID INT NOT NULL primary key ,
                Name VARCHAR(2000) NOT NULL
);


CREATE TABLE appvance.Warnings (
                WarningID INT NOT NULL primary key ,
                Name VARCHAR(2000) NOT NULL
);


CREATE TABLE appvance.Scenarios (
                ScenarioID INT NOT NULL primary key ,
                ScenarioName VARCHAR(200) NOT NULL
);


CREATE TABLE appvance.Executions (
                ExecutionID BIGINT  NOT NULL primary key,
                ScenarioID INT NOT NULL
);

CREATE TABLE appvance.Iterations (
                IterationID INT NOT NULL  primary key ,
                Name VARCHAR(2000) NOT NULL,
                GoalID INT NOT NULL  ,
                ControllerID INT NOT NULL  ,
                Duration INT NOT NULL  ,
                ExecutionID BIGINT  NOT NULL,
                TargetID INT NOT NULL
);


CREATE TABLE appvance.Sequences (
                SequenceID  INT primary key ,
                UsecaseID INT NOT NULL  ,
                UsecasePercentage  DOUBLE PRECISION NOT NULL,
                Users INT NOT NULL  ,
                IterationID INT NOT NULL
);


CREATE TABLE appvance.TestNodesPerExecution (
                TestNodesPerExecutionID  INT NOT NULL primary key GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
                NodeID INT NOT NULL  ,
                ExecutionID BIGINT  NOT NULL,
                ErrLog  CLOB (16M),
                OutputLog CLOB(16M)
);


CREATE TABLE appvance.Steps (
                StepID INT NOT NULL primary key  GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) ,
                PositionInTransaction  SMALLINT    NOT NULL,
                StepDefinitionID INT NOT NULL  ,
                TransactionID  INT  NOT NULL,
                Duration INT NOT NULL
);


CREATE TABLE appvance.FailureTransactions (
                TransactionID  INT NOT NULL primary key ,
                FailureID INT NOT NULL
);


CREATE TABLE appvance.WarningSteps (
                StepID INT NOT NULL primary key ,
                WarningID INT NOT NULL
);


CREATE TABLE appvance.Monitoring (
                MonitoringID INT NOT NULL  primary key  GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
                Type VARCHAR(15) NOT NULL,
                NodeID INT NOT NULL  ,
                IterationID INT NOT NULL
);


CREATE TABLE appvance.Ticks (
                TickID INT NOT NULL primary key GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) ,
                NET DOUBLE PRECISION NOT NULL,
                MonitoringID INT NOT NULL  ,
                MEM DOUBLE PRECISION NOT NULL,
                CPU DOUBLE PRECISION NOT NULL,
                Offset INT NOT NULL
);


CREATE TABLE appvance.StepLogs (
                StepLogID INT NOT NULL primary key GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) ,
                TransactionID INT NOT NULL,
                StepID INT NOT NULL,
                StepLogKey VARCHAR(50) NOT NULL,
                StepLogValue VARCHAR(300) NOT NULL
);

CREATE TABLE appvance.Requests (
                RequestID INT NOT NULL primary key GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) ,
                StepID INT NOT NULL,
                RequestValue CLOB (65535) NOT NULL
);

CREATE TABLE appvance.Responses (
                ResponseID INT NOT NULL primary key GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) ,
                StepID INT NOT NULL,
                ResponseValue CLOB (65535) NOT NULL
);

CREATE  TABLE  appvance.Notes (
                executionID BIGINT NOT NULL,
                reportName VARCHAR(100) NOT NULL ,
                drillDownChartType VARCHAR(100) NOT NULL ,
                dataID VARCHAR(100) NOT NULL ,
                notes VARCHAR(300)
);