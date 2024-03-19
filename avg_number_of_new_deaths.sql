CREATE DATABASE COVID_DB;
USE COVID_DB;


--Calculate the average number of new deaths per day across all countries.

SELECT AVG(worldometer_data.TotalDeaths) as Average_Death from worldometer_data;