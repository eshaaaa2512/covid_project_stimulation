CREATE DATABASE COVID_DB;
USE COVID_DB;
--Which country has the highest number of confirmed cases on a specific date

SELECT 
    COUNTRY_WISE_LATEST.Country_Region,
    COUNTRY_WISE_LATEST.Confirmed AS CONFIRMED_CASES,
    full_grouped.Date
FROM 
    COUNTRY_WISE_LATEST
LEFT OUTER JOIN 
    full_grouped ON COUNTRY_WISE_LATEST.Country_Region = full_grouped.Country_Region
WHERE 
    COUNTRY_WISE_LATEST.Confirmed IN 
        (SELECT  MAX(COUNTRY_WISE_LATEST.Confirmed) 
         FROM COUNTRY_WISE_LATEST)
AND
    full_grouped.DATE IN
	  (SELECT MAX(full_grouped.DATE) 
	  FROM full_grouped);
	  



	 
	 