DECLARE 
--���� DECLARE variable_name [CONSTANT] type [NOT NULL] [:=value];
--v_name varchar2(50);
v_name EMP.ENAME%TYPE :='abc'; --������java�У� ��(���ݿ��).��̬����(�У�.��%��getClass��TYPE��
emp_table_type  EMP%ROWTYPE ;--  һ��ȡ�����͵ı����� ����   ����_table_type
empno NUMBER(4,0):=99;
ename EMP.ENAME%TYPE:='����';
MYEXCPTION EXCEPTION;--����һ�� �쳣
BEGIN

IF empno=99 THEN--��� empno����99 ,
     RAISE MYEXCPTION; --�׳�һ�� MYEXCPTION�쳣���Զ�����쳣��
END IF;

--DBMS_OUTPUT.put_line(v_name);
SELECT ENAME INTO v_name FROM EMP WHERE EMPNO=736900; --  SELECT...INTO..����ֻ��һ��ֵ��

SELECT *  INTO emp_table_type FROM EMP WHERE EMPNO=7369;--

DBMS_OUTPUT.put_line(v_name||'��rowtype��='||emp_table_type.ename);
--v_name:='aaaa';
--DBMS_OUTPUT.put_line(v_name);
--DML
INSERT INTO EMP(EMPNO,ENAME) VALUES(empno,ename);
INSERT INTO EMP(EMPNO,ENAME) VALUES(empno,ename);

COMMIT;
EXCEPTION
    WHEN MYEXCPTION THEN
         DBMS_OUTPUT.put_line('���������Զ����쳣����');
    WHEN DUP_VAL_ON_INDEX THEN
        DBMS_OUTPUT.put_line('�����ظ�����');
        ROLLBACK;
        WHEN OTHERS THEN
         DBMS_OUTPUT.put_line('�������͵��쳣');
        ROLLBACK;
END;
--SELECT * FROM EMP;
--SET SERVEROUT ON;
--emp_table_type  EMP%ROWTYPE ;