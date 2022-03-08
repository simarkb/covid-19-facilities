USE [covid_19_hosp_usa]
GO

INSERT INTO dbo.adult_covid_bed_occupancy_percent
           (hospital_pk,
           collection_week,
           percent_covid_case_occupancy)
SELECT hospital_pk,
       collection_week,
       (total_adult_patients_hospitalized_confirmed_covid_7_day_sum/total_beds_7_day_sum)*100 AS percent_covid_case_occupancy
FROM dbo.covid_bed_data_unfiltered
WHERE total_beds_7_day_sum > 0
AND total_adult_patients_hospitalized_confirmed_covid_7_day_sum >=0
     
         
GO


