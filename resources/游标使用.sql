--�α� ��ʾ ��ʽ
--CURSOR cursor_name [ ( parameter [ , parameter]����)]
--[ RETURN return_type ] IS selectsql
DECLARE 
    CURSOR cursor_my007 IS SELECT * FROM EMP;
    EOBJ EMP%ROWTYPE;   --����һ�������͵ı���  for(�������� ob: ����)
BEGIN
   OPEN cursor_my007;   --�������ǵ� �α����ѯ��¼�Ĺ�ϵ���Ѽ�¼�������ض���ļ��ϡ�
     IF cursor_my007%isopen THEN   
        DBMS_OUTPUT.PUT_LINE('isopen');
     END IF;
--      DBMS_OUTPUT.PUT_LINE(cursor_my007%rowcount);
      LOOP
    FETCH cursor_my007 INTO EOBJ; --ץȡ��һ�����󣨼�¼���������α�����ԣ��Զ���һ����
       EXIT WHEN cursor_my007%NOTFOUND; --�˳�ѭ�������û�м�¼
       DBMS_OUTPUT.PUT_LINE  
          ('��'||cursor_my007%ROWCOUNT||'����Ա:'||EOBJ.ENAME||EOBJ.sal); --ROWCOUNT ��ʾ�б�
    END LOOP;
    CLOSE cursor_my007;--�ر��α꣬�ڴ����ɵ�һЩ���ϡ������ͷ�
END;