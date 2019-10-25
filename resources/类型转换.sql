SELECT SYSDATE FROM DUAL;--SYSDATE表示当前系统时间 
SELECT TO_CHAR(SYSDATE,'YYYY"年"fmMM"月"fmDD"日"')--把Date类型，转成指定格式 的String类型 
FROM dual;

SELECT TO_CHAR(1210.7, '$9,999.00') FROM dual;--把数字转成指定格式 的String类型

 SELECT 1+TO_NUMBER('100') FROM dual;

--对结果中，null情况的处理封装
--对结果——当comm列出null时，用0表示
SELECT NVL(COMM,0) FROM EMP;
SELECT COMM FROM EMP;
--当comm列非null时，用0表示，null时，用1表示
SELECT NVL2(COMM,0,1) FROM EMP;
SELECT NVL2(COMM,comm+1,1) FROM EMP;

