USE [covid_19_hosp_usa]
GO

INSERT INTO [dbo].[covid_bed_data_unfiltered]
           ([hospital_pk]
           ,[collection_week]
           ,[total_beds_7_day_sum]
           ,[all_adult_hospital_beds_7_day_sum]
           ,[all_adult_hospital_inpatient_beds_7_day_sum]
           ,[inpatient_beds_used_7_day_sum]
           ,[all_adult_hospital_inpatient_bed_occupied_7_day_sum]
           ,[inpatient_beds_used_covid_7_day_sum]
           ,[total_adult_patients_hospitalized_confirmed_and_suspected_covid_7_day_sum]
           ,[total_adult_patients_hospitalized_confirmed_covid_7_day_sum]
           ,[total_pediatric_patients_hospitalized_confirmed_and_suspected_covid_7_day_sum]
           ,[total_pediatric_patients_hospitalized_confirmed_covid_7_day_sum]
           ,[inpatient_beds_7_day_sum]
           ,[total_icu_beds_7_day_sum]
           ,[total_staffed_adult_icu_beds_7_day_sum]
           ,[icu_beds_used_7_day_sum]
           ,[staffed_adult_icu_bed_occupancy_7_day_sum]
           ,[staffed_icu_adult_patients_confirmed_and_suspected_covid_7_day_sum]
           ,[staffed_icu_adult_patients_confirmed_covid_7_day_sum]
           ,[total_patients_hospitalized_confirmed_influenza_7_day_sum]
           ,[icu_patients_confirmed_influenza_7_day_sum]
           ,[total_patients_hospitalized_confirmed_influenza_and_covid_7_day_sum])
  SELECT hospital_pk,
  collection_week,
  total_beds_7_day_sum,
  all_adult_hospital_beds_7_day_sum,
  all_adult_hospital_inpatient_beds_7_day_sum,
  inpatient_beds_used_7_day_sum,
  all_adult_hospital_inpatient_bed_occupied_7_day_sum,
  inpatient_beds_used_covid_7_day_sum,
  total_adult_patients_hospitalized_confirmed_and_suspected_covid_7_day_sum,
  total_adult_patients_hospitalized_confirmed_covid_7_day_sum,
  total_pediatric_patients_hospitalized_confirmed_and_suspected_covid_7_day_sum,
  total_pediatric_patients_hospitalized_confirmed_covid_7_day_sum,
  inpatient_beds_7_day_sum,
  total_icu_beds_7_day_sum,
  total_staffed_adult_icu_beds_7_day_sum,
  icu_beds_used_7_day_sum,
  staffed_adult_icu_bed_occupancy_7_day_sum,
  staffed_icu_adult_patients_confirmed_and_suspected_covid_7_day_sum,
  staffed_icu_adult_patients_confirmed_covid_7_day_sum,
  total_patients_hospitalized_confirmed_influenza_7_day_sum,
  icu_patients_confirmed_influenza_7_day_sum,
  total_patients_hospitalized_confirmed_influenza_and_covid_7_day_sum
  FROM dbo.COVID_19_RAW
GO


