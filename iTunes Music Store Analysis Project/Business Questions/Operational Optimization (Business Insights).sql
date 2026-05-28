USE itunes_analysis;
--  > Operational Optimization

-- > 1.  Are there pricing patterns that lead to higher or lower sales?
-- Price vs Sales Volume Pattern
    SELECT  
    il.unit_price,
    COUNT(il.invoice_line_id) AS total_purchases,
    SUM(il.quantity) AS total_tracks_sold,
    ROUND(SUM(il.unit_price * il.quantity), 2) AS total_revenue
FROM invoice_line il
GROUP BY il.unit_price
ORDER BY il.unit_price;

--  Price Band Analysis
SELECT 
    CASE 
        WHEN unit_price < 0.99 THEN 'Low Price'
        WHEN unit_price BETWEEN 0.99 AND 1.29 THEN 'Medium Price'
        ELSE 'High Price'
    END AS price_segment,
    COUNT(invoice_line_id) AS total_purchases,
    SUM(quantity) AS total_tracks_sold,
    ROUND(SUM(unit_price * quantity), 2) AS total_revenue
FROM invoice_line
GROUP BY price_segment
ORDER BY total_revenue DESC;


-- > 2. Which media types (e.g., MPEG, AAC) are declining or increasing in usage?
SELECT 
    mt.name AS media_type,
    YEAR(i.invoice_date) AS sales_year,
    COUNT(il.invoice_line_id) AS total_tracks_sold,
    ROUND(SUM(il.unit_price * il.quantity), 2) AS total_revenue
FROM invoice_line il
JOIN invoice i
    ON il.invoice_id = i.invoice_id
JOIN track t
    ON il.track_id = t.track_id
JOIN media_type mt
    ON t.media_type_id = mt.media_type_id
GROUP BY 
    mt.name,
    YEAR(i.invoice_date)
ORDER BY 
    mt.name,
    sales_year;