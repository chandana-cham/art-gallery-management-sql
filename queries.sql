-- Available artworks
SELECT artwork_id, title, price
FROM artworks
WHERE status = 'Available';

-- Sold artworks
SELECT artwork_id, title, price
FROM artworks
WHERE status = 'Sold';

-- Total gallery revenue
SELECT SUM(sale_price) AS total_revenue
FROM sales;

-- Artist-wise revenue
SELECT ar.artist_name, SUM(s.sale_price) AS artist_revenue
FROM artists ar
JOIN artworks aw ON ar.artist_id = aw.artist_id
JOIN sales s ON aw.artwork_id = s.artwork_id
GROUP BY ar.artist_name;

-- Unsold artworks
SELECT aw.artwork_id, aw.title
FROM artworks aw
LEFT JOIN sales s ON aw.artwork_id = s.artwork_id
WHERE s.sale_id IS NULL;

-- Customers who purchased artworks
SELECT DISTINCT c.customer_name, c.city
FROM customers c
JOIN sales s ON c.customer_id = s.customer_id;
