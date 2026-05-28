USE itunes_analysis;
-- >Customer Retention & Purchase Patterns

-- > 1. What is the distribution of purchase frequency per customer?
-- > Step 1: Purchase Frequency Per Customer
SELECT 
    customer_id,
    COUNT(invoice_id) AS purchase_frequency
FROM invoice
GROUP BY customer_id;

-- > Step 2: Distribution of Purchase Frequency
SELECT 
    purchase_frequency,
    COUNT(customer_id) AS number_of_customers
FROM
(
    SELECT 
        customer_id,
        COUNT(invoice_id) AS purchase_frequency
    FROM invoice
    GROUP BY customer_id
) AS customer_frequency
GROUP BY purchase_frequency
ORDER BY purchase_frequency;

-- > 2. What percentage of customers purchase tracks from more than one genre?
WITH customer_genres AS (
    SELECT 
        i.customer_id,
        COUNT(DISTINCT t.genre_id) AS genre_count
    FROM invoice i
    JOIN invoice_line il
        ON i.invoice_id = il.invoice_id
    JOIN track t
        ON il.track_id = t.track_id
    GROUP BY i.customer_id
)
SELECT 
    ROUND(
        SUM(CASE WHEN genre_count > 1 THEN 1 ELSE 0 END) * 100.0 
        / COUNT(*),
        2
    ) AS pct_customers_multi_genre
FROM customer_genres;

-- > 3. How long is the average time between customer purchases?
WITH purchase_gaps AS (
    SELECT 
        customer_id,
        invoice_date,
        
        LAG(invoice_date) OVER (
            PARTITION BY customer_id 
            ORDER BY invoice_date
        ) AS previous_purchase_date,
        
        DATEDIFF(
            invoice_date,
            LAG(invoice_date) OVER (
                PARTITION BY customer_id 
                ORDER BY invoice_date
            )
        ) AS days_between_purchases

    FROM invoice
)
SELECT 
    ROUND(AVG(days_between_purchases), 2) AS avg_days_between_purchases
FROM purchase_gaps
WHERE days_between_purchases IS NOT NULL;

