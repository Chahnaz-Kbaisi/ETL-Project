-- ETL Project: Extract, Transform, Load
-- We will create 4 tables for our data to be loaded into, tables will be in the same order as in jupyter notebook

-- Dropping tables if they exists to avoid duplicates:
DROP TABLE IF EXISTS overdose_death;
DROP TABLE IF EXISTS demographic_drug_use;
DROP TABLE IF EXISTS assisted_treatment;
DROP TABLE IF EXISTS opioid_death;

-- Create tables for raw data to be loaded into:
-- Table 1:
CREATE TABLE overdose_death (
	state VARCHAR NOT NULL,	
	year INT NOT NULL,
	population INT NOT NULL,
	crude_rate VARCHAR NOT NULL,
	dispensed_prescriptions INT NOT NULL
);
SELECT * FROM overdose_death;

-- Table 2:
CREATE TABLE demographic_drug_use (
	total_family_income INT NOT NULL, 
	pain_relieve_ever INT NOT NULL,
	employment_status INT NOT NULL,	
	race VARCHAR(255) NOT NULL,	
	education INT NOT NULL,	
	gender VARCHAR(255) NOT NULL
);
SELECT * FROM demographic_drug_use;

-- Table 3:
CREATE TABLE assisted_treatment (
	country VARCHAR(255) NOT NULL,
	year INT NOT NULL,	
	beneficiaries VARCHAR(255) NOT NULL
);
SELECT * FROM assisted_treatment;

-- Table 4:
CREATE TABLE opioid_death(
	state VARCHAR(255) NOT NULL,	
	gender VARCHAR(255) NOT NULL,	
	race VARCHAR(255) NOT NULL,	
	year INT NOT NULL,	
	deaths INT NOT NULL,		
	population INT NOT NULL		
);
SELECT * FROM opioid_death;


-- Joining two tables:
-- Table 1 (overdose_death) & Table 4 (opioid_death)
SELECT op.year AS "Year",
		op.gender AS "Gender",
		op.race AS "Race",
		op.deaths AS "Deaths",
		od.State AS "State",
		od.Population AS "Population",
		od.Crude_Rate AS "Crude Rate",
		od.Dispensed_Prescriptions AS "Dispensed Prescription"
FROM overdose_death as od 
JOIN opioid_death as op 
ON od.year = op.year AND od.state = op.state
WHERE od.year BETWEEN 1999 AND 2014;


