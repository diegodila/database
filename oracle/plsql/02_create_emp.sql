DROP TABLE dept PURGE;
DROP TABLE emp PURGE;
CREATE TABLE emp(
    empno    NUMBER(4,0),
    ename    VARCHAR2(10),
    job      VARCHAR2(9),
    mgr      NUMBER(4,0),
    hiredate DATE,
    sal      NUMBER(7,2),
    comm     NUMBER(7,2),
    deptno   NUMBER(2,0),
    CONSTRAINT pk_emp PRIMARY KEY (empno),
    CONSTRAINT fk_deptno FOREIGN KEY (deptno) REFERENCES dept (deptno)
  );

  INSERT INTO EMP VALUES
          (7369, 'SMITH',  'CLERK',     7902,
          TO_DATE('17-DEC-1980', 'DD-MON-YYYY'),  800, NULL, 20);
  INSERT INTO EMP VALUES
          (7499, 'ALLEN',  'SALESMAN',  7698,
          TO_DATE('20-FEB-1981', 'DD-MON-YYYY'), 1600,  300, 30);
  INSERT INTO EMP VALUES
          (7521, 'WARD',   'SALESMAN',  7698,
          TO_DATE('22-FEB-1981', 'DD-MON-YYYY'), 1250,  500, 30);
  INSERT INTO EMP VALUES
          (7566, 'JONES',  'MANAGER',   7839,
          TO_DATE('2-APR-1981', 'DD-MON-YYYY'),  2975, NULL, 20);
  INSERT INTO EMP VALUES
          (7654, 'MARTIN', 'SALESMAN',  7698,
          TO_DATE('28-SEP-1981', 'DD-MON-YYYY'), 1250, 1400, 30);
  INSERT INTO EMP VALUES
          (7698, 'BLAKE',  'MANAGER',   7839,
          TO_DATE('1-MAY-1981', 'DD-MON-YYYY'),  2850, NULL, 30);
  INSERT INTO EMP VALUES
          (7782, 'CLARK',  'MANAGER',   7839,
          TO_DATE('9-JUN-1981', 'DD-MON-YYYY'),  2450, NULL, 10);
  INSERT INTO EMP VALUES
          (7788, 'SCOTT',  'ANALYST',   7566,
          TO_DATE('09-DEC-1982', 'DD-MON-YYYY'), 3000, NULL, 20);
  INSERT INTO EMP VALUES
          (7839, 'KING',   'PRESIDENT', NULL,
          TO_DATE('17-NOV-1981', 'DD-MON-YYYY'), 5000, NULL, 10);
  INSERT INTO EMP VALUES
          (7844, 'TURNER', 'SALESMAN',  7698,
          TO_DATE('8-SEP-1981', 'DD-MON-YYYY'),  1500,    0, 30);
  INSERT INTO EMP VALUES
          (7876, 'ADAMS',  'CLERK',     7788,
          TO_DATE('12-JAN-1983', 'DD-MON-YYYY'), 1100, NULL, 20);
  INSERT INTO EMP VALUES
          (7900, 'JAMES',  'CLERK',     7698,
          TO_DATE('3-DEC-1981', 'DD-MON-YYYY'),   950, NULL, 30);
  INSERT INTO EMP VALUES
          (7902, 'FORD',   'ANALYST',   7566,
          TO_DATE('3-DEC-1981', 'DD-MON-YYYY'),  3000, NULL, 20);
  INSERT INTO EMP VALUES
          (7934, 'MILLER', 'CLERK',     7782,
          TO_DATE('23-JAN-1982', 'DD-MON-YYYY'), 1300, NULL, 10);

SELECT table_name FROM user_tables;

SELECT * FROM tab;
SELECT * FROM dept;
SELECT * FROM emp;