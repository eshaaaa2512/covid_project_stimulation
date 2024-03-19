USE COVID_DB;

--Develop a UDF to calculate the recovery rate (recovered / confirmed cases * 100) for a given country.

create function RECOVERYRATE(@COUNTRY VARCHAR(225))
RETURNS DECIMAL(10,2)

BEGIN 
       DECLARE @RECOVERYRATE DECIMAL(10,2)

	   SELECT @RECOVERYRATE = Recovered * 100/CONFIRMED 
	   FROM COUNTRY_WISE_LATEST
	   WHERE COUNTRY_REGION = @COUNTRY
	   RETURN @RECOVERYRATE

	  
END;


DROP FUNCTION dbo.mortalityrate;
SELECT dbo.RECOVERYRATE('US');
SELECT * FROM country_wise_latest WHERE Country_Region ='US';



  


	 
	 







	 
	 






	  

      





	 
	 