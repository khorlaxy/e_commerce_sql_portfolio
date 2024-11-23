--1. Get all products and their categories:
SELECT product_name, category_name 
FROM Products 
JOIN Categories ON Products.category_id = Categories.category_id;

--2. Retrieve the total number of products in stock:
SELECT COUNT(*) AS total_products
FROM Products;

--3. List all orders made in the last 30 days:
SELECT *
FROM Orders
WHERE order_date >= NOW() - INTERVAL 30 DAY;

--4. Get the most expensive product in the database:
SELECT product_name, price
FROM Products
ORDER BY price DESC
LIMIT 1;

--5. Find the total number of users registered:
SELECT COUNT(*) AS total_users
FROM Users;

--6. Get total sales by product:
SELECT product_name, SUM(quantity) AS total_quantity_sold, SUM(price * quantity) AS total_revenue
FROM OrderDetails 
JOIN Products ON OrderDetails.product_id = Products.product_id
GROUP BY product_name;

--7. Get top-rated products:
SELECT product_name, AVG(rating) AS average_rating
FROM Reviews
JOIN Products ON Reviews.product_id = Products.product_id
GROUP BY product_name
HAVING AVG(rating) > 4;

--8. List all customers who placed orders:
SELECT DISTINCT u.user_name
FROM Users u
JOIN Orders o ON u.user_id = o.user_id;

