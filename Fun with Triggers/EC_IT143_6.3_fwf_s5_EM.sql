
--Q2: How to keep track of when arecord was last modified?
--A2: Maybe use an after update trigger?


--Q3: Did it work?
--A3: Well let's see... yup

--Remove stuff if it is already there
DELETE FROM [dbo].[t_Hello__World]
 WHERE my_message IN ('Hello_World2', 'Hello_World3', 'Hello_World4');

--load test rows
INSERT INTO [dbo].[t_Hello__World] (my_message)
VALUES ('School_Work'), ('Home_Work');

--see if the trigger worked
 Select t.*
 from [dbo].[t_Hello__World] as t;

 --try it again
 update [dbo].[t_Hello__World] 
 set my_message = 'Hello_World4'
 where my_message = 'Hello_World3';

 --see if the trigger worked
 Select t.*
 from [dbo].[t_Hello__World] as t;













