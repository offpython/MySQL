/*
	Author : 이소희
    Date : 2024.07.22
    Object : Basic SELECT
    Environment : Mircosoft Windows 11, MySQL Workbench 8.0.38, MySQL 8.0.63
*/

SELECT * FROM emp;

SELECT CONCAT(ename, '의 봉급은 ', sal, '입니다.')
FROM emp;

SELECT DISTINCT job
FROM emp;

SELECT DISTINCT deptno
FROM emp;

SELECT *
FROM emp
WHERE ename = UPPER('smith');

SELECT empno, ename, hiredate
FROM emp
WHERE hiredate >= '1987-01-01' and hiredate <= '1987-12-31';

SELECT empno, ename, hiredate
FROM emp
WHERE  hiredate between '1987-01-01' and '1987-12-31';

SELECT ename, job
FROM emp
WHERE job in ('CLERK', 'ANALYST'); -- job = 'clerk' or job = 'analyst'

SELECT ename
FROM emp
WHERE ename like 'Smi__';

SELECT ename
FROM emp
WHERE ename like 'S%';

SELECT ename
FROM emp
WHERE ename like '%I%';

SELECT e.ename, e.comm, e.deptno, d.dname
FROM emp e
	join dept d on e.deptno = d.deptno
WHERE comm IS NOT NULL;

SELECT empno, ename, hiredate
FROM emp
WHERE left(hiredate, 4) = '1981';

SELECT empno, ename, hiredate
FROM emp
WHERE YEAR(hiredate) = '1981';

SELECT empno, ename, hiredate
FROM emp
WHERE DATE_FORMAT(hiredate, '%Y') = '1981';

SELECT empno, ename, hiredate, sal
FROM emp
ORDER BY hiredate desc, sal asc;

SELECT deptno, ename, (sal + IFNULL(comm, 0)) * 12 as year_sal
FROM emp
WHERE deptno IN (20, 30)
ORDER BY year_sal desc;