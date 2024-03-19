USE COVID_DB;

--Create a CTE to calculate the percentage increase in confirmed cases for each country over the past week.

WITH CTE_CONFIRMEDCASES AS
( 
  
      select Country_Region, ((confirmed - Confirmed_last_week)* 100)/ (confirmed)  as percen

	  from country_wise_latest
	   

)

SELECT country_region,percen from  CTE_CONFIRMEDCASES;

select * from country_wise_latest;
    





	 
	 






	  

      





	 
	 