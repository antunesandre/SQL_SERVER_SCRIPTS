-- Script for delete a temporary table
-- You need to replace [Table Name] 

IF EXISTS (
		SELECT *
		FROM tempdb.dbo.sysobjects o
		WHERE o.xtype IN ('U')
			AND o.id = object_id(N'tempdb..#[Table Name]')
		)
BEGIN
	DROP TABLE #[Table Name];
END
