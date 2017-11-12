
CREATE PROCEDURE hr.proc_GetEmpPay @Rate int
AS
SELECT count(*)
FROM AdventureWorks2014.HumanResources.EmployeePayHistory
WHERE Rate = ISNULL(@Rate,Rate)
AND PayFrequency = 2