
--Q: How to extract Last name from contact name?

--A: Well, here is your problem...
--CustomerName = Ann Devon -> Devon

Select t.contactName
	From dbo.t_w3_schools_customers As t
	order by 1;