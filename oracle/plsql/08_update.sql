DECLARE
v_sal_increase   NUMBER := 2000;
BEGIN
UPDATE	emp
SET		sal = sal + v_sal_increase
WHERE	job = 'ANALYST';
END;
/