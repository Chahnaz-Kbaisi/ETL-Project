-- ETL PROJECT: Extract, Transform and Load

-- Dropping tables if they exist to avoid duplicate data:
DROP TABLE IF EXISTS opioid_overdose_deaths;
DROP TABLE IF EXISTS opiate_prescriptions;

-- Create tables to load data into:
-- TABLE 1:
CREATE TABLE opioid_overdose_deaths (
	state VARCHAR NOT NULL,	
	year INT NOT NULL,
	deaths VARCHAR NOT NULL,
	population INT NOT NULL,
	death_per_hundred_thousand VARCHAR NOT NULL,
	us_dispensed_prescriptions_millions INT NOT NULL
);
SELECT * FROM opioid_overdose_deaths;

-- TABLE 2:
CREATE TABLE opiate_prescriptions (
	national_provider_identifier INT NOT NULL,	
	gender VARCHAR NOT NULL,
	state VARCHAR NOT NULL,
	credentials_medical_degree VARCHAR NOT NULL,
	specialty_type_of_practice VARCHAR NOT NULL,
	prescribed_opiate_drugs_more_than_10_times_a_year INT NOT NULL
);
SELECT * FROM opiate_prescriptions;