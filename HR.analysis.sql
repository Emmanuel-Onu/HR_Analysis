-- 1. HR ANALYSIS

--total workforce---
select count(employee_id) as Total_workforce
from employees;

--identifying NULL-- 
---Employees with no manager

select first_name, last_name, manager_id
from employees
where manager_id is NULL;

--how many employees are located in each country/region?

select r.region_name, c.country_name,
count(e.employee_id) as number_of_employees
from employees e 
inner join departments d on
e.department_id = d.department_id
inner join locations l on
d.location_id = l.location_id
inner join countries c on 
l.country_id = c.country_id
inner join regions r on
c.region_id = r.region_id
group by r.region_name, c.country_name
order by number_of_employees DESC



--how many employees are hired in each year?

select extract(year from e.hire_date) as hire_year,
count(e.employee_id) as number_of_hires
from employees e
group by extract(year from e.hire_date)
order by number_of_hires DESC


--how many employees work in each location?

select l.city, count(e.employee_id) AS no_of_employees
from employees e
inner join departments d on e.department_id = d.department_id
inner join locations l on d.location_id = l.location_id
group by l.city
order by no_of_employees DESC;


-- size of each department in terms of number of employees

select d.department_name, count(e.employee_id) AS no_of_employee
from employees e
inner join departments d on e.department_id = d.department_id
group by d.department_name
order by no_of_employee DESC;


-- average salary in each department

select d.department_name, round(avg(e.salary),2) as avg_salary
from employees e
inner join departments d on e.department_id = d.department_id
group by d.department_name
order by avg_salary DESC;

-- which employee earns commission and how it impacts their total compensation

select e.first_name, e.last_name, e.salary, e.commission_pct, 
(e.salary + (e.salary * e.commission_pct)) as total_compensation
from employees e
where e.commission_pct is NOT NULL;

--Average tenure of employees by department

select d.department_name, round(avg(TRUNC(SYSDATE) - TRUNC(e.hire_date))/365,2) as avg_tenure_years
from employees e
inner join departments d on e.department_id = d.department_id
group by d.department_name
order by avg_tenure_years DESC;








