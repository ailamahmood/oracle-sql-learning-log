--TABLE CREATION
CREATE TABLE department (
    dept_id      NUMBER PRIMARY KEY,
    dept_name    VARCHAR2(100) NOT NULL,
    location     VARCHAR2(100)
);

--DATA INSERTION
INSERT INTO department (dept_id, dept_name, location) VALUES (10, 'HR', 'New York');
INSERT INTO department (dept_id, dept_name, location) VALUES (20, 'IT', 'San Francisco');
INSERT INTO department (dept_id, dept_name, location) VALUES (30, 'Finance', 'Chicago');
INSERT INTO department (dept_id, dept_name, location) VALUES (40, 'Marketing', 'Boston');
INSERT INTO department (dept_id, dept_name, location) VALUES (50, 'Operations', 'Dallas');
