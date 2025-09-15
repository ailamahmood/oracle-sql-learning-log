--TABLE CREATION
CREATE TABLE job (
    job_id       VARCHAR2(10) PRIMARY KEY,
    job_title    VARCHAR2(100) NOT NULL,
    min_salary   NUMBER(10,2),
    max_salary   NUMBER(10,2)
);

--DATA INSERTION
INSERT INTO job (job_id, job_title, min_salary, max_salary) VALUES ('HR_MGR', 'HR Manager', 4000, 8000);
INSERT INTO job (job_id, job_title, min_salary, max_salary) VALUES ('HR_ASST', 'HR Assistant', 2000, 4000);
INSERT INTO job (job_id, job_title, min_salary, max_salary) VALUES ('DEV', 'Developer', 3500, 7000);
INSERT INTO job (job_id, job_title, min_salary, max_salary) VALUES ('ANL', 'Analyst', 3000, 6000);
INSERT INTO job (job_id, job_title, min_salary, max_salary) VALUES ('FIN_MGR', 'Finance Manager', 5000, 10000);
INSERT INTO job (job_id, job_title, min_salary, max_salary) VALUES ('MK_EXE', 'Marketing Executive', 2500, 5000);
INSERT INTO job (job_id, job_title, min_salary, max_salary) VALUES ('OPS_MGR', 'Operations Manager', 4500, 9000);
