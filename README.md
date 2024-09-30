# HR_Analysis

### Project Goals
The goal of this analysis is to make informed decision in the workforce management by uuncovering
1. The total workforce
2. Employees Georgraphical lacations
3. Number of employees hired each year
4. Size of each department
5. Average salary in each department
6. How commission impacts the total compenstion of each employee and
7. Average tenure of employees by department.


### Total workforce
This query is counting the employee_id column in the employees table and naming the result as Total_workforce to determine the number of employees.
![Total Workforce](https://github.com/Emmanuel-Onu/HR_Analysis/blob/main/total%20workforce.jpg)
<br><br><br><br><br>

### Employees geographical locations
This query is selecting the city column in the locations table, counting employee_id column in the employees table, joining the departments and location tables to the employess table, and naming the result as no_of_employees to display the number of employees working in each location.
![Number of employees working in each location](https://github.com/Emmanuel-Onu/HR_Analysis/blob/main/no%20of%20emp%20working%20in%20each%20location.jpg)
<br><br><br><br><br>


Still on the employees geagraphical locations, the query is selecting region_name column in the regions table, country_name column in the countries table, counting employee_id column in the employees table, joining the departments, locations, countries, and regions tables, and naming the result as number_of_employees to determine the number of enployees per country/region.
![NUmber of emploiyees per country/region](https://github.com/Emmanuel-Onu/HR_Analysis/blob/main/no%20of%20emp%20per%20contry%20and%20region.jpg)
<br><br><br><br><br>


### Number of employess hired in each year

The query is exctracting "year" from the hire_date column in the employees table, counting the employee_id column in the employees table to determine the number of employees hired in each year.
![Number of employess hired each year](https://github.com/Emmanuel-Onu/HR_Analysis/blob/main/no%20of%20emp%20per%20year.jpg)


