SELECT * FROM Sales WHERE Sale_id IS NULL 
  OR customer_id IS NULL OR product_id IS NULL 
  OR store_id IS NULL OR quantity IS NULL OR sale_date IS NULL;
SELECT * FROM Stores WHERE store_id IS NULL 
  OR StoreName IS NULL OR city IS NULL;
  
  SELECT * FROM Sales WHERE quantity <= 0;
  SELECT * FROM Products WHERE price <= 0;
  
  SELECT storeName AS store_name, SUM(p.price * s.quantity) AS revenue
FROM Sales s
JOIN Stores st ON s.store_id = st.store_id
JOIN Products p ON s.product_id = p.product_id
GROUP BY storeName;

SELECT DATE_FORMAT(s.sale_date, '%M') AS sale_month,
       SUM(p.price * s.quantity) AS monthly_sales
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
WHERE YEAR(s.sale_date) = 2023
GROUP BY MONTH(s.sale_date), sale_month
ORDER BY MONTH(s.sale_date);

SELECT DATE_FORMAT(s.sale_date, '%M') AS sale_month,
       SUM(p.price * s.quantity) AS monthly_sales
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
WHERE YEAR(s.sale_date) = 2023
GROUP BY MONTH(s.sale_date), sale_month
ORDER BY monthly_sales DESC
LIMIT 5;

