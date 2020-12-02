-- ETL Project Part 1 Tables:
-- Dropping tables if they exists to avoid duplicates:
DROP TABLE IF EXISTS va_opioid_prescription;
DROP TABLE IF EXISTS opioid_dispensed_type;

-- Create tables for raw data to be loaded into:
-- Table 1:
CREATE TABLE va_opioid_prescription (
	percent_change INT NOT NULL,	
	city VARCHAR(255) NOT NULL,	
	pre_prescribing_rate INT NOT NULL,	
	post_prescribing_rate INT NOT NULL,	
	non_va_prescribing_rate	VARCHAR(255) NOT NULL,
	state_full	VARCHAR(255) NOT NULL,
	state_postal VARCHAR(255) NOT NULL
);

SELECT * FROM va_opioid_prescription; 

-- Create tables for raw data to be loaded into:
-- Table 2:
CREATE TABLE opioid_dispensed_type (
	quarter VARCHAR(255) NOT NULL,
	hydrocodone INT NOT NULL,	
	oxycodone INT NOT NULL,	
	tramadol INT NOT NULL,	
	morphine INT NOT NULL,		
	fentanyl INT NOT NULL,	
	all_drugs INT NOT NULL
);

SELECT * FROM opioid_dispensed_type;