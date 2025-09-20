-- Create Database
CREATE DATABASE p1_retail_db;

-- Use the Database
USE p1_retail_db;

-- Create Table
CREATE TABLE retail_sales (
    transaction_id INT PRIMARY KEY,
    sale_date DATE,
    sale_time TIME,
    customer_id INT,
    gender VARCHAR(10),
    age INT,
    category VARCHAR(50),
    quantity INT,
    price_per_unit DECIMAL(10,2),
    total_sale DECIMAL(10,2)
);

-- Insert Sample Data (20 rows)
INSERT INTO retail_sales VALUES
(1, '2022-11-01', '10:15:00', 101, 'Male', 28, 'Clothing', 2, 500, 1000),
(2, '2022-11-01', '14:20:00', 102, 'Female', 34, 'Beauty', 3, 300, 900),
(3, '2022-11-02', '09:45:00', 103, 'Male', 40, 'Electronics', 1, 1200, 1200),
(4, '2022-11-02', '16:30:00', 104, 'Female', 22, 'Clothing', 5, 400, 2000),
(5, '2022-11-03', '11:10:00', 105, 'Male', 31, 'Groceries', 10, 50, 500),
(6, '2022-11-03', '18:25:00', 106, 'Female', 29, 'Beauty', 2, 700, 1400),
(7, '2022-11-04', '13:40:00', 107, 'Male', 45, 'Clothing', 1, 800, 800),
(8, '2022-11-04', '09:15:00', 108, 'Female', 37, 'Electronics', 2, 1500, 3000),
(9, '2022-11-05', '15:05:00', 109, 'Male', 26, 'Groceries', 8, 60, 480),
(10, '2022-11-05', '17:50:00', 110, 'Female', 33, 'Clothing', 3, 450, 1350),
(11, '2022-11-06', '10:20:00', 111, 'Male', 39, 'Beauty', 4, 350, 1400),
(12, '2022-11-06', '12:45:00', 112, 'Female', 41, 'Groceries', 12, 55, 660),
(13, '2022-11-07', '14:30:00', 113, 'Male', 24, 'Electronics', 1, 2000, 2000),
(14, '2022-11-07', '19:10:00', 114, 'Female', 36, 'Clothing', 6, 300, 1800),
(15, '2022-11-08', '08:55:00', 115, 'Male', 30, 'Beauty', 2, 500, 1000),
(16, '2022-11-08', '16:20:00', 116, 'Female', 27, 'Groceries', 15, 45, 675),
(17, '2022-11-09', '11:40:00', 117, 'Male', 32, 'Clothing', 4, 550, 2200),
(18, '2022-11-09', '18:00:00', 118, 'Female', 29, 'Electronics', 1, 2500, 2500),
(19, '2022-11-10', '13:25:00', 119, 'Male', 38, 'Beauty', 5, 400, 2000),
(20, '2022-11-10', '09:35:00', 120, 'Female', 35, 'Groceries', 7, 70, 490);

