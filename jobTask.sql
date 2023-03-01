

--q1--

select employee.FIRST_NAME,employee.LAST_NAME,departments.DEPARTMENT_ID,departments.DEPARTMENT_NAME
from employee inner join departments on (employee.DEPARTMENT_ID=departments.DEPARTMENT_ID);

--q2--

select employee.FIRST_NAME,employee.LAST_NAME,departments.DEPARTMENT_NAME,locations.CITY,locations.STATE_PROVINCE
from employee, departments, locations where (employee.DEPARTMENT_ID=departments.DEPARTMENT_ID) 
and 
(departments.LOCATION_ID=locations.LOCATION_ID);

--q3--

select employee.FIRST_NAME,employee.LAST_NAME,employee.SALARY,job_grades.GRADE_LEVEL
from employee,job_grades;

--q4--

select employee.FIRST_NAME,employee.LAST_NAME,departments.DEPARTMENT_ID,departments.DEPARTMENT_NAME
from employee, departments where (employee.DEPARTMENT_ID=departments.DEPARTMENT_ID)
and departments.DEPARTMENT_ID  in (80,40); 

--q5--

select employee.FIRST_NAME,employee.LAST_NAME,departments.DEPARTMENT_NAME,locations.CITY,locations.STATE_PROVINCE
from employee, departments, locations where (employee.DEPARTMENT_ID=departments.DEPARTMENT_ID) 
and 
(departments.LOCATION_ID=locations.LOCATION_ID)
and
employee.FIRST_NAME like '%z%';

---q6---

select employee.FIRST_NAME,employee.LAST_NAME,departments.DEPARTMENT_ID,departments.DEPARTMENT_NAME
from employee inner join departments on (employee.DEPARTMENT_ID=departments.DEPARTMENT_ID);

--q7--

select FIRST_NAME,SALARY from employee where salary<(select salary from employee where EMPLOYEE_ID=182);

/*
9. From the following tables, write a SQL query to display the department name, city,
and state province for each department.
*/

select departments.DEPARTMENT_NAME,locations.CITY,locations.STATE_PROVINCE 
from departments inner join locations on locations.LOCATION_ID=departments.LOCATION_ID;

/*
12. From the following tables, write a SQL query to find the employees who work in the
same department as the employee with the last name Taylor. Return first name, last
name and department ID.
*/

select FIRST_NAME,LAST_NAME,DEPARTMENT_ID from employee
where DEPARTMENT_ID in (select DEPARTMENT_ID from employee where LAST_NAME='Taylor');

/*
13. From the following table, write a SQL query to calculate the average salary, the
number of employees receiving commissions in that department. Return department
name, average salary and number of employees.
*/

select distinct departments.DEPARTMENT_NAME, ( select avg(salary) from employee) as average_salary, ( select count(EMPLOYEE_ID) from employee) as total_of_employees_receiving_comition

from employee, departments
where employee.DEPARTMENT_ID=departments.DEPARTMENT_ID and
employee.COMMISSION_PTC>0;

/*
14. From the following tables, write a SQL query to find the department name and the
full name (first and last name) of the employee.
*/

select  departments.DEPARTMENT_NAME, employee.FIRST_NAME,employee.LAST_NAME

from employee, departments
where employee.DEPARTMENT_ID=departments.DEPARTMENT_ID;

/*
15. From the following tables, write a SQL query to find the department name, full name
(first and last name) of the employee and their city.
*/

select  departments.DEPARTMENT_NAME, employee.FIRST_NAME,employee.LAST_NAME, locations.CITY
from employee, departments,locations
where employee.DEPARTMENT_ID=departments.DEPARTMENT_ID
and departments.LOCATION_ID=locations.LOCATION_ID;

/*
16. From the following tables, write a SQL query to find full name (first and last name),
and salary of all employees working in any department in the city of London.
*/

select  employee.FIRST_NAME,employee.LAST_NAME, employee.salary
from employee, departments,locations
where employee.DEPARTMENT_ID=departments.DEPARTMENT_ID
and departments.LOCATION_ID=locations.LOCATION_ID
and locations.CITY='London';

/*
17. From the following tables, write a SQL query to find the department name,
department ID, and number of employees in each department.
*/

select  departments.DEPARTMENT_NAME, departments.DEPARTMENT_ID, count(employee.DEPARTMENT_ID) as num_of_employees 
from employee
join departments
on employee.DEPARTMENT_ID=departments.DEPARTMENT_ID
group by employee.DEPARTMENT_ID;

/*
18. From the following tables write a SQL query to find the salesperson and
customer who reside in the same city. Return Salesman, cust_name and city.
*/

select salesman.name, customer.cust_name,customer.city
from orders
join salesman, customer
where orders.salesman_id=salesman.salesman_id and orders.customer_id = customer.customer_id
and salesman.city=customer.city;

/*
19. From the following tables write a SQL query to find those orders where the order
amount exists between 500 and 2000. Return ord_no, purch_amt, cust_name, city.
*/

select orders.ord_no,orders.purch_amt, customer.cust_name, customer.city
from orders
join customer
on orders.customer_id = customer.customer_id and purch_amt between 500 and 2000;

/*
20. From the following tables write a SQL query to find the salesperson(s) and the
customer(s) he represents. Return Customer Name, city, Salesman, commission.
*/

select customer.cust_name,customer.city,salesman.name, salesman.commission
from orders
join salesman, customer
where orders.salesman_id=salesman.salesman_id and orders.customer_id = customer.customer_id;

/*
21. From the following tables write a SQL query to find salespeople who received
commissions of more than 12 percent from the company. Return Customer Name,
customer city, Salesman, commission.
*/

select customer.cust_name,customer.city,salesman.name, salesman.commission
from orders
join salesman, customer
where orders.salesman_id=salesman.salesman_id and orders.customer_id = customer.customer_id
and salesman.commission>0.12;

/*
22. From the following tables write a SQL query to locate those salespeople who do
not live in the same city where their customers live and have received a commission
of more than 12% from the company. Return Customer Name, customer city,
Salesman, salesman city, commission.
*/

select customer.cust_name,customer.city,salesman.name, salesman.commission
from orders
join salesman, customer
where orders.salesman_id=salesman.salesman_id and orders.customer_id = customer.customer_id
and salesman.city!=customer.city and salesman.commission>0.12;

/*23. From the following tables write a SQL query to find the details of an order.
Return ord_no, ord_date, purch_amt, Customer Name, grade, Salesman,
commission.*/

select orders.ord_no, orders.ord_date ,orders.purch_amt, customer.cust_name, customer.grade, salesman.name
from orders
join customer, salesman
where orders.customer_id = customer.customer_id and orders.salesman_id=salesman.salesman_id;

/*
24. Write a SQL statement to join the tables salesman, customer and orders so that
the same column of each table appears once and only the relational rows are
returned.
*/

select orders.ord_no, orders.ord_date ,orders.purch_amt, 
customer.customer_id,  customer.cust_name, customer.city ,customer.grade, 
salesman.salesman_id ,salesman.name , salesman.city, salesman.commission
from orders
join customer, salesman
where orders.customer_id = customer.customer_id and orders.salesman_id=salesman.salesman_id;

/*
25. From the following tables write a SQL query to display the customer name,
customer city, grade, salesman, salesman city. The results should be sorted by
ascending customer_id.
*/
select customer.cust_name, customer.city ,customer.grade, 
salesman.name , salesman.city
from orders
join customer, salesman
where orders.customer_id = customer.customer_id and orders.salesman_id=salesman.salesman_id
order by customer.customer_id;

/*
26. From the following tables write a SQL query to find those customers with a grade
less than 300. Return cust_name, customer city, grade, Salesman, salesmancity.
The result should be ordered by ascending customer_id.
*/

select customer.cust_name, customer.city ,customer.grade, 
salesman.name , salesman.city
from orders
join customer, salesman
where orders.customer_id = customer.customer_id and orders.salesman_id=salesman.salesman_id
and customer.grade<300
order by customer.customer_id;

/*
27. Write a SQL statement to make a report with customer name, city, order
number, order date, and order amount in ascending order according to the order
date to determine whether any of the existing customers have placed an order or
not.
*/

select customer.cust_name, customer.city ,customer.grade,
orders.ord_no, orders.ord_date ,orders.purch_amt
from orders
join customer
on orders.customer_id = customer.customer_id 
order by orders.purch_amt,orders.ord_date;










