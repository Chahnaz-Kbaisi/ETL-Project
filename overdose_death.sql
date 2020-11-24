DROP TABLE IF EXISTS overdose_death;

CREATE TABLE overdose_death (
	State VARCHAR(255)NOT NULL,	
	Year INT NOT NULL, 	
	Population	INT NOT NULL,
	Death VARCHAR(255) NOT NULL,
	dispensed_prescriptions INT NOT NULL
);

SELECT * FROM overdose_death;
-- Calculate the death
SELECT Year,
		   State,	
           Death 
FROM overdose_death
WHERE Year = '1999';

