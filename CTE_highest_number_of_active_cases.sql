USE COVID_DB;

WITH CTE_highestnumberofactivecases AS
( 
  
      select Country_Region,max(active) as maximumactivecases
	  

	  from country_wise_latest
	  where COUNTRY_WISE_LATEST.Confirmed IN 
        (SELECT  MAX(COUNTRY_WISE_LATEST.Confirmed) 
         FROM COUNTRY_WISE_LATEST)

	  group by Country_Region
	   

)

SELECT country_region,maximumactivecases from  CTE_highestnumberofactivecases;






	 
	 






	  

      





	 
	 