
---Self Referential Queries

SELECT * FROM Employees


---Problem 51: Get all employees that have manager along with Manager's name.

SELECT Employees.Name,Employees.ManagerID,Employees.Salary,Managers.Name AS Managername
FROM Employees
JOIN Employees AS Managers 
ON Employees.ManagerID = Managers.EmployeeID

---Problem 52: Get all employees that have manager or does not have manager along with Manager's name, incase no manager name show null


SELECT Employees.Name,Employees.ManagerID,Employees.Salary,Managers.Name AS Managername
FROM Employees
LEFT JOIN Employees AS Managers
ON Employees.ManagerID = Managers.EmployeeID


--- Problem 53: Get all employees that have manager or does not have manager along with Manager's name, incase no manager name the same employee name as manager to himself

SELECT Employees.Name,Employees.ManagerID,Employees.Salary,

     CASE 
         WHEN Managers.Name IS NULL THEN Employees.Name
         ELSE Managers.Name
     END AS ManagerName
FROM Employees 
LEFT JOIN Employees AS Managers
ON Employees.ManagerID = Managers.EmployeeID


---Problem 54: Get All Employees managed by 'Mohammed'

SELECT Employees.Name,Employees.ManagerID,Employees.Salary,Managers.Name AS ManagerName 
FROM Employees 
LEFT JOIN Employees AS Managers
      ON Employees.ManagerID = Managers.EmployeeID
WHERE Managers.Name = 'Mohammed'