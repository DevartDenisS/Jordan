SET NOCOUNT ON;

-------------------------------------------------------------------------------
-- INSERT INTO PERSON
-------------------------------------------------------------------------------
INSERT INTO dbo.PERSON (FIRSTNAME, LASTNAME, TITLE)
VALUES
    (N'John',   N'Smith',   N'Mr'),
    (N'Emily',  N'Johnson', N'Ms'),
    (N'Robert', N'Brown',   N'Mr');

-------------------------------------------------------------------------------
-- INSERT INTO CUSTOMER
-------------------------------------------------------------------------------
INSERT INTO dbo.CUSTOMER (PERSONID, ACCOUNTNUMBER, EMAIL)
VALUES
    (1, N'CUST-0001', N'john.smith@customer.example.com'),
    (2, N'CUST-0002', N'emily.johnson@customer.example.com'),
    (3, N'CUST-0003', N'robert.brown@customer.example.com');

-------------------------------------------------------------------------------
-- INSERT INTO VENDOR
-------------------------------------------------------------------------------
INSERT INTO dbo.VENDOR (PERSONID, ACCOUNTNUMBER, EMAIL, PHONE)
VALUES
    (1, N'VEND-1001', N'john.smith@vendor.example.com',  N'+1-555-1001'),
    (2, N'VEND-1002', N'emily.johnson@vendor.example.com',N'+1-555-1002'),
    (3, N'VEND-1003', N'robert.brown@vendor.example.com', N'+1-555-1003');
