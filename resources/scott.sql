SELECT  E.* FROM EMP E
WHERE ROWNUM<4;

--为什么没有一条记录出来？
SELECT  E.* FROM EMP E
WHERE ROWNUM>'1';

--为什么全部条记录出来？
SELECT  E.* FROM EMP E
WHERE ROWNUM>='1';



--UPDATE EMP
--SET ENAME='215'
--WHERE EMPNO='7369';
--
--DELETE FROM EMP WHERE EMPNO='7369';
--
--INSERT INTO EMP(EMPNO,ENAME,JOB) VALUES('999','N999','JOB999');
