
CREATE FUNCTION [dbo].[udf_parse_Last_Name]
(@v_combined_name AS VARCHAR(500)
)
RETURNS VARCHAR(100)


/***********************************************************************************
******************************
NAME: dbo.udf_parse_Last_Name
PURPOSE: Parse_Last_Name
MODIFICATION LOG:
Ver			Date			Author		Description
-----		----------		--------	--------------------------------------------
1.0			24/10/2023		EMBONG	1. Built this script for EC IT440

RUNTIME:
1s

NOTES:
Adopted from the following...
https://stackoverflow.com/a/74444288/22568494
*************************************************************************************/
BEGIN
	
	DECLARE @v_Last_Name AS VARCHAR(100);

	SET @v_Last_Name = SUBSTRING(@v_combined_name, CHARINDEX(' ', @v_combined_name), LEN(@v_combined_name));

	RETURN @v_Last_Name;

END;

GO

