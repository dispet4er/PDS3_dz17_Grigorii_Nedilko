USE pds;
SELECT FIRST_NAME, LAST_NAME, JOB_ID, employees.DEPARTMENT_ID
FROM employees RIGHT JOIN departments ON employees.DEPARTMENT_ID = departments.DEPARTMENT_ID RIGHT JOIN locations ON departments.LOCATION_ID = locations.LOCATION_ID
WHERE CITY = "London"