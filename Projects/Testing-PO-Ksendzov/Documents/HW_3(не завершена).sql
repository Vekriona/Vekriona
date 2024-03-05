select * from employees;
select * from salary;
select * from employee_salary;
select * from roles_employee;
select * from roles;

--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employees.employee_name, salary.monthly_salary 
from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id;

 --2. Вывести всех работников у которых ЗП меньше 2000.
select employees.employee_name, salary.monthly_salary 
from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2000;

 --3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)


 --4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)


 --5. Найти всех работников кому не начислена ЗП.

 --6. Вывести всех работников с названиями их должности.
select employees.employee_name, roles.role_name
from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id;

 --7. Вывести имена и должность только Java разработчиков.
select employees.employee_name, roles.role_name
from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Java%';

 --8. Вывести имена и должность только Python разработчиков.
select employees.employee_name, roles.role_name
from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Python%';

 --9. Вывести имена и должность всех QA инженеров.
select employees.employee_name, roles.role_name
from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%QA%';

 --10. Вывести имена и должность ручных QA инженеров.
select employees.employee_name, roles.role_name
from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Manual QA%';

 --11. Вывести имена и должность автоматизаторов QA
select employees.employee_name, roles.role_name
from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Automation QA%';

 --12. Вывести имена и зарплаты Junior специалистов
select employees.employee_name, salary.monthly_salary, roles.role_name
from employees
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Junior%';

 --13. Вывести имена и зарплаты Middle специалистов
select employees.employee_name, salary.monthly_salary, roles.role_name
from employees 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
left join roles_salary on roles.id = roles_salary.id_role 
left join salary on roles_salary.id_salary = salary.id 
where role_name like '%Middle%';

 --14. Вывести имена и зарплаты Senior специалистов
select e.employee_name , s.monthly_salary, r.role_name 
from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id =s.id 
join roles_salary rs on s.id = rs.id_salary
right join roles r on rs.id_role = r.id
where r.role_name like '%Senior%';

 --15. Вывести зарплаты Java разработчиков
select e.employee_name , s.monthly_salary, r.role_name 
from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id =s.id 
join roles_salary rs on s.id = rs.id_salary
right join roles r on rs.id_role = r.id
where r.role_name like '%Java %';

 --16. Вывести зарплаты Python разработчиков
select e.employee_name , s.monthly_salary, r.role_name 
from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id =s.id 
join roles_salary rs on s.id = rs.id_salary
right join roles r on rs.id_role = r.id
where r.role_name like '%Python%';

 --17. Вывести имена и зарплаты Junior Python разработчиков


 --18. Вывести имена и зарплаты Middle JS разработчиков
 --19. Вывести имена и зарплаты Senior Java разработчиков
 --20. Вывести зарплаты Junior QA инженеров
 --21. Вывести среднюю зарплату всех Junior специалистов
 --22. Вывести сумму зарплат JS разработчиков
 --23. Вывести минимальную ЗП QA инженеров
 --24. Вывести максимальную ЗП QA инженеров
 --25. Вывести количество QA инженеров
 --26. Вывести количество Middle специалистов.
 --27. Вывести количество разработчиков
 --28. Вывести фонд (сумму) зарплаты разработчиков.
 --29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 --30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 --31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 --32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
