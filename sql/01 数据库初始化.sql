-- ������ռ�
create tablespace NEWTURE
datafile 'C:\app\Administrator\oradata\orcl\NEWTURE.DBF'
size 200M
autoextend on
next 50M
maxsize 1024M
logging
extent management local
segment space management auto;

-- �����û�
create user erp identified by 123456    
default tablespace NEWTURE    
temporary tablespace TEMP;

-- ���û���Ȩ
grant connect,dba to erp;
