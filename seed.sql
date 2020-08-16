INSERT INTO department (department) VALUE ("Management");
INSERT INTO department (department) VALUE ("Sales");
INSERT INTO department (department) VALUE ("Accounting");
INSERT INTO department (department) VALUE ("Warehouse");

INSERT INTO role (title, salary, department_id) VALUE ("Regional Manager", 100000, 1);
INSERT INTO role (title, salary, department_id) VALUE ("Assistant Manager", 75000, 2);
INSERT INTO role (title, salary, department_id) VALUE ("Assistant to the Manager", 75000, 2);
INSERT INTO role (title, salary, department_id) VALUE ("Sales Representative", 60000, 2);
INSERT INTO role (title, salary, department_id) VALUE ("Senior Accountant", 80000, 3);
INSERT INTO role (title, salary, department_id) VALUE ("Accountant", 70000, 3);
INSERT INTO role (title, salary, department_id) VALUE ("Warehouse Foreman", 80000, 4);

INSERT INTO employee (first_name, last_name, manager_id, role_id) VALUE ("Michael", "Scott", null, 1);
INSERT INTO employee (first_name, last_name, manager_id, role_id) VALUE ("Jim", "Halpert", 1, 2);
INSERT INTO employee (first_name, last_name, manager_id, role_id) VALUE ("Dwight","Schrute",2,3);
INSERT INTO employee (first_name, last_name, manager_id, role_id) VALUE ("Andy", "Bernard", 2, 4);
INSERT INTO employee (first_name, last_name, manager_id, role_id) VALUE ("Angela", "Martin", 1, 5);
INSERT INTO employee (first_name, last_name, manager_id, role_id) VALUE ("Oscar", "Martinez", 5, 6);
INSERT INTO employee (first_name, last_name, manager_id, role_id) VALUE ("Kevin", "Malone", 5, 7);
INSERT INTO employee (first_name, last_name, manager_id, role_id) VALUE ("Darryl", "Philbin", null, 8);

SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM employee;