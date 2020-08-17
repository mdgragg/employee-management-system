INSERT INTO department (department) VALUES 
("Management"),
("Sales"),
("Accounting"),
("Warehouse");

INSERT INTO role (title, salary, department_id) VALUES 
("Regional Manager", 100000, 1),
("Assistant Manager", 75000, 2),
("Assistant to the Manager", 75000, 2),
("Sales Representative", 60000, 2),
("Senior Accountant", 80000, 3),
("Accountant", 70000, 3),
("Warehouse Foreman", 80000, 4);

INSERT INTO employee (first_name, last_name, manager_id, role_id) VALUES 
("Michael", "Scott", null, 1), 
("Jim", "Halpert", 1, 2),
("Dwight","Schrute",2,3),
("Andy", "Bernard", 2, 4),
("Angela", "Martin", 1, 5),
("Oscar", "Martinez", 5, 6),
("Kevin", "Malone", 5, 6),
("Darryl", "Philbin", null, 7);


SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM employee;