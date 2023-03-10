/*
   Saturday, February 4, 202310:34:56 PM
   User: 
   Server: DESKTOP-QH8S8CS
   Database: practice1
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
ALTER TABLE dbo.employees
	DROP CONSTRAINT FK__employees__dep_i__4AB81AF0
GO
ALTER TABLE dbo.department SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.department', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.department', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.department', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_employees
	(
	emp_id int NOT NULL,
	emp_name varchar(15) NOT NULL,
	job_name varchar(10) NOT NULL,
	manager_id int NOT NULL,
	hire_date date NOT NULL,
	salary decimal(10, 2) NOT NULL,
	commission decimal(7, 2) NULL,
	dep_id int NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_employees SET (LOCK_ESCALATION = TABLE)
GO
IF EXISTS(SELECT * FROM dbo.employees)
	 EXEC('INSERT INTO dbo.Tmp_employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
		SELECT emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id FROM dbo.employees WITH (HOLDLOCK TABLOCKX)')
GO
DROP TABLE dbo.employees
GO
EXECUTE sp_rename N'dbo.Tmp_employees', N'employees', 'OBJECT' 
GO
ALTER TABLE dbo.employees ADD CONSTRAINT
	PK_employees PRIMARY KEY CLUSTERED 
	(
	emp_id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.employees ADD CONSTRAINT
	FK_employees_department FOREIGN KEY
	(
	dep_id
	) REFERENCES dbo.department
	(
	dep_id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT
select Has_Perms_By_Name(N'dbo.employees', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.employees', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.employees', 'Object', 'CONTROL') as Contr_Per 