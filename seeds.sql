USE employees_DB;
--DEPARTMENTS----------------------------------------------------------------------
INSERT INTO department (id, name)
VALUES (1, "Sales");

INSERT INTO department (id, name)
VALUES (2, "Engineering");

INSERT INTO department (id, name)
VALUES (3, "Finance");

INSERT INTO department (id, name)
VALUES (4, "Legal");

--POSITIONS------------------------------------------------------------------------
INSERT INTO role (id, title, salary, department_id)
VALUES (1, "Sales Person", 10000, 1);

INSERT INTO role (id, title, salary, department_id)
VALUES (2, "Sales Lead", 20000, 1);

INSERT INTO role (id, title, salary, department_id)
VALUES (3, "Sales Manager", 30000, 1);

INSERT INTO role (id, title, salary, department_id)
VALUES (4, "Floor Manager", 40000, 2);

INSERT INTO role (id, title, salary, department_id)
VALUES (5, "Software Engineer", 50000, 3);

INSERT INTO role (id, title, salary, department_id)
VALUES (6, "Software Engineer Lead", 100000, 3);

INSERT INTO role (id, title, salary, department_id)
VALUES (7, "Accountant", 75000, 4);

INSERT INTO role (id, title, salary, department_id)
VALUES (8, "Legal Team Lead", 70000, 4);

INSERT INTO role (id, title, salary, department_id)
VALUES (9, "Lawyer", 120000, 4);

--EMPLOYEES-----------------------------------------------------------------------
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (9, "John", "Doe", 3, null);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (7, "Mike", "Chan", 4, null);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (5, "Ashley", "Rodriguez", 6, null);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (3, "Kevin", "Tupik", 9, null);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (1, "Malia", "Brown", 3, 4);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (2, "Sarah", "Lourd", 1, 3);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (4, "Tom", "Allen", 2, 3);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (6, "Tanner", "Galal", 5, 6);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (8, "Drake", "Travis", 7, null);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (10, "The", "Weeknd", 8, 9);