CREATE PROCEDURE [TestDataClass].[test TestProduct]
AS
BEGIN
  -- Here must be your logic
  -- We just return OK for simplification purposes
  EXEC tSQLt.AssertEquals @Expected = 1, @Actual = 0
END;
GO