USE COVID_DB;
--Develop a UDF to calculate the mortality rate (deaths / confirmed cases * 100) for a given country.

create function mortalityrate(@COUNTRY VARCHAR(225))
RETURNS DECIMAL(10,2)

BEGIN 
       DECLARE @MORTALITYRATE DECIMAL(10,2)

	   SELECT @MORTALITYRATE = DEATHS * 100/CONFIRMED 
	   FROM COUNTRY_WISE_LATEST
	   WHERE COUNTRY_REGION = @COUNTRY
	   RETURN @MORTALITYRATE
	  
END;
GO

DROP FUNCTION dbo.mortalityrate;
SELECT dbo.mortalityrate('US');
SELECT * FROM country_wise_latest WHERE Country_Region ='US';







	 
	 






	  

      





	 
	 