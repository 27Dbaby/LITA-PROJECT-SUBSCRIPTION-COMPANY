CREATE DATABASE Customer_DB

SELECT * FROM [dbo].[Customer Data]

--------TOTAL NUMBER OF CUSTOMERS FROM EACH REGION-------
SELECT Region, COUNT(CustomerID) AS total_customers
FROM [Customer Data]
GROUP BY Region;

--------MOST POPULAR SUBSCRIPTION TYPE BY THE NUMBER OF CUSTOMERS-------
SELECT SubscriptionType , COUNT(CustomerID) AS customer_count
FROM [Customer Data]
GROUP BY SubscriptionType
ORDER BY customer_count DESC

--------CUSTOMERS WHO CANCELED THEIR SUBSCRIPTION WITHIN 6 MONTHS-------
SELECT CustomerID
FROM [Customer Data]
WHERE DATEDIFF(month, SubscriptionStart, Canceled) <= 6;

---------AVERAGE SUBSCRIPTION DURATION FOR ALL CUSTOMERS-------
SELECT AVG(DATEDIFF (DAY,SubscriptionStart,SubscriptionEnd)) AS AVG_SUBSCRIPTION_DURATION
FROM [Customer Data]
WHERE DATEDIFF(MONTH, SubscriptionStart,SubscriptionEnd)
>12;

---------CUSTOMERS WITH SUBSCRIPTIONS LONGER THAN 12 MONTHS-------
SELECT AVG(DATEDIFF (DAY,SubscriptionStart,SubscriptionEnd)) AS AVG_SUBSCRIPTION_DURATION
FROM [Customer Data]

---------TOTAL REVENUE BY SUBSCRIPTION TYPE-------
SELECT SubscriptionType, SUM(Revenue) AS Total_Revenue
FROM [Customer Data]
GROUP BY SubscriptionType;

---------TOP 3 REGIONS BY SUBSCRIPTION CANCELLATIONS---------
SELECT TOP 3 Region, COUNT(*) AS SUBSCRIPTIONEND_COUNT
FROM [Customer Data]
WHERE SubscriptionEnd IS NULL
GROUP BY Region
ORDER BY SUBSCRIPTIONEND_COUNT DESC;


---------TOP 3 REGIONS BY SUBSCRIPTION CANCELLATIONS-------
SELECT Region, COUNT(CustomerID) AS cancellations
FROM [Customer Data]
WHERE Canceled IS NOT NULL
GROUP BY Region
ORDER BY cancellations DESC

---------TOTAL NUMBER OF ACTIVE AND CANCELED SUBSCRIPTIONS -------
SELECT 
    COUNT(CASE WHEN canceled IS NULL THEN 1 END) AS active_subscriptions,
    COUNT(CASE WHEN canceled IS NOT NULL THEN 1 END) AS canceled_subscriptions
FROM [Customer Data]