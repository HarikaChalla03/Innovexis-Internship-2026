-- >  Artist & Genre Performance
Use itunes_analysis;

-- > 1. Who are the top 5 highest-grossing artists?
-- > Top revenue generating Artists
SELECT
ar.name,
SUM(il.unit_price * il.quantity) AS revenue
FROM invoice_line il
JOIN track t
ON il.track_id = t.track_id
JOIN album al
ON t.album_id = al.album_id
JOIN artist ar
ON al.artist_id = ar.artist_id
GROUP BY ar.name
ORDER BY revenue DESC
LIMIT 5;

-- > 2.  Which music genres are most popular in terms of:
--  Number of tracks sold
--  Total revenue
SELECT 
    g.genre_id,
    g.name AS genre_name,
    SUM(il.quantity) AS total_tracks_sold,
	ROUND(SUM(il.unit_price * il.quantity), 2) AS total_revenue
FROM invoice_line il
JOIN track t
    ON il.track_id = t.track_id
JOIN genre g
    ON t.genre_id = g.genre_id
GROUP BY g.genre_id, genre_name
ORDER BY total_revenue DESC;

-- > 3. Are certain genres more popular in specific countries?
SELECT 
    i.billing_country,
    g.name AS genre_name,
    SUM(il.quantity) AS total_tracks_sold,
    ROUND(SUM(il.unit_price * il.quantity), 2) AS total_revenue
FROM invoice i
JOIN invoice_line il
    ON i.invoice_id = il.invoice_id
JOIN track t
    ON il.track_id = t.track_id
JOIN genre g
    ON t.genre_id = g.genre_id
GROUP BY i.billing_country, genre_name
ORDER BY i.billing_country, total_tracks_sold DESC;
