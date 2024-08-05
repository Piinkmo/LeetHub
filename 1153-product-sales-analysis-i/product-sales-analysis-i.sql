# Write your MySQL query statement below
SELECT product.product_name, sales.year, sales.price
FROM Sales, product 
where sales.product_id = product.product_id