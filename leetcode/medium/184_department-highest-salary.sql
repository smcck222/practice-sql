-- Problem: https://leetcode.com/problems/department-highest-salary/description/
-- Difficulty: Medium
-- Date: 2025-03-04

SELECT Department.name AS 'Department', Employee.name AS 'Employee', Employee.salary AS 'Salary' 
FROM Employee INNER JOIN Department ON Employee.departmentId = Department.id 
WHERE (Department.id, Employee.salary) IN (SELECT Department.id, MAX(Employee.salary) FROM Employee INNER JOIN Department ON Employee.departmentId = Department.id GROUP BY Department.id);