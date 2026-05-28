-- > Exploratory Data Analysis
USE itunes_analysis;


-- > 1. Which customers have spent the most money on music?
SELECT 
    c.customer_id,
    CONCAT(c.first_name,' ',c.last_name) AS customer_name,
    SUM(i.total) AS total_spent
FROM customer c
JOIN invoice i
ON c.customer_id = i.customer_id
GROUP BY c.customer_id
ORDER BY total_spent DESC;

-- > 2. How many customers have made repeat purchases versus one-time purchases?
SELECT
CASE
    WHEN COUNT(invoice_id)=1 THEN 'One-Time'
    ELSE 'Repeat'
END AS customer_type,
COUNT(*) AS total_customers
FROM invoice
GROUP BY customer_id;

-- > 3. What is the average customer lifetime value?
SELECT 
    ROUND(AVG(customer_total), 2) AS avg_customer_lifetime_value
FROM
(
    SELECT 
        customer_id,
        SUM(total) AS customer_total
    FROM invoice
    GROUP BY customer_id
) AS customer_clv;

-- > 4. Which country generates the most revenue per customer?
SELECT 
    billing_country,
    ROUND(SUM(total), 2) AS total_revenue,
    COUNT(DISTINCT customer_id) AS total_customers,
    ROUND(SUM(total) / COUNT(DISTINCT customer_id), 2) AS revenue_per_customer
FROM invoice
GROUP BY billing_country
ORDER BY revenue_per_customer DESC;

-- > 5. Which customers haven't made a purchase in the last 6 months?
SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    c.email,
    MAX(i.invoice_date) AS last_purchase_date
FROM customer c
JOIN invoice i
    ON c.customer_id = i.customer_id
GROUP BY c.customer_id, customer_name, c.email
HAVING MAX(i.invoice_date) < 
(
    SELECT DATE_SUB(MAX(invoice_date), INTERVAL 6 MONTH)
    FROM invoice
)
ORDER BY last_purchase_date;


