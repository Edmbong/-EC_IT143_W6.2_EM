
--Q4: How to creat a reminder email message?
--A4: Maybe use an after update trigger

alter table [dbo].[t_Hello__World]
add emial_reminder VARCHAR(50)
DEFAULT SUSER_NAME();