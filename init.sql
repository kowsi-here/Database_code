-- Create the database
CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

-- Create the employee table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(100) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    location VARCHAR(100) NOT NULL
);

-- Insert 15 employee records with Telugu film industry hero names
INSERT INTO employees (employee_name, salary, location) VALUES
('Prabhas', 85000.00, 'Hyderabad'),
('Mahesh Babu', 95000.00, 'Hyderabad'),
('Allu Arjun', 90000.00, 'Hyderabad'),
('NTR Jr.', 88000.00, 'Hyderabad'),
('Ram Charan', 87000.00, 'Hyderabad'),
('Chiranjeevi', 120000.00, 'Hyderabad'),
('Nagarjuna', 75000.00, 'Chennai'),
('Venkatesh', 78000.00, 'Hyderabad'),
('Pawan Kalyan', 92000.00, 'Hyderabad'),
('Ravi Teja', 82000.00, 'Vijayawada'),
('Nani', 68000.00, 'Hyderabad'),
('Vijay Deverakonda', 72000.00, 'Hyderabad'),
('Ram Pothineni', 70000.00, 'Chennai'),
('Nithiin', 65000.00, 'Hyderabad'),
('Sai Dharam Tej', 67000.00, 'Hyderabad');

-- Verify the data
SELECT * FROM employees;

-- Optional: Show summary statistics
SELECT 
    COUNT(*) AS total_employees,
    ROUND(AVG(salary), 2) AS average_salary,
    MIN(salary) AS minimum_salary,
    MAX(salary) AS maximum_salary,
    location,
    COUNT(*) AS employees_per_location
FROM employees
GROUP BY location;
