/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 SELECT * FROM Products as p
 Inner JOIN Categories as c
 ON p.CategoryID = c.CategoryID
 where c.name like '%computers%';
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 SELECT p.name AS "Product Name", p.Price AS "Product Price" , r.rating as "Product rating"
 From Products as p
 LEFT JOIN Reviews as r
 ON p.ProductID = r.ProductID
 WHERE r.Rating = 5;
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT Sum(s.Quantity) as Total_of_Most_Sold, e.FirstName, e.LastName 
FROM Employees as e
Inner Join Sales as s
On e.EmployeeID = s.EmployeeID
Group BY e.EmployeeID
Order BY Total_of_Most_Sold DESC;


/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT d.name as "Department", c.name as "Category" FROM Categories as c
Inner Join Departments as d
ON d.DepartmentID = c.DepartmentID
Where c.name in ("Appliances", "Games");
/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 SELECT p.Name as Product_Name, Sum(s.Quantity) as Total_NUmber_Sold, Sum(s.Quantity) * p.Price as Total_price_sold
 FROM Products as p
 INNER JOIN Sales as s
 ON p.ProductID = s.ProductID
 Where p.Name Like "%Hotel California%";

Select *  from sales;
/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT p.Name as Product_Name, r.Reviewer, r.Rating as Lowest_Rating, r.Comment as Reviewer_Comment
FROM Products as p
INNER JOIN Reviews as r
ON p.ProductID = r.ProductID
WHERE p.name like "%Visio TV%" And r.rating = 1;

/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */
SELECT e.EmployeeID, e.FirstName, e.LastName, p.Name as Product_Name, s.Quantity as Amount_Sold_By_Employee From Employees as e
Inner Join Sales as s
On e.EmployeeID = s.EmployeeID
Inner Join Products as p
On s.ProductID = p.ProductID;













