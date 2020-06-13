select @@version;
go

SELECT CONVERT(char(50), SERVERPROPERTY('servername')) ServerName,CONVERT(char(20), SERVERPROPERTY('InstanceName')) instancename,CONVERT(char(50),SERVERPROPERTY('MachineName')) hostname;
go

select total_physical_memory_kb/1024 as total_physical_memory_MB,available_physical_memory_kb/1024 as available_physical_memory_MB from sys.dm_os_sys_memory;
go

--select * from sys.database_files;
--go
