-- ETL Project: Extract, Transform, Load
-- We will create 2 tables for our data to be loaded into, tables will be in the same order as in jupyter notebook

-- Dropping tables if they exists to avoid duplicates:
DROP TABLE IF EXISTS prescription_rate_va;
DROP TABLE IF EXISTS prescription_rate_retail;


-- Create tables for raw data to be loaded into:
-- Table 1:
CREATE TABLE prescription_rate_va (
	percent_change INT NOT NULL,	
	city VARCHAR NOT NULL,
	prescribing_rate_2012 FLOAT NOT NULL,
	prescribing_rate_2018 FLOAT NOT NULL,
	non_va_prescribing_rate FLOAT NOT NULL,
	state_full VARCHAR NOT NULL,
	state_postal VARCHAR NOT NULL
);

-- Table 2:
CREATE TABLE prescription_rate_retail (
	quarter VARCHAR NOT NULL,	
	hydrocodone INT NOT NULL,
	oxycodone INT NOT NULL,
	tramadol INT NOT NULL,
	morphine INT NOT NULL,
	fentanyl INT NOT NULL,
	combination INT NOT NULL
);