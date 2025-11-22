1. Dept no and number of employees in each dept having at least 2 clerks
SELECT deptno,
       COUNT(*) AS total_emp
FROM emp
GROUP BY deptno
HAVING SUM(CASE WHEN job = 'CLERK' THEN 1 ELSE 0 END) >= 2;

2. Dept no and total salary to pay all emp in each dept, if at least 4 emp in that dept
SELECT deptno,
       SUM(sal) AS total_salary
FROM emp
GROUP BY deptno
HAVING COUNT(*) >= 4;

3. For each job: number of emp earning sal > 1200, and total sal of that job must exceed 3800
SELECT job,
       COUNT(*)      AS emp_more_1200,
       SUM(sal)      AS total_salary
FROM emp
WHERE sal > 1200
GROUP BY job
HAVING SUM(sal) > 3800;

4. Dept no and number of emp, only if there are 2 managers in that dept
SELECT deptno,
       COUNT(*) AS total_emp
FROM emp
GROUP BY deptno
HAVING SUM(CASE WHEN job = 'MANAGER' THEN 1 ELSE 0 END) = 2;


(Use >= 2 instead of = 2 if your sir wants “at least 2 managers”)

5. Job and maximum salary of each job, only if max sal > 2600
SELECT job,
       MAX(sal) AS max_salary
FROM emp
GROUP BY job
HAVING MAX(sal) > 2600;

6. Salaries which are repeated (duplicate sal values)
SELECT sal
FROM emp
GROUP BY sal
HAVING COUNT(*) > 1;

7. HIREDATE values which are duplicated
SELECT hiredate
FROM emp
GROUP BY hiredate
HAVING COUNT(*) > 1;

8. Average salary of each dept if avg sal < 3000
SELECT deptno,
       AVG(sal) AS avg_salary
FROM emp
GROUP BY deptno
HAVING AVG(sal) < 3000;

9. Dept no where there are at least 3 emp whose name contains 'A' or 'S'
SELECT deptno
FROM emp
WHERE ename LIKE '%A%'
   OR ename LIKE '%S%'
GROUP BY deptno
HAVING COUNT(*) >= 3;

10. Min and max salary of each job if

MIN(sal) > 1000 and MAX(sal) < 5000

SELECT job,
       MIN(sal) AS min_salary,
       MAX(sal) AS max_salary
FROM emp
GROUP BY job
HAVING MIN(sal) > 1000
   AND MAX(sal) < 5000;
