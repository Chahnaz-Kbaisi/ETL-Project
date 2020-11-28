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
	State VARCHAR NOT NULL,	
	Year INT NOT NULL,
	Population INT NOT NULL,
	Crude_Rate VARCHAR NOT NULL,
	Dispensed_Prescriptions INT NOT NULL
);
SELECT * FROM overdose_death;

-- Table 2:
CREATE TABLE demographic_drug_use (
	Total_Family_Income INT NOT NULL, 
	Pain_Relieve_Ever INT NOT NULL,
	Employment_Status INT NOT NULL,	
	Race VARCHAR(255) NOT NULL,	
	Education INT NOT NULL,	
	Gender VARCHAR(255) NOT NULL
);
SELECT * FROM demographic_drug_use;

-- Table 3:
CREATE TABLE assisted_treatment (
	County VARCHAR(255) NOT NULL,
	Year INT NOT NULL,	
	Beneficiaries VARCHAR(255) NOT NULL
);
SELECT * FROM assisted_treatment;

-- Table 4:
CREATE TABLE opioid_death(
	State VARCHAR(255) NOT NULL,	
	Gender VARCHAR(255) NOT NULL,	
	Race VARCHAR(255) NOT NULL,	
	Year INT NOT NULL,	
	Deaths INT NOT NULL,		
	Population INT NOT NULL		
);
SELECT * FROM opioid_death;


-- Joining necessary tables for query analysis:
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
ON od.year = op.year;


