CREATE TABLE tmp_table AS
SELECT *
FROM (
    SELECT *,
        ROW_NUMBER() OVER (PARTITION BY event_type, product_id, price, user_id, user_session ORDER BY event_time) AS rn
    FROM customers
) subquery
WHERE rn = 1;

DROP TABLE customers;
ALTER TABLE tmp_table RENAME TO customers;