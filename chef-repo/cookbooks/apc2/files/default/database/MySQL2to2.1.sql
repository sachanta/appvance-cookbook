
ALTER TABLE `SummaryData`
	ADD COLUMN `ScenarioExecutionID` BIGINT NULL AFTER `Size95`;

ALTER TABLE `RequestPerStep`
	ADD COLUMN `ResponseCode` INT(10) NOT NULL DEFAULT '200' AFTER `RequestHeaders`;
	
	
-- -----------------------------------------------------
-- Table `apc`.`ResponseCodeDetail`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `apc`.`ResponseCodeDetail` (
  `ResponseCodeDetailId` INT NOT NULL,
  `ResponseCode` INT NOT NULL,
  `RequestSummaryID` INT(10) NULL,
  `SummaryEntryID` INT NOT NULL,
  PRIMARY KEY (`ResponseCodeDetailId`),
  INDEX `fk_ResponsesCodeDetails_RequestSummary1_idx` (`RequestSummaryID` ASC),
  INDEX `fk_ResponsesCodeDetails_SummaryData1_idx` (`SummaryEntryID` ASC),
  CONSTRAINT `fk_ResponsesCodeDetails_RequestSummary1`
    FOREIGN KEY (`RequestSummaryID`)
    REFERENCES `apc`.`RequestSummary` (`RequestSummaryID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_ResponsesCodeDetails_SummaryData1`
    FOREIGN KEY (`SummaryEntryID`)
    REFERENCES `apc`.`SummaryData` (`SummaryEntryID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `apc`.`RequestDurationDetail`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `apc`.`RequestDurationDetail` (
  `RequestDurationId` INT NOT NULL AUTO_INCREMENT,
  `SummaryEntryID` INT NOT NULL,
  `DurationDetail` VARCHAR(45) NOT NULL,
  `RequestSummaryID` INT(10) NOT NULL,
  PRIMARY KEY (`RequestDurationId`),
  INDEX `fk_RequestDuration_SummaryData1_idx` (`SummaryEntryID` ASC),
  INDEX `fk_RequestDurationDetail_RequestSummary1_idx` (`RequestSummaryID` ASC),
  CONSTRAINT `fk_RequestDuration_SummaryData1`
    FOREIGN KEY (`SummaryEntryID`)
    REFERENCES `apc`.`SummaryData` (`SummaryEntryID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_RequestDurationDetail_RequestSummary1`
    FOREIGN KEY (`RequestSummaryID`)
    REFERENCES `apc`.`RequestSummary` (`RequestSummaryID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


ALTER TABLE `TestcaseExecution`
	DROP FOREIGN KEY `fk_transactions_executions1`;
	
ALTER TABLE `TestNodePerExecution`
	DROP FOREIGN KEY `executions_testnodesperexecution_fk`;

ALTER TABLE `IterationPerExecution`
	DROP FOREIGN KEY `executions_iterations_fk`;




ALTER TABLE `TestNodePerIterationSummary`
	DROP FOREIGN KEY `fk_TestNodePerIterationSummary_TestNodePerExecution1`,
	DROP FOREIGN KEY `fk_TestNodePerIterationSummary_TestcasePerIterationSummary1`,
	DROP FOREIGN KEY `fk_TestNodePerIterationSummary_IterationPerExecution1`;
ALTER TABLE `TestNodePerExecution`
	DROP FOREIGN KEY `fk_TestNodePerExecution_LocationDefinition1`;
ALTER TABLE `TestcasePerIterationSummary`
	DROP FOREIGN KEY `fk_TestcasePerIterationSummary_IterationPerExecution1`,
	DROP FOREIGN KEY `fk_TestcasePerIterationSummary_TestcaseSummary1`;
	
ALTER TABLE `TestcaseFailureSummary`
	DROP FOREIGN KEY `fk_TestcaseFailureSummary_TestcasePerIterationSummary1`,
	DROP FOREIGN KEY `fk_TestcaseFailureSummary_FailureDefinition1`,
	DROP FOREIGN KEY `fk_TestcaseFailureSummary_SummaryData1`;
	
ALTER TABLE `TestcaseExecutionLog`
	DROP FOREIGN KEY `fk_TransactionLogs_Transactions1`;
	

	

ALTER TABLE `RequestPerStep`
	DROP FOREIGN KEY `fk_Requests_RequestDefinition1`;
	
ALTER TABLE `NodePerIterationSummary`
	DROP FOREIGN KEY `fk_LocationPerIterationSummary_IterationPerExecution10`,
	DROP FOREIGN KEY `fk_LocationPerIterationSummary_TestcasePerIterationSummary10`,
	DROP FOREIGN KEY `fk_NodePerIterationSummary_TestNodePerExecution1`;
	
	
	
ALTER TABLE `FailingRequest`
	DROP FOREIGN KEY `fk_FailingStep_FailureDefinition10`,
	DROP FOREIGN KEY `fk_FailingRequest_RequestPerStep1`;


ALTER TABLE `LocationPerIterationSummary`
	DROP FOREIGN KEY `fk_LocationPerIterationSummary_LocationDefinition1`,
	DROP FOREIGN KEY `fk_LocationPerIterationSummary_IterationPerExecution1`,
	DROP FOREIGN KEY `fk_LocationPerIterationSummary_TestcasePerIterationSummary1`;

