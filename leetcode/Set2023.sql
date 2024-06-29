--(584) Report the names of the customer that are not referred by the customer with id = 2 

SELECT name FROM Customer 
WHERE (referee_id <> 2) OR (ISNULL(referee_id)); 
-- Takeaway: <> doesn't check for NULL 

--(183) Customers who never order. 

SELECT Customers.name AS 'Customers' FROM Customers
WHERE id NOT IN (SELECT customerId FROM Orders);

--(175) Combine two tables. 

SELECT firstName, lastName, city, state
FROM 
(Person LEFT JOIN Address ON Person.personId = Address.personId);

--(181) Employees earning more than their managers. 

SELECT A.name as 'Employee' 
FROM Employee A, Employee B
WHERE (A.salary > B.salary) AND (A.managerId = B.id); 

--(182) Duplicate emails. 

SELECT email AS 'Email' FROM Person
GROUP BY email 
HAVING COUNT(*) > 1; 

--(196) Delete duplicate emails.
DELETE t2
FROM Person t1 JOIN Person t2
ON (t1.id < t2.id) AND (t1.email = t2.email); 

--(176) Second Highest Salary, return NULL if there is no second highest salary. 

SELECT MAX(salary) as 'SecondHighestSalary' 
FROM Employee 
WHERE salary NOT IN (SELECT MAX(salary) FROM Employee);

--(184) Department Highest Salary, Employee and Department are 2 separate tables. 
SELECT Department.name AS 'Department', Employee.name AS 'Employee', Employee.salary AS 'Salary' 
FROM Employee INNER JOIN Department ON Employee.departmentId = Department.id 
WHERE (Department.id, Employee.salary) IN (SELECT Department.id, MAX(Employee.salary) FROM Employee INNER JOIN Department ON Employee.departmentId = Department.id GROUP BY Department.id);

--(586) Customer Placing the Largest Number of Orders, tables => customer_number and order_number

SELECT customer_number FROM Orders 
GROUP BY customer_number 
HAVING COUNT(order_number) = 
(SELECT MAX(num_of_orders) FROM (SELECT COUNT(order_number) as 'num_of_orders' FROM Orders GROUP BY customer_number) as temp);

SELECT customer_number
FROM Orders 
GROUP BY customer_number
ORDER BY COUNT(order_number) DESC
LIMIT 1;
