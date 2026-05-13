SELECT
    Churn,
    COUNT(*) AS customers
FROM customer_churn
GROUP BY Churn;

SELECT
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churned_customers
FROM customer_churn
GROUP BY Contract;

SELECT
    InternetService,
    COUNT(*) AS total_customers,
    AVG(MonthlyCharges) AS avg_monthly_charge
FROM customer_churn
GROUP BY InternetService;

SELECT
    PhoneService,
    COUNT(*) AS total_customers,
    AVG(MonthlyCharges) AS avg_monthly_charge
FROM customer_churn
GROUP BY PhoneService;

SELECT *
FROM customer_churn
WHERE tenure < 12 AND Churn = 'Yes';

SELECT
    Contract,
    Churn,
    COUNT(*) AS customers
FROM customer_churn
GROUP BY Contract, Churn;

SELECT
    PaymentMethod,
    Churn,
    COUNT(*) AS customers
FROM customer_churn
GROUP BY PaymentMethod, Churn;
