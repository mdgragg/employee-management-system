DROP DATABASE IF EXISTS theOffice_db;
CREATE DATABASE theOffice_db;
USE theOffice_db;

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    department VARCHAR(30) NOT NULL
);

CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(10,2),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id)
);

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    manager_id INT,
	FOREIGN KEY (role_id) REFERENCES role(id),
    FOREIGN KEY (manager_id) REFERENCES employee(id),
    PRIMARY KEY(id)
);

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

INSERT INTO employee (first_name, last_name, manager_id, role_id) VALUE ("Michael", "Scott", 1, 1);
INSERT INTO employee (first_name, last_name, manager_id, role_id) VALUE ("Jim", "Halpert", 2, 2);
INSERT INTO employee (first_name, last_name, manager_id, role_id) VALUE ("Dwight","Schrute",null,3);
INSERT INTO employee (first_name, last_name, manager_id, role_id) VALUE ("Andy", "Bernard", null, 4);
INSERT INTO employee (first_name, last_name, manager_id, role_id) VALUE ("Angela", "Martin", null, 5);
INSERT INTO employee (first_name, last_name, manager_id, role_id) VALUE ("Oscar", "Martinez", null, 6);
INSERT INTO employee (first_name, last_name, manager_id, role_id) VALUE ("Darryl", "Philbin", null, 7);

SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM employee;