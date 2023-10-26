
--Q: How to extract first name from contact name?

-- A: Well, here is your problem...
-- CustomerName = Alejandra Camino -> Alejandra
-- Google search "How to extract first name from combined name tsql stack overflow"
-- https://stackoverflow.com/questions/5145791/extracting-first-name-and-last-nam

SELECT	t.CustomerID
	,	t.CustomerName
	,	t.ContactName
	,	dbo.udf_parse_first_name(t.ContactName) As ContactName_First_Name
	,	dbo.udf_parse_Last_Name(t.ContactName) AS ContactName_Last_Name
	,	t. Address
	,	t.City
	,	t.Country
FROM dbo.v_w3_schools_customers AS t
order by 3;