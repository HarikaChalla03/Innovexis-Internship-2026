-- >  Sales & Revenue Analysis
USE itunes_analysis;

-- > 1. What are the monthly revenue trends for the last two years?
SELECT
YEAR(invoice_date) AS year,
MONTH(invoice_date) AS month,
SUM(total) AS revenue
FROM invoice
GROUP BY year, month
ORDER BY year, month;

-- 2.  What is the average value of an invoice (purchase)?
SELECT AVG(total) AS avg_invoice_value
FROM invoice;

-- 3. Which payment methods are used most frequently?
DESCRIBE invoice;
-- payment_method, payment_type, card_type is not available in the dataset

-- 4.  How much revenue does each sales representative contribute?
SELECT 
    e.employee_id,
    CONCAT(e.first_name, ' ', e.last_name) AS sales_representative,
    ROUND(SUM(i.total), 2) AS total_revenue
FROM employee e
JOIN customer c
    ON e.employee_id = c.support_rep_id
JOIN invoice i
    ON c.customer_id = i.customer_id
GROUP BY e.employee_id, sales_representative
ORDER BY total_revenue DESC;

-- > 5. Which months or quarters have peak music sales?
SELECT 
    YEAR(invoice_date) AS sales_year,
    MONTH(invoice_date) AS sales_month,
    MONTHNAME(invoice_date) AS month_name,
    ROUND(SUM(total), 2) AS total_sales
FROM invoice
GROUP BY sales_year, sales_month, month_name
ORDER BY total_sales DESC;