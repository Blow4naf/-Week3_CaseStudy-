SELECT * FROM Products WHERE product_id IS NULL 
  OR ProductName IS NULL OR category IS NULL OR price IS NULL;
  
  SELECT p.product_id, p.productName, SUM(s.quantity * p.price) AS total_sales
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.product_id, p.productName
ORDER BY total_sales DESC;

SELECT p.category,p.productName, SUM(s.quantity * p.price) AS category_sales
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.category,p.productName;

SELECT p.category, SUM(s.quantity * p.price) AS category_sales
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.category;

SELECT p.productName,c.city, COUNT(s.product_id) AS purchase_count
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY p.productName, c.city
ORDER BY purchase_count DESC
LIMIT 10;

SELECT p.productName, COUNT(s.product_id) AS purchase_count
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.productName
ORDER BY purchase_count DESC
LIMIT 5;
