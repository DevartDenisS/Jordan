CREATE SCHEMA [TestDataClass] AUTHORIZATION [dbo]
GO

EXEC sys.sp_addextendedproperty N'tSQLt.TestClass', 1, 'SCHEMA', N'TestDataClass'
GO