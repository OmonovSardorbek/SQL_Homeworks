SELECT e.EmployeeID, e.Name, e.Salary, d.DepartmentName
FROM Employees e
FULL OUTER JOIN Departments d ON e.DepartmentID = d.DepartmentID;
