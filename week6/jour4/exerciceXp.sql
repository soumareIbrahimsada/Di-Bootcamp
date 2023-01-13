select DISTINCT(department_id) FROM employees;

select first_name,last_name,salary,(0.15*salary) as PF FROM employees;

select SUM(salary) FROM employees;

select MIN(salary),MAX(salary) FROM employees;

select AVG(salary) FROM employees;

SELECT AVG(salary),COUNT(*) AS "Avg Salary" FROM employees;

SELECT COUNT(*) FROM employees;

select UPPER(first_name) as "First Name",last_name as "Last Name" from employees;

select SUBSTRING(first_name,1,3),last_name from employees;

SELECT concat(first_name,' ',last_name) as  "full name" FROM employees;

select concat(first_name,' ',last_name) as full_name,length(concat(first_name,' ',last_name)) as length_fullName from employees;

SELECT * FROM employees LIMIT 10;
--1. Écrivez une requête pour afficher le first_name, le last_name et le salaire de tous les employés dont le
--salaire se situe entre 10 000 $ et 15 000 $.
SELECT first_name,last_name,salary FROM employees WHERE salary<10000 and salary>15000;
--2. Écrivez une requête pour afficher le first_name, le last_name et la date d’embauche de tous les employés
--embauchés en 1987
SELECT first_name,last_name,hire_date FROM employees WHERE TO_CHAR(hire_date,'yyy') LIKE '%87'; 
--3. Écrivez une requête pour obtenir tous les employés dont le first_name a à la fois les lettres « c » et « e ».
SELECT first_name,last_name FROM employees WHERE first_name LIKE '%c%' and first_name LIKE '%e%' ; 
--Écrivez une requête pour afficher le last_name, le travail et le salaire de tous les employés qui ne travaillent
--pas comme programmeurs ou commis à l’expédition, et qui ne reçoivent pas un salaire égal à 4 500 $, 10
--000 $ ou 15 000 $
select emp.last_name,job.job_title,emp.salary from employees AS emp join jobs as job on emp.job_id=job.job_id
where (job.job_title!='Programmer' or job.job_title!='Shipping Clerk')
and
(emp.salary!=4500 or emp.salary!=10000 or emp.salary!=15000);
--5. Écrivez une requête pour afficher les noms de famille de tous les employés dont le nom de famille contient
--exactement six caractères.
SELECT last_name FROM employees WHERE length(last_name)=6;
--6. Écrivez une requête pour afficher le nom de famille de tous les employés qui ont la lettre « e » comme
--troisième caractère dans le nom
select last_name from employees where last_name like '__e%';
--7. Écrivez une requête pour afficher le titre des emplois apparaissant dans la table employees.
select e.job_id,j.job_title
from employees e,jobs j
where j.job_id=e.job_id;
--8. Écrivez une requête pour sélectionner toutes les informations des employés dont le nom de famille est «
--JONES » ou « BLAKE » ou « SCOTT » ou « KING » ou « FORD ».

SELECT * 
FROM employees 
WHERE last_name IN ('Jones','BLAKE', 'SCOTT', 'KING', 'FORD');

