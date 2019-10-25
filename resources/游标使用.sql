--游标 显示 隐式
--CURSOR cursor_name [ ( parameter [ , parameter]……)]
--[ RETURN return_type ] IS selectsql
DECLARE 
    CURSOR cursor_my007 IS SELECT * FROM EMP;
    EOBJ EMP%ROWTYPE;   --定义一个行类型的变量  for(集合类型 ob: 集合)
BEGIN
   OPEN cursor_my007;   --建立我们的 游标与查询记录的关系。把记录，变成相关对象的集合。
     IF cursor_my007%isopen THEN   
        DBMS_OUTPUT.PUT_LINE('isopen');
     END IF;
--      DBMS_OUTPUT.PUT_LINE(cursor_my007%rowcount);
      LOOP
    FETCH cursor_my007 INTO EOBJ; --抓取出一个对象（记录）——【游标的特性，自动下一步】
       EXIT WHEN cursor_my007%NOTFOUND; --退出循环，如果没有记录
       DBMS_OUTPUT.PUT_LINE  
          ('第'||cursor_my007%ROWCOUNT||'个雇员:'||EOBJ.ENAME||EOBJ.sal); --ROWCOUNT 表示行标
    END LOOP;
    CLOSE cursor_my007;--关闭游标，内存生成的一些集合、对象被释放
END;