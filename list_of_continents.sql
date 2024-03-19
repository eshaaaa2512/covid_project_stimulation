CREATE DATABASE COVID_DB;
USE COVID_DB;


--List the continents along with the total number of confirmed cases, deaths, and recoveries.

SELECT 
       worldometer_data.Continent,
	   SUM(worldometer_data.TotalDeaths) AS TOTAL_DEATHS,
	   SUM(worldometer_data.TotalRecovered) AS TOTAL_RECOVERED,
	   SUM(country_wise_latest.Confirmed) AS CONFIRMED_CASE
FROM 
    worldometer_data
LEFT OUTER JOIN
    country_wise_latest
ON worldometer_data.Country_Region = country_wise_latest.Country_Region
WHERE 
    worldometer_data.Continent IS NOT NULL
GROUP BY 
       worldometer_data.Continent;