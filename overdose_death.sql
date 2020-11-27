DROP TABLE IF EXISTS overdose_death;

CREATE TABLE overdose_death (
	State VARCHAR(255)NOT NULL,	
	Year INT NOT NULL,
	Deaths VARCHAR(255) NOT NULL,
	Population	INT NOT NULL,
	Crude_Rate VARCHAR(255) NOT NULL,
	Dispensed_Prescriptions INT NOT NULL
);
SELECT * FROM overdose_death;

DROP TABLE IF EXISTS demographic_drug_use;
CREATE TABLE demographic_drug_use (
	Total_Family_Income INT NOT NULL, 
	Pain_Relieve_Ever INT NOT NULL,
	Employment_Status INT NOT NULL,	
	Race VARCHAR(255) NOT NULL,	
	Education INT NOT NULL,	
	Gender VARCHAR(255) NOT NULL
);
SELECT * FROM demographic_drug_use;

DROP TABLE IF EXISTS assisted_treatment;
CREATE TABLE assisted_treatment (
	County VARCHAR(255) NOT NULL,
	Year INT NOT NULL,	
	Beneficiaries VARCHAR(255) NOT NULL
);
DROP TABLE IF EXISTS dispensed_prescriptions;
CREATE TABLE dispensed_prescriptions (
	
)


SELECT * FROM assisted_treatment;

-- Calculate the 
SELECT Year,
		   State,	
           Crude_Rate 
FROM overdose_death
WHERE Year = '1999';

