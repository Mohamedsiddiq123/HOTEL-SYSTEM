-- =========================
-- ROW_NUMBER Example
-- =========================
SELECT 
    customer_id,
    total_amount,
    ROW_NUMBER() OVER (ORDER BY total_amount DESC) AS row_num
FROM Reservations;

-- =========================
-- RANK Example
-- =========================
SELECT 
    customer_id,
    total_amount,
    RANK() OVER (ORDER BY total_amount DESC) AS rnk
FROM Reservations;

-- =========================
-- DENSE_RANK Example
-- =========================
SELECT 
    customer_id,
    total_amount,
    DENSE_RANK() OVER (ORDER BY total_amount DESC) AS dense_rnk
FROM Reservations;
