--Ҫ��ÿ����ʾ2����¼	

--�ѵ�2ҳ�����ݲ����
--7566
--7654
SELECT * FROM
(SELECT  ROWNUM �Ҹ�����,E.* FROM EMP E
WHERE ROWNUM<=4) T2 WHERE �Ҹ�����>2;

--�ѵ�3ҳ�����ݲ����
--7698	BLAKE
--7782	CLARK
SELECT * FROM
(SELECT  ROWNUM �Ҹ�����,E.* FROM EMP E
WHERE ROWNUM<=6) T2 WHERE �Ҹ�����>4;

--�ѵ�3ҳ�����ݲ����
--7788	SCOTT
--7839	KING
SELECT * FROM
(SELECT  ROWNUM �Ҹ�����,E.* FROM EMP E
WHERE ROWNUM<=8) T2 WHERE �Ҹ�����>6;

