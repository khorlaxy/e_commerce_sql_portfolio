-- Insert Categories
INSERT INTO Categories (category_name)
VALUES ('Electronics'), ('Fashion'), ('Home Appliances');

-- Insert Products
INSERT INTO Products (product_name, price, stock, category_id)
VALUES 
('Smartphone', 699.99, 50, 1),
('Laptop', 999.99, 30, 1),
('T-shirt', 19.99, 100, 2),
('Blender', 49.99, 20, 3);

-- Insert Users
INSERT INTO Users (`name`, email, phone_number, `address`)
VALUES 
('Alice Smith', 'alice@example.com', '1234567890', '123 Elm Street'),
('Bob Johnson', 'bob@example.com', '0987654321', '456 Oak Avenue');

-- Insert Orders
INSERT INTO Orders (user_id, total_amount)
VALUES 
(1, 749.98), 
(2, 69.98);

-- Insert OrderDetails
INSERT INTO OrderDetails (order_id, product_id, quantity, price)
VALUES 
(1, 1, 1, 699.99),
(1, 4, 1, 49.99),
(2, 3, 2, 19.99);

-- Insert Reviews
INSERT INTO Reviews (product_id, user_id, review_text, rating)
VALUES 
(1, 1, 'Great phone!', 5),
(3, 2, 'Comfortable to wear', 4);

-- Insert Payments
INSERT INTO Payments (order_id, amount, payment_method)
VALUES 
(1, 749.98, 'Credit Card'),
(2, 69.98, 'PayPal');
