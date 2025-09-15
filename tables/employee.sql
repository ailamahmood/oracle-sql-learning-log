--TABLE CREATION
CREATE TABLE employee (
    emp_id       NUMBER PRIMARY KEY,
    first_name   VARCHAR2(50),
    last_name    VARCHAR2(50) NOT NULL,
    email        VARCHAR2(100) UNIQUE,
    phone        VARCHAR2(20),
    hire_date    DATE NOT NULL,
    job_id       VARCHAR2(10) NOT NULL REFERENCES job(job_id),
    salary       NUMBER(10,2),
    commission   NUMBER(5,2),
    manager_id   NUMBER REFERENCES employee(emp_id),
    dept_id      NUMBER REFERENCES department(dept_id)
);

--DATA INSERTION

-- HR
INSERT INTO employee (emp_id, first_name, last_name, email, phone, hire_date, job_id, salary, commission, manager_id, dept_id)
VALUES (101, 'Alice', 'Johnson', 'alice.j@company.com', '111-1111', DATE '2018-05-01', 'HR_MGR', 7500, NULL, NULL, 10);

INSERT INTO employee VALUES (102, 'Bob', 'Miller', 'bob.m@company.com', '111-2222', DATE '2020-01-10', 'HR_ASST', 3200, NULL, 101, 10);

-- IT
INSERT INTO employee VALUES (201, 'Charlie', 'Brown', 'charlie.b@company.com', '222-1111', DATE '2017-07-15', 'DEV', 6500, NULL, NULL, 20);
INSERT INTO employee VALUES (202, 'Diana', 'Smith', 'diana.s@company.com', '222-2222', DATE '2019-03-01', 'DEV', 5000, NULL, 201, 20);
INSERT INTO employee VALUES (203, 'Ethan', 'Williams', 'ethan.w@company.com', '222-3333', DATE '2021-11-12', 'ANL', 4200, NULL, 201, 20);

-- Finance
INSERT INTO employee VALUES (301, 'Fiona', 'Taylor', 'fiona.t@company.com', '333-1111', DATE '2016-04-20', 'FIN_MGR', 9000, NULL, NULL, 30);
INSERT INTO employee VALUES (302, 'George', 'White', 'george.w@company.com', '333-2222', DATE '2018-08-30', 'ANL', 4800, NULL, 301, 30);

-- Marketing
INSERT INTO employee VALUES (401, 'Hannah', 'Lee', 'hannah.l@company.com', '444-1111', DATE '2019-09-01', 'MK_EXE', 4000, NULL, NULL, 40);
INSERT INTO employee VALUES (402, 'Ian', 'Davis', 'ian.d@company.com', '444-2222', DATE '2021-02-17', 'MK_EXE', 3000, NULL, 401, 40);

-- Operations
INSERT INTO employee VALUES (501, 'Jack', 'Moore', 'jack.m@company.com', '555-1111', DATE '2015-06-12', 'OPS_MGR', 8500, NULL, NULL, 50);
INSERT INTO employee VALUES (502, 'Karen', 'Hall', 'karen.h@company.com', '555-2222', DATE '2020-10-05', 'ANL', 3700, NULL, 501, 50);
