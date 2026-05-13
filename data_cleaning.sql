select * from [customer_churn];


UPDATE customer_churn
SET TotalCharges = NULL
WHERE TotalCharges = '';

ALTER TABLE customer_churn
ALTER COLUMN TotalCharges DECIMAL(10,2);

ALTER TABLE customer_churn 
ALTER COLUMN SeniorCitizen INT;

ALTER TABLE customer_churn
ALTER COLUMN MonthlyCharges DECIMAL(10,2);

ALTER TABLE customer_churn
ALTER COLUMN tenure INT;

