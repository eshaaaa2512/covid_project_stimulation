USE COVID_DB;

-- Use T-SQL to identify the country with the highest number of new cases reported on a specific date.

SELECT 
    Country_Region,
	Date,
    max(full_grouped.New_cases) AS TotalNumberOfNewCases
	FROM
    full_grouped

where 
     full_grouped.DATE IN (
        SELECT max(full_grouped.DATE)
        FROM full_grouped
)

GROUP BY
    Country_Region,date;




	 
	 






	  

      





	 
	 