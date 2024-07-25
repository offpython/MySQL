/*
	Author : 이소희
    Date : 2024.07.25
    Object : TCL, DDL 
    Environment : Mircosoft Windows 11, MySQL Workbench 8.0.38, MySQL 8.0.63
*/

START TRANSACTION;

SELECT * FROM  emp
WHERE empno = 7782;

UPDATE emp
SET deptno = 30;
WHERE empno = 7782;

SAVEPOINT a ; 

INSERT INTO emp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES(7999, 'TOM', 'SALESMAN', 7782, curdate(), 2000, 2000, 10);

rollback TO aaa;



