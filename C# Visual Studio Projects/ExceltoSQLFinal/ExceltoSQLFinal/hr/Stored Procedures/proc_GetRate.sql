
CREATE PROCEDURE hr.proc_GetRate @Rate int, @RateCount int OUTPUT
AS
SELECT @RateCount = count(*)
FROM AdventureWorks2014.HumanResources.EmployeePayHistory
WHERE Rate = ISNULL(@Rate,Rate)
AND PayFrequency = 2