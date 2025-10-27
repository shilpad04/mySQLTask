-- Create the ecommerce database
CREATE DATABASE ecommerce;

-- Use the ecommerce database
USE ecommerce;

-- Create customers table to store customer details
CREATE TABLE customers(
 id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(100) NOT NULL,
 email VARCHAR(50) UNIQUE,
 address VARCHAR(200)
);

-- Create orders table to store order information
CREATE TABLE orders(
 id INT AUTO_INCREMENT PRIMARY KEY,
 customer_id INT,
 order_date DATE,
 total_amount DECIMAL(10,2),
 FOREIGN KEY(customer_id) REFERENCES customers(id)
 ON DELETE CASCADE
 ON UPDATE CASCADE
);

-- Create products table to store product details
CREATE TABLE products(
 id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(200) NOT NULL, 
 price INT NOT NULL,
 description TEXT
);

-- Insert sample data into customers table
INSERT INTO customers (name, email, address) VALUES
('John Doe', 'john.doe@example.com', '123 Main St, New York'),
('Jane Smith', 'jane.smith@example.com', '456 Park Ave, Los Angeles'),
('Amit Patel', 'amit.patel@example.com', '789 MG Road, Mumbai'),
('Priya Sharma', 'priya.sharma@example.com', '22 Residency Rd, Bangalore'),
('Michael Brown', 'michael.brown@example.com', '12 Baker St, London'),
('Sofia Lee', 'sofia.lee@example.com', '56 Orchard Rd, Singapore'),
('Carlos Rivera', 'carlos.rivera@example.com', '9 Calle Real, Madrid'),
('Emily Johnson', 'emily.johnson@example.com', '45 Ocean Blvd, Miami'),
('Raj Mehta', 'raj.mehta@example.com', '88 Link Rd, Delhi'),
('Olivia Martin', 'olivia.martin@example.com', '33 Sunset Dr, Sydney'),
('David Kim', 'david.kim@example.com', '77 Maple Ave, Toronto'),
('Sara Ahmed', 'sara.ahmed@example.com', '11 Corniche Rd, Dubai'),
('Lucas White', 'lucas.white@example.com', '10 High St, Melbourne'),
('Nina Rossi', 'nina.rossi@example.com', '81 Via Roma, Milan'),
('Emma Davis', 'emma.davis@example.com', '92 Queen St, Auckland'),
('Robert Hall', 'robert.hall@example.com', '60 Elm St, Boston'),
('Isabella Clark', 'isabella.clark@example.com', '14 Cherry Ln, Houston'),
('William Jones', 'william.jones@example.com', '66 Harbor Rd, Seattle'),
('Harshita Nair', 'harshita.nair@example.com', '23 MG Rd, Pune'),
('Ananya Reddy', 'ananya.reddy@example.com', '19 Jubilee Hills, Hyderabad'),
('Tina Sharma', 'tina.sharma@example.com', 'Jodhpur, Rajasthan'),
('Ravi Patel', 'ravi.patel@example.com', 'Vadodara, Gujarat'),
('Sunil Raj', 'sunil.raj@example.com', 'Kochi, Kerala'),
('Neha Mehra', 'neha.mehra@example.com', 'Indore, Madhya Pradesh'),
('Harshita Singh', 'harshita.singh@example.com', 'Agra, Uttar Pradesh'),
('Amitabh Ghosh', 'amitabh.ghosh@example.com', 'Howrah, West Bengal'),
('Kavya Jain', 'kavya.jain@example.com', 'Jaipur, Rajasthan'),
('Rohit Bhat', 'rohit.bhat@example.com', 'Srinagar, Jammu & Kashmir'),
('Sanya Deshmukh', 'sanya.deshmukh@example.com', 'Thane, Maharashtra'),
('Mukul Verma', 'mukul.verma@example.com', 'Lucknow, Uttar Pradesh'),
('Pooja Thakur', 'pooja.thakur@example.com', 'Bhopal, Madhya Pradesh'),
('Ramesh Nair', 'ramesh.nair@example.com', 'Trivandrum, Kerala'),
('Anjali Kapoor', 'anjali.kapoor@example.com', 'Delhi'),
('Gaurav Malhotra', 'gaurav.malhotra@example.com', 'Pune, Maharashtra'),
('Divya Shetty', 'divya.shetty@example.com', 'Mangalore, Karnataka'),
('Nikhil Yadav', 'nikhil.yadav@example.com', 'Kanpur, Uttar Pradesh'),
('Ayesha Khan', 'ayesha.khan@example.com', 'Hyderabad, Telangana'),
('Rohini Iyer', 'rohini.iyer@example.com', 'Chennai, Tamil Nadu'),
('Varun Chauhan', 'varun.chauhan@example.com', 'Ludhiana, Punjab'),
('Sakshi Agarwal', 'sakshi.agarwal@example.com', 'Kolkata, West Bengal'),
('Deepak Sinha', 'deepak.sinha@example.com', 'Ranchi, Jharkhand'),
('Ritu Paul', 'ritu.paul@example.com', 'Siliguri, West Bengal'),
('Farhan Qureshi', 'farhan.qureshi@example.com', 'Lucknow, Uttar Pradesh'),
('Leela Krishnan', 'leela.krishnan@example.com', 'Coimbatore, Tamil Nadu'),
('Saurabh Dubey', 'saurabh.dubey@example.com', 'Gwalior, Madhya Pradesh'),
('Sita Das', 'sita.das@example.com', 'Guwahati, Assam'),
('Tanvi Reddy', 'tanvi.reddy@example.com', 'Hyderabad, Telangana'),
('Manoj Pillai', 'manoj.pillai@example.com', 'Kochi, Kerala'),
('Swati Joshi', 'swati.joshi@example.com', 'Nashik, Maharashtra'),
('Rajat Sharma', 'rajat.sharma@example.com', 'Delhi');

-- Insert sample data into products table
INSERT INTO products (name, price, description)
VALUES
('Product A', 10.00, 'Description for Product A'),
('Product B', 12.50, 'Description for Product B'),
('Product C', 15.00, 'Description for Product C'),
('Product D', 18.00, 'Description for Product D'),
('Product E', 20.50, 'Description for Product E'),
('Product F', 22.00, 'Description for Product F'),
('Product G', 25.00, 'Description for Product G'),
('Product H', 28.00, 'Description for Product H'),
('Product I', 30.00, 'Description for Product I'),
('Product J', 32.50, 'Description for Product J'),
('Product K', 35.00, 'Description for Product K'),
('Product L', 37.50, 'Description for Product L'),
('Product M', 40.00, 'Description for Product M'),
('Product N', 42.00, 'Description for Product N'),
('Product O', 44.50, 'Description for Product O'),
('Product P', 46.00, 'Description for Product P'),
('Product Q', 48.00, 'Description for Product Q'),
('Product R', 50.00, 'Description for Product R'),
('Product S', 52.00, 'Description for Product S'),
('Product T', 54.50, 'Description for Product T'),
('Product U', 56.00, 'Description for Product U'),
('Product V', 58.50, 'Description for Product V'),
('Product W', 60.00, 'Description for Product W'),
('Product X', 62.00, 'Description for Product X'),
('Product Y', 64.00, 'Description for Product Y'),
('Product Z', 66.00, 'Description for Product Z'),
('Product AA', 68.00, 'Description for Product AA'),
('Product AB', 70.00, 'Description for Product AB'),
('Product AC', 72.00, 'Description for Product AC'),
('Product AD', 74.50, 'Description for Product AD'),
('Product AE', 76.00, 'Description for Product AE'),
('Product AF', 78.00, 'Description for Product AF'),
('Product AG', 80.00, 'Description for Product AG'),
('Product AH', 82.00, 'Description for Product AH'),
('Product AI', 84.00, 'Description for Product AI'),
('Product AJ', 86.00, 'Description for Product AJ'),
('Product AK', 88.00, 'Description for Product AK'),
('Product AL', 90.00, 'Description for Product AL'),
('Product AM', 92.00, 'Description for Product AM'),
('Product AN', 94.00, 'Description for Product AN'),
('Product AO', 96.00, 'Description for Product AO'),
('Product AP', 98.00, 'Description for Product AP'),
('Product AQ', 100.00, 'Description for Product AQ'),
('Product AR', 102.00, 'Description for Product AR'),
('Product AS', 104.00, 'Description for Product AS'),
('Product AT', 106.00, 'Description for Product AT'),
('Product AU', 108.00, 'Description for Product AU'),
('Product AV', 110.00, 'Description for Product AV'),
('Product AW', 112.00, 'Description for Product AW'),
('Product AX', 114.00, 'Description for Product AX');

-- Insert sample data into orders table
INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(1, '2025-10-01', 899.98),
(2, '2025-10-02', 499.50),
(3, '2025-10-03', 59.99),
(4, '2025-10-04', 129.99),
(5, '2025-10-05', 29.99),
(6, '2025-10-06', 19.99),
(7, '2025-10-07', 149.99),
(8, '2025-10-08', 89.99),
(9, '2025-10-09', 39.99),
(10, '2025-10-10', 299.99),
(11, '2025-10-11', 45.50),
(12, '2025-10-12', 25.99),
(13, '2025-10-13', 12.99),
(14, '2025-10-14', 199.99),
(15, '2025-10-15', 49.99),
(16, '2025-10-16', 99.99),
(17, '2025-10-17', 34.99),
(18, '2025-10-18', 79.99),
(19, '2025-10-19', 599.99),
(20, '2025-10-20', 699.00),
(21, '2025-08-02', 850.00),
(22, '2025-08-03', 1299.99),
(23, '2025-08-04', 199.00),
(24, '2025-08-05', 520.50),
(25, '2025-08-06', 1100.00),
(26, '2025-08-07', 2250.75),
(27, '2025-08-08', 300.25),
(28, '2025-08-09', 785.90),
(29, '2025-08-10', 412.00),
(30, '2025-08-11', 250.00),
(31, '2025-08-12', 900.45),
(32, '2025-08-13', 1500.60),
(33, '2025-08-14', 650.00),
(34, '2025-08-15', 320.99),
(35, '2025-08-16', 1050.00),
(36, '2025-08-17', 780.40),
(37, '2025-08-18', 870.50),
(38, '2025-08-19', 1320.00),
(39, '2025-08-20', 560.20),
(40, '2025-08-21', 480.00),
(41, '2025-08-22', 1230.75),
(42, '2025-08-23', 1399.50),
(43, '2025-08-24', 970.00),
(44, '2025-08-25', 410.40),
(45, '2025-08-26', 620.00),
(46, '2025-08-27', 300.00),
(47, '2025-08-28', 650.00),
(48, '2025-08-29', 990.00),
(49, '2025-08-30', 1250.00),
(50, '2025-08-31', 470.50);

-- Retrieve customers who placed an order in the last 30 days
SELECT C.*, COUNT(O.id) AS Total_orders
FROM customers C
JOIN orders O ON C.id = O.customer_id 
WHERE O.order_date >= (CURDATE() - INTERVAL 30 DAY)
GROUP BY C.id;

-- Retrieve total order amount per customer
SELECT c.name AS Name, o.customer_id AS `Customer ID`, SUM(o.total_amount) AS `Total Amount`
FROM orders o
JOIN customers c ON c.id = o.customer_id
GROUP BY o.customer_id, c.name;

-- Update price of Product C to 45.00
UPDATE products
SET price = 45.00
WHERE name = 'Product C';

-- Add a new column discount to products table
ALTER TABLE products
ADD COLUMN discount DECIMAL(5,2);

-- Retrieve top 3 highest priced products
SELECT * 
FROM products
ORDER BY price DESC 
LIMIT 3;

-- Create order_items table for normalization (many-to-many relationship)
CREATE TABLE order_items(
  id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT,
  product_id INT,
  quantity INT,
  FOREIGN KEY (order_id) REFERENCES orders(id),
  FOREIGN KEY (product_id) REFERENCES products(id)
);

-- Insert sample data into order_items table
INSERT INTO order_items (order_id, product_id, quantity)
VALUES
(1, 1, 2),
(2, 3, 1),
(3, 1, 1),
(4, 5, 3),
(5, 2, 2),
(6, 8, 1),
(7, 10, 4),
(8, 7, 2),
(9, 4, 1),
(10, 9, 3),
(11, 6, 2),
(12, 12, 1),
(13, 11, 5),
(14, 15, 1),
(15, 13, 2),
(16, 14, 1),
(17, 18, 3),
(18, 16, 2),
(19, 20, 4),
(20, 22, 1),
(21, 21, 3),
(22, 24, 1),
(23, 19, 2),
(24, 25, 3),
(25, 17, 1);

-- Retrieve names of customers who ordered Product A
SELECT DISTINCT c.name AS CustomerName, p.name AS ProductName
FROM customers c
JOIN orders o ON c.id = o.customer_id
JOIN order_items oi ON o.id = oi.order_id
JOIN products p ON oi.product_id = p.id
WHERE p.name = 'Product A';

-- Retrieve customer name and order date for each order
SELECT c.name AS CustomerName, o.order_date AS OrderDate
FROM orders o
JOIN customers c ON o.customer_id = c.id;

-- Retrieve orders with total amount greater than 150.00
SELECT * 
FROM orders 
WHERE total_amount > 150.00;

-- Retrieve average total amount of all orders
SELECT AVG(total_amount) AS AverageOrderTotal
FROM orders;
