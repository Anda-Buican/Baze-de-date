--ex 17
SELECT last_name, department_id, department_name
FROM employees
JOIN departments USING(department_id);

SELECT e.last_name, d.department_id, d.department_name
FROM employees e
JOIN departments d ON(e.department_id=d.department_id);

-- ex 18
SELECT DISTINCT job_title
FROM employees e 
JOIN jobs j ON (e.department_id= 30 AND e.job_id = j.job_id);


SELECT DISTINCT job_title
FROM employees e 
JOIN jobs j ON ( e.job_id = j.job_id)
WHERE e.department_id = 30;

-- ex 19
SELECT DISTINCT e.last_name, d.department_name, l.city
FROM employees e
JOIN departments d ON (e.department_id = d.department_id)
JOIN locations l ON ( d.location_id = l.location_id)
WHERE e.commission_pct IS NOT NULL;

--ex 20
SELECT e.last_name, d.department_name 
FROM employees e
JOIN departments d ON (e.department_id = d.department_id)
WHERE UPPER (e.last_name) LIKE '%A%';

--ex 21 NU MERGE CEVAAAAA!!!!!!!
SELECT e.last_name, e.job_id, e.department_id, d.department_name, l.city
FROM employees e
JOIN departments d ON (e.department_id= d.department_id)
JOIN locations l ON (d.location_id = l.location_id AND UPPER(l.city) LIKE ('OXFORD') );


--ex 22
SELECT e.employee_id Ang#, e.last_name Angajat, mng.employee_id Mrg#, mng.last_name Manager 
FROM employees e
JOIN employees mng ON(e.manager_id= mng.employee_id);

--ex 23
SELECT e.employee_id Ang#, e.last_name Angajat, mng.employee_id Mrg#, mng.last_name Manager 
FROM employees e
LEFT JOIN employees mng ON(e.manager_id= mng.employee_id);


--ex 24
SELECT e.last_name Angajatul, e.department_id Codul, sal.last_name Salariatii
FROM employees e
JOIN employees sal ON(e.department_id= sal.department_id AND e.employee_id<sal.employee_id);


--ex 25
DESCRIBE jobs;
SELECT e.last_name, e.job_id,j.job_title,d.department_name,e.salary
FROM employees e
JOIN jobs j ON(e.job_id= j.job_id)
JOIN departments d ON(e.department_id = d.department_id);


--ex 26
SELECT e.last_name, e.hire_date
FROM employees e
JOIN employees gates ON(e.hire_date>gates.hire_date AND gates.last_name LIKE('Gates') );

--ex 27
SELECT e.last_name Angajat, e.hire_date Data_ang, mng.last_name Manag, mng.hire_date Data_mng
FROM employees e
JOIN employees mng ON(mng.employee_id = e.manager_id AND e.hire_date<mng.hire_date);














