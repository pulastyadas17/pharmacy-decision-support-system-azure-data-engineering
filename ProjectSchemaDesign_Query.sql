-- Fact Table

CREATE TABLE Fact_POS_DailyTransactions 
(
    TransactionID VARCHAR(25) PRIMARY KEY,
    StoreID VARCHAR(10),
    StoreLocation VARCHAR(50),
    CashierID VARCHAR(10),
    CustomerID VARCHAR(10),
    CustomerAge INT,
    CustomerGender VARCHAR(10),
    ProductID VARCHAR(10),
    ProductCategory VARCHAR(100),
    ProductName VARCHAR(50),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    Timestamp TIMESTAMP,
    TotalAmount DECIMAL(10,2),
    DiscountApplied DECIMAL(10,2),
    TaxAmount DECIMAL(10,4),
    TotalAmountAfterTax DECIMAL(10,4)
);

-- Dimension Tables

CREATE TABLE StoreInventory 
(
    StoreID VARCHAR(10),
    StoreLocation VARCHAR(50),
    ProductID VARCHAR(10),
    ProductName VARCHAR(50),
    ProductCategory VARCHAR(100),
    CurrentStock INT,
    ReorderLevel INT,
    ReorderQuantity INT,
    LastRestockDate DATE,
    ProjectedDemand INT
);


CREATE TABLE VendorData 
(
    VendorID VARCHAR(10),
    VendorName VARCHAR(100),
    ProductCategory VARCHAR(100),
    SupplyRate DECIMAL(8, 6)
);

CREATE TABLE IF NOT EXISTS customerdetails (
            CustomerID VARCHAR(10),
            Name VARCHAR(100),
            CustomerAge INT,
            CustomerGender VARCHAR(10),
            FullAddress VARCHAR(255),
            City VARCHAR(50),
            PhoneNumber VARCHAR(15),
            EmailID VARCHAR(100),
            DOB DATE
        );


-- Azure SQL Database Table for Insurance Claim Processing Data

CREATE TABLE DailyClaimsRequests (
	EndDate Date,
    Customer_ID VARCHAR(50) PRIMARY KEY,
    Medicine VARCHAR(100),
    Claim_Amount DECIMAL(10,2),
    Service_Date DATE,
    Submission_Date DATE,
    Status VARCHAR(50),
    Required_Docs VARCHAR(50),
    Insurance_Coverage DECIMAL(10,2),
	Remaining_Coverage DECIMAL(10,2),
);

INSERT INTO DailyClaimsRequests(
EndDate,Customer_ID,Medicine,Claim_Amount,Service_Date,Submission_Date,Status,Required_Docs,Insurance_Coverage,Remaining_Coverage) VALUES 
('2024-09-27','U038', 'Omeprazole', 1500.00, '2024-09-01', '2024-09-02', 'submitted', NULL, 1000.00, 500.00),
('2024-09-27','U085', 'Olopatadine', 2000.00, '2024-09-05', '2024-09-06', 'submitted', 'Yes', 1800.00, 200.00),
('2024-09-27','U011', 'Ciprofloxacin', 1200.00, '2024-09-10', '2024-09-11', 'submitted', 'Yes', 1000.00, 200.00),
('2024-09-27','U081', 'Emtricitabine', 2500.00, '2024-09-15', '2024-09-16', 'submitted', 'Yes', 2200.00, 300.00),
('2024-09-27','U076', 'Aspirin', 800.00, '2024-09-20', '2024-09-21', 'submitted', 'Yes', 600.00, 200.00),
('2024-09-27','U046', 'Metformin', 1700.00, '2024-09-25', '2024-09-26', 'submitted', 'Yes', 1500.00, 200.00),
('2024-09-27','U094', 'Cisplatin', 3000.00, '2024-09-28', '2024-09-29', 'submitted', NULL, 2800.00, 200.00),
('2024-09-27','U096', 'Gabapentin', 1400.00, '2024-09-30', '2024-10-01', 'submitted', 'Yes', 1200.00, 200.00),
('2024-09-27','U020', 'Clotrimazole', 900.00, '2024-08-02', '2024-09-03', 'submitted', NULL, 700.00, 200.00),
('2024-09-27','U019', 'Montelukast', 750.00, '2024-05-02', '2024-09-13', 'submitted', 'Yes', 5000.00, 2400.00),
('2024-09-27','U051', 'Montelukast', 72.00, '2024-09-07', '2024-09-18', 'submitted', 'Yes', 2000.00, 200.00),
('2024-09-27','U025', 'Aspirin', 1100.00, '2024-07-05', '2024-08-06', 'submitted', 'Yes', 1000.00, 100.00);



UPDATE DailyClaimsRequests SET Submission_Date='2024-09-21' WHERE Customer_ID='U025'
UPDATE DailyClaimsRequests SET Submission_Date='2024-09-18' WHERE Customer_ID='U020'
UPDATE DailyClaimsRequests SET Submission_Date='2024-08-26' WHERE Customer_ID='U096'


CREATE TABLE ProcessedClaims (
    Processed_Date DATE,
    Customer_ID VARCHAR(50),
    Medicine VARCHAR(100),
    Claim_Amount DECIMAL(10, 2),
    Service_Date DATE,
    Submission_Date DATE,
    Status VARCHAR(255),
    Required_Docs VARCHAR(50),
    Insurance_Coverage DECIMAL(10, 2),
    Remaining_Coverage DECIMAL(10, 2)
);



DROP TABLE [dbo].[RejectedClaims]

SELECT TOP (1000) * FROM [dbo].[RejectedClaims]

DROP TABLE [dbo].[RejectedClaims]

TRUNCATE TABLE [dbo].[RejectedClaims]

CREATE TABLE RejectedClaims (
    Rejected_Date DATE,
    Customer_ID VARCHAR(50),
    Medicine VARCHAR(100),
    Claim_Amount DECIMAL(10, 2),
    Service_Date DATE,
    Submission_Date DATE,
    Status VARCHAR(255),
    Insurance_Coverage DECIMAL(10, 2),
    Remaining_Coverage DECIMAL(10, 2)
);

SELECT TOP (1000) * FROM [dbo].[RejectedClaims]


CREATE TABLE ProcessedClaims (
    Processed_Date DATE,
    Customer_ID VARCHAR(50),
    Medicine VARCHAR(100),
    Claim_Amount DECIMAL(10, 2),
    Service_Date DATE,
    Submission_Date DATE,
    Status VARCHAR(255),
    Insurance_Coverage DECIMAL(10, 2),
    Remaining_Coverage DECIMAL(10, 2)
);

SELECT TOP (1000) * FROM [dbo].[ProcessedClaims]








