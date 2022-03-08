USE [covid_19_hosp_usa]
GO

INSERT INTO [dbo].[covid_inpatient_adult_occupied]
           ([hospital_pk]
           ,[collection_week]
           ,[covid_inpatient_adult_percentage])
SELECT hospital_pk, collection_week, covid_inpatient_adult_percentage
FROM [LAPTOP-J47SJ9BP\simar].[covid_inpatient_adult_occupied]



