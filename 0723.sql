/*
	Author : 이소희
    Date : 2024.07.23
    Object : Basic SELECT
    Environment : Mircosoft Windows 11, MySQL Workbench 8.0.38, MySQL 8.0.63
*/

SELECT AVG(sal), SUM(sal), MAX(sal), MIN(sal)
FROM emp
WHERE deptno = 20;

SELECT ename, LENGTH(ename)
FROM emp
WHERE deptno = 20;

SELECT AVG(comm), AVG(IFNULL(comm,0))
FROM emp
WHERE deptno = 20;

SELECT AVG(comm), AVG(IFNULL(comm,0)), SUM(IFNULL(comm,0)) / COUNT(*)
FROM emp;

SELECT COUNT(DISTINCT job) as job_difer
FROM emp;

SELECT  MIN(hiredate), MAX(hiredate), MAX(hiredate) - MIN(hiredate) AS diff
FROM emp;

SELECT deptno, MAX(sal)
FROM emp
GROUP BY deptno;

SELECT job, AVG(sal)
FROM emp
GROUP BY job;

SELECT deptno, job, count(*)
FROM emp
GROUP BY deptno, job
ORDER BY deptno, job;

SELECT deptno, COUNT(*), SUM(sal)
FROM emp
GROUP BY deptno
HAVING COUNT(*) > 4; 

SELECT job, sum(sal)
FROM emp
WHERE job NOT IN('salESMAN')
GROUP BY job
HAVING SUM(sal) > 5000
ORDER BY 2 DESC;

SELECT deptno, AVG(sal)
FROM emp
GROUP BY deptno;

SELECT deptno, AVG(sal)
FROM emp
GROUP BY deptno
ORDER BY 2;

SELECT deptno, job, SUM(sal)
FROM emp
GROUP BY deptno, job
WITH ROLLUP;

SELECT e.ename, e.sal, d.deptno, d.loc, s.grade
FROM emp e cross join dept d cross join salgrade s;

SELECT *
FROM dept d, emp e
WHERE d.deptno = e.deptno;

SELECT loc
FROM dept 
WHERE deptno = 20;

SELECT empno, ename, dname
FROM emp
	JOIN dept USING (deptno)
WHERE empno = 7900;

SELECT ename, loc
FROM emp e
	JOIN dept d on e.deptno = d.deptno
WHERE ename = 'SMITH';

SELECT c.name, c.Population, t.name, t.IndepYear, cl.Language
FROM city c 
	JOIN country t ON c.CountryCode = t.code
	JOIN countrylanguage cl on t.code = cl.CountryCode
WHERE c.name = 'SEOUL';


