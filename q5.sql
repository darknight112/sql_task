USE [practice1]
GO

SELECT [emp_id]
      ,[emp_name]
      ,[job_name]
      ,[salary],
	  FORMAT(hire_date,'MMMM/dd/yyyy')
  FROM [dbo].[employees]

GO


