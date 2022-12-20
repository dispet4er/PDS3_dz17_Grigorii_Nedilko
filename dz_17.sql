    //17_1
USE pds;
SELECT count(distinct JOB_ID) FROM employees

    //17_2
USE pds;
SELECT avg(SALARY), count(EMPLOYEE_ID)
FROM employees
WHERE DEPARTMENT_ID = 90

    //17_3
USE pds;
SELECT JOB_ID, count(EMPLOYEE_ID)
FROM employees
GROUP BY JOB_ID

    //17_4
USE pds;
SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_ID
FROM employees

    //17_5
USE pds;
SELECT FIRST_NAME, LAST_NAME, JOB_ID, employees.DEPARTMENT_ID
FROM employees RIGHT JOIN departments ON employees.DEPARTMENT_ID = departments.DEPARTMENT_ID RIGHT JOIN locations ON departments.LOCATION_ID = locations.LOCATION_ID
WHERE CITY = "London"