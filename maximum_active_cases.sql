CREATE DATABASE COVID_DB;
USE COVID_DB;
--Which country has the highest number of confirmed cases on a specific date

SELECT Country_Region,
		DATE,
		Active AS MaxActiveOnSingleDay		
FROM full_grouped
WHERE Active IN 
	(SELECT MAX(ACTIVE)
	FROM full_grouped)