USE [covid_19_hosp_usa]
GO

INSERT INTO [dbo].[final_covid_vaccination_data]
           ([hospital_pk]
           ,[collection_week]
           ,[no_doses_percent]
           ,[one_dose_percent]
           ,[all_doses_percent])
SELECT  
hospital_pk, 
collection_week, 
(total_personnel_covid_vaccinated_doses_none_7_day/(total_personnel_covid_vaccinated_doses_none_7_day + total_personnel_covid_vaccinated_doses_one_7_day + total_personnel_covid_vaccinated_doses_all_7_day))*100, 
(total_personnel_covid_vaccinated_doses_one_7_day/(total_personnel_covid_vaccinated_doses_none_7_day + total_personnel_covid_vaccinated_doses_one_7_day + total_personnel_covid_vaccinated_doses_all_7_day))*100, 
(total_personnel_covid_vaccinated_doses_all_7_day/(total_personnel_covid_vaccinated_doses_none_7_day + total_personnel_covid_vaccinated_doses_one_7_day + total_personnel_covid_vaccinated_doses_all_7_day))*100
FROM [dbo].[COVID_19_RAW]
WHERE (total_personnel_covid_vaccinated_doses_none_7_day + total_personnel_covid_vaccinated_doses_one_7_day + total_personnel_covid_vaccinated_doses_all_7_day) > 0
           


