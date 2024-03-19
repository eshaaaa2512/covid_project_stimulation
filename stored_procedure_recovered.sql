CREATE DATABASE COVID_DB;
CREATE DATABASE COVID_DB;
USE COVID_DB;




CREATE PROCEDURE GetRecoveredCasesByCountryAndDate
(
    @Country VARCHAR(100),
    @Date DATE)
AS
BEGIN
   

    SELECT 
        TotalRecovered = covid_19_clean_complete.recovered
    FROM 
        covid_19_clean_complete
	 WHERE 
        covid_19_clean_complete.Country_Region = @Country  and 
		covid_19_clean_complete.Date = @date;
   

    
END
GO


DROP PROCEDURE GetRecoveredCasesByCountryAndDate

EXECUTE GetRecoveredCasesByCountryAndDate @country ='Afghanistan', @Date='2020-01-22'

select * from covid_19_clean_complete;
