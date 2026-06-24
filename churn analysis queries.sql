# 1. How many customers does company have?

SELECT COUNT(*) AS total_customers
	FROM telecom_customers;
    
# 2. What percentage of customers have churned?

SELECT
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM telecom_customers;

# 3. Which contract type has the highest churn rate?

SELECT
    Contract,
    COUNT(*) AS customers,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM telecom_customers
GROUP BY Contract
ORDER BY churn_rate DESC;

# 4. Which payment method is associated with the highest churn?

SELECT
    PaymentMethod,
    COUNT(*) AS customers,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM telecom_customers
GROUP BY PaymentMethod
ORDER BY churn_rate DESC;

# 5. Do customers leave early in their lifecycle?

SELECT
    Churn,
    ROUND(AVG(tenure),2) AS avg_tenure
FROM telecom_customers
GROUP BY Churn;

# 6. Do customers with higher monthly charges churn more frequently?

SELECT
    Churn,
    ROUND(AVG(MonthlyCharges),2) AS avg_monthly_charge
FROM telecom_customers
GROUP BY Churn;

# 7. Does having online security reduce customer churn?

SELECT
    OnlineSecurity,
    COUNT(*) AS customers,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM telecom_customers
GROUP BY OnlineSecurity
ORDER BY churn_rate DESC;

# 8. Does access to tech support improve customer retention?

SELECT
    TechSupport,
    COUNT(*) AS customers,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM telecom_customers
GROUP BY TechSupport
ORDER BY churn_rate DESC;

# 9. Who are the highest revenue-generating customers?

SELECT
    tenure,
    MonthlyCharges,
    TotalCharges,
    Contract
FROM telecom_customers
ORDER BY TotalCharges DESC
LIMIT 10;

# 10. Which internet service type is most commonly used?

SELECT
    InternetService,
    COUNT(*) AS customers
FROM telecom_customers
GROUP BY InternetService
ORDER BY customers DESC;