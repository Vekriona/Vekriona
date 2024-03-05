select * from employees;
select * from salary;
select * from employee_salary;
select * from roles_employee;
select * from roles;

--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employees.employee_name, salary.monthly_salary 
from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id;

 --2. ������� ���� ���������� � ������� �� ������ 2000.
select employees.employee_name, salary.monthly_salary 
from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2000;

 --3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)


 --4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)


 --5. ����� ���� ���������� ���� �� ��������� ��.

 --6. ������� ���� ���������� � ���������� �� ���������.
select employees.employee_name, roles.role_name
from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id;

 --7. ������� ����� � ��������� ������ Java �������������.
select employees.employee_name, roles.role_name
from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Java%';

 --8. ������� ����� � ��������� ������ Python �������������.
select employees.employee_name, roles.role_name
from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Python%';

 --9. ������� ����� � ��������� ���� QA ���������.
select employees.employee_name, roles.role_name
from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%QA%';

 --10. ������� ����� � ��������� ������ QA ���������.
select employees.employee_name, roles.role_name
from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Manual QA%';

 --11. ������� ����� � ��������� ��������������� QA
select employees.employee_name, roles.role_name
from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Automation QA%';

 --12. ������� ����� � �������� Junior ������������
select employees.employee_name, salary.monthly_salary, roles.role_name
from employees
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Junior%';

 --13. ������� ����� � �������� Middle ������������
select employees.employee_name, salary.monthly_salary, roles.role_name
from employees 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
left join roles_salary on roles.id = roles_salary.id_role 
left join salary on roles_salary.id_salary = salary.id 
where role_name like '%Middle%';

 --14. ������� ����� � �������� Senior ������������
select e.employee_name , s.monthly_salary, r.role_name 
from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id =s.id 
join roles_salary rs on s.id = rs.id_salary
right join roles r on rs.id_role = r.id
where r.role_name like '%Senior%';

 --15. ������� �������� Java �������������
select e.employee_name , s.monthly_salary, r.role_name 
from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id =s.id 
join roles_salary rs on s.id = rs.id_salary
right join roles r on rs.id_role = r.id
where r.role_name like '%Java %';

 --16. ������� �������� Python �������������
select e.employee_name , s.monthly_salary, r.role_name 
from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id =s.id 
join roles_salary rs on s.id = rs.id_salary
right join roles r on rs.id_role = r.id
where r.role_name like '%Python%';

 --17. ������� ����� � �������� Junior Python �������������


 --18. ������� ����� � �������� Middle JS �������������
 --19. ������� ����� � �������� Senior Java �������������
 --20. ������� �������� Junior QA ���������
 --21. ������� ������� �������� ���� Junior ������������
 --22. ������� ����� ������� JS �������������
 --23. ������� ����������� �� QA ���������
 --24. ������� ������������ �� QA ���������
 --25. ������� ���������� QA ���������
 --26. ������� ���������� Middle ������������.
 --27. ������� ���������� �������������
 --28. ������� ���� (�����) �������� �������������.
 --29. ������� �����, ��������� � �� ���� ������������ �� �����������
 --30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
 --31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
 --32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
