SELECT SYSDATE FROM DUAL;--SYSDATE��ʾ��ǰϵͳʱ�� 
SELECT TO_CHAR(SYSDATE,'YYYY"��"fmMM"��"fmDD"��"')--��Date���ͣ�ת��ָ����ʽ ��String���� 
FROM dual;

SELECT TO_CHAR(1210.7, '$9,999.00') FROM dual;--������ת��ָ����ʽ ��String����

 SELECT 1+TO_NUMBER('100') FROM dual;

--�Խ���У�null����Ĵ����װ
--�Խ��������comm�г�nullʱ����0��ʾ
SELECT NVL(COMM,0) FROM EMP;
SELECT COMM FROM EMP;
--��comm�з�nullʱ����0��ʾ��nullʱ����1��ʾ
SELECT NVL2(COMM,0,1) FROM EMP;
SELECT NVL2(COMM,comm+1,1) FROM EMP;

