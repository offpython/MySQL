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


CREATE TABLE  emp20  AS 
SELECT empno, ename, sal
FROM emp
WHERE deptno = 20;

ALTER TABLE emp20
ADD age TINYINT AFTER ename;

ALTER TABLE emp20 
DROP COLUMN sal;

SELECT * FROM emp20;

ALTER TABLE emp20
MODIFY ename VARCHAR(20);

CREATE TABLE Jusorok
(
	bunho SMALLINT,
    gender CHAR(6) DEFAULT 'MALE'
);

INSERT INTO Jusorok VALUE(1, 'FEMALE');
INSERT INTO Jusorok VALUE(2, DEFAULT);

SELECT * FROM Jusorok