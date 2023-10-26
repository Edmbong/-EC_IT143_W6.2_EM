
--Q2: How to set last modified by to server user?
--A2: Maybe use an after update trigger


ALter Table [dbo].[t_Hello__World]
ADD modified_by Varchar(100);