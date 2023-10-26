
--Q: How to extract Last name from contact name?

--A: Well, here is your problem...
--CustomerName = Ann Devon -> Devon
-- Google search "How to extract Last name from combined name tsql stack overflow"
-- https://stackoverflow.com/a/74444288/22568494

WITH s1 --Use a common table epression and compare Last_Name and Last_Name2
AS (SELECT t.contactName
    ,SUBSTRING(contactName, CHARINDEX(' ', contactName), LEN(contactName)) AS LastName
	,dbo.udf_parse_Last_Name(t.ContactName) AS Last_Name2
FROM dbo.t_w3_schools_customers AS t)
SELECT s1.*
	FROM s1
	WHERE s1.LastName <> s1.Last_Name2; -- Expected result is 0 rows



