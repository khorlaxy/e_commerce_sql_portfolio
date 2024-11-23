--1. Get the monthly revenue:
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, SUM(total_amount) AS monthly_revenue
FROM Orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;

--2. Find users who haven’t placed an order:
SELECT name, email 
FROM Users 
WHERE user_id NOT IN (SELECT DISTINCT user_id FROM Orders);

--3. List products with low stock (less than 10):
SELECT product_name, stock 
FROM Products 
WHERE stock < 10;

--4. Calculate monthly revenue:
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, SUM(total_amount) AS revenue
FROM Orders
GROUP BY month;

--5. Identify the top 5 most purchased products:
SELECT p.product_name, SUM(od.quantity) AS total_sold
FROM OrderDetails od
JOIN Products p ON od.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC
LIMIT 5;

--6. Find the average order value per customer:
SELECT u.user_name, AVG(o.total_amount) AS avg_order_value
FROM Users u
JOIN Orders o ON u.user_id = o.user_id
GROUP BY u.user_name;

--7. Get the percentage of orders paid using each payment method:
SELECT payment_method, 
       COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Payments) AS percentage
FROM Payments
GROUP BY payment_method;

--8. Determine the best-selling product category:
SELECT c.category_name, SUM(od.quantity) AS total_sold
FROM Categories c
JOIN Products p ON c.category_id = p.category_id
JOIN OrderDetails od ON p.product_id = od.product_id
GROUP BY c.category_name
ORDER BY total_sold DESC
LIMIT 1;
