-- Создать таблицу employees
create table employees
(
	id serial  primary key,
	employee_name varchar(50) not null
);

-- Наполнить таблицу employee 70 строками.
insert into employees(employee_name)
values ('Аксинья'),
('Алевтина'),
('Александра'),
('Алина'),
('Алиса'),
('Валентина'),
('Валерия'),
('Василина'),
('Василиса'),
('Вероника'),
('Виктория'),
('Виолетта'),
('Дарьяна'),
('Даяна'),
('Диана'),
('Евангелина'),
('Евгения'),
('Екатерина'),
('Елена'),
('Елизавета'),
('Жанна'),
('Жасмин'),
('Земфира'),
('Злата'),
('Илиана'),
('Инна'),
('Иоанна'),
('Калерия'),
('Кира'),
('Клавдия'),
('Клара'),
('Кристина'),
('Ксения'),
('Лариса'),
('Мария'),
('Марьяна'),
('Меланья'),
('Милана'),
('Милла'),
('Милослава'),
('Мирослава'),
('Надежда'),
('Наталья'),
('Нина'),
('Оксана'),
('Олеся'),
('Ольга'),
('Павла'),
('Полина'),
('Руслана'),
('Сабина'),
('Светлана'),
('Снежанна'),
('Соломия'),
('Таисия'),
('Тамара'),
('Татьяна'),
('Эвелина'),
('Арсентий'),
('Артем'),
('Афанасий'),
('Богдан'),
('Борислав'),
('Бронислав'),
('Вадим'),
('Валентин'),
('Дмитpий'),
('Евгений'),
('Евдоким'),
('Егор');

-- Создать таблицу salary

create table salary
(
	id serial  primary key,
	monthly_salary Int not null
);
 
-- Наполнить таблицу salary 15 строками

insert into salary(monthly_salary)
values (1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);

-- Создать таблицу employee_salary
create table employee_salary
(
id serial  primary key,
employee_id Int not null unique,
salary_id Int not null
);

-- Наполнить таблицу employee_salary 40 строками: в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary(employee_id, salary_id)
values (11, 2),
(13, 6),
(15, 13),
(16, 1),
(18, 6),
(2, 4),
(20, 15),
(22, 4),
(23, 4),
(25, 8),
(26, 10),
(27, 3),
(28, 7),
(29, 4),
(3, 7),
(33, 7),
(38, 9),
(4, 4),
(40, 13),
(42, 9),
(47, 5),
(48, 12),
(5, 9),
(52, 10),
(55, 2),
(59, 12),
(6, 15),
(61, 4),
(62, 11),
(71,15),
(72,12),
(73,7),
(74,4),
(75,7),
(76,1),
(77,3),
(78,2),
(79,11),
(80,14)
(43, 1);

-- Создать таблицу roles
create table roles
(
	id serial  primary key,
	role_name int not null unique
);

-- Поменять тип столба role_name с int на varchar 30
ALTER TABLE public.roles ALTER COLUMN role_name TYPE varchar(30);

-- Наполнить таблицу roles 20 строками
insert into roles(role_name)
values ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

-- Создать таблицу roles_employee
create table roles_employee
(
	 id serial  primary key,
	 employee_id int not null unique,
	 role_id int not null,
	 foreign key (employee_id)
	 	references employees(id),
	 foreign key (role_id)
	 	references roles(id)
);

-- Наполнить таблицу roles_employee 40 строками:
insert into roles_employee(employee_id, role_id)
values (7, 2),
(20, 4),
(3, 9),
(5, 13),
(23, 4),
(11, 2),
(10, 9),
(22, 13),
(21, 3),
(34, 4),
(6, 7),
(27, 20),
(30, 15),
(8, 18),
(12, 3),
(37, 13),
(14, 9),
(33, 14),
(1, 5),
(28, 12),
(31, 12),
(9, 8),
(38, 3),
(2, 15),
(39, 1),
(50, 15),
(55, 19),
(41, 2),
(59, 10),
(63, 8),
(4, 14),
(24, 6),
(47, 18),
(56, 16),
(25, 11),
(32, 17),
(40, 6),
(51, 7),
(13, 18),
(45, 20);