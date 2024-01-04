SELECT list_price , description
FROM price, product
WHERE price.product_id = product.product_id 
AND price.end_date IS NULL 
AND product.description LIKE '%SOFTBALL%'