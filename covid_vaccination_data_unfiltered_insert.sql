USE [covid_19_hosp_usa]
GO

INSERT INTO [dbo].[covid_vaccination_data_unfiltered]
           ([hospital_pk]
           ,[collection_week]
           ,[total_personnel_covid_vaccinated_doses_none_7_day]
           ,[total_personnel_covid_vaccinated_doses_one_7_day]
           ,[total_personnel_covid_vaccinated_doses_all_7_day])
SELECT [hospital_pk],[collection_week],
       [total_personnel_covid_vaccinated_doses_none_7_day],
	   [total_personnel_covid_vaccinated_doses_one_7_day],
       [total_personnel_covid_vaccinated_doses_all_7_day]
FROM [dbo].[COVID_19_RAW]
GO


