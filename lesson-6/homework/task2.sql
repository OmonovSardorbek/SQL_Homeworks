SELECT e.EmployeeID, e.Name, e.Salary, d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d ON e.DepartmentID = d.DepartmentID;
