--https://docs.oracle.com/database/121/TDDDG/tdddg_connecting.htm#TDDDG22600
--https://docs.oracle.com/database/121/TDDDG/tdddg_connecting.htm#TDDDG22500  连接Oracle数据库及其开发
--查看模式对象
--COLUMN OBJECT_NAME FORMAT A25
--COLUMN OBJECT_TYPE FORMAT A25
SELECT OBJECT_NAME, OBJECT_TYPE FROM USER_OBJECTS
ORDER BY OBJECT_TYPE, OBJECT_NAME;

--查询当前系统时间
SELECT SYSDATE FROM  dual;
--存储过程、索引、表、序列等
SELECT * FROM user_objects ; 
--查看系统拥有哪些用户
SELECT * FROM all_users;
--所有索引
SELECT * FROM  user_indexes ORDER BY table_name; 
--序列号
SELECT * FROM user_sequences ORDER BY sequence_name; 

--创建序列
CREATE SEQUENCE MYID INCREMENT BY 1 START WITH 0 MINVALUE 0 ORDER;
-- MYID.nextval  表示 返回自增后的值
SELECT   MYID.nextval from dual;
-- MYID.currval 表示当前的值
SELECT   MYID.currval  from dual;
--删除序列
DROP SEQUENCE MYID;




