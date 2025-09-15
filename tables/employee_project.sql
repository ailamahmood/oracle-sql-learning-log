--TABLE CREATION
CREATE TABLE employee_project (
    emp_id       NUMBER REFERENCES employee(emp_id),
    project_id   NUMBER REFERENCES project(project_id),
    role         VARCHAR2(50),
    assigned_on  DATE DEFAULT SYSDATE,
    PRIMARY KEY (emp_id, project_id)
);

--DATA INSERTION
INSERT INTO employee_project VALUES (101, 1001, 'Lead HR', DATE '2022-01-05');
INSERT INTO employee_project VALUES (102, 1001, 'Coordinator', DATE '2022-01-10');
INSERT INTO employee_project VALUES (201, 1002, 'Tech Lead', DATE '2021-03-05');
INSERT INTO employee_project VALUES (202, 1002, 'Developer', DATE '2021-03-10');
INSERT INTO employee_project VALUES (203, 1002, 'Analyst', DATE '2021-03-15');
INSERT INTO employee_project VALUES (301, 1003, 'Audit Head', DATE '2022-04-02');
INSERT INTO employee_project VALUES (302, 1003, 'Audit Support', DATE '2022-04-05');
INSERT INTO employee_project VALUES (401, 1004, 'Marketing Lead', DATE '2022-05-02');
INSERT INTO employee_project VALUES (402, 1004, 'Executive', DATE '2022-05-05');
INSERT INTO employee_project VALUES (501, 1005, 'Operations Lead', DATE '2021-06-05');
INSERT INTO employee_project VALUES (502, 1005, 'Analyst', DATE '2021-06-10');
