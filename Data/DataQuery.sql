USE [SalesProdTS];
GO

SET NOCOUNT ON;
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

