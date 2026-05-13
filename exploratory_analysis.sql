SELECT 
    MIN(tenure) AS min_tenure,
    MAX(tenure) AS max_tenure,
    AVG(tenure) AS avg_tenure
FROM customer_churn;

SELECT AVG(MonthlyCharges) AS avg_monthly_charge
FROM customer_churn;

SELECT InternetService, COUNT(*) AS total_customers
FROM customer_churn
GROUP BY InternetService;

SELECT Churn, COUNT(*) AS customers
FROM customer_churn
GROUP BY Churn;