---Q7---
SELECT EMPLOYEE.FIRST_NAME , EMPLOYEE.LAST_NAME , EMPLOYEE.SALARY 
FROM EMPLOYEE 
WHERE (EMPLOYEE_ID) < 182 ;
---Q8---
SELECT FIRST_NAME , MANAGER_ID
FROM EMPLOYEE 
---Q9---
SELECT departments.DEPARTMENT_NAME , LOCATIONS.CITY , LOCATIONS.STATE_PROVINCE
FROM departments 
CROSS JOIN LOCATIONS  ;
---Q11---
-- we used the employee e1 and e2 to make two difreent tables from one table 
select e1.FIRST_NAME as manager , e2.FIRST_NAME
from Employee e1 , Employee e2
where (e1.EMPLOYEE_ID = e2.MANAGER_ID)
---Q12---
SELECT EMPLOYEE.FIRST_NAME , EMPLOYEE.LAST_NAME , departments.DEPARTMENT_ID
FROM EMPLOYEE INNER JOIN departments
ON (employee.department_id = departments.department_id)
WHERE EMPLOYEE.LAST_NAME = 'Taylor';
---Q13---
SELECT departments.DEPARTMENT_NAME , (SELECT AVG(SALARY) FROM Employee ) AS AVG_SALARY , (SELECT COUNT(EMPLOYEE_ID) FROM EMPLOYEE) AS EMPLOYEE_NUMBER
FROM Employee , departments
WHERE EMPLOYEE.DEPARTMENT_ID=departments.DEPARTMENT_ID AND
COMMISSION_PTC >= 0 ;
---Q14---
SELECT departments.DEPARTMENT_NAME , EMPLOYEE.FIRST_NAME , EMPLOYEE.LAST_NAME 
FROM departments , EMPLOYEE 
---Q15---
SELECT departments.DEPARTMENT_NAME , EMPLOYEE.FIRST_NAME , EMPLOYEE.LAST_NAME , Locations.CITY
FROM 
EMPLOYEE  JOIN departments
ON (employee.department_id = departments.department_id)
JOIN LOCATIONS 
ON (LOCATIONS.LOCATION_ID = departments.LOCATION_ID)
---Q16---
SELECT EMPLOYEE.FIRST_NAME ,  EMPLOYEE.LAST_NAME , EMPLOYEE.SALARY , LOCATIONS.CITY ,
departments.DEPARTMENT_NAME
FROM EMPLOYEE JOIN departments 
ON (employee.department_id = departments.department_id)
JOIN LOCATIONS
ON (LOCATIONS.LOCATION_ID = departments.LOCATION_ID)
WHERE CITY = 'London';