-- MySQL Workbench Forward Engineering

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema orcas
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema orcas
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `orcas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `orcas` ;

-- -----------------------------------------------------
-- Table `orcas`.`interactions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `orcas`.`interactions` (
  `indice` INT NOT NULL,
  `date` DATETIME NULL DEFAULT NULL,
  `Latitude` FLOAT NULL DEFAULT NULL,
  `Longitude` FLOAT NULL DEFAULT NULL,
  `Followed_GTOA_Protocol` VARCHAR(10) NULL DEFAULT NULL,
  `Interaction_time` VARCHAR(10) NULL DEFAULT NULL,
  `Boat_Type` VARCHAR(15) NULL DEFAULT NULL,
  `Boat_Length` VARCHAR(10) NULL DEFAULT NULL,
  `Towing_Inflatable` VARCHAR(10) NULL DEFAULT NULL,
  `Trailing_Fishing_Lure` VARCHAR(10) NULL DEFAULT NULL,
  `Physical_Contact_With_Boat` VARCHAR(10) NULL DEFAULT NULL,
  `Number_of_Adult_Orcas` INT NULL DEFAULT NULL,
  `Number_of_Juvenile_Orcas` INT NULL DEFAULT NULL,
  `Number_of_Uncertain_Age_Orcas` INT NULL DEFAULT NULL,
  `Rudder` VARCHAR(15) NULL DEFAULT NULL,
  `Motoring_or_Sailing` VARCHAR(15) NULL DEFAULT NULL,
  `Speed_Knots` VARCHAR(10) NULL DEFAULT NULL,
  `Sea_State` VARCHAR(10) NULL DEFAULT NULL,
  `Wind_Speed_Beaufort` VARCHAR(25) NULL DEFAULT NULL,
  `Daylight_or_Darkness` VARCHAR(10) NULL DEFAULT NULL,
  `Cloud_Cover` VARCHAR(10) NULL DEFAULT NULL,
  `Distance_Off_Land_NM` VARCHAR(10) NULL DEFAULT NULL,
  `Depth_Meters` VARCHAR(15) NULL DEFAULT NULL,
  `Depth_Gauge` VARCHAR(10) NULL DEFAULT NULL,
  `Autopilot` VARCHAR(10) NULL DEFAULT NULL,
  `Hull_Topsides_Color` VARCHAR(15) NULL DEFAULT NULL,
  `Antifoul_Color` VARCHAR(15) NULL DEFAULT NULL,
  `Boat_Damaged` VARCHAR(60) NULL DEFAULT NULL,
  `Tow_Required` VARCHAR(10) NULL DEFAULT NULL,
  `Crew_Response` VARCHAR(6200) NULL DEFAULT NULL,
  `Orcas_Behaviour` VARCHAR(1700) NULL DEFAULT NULL,
  PRIMARY KEY (`indice`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

