-- > Geographic Trends
-- > 1.  How does revenue vary by region?
SELECT
billing_country,
SUM(total) AS revenue
FROM invoice
GROUP BY billing_country
ORDER BY revenue DESC;


-- > Which countries or cities have the highest number of customers?
SELECT 
    country,
    COUNT(customer_id) AS total_customers
FROM customer
GROUP BY country
ORDER BY total_customers DESC;

-- > 3. Are there any underserved geographic regions (high users, low sales)?
SELECT 
    c.country,
    COUNT(DISTINCT c.customer_id) AS total_customers,
    ROUND(SUM(i.total), 2) AS total_revenue,
    ROUND(SUM(i.total) / COUNT(DISTINCT c.customer_id), 2) AS revenue_per_customer
FROM customer c
LEFT JOIN invoice i
    ON c.customer_id = i.customer_id
GROUP BY c.country
ORDER BY total_customers DESC;