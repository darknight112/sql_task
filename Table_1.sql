/*
   Wednesday, March 1, 202312:16:53 AM
   User: 
   Server: DESKTOP-QH8S8CS
   Database: jdbc
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Table_1
	(
	name varchar(50) NULL,
	roll int NULL,
	class varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Table_1 SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Table_1', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Table_1', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Table_1', 'Object', 'CONTROL') as Contr_Per 