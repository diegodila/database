DECLARE
v_deptno   NUMBER := 10;
BEGIN
DELETE FROM   emp
WHERE         deptno = v_deptno;
END;
/