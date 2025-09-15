--TABLE CREATION
CREATE TABLE project (
    project_id   NUMBER PRIMARY KEY,
    project_name VARCHAR2(100) NOT NULL,
    start_date   DATE,
    end_date     DATE,
    dept_id      NUMBER REFERENCES department(dept_id)
);

--DATA INSERTION
INSERT INTO project (project_id, project_name, start_date, end_date, dept_id) VALUES (1001, 'HR System Upgrade', DATE '2022-01-01', DATE '2022-06-30', 10);
INSERT INTO project VALUES (1002, 'Website Revamp', DATE '2021-03-01', DATE '2021-12-31', 20);
INSERT INTO project VALUES (1003, 'Financial Audit', DATE '2022-04-01', DATE '2022-09-30', 30);
INSERT INTO project VALUES (1004, 'Ad Campaign', DATE '2022-05-01', DATE '2022-12-31', 40);
INSERT INTO project VALUES (1005, 'Logistics Optimization', DATE '2021-06-01', DATE '2022-01-31', 50);
