-- USE [TeamCityProd];
GO

/* Delete in correct order because of FK */
DELETE FROM dbo.Customer;
DELETE FROM dbo.Vendor;
DELETE FROM dbo.Person;
GO

DBCC CHECKIDENT ('dbo.Person', RESEED, 0);
GO

INSERT INTO dbo.Person (FirstName, LastName, Title)
VALUES
(N'John',   N'Smith',    N'Mr'),
(N'Emily',  N'Johnson',  N'Ms'),
(N'Michael',N'Brown',    N'Mr');
GO

INSERT INTO dbo.Customer (PersonID, AccountNumber, Email)
VALUES
(1, N'CUST-1001', N'john.smith@gmail.com'),
(2, N'CUST-1002', N'emily.johnson@yahoo.com'),
(3, N'CUST-1003', N'michael.brown@outlook.com');
GO

INSERT INTO dbo.Vendor (PersonID, AccountNumber, Email, Phone)
VALUES
(1, N'VEND-2001', N'contact@smithsupplies.com',  N'+1-202-555-0147'),
(2, N'VEND-2002', N'sales@johnsontrading.com',  N'+1-202-555-0193'),
(3, N'VEND-2003', N'info@brownindustries.com',  N'+1-202-555-0118');
GO
