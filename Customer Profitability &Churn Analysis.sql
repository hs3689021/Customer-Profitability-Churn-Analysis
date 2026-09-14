


DROP DATABASE IF EXISTS ANALYTICS;
CREATE DATABASE ANALYTICS;
USE ANALYTICS;


CREATE TABLE Customers (
    CustomerID VARCHAR(10) PRIMARY KEY,
    CustomerName VARCHAR(50),
    Segment VARCHAR(20),
    Region VARCHAR(20),
    JoinDate DATE,
    ChurnStatus VARCHAR(5)
);

CREATE TABLE Transactions (
    TransactionID VARCHAR(10) PRIMARY KEY,
    CustomerID VARCHAR(10),
    OrderDate DATE,
    Category VARCHAR(30),
    Revenue INT,
    UnitsSold INT
);

CREATE TABLE ActivityCosts (
    CustomerID VARCHAR(10) PRIMARY KEY,
    SupportCalls INT,
    DeliveryDistance_KM INT,
    ProcessingCost INT
);


INSERT INTO Customers VALUES 
('C101', 'Aman Sharma', 'Retail', 'North', '2024-01-15', 'No'),
('C102', 'Priya Patel', 'Corporate', 'West', '2024-02-20', 'Yes'),
('C103', 'Rahul Verma', 'Retail', 'South', '2024-03-10', 'No'),
('C104', 'Sneha Reddy', 'Corporate', 'South', '2024-05-12', 'No'),
('C105', 'Vikram Singh', 'Retail', 'East', '2024-06-01', 'Yes');

INSERT INTO Transactions VALUES 
('T1001', 'C101', '2025-01-10', 'Electronics', 45000, 1),
('T1002', 'C102', '2025-01-12', 'Furniture', 12000, 2),
('T1003', 'C101', '2025-02-14', 'Clothing', 3500, 3),
('T1004', 'C103', '2025-02-20', 'Electronics', 85000, 2),
('T1005', 'C104', '2025-03-05', 'Clothing', 4500, 2),
('T1006', 'C105', '2025-03-15', 'Furniture', 15000, 1),
('T1007', 'C103', '2025-04-02', 'Clothing', 2500, 1);

INSERT INTO ActivityCosts VALUES 
('C101', 2, 15, 200),
('C102', 8, 45, 500),
('C103', 1, 10, 150),
('C104', 3, 25, 300),
('C105', 7, 60, 600);


SELECT 
    c.CustomerID,
    c.CustomerName,
    c.ChurnStatus,
    SUM(t.Revenue) AS Customer_Lifetime_Value,
    (a.ProcessingCost + (a.SupportCalls * 100) + (a.DeliveryDistance_KM * 10)) AS Total_Service_Cost,
    (SUM(t.Revenue) - (a.ProcessingCost + (a.SupportCalls * 100) + (a.DeliveryDistance_KM * 10))) AS Net_Profit
FROM Customers c
JOIN Transactions t ON c.CustomerID = t.CustomerID
JOIN ActivityCosts a ON c.CustomerID = a.CustomerID
GROUP BY c.CustomerID, c.CustomerName, c.ChurnStatus, a.ProcessingCost, a.SupportCalls, a.DeliveryDistance_KM;

SELECT * FROM TRANSACTIONS;
SELECT * FROM ACTIVITYCOSTS;