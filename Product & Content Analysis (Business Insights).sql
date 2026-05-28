-- > Product & Content Analysis
Use itunes_analysis;
-- > 1. Which tracks generated the most revenue?
SELECT
t.name,
SUM(il.quantity) AS total_sold
FROM invoice_line il
JOIN track t
ON il.track_id = t.track_id
GROUP BY t.name
ORDER BY total_sold DESC;

-- > 2. Are there any tracks or albums that have never been purchased?
SELECT t.name
FROM track t
LEFT JOIN invoice_line il
ON t.track_id = il.track_id
WHERE il.track_id IS NULL;

-- > 3. Which albums or playlists are most frequently included in purchases?
SELECT 
    a.album_id,
    a.title AS album_name,
    ar.name AS artist_name,
    COUNT(il.invoice_line_id) AS total_purchases
FROM invoice_line il
JOIN track t
    ON il.track_id = t.track_id
JOIN album a
    ON t.album_id = a.album_id
JOIN artist ar
    ON a.artist_id = ar.artist_id
GROUP BY a.album_id, album_name, artist_name
ORDER BY total_purchases DESC;

-- > 4. What is the average price per track across different genres?
SELECT 
    g.genre_id,
    g.name AS genre_name,
    ROUND(AVG(t.unit_price), 2) AS avg_track_price,
    COUNT(t.track_id) AS total_tracks
FROM track t
JOIN genre g
    ON t.genre_id = g.genre_id
GROUP BY g.genre_id, genre_name
ORDER BY avg_track_price DESC;

-- > 5. How many tracks does the store have per genre and how does it correlate with sales?
SELECT 
    g.genre_id,
    g.name AS genre_name,
    COUNT(DISTINCT t.track_id) AS total_tracks,
    COUNT(il.invoice_line_id) AS total_sales_count,
    ROUND(SUM(il.unit_price * il.quantity), 2) AS total_revenue
    FROM genre g
JOIN track t
    ON g.genre_id = t.genre_id
LEFT JOIN invoice_line il
    ON t.track_id = il.track_id
GROUP BY g.genre_id, genre_name
ORDER BY total_revenue DESC;

