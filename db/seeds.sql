INSERT INTO department (name) VALUES
  ('Operations'),
  ('Human Resources'),
  ('Technology'),
  ('Logistics'),
  ('Finance'),
  ('Marketing'),
  ('Customer Service');

INSERT INTO role (title, salary, department_id) VALUES
  ('Operations Manager', 95000, (SELECT id FROM department WHERE name = 'Operations')),
  ('Operations Coordinator', 60000, (SELECT id FROM department WHERE name = 'Operations')),
  ('HR Specialist', 70000, (SELECT id FROM department WHERE name = 'Human Resources')),
  ('HR Manager', 100000, (SELECT id FROM department WHERE name = 'Human Resources')),
  ('Technical Specialist', 85000, (SELECT id FROM department WHERE name = 'Technology')),
  ('Chief Technology Officer', 130000, (SELECT id FROM department WHERE name = 'Technology')),
  ('Logistics Coordinator', 55000, (SELECT id FROM department WHERE name = 'Logistics')),
  ('Logistics Manager', 90000, (SELECT id FROM department WHERE name = 'Logistics')),
  ('Accountant', 85000, (SELECT id FROM department WHERE name = 'Finance')),
  ('Finance Manager', 120000, (SELECT id FROM department WHERE name = 'Finance')),
  ('Marketing Specialist', 75000, (SELECT id FROM department WHERE name = 'Marketing')),
  ('Marketing Director', 110000, (SELECT id FROM department WHERE name = 'Marketing')),
  ('Customer Support Representative', 50000, (SELECT id FROM department WHERE name = 'Customer Service')),
  ('Customer Service Manager', 80000, (SELECT id FROM department WHERE name = 'Customer Service'));

INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES
  ('Alex', 'Ivanenko', (SELECT id FROM role WHERE title = 'Operations Manager'), NULL),
  ('Tatyana', 'Petrenko', (SELECT id FROM role WHERE title = 'HR Manager'), NULL),
  ('Maxim', 'Kovalenko', (SELECT id FROM role WHERE title = 'Chief Technology Officer'), NULL),
  ('Irina', 'Honcharenko', (SELECT id FROM role WHERE title = 'Logistics Manager'), NULL),
  ('Oleg', 'Danyliuk', (SELECT id FROM role WHERE title = 'Finance Manager'), NULL),
  ('Anastasia', 'Shevchenko', (SELECT id FROM role WHERE title = 'Marketing Director'), NULL),
  ('Vladimir', 'Melnyk', (SELECT id FROM role WHERE title = 'Customer Service Manager'), NULL);

INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES
  ('Maria', 'Sydorenko', (SELECT id FROM role WHERE title = 'Operations Coordinator'), (SELECT id FROM employee WHERE first_name = 'Alex' AND last_name = 'Ivanenko')),
  ('Eugene', 'Lysenko', (SELECT id FROM role WHERE title = 'HR Specialist'), (SELECT id FROM employee WHERE first_name = 'Tatyana' AND last_name = 'Petrenko')),
  ('Artem', 'Romanenko', (SELECT id FROM role WHERE title = 'Technical Specialist'), (SELECT id FROM employee WHERE first_name = 'Maxim' AND last_name = 'Kovalenko')),
  ('Alexander', 'Tkachenko', (SELECT id FROM role WHERE title = 'Logistics Coordinator'), (SELECT id FROM employee WHERE first_name = 'Irina' AND last_name = 'Honcharenko')),
  ('Dmitry', 'Zakharchenko', (SELECT id FROM role WHERE title = 'Accountant'), (SELECT id FROM employee WHERE first_name = 'Oleg' AND last_name = 'Danyliuk')),
  ('Katherine', 'Bondarenko', (SELECT id FROM role WHERE title = 'Marketing Specialist'), (SELECT id FROM employee WHERE first_name = 'Anastasia' AND last_name = 'Shevchenko')),
  ('Julia', 'Moroz', (SELECT id FROM role WHERE title = 'Customer Support Representative'), (SELECT id FROM employee WHERE first_name = 'Vladimir' AND last_name = 'Melnyk'));
