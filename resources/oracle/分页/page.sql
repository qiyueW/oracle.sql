--要求：每次显示2条记录	

--把第2页的数据查出来
--7566
--7654
SELECT * FROM
(SELECT  ROWNUM 我跟行走,E.* FROM EMP E
WHERE ROWNUM<=4) T2 WHERE 我跟行走>2;

--把第3页的数据查出来
--7698	BLAKE
--7782	CLARK
SELECT * FROM
(SELECT  ROWNUM 我跟行走,E.* FROM EMP E
WHERE ROWNUM<=6) T2 WHERE 我跟行走>4;

--把第3页的数据查出来
--7788	SCOTT
--7839	KING
SELECT * FROM
(SELECT  ROWNUM 我跟行走,E.* FROM EMP E
WHERE ROWNUM<=8) T2 WHERE 我跟行走>6;

--规律？
