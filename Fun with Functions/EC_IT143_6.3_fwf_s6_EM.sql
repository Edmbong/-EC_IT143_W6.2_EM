
--Q: How to extract Last name from contact name?

--A: Well, here is your problem...
--CustomerName = Ann Devon -> Devon
-- Google search "How to extract Last name from combined name tsql stack overflow"
-- https://stackoverflow.com/a/74444288/22568494

SELECT t.contactName
    ,SUBSTRING(contactName, CHARINDEX(' ', contactName), LEN(contactName)) AS LastName
	,dbo.udf_parse_Last_Name(t.ContactName) AS Last_Name2
FROM dbo.t_w3_schools_customers AS t
order by 1;