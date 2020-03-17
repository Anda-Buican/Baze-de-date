-- Buican Laura Andreea
--Grupa 211
--tema 2 baze de date     

--ex 1
SELECT  first_name || ' ' || last_name || ' castiga ' || salary || ' lunar dar doreste ' || salary*3 AS "Salaraiu ideal"
FROM employees;


--ex 2
SELECT INITCAP(first_name) AS "PRENUME",UPPER(last_name) AS "NUME", LENGTH(last_name) AS "LUNGIME NUME"
FROM employees
WHERE last_name LIKE('J%') OR last_name LIKE('M%') OR last_name LIKE('___M');


--ex 3
SELECT employee_id, last_name, department_id
FROM employees
WHERE TRIM(UPPER(first_name))= 'STEVEN';

--ex 4
SELECT employee_id AS "cod", first_name "nume", LENGTH(last_name) "lungimea numelui", INSTR(last_name,'a') "prima aparitie a lui a"
FROM employees
WHERE first_name LIKE('%e');

--ex 5
SELECT first_name, last_name, hire_date
FROM employees
WHERE MOD(FLOOR(SYSDATE-hire_date),7)=0;


--ex 6
SELECT employee_id, last_name, salary,ROUND(salary*1.15, 2) AS "Salariu nou",ROUND(salary*1.15/100,2) AS "Numar sute"
FROM employees
WHERE MOD(salary, 1000)!= 0;


--ex 7
SELECT last_name AS "Nume angajat", RPAD(hire_date,10) AS "Data angajarii"
FROM employees
WHERE commission_pct IS NOT NULL;

--ex8
SELECT TO_CHAR(SYSDATE+30,'DD/MM/YYYY HH24:mi:SS')
FROM dual;


--ex 9
SELECT FLOOR(TO_DATE('31-DEC-2020')-SYSDATE) AS "Zile pana la sfarsitul anului"
FROM dual;

--ex 10 a)
SELECT to_char(SYSDATE+0.5, 'DD/MM/YYYY HH24:mi:SS')
from dual;

--ex 10 b)
SELECT to_char(SYSDATE+(1/(60*24))*5, 'DD/MM/YYYY HH24:mi:SS')
from dual;


--ex 11
SELECT last_name|| ' ' || first_name AS "nume si prenume", hire_date,NEXT_DAY(ADD_MONTHS(hire_date,6),'MONDAY') "Negociere"
from employees;


--ex 12
SELECT last_name, ROUND(MONTHS_BETWEEN(SYSDATE, hire_date),0) "Luni lucrate"
FROM employees
ORDER BY 2 ;


--ex 13
SELECT last_name, hire_date, TO_CHAR(hire_date,'DAY') AS "ZI"
FROM employees
ORDER BY TO_CHAR(hire_date,'D');



--ex 14
SELECT last_name, DECODE(commission_pct,NULL,'Fara comision',commission_pct) "Comision"
FROM employees;

--ex 15
SELECT last_name,salary, commission_pct
FROM employees
WHERE salary> 10000;


--ex 16

SELECT last_name, job_id, salary, DECODE(job_id,'IT_PROG',salary*1.20,'SA_REP',salary*1.25, 'SA_MAN',salary*1.35,salary) "Salariu renegociat"
FROM employees;
