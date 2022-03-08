USE [covid_19_hosp_usa]
GO

INSERT INTO [dbo].[ed_covid_visits]
           ([hospital_pk]
           ,[collection_week]
           ,[ED_Covid_Visit_Percent])
SELECT hospital_pk, collection_week, (previous_day_covid_ED_visits_7_day_sum/previous_day_total_ED_visits_7_day_sum)*100
FROM [dbo].[COVID_19_RAW]
WHERE previous_day_covid_ED_visits_7_day_sum >= 0
AND previous_day_total_ED_visits_7_day_sum > 0          
GO


