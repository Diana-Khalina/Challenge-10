INSERT INTO department (name) 
VALUES 
('Store Operations'), 
('Merchandising'), 
('Supply Chain & Logistics'), 
('Finance & Accounting'), 
('Human Resources'), 
('Marketing'), 
('Technology'), 
('Customer Service');

INSERT INTO role (title, salary, department_id)
VALUES 
('Store Manager', 100000, 1),
('Assistant Store Manager', 60000, 1),
('Cashier', 35000, 1),
('Sales Associate', 40000, 2),
('Visual Merchandiser', 50000, 2),
('Logistics Coordinator', 55000, 3),
('Warehouse Supervisor', 60000, 3),
('Finance Analyst', 75000, 4),
('HR Coordinator', 50000, 5),
('Recruiter', 60000, 5),
('Marketing Specialist', 65000, 6),
('Social Media Manager', 70000, 6),
('Software Engineer', 90000, 7),
('IT Support Specialist', 65000, 7),
('Customer Service Representat', 40000, 8);

INSERT INTO employee (first_name, last_name, role_id, manager_id) 
VALUES 
('Andriy', 'Shevchenko', 1, NULL), 
('Olena', 'Zelenska', 2, 1),  
('Dmytro', 'Koval', 3, 2), 
('Natalia', 'Bondarenko', 4, NULL), 
('Ihor', 'Melnyk', 5, 4),  
('Kateryna', 'Tkachenko', 6, NULL),  
('Volodymyr', 'Lysenko', 7, 6),  
('Svitlana', 'Hrytsenko', 8, NULL),  
('Yaroslav', 'Pavlenko', 9, NULL),  
('Oksana', 'Romanenko', 10, 9),  
('Bohdan', 'Soroka', 11, NULL),  
('Larysa', 'Fedorenko', 12, 11),  
('Oleksandr', 'Mazur', 13, NULL),  
('Sofia', 'Rudenko', 14, 13),  
('Petro', 'Chornyi', 15, NULL); 
