--------------------EXPERIMENT 03: (MEDIUM LEVEL)
CREATE TABLE department (
    id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Create Employee Table
CREATE TABLE employee (
    id INT,
    name VARCHAR(50),
    salary INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id)
);

-- Insert into Department Table
INSERT INTO department (id, dept_name) VALUES
(1, 'IT'),
(2, 'SALES');

-- Insert into Employee Table
INSERT INTO employee (id, name, salary, department_id) VALUES
(1, 'JOE', 70000, 1),
(2, 'JIM', 90000, 1),
(3, 'HENRY', 80000, 2),
(4, 'SAM', 60000, 2),
(5, 'MAX', 90000, 1);

SELECT d.*, e.*
FROM department as d
INNER JOIN
employee as e
ON D.id = E.department_id;

SELECT d.dept_name, e.name, E.salary
FROM department as d
INNER JOIN
employee as e
ON D.id = E.department_id;

-- SELECT MAX(employee.salary) from  employee where department.id = employee.department_id
SELECT d.dept_name, e.name, E.salary
from department as d
INNER JOIN
employee as e
on d.id = e.department_id
where e.salary
in (Select max(e2.salary) from employee as e2 where e2.department_id = e.department_id);
