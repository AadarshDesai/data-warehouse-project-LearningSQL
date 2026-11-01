/*

=============================================================
Create Datebase and Schemas
=============================================================

Script purpose:
 This script creates new database named 'ProjectDataWarehouse' after checking if it already exists.
 If the database exists, it is dropped and recreated. Additionally, the scripts sets up three schemas 
 within the database: 'bronze', 'silver', 'gold'

WARNING:
 Running this script will drop the entire 'ProjectDataWarehouse' database if it exists.
 All data in the database will be permanently deleted. Proceed with caution
 and ensure you have proper backups before running this script.

*/

USE master;
GO

--Drop and recreate the 'ProjectDataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'ProjectDataWarehouse')
BEGIN
	ALTER DATABASE ProjectDataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE ProjectDataWarehouse;
END
GO


--Create Database 'ProjectDataWarehouse'
CREATE DATABASE ProjectDataWarehouse;
GO

USE ProjectDataWarehouse;
GO

--Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
