CREATE Table A(EmpID int primary key, Ename varchar(max), Salary int );
CREATE Table B(EmpID int primary key, Ename varchar(max), Salary int );

-- SET operation approach when all coloums name is same and the data is same
Insert into A values(1, 'AA', 1000)
Insert into A values(2, 'BB', 300)
Insert into B values(2, 'BB', 400)
Insert into B values(3, 'CC', 100)

Select EmpID, Ename, MIN(Salary) AS Salary
FROM
(
SELECT * from A
UNION ALL
Select * from B
)
as intermediate_result
group  by EmpID, ENAME