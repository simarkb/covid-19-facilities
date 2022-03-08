USE [covid_19_hosp_usa]
GO

INSERT INTO [dbo].[icu_covid_positive_adult_occupancy]
           ([hospital_pk]
           ,[collection_week]
           ,[percent_icu_beds_occ_covid_positive_adult])
SELECT [hospital_pk]
      ,[collection_week]
      ,([staffed_icu_adult_patients_confirmed_covid_7_day_sum]/[total_icu_beds_7_day_sum])*100
FROM [covid_19_hosp_usa].[dbo].[covid_bed_data_unfiltered]
WHERE [total_icu_beds_7_day_sum] > 0
AND [staffed_icu_adult_patients_confirmed_covid_7_day_sum] >= 0 
  
