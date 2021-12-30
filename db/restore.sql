-- Restore db in sql server container
-- Download LT bak: https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks to folder db
-- docker exec -it devcontainers-playground-db-1 /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P '<YourStrong!Passw0rd>' -i /backup/restore.sql
USE [master]
GO

-- Show logical files
-- RESTORE FILELISTONLY FROM DISK = '/backup/AdventureWorksLT2019.bak'

RESTORE DATABASE [AdventureWorks2019]
FROM DISK = '/backup/AdventureWorksLT2019.bak'
WITH MOVE 'AdventureWorksLT2012_Data' TO '/var/opt/mssql/data/AdventureWorks2019.mdf',
MOVE 'AdventureWorksLT2012_Log' TO '/var/opt/mssql/data/AdventureWorks2019_log.ldf',
FILE = 1,  NOUNLOAD,  STATS = 5

GO