SELECT e.EmployeeID, e.Name, e.Salary, d.DepartmentName, p.ProjectName
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID  
RIGHT JOIN Projects p ON e.EmployeeID = p.EmployeeID;   
