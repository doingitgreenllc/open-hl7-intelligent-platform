   -- MySQL Workbench 

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema sample_hl7_data_encounter_dev
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema sample_hl7_data_encounter_dev
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sample_hl7_data_encounter_dev` DEFAULT CHARACTER SET utf8 ;
USE `sample_hl7_data_encounter_dev` ;

-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`admission_adt_event`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`admission_adt_event` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `admission_adt_event` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' admission_adt_event',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_abs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_abs` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `abstract_completion_date_time` VARCHAR(24) NOT NULL DEFAULT ' ' COMMENT ' Abstract Completion Date Time 01520,ABS,7,24,DTM,,,6.5.12.7,,,,',
  `abstracted_by` VARCHAR(250) NOT NULL DEFAULT ' ' COMMENT ' Abstracted By 01521,ABS,8,250,XCN,,,6.5.12.8,,,,',
  `attested_by` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Attested By 01518,ABS,5,250,XCN,,,6.5.12.5,,,,',
  `caesarian_section_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Caesarian Section Indicator 01523,ABS,10,1,ID,,0136,6.5.12.10,,,,',
  `case_category_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Case Category Code 01522,ABS,9,250,CWE,,0423,6.5.12.9,,,,',
  `date_time_of_attestation` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Date Time of Attestation 01517,ABS,4,24,DTM,,,6.5.12.4,,,,',
  `discharge_care_provider` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Discharge Care Provider 01514,ABS,1,250,XCN,,0010,6.5.12.1,,,,',
  `gestation_category_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Gestation Category Code 01524,ABS,11,250,CWE,,0424,6.5.12.11,,,,',
  `gestation_period_-_weeks` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Gestation Period - Weeks 01525,ABS,12,3,NM,,,6.5.12.12,,,,',
  `newborn_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Newborn Code 01526,ABS,13,250,CWE,,0425,6.5.12.13,,,,',
  `severity_of_illness_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Severity of Illness Code 01516,ABS,3,250,CWE,,0421,6.5.12.3,,,,',
  `stillborn_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Stillborn Indicator 01527,ABS,14,1,ID,,0136,6.5.12.14,,,,',
  `transfer_medical_service_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Transfer Medical Service Code 01515,ABS,2,250,CWE,,0069,6.5.12.2,,,,',
  `triage_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Triage Code 01519,ABS,6,250,CWE,,0422,6.5.12.6,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_acc`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_acc` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `accident_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Accident Address 01853,ACC,11,250,XAD,,,6.5.9.11,,,,',
  `accident_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Accident Code 00528,ACC,2,250,CWE,,0050,6.5.9.2,,,,',
  `accident_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Accident Date Time 00527,ACC,1,24,DTM,,,6.5.9.1,,,,',
  `accident_death_indicator` VARCHAR(12) NOT NULL DEFAULT ' ' COMMENT ' Accident Death Indicator 00814,ACC,6,12,ID,,0136,6.5.9.6,,,,',
  `accident_description` VARCHAR(25) NOT NULL DEFAULT ' ' COMMENT ' Accident Description 01503,ACC,8,25,ST,,,6.5.9.8,,,,',
  `accident_job_related_indicator` VARCHAR(1) NOT NULL DEFAULT ' ' COMMENT ' Accident Job Related Indicator 00813,ACC,5,1,ID,,0136,6.5.9.5,,,,',
  `accident_location` VARCHAR(25) NOT NULL DEFAULT ' ' COMMENT ' Accident Location 00529,ACC,3,25,ST,,,6.5.9.3,,,,',
  `auto_accident_state` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Auto Accident State 00812,ACC,4,0,CWE,,0347,6.5.9.4,,,,',
  `brought_in_by` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Brought In By 01504,ACC,9,80,ST,,,6.5.9.9,,,,',
  `entered_by4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Entered By 00224,ACC,7,3220,XCN,,,6.5.9.7,,,,',
  `police_notified_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Police Notified Indicator 01505,ACC,10,1,ID,,0136,6.5.9.10,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_add`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_add` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `addendum_continuation_pointer` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Addendum Continuation Pointer 00066,ADD,1,65536 ST,,,2.14.1.1,,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_adj`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_adj` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `adjustment_action` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Adjustment Action 02013,ADJ,11,4,IS,,0569,16.4.7.11,,,,',
  `adjustment_amount` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Adjustment Amount 02007,ADJ,5,254,CP,,,16.4.7.5,,,,',
  `adjustment_category` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Adjustment Category 02006,ADJ,4,4,IS,,0564,16.4.7.4,,,,',
  `adjustment_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Adjustment Date 02016,ADJ,14,26,DTM,,,16.4.7.14,,,,',
  `adjustment_description` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Adjustment Description 02010,ADJ,8,250,ST,,,16.4.7.8,,,,',
  `adjustment_quantity` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Adjustment Quantity 02008,ADJ,6,222,CQ,,0560,16.4.7.6,,,,',
  `adjustment_reason_pa` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Adjustment Reason PA 02009,ADJ,7,211,CWE,,0565,16.4.7.7,,,,',
  `adjustment_sequence_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Adjustment Sequence Number 02005,ADJ,3,4,SI,,,16.4.7.3,,,,',
  `original_value` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Original Value 02011,ADJ,9,250,NM,,,16.4.7.9,,,,',
  `payer_adjustment_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Payer Adjustment Number 02004,ADJ,2,73,EI,,,16.4.7.2,,,,',
  `provider_adjustment_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Provider Adjustment Number 02003,ADJ,1,73,EI,,,16.4.7.1,,,,',
  `responsible_organization` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Responsible Organization 02017,ADJ,15,183,XON,,,16.4.7.15,,,,',
  `substitute_value` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Substitute Value 02012,ADJ,10,250,NM,,,16.4.7.10,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_aff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_aff` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `professional_organization` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Professional Organization 01444,AFF,2,250,XON,,,15.4.1.2,,,,',
  `professional_organization_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Professional Organization Address 01445,AFF,3,250,XAD,,,15.4.1.3,,,,',
  `set_id_aff` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - AFF 01427,AFF,1,60,SI,,,15.4.1.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_aig`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_aig` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `allow_substitution_code4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Allow Substitution Code 00895,AIG,13,10,IS,,0279,10.6.5.13,,,,',
  `duration4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Duration 00893,AIG,11,20,NM,,,10.6.5.11,,,,',
  `duration_units2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Duration Units 00894,AIG,12,250,CNE,,,10.6.5.12,,,,',
  `filler_status_code2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Filler Status Code 00889,AIG,14,250,CWE,,0278,10.6.5.14,,,,',
  `resource_group2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Resource Group 00899,AIG,5,250,CWE,Y,,10.6.5.5,,,,',
  `resource_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Resource ID 00897,AIG,3,250,CWE,,,10.6.5.3,,,,',
  `resource_quantity` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Resource Quantity 00900,AIG,6,5,NM,,,10.6.5.6,,,,',
  `resource_quantity_units` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Resource Quantity Units 00901,AIG,7,250,CNE,,,10.6.5.7,,,,',
  `resource_type2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Resource Type 00898,AIG,4,250,CWE,,,10.6.5.4,,,,',
  `segment_action_code4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Segment Action Code 00763,AIG,2,3,ID,,0206,10.6.5.2,,,,',
  `set_id_aig` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - AIG 00896,AIG,1,4,SI,,,10.6.5.1,,,,',
  `start_date_time2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Start Date Time 01202,AIG,8,24,DTM,,,10.6.5.8,,,,',
  `start_date_time_offset4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Start Date Time Offset 00891,AIG,9,20,NM,,,10.6.5.9,,,,',
  `start_date_time_offset_units1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Start Date Time Offset Units 00892,AIG,10,250,CNE,,,10.6.5.10,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_ail`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_ail` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `allow_substitution_code2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Allow Substitution Code 00895,AIL,11,10,IS,,0279,10.6.6.11,,,,',
  `duration1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Duration 00893,AIL,9,20,NM,,,10.6.6.9,,,,',
  `duration_units3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Duration Units 00894,AIL,10,250,CNE,,,10.6.6.10,,,,',
  `filler_status_code1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Filler Status Code 00889,AIL,12,250,CWE,,0278,10.6.6.12,,,,',
  `location_group` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Location Group 00905,AIL,5,250,CWE,,,10.6.6.5,,,,',
  `location_resource_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Location Resource ID 00903,AIL,3,80,PL,Y,,10.6.6.3,,,,',
  `location_type_ail` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Location Type - AIL 00904,AIL,4,250,CWE,,0305,10.6.6.4,,,,',
  `segment_action_code3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Segment Action Code 00763,AIL,2,3,ID,,0206,10.6.6.2,,,,',
  `set_id_ail` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - AIL 00902,AIL,1,4,SI,,,10.6.6.1,,,,',
  `start_date_time1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Start Date Time 01202,AIL,6,24,DTM,,,10.6.6.6,,,,',
  `start_date_time_offset1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Start Date Time Offset 00891,AIL,7,20,NM,,,10.6.6.7,,,,',
  `start_date_time_offset_units3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Start Date Time Offset Units 00892,AIL,8,250,CNE,,,10.6.6.8,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_aip`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_aip` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `allow_substitution_code1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Allow Substitution Code 00895,AIP,11,10,IS,,0279,10.6.7.11,,,,',
  `duration3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Duration 00893,AIP,9,20,NM,,,10.6.7.9,,,,',
  `duration_units4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Duration Units 00894,AIP,10,250,CNE,,,10.6.7.10,,,,',
  `filler_status_code5` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Filler Status Code 00889,AIP,12,250,CWE,,0278,10.6.7.12,,,,',
  `personnel_resource_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Personnel Resource ID 00913,AIP,3,250,XCN,Y,,10.6.7.3,,,,',
  `resource_group1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Resource Group 00899,AIP,5,250,CWE,,,10.6.7.5,,,,',
  `resource_type1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Resource Type 00907,AIP,4,250,CWE,,0182,10.6.7.4,,,,',
  `segment_action_code2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Segment Action Code 00763,AIP,2,3,ID,,0206,10.6.7.2,,,,',
  `set_id_aip` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - AIP 00906,AIP,1,4,SI,,,10.6.7.1,,,,',
  `start_date_time3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Start Date Time 01202,AIP,6,24,DTM,,,10.6.7.6,,,,',
  `start_date_time_offset3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Start Date Time Offset 00891,AIP,7,20,NM,,,10.6.7.7,,,,',
  `start_date_time_offset_units2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Start Date Time Offset Units 00892,AIP,8,250,CNE,,,10.6.7.8,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_ais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_ais` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `allow_substitution_code3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Allow Substitution Code 00895,AIS,9,10,IS,,0279,10.6.4.9,,,,',
  `duration2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Duration 00893,AIS,7,20,NM,,,10.6.4.7,,,,',
  `duration_units1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Duration Units 00894,AIS,8,250,CNE,,,10.6.4.8,,,,',
  `filler_status_code4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Filler Status Code 00889,AIS,10,250,CWE,,0278,10.6.4.10,,,,',
  `filler_supplemental_service_information2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Filler Supplemental Service Information 01475,AIS,12,705,CWE,Y,0411,10.6.4.12,,,,',
  `placer_supplemental_service_information1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Placer Supplemental Service Information 01474,AIS,11,705,CWE,Y,0411,10.6.4.11,,,,',
  `segment_action_code5` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Segment Action Code 00763,AIS,2,3,ID,,0206,10.6.4.2,,,,',
  `set_id_ais` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - AIS 00890,AIS,1,4,SI,,,10.6.4.1,,,,',
  `start_date_time4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Start Date Time 01202,AIS,4,24,DTM,,,10.6.4.4,,,,',
  `start_date_time_offset2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Start Date Time Offset 00891,AIS,5,20,NM,,,10.6.4.5,,,,',
  `start_date_time_offset_units4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Start Date Time Offset Units 00892,AIS,6,250,CNE,,,10.6.4.6,,,,',
  `universal_service_identifier2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Universal Service Identifier 00238,AIS,3,705,CWE,,,10.6.4.3,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_al1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_al1` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `allergen_code_mnemonic_description2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Allergen Code Mnemonic Description 00205,AL1,3,705,CWE,,,3.4.6.3,,,,',
  `allergen_type_code1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Allergen Type Code 00204,AL1,2,705,CWE,,0127,3.4.6.2,,,,',
  `allergy_reaction_code2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Allergy Reaction Code 00207,AL1,5,15,ST,Y,,3.4.6.5,,,,',
  `allergy_severity_code4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Allergy Severity Code 00206,AL1,4,705,CWE,,0128,3.4.6.4,,,,',
  `identification_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Identification Date 00208,AL1,6,0,DT,,,3.4.6.6,,,,',
  `set_id_al1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - AL1 00203,AL1,1,4,SI,,,3.4.6.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_apr`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_apr` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `filler_override_criteria` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Filler Override Criteria 00912,APR,5,80,SCV,Y,,10.6.8.5,,,,',
  `location_selection_criteria` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Location Selection Criteria 00910,APR,3,80,SCV,Y,0294,10.6.8.3,,,,',
  `resource_selection_criteria` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Resource Selection Criteria 00909,APR,2,80,SCV,Y,0294,10.6.8.2,,,,',
  `slot_spacing_criteria` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Slot Spacing Criteria 00911,APR,4,5,NM,,,10.6.8.4,,,,',
  `time_selection_criteria` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Time Selection Criteria 00908,APR,1,80,SCV,Y,0294,10.6.8.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_arq`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_arq` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `appointment_duration2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Appointment Duration 00868,ARQ,9,0,NM,,,10.6.1.9,,,,',
  `appointment_duration_units1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Appointment Duration Units 00869,ARQ,10,0,CNE,,,10.6.1.10,,,,',
  `appointment_reason1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Appointment Reason 00866,ARQ,7,250,CWE,,0276,10.6.1.7,,,,',
  `appointment_type2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Appointment Type 00867,ARQ,8,250,CWE,,0277,10.6.1.8,,,,',
  `entered_by_location2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Entered By Location 00880,ARQ,21,80,PL,,,10.6.1.21,,,,',
  `entered_by_person1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Entered By Person 00878,ARQ,19,250,XCN,Y,,10.6.1.19,,,,',
  `entered_by_phone_number2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Entered By Phone Number 00879,ARQ,20,250,XTN,Y,,10.6.1.20,,,,',
  `filler_appointment_id1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Filler Appointment ID 00861,ARQ,2,75,EI,,,10.6.1.2,,,,',
  `filler_order_number2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Filler Order Number 00217,ARQ,25,427,EI,Y,,10.6.1.25,,,,',
  `occurrence_number1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Occurrence Number 00862,ARQ,3,5,NM,,,10.6.1.3,,,,',
  `parent_filler_appointment_id1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Parent Filler Appointment ID 00882,ARQ,23,75,EI,,,10.6.1.23,,,,',
  `parent_placer_appointment_id3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Parent Placer Appointment ID 00881,ARQ,22,75,EI,,,10.6.1.22,,,,',
  `placer_appointment_id1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Placer Appointment ID 00860,ARQ,1,75,EI,,,10.6.1.1,,,,',
  `placer_contact_address2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Placer Contact Address 00876,ARQ,17,250,XAD,Y,,10.6.1.17,,,,',
  `placer_contact_location1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Placer Contact Location 00877,ARQ,18,80,PL,,,10.6.1.18,,,,',
  `placer_contact_person1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Placer Contact Person 00874,ARQ,15,250,XCN,Y,,10.6.1.15,,,,',
  `placer_contact_phone_number2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Placer Contact Phone Number 00875,ARQ,16,250,XTN,Y,,10.6.1.16,,,,',
  `placer_group_number2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Placer Group Number 00218,ARQ,4,22,EI,,,10.6.1.4,,,,',
  `placer_order_number7` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Placer Order Number 00216,ARQ,24,427,EI,Y,,10.6.1.24,,,,',
  `priority_arq` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Priority-ARQ 00871,ARQ,12,5,ST,,,10.6.1.12,,,,',
  `repeating_interval` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Repeating Interval 00872,ARQ,13,100,RI,,,10.6.1.13,,,,',
  `repeating_interval_duration` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Repeating Interval Duration 00873,ARQ,14,5,ST,,,10.6.1.14,,,,',
  `request_event_reason` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Request Event Reason 00865,ARQ,6,250,CWE,,,10.6.1.6,,,,',
  `requested_start_date_time_range` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Requested Start Date Time Range 00870,ARQ,11,49,DR,Y,,10.6.1.11,,,,',
  `schedule_id1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Schedule ID 00864,ARQ,5,250,CWE,,,10.6.1.5,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_arv`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_arv` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `access_restriction_action_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Access Restriction Action Code 02144,ARV,2,705,CNE,,0206,3.4.13.2,,,,',
  `access_restriction_date_range` VARCHAR(49) NOT NULL DEFAULT ' ' COMMENT ' Access Restriction Date Range 02148,ARV,6,49,DR,,,3.4.13.6,,,,',
  `access_restriction_reason` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Access Restriction Reason 02146,ARV,4,705,CWE,Y,0719,3.4.13.4,,,,',
  `access_restriction_value` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Access Restriction Value 02145,ARV,3,705,CWE,,0717,3.4.13.3,,,,',
  `set_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID 02143,ARV,1,4,SI,,,3.4.13.1,,,,',
  `special_access_restriction_instructions` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Special Access Restriction Instructions 02147,ARV,5,250,ST,Y,,3.4.13.5,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_aut`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_aut` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `authorization_effective_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Authorization Effective Date 01149,AUT,4,24,DTM,,,11.6.2.4,,,,',
  `authorization_expiration_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Authorization Expiration Date 01150,AUT,5,24,DTM,,,11.6.2.5,,,,',
  `authorization_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Authorization Identifier 01151,AUT,6,30,EI,,,11.6.2.6,,,,',
  `authorized_number_of_treatments` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Authorized Number of Treatments 01154,AUT,9,2,NM,,,11.6.2.9,,,,',
  `process_date1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Process Date 01145,AUT,10,24,DTM,,,11.6.2.10,,,,',
  `reimbursement_limit` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Reimbursement Limit 01152,AUT,7,25,CP,,,11.6.2.7,,,,',
  `requested_number_of_treatments` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Requested Number of Treatments 01153,AUT,8,2,NM,,,11.6.2.8,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_bhs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_bhs` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `batch_comment2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Batch Comment 00090,BHS,10,80,ST,,,2.14.2.10,,,,',
  `batch_control_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Batch Control ID 00091,BHS,11,20,ST,,,2.14.2.11,,,,',
  `batch_creation_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Batch Creation Date Time 00087,BHS,7,24,DTM,,,2.14.2.7,,,,',
  `batch_encoding_characters` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Batch Encoding Characters 00082,BHS,2,4,ST,,,2.14.2.2,,,,',
  `batch_field_separator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Batch Field Separator 00081,BHS,1,1,ST,,,2.14.2.1,,,,',
  `batch_name_id_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Batch Name ID Type 00089,BHS,9,20,ST,,,2.14.2.9,,,,',
  `batch_receiving_application` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Batch Receiving Application 00085,BHS,5,227,HD,,,2.14.2.5,,,,',
  `batch_receiving_facility` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Batch Receiving Facility 00086,BHS,6,227,HD,,,2.14.2.6,,,,',
  `batch_receiving_network_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Batch Receiving Network Address 02272,BHS,14,227,HD,,,2.14.2.14,,,,',
  `batch_security` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Batch Security 00088,BHS,8,40,ST,,,2.14.2.8,,,,',
  `batch_sending_application` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Batch Sending Application 00083,BHS,3,227,HD,,,2.14.2.3,,,,',
  `batch_sending_facility` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Batch Sending Facility 00084,BHS,4,227,HD,,,2.14.2.4,,,,',
  `batch_sending_network_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Batch Sending Network Address 02271,BHS,13,227,HD,,,2.14.2.13,,,,',
  `reference_batch_control_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Reference Batch Control ID 00092,BHS,12,20,ST,,,2.14.2.12,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_blg`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_blg` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `account_id` VARCHAR(100) NOT NULL DEFAULT ' ' COMMENT ' Account ID 00236,BLG,3,100,CX,,,4.5.2.3,,,,',
  `charge_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Charge Type 00235,BLG,2,50,ID,,0122,4.5.2.2,,,,',
  `charge_type_reason` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Charge Type Reason 01645,BLG,4,60,CWE,,0475,4.5.2.4,,,,',
  `when_to_charge` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' When to Charge 00234,BLG,1,40,CCD,,0100,4.5.2.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_bpo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_bpo` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `bp_processing_requirements` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Processing Requirements 01702,BPO,3,250,CWE,Y,0508,4.21.1.3,,,,',
  `bp_amount1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Amount 01704,BPO,5,5,NM,,,4.21.1.5,,,,',
  `bp_indication_for_use` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Indication for Use 01712,BPO,13,250,CWE,Y,0509,4.21.1.13,,,,',
  `bp_informed_consent_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Informed Consent Indicator 01713,BPO,14,1,ID,,0136,4.21.1.14,,,,',
  `bp_intended_dispense_from_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Intended Dispense From Address 01708,BPO,9,250,XAD,,,4.21.1.9,,,,',
  `bp_intended_dispense_from_location` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Intended Dispense From Location 01707,BPO,8,80,PL,,,4.21.1.8,,,,',
  `bp_intended_use_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Intended Use Date Time 01706,BPO,7,24,DTM,,,4.21.1.7,,,,',
  `bp_quantity3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Quantity 01703,BPO,4,5,NM,,,4.21.1.4,,,,',
  `bp_requested_dispense_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Requested Dispense Date Time 01709,BPO,10,24,DTM,,,4.21.1.10,,,,',
  `bp_requested_dispense_to_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Requested Dispense To Address 01711,BPO,12,250,XAD,,,4.21.1.12,,,,',
  `bp_requested_dispense_to_location` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Requested Dispense To Location 01710,BPO,11,80,PL,,,4.21.1.11,,,,',
  `bp_units3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Units 01705,BPO,6,250,CWE,,9999,4.21.1.6,,,,',
  `bp_universal_service_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Universal Service Identifier 01701,BPO,2,250,CWE,,9999,4.21.1.2,,,,',
  `set_id_bpo` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - BPO 01700,BPO,1,4,SI,,,4.21.1.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_bpx`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_bpx` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `bc_component1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BC Component 01719,BPX,6,250,CNE,,9999,4.21.2.6,,,,',
  `bc_donation_id2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BC Donation ID 01718,BPX,5,22,EI,,,4.21.2.5,,,,',
  `bc_special_testing` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BC Special Testing 01725,BPX,12,250,CNE,Y,9999,4.21.2.12,,,,',
  `bp_actual_dispensed_to_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Actual Dispensed To Address 01732,BPX,19,250,XAD,,,4.21.2.19,,,,',
  `bp_actual_dispensed_to_location` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Actual Dispensed To Location 01731,BPX,18,80,PL,,,4.21.2.18,,,,',
  `bp_amount3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Amount 01728,BPX,15,5,NM,,,4.21.2.15,,,,',
  `bp_blood_group` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Blood Group 01724,BPX,11,250,CNE,,9999,4.21.2.11,,,,',
  `bp_date_time_of_status1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Date Time of Status 01717,BPX,4,24,DTM,,,4.21.2.4,,,,',
  `bp_dispense_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Dispense Status 01715,BPX,2,250,CWE,,0510,4.21.2.2,,,,',
  `bp_dispensed_to_receiver` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Dispensed to Receiver 01733,BPX,20,250,XCN,,,4.21.2.20,,,,',
  `bp_dispensing_individual` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Dispensing Individual 01734,BPX,21,250,XCN,,,4.21.2.21,,,,',
  `bp_expiration_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Expiration Date Time 01726,BPX,13,24,DTM,,,4.21.2.13,,,,',
  `bp_quantity1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Quantity 01727,BPX,14,5,NM,,,4.21.2.14,,,,',
  `bp_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Status 01716,BPX,3,1,ID,,0511,4.21.2.3,,,,',
  `bp_unique_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Unique ID 01730,BPX,17,22,EI,,,4.21.2.17,,,,',
  `bp_units1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Units 01729,BPX,16,250,CWE,,9999,4.21.2.16,,,,',
  `cp_commercial_product2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' CP Commercial Product 01721,BPX,8,250,CWE,,0512,4.21.2.8,,,,',
  `cp_lot_number1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' CP Lot Number 01723,BPX,10,22,EI,,,4.21.2.10,,,,',
  `cp_manufacturer2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' CP Manufacturer 01722,BPX,9,250,XON,,,4.21.2.9,,,,',
  `set_id_bpx` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - BPX 01714,BPX,1,4,SI,,,4.21.2.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_bts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_bts` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `batch_comment1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Batch Comment 00090,BTS,2,80,ST,,,2.14.3.2,,,,',
  `batch_message_count` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Batch Message Count 00093,BTS,1,10,ST,,,2.14.3.1,,,,',
  `batch_totals` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Batch Totals 00095,BTS,3,100,NM,Y,,2.14.3.3,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_btx`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_btx` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `bc_blood_group` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BC Blood Group 01738,BTX,4,250,CNE,,9999,4.21.3.4,,,,',
  `bc_component2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BC Component 01737,BTX,3,250,CNE,,9999,4.21.3.3,,,,',
  `bc_donation_id1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BC Donation ID 01736,BTX,2,22,EI,,,4.21.3.2,,,,',
  `bp_adverse_reaction_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Adverse Reaction Type 01752,BTX,18,250,CWE,Y,0514,4.21.3.18,,,,',
  `bp_amount2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Amount 01743,BTX,9,5,NM,,,4.21.3.9,,,,',
  `bp_date_time_of_status2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Date Time of Status 01747,BTX,13,24,DTM,,,4.21.3.13,,,,',
  `bp_message_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Message Status 01746,BTX,12,1,ID,,0511,4.21.3.12,,,,',
  `bp_quantity2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Quantity 01742,BTX,8,5,NM,,,4.21.3.8,,,,',
  `bp_transfusion_administrator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Transfusion Administrator 01748,BTX,14,250,XCN,,,4.21.3.14,,,,',
  `bp_transfusion_end_date_time_of_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Transfusion End Date Time of Status 01751,BTX,17,24,DTM,,,4.21.3.17,,,,',
  `bp_transfusion_interrupted_reason` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Transfusion Interrupted Reason 01753,BTX,19,250,CWE,,0515,4.21.3.19,,,,',
  `bp_transfusion_start_date_time_of_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Transfusion Start Date Time of Status 01750,BTX,16,24,DTM,,,4.21.3.16,,,,',
  `bp_transfusion_verifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Transfusion Verifier 01749,BTX,15,250,XCN,,,4.21.3.15,,,,',
  `bp_transfusion_disposition_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Transfusion Disposition Status 01745,BTX,11,250,CWE,,0513,4.21.3.11,,,,',
  `bp_units2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' BP Units 01744,BTX,10,250,CWE,,9999,4.21.3.10,,,,',
  `cp_commercial_product1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' CP Commercial Product 01739,BTX,5,250,CWE,,0512,4.21.3.5,,,,',
  `cp_lot_number2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' CP Lot Number 01741,BTX,7,22,EI,,,4.21.3.7,,,,',
  `cp_manufacturer1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' CP Manufacturer 01740,BTX,6,250,XON,,,4.21.3.6,,,,',
  `set_id_btx` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - BTX 01735,BTX,1,4,SI,,,4.21.3.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_cdm`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_cdm` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `active_inactive_flag1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Active Inactive Flag 00675,CDM,8,1,ID,,0183,8.10.2.8,,,,',
  `charge_code_alias` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Charge Code Alias 00983,CDM,2,250,CWE,Y,,8.10.2.2,,,,',
  `charge_description_long` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Charge Description Long 00985,CDM,4,250,ST,,,8.10.2.4,,,,',
  `charge_description_short` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Charge Description Short 00984,CDM,3,20,ST,,,8.10.2.3,,,,',
  `contract_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Contract Number 00992,CDM,11,250,CX,Y,,8.10.2.11,,,,',
  `contract_organization` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Contract Organization 00993,CDM,12,250,XON,Y,,8.10.2.12,,,,',
  `description_override_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Description Override Indicator 00986,CDM,5,1,IS,,0268,8.10.2.5,,,,',
  `exploding_charges` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Exploding Charges 00987,CDM,6,250,CWE,Y,0132,8.10.2.6,,,,',
  `inventory_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inventory Number 00990,CDM,9,250,CWE,Y,0463,8.10.2.9,,,,',
  `primary_key_value_cdm1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Primary Key Value - CDM 01306,CDM,1,250,CWE,,0132,8.10.2.1,,,,',
  `procedure_code2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Procedure Code 00393,CDM,7,705,CNE,Y,0088,8.10.2.7,,,,',
  `resource_load` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Resource Load 00991,CDM,10,12,NM,,,8.10.2.10,,,,',
  `room_fee_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Room Fee Indicator 00994,CDM,13,1,ID,,0136,8.10.2.13,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_cer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_cer` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `activation_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Activation Date 01878,CER,25,24,DTM,,,15.4.2.25,,,,',
  `authority_key_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Authority Key Identifier 01870,CER,16,250,CWE,,,15.4.2.16,,,,',
  `basic_constraint` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Basic Constraint 01871,CER,17,250,ID,,0136,15.4.2.17,,,,',
  `certificate_domain` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Certificate Domain 01866,CER,11,250,CWE,,,15.4.2.11,,,,',
  `certificate_status_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Certificate Status Code 01884,CER,31,250,CWE,,0536,15.4.2.31,,,,',
  `certificate_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Certificate Type 01865,CER,10,250,CWE,,,15.4.2.10,,,,',
  `crl_distribution_point` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' CRL Distribution Point 01872,CER,18,250,CWE,Y,,15.4.2.18,,,,',
  `expiration_date2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Expiration Date 01880,CER,27,24,DTM,,,15.4.2.27,,,,',
  `granting_authority` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Granting Authority 01859,CER,4,250,XON,,,15.4.2.4,,,,',
  `granting_country` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Granting Country 01862,CER,7,3,ID,,0399,15.4.2.7,,,,',
  `granting_county_parish` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Granting County Parish 01864,CER,9,250,CWE,,0289,15.4.2.9,,,,',
  `granting_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Granting Date 01876,CER,23,24,DTM,,,15.4.2.23,,,,',
  `granting_state_province` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Granting State Province 01863,CER,8,250,CWE,,0347,15.4.2.8,,,,',
  `inactivation_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inactivation Date 01879,CER,26,24,DTM,,,15.4.2.26,,,,',
  `issuing_authority` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Issuing Authority 01860,CER,5,250,XCN,,,15.4.2.5,,,,',
  `issuing_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Issuing Date 01877,CER,24,24,DTM,,,15.4.2.24,,,,',
  `jurisdiction_breadth` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Jurisdiction Breadth 01895,CER,22,250,CWE,Y,0547,15.4.2.22,,,,',
  `jurisdiction_country` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Jurisdiction Country 01875,CER,19,3,ID,,0399,15.4.2.19,,,,',
  `jurisdiction_county_parish` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Jurisdiction County Parish 01874,CER,21,250,CWE,,0289,15.4.2.21,,,,',
  `jurisdiction_state_province` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Jurisdiction State Province 01873,CER,20,250,CWE,,0347,15.4.2.20,,,,',
  `renewal_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Renewal Date 01881,CER,28,24,DTM,,,15.4.2.28,,,,',
  `revocation_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Revocation Date 01882,CER,29,24,DTM,,,15.4.2.29,,,,',
  `revocation_reason_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Revocation Reason Code 01883,CER,30,250,CWE,,,15.4.2.30,,,,',
  `serial_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Serial Number 01857,CER,2,80,ST,,,15.4.2.2,,,,',
  `set_id_cer` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - CER 01856,CER,1,4,SI,,,15.4.2.1,,,,',
  `signature_of_issuing_authority` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Signature of Issuing Authority 01861,CER,6,65536 ED,,,15.4.2.6,,,,,',
  `subject_directory_attribute_extension` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Subject Directory Attribute Extension 01868,CER,14,250,CWE,Y,,15.4.2.14,,,,',
  `subject_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Subject ID 01867,CER,12,250,ID,,,15.4.2.12,,,,',
  `subject_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Subject Name 01907,CER,13,250,ST,,,15.4.2.13,,,,',
  `subject_public_key_info` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Subject Public Key Info 01869,CER,15,250,CWE,,,15.4.2.15,,,,',
  `version` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Version 01858,CER,3,80,ST,,,15.4.2.3,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_cm1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_cm1` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `description_of_study_phase` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Description of Study Phase 01023,CM1,3,300,ST,,,8.11.3.3,,,,',
  `set_id_cm1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - CM1 01021,CM1,1,4,SI,,,8.11.3.1,,,,',
  `study_phase_identifier1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Study Phase Identifier 01022,CM1,2,705,CWE,,,8.11.3.2,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_cm2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_cm2` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `description_of_time_point` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Description of Time Point 01026,CM2,3,300,ST,,,8.11.4.3,,,,',
  `events_scheduled_this_time_point` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Events Scheduled This Time Point 01027,CM2,4,250,CWE,Y,,8.11.4.4,,,,',
  `scheduled_time_point` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Scheduled Time Point 01025,CM2,2,250,CWE,,,8.11.4.2,,,,',
  `set_id_cm2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID- CM2 01024,CM2,1,4,SI,,,8.11.4.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_cns`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_cns` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `ending_notification_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Ending Notification Code 01407,CNS,6,705,CWE,,9999,13.4.8.6,,,,',
  `ending_notification_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Ending Notification Date Time 01405,CNS,4,24,DTM,,,13.4.8.4,,,,',
  `ending_notification_reference_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Ending Notification Reference Number 01403,CNS,2,20,NM,,,13.4.8.2,,,,',
  `starting_notification_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Starting Notification Code 01406,CNS,5,705,CWE,,9999,13.4.8.5,,,,',
  `starting_notification_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Starting Notification Date Time 01404,CNS,3,24,DTM,,,13.4.8.3,,,,',
  `starting_notification_reference_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Starting Notification Reference Number 01402,CNS,1,20,NM,,,13.4.8.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_con`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_con` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `consent_background_information` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Consent Background Information 01782,CON,7,65536 FT,Y,,9.9.4.7,,,,,',
  `consent_bypass_reason` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Consent Bypass Reason 01795,CON,20,705,CWE,,0499,9.9.4.20,,,,',
  `consent_decision_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Consent Decision Date Time 01788,CON,13,24,DTM,,,9.9.4.13,,,,',
  `consent_disclosure_level` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Consent Disclosure Level 01796,CON,21,1,ID,,0500,9.9.4.21,,,,',
  `consent_discussion_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Consent Discussion Date Time 01787,CON,12,24,DTM,,,9.9.4.12,,,,',
  `consent_effective_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Consent Effective Date Time 01789,CON,14,24,DTM,,,9.9.4.14,,,,',
  `consent_end_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Consent End Date Time 01790,CON,15,24,DTM,,,9.9.4.15,,,,',
  `consent_form_id_and_version` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Consent Form ID and Version 01778,CON,3,40,ST,,,9.9.4.3,,,,',
  `consent_form_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Consent Form Number 01779,CON,4,427,EI,,,9.9.4.4,,,,',
  `consent_mode` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Consent Mode 01785,CON,10,2,CNE,,0497,9.9.4.10,,,,',
  `consent_non_disclosure_reason` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Consent Non-disclosure Reason 01797,CON,22,705,CWE,,0501,9.9.4.22,,,,',
  `consent_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Consent Status 01786,CON,11,2,CNE,,0498,9.9.4.11,,,,',
  `consent_text` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Consent Text 01780,CON,5,65536 FT,Y,,9.9.4.5,,,,,',
  `consent_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Consent Type 01777,CON,2,705,CWE,,0496,9.9.4.2,,,,',
  `consenter_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Consenter ID 01909,CON,24,250,XPN,Y,,9.9.4.24,,,,',
  `consenter_imposed_limitations` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Consenter-imposed limitations 01784,CON,9,65536 FT,Y,,9.9.4.9,,,,,',
  `informational_material_supplied_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Informational Material Supplied Indicator 01794,CON,19,1,ID,,0136,9.9.4.19,,,,',
  `language_translated` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Language Translated To 01793,CON,18,250,CWE,,0296,9.9.4.18,,,,',
  `non_subject_consenter_reason` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Non-subject Consenter Reason 01798,CON,23,705,CWE,,0502,9.9.4.23,,,,',
  `relationship_to_subject` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Relationship to Subject 01898,CON,25,100,IS,Y,0548,9.9.4.25,,,,',
  `set_id_con` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - CON 01776,CON,1,4,SI,,,9.9.4.1,,,,',
  `subject_competence_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Subject Competence Indicator 01791,CON,16,1,ID,,0136,9.9.4.16,,,,',
  `subject_specific_consent_background_text` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Subject-specific Consent Background Text 01783,CON,8,65536 FT,Y,,9.9.4.8,,,,,',
  `subject_specific_consent_text` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Subject-specific Consent Text 01781,CON,6,65536 FT,Y,,9.9.4.6,,,,,',
  `translator_assistance_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Translator Assistance Indicator 01792,CON,17,1,ID,,0136,9.9.4.17,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_csp`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_csp` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `date_time_study_phase_began` VARCHAR(24) NOT NULL DEFAULT ' ' COMMENT ' Date time Study Phase Began 01052,CSP,2,24,DTM,,,7.8.2.2,,,,',
  `date_time_study_phase_ended` VARCHAR(24) NOT NULL DEFAULT ' ' COMMENT ' Date time Study Phase Ended 01053,CSP,3,24,DTM,,,7.8.2.3,,,,',
  `study_phase_evaluability` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Study Phase Evaluability 01054,CSP,4,705,CWE,,9999,7.8.2.4,,,,',
  `study_phase_identifier3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Study Phase Identifier 01022,CSP,1,705,CWE,,,7.8.2.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_csr`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_csr` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `alternate_patient_id_csr` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Alternate Patient ID - CSR 01039,CSR,5,1913,CX,,,7.8.1.5,,,,',
  `alternate_study_id1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Alternate Study ID 01036,CSR,2,427,EI,,,7.8.1.2,,,,',
  `date_time_ended_study` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Date time Ended Study 01049,CSR,15,24,DTM,,,7.8.1.15,,,,',
  `date_time_of_patient_study_registration` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Date Time of Patient Study Registration 01040,CSR,6,24,DTM,,,7.8.1.6,,,,',
  `date_time_patient_study_consent_signed` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Date time Patient Study Consent Signed 01043,CSR,9,24,DTM,,,7.8.1.9,,,,',
  `institution_registering_the_patient` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Institution Registering the Patient 01037,CSR,3,705,CWE,,9999,7.8.1.3,,,,',
  `patient_evaluability_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Patient Evaluability Status 01048,CSR,14,705,CWE,,9999,7.8.1.14,,,,',
  `patient_study_eligibility_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Patient Study Eligibility Status 01044,CSR,10,705,CWE,,9999,7.8.1.10,,,,',
  `person_performing_study_registration` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Person Performing Study Registration 01041,CSR,7,3220,XCN,Y,,7.8.1.7,,,,',
  `randomized_study_arm` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Randomized Study Arm 01046,CSR,12,705,CWE,Y,9999,7.8.1.12,,,,',
  `reason_ended_study` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Reason Ended Study 01050,CSR,16,705,CWE,,9999,7.8.1.16,,,,',
  `sponsor_patient_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Sponsor Patient ID 01038,CSR,4,1913,CX,,,7.8.1.4,,,,',
  `sponsor_study_id2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Sponsor Study ID 01011,CSR,1,427,EI,,,7.8.1.1,,,,',
  `stratum_for_study_randomization` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Stratum for Study Randomization 01047,CSR,13,705,CWE,Y,9999,7.8.1.13,,,,',
  `study_authorizing_provider` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Study Authorizing Provider 01042,CSR,8,3220,XCN,Y,,7.8.1.8,,,,',
  `study_randomization_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Study Randomization Date time 01045,CSR,11,24,DTM,Y,,7.8.1.11,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_css`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_css` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `study_quality_control_codes` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Study Quality Control Codes 01057,CSS,3,705,CWE,Y,9999,7.8.3.3,,,,',
  `study_scheduled_patient_time_point` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Study Scheduled Patient Time Point 01056,CSS,2,24,DTM,,,7.8.3.2,,,,',
  `study_scheduled_time_point1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Study Scheduled Time Point 01055,CSS,1,705,CWE,,9999,7.8.3.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_ctd`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_ctd` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `contact_address1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Contact Address 01166,CTD,3,2915,XAD,Y,,11.6.4.3,,,,',
  `contact_communication_information` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Contact Communication Information 01168,CTD,5,250,XTN,Y,,11.6.4.5,,,,',
  `contact_identifiers` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Contact Identifiers 01171,CTD,7,100,PLN,Y,0338,11.6.4.7,,,,',
  `contact_location` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Contact Location 01167,CTD,4,60,PL,,,11.6.4.4,,,,',
  `contact_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Contact Name 01165,CTD,2,250,XPN,Y,,11.6.4.2,,,,',
  `contact_role1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Contact Role 00196,CTD,1,705,CWE,Y,0131,11.6.4.1,,,,',
  `preferred_method_of_contact3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Preferred Method of Contact 00684,CTD,6,705,CWE,,0185,11.6.4.6,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_cti`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_cti` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `sponsor_study_id1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Sponsor Study ID 01011,CTI,1,427,EI,,,7.8.4.1,,,,',
  `study_phase_identifier2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Study Phase Identifier 01022,CTI,2,705,CWE,,,7.8.4.2,,,,',
  `study_scheduled_time_point2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Study Scheduled Time Point 01055,CTI,3,705,CWE,,9999,7.8.4.3,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_db1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_db1` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `disability_end_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Disability End Date 01288,DB1,6,8,DT,,,3.4.11.6,,,,',
  `disability_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Disability Indicator 01286,DB1,4,1,ID,,0136,3.4.11.4,,,,',
  `disability_return_to_work_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Disability Return to Work Date 01289,DB1,7,8,DT,,,3.4.11.7,,,,',
  `disability_start_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Disability Start Date 01287,DB1,5,8,DT,,,3.4.11.5,,,,',
  `disability_unable_to_work_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Disability Unable to Work Date 01290,DB1,8,8,DT,,,3.4.11.8,,,,',
  `disabled_person_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Disabled Person Code 01284,DB1,2,2,IS,,0334,3.4.11.2,,,,',
  `disabled_person_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Disabled Person Identifier 01285,DB1,3,250,CX,Y,,3.4.11.3,,,,',
  `set_id_db1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - DB1 01283,DB1,1,4,SI,,,3.4.11.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_dg1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_dg1` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `attestation_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Attestation Date Time 00768,DG1,19,24,DTM,,,6.5.2.19,,,,',
  `confidential_indicator1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Confidential Indicator 00767,DG1,18,1,ID,,0136,6.5.2.18,,,,',
  `diagnosing_clinician` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Diagnosing Clinician 00390,DG1,16,250,XCN,Y,,6.5.2.16,,,,',
  `diagnosis_action_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Diagnosis Action Code 01894,DG1,21,1,ID,,0206,6.5.2.21,,,,',
  `diagnosis_classification` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Diagnosis Classification 00766,DG1,17,3,IS,,0228,6.5.2.17,,,,',
  `diagnosis_code_dg1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Diagnosis Code - DG1 00377,DG1,3,250,CWE,,0051,6.5.2.3,,,,',
  `diagnosis_coding_method` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Diagnosis Coding Method 00376,DG1,2,0,-,,,6.5.2.2,,,,',
  `diagnosis_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Diagnosis Date Time 00379,DG1,5,24,DTM,,,6.5.2.5,,,,',
  `diagnosis_description` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Diagnosis Description 00378,DG1,4,0,-,,,6.5.2.4,,,,',
  `diagnosis_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Diagnosis Identifier 01850,DG1,20,427,EI,,,6.5.2.20,,,,',
  `diagnosis_priority` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Diagnosis Priority 00389,DG1,15,2,ID,,0359,6.5.2.15,,,,',
  `diagnosis_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Diagnosis Type 00380,DG1,6,2,IS,,0052,6.5.2.6,,,,',
  `diagnostic_related_group2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Diagnostic Related Group 00382,DG1,8,250,CNE,,0055,6.5.2.8,,,,',
  `drg_approval_indicator1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' DRG Approval Indicator 00383,DG1,9,1,ID,,0136,6.5.2.9,,,,',
  `drg_ccl_value_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' DRG CCL Value Code 02153,DG1,23,705,CWE,,0728,6.5.2.23,,,,',
  `drg_diagnosis_determination_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' DRG Diagnosis Determination Status 02155,DG1,25,20,IS,,0731,6.5.2.25,,,,',
  `drg_grouper_review_code2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' DRG Grouper Review Code 00384,DG1,10,2,IS,,0056,6.5.2.10,,,,',
  `drg_grouping_usage` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' DRG Grouping Usage 02154,DG1,24,20,ID,,0136,6.5.2.24,,,,',
  `grouper_version_and_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Grouper Version And Type 00388,DG1,14,0,-,,,6.5.2.14,,,,',
  `major_diagnostic_category1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Major Diagnostic Category 00381,DG1,7,1,CNE,,0118,6.5.2.7,,,,',
  `outlier_cost2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Outlier Cost 00387,DG1,13,12,CP,,,6.5.2.13,,,,',
  `outlier_days5` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Outlier Days 00386,DG1,12,3,NM,,,6.5.2.12,,,,',
  `outlier_type1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Outlier Type 00385,DG1,11,250,CWE,,0083,6.5.2.11,,,,',
  `parent_diagnosis` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Parent Diagnosis 02152,DG1,22,427,EI,,,6.5.2.22,,,,',
  `present_on_admission_poa_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Present On Admission (POA) Indicator 02288,DG1,26,1,IS,,0895,6.5.2.26,,,,',
  `set_id_dg1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - DG1 00375,DG1,1,4,SI,,,6.5.2.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_dmi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_dmi` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `average_length_of_stay` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Average Length of Stay 02232,DMI,4,5,NM,,,8.13.2.4,,,,',
  `diagnostic_related_group1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Diagnostic Related Group 00382,DMI,1,250,CNE,,0055,8.13.2.1,,,,',
  `lower_and_upper_trim_points` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Lower and Upper Trim Points 02231,DMI,3,7,NR,,,8.13.2.3,,,,',
  `major_diagnostic_category2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Major Diagnostic Category 00381,DMI,2,1,CNE,,0118,8.13.2.2,,,,',
  `relative_weight` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Relative Weight 02233,DMI,5,7,NM,,,8.13.2.5,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_drg`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_drg` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `basic_charge` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Basic Charge 02165,DRG,22,20,MO,,,6.5.3.22,,,,',
  `calculated_days` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Calculated Days 02168,DRG,25,5,NM,,,6.5.3.25,,,,',
  `confidential_indicator2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Confidential Indicator 00767,DRG,10,1,ID,,0136,6.5.3.10,,,,',
  `diagnostic_related_group3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Diagnostic Related Group 00382,DRG,1,250,CNE,,0055,6.5.3.1,,,,',
  `discount_surcharge` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Discount Surcharge 02167,DRG,24,20,MO,,,6.5.3.24,,,,',
  `drg_approval_indicator2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' DRG Approval Indicator 00383,DRG,3,1,ID,,0136,6.5.3.3,,,,',
  `drg_assigned_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' DRG Assigned Date Time 00769,DRG,2,24,DTM,,,6.5.3.2,,,,',
  `drg_grouper_review_code1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' DRG Grouper Review Code 00384,DRG,4,2,IS,,0056,6.5.3.4,,,,',
  `drg_payor` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' DRG Payor 00770,DRG,8,1,IS,,0229,6.5.3.8,,,,',
  `drg_transfer_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' DRG Transfer Type 01500,DRG,11,21,IS,,0415,6.5.3.11,,,,',
  `effective_weight` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Effective Weight 02159,DRG,15,5,NM,,,6.5.3.15,,,,',
  `grouper_software_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Grouper Software Name 02162,DRG,18,100,ST,,,6.5.3.18,,,,',
  `grouper_software_version` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Grouper Software Version 02282,DRG,19,100,ST,,,6.5.3.19,,,,',
  `grouper_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Grouper Status 02157,DRG,13,705,CWE,,0734,6.5.3.13,,,,',
  `monetary_amount` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Monetary Amount 02160,DRG,16,20,MO,,,6.5.3.16,,,,',
  `name_of_coder` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Name of Coder 02156,DRG,12,1103,XPN,,,6.5.3.12,,,,',
  `outlier_cost3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Outlier Cost 00387,DRG,7,12,CP,,,6.5.3.7,,,,',
  `outlier_days4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Outlier Days 00386,DRG,6,3,NM,,,6.5.3.6,,,,',
  `outlier_reimbursement` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Outlier Reimbursement 00771,DRG,9,9,CP,,,6.5.3.9,,,,',
  `outlier_type2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Outlier Type 00385,DRG,5,250,CWE,,0083,6.5.3.5,,,,',
  `pccl_value_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' PCCL Value Code 02158,DRG,14,20,CWE,,0728,6.5.3.14,,,,',
  `relative_discount_surcharge` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Relative Discount Surcharge 02164,DRG,21,20,MO,,,6.5.3.21,,,,',
  `status_admission` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Status Admission 02176,DRG,33,20,IS,,0759,6.5.3.33,,,,',
  `status_age` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Status Age 02170,DRG,27,20,IS,,0749,6.5.3.27,,,,',
  `status_financial_calculation` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Status Financial Calculation 02163,DRG,20,20,IS,,0742,6.5.3.20,,,,',
  `status_gender` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Status Gender 02169,DRG,26,20,IS,,0749,6.5.3.26,,,,',
  `status_length_of_stay` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Status Length of Stay 02171,DRG,28,20,IS,,0749,6.5.3.28,,,,',
  `status_patient` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Status Patient 02161,DRG,17,20,IS,,0739,6.5.3.17,,,,',
  `status_respiration_minutes` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Status Respiration Minutes 02175,DRG,32,20,IS,,0757,6.5.3.32,,,,',
  `status_same_day_flag` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Status Same Day Flag 02172,DRG,29,20,IS,,0749,6.5.3.29,,,,',
  `status_separation_mode` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Status Separation Mode 02173,DRG,30,20,IS,,0749,6.5.3.30,,,,',
  `status_weight_at_birth` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Status Weight at Birth 02174,DRG,31,20,IS,,0755,6.5.3.31,,,,',
  `total_charge1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Total Charge 02166,DRG,23,20,MO,,,6.5.3.23,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_dsc`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_dsc` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `continuation_pointer1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Continuation Pointer 00014,DSC,1,180,ST,,,2.14.4.1,,,,',
  `continuation_style` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Continuation Style 01354,DSC,2,1,ID,,0398,2.14.4.2,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_dsp`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_dsp` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `data_line` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Data Line 00063,DSP,3,300,TX,,,5.5.1.3,,,,',
  `display_level` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Display Level 00062,DSP,2,4,SI,,,5.5.1.2,,,,',
  `logical_break_point` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Logical Break Point 00064,DSP,4,2,ST,,,5.5.1.4,,,,',
  `result_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Result ID 00065,DSP,5,20,TX,,,5.5.1.5,,,,',
  `set_id_dsp` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - DSP 00061,DSP,1,4,SI,,,5.5.1.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_ecd`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_ecd` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `parameters` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Parameters 01394,ECD,5,65536 TX,Y,,13.4.5.5,,,,,',
  `reference_command_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Reference Command Number 01390,ECD,1,20,NM,,,13.4.5.1,,,,',
  `remote_control_command` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Remote Control Command 01391,ECD,2,250,CWE,,0368,13.4.5.2,,,,',
  `requested_completion_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Requested Completion Time 01393,ECD,4,0,TQ,,,13.4.5.4,,,,',
  `response_required` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Response Required 01392,ECD,3,80,ID,,0136,13.4.5.3,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_ecr`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_ecr` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `command_response` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Command Response 01395,ECR,1,705,CWE,,0387,13.4.6.1,,,,',
  `command_response_parameters` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Command Response Parameters 01397,ECR,3,65536 TX,Y,,13.4.6.3,,,,,',
  `date_time_completed` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Date Time Completed 01396,ECR,2,24,DTM,,,13.4.6.2,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_edu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_edu` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `academic_degree` VARCHAR(10) NOT NULL DEFAULT ' ' COMMENT ' Academic Degree 01449,EDU,2,10,IS,,0360,15.4.3.2,,,,',
  `academic_degree_granted_date` VARCHAR(8) NOT NULL DEFAULT ' ' COMMENT ' Academic Degree Granted Date 01451,EDU,5,8,DT,,,15.4.3.5,,,,',
  `academic_degree_program_date_range` VARCHAR(52) NOT NULL DEFAULT ' ' COMMENT ' Academic Degree Program Date Range 01597,EDU,3,52,DR,,,15.4.3.3,,,,',
  `major_field_of_study` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Major Field of Study 01885,EDU,9,250,CWE,Y,,15.4.3.9,,,,',
  `school` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' School 01452,EDU,6,250,XON,,,15.4.3.6,,,,',
  `school_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' School Address 01454,EDU,8,250,XAD,,,15.4.3.8,,,,',
  `school_type_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' School Type Code 01453,EDU,7,250,CWE,,0402,15.4.3.7,,,,',
  `set_id_edu` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - EDU 01448,EDU,1,60,SI,,,15.4.3.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_eqp`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_eqp` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `end_date_time1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' End Date Time 01432,EQP,4,24,DTM,,,13.4.12.4,,,,',
  `event_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Event type 01430,EQP,1,705,CWE,,0450,13.4.12.1,,,,',
  `file_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' File Name 01431,EQP,2,20,ST,,,13.4.12.2,,,,',
  `start_date_time5` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Start Date Time 01202,EQP,3,24,DTM,,,13.4.12.3,,,,',
  `transaction_data` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Transaction Data 01433,EQP,5,65536 FT,,,13.4.12.5,,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_err`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_err` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `application_error_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Application Error Code 01815,ERR,5,705,CWE,,0533,2.14.5.5,,,,',
  `application_error_parameter` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Application Error Parameter 01816,ERR,6,80,ST,Y,,2.14.5.6,,,,',
  `diagnostic_information` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Diagnostic Information 01817,ERR,7,2048,TX,,,2.14.5.7,,,,',
  `error_code_and_location` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Error Code and Location 00024,ERR,1,0,ELD,Y,,2.14.5.1,,,,',
  `error_location` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Error Location 01812,ERR,2,18,ERL,Y,,2.14.5.2,,,,',
  `help_desk_contact_point` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Help Desk Contact Point 01822,ERR,12,652,XTN,Y,,2.14.5.12,,,,',
  `hl7_error_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' HL7 Error Code 01813,ERR,3,705,CWE,,0357,2.14.5.3,,,,',
  `inform_person_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inform Person Indicator 01819,ERR,9,20,IS,Y,0517,2.14.5.9,,,,',
  `override_reason_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Override Reason Code 01821,ERR,11,705,CWE,Y,0519,2.14.5.11,,,,',
  `override_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Override Type 01820,ERR,10,705,CWE,,0518,2.14.5.10,,,,',
  `severity` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Severity 01814,ERR,4,2,ID,,0516,2.14.5.4,,,,',
  `user_message` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' User Message 01818,ERR,8,250,TX,,,2.14.5.8,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_evn`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_evn` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `date_time_planned_event` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Date Time Planned Event 00101,EVN,3,24,DTM,,,3.4.1.3,,,,',
  `event_facility` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Event Facility 01534,EVN,7,241,HD,,,3.4.1.7,,,,',
  `event_occurred` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Event Occurred 01278,EVN,6,24,DTM,,,3.4.1.6,,,,',
  `event_reason_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Event Reason Code 00102,EVN,4,3,IS,,0062,3.4.1.4,,,,',
  `event_type_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Event Type Code 00099,EVN,1,0,ID,,0003,3.4.1.1,,,,',
  `operator_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Operator ID 00103,EVN,5,250,XCN,Y,0188,3.4.1.5,,,,',
  `recorded_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Recorded Date Time 00100,EVN,2,24,DTM,,,3.4.1.2,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_fac`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_fac` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `contact_address2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Contact Address 01166,FAC,7,2915,XAD,Y,,7.12.6.7,,,,',
  `contact_person` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Contact Person 01266,FAC,5,3220,XCN,Y,,7.12.6.5,,,,',
  `contact_telecommunication` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Contact Telecommunication 01269,FAC,8,2743,XTN,Y,,7.12.6.8,,,,',
  `contact_title` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Contact Title 01267,FAC,6,60,ST,Y,,7.12.6.6,,,,',
  `facility_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Facility Address 01264,FAC,3,2915,XAD,Y,,7.12.6.3,,,,',
  `facility_id-fac` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Facility ID-FAC 01262,FAC,1,427,EI,,,7.12.6.1,,,,',
  `facility_telecommunication` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Facility Telecommunication 01265,FAC,4,2743,XTN,,,7.12.6.4,,,,',
  `facility_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Facility Type 01263,FAC,2,1,ID,,0331,7.12.6.2,,,,',
  `signature_authority` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Signature Authority 01270,FAC,9,3220,XCN,Y,,7.12.6.9,,,,',
  `signature_authority_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Signature Authority Address 01272,FAC,11,2915,XAD,Y,,7.12.6.11,,,,',
  `signature_authority_telecommunication` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Signature Authority Telecommunication 01273,FAC,12,2743,XTN,,,7.12.6.12,,,,',
  `signature_authority_title` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Signature Authority Title 01271,FAC,10,199,ST,,,7.12.6.10,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_fhs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_fhs` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `file_control_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' File Control ID 00077,FHS,11,20,ST,,,2.14.6.11,,,,',
  `file_creation_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' File Creation Date Time 00073,FHS,7,24,DTM,,,2.14.6.7,,,,',
  `file_encoding_characters` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' File Encoding Characters 00068,FHS,2,4,ST,,,2.14.6.2,,,,',
  `file_field_separator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' File Field Separator 00067,FHS,1,1,ST,,,2.14.6.1,,,,',
  `file_header_comment` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' File Header Comment 00076,FHS,10,80,ST,,,2.14.6.10,,,,',
  `file_name_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' File Name ID 00075,FHS,9,20,ST,,,2.14.6.9,,,,',
  `file_receiving_application` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' File Receiving Application 00071,FHS,5,227,HD,,,2.14.6.5,,,,',
  `file_receiving_facility` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' File Receiving Facility 00072,FHS,6,227,HD,,,2.14.6.6,,,,',
  `file_receiving_network_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' File Receiving Network Address 02270,FHS,14,227,HD,,,2.14.6.14,,,,',
  `file_security` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' File Security 00074,FHS,8,40,ST,,,2.14.6.8,,,,',
  `file_sending_application` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' File Sending Application 00069,FHS,3,227,HD,,,2.14.6.3,,,,',
  `file_sending_facility` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' File Sending Facility 00070,FHS,4,227,HD,,,2.14.6.4,,,,',
  `file_sending_network_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' File Sending Network Address 02269,FHS,13,227,HD,,,2.14.6.13,,,,',
  `reference_file_control_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Reference File Control ID 00078,FHS,12,20,ST,,,2.14.6.12,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_ft1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_ft1` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `advanced_beneficiary_notice_code2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Advanced Beneficiary Notice Code 01310,FT1,27,250,CWE,,0339,6.5.1.27,,,,',
  `assigned_patient_location2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Assigned Patient Location 00133,FT1,16,80,PL,,,6.5.1.16,,,,',
  `department_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Department Code 00367,FT1,13,250,CWE,,0049,6.5.1.13,,,,',
  `diagnosis_code_ft1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Diagnosis Code - FT1 00371,FT1,19,250,CWE,Y,0051,6.5.1.19,,,,',
  `entered_by_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Entered By Code 00765,FT1,24,250,XCN,Y,,6.5.1.24,,,,',
  `fee_schedule` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Fee Schedule 00370,FT1,17,1,IS,,0024,6.5.1.17,,,,',
  `filler_order_number5` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Filler Order Number 00217,FT1,23,427,EI,,,6.5.1.23,,,,',
  `insurance_amount` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insurance Amount 00369,FT1,15,12,CP,,,6.5.1.15,,,,',
  `insurance_plan_id1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insurance Plan ID 00368,FT1,14,250,CWE,,0072,6.5.1.14,,,,',
  `ndc_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' NDC Code 01845,FT1,29,250,CWE,,0549,6.5.1.29,,,,',
  `ordered_by_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Ordered By Code 00373,FT1,21,250,XCN,Y,,6.5.1.21,,,,',
  `patient_type2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Patient Type 00148,FT1,18,2,IS,,0018,6.5.1.18,,,,',
  `payment_reference_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Payment Reference ID 01846,FT1,30,250,CX,,,6.5.1.30,,,,',
  `performed_by_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Performed By Code 00372,FT1,20,250,XCN,Y,0084,6.5.1.20,,,,',
  `procedure_code3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Procedure Code 00393,FT1,25,705,CNE,,0088,6.5.1.25,,,,',
  `procedure_code_modifier1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Procedure Code Modifier 01316,FT1,26,705,CNE,Y,0340,6.5.1.26,,,,',
  `set_id_ft1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - FT1 00355,FT1,1,4,SI,,,6.5.1.1,,,,',
  `transaction_amount_extended` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Transaction Amount - Extended 00365,FT1,11,12,CP,,,6.5.1.11,,,,',
  `transaction_amount_unit3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Transaction amount - unit 00366,FT1,12,12,CP,,,6.5.1.12,,,,',
  `transaction_batch_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Transaction Batch ID 00357,FT1,3,10,ST,,,6.5.1.3,,,,',
  `transaction_code1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Transaction Code 00361,FT1,7,250,CWE,,0132,6.5.1.7,,,,',
  `transaction_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Transaction Date 00358,FT1,4,53,DR,,,6.5.1.4,,,,',
  `transaction_description` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Transaction Description 00362,FT1,8,0,-,,,6.5.1.8,,,,',
  `transaction_description_alt` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Transaction Description - Alt 00363,FT1,9,0,-,,,6.5.1.9,,,,',
  `transaction_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Transaction ID 00356,FT1,2,12,ST,,,6.5.1.2,,,,',
  `transaction_posting_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Transaction Posting Date 00359,FT1,5,24,DTM,,,6.5.1.5,,,,',
  `transaction_quantity` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Transaction Quantity 00364,FT1,10,6,NM,,,6.5.1.10,,,,',
  `transaction_reference_key` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Transaction Reference Key 01847,FT1,31,4,SI,Y,,6.5.1.31,,,,',
  `transaction_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Transaction Type 00360,FT1,6,8,IS,,0017,6.5.1.6,,,,',
  `unit_cost` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Unit Cost 00374,FT1,22,12,CP,,,6.5.1.22,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_fts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_fts` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `file_batch_count` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' File Batch Count 00079,FTS,1,10,NM,,,2.14.7.1,,,,',
  `file_trailer_comment` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' File Trailer Comment 00080,FTS,2,80,ST,,,2.14.7.2,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_gol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_gol` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `action_code4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Action Code 00816,GOL,1,2,ID,,0287,12.4.1.1,,,,',
  `action_date_time2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Action Date Time 00817,GOL,2,24,DTM,,,12.4.1.2,,,,',
  `current_goal_review_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Current Goal Review Date Time 00828,GOL,12,24,DTM,,,12.4.1.12,,,,',
  `current_goal_review_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Current Goal Review Status 00827,GOL,11,705,CWE,,,12.4.1.11,,,,',
  `episode_of_care_id2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Episode of Care ID 00820,GOL,5,60,EI,,,12.4.1.5,,,,',
  `expected_goal_achieve_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Expected Goal Achieve Date Time 00824,GOL,8,24,DTM,,,12.4.1.8,,,,',
  `goal_classification` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Goal Classification 00825,GOL,9,705,CWE,,,12.4.1.9,,,,',
  `goal_established_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Goal Established Date Time 00822,GOL,7,24,DTM,,,12.4.1.7,,,,',
  `goal_evaluation` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Goal Evaluation 00832,GOL,16,705,CWE,,,12.4.1.16,,,,',
  `goal_evaluation_comment` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Goal Evaluation Comment 00833,GOL,17,300,ST,Y,,12.4.1.17,,,,',
  `goal_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Goal ID 00818,GOL,3,705,CWE,,,12.4.1.3,,,,',
  `goal_instance_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Goal Instance ID 00819,GOL,4,60,EI,,,12.4.1.4,,,,',
  `goal_life_cycle_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Goal Life Cycle Status 00834,GOL,18,705,CWE,,,12.4.1.18,,,,',
  `goal_life_cycle_status_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Goal Life Cycle Status Date Time 00835,GOL,19,24,DTM,,,12.4.1.19,,,,',
  `goal_list_priority` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Goal List Priority 00821,GOL,6,60,NM,,,12.4.1.6,,,,',
  `goal_management_discipline` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Goal Management Discipline 00826,GOL,10,705,CWE,,,12.4.1.10,,,,',
  `goal_review_interval` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Goal Review Interval 00831,GOL,15,200,TQ,,,12.4.1.15,,,,',
  `goal_target_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Goal Target Name 00837,GOL,21,250,XPN,Y,,12.4.1.21,,,,',
  `goal_target_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Goal Target Type 00836,GOL,20,705,CWE,Y,,12.4.1.20,,,,',
  `mood_code4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Mood Code 02182,GOL,22,705,CNE,,0725,12.4.1.22,,,,',
  `next_goal_review_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Next Goal Review Date Time 00829,GOL,13,24,DTM,,,12.4.1.13,,,,',
  `previous_goal_review_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Previous Goal Review Date Time 00830,GOL,14,24,DTM,,,12.4.1.14,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_gp1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_gp1` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `oce_edits_per_visit_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' OCE Edits per Visit Code 01602,GP1,4,2,IS,Y,0458,6.5.15.4,,,,',
  `outlier_cost1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Outlier Cost 00387,GP1,5,12,CP,,,6.5.15.5,,,,',
  `overall_claim_disposition_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Overall Claim Disposition Code 01601,GP1,3,1,IS,,0457,6.5.15.3,,,,',
  `revenue_code2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Revenue Code 01600,GP1,2,3,IS,Y,0456,6.5.15.2,,,,',
  `type_of_bill_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Type of Bill Code 01599,GP1,1,3,IS,,0455,6.5.15.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_gp2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_gp2` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `ambulatory_payment_classification_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Ambulatory Payment Classification Code 01609,GP2,7,250,CWE,,0466,6.5.16.7,,,,',
  `charge` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Charge 01605,GP2,3,12,CP,,,6.5.16.3,,,,',
  `co-pay_amount` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Co-Pay Amount 01620,GP2,13,12,CP,,,6.5.16.13,,,,',
  `denial_or_rejection_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Denial or Rejection Code 01607,GP2,5,1,IS,,0460,6.5.16.5,,,,',
  `expected_cms_payment_amount` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Expected CMS Payment Amount 01618,GP2,11,12,CP,,,6.5.16.11,,,,',
  `modifier_edit_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Modifier Edit Code 01610,GP2,8,1,IS,Y,0467,6.5.16.8,,,,',
  `number_service_units` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Number of Service Units 01604,GP2,2,7,NM,,,6.5.16.2,,,,',
  `oce_edit_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' OCE Edit Code 01608,GP2,6,3,IS,Y,0458,6.5.16.6,,,,',
  `packaging_status_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Packaging Status Code 01617,GP2,10,1,IS,,0469,6.5.16.10,,,,',
  `pay_rate_per_service_unit` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Pay Rate per Service Unit 01621,GP2,14,4,NM,,,6.5.16.14,,,,',
  `payment_adjustment_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Payment Adjustment Code 01611,GP2,9,1,IS,,0468,6.5.16.9,,,,',
  `reimbursement_action_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Reimbursement Action Code 01606,GP2,4,1,IS,,0459,6.5.16.4,,,,',
  `reimbursement_type_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Reimbursement Type Code 01619,GP2,12,2,IS,,0470,6.5.16.12,,,,',
  `revenue_code1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Revenue Code 01600,GP2,1,3,IS,,0456,6.5.16.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_gt1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_gt1` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `ambulatory_status2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Ambulatory Status 00145,GT1,34,2,IS,Y,0009,6.5.5.34,,,,',
  `citizenship3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Citizenship 00129,GT1,35,705,CWE,Y,0171,6.5.5.35,,,,',
  `contact_persons_name2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Contact Person Name 00748,GT1,45,250,XPN,Y,0200,6.5.5.45,,,,',
  `contact_persons_telephone_number2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Contact Person Telephone Number 00749,GT1,46,250,XTN,Y,,6.5.5.46,,,,',
  `contact_reason1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Contact Reason 00747,GT1,47,705,CWE,,0222,6.5.5.47,,,,',
  `contact_relationship` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Contact Relationship 00784,GT1,48,3,IS,,0063,6.5.5.48,,,,',
  `employment_stop_date2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Employment Stop Date 00783,GT1,32,8,DT,,,6.5.5.32,,,,',
  `ethnic_group4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Ethnic Group 00125,GT1,44,705,CWE,Y,0189,6.5.5.44,,,,',
  `guarantor_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Address 00409,GT1,5,250,XAD,Y,,6.5.5.5,,,,',
  `guarantor_administrative_sex` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Administrative Sex 00413,GT1,9,1,IS,,0001,6.5.5.9,,,,',
  `guarantor_billing_hold_flag` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Billing Hold Flag 00773,GT1,22,1,ID,,0136,6.5.5.22,,,,',
  `guarantor_birth_place` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Birth Place 01851,GT1,56,250,ST,,,6.5.5.56,,,,',
  `guarantor_charge_adjustment_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Charge Adjustment Code 00777,GT1,26,250,CWE,,0218,6.5.5.26,,,,',
  `guarantor_credit_rating_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Credit Rating Code 00774,GT1,23,250,CWE,,0341,6.5.5.23,,,,',
  `guarantor_date_begin` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Date - Begin 00417,GT1,13,8,DT,,,6.5.5.13,,,,',
  `guarantor_date_end` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Date - End 00418,GT1,14,8,DT,,,6.5.5.14,,,,',
  `guarantor_date_time_of_birth` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Date Time Of Birth 00412,GT1,8,24,DTM,,,6.5.5.8,,,,',
  `guarantor_death_date_and_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Death Date And Time 00775,GT1,24,24,DTM,,,6.5.5.24,,,,',
  `guarantor_death_flag` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Death Flag 00776,GT1,25,1,ID,,0136,6.5.5.25,,,,',
  `guarantor_employee_id_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Employee ID Number 00423,GT1,19,250,CX,Y,,6.5.5.19,,,,',
  `guarantor_employer_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Employer Address 00421,GT1,17,250,XAD,Y,,6.5.5.17,,,,',
  `guarantor_employer_id_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Employer ID Number 00780,GT1,29,250,CX,Y,,6.5.5.29,,,,',
  `guarantor_employer_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Employer Name 00420,GT1,16,250,XPN,Y,,6.5.5.16,,,,',
  `guarantor_employer_phone_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Employer Phone Number 00422,GT1,18,250,XTN,Y,,6.5.5.18,,,,',
  `guarantor_employer_organization_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Employer Organization Name 01299,GT1,51,250,XON,Y,,6.5.5.51,,,,',
  `guarantor_employment_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Employment Status 00424,GT1,20,2,IS,,0066,6.5.5.20,,,,',
  `guarantor_financial_class` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Financial Class 01231,GT1,54,50,FC,,,6.5.5.54,,,,',
  `guarantor_hire_effective_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Hire Effective Date 00782,GT1,31,8,DT,,,6.5.5.31,,,,',
  `guarantor_household_annual_income` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Household Annual Income 00778,GT1,27,10,CP,,,6.5.5.27,,,,',
  `guarantor_household_size` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Household Size 00779,GT1,28,3,NM,,,6.5.5.28,,,,',
  `guarantor_marital_status_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Marital Status Code 00781,GT1,30,250,CWE,,0002,6.5.5.30,,,,',
  `guarantor_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Name 00407,GT1,3,250,XPN,Y,,6.5.5.3,,,,',
  `guarantor_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Number 00406,GT1,2,250,CX,Y,,6.5.5.2,,,,',
  `guarantor_organization_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Organization Name 00425,GT1,21,250,XON,Y,,6.5.5.21,,,,',
  `guarantor_ph_num_business` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Ph Num - Business 00411,GT1,7,250,XTN,Y,,6.5.5.7,,,,',
  `guarantor_ph_num_home` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Ph Num - Home 00410,GT1,6,250,XTN,Y,,6.5.5.6,,,,',
  `guarantor_priority` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Priority 00419,GT1,15,2,NM,,,6.5.5.15,,,,',
  `guarantor_race` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Race 01291,GT1,55,250,CWE,Y,0005,6.5.5.55,,,,',
  `guarantor_relationship` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Relationship 00415,GT1,11,250,CWE,,0063,6.5.5.11,,,,',
  `guarantor_spouse_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Spouse Name 00408,GT1,4,250,XPN,Y,,6.5.5.4,,,,',
  `guarantor_ssn` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor SSN 00416,GT1,12,11,ST,,,6.5.5.12,,,,',
  `guarantor_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Type 00414,GT1,10,2,IS,,0068,6.5.5.10,,,,',
  `handicap2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Handicap 00753,GT1,52,2,IS,,0295,6.5.5.52,,,,',
  `job_code_class1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Job Code Class 00786,GT1,50,20,JCC,,,6.5.5.50,,,,',
  `job_status1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Job Status 00752,GT1,53,2,IS,,0311,6.5.5.53,,,,',
  `job_title1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Job Title 00785,GT1,49,20,ST,,,6.5.5.49,,,,',
  `living_arrangement4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Living Arrangement 00742,GT1,37,2,IS,,0220,6.5.5.37,,,,',
  `living_dependency1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Living Dependency 00755,GT1,33,2,IS,,0223,6.5.5.33,,,,',
  `mother_maiden_name3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Mother Maiden Name 00109,GT1,42,250,XPN,Y,,6.5.5.42,,,,',
  `nationality1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Nationality 00739,GT1,43,0,CWE,,0212,6.5.5.43,,,,',
  `primary_language3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Primary Language 00118,GT1,36,705,CWE,,0296,6.5.5.36,,,,',
  `protection_indicator3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Protection Indicator 00744,GT1,39,0,ID,,0136,6.5.5.39,,,,',
  `publicity_code4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Publicity Code 00743,GT1,38,705,CWE,,0215,6.5.5.38,,,,',
  `religion4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Religion 00120,GT1,41,705,CWE,,0006,6.5.5.41,,,,',
  `set_id_gt1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - GT1 00405,GT1,1,4,SI,,,6.5.5.1,,,,',
  `student_indicator4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Student Indicator 00745,GT1,40,2,IS,,0231,6.5.5.40,,,,',
  `vip_indicator2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' VIP Indicator 00146,GT1,57,2,IS,,0099,6.5.5.57,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_iam`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_iam` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `action_reason` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Action Reason 01553,IAM,8,60,ST,,,3.4.7.8,,,,',
  `alert_device_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Alert Device Code 01561,IAM,16,705,CWE,,0437,3.4.7.16,,,,',
  `allergen_code_mnemonic_description1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Allergen Code Mnemonic Description 00205,IAM,3,705,CWE,,,3.4.7.3,,,,',
  `allergen_group_code_mnemonic_description` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Allergen Group Code Mnemonic Description 01555,IAM,10,705,CWE,,,3.4.7.10,,,,',
  `allergen_type_code2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Allergen Type Code 00204,IAM,2,705,CWE,,0127,3.4.7.2,,,,',
  `allergy_action_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Allergy Action Code 01551,IAM,6,250,CNE,,0206,3.4.7.6,,,,',
  `allergy_clinical_status_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Allergy Clinical Status Code 01562,IAM,17,705,CWE,,0438,3.4.7.17,,,,',
  `allergy_reaction_code1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Allergy Reaction Code 00207,IAM,5,15,ST,Y,,3.4.7.5,,,,',
  `allergy_severity_code3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Allergy Severity Code 00206,IAM,4,705,CWE,,0128,3.4.7.4,,,,',
  `allergy_unique_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Allergy Unique Identifier 01552,IAM,7,427,EI,,,3.4.7.7,,,,',
  `onset_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Onset Date 01556,IAM,11,8,DT,,,3.4.7.11,,,,',
  `onset_date_text` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Onset Date Text 01557,IAM,12,60,ST,,,3.4.7.12,,,,',
  `relationship_to_patient_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Relationship to Patient Code 01560,IAM,15,705,CWE,,0063,3.4.7.15,,,,',
  `reported_by` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Reported By 01559,IAM,14,250,XPN,,,3.4.7.14,,,,',
  `reported_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Reported Date Time 01558,IAM,13,8,DTM,,,3.4.7.13,,,,',
  `sensitivity_to_causative_agent_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Sensitivity to Causative Agent Code 01554,IAM,9,705,CWE,,0436,3.4.7.9,,,,',
  `set_id_iam` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - IAM 01612,IAM,1,4,SI,,,3.4.7.1,,,,',
  `statused_at_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Statused at Date Time 01565,IAM,20,8,DTM,,,3.4.7.20,,,,',
  `statused_by_organization` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Statused by Organization 01564,IAM,19,250,XON,,,3.4.7.19,,,,',
  `statused_by_person` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Statused by Person 01563,IAM,18,250,XCN,,,3.4.7.18,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_iim`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_iim` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `inventory_expiration_date2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inventory Expiration Date 01801,IIM,4,24,DTM,,,17.4.1.4,,,,',
  `inventory_location` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inventory Location 01803,IIM,6,250,CWE,,,17.4.1.6,,,,',
  `inventory_lot_number1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inventory Lot Number 01800,IIM,3,250,ST,,,17.4.1.3,,,,',
  `inventory_manufacturer_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inventory Manufacturer Name 01802,IIM,5,250,CWE,,,17.4.1.5,,,,',
  `inventory_on_hand_date2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inventory On Hand Date 01808,IIM,11,24,DTM,,,17.4.1.11,,,,',
  `inventory_on_hand_quantity2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inventory On Hand Quantity 01809,IIM,12,12,NM,,,17.4.1.12,,,,',
  `inventory_on_hand_quantity_unit2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inventory On Hand Quantity Unit 01810,IIM,13,250,CWE,,,17.4.1.13,,,,',
  `inventory_received_date2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inventory Received Date 01804,IIM,7,24,DTM,,,17.4.1.7,,,,',
  `inventory_received_item_cost2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inventory Received Item Cost 01807,IIM,10,12,MO,,,17.4.1.10,,,,',
  `inventory_received_quantity2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inventory Received Quantity 01805,IIM,8,12,NM,,,17.4.1.8,,,,',
  `inventory_received_quantity_unit1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inventory Received Quantity Unit 01806,IIM,9,250,CWE,,,17.4.1.9,,,,',
  `primary_key_value_iim` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Primary Key Value - IIM 01897,IIM,1,250,CWE,,,17.4.1.1,,,,',
  `procedure_code7` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Procedure Code 00393,IIM,14,705,CNE,,0088,17.4.1.14,,,,',
  `procedure_code_modifier2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Procedure Code Modifier 01316,IIM,15,705,CNE,Y,0340,17.4.1.15,,,,',
  `service_item_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Service Item Code 01799,IIM,2,250,CWE,,,17.4.1.2,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_ilt`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_ilt` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `inventory_expiration_date1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inventory Expiration Date 01801,ILT,3,24,DTM,,,17.4.8.3,,,,',
  `inventory_lot_number2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inventory Lot Number 01800,ILT,2,250,ST,,,17.4.8.2,,,,',
  `inventory_on_hand_date1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inventory On Hand Date 01808,ILT,8,24,DTM,,,17.4.8.8,,,,',
  `inventory_on_hand_quantity1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inventory On Hand Quantity 01809,ILT,9,12,NM,,,17.4.8.9,,,,',
  `inventory_on_hand_quantity_unit1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inventory On Hand Quantity Unit 01810,ILT,10,250,CWE,,,17.4.8.10,,,,',
  `inventory_received_date1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inventory Received Date 01804,ILT,4,24,DTM,,,17.4.8.4,,,,',
  `inventory_received_item_cost1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inventory Received Item Cost 01807,ILT,7,12,MO,,,17.4.8.7,,,,',
  `inventory_received_quantity1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inventory Received Quantity 01805,ILT,5,12,NM,,,17.4.8.5,,,,',
  `inventory_received_quantity_unit2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inventory Received Quantity Unit 01806,ILT,6,250,CWE,,,17.4.8.6,,,,',
  `set_id_ilt` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set Id - ILT 02086,ILT,1,4,SI,,,17.4.8.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_in1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_in1` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `assignment_of_benefits` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Assignment Of Benefits 00445,IN1,20,2,IS,,0135,6.5.6.20,,,,',
  `authorization_information` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Authorization Information 00439,IN1,14,239,AUI,,,6.5.6.14,,,,',
  `billing_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Billing Status 00457,IN1,32,2,IS,,0022,6.5.6.32,,,,',
  `company_plan_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Company Plan Code 00460,IN1,35,20,IS,,0042,6.5.6.35,,,,',
  `coord_of_ben._priority` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Coord Of Ben. Priority 00447,IN1,22,2,ST,,,6.5.6.22,,,,',
  `coordination_of_benefits` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Coordination Of Benefits 00446,IN1,21,2,IS,,0173,6.5.6.21,,,,',
  `coverage_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Coverage Type 01227,IN1,47,3,IS,,0309,6.5.6.47,,,,',
  `delay_before_l.r._day` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Delay Before L.R. Day 00459,IN1,34,4,NM,,,6.5.6.34,,,,',
  `group_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Group Name 00434,IN1,9,250,XON,Y,,6.5.6.9,,,,',
  `group_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Group Number 00433,IN1,8,12,ST,,,6.5.6.8,,,,',
  `handicap1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Handicap 00753,IN1,48,2,IS,,0295,6.5.6.48,,,,',
  `insurance_co_contact_person` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insurance Co Contact Person 00431,IN1,6,250,XPN,Y,,6.5.6.6,,,,',
  `insurance_co_phone_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insurance Co Phone Number 00432,IN1,7,250,XTN,Y,,6.5.6.7,,,,',
  `insurance_company_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insurance Company Address 00430,IN1,5,250,XAD,Y,,6.5.6.5,,,,',
  `insurance_company_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insurance Company ID 00428,IN1,3,250,CX,Y,,6.5.6.3,,,,',
  `insurance_company_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insurance Company Name 00429,IN1,4,250,XON,Y,,6.5.6.4,,,,',
  `insurance_plan_id2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insurance Plan ID 00368,IN1,2,250,CWE,,0072,6.5.6.2,,,,',
  `insured_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insured Address 00444,IN1,19,250,XAD,Y,,6.5.6.19,,,,',
  `insured_administrative_sex` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insured Administrative Sex 00468,IN1,43,1,IS,,0001,6.5.6.43,,,,',
  `insured_birth_place` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insured Birth Place 01899,IN1,52,250,ST,,,6.5.6.52,,,,',
  `insured_date_of_birth` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insured Date Of Birth 00443,IN1,18,24,DTM,,,6.5.6.18,,,,',
  `insured_employer_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insured Employer Address 00469,IN1,44,250,XAD,Y,,6.5.6.44,,,,',
  `insured_employment_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insured Employment Status 00467,IN1,42,250,CWE,,0066,6.5.6.42,,,,',
  `insured_group_emp_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insured Group Emp ID 00435,IN1,10,250,CX,Y,,6.5.6.10,,,,',
  `insured_group_emp_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insured Group Emp Name 00436,IN1,11,250,XON,Y,,6.5.6.11,,,,',
  `insured_id_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insured ID Number 01230,IN1,49,250,CX,Y,,6.5.6.49,,,,',
  `insured_relationship_to_patient` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insured Relationship To Patient 00442,IN1,17,250,CWE,,0063,6.5.6.17,,,,',
  `lifetime_reserve_days` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Lifetime Reserve Days 00458,IN1,33,4,NM,,,6.5.6.33,,,,',
  `name_of_insured` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Name Of Insured 00441,IN1,16,250,XPN,Y,,6.5.6.16,,,,',
  `notice_of_admission_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Notice Of Admission Date 00449,IN1,24,8,DT,,,6.5.6.24,,,,',
  `notice_of_admission_flag` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Notice Of Admission Flag 00448,IN1,23,1,ID,,0136,6.5.6.23,,,,',
  `plan_effective_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Plan Effective Date 00437,IN1,12,8,DT,,,6.5.6.12,,,,',
  `plan_expiration_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Plan Expiration Date 00438,IN1,13,8,DT,,,6.5.6.13,,,,',
  `plan_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Plan Type 00440,IN1,15,3,IS,,0086,6.5.6.15,,,,',
  `policy_deductible` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Policy Deductible 00462,IN1,37,12,CP,,,6.5.6.37,,,,',
  `policy_limit_amount` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Policy Limit - Amount 00463,IN1,38,0,-,,,6.5.6.38,,,,',
  `policy_limit_days` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Policy Limit - Days 00464,IN1,39,4,NM,,,6.5.6.39,,,,',
  `policy_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Policy Number 00461,IN1,36,15,ST,,,6.5.6.36,,,,',
  `preadmit_cert_pac` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Pre-Admit Cert (PAC) 00453,IN1,28,15,ST,,,6.5.6.28,,,,',
  `prior_insurance_plan_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Prior Insurance Plan ID 00471,IN1,46,8,IS,,0072,6.5.6.46,,,,',
  `release_information_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Release Information Code 00452,IN1,27,2,IS,,0093,6.5.6.27,,,,',
  `report_of_eligibility_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Report Of Eligibility Date 00451,IN1,26,8,DT,,,6.5.6.26,,,,',
  `report_of_eligibility_flag` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Report Of Eligibility Flag 00450,IN1,25,1,ID,,0136,6.5.6.25,,,,',
  `room_rate_private` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Room Rate - Private 00466,IN1,41,0,-,,,6.5.6.41,,,,',
  `room_rate_semiprivate` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Room Rate - Semi-Private 00465,IN1,40,0,-,,,6.5.6.40,,,,',
  `set_id_in1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - IN1 00426,IN1,1,4,SI,,,6.5.6.1,,,,',
  `signature_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Signature Code 01854,IN1,50,1,IS,,0535,6.5.6.50,,,,',
  `signature_code_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Signature Code Date 01855,IN1,51,8,DT,,,6.5.6.51,,,,',
  `type_agreement_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Type Of Agreement Code 00456,IN1,31,2,IS,,0098,6.5.6.31,,,,',
  `verification` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Verification By 00455,IN1,30,250,XCN,Y,,6.5.6.30,,,,',
  `verification_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Verification Date Time 00454,IN1,29,24,DTM,,,6.5.6.29,,,,',
  `verification_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Verification Status 00470,IN1,45,2,ST,,,6.5.6.45,,,,',
  `vip_indicator4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' VIP Indicator 01852,IN1,53,2,IS,,0099,6.5.6.53,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_in2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_in2` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `ambulatory_status1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Ambulatory Status 00145,IN2,32,2,IS,Y,0009,6.5.7.32,,,,',
  `baby_coverage` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Baby Coverage 00490,IN2,19,1,ID,,0136,6.5.7.19,,,,',
  `blood_deductible2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Blood Deductible 00492,IN2,21,1,ST,,,6.5.7.21,,,,',
  `citizenship2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Citizenship 00129,IN2,33,705,CWE,Y,0171,6.5.7.33,,,,',
  `combine_baby_bill` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Combine Baby Bill 00491,IN2,20,1,ID,,0136,6.5.7.20,,,,',
  `copay_limit_flag` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Copay Limit Flag 00807,IN2,67,1,ID,,0136,6.5.7.67,,,,',
  `daily_deductible` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Daily Deductible 00501,IN2,30,25,DDI,,,6.5.7.30,,,,',
  `dependent_of_military_recipient` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Dependent Of Military Recipient 00482,IN2,11,250,CWE,,0342,6.5.7.11,,,,',
  `eligibility_source` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Eligibility Source 00498,IN2,27,1,IS,,0144,6.5.7.27,,,,',
  `employer_contact_person_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Employer Contact Person Name 00789,IN2,49,250,XPN,Y,,6.5.7.49,,,,',
  `employer_contact_person_phone_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Employer Contact Person Phone Number 00790,IN2,50,250,XTN,Y,,6.5.7.50,,,,',
  `employer_contact_reason` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Employer Contact Reason 00791,IN2,51,2,IS,,0222,6.5.7.51,,,,',
  `employer_information_data` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Employer Information Data 00475,IN2,4,1,IS,,0139,6.5.7.4,,,,',
  `employment_stop_date1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Employment Stop Date 00783,IN2,45,8,DT,,,6.5.7.45,,,,',
  `ethnic_group2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Ethnic Group 00125,IN2,42,705,CWE,Y,0189,6.5.7.42,,,,',
  `guarantor_relationship_to_insured` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Guarantor Relationship to Insured 00802,IN2,62,250,CWE,,0063,6.5.7.62,,,,',
  `insurance_co_contact_phone_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insurance Co Contact Phone Number 00798,IN2,58,250,XTN,Y,,6.5.7.58,,,,',
  `insurance_co_contact_reason` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insurance Co Contact Reason 00797,IN2,57,2,IS,,0232,6.5.7.57,,,,',
  `insured_employer_organization_nameand_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insured Employer Organization Nameand ID 00810,IN2,70,250,XON,Y,,6.5.7.70,,,,',
  `insured_organization_name_and_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insured Organization Name and ID 00809,IN2,69,250,XON,Y,,6.5.7.69,,,,',
  `insured_contact_person_phone_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insured Contact Person Phone Number 00793,IN2,53,250,XTN,Y,,6.5.7.53,,,,',
  `insured_contact_person_reason` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insured Contact Person Reason 00794,IN2,54,2,IS,Y,0222,6.5.7.54,,,,',
  `insured_contact_person_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insured Contact Person Name 00792,IN2,52,250,XPN,Y,,6.5.7.52,,,,',
  `insured_employee_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insured Employee ID 00472,IN2,1,250,CX,Y,,6.5.7.1,,,,',
  `insured_employer_phone_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insured Employer Phone Number 00804,IN2,64,250,XTN,Y,,6.5.7.64,,,,',
  `insured_employer_name_and_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insured Employer Name and ID 00474,IN2,3,250,XCN,Y,,6.5.7.3,,,,',
  `insured_employment_start_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insured Employment Start Date 00787,IN2,44,8,DT,,,6.5.7.44,,,,',
  `insured_phone_number_-_home` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insured Phone Number - Home 00803,IN2,63,250,XTN,Y,,6.5.7.63,,,,',
  `insured_social_security_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Insured Social Security Number 00473,IN2,2,11,ST,,,6.5.7.2,,,,',
  `job_code_class3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Job Code Class 00786,IN2,47,20,JCC,,,6.5.7.47,,,,',
  `job_status3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Job Status 00752,IN2,48,2,IS,,0311,6.5.7.48,,,,',
  `job_title3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Job Title 00785,IN2,46,20,ST,,,6.5.7.46,,,,',
  `living_arrangement1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Living Arrangement 00742,IN2,35,2,IS,,0220,6.5.7.35,,,,',
  `living_dependency3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Living Dependency 00755,IN2,31,2,IS,,0223,6.5.7.31,,,,',
  `mail_claim_party` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Mail Claim Party 00476,IN2,5,1,IS,Y,0137,6.5.7.5,,,,',
  `marital_status4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Marital Status 00119,IN2,43,705,CWE,Y,0002,6.5.7.43,,,,',
  `medicaid_case_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Medicaid Case Name 00478,IN2,7,250,XPN,Y,,6.5.7.7,,,,',
  `medicaid_case_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Medicaid Case Number 00479,IN2,8,15,ST,,,6.5.7.8,,,,',
  `medicare_health_ins_card_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Medicare Health Ins Card Number 00477,IN2,6,15,ST,,,6.5.7.6,,,,',
  `military_handicapped_program` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Military Handicapped Program 00805,IN2,65,250,CWE,,0343,6.5.7.65,,,,',
  `military_id_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Military ID Number 00481,IN2,10,20,ST,,,6.5.7.10,,,,',
  `military_non-avail_cert_on_file` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Military Non-Avail Cert On File 00489,IN2,18,1,ID,,0136,6.5.7.18,,,,',
  `military_organization` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Military Organization 00483,IN2,12,25,ST,,,6.5.7.12,,,,',
  `military_rank_grade2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Military Rank Grade 00486,IN2,15,2,IS,,0141,6.5.7.15,,,,',
  `military_retire_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Military Retire Date 00488,IN2,17,8,DT,,,6.5.7.17,,,,',
  `military_service` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Military Service 00485,IN2,14,14,IS,,0140,6.5.7.14,,,,',
  `military_sponsor_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Military Sponsor Name 00480,IN2,9,250,XPN,Y,,6.5.7.9,,,,',
  `military_station` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Military Station 00484,IN2,13,25,ST,,,6.5.7.13,,,,',
  `military_status1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Military Status 00487,IN2,16,3,IS,,0142,6.5.7.16,,,,',
  `mother_maiden_name1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Mother Maiden Name 00109,IN2,40,250,XPN,Y,,6.5.7.40,,,,',
  `nationality4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Nationality 00739,IN2,41,0,CWE,,0212,6.5.7.41,,,,',
  `non_covered_insurance_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Non-Covered Insurance Code 00495,IN2,24,8,IS,Y,0143,6.5.7.24,,,,',
  `patient_member_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Patient Member Number 00801,IN2,61,250,CX,,,6.5.7.61,,,,',
  `patient_relationship_to_insured` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Patient Relationship to Insured 00811,IN2,72,705,CWE,,0344,6.5.7.72,,,,',
  `payor_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Payor ID 00496,IN2,25,250,CX,Y,,6.5.7.25,,,,',
  `payor_subscriber_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Payor Subscriber ID 00497,IN2,26,250,CX,Y,,6.5.7.26,,,,',
  `policy_scope` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Policy Scope 00799,IN2,59,2,IS,,0312,6.5.7.59,,,,',
  `policy_source` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Policy Source 00800,IN2,60,2,IS,,0313,6.5.7.60,,,,',
  `policy_type_amount` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Policy Type Amount 00500,IN2,29,56,PTA,Y,,6.5.7.29,,,,',
  `primary_language4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Primary Language 00118,IN2,34,705,CWE,,0296,6.5.7.34,,,,',
  `protection_indicator2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Protection Indicator 00744,IN2,37,0,ID,,0136,6.5.7.37,,,,',
  `publicity_code3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Publicity Code 00743,IN2,36,705,CWE,,0215,6.5.7.36,,,,',
  `race4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Race 00113,IN2,71,705,CWE,Y,0005,6.5.7.71,,,,',
  `relationship_to_the_patient_start_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Relationship to the Patient Start Date 00795,IN2,55,8,DT,,,6.5.7.55,,,,',
  `relationship_to_the_patient_stop_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Relationship to the Patient Stop Date 00796,IN2,56,8,DT,Y,,6.5.7.56,,,,',
  `religion1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Religion 00120,IN2,39,705,CWE,,0006,6.5.7.39,,,,',
  `room_coverage_type_amount` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Room Coverage Type Amount 00499,IN2,28,82,RMC,Y,,6.5.7.28,,,,',
  `special_coverage_approval_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Special Coverage Approval Name 00493,IN2,22,250,XPN,Y,,6.5.7.22,,,,',
  `special_coverage_approval_title` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Special Coverage Approval Title 00494,IN2,23,30,ST,,,6.5.7.23,,,,',
  `stoploss_limit_flag` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Stoploss Limit Flag 00808,IN2,68,1,ID,,0136,6.5.7.68,,,,',
  `student_indicator3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Student Indicator 00745,IN2,38,2,IS,,0231,6.5.7.38,,,,',
  `suspend_flag` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Suspend Flag 00806,IN2,66,1,ID,,0136,6.5.7.66,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_in3`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_in3` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `appeal_reason` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Appeal Reason 00518,IN3,17,250,CWE,,0345,6.5.8.17,,,,',
  `case_manager` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Case Manager 00522,IN3,21,48,ST,,,6.5.8.21,,,,',
  `certification_agency` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Certification Agency 00519,IN3,18,250,CWE,,0346,6.5.8.18,,,,',
  `certification_agency_phone_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Certification Agency Phone Number 00520,IN3,19,250,XTN,Y,,6.5.8.19,,,,',
  `certification_begin_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Certification Begin Date 00510,IN3,9,8,DT,,,6.5.8.9,,,,',
  `certification_contact` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Certification Contact 00516,IN3,15,48,ST,,,6.5.8.15,,,,',
  `certification_contact_phone_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Certification Contact Phone Number 00517,IN3,16,250,XTN,Y,,6.5.8.16,,,,',
  `certification_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Certification Date Time 00507,IN3,6,24,DTM,,,6.5.8.6,,,,',
  `certification_end_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Certification End Date 00511,IN3,10,8,DT,,,6.5.8.10,,,,',
  `certification_modify_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Certification Modify Date Time 00508,IN3,7,24,DTM,,,6.5.8.7,,,,',
  `certification_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Certification Number 00503,IN3,2,250,CX,,,6.5.8.2,,,,',
  `certification_required` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Certification Required 00505,IN3,4,1,ID,,0136,6.5.8.4,,,,',
  `certified_by` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Certified By 00504,IN3,3,250,XCN,Y,,6.5.8.3,,,,',
  `days` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Days 00512,IN3,11,6,DTN,,,6.5.8.11,,,,',
  `non_concur_code_description` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Non-Concur Code Description 00513,IN3,12,250,CWE,,0233,6.5.8.12,,,,',
  `non_concur_effective_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Non-Concur Effective Date Time 00514,IN3,13,24,DTM,,,6.5.8.13,,,,',
  `operator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Operator 00509,IN3,8,250,XCN,Y,,6.5.8.8,,,,',
  `penalty` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Penalty 00506,IN3,5,23,MOP,,,6.5.8.5,,,,',
  `physician_reviewer` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Physician Reviewer 00515,IN3,14,250,XCN,Y,0010,6.5.8.14,,,,',
  `pre-certification_requirement` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Pre-Certification Requirement 00521,IN3,20,40,ICD,Y,,6.5.8.20,,,,',
  `second_opinion_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Second Opinion Date 00523,IN3,22,8,DT,,,6.5.8.22,,,,',
  `second_opinion_documentation_received` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Second Opinion Documentation Received 00525,IN3,24,1,IS,Y,0152,6.5.8.24,,,,',
  `second_opinion_physician` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Second Opinion Physician 00526,IN3,25,250,XCN,Y,0010,6.5.8.25,,,,',
  `second_opinion_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Second Opinion Status 00524,IN3,23,1,IS,,0151,6.5.8.23,,,,',
  `set_id_in3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - IN3 00502,IN3,1,4,SI,,,6.5.8.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_inv`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_inv` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `available_quantity` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Available Quantity 01380,INV,9,20,NM,,,13.4.4.9,,,,',
  `consumption_quantity` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Consumption Quantity 01381,INV,10,20,NM,,,13.4.4.10,,,,',
  `container_carrier_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Container Carrier Identifier 01376,INV,5,705,CWE,,9999,13.4.4.5,,,,',
  `current_quantity` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Current Quantity 01379,INV,8,20,NM,,,13.4.4.8,,,,',
  `expiration_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Expiration Date Time 01383,INV,12,24,DTM,,,13.4.4.12,,,,',
  `first_used_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' First Used Date Time 01384,INV,13,24,DTM,,,13.4.4.13,,,,',
  `initial_quantity` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Initial Quantity 01378,INV,7,20,NM,,,13.4.4.7,,,,',
  `inventory_container_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inventory Container Identifier 01532,INV,4,705,CWE,,9999,13.4.4.4,,,,',
  `manufacturer_identifier2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Manufacturer Identifier 00286,INV,17,705,CWE,,0385,13.4.4.17,,,,',
  `manufacturer_lot_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Manufacturer Lot Number 01387,INV,16,200,ST,,,13.4.4.16,,,,',
  `on_board_stability_duration` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' On Board Stability Duration 01385,INV,14,0,TQ,,,13.4.4.14,,,,',
  `on_board_stability_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' On Board Stability Time 01626,INV,19,722,CQ,,,13.4.4.19,,,,',
  `position_on_carrier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Position on Carrier 01377,INV,6,705,CWE,,9999,13.4.4.6,,,,',
  `quantity_units` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Quantity Units 01382,INV,11,705,CWE,,9999,13.4.4.11,,,,',
  `substance_identifier1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Substance Identifier 01372,INV,1,705,CWE,,0451,13.4.4.1,,,,',
  `substance_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Substance Status 01373,INV,2,705,CWE,Y,0383,13.4.4.2,,,,',
  `substance_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Substance Type 01374,INV,3,705,CWE,,0384,13.4.4.3,,,,',
  `supplier_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Supplier Identifier 01389,INV,18,705,CWE,,0386,13.4.4.18,,,,',
  `target_value` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Target Value 01896,INV,20,722,CQ,,,13.4.4.20,,,,',
  `test_fluid_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Test Fluid Identifier(s) 01386,INV,15,705,CWE,Y,9999,13.4.4.15,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_ipc`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_ipc` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `accession_identifier1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Accession Identifier 01330,IPC,1,427,EI,,,4.5.6.1,,,,',
  `modality` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Modality 01661,IPC,5,16,CWE,,9999,4.5.6.5,,,,',
  `protocol_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Protocol Code 01662,IPC,6,250,CWE,Y,9999,4.5.6.6,,,,',
  `requested_procedure_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Requested Procedure ID 01658,IPC,2,22,EI,,,4.5.6.2,,,,',
  `scheduled_procedure_step_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Scheduled Procedure Step ID 01660,IPC,4,22,EI,,,4.5.6.4,,,,',
  `scheduled_procedure_step_location` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Scheduled Procedure Step Location 01664,IPC,8,250,CWE,Y,9999,4.5.6.8,,,,',
  `scheduled_station_ae_title` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Scheduled Station AE Title 01665,IPC,9,16,ST,,,4.5.6.9,,,,',
  `scheduled_station_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Scheduled Station Name 01663,IPC,7,22,EI,,,4.5.6.7,,,,',
  `study_instance_uid` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Study Instance UID 01659,IPC,3,70,EI,,,4.5.6.3,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_ipr`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_ipr` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `adjudicated_paid_amount` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Adjudicated Paid Amount 02035,IPR,6,254,CP,,,16.4.9.6,,,,',
  `expected_payment_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Expected Payment Date Time 02036,IPR,7,26,DTM,,,16.4.9.7,,,,',
  `ipr_checksum` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' IPR Checksum 02037,IPR,8,10,ST,,,16.4.9.8,,,,',
  `ipr_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' IPR Date Time 02034,IPR,5,26,DTM,,,16.4.9.5,,,,',
  `ipr_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' IPR Identifier 02030,IPR,1,73,EI,,,16.4.9.1,,,,',
  `ipr_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' IPR Status 02033,IPR,4,177,CWE,,0571,16.4.9.4,,,,',
  `payer_cross_reference_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Payer Cross Reference Identifier 02032,IPR,3,73,EI,,,16.4.9.3,,,,',
  `provider_cross_reference_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Provider Cross Reference Identifier 02031,IPR,2,73,EI,,,16.4.9.2,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_isd`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_isd` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `interaction_active_state` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Interaction Active State 01328,ISD,3,705,CWE,,0387,13.4.2.3,,,,',
  `interaction_type_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Interaction Type Identifier 01327,ISD,2,705,CWE,,0368,13.4.2.2,,,,',
  `reference_interaction_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Reference Interaction Number 01326,ISD,1,20,NM,,,13.4.2.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_ivt`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_ivt` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `bin_location_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Bin Location Identifier 02066,IVT,7,250,EI,Y,,17.4.7.7,,,,',
  `consignment_item_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Consignment Item Indicator 02075,IVT,16,4,CNE,,0532,17.4.7.16,,,,',
  `default_inventory_asset_account` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Default Inventory Asset Account 02069,IVT,10,16,EI,,,17.4.7.10,,,,',
  `inventory_location_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inventory Location Identifier 02063,IVT,2,250,EI,,,17.4.7.2,,,,',
  `inventory_location_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inventory Location Name 02277,IVT,3,999,ST,,,17.4.7.3,,,,',
  `issue_packaging` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Issue Packaging 02068,IVT,9,250,CWE,,,17.4.7.9,,,,',
  `item_importance_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Item Importance Code 02073,IVT,14,250,CWE,,0634,17.4.7.14,,,,',
  `item_status1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Item Status 02065,IVT,6,250,CWE,,0625,17.4.7.6,,,,',
  `latex_free_substitute_item_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Latex-Free Substitute Item Identifier 02079,IVT,20,250,EI,,,17.4.7.20,,,,',
  `operating_room_par_level_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Operating Room Par Level Indicator 02085,IVT,26,4,CNE,,0532,17.4.7.26,,,,',
  `order_packaging` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Order Packaging 02067,IVT,8,250,CWE,,,17.4.7.8,,,,',
  `patient_chargeable_indicator2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Patient Chargeable Indicator 02070,IVT,11,4,CNE,,0532,17.4.7.11,,,,',
  `recommended_maximum_days_inventory` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Recommended Maximum Days Inventory 02082,IVT,23,4,NM,,,17.4.7.23,,,,',
  `recommended_order_amount` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Recommended Order Amount 02084,IVT,25,8,NM,,,17.4.7.25,,,,',
  `recommended_order_point` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Recommended Order Point 02083,IVT,24,8,NM,,,17.4.7.24,,,,',
  `recommended_reorder_theory` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Recommended Reorder Theory 02080,IVT,21,250,CWE,,0642,17.4.7.21,,,,',
  `recommended_safety_stock_days` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Recommended Safety Stock Days 02081,IVT,22,4,NM,,,17.4.7.22,,,,',
  `reusable_cost` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Reusable Cost 02077,IVT,18,12,CP,,,17.4.7.18,,,,',
  `reusable_item_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Reusable Item Indicator 02076,IVT,17,4,CNE,,0532,17.4.7.17,,,,',
  `set_id_ivt` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set Id - IVT 02062,IVT,1,4,SI,,,17.4.7.1,,,,',
  `source_location_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Source Location Identifier 02064,IVT,4,250,EI,,,17.4.7.4,,,,',
  `source_location_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Source Location Name 02278,IVT,5,999,ST,,,17.4.7.5,,,,',
  `stocked_item_indicator1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Stocked Item Indicator 02074,IVT,15,4,CNE,,0532,17.4.7.15,,,,',
  `substitute_item_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Substitute Item Identifier 02078,IVT,19,250,EI,Y,,17.4.7.19,,,,',
  `transaction_amount_unit2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Transaction amount - unit 00366,IVT,13,12,CP,,,17.4.7.13,,,,',
  `transaction_code2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Transaction Code 00361,IVT,12,250,CWE,,0132,17.4.7.12,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_lan`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_lan` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `language_ability_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Language Ability Code 01457,LAN,3,250,CWE,Y,0403,15.4.4.3,,,,',
  `language_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Language Code 01456,LAN,2,250,CWE,,0296,15.4.4.2,,,,',
  `language_proficiency_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Language Proficiency Code 01458,LAN,4,250,CWE,,0404,15.4.4.4,,,,',
  `set_id_lan` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - LAN 01455,LAN,1,60,SI,,,15.4.4.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_lcc`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_lcc` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `accommodation_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Accommodation Type 00980,LCC,3,250,CWE,Y,0129,8.9.6.3,,,,',
  `charge_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Charge Code 00981,LCC,4,250,CWE,Y,0132,8.9.6.4,,,,',
  `location_department2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Location Department 00964,LCC,2,250,CWE,,0264,8.9.6.2,,,,',
  `primary_key_value_lcc` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Primary Key Value - LCC 00979,LCC,1,200,PL,,,8.9.6.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_lch`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_lch` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `location_characteristic_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Location Characteristic ID 01295,LCH,4,250,CWE,,0324,8.9.3.4,,,,',
  `location_characteristic_value_lch` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Location Characteristic Value - LCH 01294,LCH,5,250,CWE,,0136,8.9.3.5,,,,',
  `primary_key_value_lch` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Primary Key Value - LCH 01305,LCH,1,200,PL,,,8.9.3.1,,,,',
  `segment_action_code1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Segment Action Code 00763,LCH,2,3,ID,,0206,8.9.3.2,,,,',
  `segment_unique_key2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Segment Unique Key 00764,LCH,3,80,EI,,,8.9.3.3,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_ldp`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_ldp` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `activation_date_ldp` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Activation Date - LDP 00969,LDP,7,24,DTM,,,8.9.5.7,,,,',
  `active_inactive_flag4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Active Inactive Flag 00675,LDP,6,1,ID,,0183,8.9.5.6,,,,',
  `contact_phone` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Contact Phone 00978,LDP,11,250,XTN,,,8.9.5.11,,,,',
  `inactivated_reason` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inactivated Reason 00971,LDP,9,80,ST,,,8.9.5.9,,,,',
  `inactivation_date_ldp` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inactivation Date - LDP 00970,LDP,8,24,DTM,,,8.9.5.8,,,,',
  `location_cost_center` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Location Cost Center 01584,LDP,12,250,CWE,,0462,8.9.5.12,,,,',
  `location_department1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Location Department 00964,LDP,2,250,CWE,,0264,8.9.5.2,,,,',
  `location_service` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Location Service 00965,LDP,3,3,IS,Y,0069,8.9.5.3,,,,',
  `primary_key_value_ldp` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Primary Key Value - LDP 00963,LDP,1,200,PL,,,8.9.5.1,,,,',
  `specialty_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specialty Type 00966,LDP,4,250,CWE,Y,0265,8.9.5.4,,,,',
  `valid_patient_classes2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Valid Patient Classes 00967,LDP,5,1,IS,Y,0004,8.9.5.5,,,,',
  `visiting_hours` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Visiting Hours 00976,LDP,10,80,VH,Y,0267,8.9.5.10,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_loc`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_loc` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `license_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' License Number 00951,LOC,7,250,CWE,Y,0461,8.9.2.7,,,,',
  `location_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Location Address 00948,LOC,5,250,XAD,Y,,8.9.2.5,,,,',
  `location_description` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Location Description 00944,LOC,2,48,ST,,,8.9.2.2,,,,',
  `location_equipment` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Location Equipment 00953,LOC,8,3,IS,Y,0261,8.9.2.8,,,,',
  `location_phone` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Location Phone 00949,LOC,6,250,XTN,Y,,8.9.2.6,,,,',
  `location_service_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Location Service Code 01583,LOC,9,1,IS,,0442,8.9.2.9,,,,',
  `location_type_loc` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Location Type - LOC 00945,LOC,3,2,IS,Y,0260,8.9.2.3,,,,',
  `organization_name_loc` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Organization Name - LOC 00947,LOC,4,250,XON,Y,,8.9.2.4,,,,',
  `primary_key_value_loc` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Primary Key Value - LOC 01307,LOC,1,200,PL,,,8.9.2.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_lrl`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_lrl` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `location_relationship_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Location Relationship ID 01277,LRL,4,250,CWE,,0325,8.9.4.4,,,,',
  `organizational_location_relationship_value` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Organizational Location Relationship Value 01301,LRL,5,250,XON,Y,,8.9.4.5,,,,',
  `patient_location_relationship_value` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Patient Location Relationship Value 01292,LRL,6,80,PL,,,8.9.4.6,,,,',
  `primary_key_value_lrl` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Primary Key Value - LRL 00943,LRL,1,200,PL,,,8.9.4.1,,,,',
  `segment_action_code6` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Segment Action Code 00763,LRL,2,3,ID,,0206,8.9.4.2,,,,',
  `segment_unique_key1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Segment Unique Key 00764,LRL,3,80,EI,,,8.9.4.3,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_mfa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_mfa` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `event_completion_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Event Completion Date Time 00668,MFA,3,24,DTM,,,8.5.3.3,,,,',
  `mfn_control_id1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' MFN Control ID 00665,MFA,2,20,ST,,,8.5.3.2,,,,',
  `mfn_record_level_error_return` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' MFN Record Level Error Return 00669,MFA,4,250,CWE,,0181,8.5.3.4,,,,',
  `primary_key_value_mfa` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Primary Key Value - MFA 01308,MFA,5,250,varies,Y,9999,8.5.3.5,,,,',
  `primary_key_value_type_mfa` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Primary Key Value Type - MFA 01320,MFA,6,3,ID,Y,0355,8.5.3.6,,,,',
  `record_level_event_code1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Record-Level Event Code 00664,MFA,1,3,ID,,0180,8.5.3.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_mfe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_mfe` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `effective_date_time1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Effective Date Time 00662,MFE,3,24,DTM,,,8.5.2.3,,,,',
  `entered_by5` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Entered By 00224,MFE,7,3220,XCN,,,8.5.2.7,,,,',
  `entered_date_time2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Entered Date Time 00661,MFE,6,24,DTM,,,8.5.2.6,,,,',
  `mfn_control_id2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' MFN Control ID 00665,MFE,2,20,ST,,,8.5.2.2,,,,',
  `primary_key_value_mfe` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Primary Key Value - MFE 00667,MFE,4,200,varies,Y,9999,8.5.2.4,,,,',
  `primary_key_value_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Primary Key Value Type 01319,MFE,5,3,ID,Y,0355,8.5.2.5,,,,',
  `record_level_event_code2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Record-Level Event Code 00664,MFE,1,3,ID,,0180,8.5.2.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_mrg`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_mrg` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `prior_alternate_patient_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Prior Alternate Patient ID 00212,MRG 2,0,CX,Y,,3.4.9.2,,,,,',
  `prior_alternate_visit_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Prior Alternate Visit ID 01280,MRG 6,250,CX,,,3.4.9.6,,,,,',
  `prior_patient_account_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Prior Patient Account Number 00213,MRG 3,250,CX,,,3.4.9.3,,,,,',
  `prior_patient_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Prior Patient ID 00214,MRG 4,0,CX,,,3.4.9.4,,,,,',
  `prior_patient_identifier_list` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Prior Patient Identifier List 00211,MRG 1,250,CX,Y,,3.4.9.1,,,,,',
  `prior_patient_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Prior Patient Name 01281,MRG,7,250,XPN,Y,0200,3.4.9.7,,,,',
  `prior_visit_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Prior Visit Number 01279,MRG 5,250,CX,,,3.4.9.5,,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_msa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_msa` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `acknowledgment_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Acknowledgment Code 00018,MSA,1,2,ID,,0008,2.14.8.1,,,,',
  `delayed_acknowledgment_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Delayed Acknowledgment Type 00022,MSA,5,0,-,,,2.14.8.5,,,,',
  `error_condition` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Error Condition 00023,MSA,6,0,CE,,0357,2.14.8.6,,,,',
  `expected_sequence_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Expected Sequence Number 00021,MSA,4,15,NM,,,2.14.8.4,,,,',
  `message_control_id2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Message Control ID 00010,MSA,2,199,ST,,,2.14.8.2,,,,',
  `message_waiting_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Message Waiting Number 01827,MSA,7,5,NM,,,2.14.8.7,,,,',
  `message_waiting_priority` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Message Waiting Priority 01828,MSA,8,1,ID,,0520,2.14.8.8,,,,',
  `text_message` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Text Message 00020,MSA,3,0,ST,,,2.14.8.3,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_msh`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_msh` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `accept_acknowledgment_type` VARCHAR(2) NOT NULL DEFAULT ' ' COMMENT ' Accept Acknowledgment Type 00015,MSH,15,2,ID,,0155,2.14.9.15,,,,',
  `alternate_character_set_handling_scheme` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Alternate Character Set Handling Scheme 01317,MSH,20,20,ID,,0356,2.14.9.20,,,,',
  `application_acknowledgment_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Application Acknowledgment Type 00016,MSH,16,2,ID,,0155,2.14.9.16,,,,',
  `character_set` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Character Set 00692,MSH,18,16,ID,Y,0211,2.14.9.18,,,,',
  `continuation_pointer2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Continuation Pointer 00014,MSH,14,180,ST,,,2.14.9.14,,,,',
  `country_code1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Country Code 00017,MSH,17,3,ID,,0399,2.14.9.17,,,,',
  `date_time_of_message` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Date Time of Message 00007,MSH,7,24,DTM,,,2.14.9.7,,,,',
  `encoding_characters` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Encoding Characters 00002,MSH,2,4,ST,,,2.14.9.2,,,,',
  `field_separator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Field Separator 00001,MSH,1,1,ST,,,2.14.9.1,,,,',
  `message_control_id1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Message Control ID 00010,MSH,10,199,ST,,,2.14.9.10,,,,',
  `message_profile_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Message Profile Identifier 01598,MSH,21,427,EI,Y,,2.14.9.21,,,,',
  `message_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Message Type 00009,MSH,9,15,MSG,,,2.14.9.9,,,,',
  `principal_language_of_message` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Principal Language Of Message 00693,MSH,19,250,CWE,,,2.14.9.19,,,,',
  `processing_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Processing ID 00011,MSH,11,3,PT,,,2.14.9.11,,,,',
  `receiving_application` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Receiving Application 00005,MSH,5,227,HD,,0361,2.14.9.5,,,,',
  `receiving_facility` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Receiving Facility 00006,MSH,6,227,HD,,0362,2.14.9.6,,,,',
  `receiving_network_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Receiving Network Address 01826,MSH,25,227,HD,,,2.14.9.25,,,,',
  `receiving_responsible_organization` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Receiving Responsible Organization 01824,MSH,23,567,XON,,,2.14.9.23,,,,',
  `security` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Security 00008,MSH,8,40,ST,,,2.14.9.8,,,,',
  `sending_application` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Sending Application 00003,MSH,3,227,HD,,0361,2.14.9.3,,,,',
  `sending_facility` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Sending Facility 00004,MSH,4,227,HD,,0362,2.14.9.4,,,,',
  `sending_network_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Sending Network Address 01825,MSH,24,227,HD,,,2.14.9.24,,,,',
  `sending_responsible_organization` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Sending Responsible Organization 01823,MSH,22,567,XON,,,2.14.9.22,,,,',
  `sequence_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Sequence Number 00013,MSH,13,15,NM,,,2.14.9.13,,,,',
  `version_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Version ID 00012,MSH,12,60,VID,,,2.14.9.12,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_nck`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_nck` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `system_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' System Date Time 01172,NCK,1,24,DTM,,,14.4.1.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_nds`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_nds` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `notification_alert_severity` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Notification Alert Severity 01400,NDS,3,705,CWE,,0367,13.4.7.3,,,,',
  `notification_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Notification Code 01401,NDS,4,705,CWE,,9999,13.4.7.4,,,,',
  `notification_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Notification Date Time 01399,NDS,2,24,DTM,,,13.4.7.2,,,,',
  `notification_reference_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Notification Reference Number 01398,NDS,1,20,NM,,,13.4.7.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_nk1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_nk1` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Address 00193,NK1,4,250,XAD,Y,,3.4.5.4,,,,',
  `administrative_sex3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Administrative Sex 00111,NK1,15,1,IS,,0001,3.4.5.15,,,,',
  `ambulatory_status3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Ambulatory Status 00145,NK1,18,2,IS,Y,0009,3.4.5.18,,,,',
  `business_phone_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Business Phone Number 00195,NK1,6,250,XTN,Y,,3.4.5.6,,,,',
  `citizenship1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Citizenship 00129,NK1,19,705,CWE,Y,0171,3.4.5.19,,,,',
  `contact_person_social_security_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Contact Person Social Security Number 00754,NK1,37,16,ST,,,3.4.5.37,,,,',
  `contact_persons_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Contact Person Address 00750,NK1,32,250,XAD,Y,,3.4.5.32,,,,',
  `contact_persons_name1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Contact Person Name 00748,NK1,30,250,XPN,Y,0200,3.4.5.30,,,,',
  `contact_persons_telephone_number1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Contact Person Telephone Number 00749,NK1,31,250,XTN,Y,,3.4.5.31,,,,',
  `contact_reason2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Contact Reason 00747,NK1,29,705,CWE,Y,0222,3.4.5.29,,,,',
  `contact_role2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Contact Role 00196,NK1,7,705,CWE,,0131,3.4.5.7,,,,',
  `date_time_of_birth3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Date Time of Birth 00110,NK1,16,24,DTM,,,3.4.5.16,,,,',
  `end_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' End Date 00198,NK1,9,8,DT,,,3.4.5.9,,,,',
  `ethnic_group1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Ethnic Group 00125,NK1,28,705,CWE,Y,0189,3.4.5.28,,,,',
  `handicap3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Handicap 00753,NK1,36,2,IS,,0295,3.4.5.36,,,,',
  `job_status2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Job Status 00752,NK1,34,2,IS,,0311,3.4.5.34,,,,',
  `living_arrangement2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Living Arrangement 00742,NK1,21,2,IS,,0220,3.4.5.21,,,,',
  `living_dependency4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Living Dependency 00755,NK1,17,2,IS,Y,0223,3.4.5.17,,,,',
  `marital_status2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Marital Status 00119,NK1,14,705,CWE,,0002,3.4.5.14,,,,',
  `mother_maiden_name2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Mother Maiden Name 00109,NK1,26,250,XPN,Y,,3.4.5.26,,,,',
  `name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Name 00191,NK1,2,250,XPN,Y,0200,3.4.5.2,,,,',
  `nationality3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Nationality 00739,NK1,27,0,CWE,,0212,3.4.5.27,,,,',
  `next_of_kin1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Next of Kin  Associated Parties Employee Number 00201,NK1,12,250,CX,,,3.4.5.12,,,,',
  `next_of_kin2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Next of Kin  Associated Parties Job Code Class 00200,NK1,11,20,JCC,,,3.4.5.11,,,,',
  `next_of_kin_birth_place` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Next of Kin Birth Place 01905,NK1,38,250,ST,,,3.4.5.38,,,,',
  `next_of_kin_associated_party_identifiers` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Next of Kin Associated Party Identifiers 00751,NK1,33,250,CX,Y,,3.4.5.33,,,,',
  `organization_name_nk1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Organization Name - NK1 00202,NK1,13,250,XON,Y,,3.4.5.13,,,,',
  `phone_number1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Phone Number 00194,NK1,5,250,XTN,Y,,3.4.5.5,,,,',
  `primary_language2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Primary Language 00118,NK1,20,705,CWE,,0296,3.4.5.20,,,,',
  `protection_indicator4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Protection Indicator 00744,NK1,23,0,ID,,0136,3.4.5.23,,,,',
  `publicity_code1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Publicity Code 00743,NK1,22,705,CWE,,0215,3.4.5.22,,,,',
  `race2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Race 00113,NK1,35,705,CWE,Y,0005,3.4.5.35,,,,',
  `relationship` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Relationship 00192,NK1,3,705,CWE,,0063,3.4.5.3,,,,',
  `religion3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Religion 00120,NK1,25,705,CWE,,0006,3.4.5.25,,,,',
  `set_id_nk1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - NK1 00190,NK1,1,4,SI,,,3.4.5.1,,,,',
  `start_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Start Date 00197,NK1,8,8,DT,,,3.4.5.8,,,,',
  `student_indicator1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Student Indicator 00745,NK1,24,2,IS,,0231,3.4.5.24,,,,',
  `vip_indicator3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' VIP Indicator 00146,NK1,39,2,IS,,0099,3.4.5.39,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_npu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_npu` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `bed_location` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Bed Location 00209,NPU,1,80,PL,,,3.4.8.1,,,,',
  `bed_status2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Bed Status 00170,NPU,2,0,IS,,0116,3.4.8.2,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_nsc`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_nsc` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `application_change_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Application Change Type 01188,NSC,1,4,IS,,0409,14.4.2.1,,,,',
  `current_application` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Current Application 01191,NSC,4,30,HD,,,14.4.2.4,,,,',
  `current_cpu` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Current CPU 01189,NSC,2,30,ST,,,14.4.2.2,,,,',
  `current_facility` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Current Facility 01192,NSC,5,30,HD,,,14.4.2.5,,,,',
  `current_fileserver` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Current Fileserver 01190,NSC,3,30,ST,,,14.4.2.3,,,,',
  `new_application` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' New Application 01195,NSC,8,30,HD,,,14.4.2.8,,,,',
  `new_cpu` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' New CPU 01193,NSC,6,30,ST,,,14.4.2.6,,,,',
  `new_facility` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' New Facility 01196,NSC,9,30,HD,,,14.4.2.9,,,,',
  `new_fileserver` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' New Fileserver 01194,NSC,7,30,ST,,,14.4.2.7,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_nte`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_nte` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `comment2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Comment 00098,NTE,3,65536 FT,Y,,2.14.10.3,,,,,',
  `comment_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Comment Type 01318,NTE,4,250,CWE,,0364,2.14.10.4,,,,',
  `effective_start_date1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Effective Start Date 01004,NTE,7,24,DTM,,,2.14.10.7,,,,',
  `entered_by2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Entered By 00224,NTE,5,3220,XCN,,,2.14.10.5,,,,',
  `entered_date_time3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Entered Date Time 00661,NTE,6,24,DTM,,,2.14.10.6,,,,',
  `expiration_date3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Expiration Date 02185,NTE,8,24,DTM,,,2.14.10.8,,,,',
  `set_id_nte` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - NTE 00096,NTE,1,4,SI,,,2.14.10.1,,,,',
  `source_of_comment` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Source of Comment 00097,NTE,2,8,ID,,0105,2.14.10.2,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_nts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_nts` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `application_controllevel_errors` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Application control-level Errors 01187,NST,15,10,NM,,,14.4.3.15,,,,',
  `checksum_errors_received` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Checksum Errors Received 01182,NST,10,10,NM,,,14.4.3.10,,,,',
  `connect_timeouts` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Connect Timeouts 01185,NST,13,10,NM,,,14.4.3.13,,,,',
  `length_errors_received` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Length Errors Received 01183,NST,11,10,NM,,,14.4.3.11,,,,',
  `messages_received` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Messages Received 01180,NST,8,10,NM,,,14.4.3.8,,,,',
  `messages_sent` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Messages Sent 01181,NST,9,10,NM,,,14.4.3.9,,,,',
  `other_errors_received` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Other Errors Received 01184,NST,12,10,NM,,,14.4.3.12,,,,',
  `receive_character_count` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Receive Character Count 01178,NST,6,10,NM,,,14.4.3.6,,,,',
  `receive_timeouts` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Receive Timeouts 01186,NST,14,10,NM,,,14.4.3.14,,,,',
  `send_character_count` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Send Character Count 01179,NST,7,10,NM,,,14.4.3.7,,,,',
  `source_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Source Identifier 01174,NST,2,30,ST,,,14.4.3.2,,,,',
  `source_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Source Type 01175,NST,3,3,ID,,0332,14.4.3.3,,,,',
  `statistics_available` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Statistics Available 01173,NST,1,1,ID,,0136,14.4.3.1,,,,',
  `statistics_end` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Statistics End 01177,NST,5,24,DTM,,,14.4.3.5,,,,',
  `statistics_start` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Statistics Start 01176,NST,4,24,DTM,,,14.4.3.4,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_obr`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_obr` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `OBR_1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - OBR (SI) optional ',
  `OBR_2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Placer Order Number (EI) optional ',
  `OBR_3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Filler Order Number (EI) optional ',
  `OBR_4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Universal Service Identifier (CWE)  ',
  `OBR_5` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Priority (ID) optional ',
  `OBR_6` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Requested Date-- Time (DTM) optional ',
  `OBR_7` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Observation Date-- Time # (DTM) optional ',
  `OBR_8` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Observation End Date-- Time # (DTM) optional ',
  `OBR_9` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Collection Volume --  (CQ) optional ',
  `OBR_10` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Collector Identifier --  (XCN) optional repeating',
  `OBR_11` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Action Code --  (ID) optional ',
  `OBR_12` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Danger Code (CWE) optional ',
  `OBR_13` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Relevant Clinical Information (ST) optional ',
  `OBR_14` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Received Date-- Time (DTM) optional ',
  `OBR_15` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Source (SPS) optional ',
  `OBR_16` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Ordering Provider (XCN) optional repeating',
  `OBR_17` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Order Callback Phone Number (XTN) optional repeating',
  `OBR_18` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Placer Field 1 (ST) optional ',
  `OBR_19` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Placer Field 2 (ST) optional ',
  `OBR_20` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Filler Field 1 + (ST) optional ',
  `OBR_21` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Filler Field 2 + (ST) optional ',
  `OBR_22` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Results Rpt-- Status Chng - Date-- Time + (DTM) optional ',
  `OBR_23` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Charge to Practice + (MOC) optional ',
  `OBR_24` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Diagnostic Serv Sect ID (ID) optional ',
  `OBR_25` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Result Status + (ID) optional ',
  `OBR_26` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Parent Result + (PRL) optional ',
  `OBR_27` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Quantity-- Timing (TQ) optional repeating',
  `OBR_28` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Result Copies To (XCN) optional repeating',
  `OBR_29` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Parent (EIP) optional ',
  `OBR_30` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Transportation Mode (ID) optional ',
  `OBR_31` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Reason for Study (CWE) optional repeating',
  `OBR_32` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Principal Result Interpreter + (NDL) optional ',
  `OBR_33` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Assistant Result Interpreter + (NDL) optional repeating',
  `OBR_34` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Technician + (NDL) optional repeating',
  `OBR_35` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Transcriptionist + (NDL) optional repeating',
  `OBR_36` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Scheduled Date-- Time + (DTM) optional ',
  `OBR_37` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Number of Sample Containers --  (NM) optional ',
  `OBR_38` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Transport Logistics of Collected Sample --  (CWE) optional repeating',
  `OBR_39` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Collector Comment --  (CWE) optional repeating',
  `OBR_40` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Transport Arrangement Responsibility (CWE) optional ',
  `OBR_41` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Transport Arranged (ID) optional ',
  `OBR_42` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Escort Required (ID) optional ',
  `OBR_43` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Planned Patient Transport Comment (CWE) optional repeating',
  `OBR_44` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Procedure Code (CNE) optional ',
  `OBR_45` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Procedure Code Modifier (CNE) optional repeating',
  `OBR_46` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Placer Supplemental Service Information (CWE) optional repeating',
  `OBR_47` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Filler Supplemental Service Information (CWE) optional repeating',
  `OBR_48` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Medically Necessary Duplicate Procedure Reason (CWE) optional ',
  `OBR_49` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Result Handling (IS) optional ',
  `OBR_50` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Parent Universal Service Identifier (CWE) optional ',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_obx`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_obx` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `abnormal_flags` VARCHAR(5) NOT NULL DEFAULT ' ' COMMENT ' Abnormal Flags 00576,OBX,8,5,IS,,Y,,0078,,7.4.2.8,',
  `date_time_of_the_analysis` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Date Time of the Analysis 01480,OBX,19,24,DTM,,,9.6.2.19,,,,',
  `date_time_of_the_observation` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Date Time of the Observation 00582,OBX,14,24,DTM,,,7.16.5.14,,,,',
  `effective_date_of_reference_range` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Effective Date of Reference Range 00580,OBX,12,24,DTM,,,7.16.6.12,,,,',
  `equipment_instance_identifier1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Equipment Instance Identifier 01479,OBX,18,427,EI,Y,,7.16.6.18,,,,',
  `mood_code2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Mood Code 02182,OBX,22,705,CNE,,0725,7.4.2.22,,,,',
  `nature_of_abnormal_test` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Nature of Abnormal Test 00578,OBX,10,2,ID,Y,0080,7.4.2.10,,,,',
  `observation_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Observation Identifier 00571,OBX,3,705,CWE,,9999,7.16.5.3,,,,',
  `observation_instance_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Observation Instance Identifier 02180,OBX,21,427,EI,,,7.16.4.21,,,,',
  `observation_method` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Observation Method 00936,OBX,17,705,CWE,Y,,7.4.2.17,,,,',
  `observation_result_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Observation Result Status 00579,OBX,11,1,ID,,0085,7.4.2.11,,,,',
  `observation_site` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Observation Site 02179,OBX,20,705,CWE,Y,0163,7.4.2.20,,,,',
  `observation_sub-id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Observation Sub-ID 00572,OBX,4,20,ST,,,7.4.2.4,,,,',
  `observation_value` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Observation Value 00573,OBX,5,581,CD,,,7.16.3.5,,,,',
  `performing_organization_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Performing Organization Address 02284,OBX,24,2915,XAD,,,9.6.2.24,,,,',
  `performing_organization_medical_director` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Performing Organization Medical Director 02285,OBX,25,3220,XCN,,,7.16.3.25,,,,',
  `performing_organization_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Performing Organization Name 02283,OBX,23,570,XON,,,7.16.6.23,,,,',
  `probability` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Probability 00577,OBX,9,5,NM,,,7.16.6.9,,,,',
  `producer_id2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Producer ID 00583,OBX,15,705,CWE,,9999,7.16.3.15,,,,',
  `references_range` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' References Range 00575,OBX,7,60,ST,,,7.16.4.7,,,,',
  `responsible_observer` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Responsible Observer 00584,OBX,16,3220,XCN,Y,,7.16.5.16,,,,',
  `set_id_obx` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - OBX 00569,OBX,1,4,SI,,,7.16.6.1,,,,',
  `units2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Units 00574,OBX,6,705,CWE,,,7.16.3.6,,,,',
  `user_defined_access_checks` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' User Defined Access Checks 00581,OBX,13,20,ST,,,9.6.2.13,,,,',
  `value_type2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Value Type 00570,OBX,2,3,ID,,0125,7.4.2.2,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_ods`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_ods` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `service_period1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Service Period 00270,ODS,2,250,CWE,Y,9999,4.8.1.2,,,,',
  `text_instruction2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Text Instruction 00272,ODS,4,80,ST,Y,,4.8.1.4,,,,',
  `type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Type 00269,ODS,1,1,ID,,0159,4.8.1.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_om1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_om1` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `address_of_outside_sites` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Address of Outside Site(s) 00613,OM1,28,250,XAD,Y,,8.8.8.28,,,,',
  `challenge_information` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Challenge Information 00939,OM1,44,200,TX,,0256,8.8.8.44,,,,',
  `coded_representation_of_method` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Coded Representation of Method 00599,OM1,14,250,CWE,Y,9999,8.8.8.14,,,,',
  `confidentiality_code2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Confidentiality Code 00615,OM1,30,250,CWE,,0177,8.8.8.30,,,,',
  `contraindications_to_observations` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Contraindications to Observations 00618,OM1,33,250,CWE,,9999,8.8.8.33,,,,',
  `description_of_test_methods` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Description of Test Methods 00626,OM1,41,65536 TX,,,8.8.8.41,,,,,',
  `effective_date_time_of_change1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Effective Date Time of Change 00607,OM1,22,24,DTM,,,8.8.8.22,,,,',
  `factors_that_may_affect_the_observation` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Factors that may Affect the Observation 00624,OM1,39,200,TX,,,8.8.8.39,,,,',
  `fixed_canned_message` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Fixed Canned Message 00621,OM1,36,250,CWE,,9999,8.8.8.36,,,,',
  `interpretation_of_observations` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Interpretation of Observations 00617,OM1,32,65536 TX,,,8.8.8.32,,,,,',
  `kind_of_quantity_observed` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Kind of Quantity Observed 00937,OM1,42,250,CWE,,0254,8.8.8.42,,,,',
  `modality_of_imaging_measurement` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Modality Of Imaging Measurement 00942,OM1,47,250,CWE,,0259,8.8.8.47,,,,',
  `nature_of_service_test_observation` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Nature of Service Test Observation 00603,OM1,18,1,IS,,0174,8.8.8.18,,,,',
  `observation_description` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Observation Description 00591,OM1,6,200,TX,,,8.8.8.6,,,,',
  `observation_producing_department_section` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Observation Producing Department Section 00601,OM1,16,250,CWE,Y,9999,8.8.8.16,,,,',
  `orderability` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Orderability 00597,OM1,12,1,ID,,0136,8.8.8.12,,,,',
  `other_names` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Other Names 00593,OM1,8,200,ST,Y,,8.8.8.8,,,,',
  `patient_preparation` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Patient Preparation 00622,OM1,37,200,TX,,,8.8.8.37,,,,',
  `permitted_data_types` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Permitted Data Types 00588,OM1,3,12,ID,Y,0125,8.8.8.3,,,,',
  `phone_number_outside_site` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Phone Number of Outside Site 00614,OM1,29,250,XTN,,,8.8.8.29,,,,',
  `point_versus_interval` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Point Versus Interval 00938,OM1,43,250,CWE,,0255,8.8.8.43,,,,',
  `portable_device_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Portable Device Indicator 00600,OM1,15,1,ID,,0136,8.8.8.15,,,,',
  `preferred_long_name_for_the_observation` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Preferred Long Name for the Observation 00596,OM1,11,200,ST,,,8.8.8.11,,,,',
  `preferred_report_name_for_the_observation` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Preferred Report Name for the Observation 00594,OM1,9,30,ST,,,8.8.8.9,,,,',
  `procedure_medication` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Procedure Medication 00623,OM1,38,250,CWE,,9999,8.8.8.38,,,,',
  `processing_priority` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Processing Priority 00610,OM1,25,40,ID,Y,0168,8.8.8.25,,,,',
  `processing_time1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Processing Time 00609,OM1,24,20,NM,,,8.8.8.24,,,,',
  `producer_id1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Producer ID 00590,OM1,5,250,CWE,,9999,8.8.8.5,,,,',
  `producer_service_test_observation_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Producer Service Test Observation ID 00587,OM1,2,250,CWE,,9999,8.8.8.2,,,,',
  `reflex_tests_observations` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Reflex Tests Observations 00619,OM1,34,250,CWE,Y,9999,8.8.8.34,,,,',
  `relationship_modifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Relationship Modifier 00940,OM1,45,250,CWE,,0258,8.8.8.45,,,,',
  `report_display_order` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Report Display Order 00605,OM1,20,20,ST,,,8.8.8.20,,,,',
  `report_subheader` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Report Subheader 00604,OM1,19,250,CWE,,9999,8.8.8.19,,,,',
  `reporting_priority` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Reporting Priority 00611,OM1,26,5,ID,,0169,8.8.8.26,,,,',
  `rules_that_trigger_reflex_testing` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Rules that Trigger Reflex Testing 00620,OM1,35,80,TX,,,8.8.8.35,,,,',
  `specimen_required` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Required 00589,OM1,4,1,ID,,0136,8.8.8.4,,,,',
  `target_anatomic_site_of_test` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Target Anatomic Site Of Test 00941,OM1,46,250,CWE,,9999,8.8.8.46,,,,',
  `telephone_number_of_section` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Telephone Number of Section 00602,OM1,17,250,XTN,,,8.8.8.17,,,,',
  `typical_turn_around_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Typical Turn-Around Time 00608,OM1,23,20,NM,,,8.8.8.23,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_om2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_om2` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `corresponding_si_units_of_measure` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Corresponding SI Units of Measure 00629,OM2,4,250,CWE,,9999,8.8.9.4,,,,',
  `delta_check_criteria` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Delta Check Criteria 00634,OM2,9,250,DLT,Y,,8.8.9.9,,,,',
  `minimum_meaningful_increments` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Minimum Meaningful Increments 00635,OM2,10,20,NM,,,8.8.9.10,,,,',
  `range_of_decimal_precision` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Range of Decimal Precision 00628,OM2,3,10,NM,Y,,8.8.9.3,,,,',
  `si_conversion_factor` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' SI Conversion Factor 00630,OM2,5,60,TX,,,8.8.9.5,,,,',
  `units_of_measure` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Units of Measure 00627,OM2,2,250,CWE,,9999,8.8.9.2,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_om3`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_om3` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `preferred_coding_system` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Preferred Coding System 00636,OM3,2,250,CWE,,9999,8.8.10.2,,,,',
  `valid_coded_answers` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Valid Coded \"Answers\" 00637,OM3,3,250,CWE,Y,9999,8.8.10.3,,,,',
  `value_type1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Value Type 00570,OM3,7,3,ID,,0125,8.8.10.7,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_om4`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_om4` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `additive1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Additive 00647,OM4,7,705,CWE,,0371,8.8.11.7,,,,',
  `container_description` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Container Description 00643,OM4,3,60,TX,,,8.8.11.3,,,,',
  `container_units` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Container Units 00645,OM4,5,250,CWE,,9999,8.8.11.5,,,,',
  `container_volume1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Container Volume 00644,OM4,4,20,NM,,,8.8.11.4,,,,',
  `derived_specimen` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Derived Specimen 00642,OM4,2,1,ID,,0170,8.8.11.2,,,,',
  `minimum_collection_volume` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Minimum Collection Volume 00651,OM4,11,20,CQ,,,8.8.11.11,,,,',
  `normal_collection_volume` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Normal Collection Volume 00650,OM4,10,20,CQ,,,8.8.11.10,,,,',
  `preparation` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Preparation 00648,OM4,8,10240 TX,,,8.8.11.8,,,,,',
  `special_handling_requirements` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Special Handling Requirements 00649,OM4,9,10240 TX,,,8.8.11.9,,,,,',
  `specimen` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen 00646,OM4,6,250,CWE,,9999,8.8.11.6,,,,',
  `specimen_priorities` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Priorities 00653,OM4,13,1,ID,Y,0027,8.8.11.13,,,,',
  `specimen_requirements` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Requirements 00652,OM4,12,10240 TX,,,8.8.11.12,,,,,',
  `specimen_retention_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Retention Time 00654,OM4,14,20,CQ,,,8.8.11.14,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_om5`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_om5` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `observation_id_suffixes` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Observation ID Suffixes 00656,OM5,3,250,ST,,,8.8.12.3,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_om6`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_om6` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `derivation_rule` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Derivation Rule 00657,OM6,2,10240 TX,,,8.8.13.2,,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_om7`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_om7` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `category_description` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Category Description 01482,OM7,4,200,TX,,,8.8.14.4,,,,',
  `category_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Category Identifier 01481,OM7,3,250,CWE,Y,0412,8.8.14.3,,,,',
  `category_synonym` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Category Synonym 01483,OM7,5,200,ST,Y,,8.8.14.5,,,,',
  `consent_effective_end_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Consent Effective End Date Time 01492,OM7,14,24,DTM,,,8.8.14.14,,,,',
  `consent_effective_start_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Consent Effective Start Date Time 01491,OM7,13,24,DTM,,,8.8.14.13,,,,',
  `consent_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Consent Identifier 01490,OM7,12,250,CWE,,0413,8.8.14.12,,,,',
  `consent_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Consent Indicator 01489,OM7,11,1,ID,,0136,8.8.14.11,,,,',
  `consent_interval_quantity` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Consent Interval Quantity 01493,OM7,15,5,NM,,,8.8.14.15,,,,',
  `consent_interval_units` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Consent Interval Units 01494,OM7,16,250,CWE,,0414,8.8.14.16,,,,',
  `consent_waiting_period_quantity` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Consent Waiting Period Quantity 01495,OM7,17,5,NM,,,8.8.14.17,,,,',
  `consent_waiting_period_units` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Consent Waiting Period Units 01496,OM7,18,250,CWE,,0414,8.8.14.18,,,,',
  `effective_date_time_of_change2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Effective Date Time of Change 00607,OM7,19,24,DTM,,,8.8.14.19,,,,',
  `effective_test_service_end_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Effective Test Service End Date Time 01485,OM7,7,24,DTM,,,8.8.14.7,,,,',
  `effective_test_service_start_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Effective Test Service Start Date Time 01484,OM7,6,24,DTM,,,8.8.14.6,,,,',
  `entered_by1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Entered By 00224,OM7,20,3220,XCN,,,8.8.14.20,,,,',
  `formulary_status2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Formulary Status 01498,OM7,22,1,IS,,0473,8.8.14.22,,,,',
  `orderable_location` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Orderable-at Location 01497,OM7,21,200,PL,Y,,8.8.14.21,,,,',
  `primary_key_value_cdm2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Primary Key Value - CDM 01306,OM7,24,250,CWE,Y,0132,8.8.14.24,,,,',
  `special_order_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Special Order Indicator 01499,OM7,23,1,ID,,0136,8.8.14.23,,,,',
  `test_service_default_duration_quantity` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Test Service Default Duration Quantity 01486,OM7,8,5,NM,,,8.8.14.8,,,,',
  `test_service_default_duration_units` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Test Service Default Duration Units 01487,OM7,9,250,CWE,,9999,8.8.14.9,,,,',
  `test_service_default_frequency` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Test Service Default Frequency 01488,OM7,10,60,IS,,,8.8.14.10,,,,',
  `universal_service_identifier4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Universal Service Identifier 00238,OM7,2,705,CWE,,,8.8.14.2,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_orc`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_orc` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `action_by` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Action By 00233,ORC,19,250,XCN,Y,,4.5.1.19,,,,',
  `advanced_beneficiary_notice_code1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Advanced Beneficiary Notice Code 01310,ORC,20,250,CWE,,0339,4.5.1.20,,,,',
  `call_back_phone_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Call Back Phone Number 00228,ORC,14,250,XTN,Y,,4.5.1.14,,,,',
  `confidentiality_code1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Confidentiality Code 00615,ORC,28,250,CWE,,0177,4.5.1.28,,,,',
  `date_time_of_transaction` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Date Time of Transaction 00223,ORC,9,24,DTM,,,4.5.1.9,,,,',
  `entered_by3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Entered By 00224,ORC,10,3220,XCN,Y,,4.5.1.10,,,,',
  `enterer_authorization_mode` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Enterer Authorization Mode 01644,ORC,30,250,CNE,,0483,4.5.1.30,,,,',
  `enterer_location` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Enterer Location 00227,ORC,13,80,PL,,,4.5.1.13,,,,',
  `entering_device` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Entering Device 00232,ORC,18,250,CWE,,9999,4.5.1.18,,,,',
  `entering_organization` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Entering Organization 00231,ORC,17,250,CWE,,9999,4.5.1.17,,,,',
  `filler_order_number3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Filler Order Number 00217,ORC,3,427,EI,,,4.5.1.3,,,,',
  `filler_expected_availability_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Filler Expected Availability Date Time 01642,ORC,27,24,DTM,,,4.5.1.27,,,,',
  `order_control` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Order Control 00215,ORC,1,2,ID,,0119,4.5.1.1,,,,',
  `order_control_code_reason` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Order Control Code Reason 00230,ORC,16,250,CWE,,9999,4.5.1.16,,,,',
  `order_effective_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Order Effective Date Time 00229,ORC,15,24,DTM,,,4.5.1.15,,,,',
  `order_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Order Status 00219,ORC,5,2,ID,,0038,4.5.1.5,,,,',
  `order_status_modifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Order Status Modifier 01473,ORC,25,250,CWE,,9999,4.5.1.25,,,,',
  `order_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Order Type 01643,ORC,29,250,CWE,,0482,4.5.1.29,,,,',
  `ordering_facility_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Ordering Facility Address 01312,ORC,22,250,XAD,Y,,4.5.1.22,,,,',
  `ordering_facility_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Ordering Facility Name 01311,ORC,21,250,XON,Y,,4.5.1.21,,,,',
  `ordering_facility_phone_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Ordering Facility Phone Number 01313,ORC,23,250,XTN,Y,,4.5.1.23,,,,',
  `ordering_provider2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Ordering Provider 00226,ORC,12,3220,XCN,Y,,4.5.1.12,,,,',
  `ordering_provider_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Ordering Provider Address 01314,ORC,24,250,XAD,Y,,4.5.1.24,,,,',
  `parent1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Parent 00222,ORC,8,200,EIP,,,4.5.1.8,,,,',
  `parent_universal_service_identifier1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Parent Universal Service Identifier 02287,ORC,31,250,CWE,,,4.5.1.31,,,,',
  `placer_group_number3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Placer Group Number 00218,ORC,4,22,EI,,,4.5.1.4,,,,',
  `placer_order_number5` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Placer Order Number 00216,ORC,2,427,EI,,,4.5.1.2,,,,',
  `quantity_timing3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Quantity Timing 00221,ORC,7,0,TQ,Y,,4.5.1.7,,,,',
  `response_flag` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Response Flag 00220,ORC,6,1,ID,,0121,4.5.1.6,,,,',
  `verified` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Verified By 00225,ORC,11,250,XCN,Y,,4.5.1.11,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_org`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_org` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `board_approval_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Board Approval Indicator 01467,ORG,11,1,ID,,0136,15.4.5.11,,,,',
  `effective_date_range` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Effective Date Range 01465,ORG,9,52,DR,,,15.4.5.9,,,,',
  `employment_status_code1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Employment Status Code 01276,ORG,10,250,CWE,,0066,15.4.5.10,,,,',
  `health_care_provider_classification_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Health Care Provider Classification Code 01614,ORG,7,250,CWE,,0453,15.4.5.7,,,,',
  `health_care_provider_type_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Health Care Provider Type Code 01464,ORG,6,250,CWE,,0452,15.4.5.6,,,,',
  `organization_unit_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Organization Unit Code 01460,ORG,2,250,CWE,,0405,15.4.5.2,,,,',
  `organization_unit_type_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Organization Unit Type Code 01625,ORG,3,250,CWE,,0474,15.4.5.3,,,,',
  `practitioner_org_unit_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Practitioner Org Unit Identifier 01463,ORG,5,60,CX,,,15.4.5.5,,,,',
  `primary_care_physician_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Primary Care Physician Indicator 01468,ORG,12,1,ID,,0136,15.4.5.12,,,,',
  `primary_org_unit_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Primary Org Unit Indicator 01462,ORG,4,1,ID,,0136,15.4.5.4,,,,',
  `set_id_org` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - ORG 01459,ORG,1,60,SI,,,15.4.5.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_ovr`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_ovr` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `business_rule_override_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Business Rule Override Code 01830,OVR,2,705,CWE,,0521,2.14.11.2,,,,',
  `business_rule_override_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Business Rule Override Type 01829,OVR,1,705,CWE,,0518,2.14.11.1,,,,',
  `override_authorized_by` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Override Authorized By 01833,OVR,5,250,XCN,,,2.14.11.5,,,,',
  `override_comments` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Override Comments 01831,OVR,3,200,TX,,,2.14.11.3,,,,',
  `override_entered` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Override Entered By 01832,OVR,4,250,XCN,,,2.14.11.4,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_pce`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_pce` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `cost_center_account_number2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Cost Center Account Number 00281,PCE,2,30,IS,,0319,17.4.6.2,,,,',
  `set_id_pce` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - PCE 02228,PCE,1,2,SI,,,17.4.6.1,,,,',
  `transaction_amount_unit1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Transaction amount - unit 00366,PCE,4,12,CP,,,17.4.6.4,,,,',
  `transaction_code4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Transaction Code 00361,PCE,3,250,CWE,,0132,17.4.6.3,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_pcr`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_pcr` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `action_taken_in_response_to_the_event` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Action Taken In Response To The Event 01118,PCR,21,2,ID,Y,0251,7.12.3.21,,,,',
  `date_product_returned_to_manufacturer` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Date Product Returned To Manufacturer 01115,PCR,18,24,DTM,,,7.12.3.18,,,,',
  `device_operator_qualifications` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Device Operator Qualifications 01116,PCR,19,1,ID,,0242,7.12.3.19,,,,',
  `evaluated_product_source` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Evaluated Product Source 01114,PCR,17,8,ID,,0248,7.12.3.17,,,,',
  `event_causality_observations` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Event Causality Observations 01119,PCR,22,2,ID,Y,0252,7.12.3.22,,,,',
  `generic_product` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Generic Product 01099,PCR,2,1,IS,,0249,7.12.3.2,,,,',
  `implicated_product` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Implicated Product 01098,PCR,1,705,CWE,,9999,7.12.3.1,,,,',
  `indication_for_product_use` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Indication For Product Use 01107,PCR,10,705,CWE,,9999,7.12.3.10,,,,',
  `indirect_exposure_mechanism` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Indirect Exposure Mechanism 01120,PCR,23,1,ID,Y,0253,7.12.3.23,,,,',
  `product_available_for_inspection` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Available For Inspection 01110,PCR,13,1,IS,,0246,7.12.3.13,,,,',
  `product_class` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Class 01100,PCR,3,705,CWE,,9999,7.12.3.3,,,,',
  `product_evaluation_performed` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Evaluation Performed 01111,PCR,14,705,CWE,,9999,7.12.3.14,,,,',
  `product_evaluation_results` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Evaluation Results 01113,PCR,16,705,CWE,,9999,7.12.3.16,,,,',
  `product_evaluation_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Evaluation Status 01112,PCR,15,705,CWE,,0247,7.12.3.15,,,,',
  `product_expiration_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Expiration Date 01103,PCR,6,24,DTM,,,7.12.3.6,,,,',
  `product_explantation_date1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Explantation Date 01105,PCR,8,24,DTM,,,7.12.3.8,,,,',
  `product_implantation_date2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Implantation Date 01104,PCR,7,24,DTM,,,7.12.3.7,,,,',
  `product_manufacture_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Manufacture Date 01102,PCR,5,24,DTM,,,7.12.3.5,,,,',
  `product_problem` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Problem 01108,PCR,11,8,IS,,0245,7.12.3.11,,,,',
  `product_serial_lot_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Serial Lot Number 01109,PCR,12,199,ST,Y,,7.12.3.12,,,,',
  `relatedness_assessment` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Relatedness Assessment 01117,PCR,20,1,ID,,0250,7.12.3.20,,,,',
  `single_use_device` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Single Use Device 01106,PCR,9,8,IS,,0244,7.12.3.9,,,,',
  `total_duration_of_therapy` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Total Duration Of Therapy 01101,PCR,4,500,CQ,,,7.12.3.4,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_pd1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_pd1` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `advance_directive_code2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Advance Directive Code 01548,PD1,15,705,CWE,Y,0435,3.4.10.15,,,,',
  `advance_directive_last_verified_date2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Advance Directive Last Verified Date 02141,PD1,22,8,DT,,,3.4.10.22,,,,',
  `duplicate_patient` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Duplicate Patient 00762,PD1,10,250,CX,Y,,3.4.10.10,,,,',
  `handicap4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Handicap 00753,PD1,6,2,IS,,0295,3.4.10.6,,,,',
  `immunization_registry_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Immunization Registry Status 01569,PD1,16,1,IS,,0441,3.4.10.16,,,,',
  `immunization_registry_status_effective_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Immunization Registry Status Effective Date 01570,PD1,17,8,DT,,,3.4.10.17,,,,',
  `living_arrangement3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Living Arrangement 00742,PD1,2,2,IS,,0220,3.4.10.2,,,,',
  `living_dependency2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Living Dependency 00755,PD1,1,2,IS,Y,0223,3.4.10.1,,,,',
  `living_will_code1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Living Will Code 00759,PD1,7,2,IS,,0315,3.4.10.7,,,,',
  `military_branch` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Military Branch 01572,PD1,19,5,IS,,0140,3.4.10.19,,,,',
  `military_rank_grade1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Military Rank Grade 00486,PD1,20,2,IS,,0141,3.4.10.20,,,,',
  `military_status2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Military Status 01573,PD1,21,3,IS,,0142,3.4.10.21,,,,',
  `organ_donor_code2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Organ Donor Code 00760,PD1,8,2,IS,,0316,3.4.10.8,,,,',
  `patient_primary_facility` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Patient Primary Facility 00756,PD1,3,250,XON,Y,0204,3.4.10.3,,,,',
  `place_of_worship` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Place of Worship 01567,PD1,14,250,XON,Y,,3.4.10.14,,,,',
  `protection_indicator1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Protection Indicator 00744,PD1,12,0,ID,,0136,3.4.10.12,,,,',
  `protection_indicator_effective_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Protection Indicator Effective Date 01566,PD1,13,0,DT,,,3.4.10.13,,,,',
  `publicity_code2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Publicity Code 00743,PD1,11,705,CWE,,0215,3.4.10.11,,,,',
  `publicity_code_effective_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Publicity Code Effective Date 01571,PD1,18,8,DT,,,3.4.10.18,,,,',
  `separate_bill` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Separate Bill 00761,PD1,9,1,ID,,0136,3.4.10.9,,,,',
  `student_indicator2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Student Indicator 00745,PD1,5,2,IS,,0231,3.4.10.5,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_pda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_pda` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `autopsy_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Autopsy Indicator 01579,PDA,6,1,ID,,0136,3.4.12.6,,,,',
  `autopsy_performed_by` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Autopsy Performed By 01581,PDA,8,250,XCN,,,3.4.12.8,,,,',
  `autopsy_start_and_end_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Autopsy Start and End Date Time 01580,PDA,7,53,DR,,,3.4.12.7,,,,',
  `coroner_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Coroner Indicator 01582,PDA,9,1,ID,,0136,3.4.12.9,,,,',
  `death_cause_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Death Cause Code 01574,PDA,1,705,CWE,Y,,3.4.12.1,,,,',
  `death_certificate_signed_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Death Certificate Signed Date Time 01577,PDA,4,24,DTM,,,3.4.12.4,,,,',
  `death_certified_by` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Death Certified By 01578,PDA,5,250,XCN,,,3.4.12.5,,,,',
  `death_certified_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Death Certified Indicator 01576,PDA,3,1,ID,,0136,3.4.12.3,,,,',
  `death_location` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Death Location 01575,PDA,2,80,PL,,,3.4.12.2,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_pdc`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_pdc` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `brand_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Brand Name 01249,PDC,3,60,ST,,,7.12.5.3,,,,',
  `catalogue_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Catalogue Identifier 01253,PDC,7,60,ST,,,7.12.5.7,,,,',
  `country` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Country 01248,PDC,2,705,CWE,,9999,7.12.5.2,,,,',
  `date_first_marketed` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Date First Marketed 01260,PDC,14,24,DTM,,,7.12.5.14,,,,',
  `date_last_marketed` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Date Last Marketed 01261,PDC,15,24,DTM,,,7.12.5.15,,,,',
  `device_family_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Device Family Name 01250,PDC,4,60,ST,,,7.12.5.4,,,,',
  `expected_shelf_life` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Expected Shelf Life 01259,PDC,13,722,CQ,,,7.12.5.13,,,,',
  `generic_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Generic Name 01251,PDC,5,705,CWE,,9999,7.12.5.5,,,,',
  `labeled_shelf_life` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Labeled Shelf Life 01258,PDC,12,722,CQ,,,7.12.5.12,,,,',
  `manufacturer_distributor` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Manufacturer Distributor 01247,PDC,1,570,XON,Y,,7.12.5.1,,,,',
  `marketing_approval_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Marketing Approval ID 01257,PDC,11,60,ST,,,7.12.5.11,,,,',
  `marketing_basis` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Marketing Basis 01256,PDC,10,4,ID,,0330,7.12.5.10,,,,',
  `model_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Model Identifier 01252,PDC,6,60,ST,Y,,7.12.5.6,,,,',
  `other_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Other Identifier 01254,PDC,8,60,ST,Y,,7.12.5.8,,,,',
  `product_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Code 01255,PDC,9,705,CWE,,9999,7.12.5.9,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_peo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_peo` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `cause_of_death` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Cause Of Death 01090,PEO,18,705,CWE,Y,9999,7.12.2.18,,,,',
  `confirmation_provided` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Confirmation Provided By 01095,PEO,23,1,ID,,0242,7.12.2.23,,,,',
  `event_description_from_autopsy` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Event Description from Autopsy 01089,PEO,17,600,FT,Y,,7.12.2.17,,,,',
  `event_description_from_original_reporter` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Event Description from Original Reporter 01086,PEO,14,600,FT,Y,,7.12.2.14,,,,',
  `event_description_from_others` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Event Description from Others 01085,PEO,13,600,FT,Y,,7.12.2.13,,,,',
  `event_description_from_patient` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Event Description from Patient 01087,PEO,15,600,FT,Y,,7.12.2.15,,,,',
  `event_description_from_practitioner` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Event Description from Practitioner 01088,PEO,16,600,FT,Y,,7.12.2.16,,,,',
  `event_ended_data_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Event Ended Data Time 01078,PEO,6,24,DTM,,,7.12.2.6,,,,',
  `event_exacerbation_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Event Exacerbation Date Time 01076,PEO,4,24,DTM,,,7.12.2.4,,,,',
  `event_expected` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Event Expected 01082,PEO,10,1,ID,,0239,7.12.2.10,,,,',
  `event_identifiers_used` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Event Identifiers Used 01073,PEO,1,705,CWE,Y,9999,7.12.2.1,,,,',
  `event_improved_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Event Improved Date Time 01077,PEO,5,24,DTM,,,7.12.2.5,,,,',
  `event_location_occurred_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Event Location Occurred Address 01079,PEO,7,2915,XAD,Y,,7.12.2.7,,,,',
  `event_onset_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Event Onset Date Time 01075,PEO,3,24,DTM,,,7.12.2.3,,,,',
  `event_outcome` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Event Outcome 01083,PEO,11,1,ID,Y,0240,7.12.2.11,,,,',
  `event_qualification` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Event Qualification 01080,PEO,8,1,ID,Y,0237,7.12.2.8,,,,',
  `event_serious` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Event Serious 01081,PEO,9,1,ID,,0238,7.12.2.9,,,,',
  `event_symptom_diagnosis_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Event Symptom Diagnosis Code 01074,PEO,2,705,CWE,Y,9999,7.12.2.2,,,,',
  `patient_outcome` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Patient Outcome 01084,PEO,12,1,ID,,0241,7.12.2.12,,,,',
  `primary_observer_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Primary Observer Address 01092,PEO,20,2915,XAD,Y,,7.12.2.20,,,,',
  `primary_observer_aware_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Primary Observer Aware Date Time 01096,PEO,24,24,DTM,,,7.12.2.24,,,,',
  `primary_observer_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Primary Observer Name 01091,PEO,19,1317,XPN,Y,,7.12.2.19,,,,',
  `primary_observer_telephone` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Primary Observer Telephone 01093,PEO,21,2743,XTN,Y,,7.12.2.21,,,,',
  `primary_observer_qualification` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Primary Observer Qualification 01094,PEO,22,1,ID,,0242,7.12.2.22,,,,',
  UNIQUE INDEX `pid` (`pid` ASC) ,
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_pes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_pes` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `event_report_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Event Report Date 01069,PES,10,24,DTM,,,7.12.1.10,,,,',
  `event_report_source` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Event Report Source 01071,PES,12,1,ID,,0235,7.12.1.12,,,,',
  `event_report_timing_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Event Report Timing Type 01070,PES,11,3,ID,Y,0234,7.12.1.11,,,,',
  `event_reported_to` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Event Reported To 01072,PES,13,1,ID,Y,0236,7.12.1.13,,,,',
  `sender_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Sender Address 01062,PES,3,2915,XAD,Y,,7.12.1.3,,,,',
  `sender_aware_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Sender Aware Date Time 01068,PES,9,24,DTM,,,7.12.1.9,,,,',
  `sender_comment` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Sender Comment 01067,PES,8,600,FT,,,7.12.1.8,,,,',
  `sender_event_description` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Sender Event Description 01066,PES,7,600,FT,Y,,7.12.1.7,,,,',
  `sender_event_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Sender Event Identifier 01064,PES,5,427,EI,,,7.12.1.5,,,,',
  `sender_individual_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Sender Individual Name 01060,PES,2,3220,XCN,Y,,7.12.1.2,,,,',
  `sender_organization_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Sender Organization Name 01059,PES,1,567,XON,Y,,7.12.1.1,,,,',
  `sender_sequence_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Sender Sequence Number 01065,PES,6,16,NM,,,7.12.1.6,,,,',
  `sender_telephone` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Sender Telephone 01063,PES,4,2743,XTN,Y,,7.12.1.4,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_pid`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_pid` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `administrative_sex2` VARCHAR(2) NOT NULL DEFAULT ' ' COMMENT ' Administrative Sex 00111,PID,8,1,IS,,0001,3.4.2.8,,,,',
  `alternate_patient_id_pid` VARCHAR(20) NOT NULL DEFAULT ' ' COMMENT ' Alternate Patient ID - PID 00107,PID,4,0,CX,Y,,3.4.2.4,,,,',
  `birth_order` VARCHAR(2) NOT NULL DEFAULT ' ' COMMENT ' Birth Order 00128,PID,25,2,NM,,,3.4.2.25,,,,',
  `birth_place` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Birth Place 00126,PID,23,250,ST,,,3.4.2.23,,,,',
  `breed_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Breed Code 01540,PID,36,705,CWE,,0447,3.4.2.36,,,,',
  `citizenship4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Citizenship 00129,PID,26,705,CWE,Y,0171,3.4.2.26,,,,',
  `county_code2` VARCHAR(4) NOT NULL DEFAULT ' ' COMMENT ' County Code 00115,PID,12,0,IS,,0289,3.4.2.12,,,,',
  `date_time_of_birth1` VARCHAR(24) NOT NULL DEFAULT ' ' COMMENT ' Date Time of Birth 00110,PID,7,24,DTM,,,3.4.2.7,,,,',
  `driver_license_number_patient` VARCHAR(25) NOT NULL DEFAULT ' ' COMMENT ' Driver License Number - Patient 00123,PID,20,0,DLN,,,3.4.2.20,,,,',
  `ethnic_group5` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Ethnic Group 00125,PID,22,705,CWE,Y,0189,3.4.2.22,,,,',
  `identity_reliability_code` VARCHAR(20) NOT NULL DEFAULT ' ' COMMENT ' Identity Reliability Code 01536,PID,32,20,IS,Y,0445,3.4.2.32,,,,',
  `identity_unknown_indicator` VARCHAR(2) NOT NULL DEFAULT ' ' COMMENT ' Identity Unknown Indicator 01535,PID,31,1,ID,,0136,3.4.2.31,,,,',
  `last_update_date_time` VARCHAR(25) NOT NULL DEFAULT ' ' COMMENT ' Last Update Date Time 01537,PID,33,24,DTM,,,3.4.2.33,,,,',
  `last_update_facility` VARCHAR(241) NOT NULL DEFAULT ' ' COMMENT ' Last Update Facility 01538,PID,34,241,HD,,,3.4.2.34,,,,',
  `marital_status1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Marital Status 00119,PID,16,705,CWE,,0002,3.4.2.16,,,,',
  `mother_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Mother Identifier 00124,PID,21,250,CX,Y,,3.4.2.21,,,,',
  `mother_maiden_name4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Mother Maiden Name 00109,PID,6,250,XPN,Y,,3.4.2.6,,,,',
  `multiple_birth_indicator` VARCHAR(2) NOT NULL DEFAULT ' ' COMMENT ' Multiple Birth Indicator 00127,PID,24,1,ID,,0136,3.4.2.24,,,,',
  `nationality2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Nationality 00739,PID,28,0,CWE,,0212,3.4.2.28,,,,',
  `patient_account_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Patient Account Number 00121,PID,18,250,CX,,,3.4.2.18,,,,',
  `patient_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Patient Address 00114,PID,11,250,XAD,Y,,3.4.2.11,,,,',
  `patient_alias` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Patient Alias 00112,PID,9,0,XPN,Y,,3.4.2.9,,,,',
  `patient_death_date_and_time` VARCHAR(25) NOT NULL DEFAULT ' ' COMMENT ' Patient Death Date and Time 00740,PID,29,24,DTM,,,3.4.2.29,,,,',
  `patient_death_indicator` VARCHAR(2) NOT NULL DEFAULT ' ' COMMENT ' Patient Death Indicator 00741,PID,30,1,ID,,0136,3.4.2.30,,,,',
  `patient_id` VARCHAR(25) NOT NULL DEFAULT ' ' COMMENT ' Patient ID 00105,PID,2,0,CX,,,3.4.2.2,,,,',
  `patient_identifier_list2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Patient Identifier List 00106,PID,3,250,CX,Y,,3.4.2.3,,,,',
  `patient_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Patient Name 00108,PID,5,250,XPN,Y,0200,3.4.2.5,,,,',
  `phone_number_business` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Phone Number - Business 00117,PID,14,250,XTN,Y,,3.4.2.14,,,,',
  `phone_number_home` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Phone Number - Home 00116,PID,13,250,XTN,Y,,3.4.2.13,,,,',
  `primary_language1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Primary Language 00118,PID,15,705,CWE,,0296,3.4.2.15,,,,',
  `production_class_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Production Class Code 01542,PID,38,705,CWE,,0429,3.4.2.38,,,,',
  `race1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Race 00113,PID,10,705,CWE,Y,0005,3.4.2.10,,,,',
  `religion2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Religion 00120,PID,17,705,CWE,,0006,3.4.2.17,,,,',
  `set_id_pid` VARCHAR(5) NOT NULL DEFAULT ' ' COMMENT ' Set ID - PID 00104,PID,1,4,SI,,,3.4.2.1,,,,',
  `species_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Species Code 01539,PID,35,705,CWE,,0446,3.4.2.35,,,,',
  `ssn_number_patient` VARCHAR(16) NOT NULL DEFAULT ' ' COMMENT ' SSN Number - Patient 00122,PID,19,0,ST,,,3.4.2.19,,,,',
  `strain` VARCHAR(80) NOT NULL DEFAULT ' ' COMMENT ' Strain 01541,PID,37,80,ST,,,3.4.2.37,,,,',
  `tribal_citizenship` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Tribal Citizenship 01840,PID,39,705,CWE,Y,0171,3.4.2.39,,,,',
  `veterans_military_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Veterans Military Status 00130,PID,27,705,CWE,,0172,3.4.2.27,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_pkg`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_pkg` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `default_order_unit_of_measure_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Default Order Unit Of Measure Indicator 02223,PKG,3,1,CNE,,0532,17.4.5.3,,,,',
  `future_item_price` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Future Item Price 02226,PKG,6,12,CP,,,17.4.5.6,,,,',
  `future_item_price_effective_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Future Item Price Effective Date 02227,PKG,7,24,DTM,,,17.4.5.7,,,,',
  `package_quantity` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Package Quantity 02224,PKG,4,12,NM,,,17.4.5.4,,,,',
  `packaging_units` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Packaging Units 02222,PKG,2,250,CWE,,0818,17.4.5.2,,,,',
  `price2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Price 02225,PKG,5,12,CP,,,17.4.5.5,,,,',
  `set_id_pkg` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set Id - PKG 02221,PKG,1,2,SI,,,17.4.5.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_pmt`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_pmt` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `check_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Check Number 02024,PMT,7,15,EI,,,16.4.8.7,,,,',
  `esr_code_line` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' ESR-Code-Line 02029,PMT,12,100,ST,,,16.4.8.12,,,,',
  `payee_bank_account_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Payee Bank Account ID 02027,PMT,10,20,CX,,,16.4.8.10,,,,',
  `payee_bank_identification` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Payee Bank Identification 02025,PMT,8,6,XON,,,16.4.8.8,,,,',
  `payee_transit_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Payee Transit Number 02026,PMT,9,4,ST,,,16.4.8.9,,,,',
  `payment_method1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Payment Method 02021,PMT,4,177,CWE,,0570,16.4.8.4,,,,',
  `payment_organization` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Payment Organization 02028,PMT,11,183,XON,,,16.4.8.11,,,,',
  `payment_remittance_advice_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Payment Remittance Advice Number 02018,PMT,1,73,EI,,,16.4.8.1,,,,',
  `payment_remittance_amount` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Payment Remittance Amount 02023,PMT,6,254,CP,,,16.4.8.6,,,,',
  `payment_remittance_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Payment Remittance Date Time 02022,PMT,5,26,DTM,,,16.4.8.5,,,,',
  `payment_remittance_effective_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Payment Remittance Effective Date Time 02019,PMT,2,26,DTM,,,16.4.8.2,,,,',
  `payment_remittance_expiration_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Payment Remittance Expiration Date Time 02020,PMT,3,26,DTM,,,16.4.8.3,,,,',
  UNIQUE INDEX `pid` (`pid` ASC) ,
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_pr1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_pr1` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `anesthesia_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Anesthesia Code 00399,PR1,9,2,IS,,0019,6.5.4.9,,,,',
  `anesthesia_minutes` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Anesthesia Minutes 00400,PR1,10,4,NM,,,6.5.4.10,,,,',
  `anesthesiologist` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Anesthesiologist 00398,PR1,8,0,-,,,6.5.4.8,,,,',
  `associated_diagnosis_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Associated Diagnosis Code 00772,PR1,15,250,CWE,,0051,6.5.4.15,,,,',
  `consent_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Consent Code 00403,PR1,13,250,CWE,,0059,6.5.4.13,,,,',
  `drg_procedure_determination_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' DRG Procedure Determination Status 02177,PR1,21,20,IS,,0761,6.5.4.21,,,,',
  `drg_procedure_relevance` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' DRG Procedure Relevance 02178,PR1,22,20,IS,,0763,6.5.4.22,,,,',
  `procedure_action_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Procedure Action Code 01849,PR1,20,1,ID,,0206,6.5.4.20,,,,',
  `procedure_code1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Procedure Code 00393,PR1,3,705,CNE,,0088,6.5.4.3,,,,',
  `procedure_code_modifier3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Procedure Code Modifier 01316,PR1,16,705,CNE,Y,0340,6.5.4.16,,,,',
  `procedure_coding_method6` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Procedure Coding Method 00392,PR1,2,0,-,,,6.5.4.2,,,,',
  `procedure_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Procedure Date Time 00395,PR1,5,24,DTM,,,6.5.4.5,,,,',
  `procedure_description` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Procedure Description 00394,PR1,4,0,-,,,6.5.4.4,,,,',
  `procedure_drg_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Procedure DRG Type 01501,PR1,17,20,IS,,0416,6.5.4.17,,,,',
  `procedure_functional_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Procedure Functional Type 00396,PR1,6,2,IS,,0230,6.5.4.6,,,,',
  `procedure_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Procedure Identifier 01848,PR1,19,427,EI,,,6.5.4.19,,,,',
  `procedure_minutes` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Procedure Minutes 00397,PR1,7,4,NM,,,6.5.4.7,,,,',
  `procedure_practitioner` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Procedure Practitioner 00402,PR1,12,0,-,,,6.5.4.12,,,,',
  `procedure_priority` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Procedure Priority 00404,PR1,14,2,ID,,0418,6.5.4.14,,,,',
  `set_id_pr1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - PR1 00391,PR1,1,4,SI,,,6.5.4.1,,,,',
  `surgeon` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Surgeon 00401,PR1,11,0,-,,,6.5.4.11,,,,',
  `tissue_type_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Tissue Type Code 01502,PR1,18,250,CWE,Y,0417,6.5.4.18,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_pra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_pra` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `date_entered_practice` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Date Entered Practice 01296,PRA,8,8,DT,,,15.4.6.8,,,,',
  `date_left_practice` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Date Left Practice 01348,PRA,10,8,DT,,,15.4.6.10,,,,',
  `institution` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Institution 01613,PRA,9,250,CWE,,0537,15.4.6.9,,,,',
  `practitioner_category` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Practitioner Category 00687,PRA,3,3,IS,Y,0186,15.4.6.3,,,,',
  `practitioner_group` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Practitioner Group 00686,PRA,2,250,CWE,Y,0358,15.4.6.2,,,,',
  `practitioner_id_numbers` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Practitioner ID Numbers 00690,PRA,6,0,PLN,Y,0338,15.4.6.6,,,,',
  `primary_key_value_pra` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Primary Key Value - PRA 00685,PRA,1,250,CWE,,9999,15.4.6.1,,,,',
  `privileges` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Privileges 00691,PRA,7,770,PIP,Y,,15.4.6.7,,,,',
  `provider_billing` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Provider Billing 00688,PRA,4,1,ID,,0187,15.4.6.4,,,,',
  `set_id_pra` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - PRA 01616,PRA,12,60,SI,,,15.4.6.12,,,,',
  `specialty` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specialty 00689,PRA,5,112,SPD,Y,0337,15.4.6.5,,,,',
  
  PRIMARY KEY (`pid_id`) )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_prb`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_prb` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `action_code2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Action Code 00816,PRB,1,2,ID,,0287,12.4.2.1,,,,',
  `action_date_time1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Action Date Time 00817,PRB,2,24,DTM,,,12.4.2.2,,,,',
  `actual_problem_resolution_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Actual Problem Resolution Date Time 00844,PRB,9,24,DTM,,,12.4.2.9,,,,',
  `anticipated_problem_resolution_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Anticipated Problem Resolution Date Time 00843,PRB,8,24,DTM,,,12.4.2.8,,,,',
  `certainty_of_problem` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Certainty of Problem 00854,PRB,19,705,CWE,,,12.4.2.19,,,,',
  `episode_of_care_id1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Episode of Care ID 00820,PRB,5,60,EI,,,12.4.2.5,,,,',
  `individual_awareness_of_problem` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Individual Awareness of Problem 00856,PRB,21,705,CWE,,,12.4.2.21,,,,',
  `individual_awareness_of_prognosis` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Individual Awareness of Prognosis 00858,PRB,23,705,CWE,,,12.4.2.23,,,,',
  `mood_code5` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Mood Code 02237,PRB,28,60,CNE,,0725,12.4.2.28,,,,',
  `probability_of_problem` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Probability of Problem (0-1) 00855,PRB,20,5,NM,,,12.4.2.20,,,,',
  `problem_classification` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Problem Classification 00845,PRB,10,705,CWE,,,12.4.2.10,,,,',
  `problem_confirmation_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Problem Confirmation Status 00848,PRB,13,705,CWE,,,12.4.2.13,,,,',
  `problem_date_of_onset` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Problem Date of Onset 00851,PRB,16,24,DTM,,,12.4.2.16,,,,',
  `problem_established_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Problem Established Date Time 00842,PRB,7,24,DTM,,,12.4.2.7,,,,',
  `problem_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Problem ID 00838,PRB,3,705,CWE,,,12.4.2.3,,,,',
  `problem_instance_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Problem Instance ID 00839,PRB,4,60,EI,,,12.4.2.4,,,,',
  `problem_life_cycle_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Problem Life Cycle Status 00849,PRB,14,705,CWE,,,12.4.2.14,,,,',
  `problem_life_cycle_status_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Problem Life Cycle Status Date Time 00850,PRB,15,24,DTM,,,12.4.2.15,,,,',
  `problem_list_priority` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Problem List Priority 00841,PRB,6,60,NM,,,12.4.2.6,,,,',
  `problem_management_discipline` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Problem Management Discipline 00846,PRB,11,705,CWE,Y,,12.4.2.11,,,,',
  `problem_onset_text` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Problem Onset Text 00852,PRB,17,80,ST,,,12.4.2.17,,,,',
  `problem_persistence` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Problem Persistence 00847,PRB,12,705,CWE,,,12.4.2.12,,,,',
  `problem_perspective` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Problem Perspective 02235,PRB,27,705,CWE,,0838,12.4.2.27,,,,',
  `problem_prognosis` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Problem Prognosis 00857,PRB,22,705,CWE,,,12.4.2.22,,,,',
  `problem_ranking` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Problem Ranking 00853,PRB,18,705,CWE,,,12.4.2.18,,,,',
  `problem_severity` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Problem Severity 02234,PRB,26,705,CWE,,0836,12.4.2.26,,,,',
  `security_sensitivity` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Security Sensitivity 00823,PRB,25,705,CWE,,,12.4.2.25,,,,',
  
  PRIMARY KEY (`pid_id`) )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_prc`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_prc` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `active_inactive_flag2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Active Inactive Flag 00675,PRC,16,1,ID,,0183,8.10.3.16,,,,',
  `billing_category` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Billing Category 01007,PRC,14,250,CWE,Y,0293,8.10.3.14,,,,',
  `charge_on_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Charge on Indicator 01009,PRC,18,1,IS,,0269,8.10.3.18,,,,',
  `chargeable_flag` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Chargeable Flag 01008,PRC,15,1,ID,,0136,8.10.3.15,,,,',
  `cost` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Cost 00989,PRC,17,12,MO,,,8.10.3.17,,,,',
  `department2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Department 00676,PRC,3,250,CWE,Y,0184,8.10.3.3,,,,',
  `effective_end_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Effective End Date 01005,PRC,12,24,DTM,,,8.10.3.12,,,,',
  `effective_start_date2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Effective Start Date 01004,PRC,11,24,DTM,,,8.10.3.11,,,,',
  `facility_id-prc` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Facility ID-PRC 00995,PRC,2,250,CWE,Y,0464,8.10.3.2,,,,',
  `formula` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Formula 00999,PRC,6,200,ST,Y,,8.10.3.6,,,,',
  `maximum_price` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Maximum Price 01003,PRC,10,12,MO,,,8.10.3.10,,,,',
  `maximum_quantity` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Maximum Quantity 01001,PRC,8,4,NM,,,8.10.3.8,,,,',
  `minimum_price` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Minimum Price 01002,PRC,9,12,MO,,,8.10.3.9,,,,',
  `minimum_quantity` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Minimum Quantity 01000,PRC,7,4,NM,,,8.10.3.7,,,,',
  `price1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Price 00998,PRC,5,12,CP,Y,,8.10.3.5,,,,',
  `price_override_flag` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Price Override Flag 01006,PRC,13,1,IS,,0268,8.10.3.13,,,,',
  `primary_key_value_prc` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Primary Key Value-PRC 00982,PRC,1,250,CWE,,0132,8.10.3.1,,,,',
  `valid_patient_classes1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Valid Patient Classes 00967,PRC,4,1,IS,Y,0004,8.10.3.4,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_prd`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_prd` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `effective_end_date_of_provider_role` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Effective End Date of Provider Role 01164,PRD,9,24,DTM,Y,,11.6.3.9,,,,',
  `effective_start_date_of_provider_role` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Effective Start Date of Provider Role 01163,PRD,8,24,DTM,,,11.6.3.8,,,,',
  `preferred_method_of_contact1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Preferred Method of Contact 00684,PRD,6,705,CWE,,0185,11.6.3.6,,,,',
  `provider_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Provider Address 01157,PRD,3,250,XAD,Y,,11.6.3.3,,,,',
  `provider_communication_information` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Provider Communication Information 01159,PRD,5,250,XTN,Y,,11.6.3.5,,,,',
  `provider_identifiers` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Provider Identifiers 01162,PRD,7,100,PLN,Y,0338,11.6.3.7,,,,',
  `provider_location` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Provider Location 01158,PRD,4,60,PL,,,11.6.3.4,,,,',
  `provider_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Provider Name 01156,PRD,2,250,XPN,Y,,11.6.3.2,,,,',
  `provider_organization_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Provider Organization Address 02257,PRD,11,60,XAD,Y,,11.6.3.11,,,,',
  `provider_organization_location_information` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Provider Organization Location Information 02258,PRD,12,60,PL,Y,,11.6.3.12,,,,',
  `provider_organization_method_of_contact` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Provider Organization Method of Contact 02260,PRD,14,705,CWE,,0185,11.6.3.14,,,,',
  `provider_organization_name_and_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Provider Organization Name and Identifier 02256,PRD,10,250,XON,,,11.6.3.10,,,,',
  `provider_role` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Provider Role 01155,PRD,1,705,CWE,Y,0286,11.6.3.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_psg`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_psg` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `adjudicate_as_group` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Adjudicate as Group 01953,PSG,4,1,ID,,0136,16.4.5.4,,,,',
  `payer_product_service_group_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Payer Product Service Group Number 01951,PSG,2,73,EI,,,16.4.5.2,,,,',
  `product_service_group_billed_amount` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Service Group Billed Amount 01954,PSG,5,254,CP,,,16.4.5.5,,,,',
  `product_service_group_description` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Service Group Description 02044,PSG,6,254,ST,,,16.4.5.6,,,,',
  `product_service_group_sequence_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Service Group Sequence Number 01952,PSG,3,4,SI,,,16.4.5.3,,,,',
  `provider_product_service_group_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Provider Product Service Group Number 01950,PSG,1,73,EI,,,16.4.5.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_psh`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_psh` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `quantity_distributed` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Quantity Distributed 01239,PSH,7,722,CQ,,,7.12.4.7,,,,',
  `quantity_distributed_comment` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Quantity Distributed Comment 01241,PSH,9,600,FT,,,7.12.4.9,,,,',
  `quantity_distributed_method` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Quantity Distributed Method 01240,PSH,8,1,ID,,0329,7.12.4.8,,,,',
  `quantity_in_use` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Quantity in Use 01242,PSH,10,722,CQ,,,7.12.4.10,,,,',
  `quantity_in_use_comment` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Quantity in Use Comment 01244,PSH,12,600,FT,,,7.12.4.12,,,,',
  `quantity_in_use_method` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Quantity in Use Method 01243,PSH,11,1,ID,,0329,7.12.4.11,,,,',
  `quantity_manufactured` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Quantity Manufactured 01238,PSH,6,722,CQ,,,7.12.4.6,,,,',
  `report_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Report Date 01235,PSH,3,24,DTM,,,7.12.4.3,,,,',
  `report_form_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Report Form Identifier 01297,PSH,2,60,ST,,,7.12.4.2,,,,',
  `report_interval_end_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Report Interval End Date 01237,PSH,5,24,DTM,,,7.12.4.5,,,,',
  `report_interval_start_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Report Interval Start Date 01236,PSH,4,24,DTM,,,7.12.4.4,,,,',
  `report_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Report Type 01233,PSH,1,60,ST,,,7.12.4.1,,,,',
  UNIQUE INDEX `pid` (`pid` ASC) ,
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_psl`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_psl` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `amount_pp` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Amount PP 01992,PSL,38,7,CP,,,16.4.6.38,,,,',
  `amount_technical_part` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Amount Technical Part 01997,PSL,43,7,CP,,,16.4.6.43,,,,',
  `billing_period` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Billing Period 01980,PSL,26,49,DR,,,16.4.6.26,,,,',
  `comment1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Comment 02002,PSL,48,255,ST,,,16.4.6.48,,,,',
  `cost_center2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Cost Center 01933,PSL,25,250,CX,,,16.4.6.25,,,,',
  `days_without_billing` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Days without Billing 01981,PSL,27,5,NM,,,16.4.6.27,,,,',
  `executing_physician_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Executing Physician ID 01983,PSL,29,20,XCN,,,16.4.6.29,,,,',
  `external_scaling_factor_pp` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' External Scaling Factor PP 01991,PSL,37,4,NM,,,16.4.6.37,,,,',
  `external_scaling_factor_technicalpart` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' External Scaling Factor TechnicalPart 01996,PSL,42,4,NM,,,16.4.6.42,,,,',
  `health_document_reference_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Health Document Reference Identifier 01973,PSL,19,73,EI,,,16.4.6.19,,,,',
  `internal_scaling_factor_pp` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Internal Scaling Factor PP 01990,PSL,36,4,NM,,,16.4.6.36,,,,',
  `internal_scaling_factor_technicalpart` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Internal Scaling Factor TechnicalPart 01995,PSL,41,4,NM,,,16.4.6.41,,,,',
  `main-service` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Main-Service 02000,PSL,46,20,ID,,,16.4.6.46,,,,',
  `medical_role_executing_physician` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Medical Role Executing Physician 01986,PSL,32,10,CWE,,0882,16.4.6.32,,,,',
  `number_items_per_unit` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Number of Items per Unit 01968,PSL,14,10,NM,,,16.4.6.14,,,,',
  `number_tp_pp` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Number of TP PP 01988,PSL,34,6,NM,,,16.4.6.34,,,,',
  `number_tp_technical_part` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Number of TP Technical Part 01993,PSL,39,6,NM,,,16.4.6.39,,,,',
  `payer_product_service_line_item_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Payer Product Service Line Item Number 01956,PSL,2,73,EI,,,16.4.6.2,,,,',
  `payer_tracking_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Payer Tracking ID 01959,PSL,5,20,EI,,,16.4.6.5,,,,',
  `processing_consideration_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Processing Consideration Code 01974,PSL,20,10,IS,,0562,16.4.6.20,,,,',
  `product_service_amount_physician` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Service Amount for Physician 01977,PSL,23,254,CP,,,16.4.6.23,,,,',
  `product_service_billed_amount` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Service Billed Amount 01970,PSL,16,254,CP,,,16.4.6.16,,,,',
  `product_service_clarification_code_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Service Clarification Code Type 01971,PSL,17,10,IS,,0561,16.4.6.17,,,,',
  `product_service_clarification_code_value` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Service Clarification Code Value 01972,PSL,18,40,ST,,,16.4.6.18,,,,',
  `product_service_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Service Code 01961,PSL,7,177,CWE,,0879,16.4.6.7,,,,',
  `product_service_code_description` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Service Code Description 01963,PSL,9,80,ST,,,16.4.6.9,,,,',
  `product_service_code_modifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Service Code Modifier 01962,PSL,8,177,CWE,,0880,16.4.6.8,,,,',
  `product_service_cost_factor` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Service Cost Factor 01978,PSL,24,5,NM,,,16.4.6.24,,,,',
  `product_service_effective_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Service Effective Date 01964,PSL,10,24,DTM,,,16.4.6.10,,,,',
  `product_service_expiration_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Service Expiration Date 01965,PSL,11,24,DTM,,,16.4.6.11,,,,',
  `product_service_gross_amount` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Service Gross Amount 01969,PSL,15,254,CP,,,16.4.6.15,,,,',
  `product_service_line_item_sequence_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Service Line Item Sequence Number 01957,PSL,3,4,SI,,,16.4.6.3,,,,',
  `product_service_line_item_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Service Line Item Status 01960,PSL,6,2,CWE,,0559,16.4.6.6,,,,',
  `product_service_quantity` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Service Quantity 01966,PSL,12,222,CQ,,0560,16.4.6.12,,,,',
  `product_service_unit_cost` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Product Service Unit Cost 01967,PSL,13,254,CP,,,16.4.6.13,,,,',
  `provider_product_service_line_item_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Provider Product Service Line Item Number 01955,PSL,1,73,EI,,,16.4.6.1,,,,',
  `provider_tracking_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Provider Tracking ID 01958,PSL,4,20,EI,,,16.4.6.4,,,,',
  `related_product_service_code_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Related Product Service Code Indicator 01976,PSL,22,177,CWE,,0879,16.4.6.22,,,,',
  `responsible_physician_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Responsible Physician ID 01984,PSL,30,20,XCN,,,16.4.6.30,,,,',
  `restricted_disclosure_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Restricted Disclosure Indicator 01975,PSL,21,2,ID,,0532,16.4.6.21,,,,',
  `role_executing_physician` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Role Executing Physician 01985,PSL,31,10,CWE,,0881,16.4.6.31,,,,',
  `session-no` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Session-No 01982,PSL,28,4,NM,,,16.4.6.28,,,,',
  `side_of_body` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Side of body 01987,PSL,33,3,CWE,,0894,16.4.6.33,,,,',
  `tp_value_pp` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' TP-Value PP 01989,PSL,35,6,CP,,,16.4.6.35,,,,',
  `tp_value_technical_part` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' TP-Value Technical Part 01994,PSL,40,6,CP,,,16.4.6.40,,,,',
  `validation` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Validation 02001,PSL,47,1,ID,,0136,16.4.6.47,,,,',
  `vat_rate` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' VAT-Rate 01999,PSL,45,3,NM,,,16.4.6.45,,,,',
  
  PRIMARY KEY (`pid_id`) )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_pth`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_pth` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `action_code3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Action Code 00816,PTH,1,2,ID,,0287,12.4.3.1,,,,',
  `mood_code3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Mood Code 02239,PTH,7,60,CNE,,0725,12.4.3.7,,,,',
  `pathway_established_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Pathway Established Date Time 01209,PTH,4,24,DTM,,,12.4.3.4,,,,',
  `pathway_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Pathway ID 01207,PTH,2,705,CWE,,,12.4.3.2,,,,',
  `pathway_instance_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Pathway Instance ID 01208,PTH,3,60,EI,,,12.4.3.3,,,,',
  `pathway_life_cycle_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Pathway Life Cycle Status 01210,PTH,5,705,CWE,,,12.4.3.5,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_pv1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_pv1` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `account_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Account Status 00171,PV1,41,2,IS,,0117,3.4.3.41,,,,',
  `admission_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Admission Type 00134,PV1,4,2,IS,,0007,3.4.3.4,,,,',
  `admit_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Admit Date Time 00174,PV1,44,24,DTM,,,3.4.3.44,,,,',
  `admit_source` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Admit Source 00144,PV1,14,6,IS,,0023,3.4.3.14,,,,',
  `admitting_doctor` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Admitting Doctor 00147,PV1,17,250,XCN,Y,0010,3.4.3.17,,,,',
  `alternate_visit_id3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Alternate Visit ID 00180,PV1,50,250,CX,,0203,3.4.3.50,,,,',
  `ambulatory_status4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Ambulatory Status 00145,PV1,15,2,IS,Y,0009,3.4.3.15,,,,',
  `assigned_patient_location1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Assigned Patient Location 00133,PV1,3,80,PL,,,3.4.3.3,,,,',
  `attending_doctor2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Attending Doctor 00137,PV1,7,250,XCN,Y,0010,3.4.3.7,,,,',
  `bad_debt_agency_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Bad Debt Agency Code 00161,PV1,31,10,IS,,0021,3.4.3.31,,,,',
  `bad_debt_recovery_amount` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Bad Debt Recovery Amount 00163,PV1,33,12,NM,,,3.4.3.33,,,,',
  `bad_debt_transfer_amount` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Bad Debt Transfer Amount 00162,PV1,32,12,NM,,,3.4.3.32,,,,',
  `bed_status1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Bed Status 00170,PV1,40,0,IS,,0116,3.4.3.40,,,,',
  `charge_price_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Charge Price Indicator 00151,PV1,21,2,IS,,0032,3.4.3.21,,,,',
  `consulting_doctor` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Consulting Doctor 00139,PV1,9,0,XCN,Y,0010,3.4.3.9,,,,',
  `contract_amount` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Contract Amount 00156,PV1,26,12,NM,Y,,3.4.3.26,,,,',
  `contract_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Contract Code 00154,PV1,24,2,IS,Y,0044,3.4.3.24,,,,',
  `contract_effective_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Contract Effective Date 00155,PV1,25,8,DT,Y,,3.4.3.25,,,,',
  `contract_period` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Contract Period 00157,PV1,27,3,NM,Y,,3.4.3.27,,,,',
  `courtesy_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Courtesy Code 00152,PV1,22,2,IS,,0045,3.4.3.22,,,,',
  `credit_rating` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Credit Rating 00153,PV1,23,2,IS,,0046,3.4.3.23,,,,',
  `current_patient_balance` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Current Patient Balance 00176,PV1,46,12,NM,,,3.4.3.46,,,,',
  `delete_account_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Delete Account Date 00165,PV1,35,8,DT,,,3.4.3.35,,,,',
  `delete_account_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Delete Account Indicator 00164,PV1,34,1,IS,,0111,3.4.3.34,,,,',
  `diet_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Diet Type 00168,PV1,38,705,CWE,,0114,3.4.3.38,,,,',
  `discharge_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Discharge Date Time 00175,PV1,45,24,DTM,,,3.4.3.45,,,,',
  `discharge_disposition` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Discharge Disposition 00166,PV1,36,3,IS,,0112,3.4.3.36,,,,',
  `discharged_to_location` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Discharged to Location 00167,PV1,37,47,DLD,,0113,3.4.3.37,,,,',
  `financial_class` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Financial Class 00150,PV1,20,50,FC,Y,0064,3.4.3.20,,,,',
  `hospital_service` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Hospital Service 00140,PV1,10,3,IS,,0069,3.4.3.10,,,,',
  `interest_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Interest Code 00158,PV1,28,2,IS,,0073,3.4.3.28,,,,',
  `other_healthcare_provider` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Other Healthcare Provider 01274,PV1,52,0,XCN,Y,0010,3.4.3.52,,,,',
  `patient_class` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Patient Class 00132,PV1,2,1,IS,,0004,3.4.3.2,,,,',
  `patient_type1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Patient Type 00148,PV1,18,2,IS,,0018,3.4.3.18,,,,',
  `pending_location` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Pending Location 00172,PV1,42,80,PL,,,3.4.3.42,,,,',
  `preadmit_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Preadmit Number 00135,PV1,5,250,CX,,,3.4.3.5,,,,',
  `preadmit_test_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Preadmit Test Indicator 00142,PV1,12,2,IS,,0087,3.4.3.12,,,,',
  `prior_patient_location` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Prior Patient Location 00136,PV1,6,80,PL,,,3.4.3.6,,,,',
  `prior_temporary_location` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Prior Temporary Location 00173,PV1,43,80,PL,,,3.4.3.43,,,,',
  `readmission_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Re-admission Indicator 00143,PV1,13,2,IS,,0092,3.4.3.13,,,,',
  `referring_doctor` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Referring Doctor 00138,PV1,8,250,XCN,Y,0010,3.4.3.8,,,,',
  `servicing_facility` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Servicing Facility 00169,PV1,39,2,IS,,0115,3.4.3.39,,,,',
  `set_id_pv1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - PV1 00131,PV1,1,4,SI,,,3.4.3.1,,,,',
  `temporary_location` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Temporary Location 00141,PV1,11,80,PL,,,3.4.3.11,,,,',
  `total_adjustments` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Total Adjustments 00178,PV1,48,12,NM,,,3.4.3.48,,,,',
  `total_charges2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Total Charges 00177,PV1,47,12,NM,,,3.4.3.47,,,,',
  `total_payments` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Total Payments 00179,PV1,49,12,NM,,,3.4.3.49,,,,',
  `transfer_to_bad_debt_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Transfer to Bad Debt Code 00159,PV1,29,4,IS,,0110,3.4.3.29,,,,',
  `transfer_to_bad_debt_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Transfer to Bad Debt Date 00160,PV1,30,8,DT,,,3.4.3.30,,,,',
  `vip_indicator1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' VIP Indicator 00146,PV1,16,2,IS,,0099,3.4.3.16,,,,',
  `visit_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Visit Indicator 01226,PV1,51,1,IS,,0326,3.4.3.51,,,,',
  `visit_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Visit Number 00149,PV1,19,250,CX,,,3.4.3.19,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_pv2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_pv2` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `accommodation_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Accommodation Code 00182,PV2,2,705,CWE,,0129,3.4.4.2,,,,',
  `actual_length_of_inpatient_stay` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Actual Length of Inpatient Stay 00712,PV2,11,3,NM,,,3.4.4.11,,,,',
  `admission_level_of_care_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Admission Level of Care Code 01545,PV2,40,705,CWE,,0432,3.4.4.40,,,,',
  `admit_reason` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Admit Reason 00183,PV2,3,705,CWE,,,3.4.4.3,,,,',
  `advance_directive_code1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Advance Directive Code 01548,PV2,45,705,CWE,Y,0435,3.4.4.45,,,,',
  `advance_directive_last_verified_date1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Advance Directive Last Verified Date 02141,PV2,50,8,DT,,,3.4.4.50,,,,',
  `baby_detained_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Baby Detained Indicator 00738,PV2,37,1,ID,,0136,3.4.4.37,,,,',
  `billing_media_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Billing Media Code 00733,PV2,32,1,ID,,0136,3.4.4.32,,,,',
  `clinic_organization_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Clinic Organization Name 00724,PV2,23,250,XON,Y,,3.4.4.23,,,,',
  `employment_illness_related_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Employment Illness Related Indicator 00716,PV2,15,1,ID,,0136,3.4.4.15,,,,',
  `estimated_length_of_inpatient_stay` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Estimated Length of Inpatient Stay 00711,PV2,10,3,NM,,,3.4.4.10,,,,',
  `expected_admit_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Expected Admit Date Time 00188,PV2,8,24,DTM,,,3.4.4.8,,,,',
  `expected_discharge_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Expected Discharge Date Time 00189,PV2,9,24,DTM,,,3.4.4.9,,,,',
  `expected_discharge_disposition` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Expected Discharge Disposition 00728,PV2,27,2,IS,,0112,3.4.4.27,,,,',
  `expected_loa_return_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Expected LOA Return Date Time 01550,PV2,47,24,DTM,,,3.4.4.47,,,,',
  `expected_number_of_insurance_plans` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Expected Number of Insurance Plans 00721,PV2,20,1,NM,,,3.4.4.20,,,,',
  `expected_pre-admission_testing_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Expected Pre-admission Testing Date Time 01841,PV2,48,24,DTM,,,3.4.4.48,,,,',
  `expected_surgery_date_and_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Expected Surgery Date and Time 00734,PV2,33,24,DTM,,,3.4.4.33,,,,',
  `first_similar_illness_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' First Similar Illness Date 00730,PV2,29,8,DT,,,3.4.4.29,,,,',
  `living_will_code2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Living Will Code 00759,PV2,43,2,IS,,0315,3.4.4.43,,,,',
  `military_non-availability_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Military Non-Availability Code 00736,PV2,35,1,ID,,0136,3.4.4.35,,,,',
  `military_partnership_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Military Partnership Code 00735,PV2,34,1,ID,,0136,3.4.4.34,,,,',
  `mode_of_arrival_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Mode of Arrival Code 01543,PV2,38,705,CWE,,0430,3.4.4.38,,,,',
  `newborn_baby_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Newborn Baby Indicator 00737,PV2,36,1,ID,,0136,3.4.4.36,,,,',
  `notify_clergy_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Notify Clergy Code 01842,PV2,49,20,IS,Y,0534,3.4.4.49,,,,',
  `organ_donor_code1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Organ Donor Code 00760,PV2,44,2,IS,,0316,3.4.4.44,,,,',
  `patient_charge_adjustment_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Patient Charge Adjustment Code 00731,PV2,30,705,CWE,,0218,3.4.4.30,,,,',
  `patient_condition_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Patient Condition Code 01547,PV2,42,705,CWE,,0434,3.4.4.42,,,,',
  `patient_status_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Patient Status Code 00725,PV2,24,2,IS,,0216,3.4.4.24,,,,',
  `patient_status_effective_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Patient Status Effective Date 01549,PV2,46,8,DT,,,3.4.4.46,,,,',
  `patient_valuables` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Patient Valuables 00185,PV2,5,25,ST,Y,,3.4.4.5,,,,',
  `patient_valuables_location` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Patient Valuables Location 00186,PV2,6,25,ST,,,3.4.4.6,,,,',
  `precaution_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Precaution Code 01546,PV2,41,705,CWE,Y,0433,3.4.4.41,,,,',
  `previous_service_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Previous Service Date 00715,PV2,14,8,DT,,,3.4.4.14,,,,',
  `previous_treatment_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Previous Treatment Date 00727,PV2,26,8,DT,,,3.4.4.26,,,,',
  `prior_pending_location` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Prior Pending Location 00181,PV2,1,80,PL,,,3.4.4.1,,,,',
  `purge_status_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Purge Status Code 00717,PV2,16,1,IS,,0213,3.4.4.16,,,,',
  `purge_status_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Purge Status Date 00718,PV2,17,8,DT,,,3.4.4.17,,,,',
  `recreational_drug_use_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Recreational Drug Use Code 01544,PV2,39,705,CWE,Y,0431,3.4.4.39,,,,',
  `recurring_service_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Recurring Service Code 00732,PV2,31,2,IS,,0219,3.4.4.31,,,,',
  `referral_source_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Referral Source Code 00714,PV2,13,250,XCN,Y,,3.4.4.13,,,,',
  `retention_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Retention Indicator 00720,PV2,19,1,ID,,0136,3.4.4.19,,,,',
  `signature_on_file_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Signature on File Date 00729,PV2,28,8,DT,,,3.4.4.28,,,,',
  `special_program_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Special Program Code 00719,PV2,18,2,IS,,0214,3.4.4.18,,,,',
  `transfer_reason` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Transfer Reason 00184,PV2,4,705,CWE,,,3.4.4.4,,,,',
  `visit_description` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Visit Description 00713,PV2,12,50,ST,,,3.4.4.12,,,,',
  `visit_priority_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Visit Priority Code 00726,PV2,25,1,IS,,0217,3.4.4.25,,,,',
  `visit_protection_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Visit Protection Indicator 00723,PV2,22,0,ID,,0136,3.4.4.22,,,,',
  `visit_publicity_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Visit Publicity Code 00722,PV2,21,1,IS,,0215,3.4.4.21,,,,',
  `visit_user_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Visit User Code 00187,PV2,7,2,IS,Y,0130,3.4.4.7,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_qrd`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_qrd` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `deferred_response_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Deferred Response Date Time 00030,QRD,6,24,DTM,,,5.10.4.1.6,,,,',
  `deferred_response_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Deferred Response Type 00029,QRD,5,1,ID,,0107,5.10.4.1.5,,,,',
  `quantity_limited_request2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Quantity Limited Request 00031,QRD,7,10,CQ,,0126,5.10.4.1.7,,,,',
  `query_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Query Date Time 00025,QRD,1,24,DTM,,,5.10.4.1.1,,,,',
  `query_format_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Query Format Code 00026,QRD,2,1,ID,,0106,5.10.4.1.2,,,,',
  `query_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Query ID 00028,QRD,4,10,ST,,,5.10.4.1.4,,,,',
  `query_priority2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Query Priority 00027,QRD,3,1,ID,,0091,5.10.4.1.3,,,,',
  `query_results_level` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Query Results Level 00036,QRD,12,1,ID,,0108,5.10.4.1.12,,,,',
  `what_data_code_value_qual` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' What Data Code Value Qual. 00035,QRD,11,20,VR,Y,,5.10.4.1.11,,,,',
  `what_department_data_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' What Department Data Code 00034,QRD,10,250,CWE,Y,,5.10.4.1.10,,,,',
  `what_subject_filter` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' What Subject Filter 00033,QRD,9,250,CWE,Y,0048,5.10.4.1.9,,,,',
  `who_subject_filter` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Who Subject Filter 00032,QRD,8,250,XCN,Y,,5.10.4.1.8,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_rcp`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_rcp` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `execution_and_delivery_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Execution and Delivery Time 01441,RCP,4,24,DTM,,,5.5.6.4,,,,',
  `modify_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Modify Indicator 01443,RCP,5,1,ID,,0395,5.5.6.5,,,,',
  `quantity_limited_request1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Quantity Limited Request 00031,RCP,2,10,CQ,,0126,5.5.6.2,,,,',
  `query_priority1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Query Priority 00027,RCP,1,1,ID,,0091,5.5.6.1,,,,',
  `response_modality` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Response Modality 01440,RCP,3,250,CNE,,0394,5.5.6.3,,,,',
  `segment_group_inclusion` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Segment group inclusion 01594,RCP,7,256,ID,Y,0391,5.5.6.7,,,,',
  `sort-by_field` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Sort-by Field 01624,RCP,6,512,SRT,Y,,5.5.6.6,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_rdt`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_rdt` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `column_value` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Column Value 00703,RDT,1,99999 varies,,,5.5.8.1,,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_rfi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_rfi` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `date_additional_information_submitted` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Date Additional Information was submitted 01913,RFI,4,24,DTM,,,16.4.1.4,,,,',
  `patient_consent` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Patient Consent 01912,RFI,3,1,ID,,0136,16.4.1.3,,,,',
  `request_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Request Date 01910,RFI,1,24,DTM,,,16.4.1.1,,,,',
  `response_due_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Response Due Date 01911,RFI,2,24,DTM,,,16.4.1.2,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_rgs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_rgs` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `resource_group_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Resource Group ID 01204,RGS,3,250,CWE,,,10.6.3.3,,,,',
  `segment_action_code7` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Segment Action Code 00763,RGS,2,3,ID,,0206,10.6.3.2,,,,',
  `set_id_rgs` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - RGS 01203,RGS,1,4,SI,,,10.6.3.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_rmi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_rmi` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `date_time_incident` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Date Time Incident 01531,RMI,2,24,DTM,,,6.5.14.2,,,,',
  `incident_type_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Incident Type Code 01533,RMI,3,250,CWE,,0428,6.5.14.3,,,,',
  `risk_management_incident_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Risk Management Incident Code 01530,RMI,1,250,CWE,,0427,6.5.14.1,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_rxd`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_rxd` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `actual_dispense_amount` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Actual Dispense Amount 00337,RXD,4,20,NM,,,4.14.5.4,,,,',
  `actual_dispense_units` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Actual Dispense Units 00338,RXD,5,250,CWE,,9999,4.14.5.5,,,,',
  `actual_dosage_form` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Actual Dosage Form 00339,RXD,6,250,CWE,,9999,4.14.5.6,,,,',
  `actual_drug_strength_volume` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Actual Drug Strength Volume 01686,RXD,28,5,NM,,,4.14.5.28,,,,',
  `actual_drug_strength_volume_units` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Actual Drug Strength Volume Units 01687,RXD,29,250,CWE,,9999,4.14.5.29,,,,',
  `actual_strength` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Actual Strength 01132,RXD,16,20,NM,,,4.14.5.16,,,,',
  `actual_strength_unit` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Actual Strength Unit 01133,RXD,17,250,CWE,,9999,4.14.5.17,,,,',
  `date_time_dispensed` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Date Time Dispensed 00336,RXD,3,24,DTM,,,4.14.5.3,,,,',
  `dispense_notes` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Dispense Notes 00340,RXD,9,200,ST,Y,,4.14.5.9,,,,',
  `dispense_package_method2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Dispense Package Method 01222,RXD,24,2,ID,,0321,4.14.5.24,,,,',
  `dispense_package_size1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Dispense Package Size 01220,RXD,22,20,NM,,,4.14.5.22,,,,',
  `dispense_package_size_unit1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Dispense Package Size Unit 01221,RXD,23,250,CWE,,9999,4.14.5.23,,,,',
  `dispense_sub-id_counter2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Dispense Sub-ID Counter 00334,RXD,1,4,NM,,,4.14.5.1,,,,',
  `dispense_to_pharmacy1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Dispense to Pharmacy 01688,RXD,30,180,CWE,,9999,4.14.5.30,,,,',
  `dispense_to_pharmacy_address1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Dispense to Pharmacy Address 01689,RXD,31,106,XAD,,,4.14.5.31,,,,',
  `dispense_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Dispense Type 01691,RXD,33,250,CWE,,0484,4.14.5.33,,,,',
  `dispense_give_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Dispense Give Code 00335,RXD,2,250,CWE,,0292,4.14.5.2,,,,',
  `dispense-to_location2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Dispense-to Location 01303,RXD,13,0,LA2,,,4.14.5.13,,,,',
  `dispensing_provider` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Dispensing Provider 00341,RXD,10,200,XCN,Y,,4.14.5.10,,,,',
  `indication4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Indication 01123,RXD,21,250,CWE,Y,9999,4.14.5.21,,,,',
  `initiating_location` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Initiating Location 01477,RXD,26,250,CWE,,9999,4.14.5.26,,,,',
  `needs_human_review2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Needs Human Review 00307,RXD,14,1,ID,,0136,4.14.5.14,,,,',
  `number_refills_remaining1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Number of Refills Remaining 00326,RXD,8,20,NM,,,4.14.5.8,,,,',
  `packaging_assembly_location` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Packaging Assembly Location 01478,RXD,27,250,CWE,,9999,4.14.5.27,,,,',
  `pharmacy_order_type4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Pharmacy Order Type 01690,RXD,32,1,ID,,0480,4.14.5.32,,,,',
  `prescription_number2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Prescription Number 00325,RXD,7,20,ST,,,4.14.5.7,,,,',
  `substance_expiration_date1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Substance Expiration Date 01130,RXD,19,24,DTM,Y,,4.14.5.19,,,,',
  `substance_lot_number5` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Substance Lot Number 01129,RXD,18,20,ST,Y,,4.14.5.18,,,,',
  `substance_manufacturer_name1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Substance Manufacturer Name 01131,RXD,20,250,CWE,Y,0227,4.14.5.20,,,,',
  `substitution_status3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Substitution Status 00322,RXD,11,1,ID,,0167,4.14.5.11,,,,',
  `supplementary_code2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Supplementary Code 01476,RXD,25,250,CWE,Y,9999,4.14.5.25,,,,',
  `total_daily_dose1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Total Daily Dose 00329,RXD,12,10,CQ,,,4.14.5.12,,,,',
  
  PRIMARY KEY (`pid_id`)  )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_rxe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_rxe` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `controlled_substance_schedule` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Controlled Substance Schedule 01676,RXE,35,60,CWE,,0477,4.14.4.35,,,,',
  `d_t_of_recent_refill_dose_dispensed` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' D T of Most Recent Refill or Dose Dispensed 00328,RXE,18,24,DTM,,,4.14.4.18,,,,',
  `deliver-to_address1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Deliver-to Address 01684,RXE,43,250,XAD,,,4.14.4.43,,,,',
  `deliver-to_location2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Deliver-To Location 00299,RXE,8,0,LA1,,,4.14.4.8,,,,',
  `deliver-to_patient_location2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Deliver-to Patient Location 01683,RXE,42,80,PL,,,4.14.4.42,,,,',
  `dispense_amount` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Dispense Amount 00323,RXE,10,20,NM,,,4.14.4.10,,,,',
  `dispense_package_method1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Dispense Package Method 01222,RXE,30,2,ID,,0321,4.14.4.30,,,,',
  `dispense_package_size2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Dispense Package Size 01220,RXE,28,20,NM,,,4.14.4.28,,,,',
  `dispense_package_size_unit2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Dispense Package Size Unit 01221,RXE,29,250,CWE,,9999,4.14.4.29,,,,',
  `dispense_units` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Dispense Units 00324,RXE,11,250,CWE,,9999,4.14.4.11,,,,',
  `dispensing_pharmacy1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Dispensing Pharmacy 01681,RXE,40,250,CWE,,9999,4.14.4.40,,,,',
  `dispensing_pharmacy_address2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Dispensing Pharmacy Address 01682,RXE,41,250,XAD,,,4.14.4.41,,,,',
  `formulary_status1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Formulary Status 01677,RXE,36,1,ID,,0478,4.14.4.36,,,,',
  `give_amount_-_maximum2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Give Amount - Maximum 00319,RXE,4,20,NM,,,4.14.4.4,,,,',
  `give_amount_-_minimum4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Give Amount - Minimum 00318,RXE,3,20,NM,,,4.14.4.3,,,,',
  `give_code2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Give Code 00317,RXE,2,250,CWE,,0292,4.14.4.2,,,,',
  `give_dosage_form1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Give Dosage Form 00321,RXE,6,250,CWE,,9999,4.14.4.6,,,,',
  `give_drug_strength_volume2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Give Drug Strength Volume 01674,RXE,33,5,NM,,,4.14.4.33,,,,',
  `give_drug_strength_volume_units4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Give Drug Strength Volume Units 01675,RXE,34,250,CWE,,9999,4.14.4.34,,,,',
  `give_indication` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Give Indication 01128,RXE,27,250,CWE,Y,9999,4.14.4.27,,,,',
  `give_per_(time_unit)1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Give Per (Time Unit) 00331,RXE,22,20,ST,,,4.14.4.22,,,,',
  `give_rate_amount2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Give Rate Amount 00332,RXE,23,6,ST,,,4.14.4.23,,,,',
  `give_rate_units1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Give Rate Units 00333,RXE,24,250,CWE,,9999,4.14.4.24,,,,',
  `give_strength2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Give Strength 01126,RXE,25,20,NM,,,4.14.4.25,,,,',
  `give_strength_units1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Give Strength Units 01127,RXE,26,250,CWE,,9999,4.14.4.26,,,,',
  `give_units2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Give Units 00320,RXE,5,250,CWE,,9999,4.14.4.5,,,,',
  `initial_dispense_amount` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Initial Dispense Amount 01680,RXE,39,250,NM,,,4.14.4.39,,,,',
  `needs_human_review1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Needs Human Review 00307,RXE,20,1,ID,,0136,4.14.4.20,,,,',
  `number_refills2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Number Of Refills 00304,RXE,12,3,NM,,,4.14.4.12,,,,',
  `number_refills_remaining2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Number of Refills Remaining 00326,RXE,16,20,NM,,,4.14.4.16,,,,',
  `number_refills_doses_dispensed` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Number of Refills Doses Dispensed 00327,RXE,17,20,NM,,,4.14.4.17,,,,',
  `ordering_provider_dea_number2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Ordering Provider DEA Number 00305,RXE,13,250,XCN,Y,,4.14.4.13,,,,',
  `original_order_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Original Order Date Time 01673,RXE,32,24,DTM,,,4.14.4.32,,,,',
  `pharmaceutical_substance_alternative` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Pharmaceutical Substance Alternative 01678,RXE,37,60,CWE,Y,9999,4.14.4.37,,,,',
  `pharmacist_treatment_supplier_verifier_id2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Pharmacist Treatment Supplier Verifier ID 00306,RXE,14,250,XCN,Y,,4.14.4.14,,,,',
  `pharmacy_of_most_recent_fill` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Pharmacy of Most Recent Fill 01679,RXE,38,250,CWE,,9999,4.14.4.38,,,,',
  `pharmacy_order_type2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Pharmacy Order Type 01685,RXE,44,1,ID,,0480,4.14.4.44,,,,',
  `prescription_number1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Prescription Number 00325,RXE,15,20,ST,,,4.14.4.15,,,,',
  `provider_administration_instructions1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Provider Administration Instructions 00298,RXE,7,250,CWE,Y,9999,4.14.4.7,,,,',
  `quantity_timing1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Quantity Timing 00221,RXE,1,0,TQ,,,4.14.4.1,,,,',
  `substitution_status2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Substitution Status 00322,RXE,9,1,ID,,0167,4.14.4.9,,,,',
  `supplementary_code1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Supplementary Code 01476,RXE,31,250,CWE,Y,9999,4.14.4.31,,,,',
  `total_daily_dose2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Total Daily Dose 00329,RXE,19,10,CQ,,,4.14.4.19,,,,',
  
  PRIMARY KEY (`pid_id`) )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_rxo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_rxo` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `allow_substitutions` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Allow Substitutions 00300,RXO,9,1,ID,,0161,4.14.1.9,,,,',
  `deliver-to_address3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Deliver-to Address 01684,RXO,35,250,XAD,,,4.14.1.35,,,,',
  `deliver-to_location1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Deliver-To Location 00299,RXO,8,0,LA1,,,4.14.1.8,,,,',
  `deliver-to_patient_location1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Deliver-to Patient Location 01683,RXO,34,80,PL,,,4.14.1.34,,,,',
  `dispensing_interval` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Dispensing Interval 01669,RXO,28,20,NM,,,4.14.1.28,,,,',
  `dispensing_pharmacy2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Dispensing Pharmacy 01681,RXO,32,250,CWE,,9999,4.14.1.32,,,,',
  `dispensing_pharmacy_address1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Dispensing Pharmacy Address 01682,RXO,33,250,XAD,,,4.14.1.33,,,,',
  `indication2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Indication 01123,RXO,20,250,CWE,Y,9999,4.14.1.20,,,,',
  `medication_instance_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Medication Instance Identifier 02149,RXO,29,60,EI,,,4.14.1.29,,,,',
  `mood_code1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Mood Code 02151,RXO,31,2,CNE,,0725,4.14.1.31,,,,',
  `needs_human_review3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Needs Human Review 00307,RXO,16,1,ID,,0136,4.14.1.16,,,,',
  `number_refills1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Number Of Refills 00304,RXO,13,3,NM,,,4.14.1.13,,,,',
  `ordering_provider_dea_number1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Ordering Provider DEA Number 00305,RXO,14,250,XCN,Y,,4.14.1.14,,,,',
  `pharmacist_treatment_supplier_verifier_id1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Pharmacist Treatment Supplier Verifier ID 00306,RXO,15,250,XCN,Y,,4.14.1.15,,,,',
  `pharmacy_order_type1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Pharmacy Order Type 01668,RXO,27,1,ID,,0480,4.14.1.27,,,,',
  `provider_administration_instructions2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Provider Administration Instructions 00298,RXO,7,250,CWE,Y,9999,4.14.1.7,,,,',
  `provider_pharmacy_treatment_instructions` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Provider Pharmacy Treatment Instructions 00297,RXO,6,250,CWE,Y,9999,4.14.1.6,,,,',
  `requested_dispense_amount` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Requested Dispense Amount 00302,RXO,11,20,NM,,,4.14.1.11,,,,',
  `requested_dispense_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Requested Dispense Code 00301,RXO,10,250,CWE,,9999,4.14.1.10,,,,',
  `requested_dispense_units` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Requested Dispense Units 00303,RXO,12,250,CWE,,9999,4.14.1.12,,,,',
  `requested_dosage_form` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Requested Dosage Form 00296,RXO,5,250,CWE,,9999,4.14.1.5,,,,',
  `requested_drug_strength_volume` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Requested Drug Strength Volume 01666,RXO,25,5,NM,,,4.14.1.25,,,,',
  `requested_drug_strength_volume_units` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Requested Drug Strength Volume Units 01667,RXO,26,250,CWE,,9999,4.14.1.26,,,,',
  `requested_give_amount_maximum1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Requested Give Amount - Maximum 00294,RXO,3,20,NM,,,4.14.1.3,,,,',
  `requested_give_amount_minimum2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Requested Give Amount - Minimum 00293,RXO,2,20,NM,,,4.14.1.2,,,,',
  `requested_give_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Requested Give Code 00292,RXO,1,250,CWE,,9999,4.14.1.1,,,,',
  `requested_give_per_time_unit` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Requested Give Per (Time Unit) 00308,RXO,17,20,ST,,,4.14.1.17,,,,',
  `requested_give_rate_amount` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Requested Give Rate Amount 01218,RXO,21,6,ST,,,4.14.1.21,,,,',
  `requested_give_rate_units` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Requested Give Rate Units 01219,RXO,22,250,CWE,,9999,4.14.1.22,,,,',
  `requested_give_strength` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Requested Give Strength 01121,RXO,18,20,NM,,,4.14.1.18,,,,',
  `requested_give_strength_units` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Requested Give Strength Units 01122,RXO,19,250,CWE,,9999,4.14.1.19,,,,',
  `requested_give_units` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Requested Give Units 00295,RXO,4,250,CWE,,9999,4.14.1.4,,,,',
  `segment_instance_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Segment Instance Identifier 02150,RXO,30,60,EI,,,4.14.1.30,,,,',
  `supplementary_code4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Supplementary Code 01476,RXO,24,250,CWE,Y,9999,4.14.1.24,,,,',
  `total_daily_dose3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Total Daily Dose 00329,RXO,23,10,CQ,,,4.14.1.23,,,,',
  
  PRIMARY KEY (`pid_id`) )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_sac`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_sac` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `other_environmental_factors` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Other Environmental Factors 01371,SAC,44,705,CWE,Y,0377,13.4.3.44,,,,',
  `accession_identifier2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Accession Identifier 01330,SAC,2,427,EI,,,13.4.3.2,,,,',
  `additive2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Additive 00647,SAC,27,705,CWE,Y,0371,13.4.3.27,,,,',
  `artificial_blood` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Artificial Blood 01369,SAC,42,705,CWE,,0375,13.4.3.42,,,,',
  `available_specimen_volume` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Available Specimen Volume 01349,SAC,22,20,NM,,,13.4.3.22,,,,',
  `barrier_delta` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Barrier Delta 01345,SAC,18,20,NM,,,13.4.3.18,,,,',
  `bottom_delta` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Bottom Delta 01346,SAC,19,20,NM,,,13.4.3.19,,,,',
  `cap_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Cap Type 01353,SAC,26,705,CWE,,0381,13.4.3.26,,,,',
  `carrier_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Carrier Identifier 01337,SAC,10,705,EI,,,13.4.3.10,,,,',
  `carrier_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Carrier Type 01336,SAC,9,705,CWE,,0378,13.4.3.9,,,,',
  `container_diameter` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Container Diameter 01344,SAC,17,20,NM,,,13.4.3.17,,,,',
  `container_height` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Container Height 01343,SAC,16,20,NM,,,13.4.3.16,,,,',
  `container_height_diameter_delta_units` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Container Height Diameter Delta Units 01347,SAC,20,705,CWE,,9999,13.4.3.20,,,,',
  `container_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Container Identifier 01331,SAC,3,427,EI,,,13.4.3.3,,,,',
  `container_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Container Status 01335,SAC,8,705,CWE,,0370,13.4.3.8,,,,',
  `container_volume2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Container Volume 00644,SAC,21,20,NM,,,13.4.3.21,,,,',
  `dilution_factor1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Dilution Factor 01356,SAC,29,36,SN,,,13.4.3.29,,,,',
  `drug_interference` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Drug Interference 01368,SAC,41,705,CWE,Y,0382,13.4.3.41,,,,',
  `equipment_container_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Equipment Container Identifier 01333,SAC,5,427,EI,,,13.4.3.5,,,,',
  `external_accession_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' External Accession Identifier 01329,SAC,1,427,EI,,,13.4.3.1,,,,',
  `fibrin_index` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Fibrin Index 01365,SAC,38,20,NM,,,13.4.3.38,,,,',
  `fibrin_index_units` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Fibrin Index Units 01366,SAC,39,705,CWE,,9999,13.4.3.39,,,,',
  `hemolysis_index` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Hemolysis Index 01359,SAC,32,20,NM,,,13.4.3.32,,,,',
  `hemolysis_index_units` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Hemolysis Index Units 01360,SAC,33,705,CWE,,9999,13.4.3.33,,,,',
  `icterus_index` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Icterus Index 01363,SAC,36,20,NM,,,13.4.3.36,,,,',
  `icterus_index_units` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Icterus Index Units 01364,SAC,37,705,CWE,,9999,13.4.3.37,,,,',
  `initial_specimen_volume` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Initial Specimen Volume 01350,SAC,23,20,NM,,,13.4.3.23,,,,',
  `lipemia_index` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Lipemia Index 01361,SAC,34,20,NM,,,13.4.3.34,,,,',
  `lipemia_index_units` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Lipemia Index Units 01362,SAC,35,705,CWE,,9999,13.4.3.35,,,,',
  `location` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Location 01342,SAC,15,705,CWE,Y,9999,13.4.3.15,,,,',
  
  PRIMARY KEY (`pid_id`) )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_scd`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_scd` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `abort_cycle` VARCHAR(4) NOT NULL DEFAULT ' ' COMMENT ' Abort Cycle 02122,SCD,19,4,CNE,,0532,17.7.4.19,,,,',
  `alarm` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Alarm 02123,SCD,20,4,CNE,,0532,17.7.4.20,,,,',
  `attending_doctor1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Attending Doctor 00137,SCD,34,250,XCN,,0010,17.7.4.34,,,,',
  `condition_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Condition Time 02109,SCD,6,16,CQ,,,17.7.4.6,,,,',
  `control_temperature` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Control Temperature 02117,SCD,14,36,CQ,,,17.7.4.14,,,,',
  `cycle_complete_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Cycle Complete Time 02119,SCD,16,16,TM,,,17.7.4.16,,,,',
  `cycle_count` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Cycle Count 02105,SCD,2,16,NM,,,17.7.4.2,,,,',
  `cycle_start_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Cycle Start Date Time 02114,SCD,11,24,DTM,,,17.7.4.11,,,,',
  `cycle_start_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Cycle Start Time 02104,SCD,1,16,TM,,,17.7.4.1,,,,',
  `cycle_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Cycle Type 02131,SCD,28,3,CWE,,0702,17.7.4.28,,,,',
  `device_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Device Status 02113,SCD,10,4,CWE,,0682,17.7.4.10,,,,',
  `dilution_factor2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Dilution Factor 01356,SCD,35,36,SN,,,17.7.4.35,,,,',
  `door_open` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Door Open 02129,SCD,26,4,CNE,,0532,17.7.4.26,,,,',
  `dry_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Dry Time 02115,SCD,12,16,CQ,,,17.7.4.12,,,,',
  `exhaust_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Exhaust Time 02111,SCD,8,16,CQ,,,17.7.4.8,,,,',
  `fill_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Fill Time 02139,SCD,36,16,CQ,,,17.7.4.36,,,,',
  `injection_rate` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Injection Rate 02134,SCD,31,16,CQ,,,17.7.4.31,,,,',
  `inlet_temperature` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inlet Temperature 02140,SCD,37,36,CQ,,,17.7.4.37,,,,',
  `leak_rate` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Leak Rate 02116,SCD,13,16,CQ,,,17.7.4.13,,,,',
  `load_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Load Number 02108,SCD,5,16,NM,,,17.7.4.5,,,,',
  `long_in_charge_phase` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Long in Charge Phase 02124,SCD,21,4,CNE,,0532,17.7.4.21,,,,',
  `long_in_exhaust_phase` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Long in Exhaust Phase 02125,SCD,22,4,CNE,,0532,17.7.4.22,,,,',
  `long_in_fast_exhaust_phase` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Long in Fast Exhaust Phase 02126,SCD,23,4,CNE,,0532,17.7.4.23,,,,',
  `operator_unload` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Operator - Unload 02128,SCD,25,15,XCN,,,17.7.4.25,,,,',
  `over_temperature` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Over Temperature 02121,SCD,18,36,CQ,,,17.7.4.18,,,,',
  `patient_identifier_list1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Patient Identifier List 00106,SCD,33,250,CX,Y,,17.7.4.33,,,,',
  `procedure_code4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Procedure Code 00393,SCD,32,705,CNE,,0088,17.7.4.32,,,,',
  `reading_failure` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Reading Failure 02130,SCD,27,4,CNE,,0532,17.7.4.27,,,,',
  `reset` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Reset 02127,SCD,24,4,CNE,,0532,17.7.4.24,,,,',
  `sterilize_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Sterilize Time 02110,SCD,7,16,CQ,,,17.7.4.7,,,,',
  `sterilizer_temperature` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Sterilizer Temperature 02118,SCD,15,36,CQ,,,17.7.4.15,,,,',
  `temp_max` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Temp Max 02106,SCD,3,36,CQ,,,17.7.4.3,,,,',
  `temp_min` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Temp Min 02107,SCD,4,36,CQ,,,17.7.4.4,,,,',
  `thermal_rinse_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Thermal Rinse Time 02132,SCD,29,16,CQ,,,17.7.4.29,,,,',
  `total_cycle_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Total Cycle Time 02112,SCD,9,16,CQ,,,17.7.4.9,,,,',
  `under_temperature` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Under Temperature 02120,SCD,17,36,CQ,,,17.7.4.17,,,,',
  `wash_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Wash Time 02133,SCD,30,16,CQ,,,17.7.4.30,,,,',
  
  PRIMARY KEY (`pid_id`) )
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_sch`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_sch` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `appointment_duration1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Appointment Duration 00868,SCH,9,0,NM,,,10.6.2.9,,,,',
  `appointment_duration_units2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Appointment Duration Units 00869,SCH,10,0,CNE,,,10.6.2.10,,,,',
  `appointment_reason2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Appointment Reason 00866,SCH,7,250,CWE,,0276,10.6.2.7,,,,',
  `appointment_timing_quantity` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Appointment Timing Quantity 00884,SCH,11,0,TQ,Y,,10.6.2.11,,,,',
  `appointment_type1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Appointment Type 00867,SCH,8,250,CWE,,0277,10.6.2.8,,,,',
  `entered_by_location1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Entered By Location 00880,SCH,22,80,PL,,,10.6.2.22,,,,',
  `entered_by_person2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Entered By Person 00878,SCH,20,250,XCN,Y,,10.6.2.20,,,,',
  `entered_by_phone_number1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Entered By Phone Number 00879,SCH,21,250,XTN,Y,,10.6.2.21,,,,',
  `event_reason` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Event Reason 00883,SCH,6,250,CWE,,,10.6.2.6,,,,',
  `filler_appointment_id2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Filler Appointment ID 00861,SCH,2,75,EI,,,10.6.2.2,,,,',
  `filler_contact_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Filler Contact Address 00887,SCH,18,250,XAD,Y,,10.6.2.18,,,,',
  `filler_contact_location` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Filler Contact Location 00888,SCH,19,80,PL,,,10.6.2.19,,,,',
  `filler_contact_person` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Filler Contact Person 00885,SCH,16,250,XCN,Y,,10.6.2.16,,,,',
  `filler_contact_phone_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Filler Contact Phone Number 00886,SCH,17,250,XTN,,,10.6.2.17,,,,',
  `filler_order_number1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Filler Order Number 00217,SCH,27,427,EI,Y,,10.6.2.27,,,,',
  `filler_status_code3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Filler Status Code 00889,SCH,25,250,CWE,,0278,10.6.2.25,,,,',
  `occurrence_number2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Occurrence Number 00862,SCH,3,5,NM,,,10.6.2.3,,,,',
  `parent_filler_appointment_id2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Parent Filler Appointment ID 00882,SCH,24,75,EI,,,10.6.2.24,,,,',
  `parent_placer_appointment_id4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Parent Placer Appointment ID 00881,SCH,23,75,EI,,,10.6.2.23,,,,',
  `placer_appointment_id2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Placer Appointment ID 00860,SCH,1,75,EI,,,10.6.2.1,,,,',
  `placer_contact_address1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Placer Contact Address 00876,SCH,14,250,XAD,Y,,10.6.2.14,,,,',
  `placer_contact_location2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Placer Contact Location 00877,SCH,15,80,PL,,,10.6.2.15,,,,',
  `placer_contact_person2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Placer Contact Person 00874,SCH,12,250,XCN,Y,,10.6.2.12,,,,',
  `placer_contact_phone_number1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Placer Contact Phone Number 00875,SCH,13,250,XTN,,,10.6.2.13,,,,',
  `placer_group_number1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Placer Group Number 00218,SCH,4,22,EI,,,10.6.2.4,,,,',
  `placer_order_number4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Placer Order Number 00216,SCH,26,427,EI,Y,,10.6.2.26,,,,',
  `schedule_id2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Schedule ID 00864,SCH,5,250,CWE,,,10.6.2.5,,,,',
  
  PRIMARY KEY (`pid_id`))
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_scp`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_scp` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `date_format` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Date Format 02089,SCP,3,250,CWE,,0653,17.7.1.3,,,,',
  `device_model_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Device Model Name 02091,SCP,6,2,ST,,,17.7.1.6,,,,',
  `device_name1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Device Name 02279,SCP,5,999,ST,,,17.7.1.5,,,,',
  `device_number2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Device Number 02090,SCP,4,8,EI,,,17.7.1.4,,,,',
  `device_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Device Type 02092,SCP,7,250,CWE,,0657,17.7.1.7,,,,',
  `labor_calculation_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Labor Calculation Type 02088,SCP,2,250,CWE,,0651,17.7.1.2,,,,',
  `lot_control` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Lot Control 02093,SCP,8,250,CWE,,0659,17.7.1.8,,,,',
  
  PRIMARY KEY (`pid_id`))
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_sdd`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_sdd` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `control_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Control Code 02102,SDD,6,3,NM,,,17.7.3.6,,,,',
  `device_data_state` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Device Data State 02100,SDD,4,1,IS,,0667,17.7.3.4,,,,',
  `device_name2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Device Name 02281,SDD,3,999,ST,,,17.7.3.3,,,,',
  `device_number3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Device Number 02099,SDD,2,8,EI,,,17.7.3.2,,,,',
  `load_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Load Status 02101,SDD,5,3,IS,,0669,17.7.3.5,,,,',
  `lot_number1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Lot Number 02098,SDD,1,11,EI,,,17.7.3.1,,,,',
  `operator_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Operator Name 02103,SDD,7,15,ST,,,17.7.3.7,,,,',
  
  PRIMARY KEY (`pid_id`))
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_sft`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_sft` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `software_binary_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Software Binary ID 01837,SFT,4,20,ST,,,2.14.12.4,,,,',
  `software_install_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Software Install Date 01839,SFT,6,24,DTM,,,2.14.12.6,,,,',
  `software_product_information` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Software Product Information 01838,SFT,5,1024,TX,,,2.14.12.5,,,,',
  `software_product_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Software Product Name 01836,SFT,3,20,ST,,,2.14.12.3,,,,',
  `software_vendor_organization` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Software Vendor Organization 01834,SFT,1,567,XON,,,2.14.12.1,,,,',
  
  PRIMARY KEY (`pid_id`))
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_sid`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_sid` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `application_method_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Application Method Identifier 01426,SID,1,705,CWE,,9999,13.4.11.1,,,,',
  `substance_container_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Substance Container Identifier 01428,SID,3,200,ST,,,13.4.11.3,,,,',
  `substance_lot_number3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Substance Lot Number 01129,SID,2,20,ST,,,13.4.11.2,,,,',
  `substance_manufacturer_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Substance Manufacturer Identifier 01429,SID,4,705,CWE,,0385,13.4.11.4,,,,',
  
  PRIMARY KEY (`pid_id`))
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_slt`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_slt` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `bar_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Bar Code 02097,SLT,5,30,ST,,,17.7.2.5,,,,',
  `device_name3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Device Name 02280,SLT,2,999,ST,,,17.7.2.2,,,,',
  `device_number1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Device Number 02094,SLT,1,8,EI,,,17.7.2.1,,,,',
  `item_identifier1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Item Identifier 02096,SLT,4,250,EI,,,17.7.2.4,,,,',
  `lot_number2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Lot Number 02095,SLT,3,11,EI,,,17.7.2.3,,,,',
  
  PRIMARY KEY (`pid_id`))
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_spm`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_spm` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `container_condition` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Container Condition 01774,SPM,28,705,CWE,,0544,7.4.3.28,,,,',
  `container_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Container Type 01773,SPM,27,705,CWE,,9999,7.4.3.27,,,,',
  `grouped_specimen_count` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Grouped Specimen Count 01763,SPM,13,6,NM,,,7.4.3.13,,,,',
  `number_specimen_containers` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Number of Specimen Containers 01772,SPM,26,4,NM,,,7.4.3.26,,,,',
  `set_id_spm` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - SPM 01754,SPM,1,4,SI,,,7.4.3.1,,,,',
  `specimen_additives` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Additives 01758,SPM,6,705,CWE,Y,0371,7.4.3.6,,,,',
  `specimen_appropriateness` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Appropriateness 01769,SPM,23,705,CWE,,0492,7.4.3.23,,,,',
  `specimen_availability` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Availability 01766,SPM,20,1,ID,,0136,7.4.3.20,,,,',
  `specimen_child_role` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Child Role 01775,SPM,29,705,CWE,,0494,7.4.3.29,,,,',
  `specimen_collection_amount` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Collection Amount 01902,SPM,12,20,CQ,,,7.4.3.12,,,,',
  `specimen_collection_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Collection Date Time 01765,SPM,17,49,DR,,,7.4.3.17,,,,',
  `specimen_collection_method` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Collection Method 01759,SPM,7,705,CWE,,0488,7.4.3.7,,,,',
  `specimen_collection_site` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Collection Site 01761,SPM,10,705,CWE,,0543,7.4.3.10,,,,',
  `specimen_condition` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Condition 01770,SPM,24,705,CWE,Y,0493,7.4.3.24,,,,',
  `specimen_current_quantity` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Current Quantity 01771,SPM,25,722,CQ,,,7.4.3.25,,,,',
  `specimen_description` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Description 01764,SPM,14,250,ST,Y,,7.4.3.14,,,,',
  `specimen_expiration_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Expiration Date Time 01904,SPM,19,24,DTM,,,7.4.3.19,,,,',
  `specimen_handling_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Handling Code 01908,SPM,15,705,CWE,Y,0376,7.4.3.15,,,,',
  `specimen_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen ID 01755,SPM,2,855,EIP,,,7.4.3.2,,,,',
  `specimen_parent_ids` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Parent IDs 01756,SPM,3,855,EIP,Y,,7.4.3.3,,,,',
  `specimen_quality` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Quality 01768,SPM,22,705,CWE,,0491,7.4.3.22,,,,',
  `specimen_received_date_time2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Received Date Time 00248,SPM,18,24,DTM,,,7.4.3.18,,,,',
  `specimen_reject_reason` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Reject Reason 01767,SPM,21,705,CWE,Y,0490,7.4.3.21,,,,',
  `specimen_risk_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Risk Code 01903,SPM,16,705,CWE,Y,0489,7.4.3.16,,,,',
  `specimen_role` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Role 01762,SPM,11,705,CWE,Y,0369,7.4.3.11,,,,',
  `specimen_source_site` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Source Site 01901,SPM,8,705,CWE,,9999,7.4.3.8,,,,',
  `specimen_source_site_modifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Source Site Modifier 01760,SPM,9,705,CWE,Y,0542,7.4.3.9,,,,',
  `specimen_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Type 01900,SPM,4,705,CWE,,0487,7.4.3.4,,,,',
  `specimen_type_modifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Type Modifier 01757,SPM,5,705,CWE,Y,0541,7.4.3.5,,,,',
  
  PRIMARY KEY (`pid_id`))
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_stf`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_stf` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `active_inactive_flag3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Active Inactive Flag 00675,STF,7,1,ID,,0183,15.4.8.7,,,,',
  `additional_insured_on_auto` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Additional Insured on Auto 01275,STF,21,1,ID,,0136,15.4.8.21,,,,',
  `administrative_sex1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Administrative Sex 00111,STF,5,1,IS,,0001,15.4.8.5,,,,',
  `auto_ins_expires` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Auto Ins Expires 01232,STF,24,8,DT,,,15.4.8.24,,,,',
  `backup_person_id` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Backup Person ID 00682,STF,14,250,CWE,Y,,15.4.8.14,,,,',
  `citizenship5` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Citizenship 00129,STF,30,705,CWE,Y,0171,15.4.8.30,,,,',
  `copy_auto_ins` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Copy Auto Ins 01229,STF,23,1,ID,,0136,15.4.8.23,,,,',
  `cost_center_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Cost Center Code 01891,STF,36,250,CWE,Y,0539,15.4.8.36,,,,',
  `date_last_dmv_review` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Date Last DMV Review 01298,STF,25,8,DT,,,15.4.8.25,,,,',
  `date_next_dmv_review` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Date Next DMV Review 01234,STF,26,8,DT,,,15.4.8.26,,,,',
  `date_time_of_birth2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Date Time of Birth 00110,STF,6,24,DTM,,,15.4.8.6,,,,',
  `date_time_of_death` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Date Time of Death 01886,STF,31,8,DTM,,,15.4.8.31,,,,',
  `death_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Death Indicator 01887,STF,32,1,ID,,0136,15.4.8.32,,,,',
  `department1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Department 00676,STF,8,250,CWE,Y,0184,15.4.8.8,,,,',
  `driver_license_number_staff` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Driver License Number - Staff 01302,STF,22,25,DLN,,,15.4.8.22,,,,',
  `e-mail_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' E-Mail Address 00683,STF,15,40,ST,Y,,15.4.8.15,,,,',
  `employment_status_code2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Employment Status Code 01276,STF,20,250,CWE,,0066,15.4.8.20,,,,',
  `ethnic_group3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Ethnic Group 00125,STF,28,705,CWE,,0189,15.4.8.28,,,,',
  `expected_return_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Expected Return Date 01890,STF,35,8,DT,,,15.4.8.35,,,,',
  `generic_classification_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Generic Classification Indicator 01892,STF,37,1,ID,,0136,15.4.8.37,,,,',
  `generic_resource_type_or_category` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Generic resource type or category 02184,STF,39,1,CWE,Y,0771,15.4.8.39,,,,',
  `hospital_service_stf` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Hospital Service - STF 00677,STF,9,250,CWE,Y,0069,15.4.8.9,,,,',
  `inactive_reason_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inactive Reason Code 01893,STF,38,250,CWE,,0540,15.4.8.38,,,,',
  `institution_activation_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Institution Activation Date 00680,STF,12,276,DIN,Y,0537,15.4.8.12,,,,',
  `institution_inactivation_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Institution Inactivation Date 00681,STF,13,276,DIN,Y,0537,15.4.8.13,,,,',
  `institution_relationship_period` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Institution Relationship Period 01889,STF,34,52,DR,,,15.4.8.34,,,,',
  `institution_relationship_type_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Institution Relationship Type Code 01888,STF,33,250,CWE,,0538,15.4.8.33,,,,',
  `job_code_class2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Job Code Class 00786,STF,19,20,JCC,,,15.4.8.19,,,,',
  `job_title2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Job Title 00785,STF,18,20,ST,,,15.4.8.18,,,,',
  `marital_status3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Marital Status 00119,STF,17,705,CWE,,0002,15.4.8.17,,,,',
  `office_home_address_birthplace2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Office Home Address Birthplace 00679,STF,11,250,XAD,Y,,15.4.8.11,,,,',
  `phone2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Phone 00678,STF,10,250,XTN,Y,,15.4.8.10,,,,',
  `preferred_method_of_contact2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Preferred Method of Contact 00684,STF,16,705,CWE,,0185,15.4.8.16,,,,',
  `primary_key_value_stf` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Primary Key Value - STF 00671,STF,1,250,CWE,,9999,15.4.8.1,,,,',
  `race3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Race 00113,STF,27,705,CWE,,0005,15.4.8.27,,,,',
  `reactivation_approval_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Re-activation Approval Indicator 01596,STF,29,1,ID,,0136,15.4.8.29,,,,',
  `staff_identifier_list` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Staff Identifier List 00672,STF,2,250,CX,Y,0061,15.4.8.2,,,,',
  `staff_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Staff Name 00673,STF,3,250,XPN,Y,,15.4.8.3,,,,',
  `staff_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Staff Type 00674,STF,4,2,IS,Y,0182,15.4.8.4,,,,',
  
  PRIMARY KEY (`pid_id`))
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_stz`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_stz` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `maintenance_cycle` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Maintenance Cycle 02215,STZ,3,250,CWE,,0809,17.4.3.3,,,,',
  `maintenance_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Maintenance Type 02216,STZ,4,250,CWE,,0811,17.4.3.4,,,,',
  `sterilization_cycle` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Sterilization Cycle 02214,STZ,2,250,CWE,,,17.4.3.2,,,,',
  `sterilization_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Sterilization Type 02213,STZ,1,250,CWE,,0806,17.4.3.1,,,,',
  
  PRIMARY KEY (`pid_id`))
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_tcc`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_tcc` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `auto_dilution_factor_default` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Auto-Dilution Factor Default 01410,TCC,4,36,SN,,,13.4.9.4,,,,',
  `automatic_reflex_allowed` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Automatic Reflex Allowed 01417,TCC,11,1,ID,,0136,13.4.9.11,,,,',
  `automatic_repeat_allowed2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Automatic Repeat Allowed 01416,TCC,10,1,ID,,0136,13.4.9.10,,,,',
  `automatic_rerun_allowed` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Automatic Rerun Allowed 01415,TCC,9,1,ID,,0136,13.4.9.9,,,,',
  `endogenous_content_pre-dilution_diluent2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Endogenous Content of Pre-Dilution Diluent 01413,TCC,7,36,SN,,,13.4.9.7,,,,',
  `equipment_dynamic_range` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Equipment Dynamic Range 01418,TCC,12,36,SN,,,13.4.9.12,,,,',
  `equipment_test_application_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Equipment Test Application Identifier 01408,TCC,2,427,EI,,,13.4.9.2,,,,',
  `inventory_limits_warning_level` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Inventory Limits Warning Level 01414,TCC,8,10,NM,,,13.4.9.8,,,,',
  `pre-dilution_factor_default` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Pre-Dilution Factor Default 01412,TCC,6,36,SN,,,13.4.9.6,,,,',
  `processing_type2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Processing Type 01419,TCC,14,705,CWE,,0388,13.4.9.14,,,,',
  `rerun_dilution_factor_default` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Rerun Dilution Factor Default 01411,TCC,5,36,SN,,,13.4.9.5,,,,',
  `specimen_source2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Specimen Source 00249,TCC,3,0,SPS,,,13.4.9.3,,,,',
  `units1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Units 00574,TCC,13,705,CWE,,,13.4.9.13,,,,',
  `universal_service_identifier3` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Universal Service Identifier 00238,TCC,1,705,CWE,,,13.4.9.1,,,,',
  
  PRIMARY KEY (`pid_id`))
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_tcd`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_tcd` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `analyte_repeat_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Analyte Repeat Status 01425,TCD,8,705,CWE,,0389,13.4.10.8,,,,',
  `auto_dilution_factor` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Auto-Dilution Factor 01420,TCD,2,36,SN,,,13.4.10.2,,,,',
  `automatic_repeat_allowed1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Automatic Repeat Allowed 01416,TCD,6,1,ID,,0136,13.4.10.6,,,,',
  `endogenous_content_pre-dilution_diluent1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Endogenous Content of Pre-Dilution Diluent 01413,TCD,5,36,SN,,,13.4.10.5,,,,',
  `pre-dilution_factor` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Pre-Dilution Factor 01422,TCD,4,36,SN,,,13.4.10.4,,,,',
  `reflex_allowed` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Reflex Allowed 01424,TCD,7,1,ID,,0136,13.4.10.7,,,,',
  `rerun_dilution_factor` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Rerun Dilution Factor 01421,TCD,3,36,SN,,,13.4.10.3,,,,',
  `universal_service_identifier5` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Universal Service Identifier 00238,TCD,1,705,CWE,,,13.4.10.1,,,,',
  
  PRIMARY KEY (`pid_id`))
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_tq1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_tq1` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `condition_text` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Condition text 01636,TQ1,10,250,TX,,,4.5.4.10,,,,',
  `conjunction` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Conjunction 01638,TQ1,12,10,ID,,0472,4.5.4.12,,,,',
  `end_date_time2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' End date time 01634,TQ1,8,24,DTM,,,4.5.4.8,,,,',
  `explicit_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Explicit Time 01630,TQ1,4,20,TM,Y,,4.5.4.4,,,,',
  `occurrence_duration` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Occurrence duration 01639,TQ1,13,20,CQ,,,4.5.4.13,,,,',
  `priority2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Priority 01635,TQ1,9,250,CWE,Y,0485,4.5.4.9,,,,',
  `quantity` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Quantity 01628,TQ1,2,20,CQ,,,4.5.4.2,,,,',
  `relative_time_and_units` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Relative Time and Units 01631,TQ1,5,20,CQ,Y,,4.5.4.5,,,,',
  `repeat_pattern` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Repeat Pattern 01629,TQ1,3,540,RPT,Y,,4.5.4.3,,,,',
  `service_duration` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Service Duration 01632,TQ1,6,20,CQ,,,4.5.4.6,,,,',
  `set_id_tq1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - TQ1 01627,TQ1,1,4,SI,,,4.5.4.1,,,,',
  `start_date_time6` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Start date time 01633,TQ1,7,24,DTM,,,4.5.4.7,,,,',
  `text_instruction1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Text instruction 01637,TQ1,11,250,TX,,,4.5.4.11,,,,',
  `total_occurrences` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Total occurrences 01640,TQ1,14,10,NM,,,4.5.4.14,,,,',
  
  PRIMARY KEY (`pid_id`))
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_tq2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_tq2` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `cyclic_entry_exit_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Cyclic Entry Exit Indicator 01654,TQ2,7,1,ID,,0505,4.5.5.7,,,,',
  `cyclic_group_maximum_number_of_repeats` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Cyclic Group Maximum Number of Repeats 01656,TQ2,9,10,NM,,,4.5.5.9,,,,',
  `related_filler_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Related Filler Number 01651,TQ2,4,22,EI,Y,,4.5.5.4,,,,',
  `related_placer_group_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Related Placer Group Number 01652,TQ2,5,22,EI,Y,,4.5.5.5,,,,',
  `related_placer_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Related Placer Number 01650,TQ2,3,22,EI,Y,,4.5.5.3,,,,',
  `sequence_condition_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Sequence Condition Code 01653,TQ2,6,2,ID,,0504,4.5.5.6,,,,',
  `sequence_condition_time_interval` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Sequence Condition Time Interval 01655,TQ2,8,20,CQ,,,4.5.5.8,,,,',
  `sequence_results_flag` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Sequence Results Flag 01649,TQ2,2,1,ID,,0503,4.5.5.2,,,,',
  `set_id_tq2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - TQ2 01648,TQ2,1,4,SI,,,4.5.5.1,,,,',
  `special_service_request_relationship` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Special Service Request Relationship 01657,TQ2,10,1,ID,,0506,4.5.5.10,,,,',
  
  PRIMARY KEY (`pid_id`))
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_txa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_txa` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `activity_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Activity Date Time 00917,TXA,4,24,DTM,,,9.6.1.4,,,,',
  `assigned_document_authenticator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Assigned Document Authenticator 00923,TXA,10,250,XCN,Y,,9.6.1.10,,,,',
  `document_availability_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Document Availability Status 00930,TXA,19,2,ID,,0273,9.6.1.19,,,,',
  `document_change_reason` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Document Change Reason 00933,TXA,21,30,ST,,,9.6.1.21,,,,',
  `document_completion_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Document Completion Status 00928,TXA,17,2,ID,,0271,9.6.1.17,,,,',
  `document_confidentiality_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Document Confidentiality Status 00929,TXA,18,2,ID,,0272,9.6.1.18,,,,',
  `document_content_presentation` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Document Content Presentation 00916,TXA,3,2,ID,,0191,9.6.1.3,,,,',
  `document_storage_status` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Document Storage Status 00932,TXA,20,2,ID,,0275,9.6.1.20,,,,',
  `document_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Document Type 00915,TXA,2,30,IS,,0270,9.6.1.2,,,,',
  `edit_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Edit Date Time 00921,TXA,8,24,DTM,Y,,9.6.1.8,,,,',
  `filler_order_number4` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Filler Order Number 00217,TXA,15,427,EI,,,9.6.1.15,,,,',
  `origination_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Origination Date Time 00919,TXA,6,24,DTM,,,9.6.1.6,,,,',
  `originator_code_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Originator Code Name 00922,TXA,9,250,XCN,Y,,9.6.1.9,,,,',
  `parent_document_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Parent Document Number 00926,TXA,13,427,EI,,,9.6.1.13,,,,',
  `placer_order_number6` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Placer Order Number 00216,TXA,14,427,EI,Y,,9.6.1.14,,,,',
  `primary_activity_provider_code_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Primary Activity Provider Code Name 00918,TXA,5,250,XCN,Y,,9.6.1.5,,,,',
  `set_id_txa` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID- TXA 00914,TXA,1,4,SI,,,9.6.1.1,,,,',
  `transcription_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Transcription Date Time 00920,TXA,7,24,DTM,,,9.6.1.7,,,,',
  `transcriptionist_code_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Transcriptionist Code Name 00924,TXA,11,250,XCN,Y,,9.6.1.11,,,,',
  `unique_document_file_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Unique Document File Name 00927,TXA,16,30,ST,,,9.6.1.16,,,,',
  `unique_document_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Unique Document Number 00925,TXA,12,427,EI,,,9.6.1.12,,,,',
  
  PRIMARY KEY (`pid_id`))
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_uac`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_uac` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `user_auth_credential` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' User Authentication Credential 02268,UAC,2,65536 ED,,,2.14.13.2,,,,,',
  `user_auth_credential_type_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' User Authentication Credential Type Code 02267,UAC,1,705,CWE,,0615,2.14.13.1,,,,',
  
  PRIMARY KEY (`pid_id`))
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_ub1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_ub1` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `blood_deductible1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Blood Deductible 00531,UB1,2,0,-,,,6.5.10.2,,,,',
  `blood_furnished_pints` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Blood Furnished-Pints 00532,UB1,3,2,NM,,,6.5.10.3,,,,',
  `blood_not_replaced_pints` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Blood Not Replaced-Pints 00534,UB1,5,2,NM,,,6.5.10.5,,,,',
  `blood_replaced_pints` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Blood Replaced-Pints 00533,UB1,4,2,NM,,,6.5.10.4,,,,',
  `co-insurance_days1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Co-Insurance Days 00535,UB1,6,0,NM,,,6.5.10.6,,,,',
  `condition_code1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Condition Code 00536,UB1,7,0,IS,Y,0043,6.5.10.7,,,,',
  `covered_days1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Covered Days 00537,UB1,8,0,NM,,,6.5.10.8,,,,',
  `non_covered_days1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Non Covered Days 00538,UB1,9,0,NM,,,6.5.10.9,,,,',
  `number_grace_days` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Number Of Grace Days 00540,UB1,11,2,NM,,,6.5.10.11,,,,',
  `occur_span_end_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Occur Span End Date 00548,UB1,19,0,DT,,,6.5.10.19,,,,',
  `occur_span_start_date` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Occur Span Start Date 00547,UB1,18,0,DT,,,6.5.10.18,,,,',
  `occurrence` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Occurrence 00545,UB1,16,0,OCD,Y,,6.5.10.16,,,,',
  `occurrence_span` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Occurrence Span 00546,UB1,17,0,CWE,,0351,6.5.10.17,,,,',
  `psro_ur_approval_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' PSRO UR Approval Indicator 00542,UB1,13,250,CWE,,0349,6.5.10.13,,,,',
  `psro_ur_approved_stay_fm` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' PSRO UR Approved Stay-Fm 00543,UB1,14,8,DT,,,6.5.10.14,,,,',
  `psro_ur_approved_stay_to` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' PSRO UR Approved Stay-To 00544,UB1,15,8,DT,,,6.5.10.15,,,,',
  `set_id_ub1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - UB1 00530,UB1,1,4,SI,,,6.5.10.1,,,,',
  `special_program_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Special Program Indicator 00541,UB1,12,250,CWE,,0348,6.5.10.12,,,,',
  `ub-82_locator_2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' UB-82 Locator 2 00549,UB1,20,0,ST,,,6.5.10.20,,,,',
  `ub-82_locator_27` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' UB-82 Locator 27 00551,UB1,22,0,ST,,,6.5.10.22,,,,',
  `ub-82_locator_45` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' UB-82 Locator 45 00552,UB1,23,0,ST,,,6.5.10.23,,,,',
  `ub-82_locator_9` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' UB-82 Locator 9 00550,UB1,21,0,ST,,,6.5.10.21,,,,',
  `value_amount_code2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Value Amount & Code 00539,UB1,10,0,UVC,Y,,6.5.10.10,,,,',
  
  PRIMARY KEY (`pid_id`))
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_ub2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_ub2` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `coinsurance_days2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Co-Insurance Days (9) 00554,UB2,2,3,ST,,,6.5.11.2,,,,',
  `condition_code2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Condition Code (24-30) 00555,UB2,3,2,IS,Y,0043,6.5.11.3,,,,',
  `covered_days2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Covered Days (7) 00556,UB2,4,3,ST,,,6.5.11.4,,,,',
  `document_control_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Document Control Number 00564,UB2,12,23,ST,Y,,6.5.11.12,,,,',
  `non_covered_days2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Non-Covered Days (8) 00557,UB2,5,4,ST,,,6.5.11.5,,,,',
  `occurrence_code_date_32_35` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Occurrence Code & Date (32-35) 00559,UB2,7,259,OCD,Y,,6.5.11.7,,,,',
  `occurrence_span_code_dates` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Occurrence Span Code Dates (36) 00560,UB2,8,268,OSP,Y,,6.5.11.8,,,,',
  `set_id_ub2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - UB2 00553,UB2,1,4,SI,,,6.5.11.1,,,,',
  `special_visit_count` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Special Visit Count 00815,UB2,17,3,NM,,,6.5.11.17,,,,',
  `ub92_locator_11_state` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' UB92 Locator 11 (State) 00562,UB2,10,12,ST,Y,,6.5.11.10,,,,',
  `ub92_locator_2_state` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' UB92 Locator 2 (State) 00561,UB2,9,29,ST,Y,,6.5.11.9,,,,',
  `ub92_locator_31_national` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' UB92 Locator 31 (National) 00563,UB2,11,5,ST,,,6.5.11.11,,,,',
  `ub92_locator_49_national` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' UB92 Locator 49 (National) 00565,UB2,13,4,ST,Y,,6.5.11.13,,,,',
  `ub92_locator_56_state` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' UB92 Locator 56 (State) 00566,UB2,14,14,ST,Y,,6.5.11.14,,,,',
  `ub92_locator_57_national` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' UB92 Locator 57 (National) 00567,UB2,15,27,ST,,,6.5.11.15,,,,',
  `ub92_locator_78_state` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' UB92 Locator 78 (State) 00568,UB2,16,2,ST,Y,,6.5.11.16,,,,',
  `value_amount_code1` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Value Amount & Code 00558,UB2,6,41,UVC,Y,,6.5.11.6,,,,',
  
  PRIMARY KEY (`pid_id`))
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_urd`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_urd` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `r_u_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' R U Date Time 00045,URD,1,24,DTM,,,5.10.4.3.1,,,,',
  `r_u_display_print_locations` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' R U Display Print Locations 00050,URD,6,20,ST,Y,,5.10.4.3.6,,,,',
  `r_u_results_level` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' R U Results Level 00051,URD,7,1,ID,,0108,5.10.4.3.7,,,,',
  `r_u_what_department_code` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' R U What Department Code 00049,URD,5,250,CWE,Y,,5.10.4.3.5,,,,',
  `r_u_what_subject_definition` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' R U What Subject Definition 00048,URD,4,250,CWE,Y,0048,5.10.4.3.4,,,,',
  `r_u_who_subject_definition` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' R U Who Subject Definition 00047,URD,3,250,XCN,Y,,5.10.4.3.3,,,,',
  `report_priority` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Report Priority 00046,URD,2,1,ID,,0109,5.10.4.3.2,,,,',
  
  PRIMARY KEY (`pid_id`))
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_urs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_urs` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `r_u_date_time_selection_qualifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' R U Date Time Selection Qualifier 00059,URS,8,12,ID,Y,0158,5.10.4.4.8,,,,',
  `r_u_other_results_subject_definition` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' R U Other Results Subject Definition 00056,URS,5,20,ST,Y,,5.10.4.4.5,,,,',
  `r_u_quantity_timing_qualifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' R U Quantity Timing Qualifier 00695,URS,9,0,TQ,,,5.10.4.4.9,,,,',
  `r_u_what_user_qualifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' R U What User Qualifier 00055,URS,4,20,ST,Y,,5.10.4.4.4,,,,',
  `r_u_when_data_end_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' R U When Data End Date Time 00054,URS,3,24,DTM,,,5.10.4.4.3,,,,',
  `r_u_when_data_start_date_time` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' R U When Data Start Date Time 00053,URS,2,24,DTM,,,5.10.4.4.2,,,,',
  `r_u_where_subject_definition` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' R U Where Subject Definition 00052,URS,1,20,ST,Y,,5.10.4.4.1,,,,',
  `r_u_which_date_time_qualifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' R U Which Date Time Qualifier 00057,URS,6,12,ID,Y,0156,5.10.4.4.6,,,,',
  `r_u_which_date_time_status_qualifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' R U Which Date Time Status Qualifier 00058,URS,7,12,ID,Y,0157,5.10.4.4.7,,,,',
  
  PRIMARY KEY (`pid_id`))
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_vnd`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_vnd` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `primary_vendor_indicator` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Primary Vendor Indicator 02220,VND,5,1,CNE,,0532,17.4.4.5,,,,',
  `set_id_vnd` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set Id - VND 02217,VND,1,2,SI,,,17.4.4.1,,,,',
  `vendor_catalog_number` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Vendor Catalog Number 02219,VND,4,20,EI,,,17.4.4.4,,,,',
  `vendor_identifier` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Vendor Identifier 02218,VND,2,250,EI,,,17.4.4.2,,,,',
  `vendor_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Vendor Name 02276,VND,3,999,ST,,,17.4.4.3,,,,',
  
  PRIMARY KEY (`pid_id`))
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sample_hl7_data_encounter_dev`.`data_element_xad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sample_hl7_data_encounter_dev`.`data_element_xad` (
  `pid_id` int(20) NOT NULL AUTO_INCREMENT ,
  `date` DATETIME NULL DEFAULT NULL ,
  `pid` BIGINT(20) NULL DEFAULT '0' ,
  `user` VARCHAR(255) NULL DEFAULT NULL ,
  `groupname` VARCHAR(255) NULL DEFAULT NULL ,
  `authorized` TINYINT(4) NULL DEFAULT '0' ,
  `activity` TINYINT(4) NULL DEFAULT '0' ,
  `payee_address` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Payee Address 01944,PYE,6,235,XAD,,,16.4.3.6,,,,',
  `payee_identification_list` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Payee Identification List 01942,PYE,4,183,XON,,,16.4.3.4,,,,',
  `payee_person_name` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Payee Person Name 01943,PYE,5,466,XPN,,,16.4.3.5,,,,',
  `payee_relationship_to_invoice_patient` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Payee Relationship to Invoice (Patient) 01941,PYE,3,2,IS,,0558,16.4.3.3,,,,',
  `payee_type` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Payee Type 01940,PYE,2,6,IS,,0557,16.4.3.2,,,,',
  `payment_method2` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Payment Method 01945,PYE,7,80,IS,,0570,16.4.3.7,,,,',
  `set_id_pye` VARCHAR(255) NOT NULL DEFAULT ' ' COMMENT ' Set ID - PYE 01939,PYE,1,4,SI,,,16.4.3.1,,,,',
  
  PRIMARY KEY (`pid_id`))
ENGINE=MyISAM AUTO_INCREMENT=100
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
