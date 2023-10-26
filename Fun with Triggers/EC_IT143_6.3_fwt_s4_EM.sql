

CREATE TRIGGER trg_user_last_mod
ON [dbo].[t_Hello__World]
AFTER UPDATE
AS

/*****************************************************************************************************************
NAME: dbo.trig_user_last_modified
PURPOSE: To track user's last modified...

MODIFICATION LOG:
Ver			Date			Author			Description
-----		----------		--------		----------------------------------------------------------------------
1.0			24/10/2023		EMBONG			1. Built this script for EC IT440

RUNTIME:
1s

NOTES:
Keep track of last modified date of each row in the table
******************************************************************************************************************/

BEGIN
   SET NOCOUNT ON;
   UPDATE [dbo].[t_Hello__World]
   SET last_modified_date = GETDATE(), modified_by = SUSER_SNAME()
   FROM  [dbo].[t_Hello__World] t 
   INNER JOIN inserted i ON t.my_message = i.my_message 
END
GO





	