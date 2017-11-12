
CREATE PROCEDURE hr.proc_GetEmpInfo @Rate int
AS
SELECT a1.VacationHours, a1.SickLeaveHours, a1.Gender, a2.StartDate, a3.Name
FROM AdventureWorks2014.HumanResources.Employee a1
INNER JOIN HumanResources.EmployeeDepartmentHistory a2 ON a2.BusinessEntityID = a1.BusinessEntityID
INNER JOIN HumanResources.Department a3 ON a3.DepartmentID = a2.DepartmentID
INNER JOIN HumanResources.EmployeePayHistory a4 ON a4.BusinessEntityID = a1.BusinessEntityID
WHERE Rate = ISNULL(@Rate,Rate)
AND PayFrequency = 2
