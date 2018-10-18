-- 创建表空间
create tablespace NEWTURE
datafile 'C:\app\Administrator\oradata\orcl\NEWTURE.DBF'
size 200M
autoextend on
next 50M
maxsize 1024M
logging
extent management local
segment space management auto;

-- 创建用户
create user erp identified by 123456    
default tablespace NEWTURE    
temporary tablespace TEMP;

-- 给用户授权
grant connect,dba to erp;
