select * from employees;
select * from salary;
select * from employee_salary;
select * from roles_employee;
select * from roles;

--1. Âûâåñòè âñåõ ðàáîòíèêîâ ÷üè çàðïëàòû åñòü â áàçå, âìåñòå ñ çàðïëàòàìè.
select employees.employee_name, salary.monthly_salary 
from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id;

 --2. Âûâåñòè âñåõ ðàáîòíèêîâ ó êîòîðûõ ÇÏ ìåíüøå 2000.
select employees.employee_name, salary.monthly_salary 
from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2000;

 --3. Âûâåñòè âñå çàðïëàòíûå ïîçèöèè, íî ðàáîòíèê ïî íèì íå íàçíà÷åí. (ÇÏ åñòü, íî íå ïîíÿòíî êòî å¸ ïîëó÷àåò.)


 --4. Âûâåñòè âñå çàðïëàòíûå ïîçèöèè  ìåíüøå 2000 íî ðàáîòíèê ïî íèì íå íàçíà÷åí. (ÇÏ åñòü, íî íå ïîíÿòíî êòî å¸ ïîëó÷àåò.)


 --5. Íàéòè âñåõ ðàáîòíèêîâ êîìó íå íà÷èñëåíà ÇÏ.

 --6. Âûâåñòè âñåõ ðàáîòíèêîâ ñ íàçâàíèÿìè èõ äîëæíîñòè.
select employees.employee_name, roles.role_name
from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id;

 --7. Âûâåñòè èìåíà è äîëæíîñòü òîëüêî Java ðàçðàáîò÷èêîâ.
select employees.employee_name, roles.role_name
from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Java%';

 --8. Âûâåñòè èìåíà è äîëæíîñòü òîëüêî Python ðàçðàáîò÷èêîâ.
select employees.employee_name, roles.role_name
from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Python%';

 --9. Âûâåñòè èìåíà è äîëæíîñòü âñåõ QA èíæåíåðîâ.
select employees.employee_name, roles.role_name
from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%QA%';

 --10. Âûâåñòè èìåíà è äîëæíîñòü ðó÷íûõ QA èíæåíåðîâ.
select employees.employee_name, roles.role_name
from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Manual QA%';

 --11. Âûâåñòè èìåíà è äîëæíîñòü àâòîìàòèçàòîðîâ QA
select employees.employee_name, roles.role_name
from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Automation QA%';

 --12. Âûâåñòè èìåíà è çàðïëàòû Junior ñïåöèàëèñòîâ
select employees.employee_name, salary.monthly_salary, roles.role_name
from employees
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Junior%';

 --13. Âûâåñòè èìåíà è çàðïëàòû Middle ñïåöèàëèñòîâ
select employees.employee_name, salary.monthly_salary, roles.role_name
from employees 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
left join roles_salary on roles.id = roles_salary.id_role 
left join salary on roles_salary.id_salary = salary.id 
where role_name like '%Middle%';

 --14. Âûâåñòè èìåíà è çàðïëàòû Senior ñïåöèàëèñòîâ
select e.employee_name , s.monthly_salary, r.role_name 
from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id =s.id 
join roles_salary rs on s.id = rs.id_salary
right join roles r on rs.id_role = r.id
where r.role_name like '%Senior%';

 --15. Âûâåñòè çàðïëàòû Java ðàçðàáîò÷èêîâ
select e.employee_name , s.monthly_salary, r.role_name 
from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id =s.id 
join roles_salary rs on s.id = rs.id_salary
right join roles r on rs.id_role = r.id
where r.role_name like '%Java %';

 --16. Âûâåñòè çàðïëàòû Python ðàçðàáîò÷èêîâ
select e.employee_name , s.monthly_salary, r.role_name 
from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id =s.id 
join roles_salary rs on s.id = rs.id_salary
right join roles r on rs.id_role = r.id
where r.role_name like '%Python%';

 --17. Âûâåñòè èìåíà è çàðïëàòû Junior Python ðàçðàáîò÷èêîâ


 --18. Âûâåñòè èìåíà è çàðïëàòû Middle JS ðàçðàáîò÷èêîâ
 --19. Âûâåñòè èìåíà è çàðïëàòû Senior Java ðàçðàáîò÷èêîâ
 --20. Âûâåñòè çàðïëàòû Junior QA èíæåíåðîâ
 --21. Âûâåñòè ñðåäíþþ çàðïëàòó âñåõ Junior ñïåöèàëèñòîâ
 --22. Âûâåñòè ñóììó çàðïëàò JS ðàçðàáîò÷èêîâ
 --23. Âûâåñòè ìèíèìàëüíóþ ÇÏ QA èíæåíåðîâ
 --24. Âûâåñòè ìàêñèìàëüíóþ ÇÏ QA èíæåíåðîâ
 --25. Âûâåñòè êîëè÷åñòâî QA èíæåíåðîâ
 --26. Âûâåñòè êîëè÷åñòâî Middle ñïåöèàëèñòîâ.
 --27. Âûâåñòè êîëè÷åñòâî ðàçðàáîò÷èêîâ
 --28. Âûâåñòè ôîíä (ñóììó) çàðïëàòû ðàçðàáîò÷èêîâ.
 --29. Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ
 --30. Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ îò 1700 äî 2300
 --31. Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ ìåíüøå 2300
 --32. Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ ðàâíà 1100, 1500, 2000
