USE itunes_analysis;

-- >  Employee & Operational Efficiency

-- > 1. Which employees (support representatives) are managing the highest-spending customers?
SELECT 
    e.employee_id,
    CONCAT(e.first_name, ' ', e.last_name) AS support_representative,
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    ROUND(SUM(i.total), 2) AS total_customer_spending
FROM employee e
JOIN customer c
    ON e.employee_id = c.support_rep_id
JOIN invoice i
    ON c.customer_id = i.customer_id
GROUP BY 
    e.employee_id,
    support_representative,
    c.customer_id,
    customer_name
ORDER BY total_customer_spending DESC;


-- > 2. What is the average number of customers per employee?
SELECT 
    ROUND(AVG(customer_count), 2) AS avg_customers_per_employee
FROM
(
        SELECT 
        e.employee_id,
        CONCAT(e.first_name, ' ', e.last_name) AS employee_name,
        COUNT(c.customer_id) AS customer_count
   FROM employee e
        LEFT JOIN customer c
        ON e.employee_id = c.support_rep_id
   GROUP BY e.employee_id, employee_name
) AS employee_customers;


-- > 3. Which employee regions bring in the most revenue?
SELECT 
    e.country AS employee_country,
    ROUND(SUM(i.total), 2) AS total_revenue,
    COUNT(DISTINCT c.customer_id) AS total_customers
FROM employee e
JOIN customer c
    ON e.employee_id = c.support_rep_id
JOIN invoice i
    ON c.customer_id = i.customer_id
GROUP BY employee_country
ORDER BY total_revenue DESC;