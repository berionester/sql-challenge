--departments
CREATE TABLE departments
(
    dept_no character varying(4) COLLATE pg_catalog."default" NOT NULL,
    dept_name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT departments_pkey PRIMARY KEY (dept_no)
)

--dept_emp
CREATE TABLE dept_emp
(
    emp_no character varying(50) COLLATE pg_catalog."default",
    dept_no character varying(50) COLLATE pg_catalog."default"
)
--dept_manager
CREATE TABLE dept_manager
(
    dept_no character varying(10) COLLATE pg_catalog."default",
    emp_no character varying(10) COLLATE pg_catalog."default"
)


--employees
CREATE TABLE employees
(
    emp_no character varying(10) COLLATE pg_catalog."default" NOT NULL,
    emp_title_id character varying(5) COLLATE pg_catalog."default" NOT NULL,
    birth_date date NOT NULL,
    first_name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    last_name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    sex character varying(5) COLLATE pg_catalog."default" NOT NULL,
    hire_date date NOT NULL,
    CONSTRAINT employees_pkey PRIMARY KEY (emp_no)
)

--salaries
CREATE TABLE salaries
(
    emp_no character varying(10) COLLATE pg_catalog."default" NOT NULL,
    salary character varying(50) COLLATE pg_catalog."default" NOT NULL
)
--titles
CREATE TABLE titles
(
    title_id character varying(10) COLLATE pg_catalog."default" NOT NULL,
    title character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT titles_pkey PRIMARY KEY (title_id)
)