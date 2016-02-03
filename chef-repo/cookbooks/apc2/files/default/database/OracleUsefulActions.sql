
DROP TABLESPACE RequestTable
   INCLUDING CONTENTS AND DATAFILES;
   
create tablespace RequestTable
  datafile 'C:\oraclexe\app\oracle\oradata\XE\RequestTable.dbf'
  size 32m 
  autoextend on 
  next 32m maxsize 2048m
  extent management local; 
 
Alter database datafile 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF' resize 448M;

ALTER DATABASE DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF'
AUTOEXTEND ON NEXT 1M MAXSIZE 1024M;