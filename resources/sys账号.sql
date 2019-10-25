--永久表空间创建
CREATE TABLESPACE sp215
DATAFILE 'C:\sp215aa.dbf' SIZE 10m
AUTOEXTEND ON NEXT 1m MAXSIZE  100m
permanent;

--查询永久表空间的明细信息
SELECT * FROM  DBA_DATA_FILES;

--临时表空间创建
CREATE TEMPORARY  TABLESPACE sp215temp
TEMPFILE 'C:\sp215temp.dbf' SIZE 15m
AUTOEXTEND ON NEXT 1m MAXSIZE  20m;

--查询所有临时表空间
SELECT * FROM  DBA_TEMP_FILES;

--给用户权限(一个表示可以登陆的 CONNECT 角色）
GRANT CONNECT TO MY215;
--给用户资源角色（可以创建表之类的）
GRANT RESOURCE TO MY215;
--
GRANT CREATE SYNONYM TO SCOTT

--练习要求（提前，scott没权限，需要给它 CREATE SYNONYM 权限）：
--自己给自己的资源，取别名
--自己给别人的资源，取别名（要先经过别人同意。比如，给sys的表资源取个 专属称呼）

