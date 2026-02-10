USE [SalesProdTS];
GO

SET NOCOUNT ON;
GO

/* =========================================================
   DROP FOREIGN KEYS
   ========================================================= */

IF EXISTS (
    SELECT 1
    FROM sys.foreign_keys
    WHERE name = 'FK_Customer_Person'
)
BEGIN
    ALTER TABLE [dbo].[Customer]
        DROP CONSTRAINT [FK_Customer_Person];
END
GO

IF EXISTS (
    SELECT 1
    FROM sys.foreign_keys
    WHERE name = 'FK_Vendor_Person'
)
BEGIN
    ALTER TABLE [dbo].[Vendor]
        DROP CONSTRAINT [FK_Vendor_Person];
END
GO

/* =========================================================
   DROP TABLES (DEPENDENCY ORDER)
   ========================================================= */

IF OBJECT_ID('[dbo].[Customer]', 'U') IS NOT NULL
BEGIN
    DROP TABLE [dbo].[Customer];
END
GO

IF OBJECT_ID('[dbo].[Vendor]', 'U') IS NOT NULL
BEGIN
    DROP TABLE [dbo].[Vendor];
END
GO

IF OBJECT_ID('[dbo].[Person]', 'U') IS NOT NULL
BEGIN
    DROP TABLE [dbo].[Person];
END
GO

PRINT 'Tables Customer, Vendor, Person were dropped successfully.';
GO
