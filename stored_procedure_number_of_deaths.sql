CREATE DATABASE COVID_DB;
CREATE DATABASE COVID_DB;
USE COVID_DB;


--Design a stored procedure to update the number of deaths for a specific country and date.

CREATE PROCEDURE UpdateDeaths (@Country VARCHAR(MAX),@RecoveredOnDate DATE)
AS
BEGIN
	UPDATE covid_19_clean_complete
	SET DEATHS=Deaths-2
	WHERE Country_Region=@Country AND
		Date=@RecoveredOnDate
END

EXEC UpdateDeaths @Country='US',@RecoveredOnDate='2020-03-02'