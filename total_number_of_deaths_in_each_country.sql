CREATE DATABASE COVID_DB;
USE COVID_DB;


--Show the total number of deaths in each country, including provinces/states, for a given date.
	  
SELECT 
    covid_19_clean_complete.Country_Region,
    worldometer_data.TotalDeaths AS TotalDeaths,
    MAX(covid_19_clean_complete.Province_State) AS Province_State
FROM
    covid_19_clean_complete
LEFT OUTER JOIN
    worldometer_data ON covid_19_clean_complete.Country_Region = worldometer_data.Country_Region
WHERE
    worldometer_data.TotalDeaths IN (
        SELECT worldometer_data.TotalDeaths 
        FROM worldometer_data
    )
    AND covid_19_clean_complete.DATE IN (
        SELECT MAX(covid_19_clean_complete.DATE) 
        FROM covid_19_clean_complete
    )
GROUP BY 
    covid_19_clean_complete.Country_Region,
	worldometer_data.TotalDeaths 
ORDER BY 
covid_19_clean_complete.Country_Region;
