--���ñ�ռ䴴��
CREATE TABLESPACE sp215
DATAFILE 'C:\sp215aa.dbf' SIZE 10m
AUTOEXTEND ON NEXT 1m MAXSIZE  100m
permanent;

--��ѯ���ñ�ռ����ϸ��Ϣ
SELECT * FROM  DBA_DATA_FILES;

--��ʱ��ռ䴴��
CREATE TEMPORARY  TABLESPACE sp215temp
TEMPFILE 'C:\sp215temp.dbf' SIZE 15m
AUTOEXTEND ON NEXT 1m MAXSIZE  20m;

--��ѯ������ʱ��ռ�
SELECT * FROM  DBA_TEMP_FILES;

--���û�Ȩ��(һ����ʾ���Ե�½�� CONNECT ��ɫ��
GRANT CONNECT TO MY215;
--���û���Դ��ɫ�����Դ�����֮��ģ�
GRANT RESOURCE TO MY215;
--
GRANT CREATE SYNONYM TO SCOTT

--��ϰҪ����ǰ��scottûȨ�ޣ���Ҫ���� CREATE SYNONYM Ȩ�ޣ���
--�Լ����Լ�����Դ��ȡ����
--�Լ������˵���Դ��ȡ������Ҫ�Ⱦ�������ͬ�⡣���磬��sys�ı���Դȡ�� ר���ƺ���

