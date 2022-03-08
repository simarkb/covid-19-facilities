USE [covid_19_hosp_usa]
GO

/****** Object:  Table [dbo].[COVID_19_RAW]    Script Date: 1/22/2022 6:44:25 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[covid_bed_data](
	[hospital_pk] [varchar](50) NULL,
	[collection_week] [date] NULL,
	[total_beds_7_day_sum] [numeric](18, 0) NULL,
	[all_adult_hospital_beds_7_day_sum] [numeric](18, 0) NULL,
	[all_adult_hospital_inpatient_beds_7_day_sum] [numeric](18, 0) NULL,
	[inpatient_beds_used_7_day_sum] [numeric](18, 0) NULL,
	[all_adult_hospital_inpatient_bed_occupied_7_day_sum] [numeric](18, 0) NULL,
	[inpatient_beds_used_covid_7_day_sum] [numeric](18, 0) NULL,
	[total_adult_patients_hospitalized_confirmed_and_suspected_covid_7_day_sum] [numeric](18, 0) NULL,
	[total_adult_patients_hospitalized_confirmed_covid_7_day_sum] [numeric](18, 0) NULL,
	[total_pediatric_patients_hospitalized_confirmed_and_suspected_covid_7_day_sum] [numeric](18, 0) NULL,
	[total_pediatric_patients_hospitalized_confirmed_covid_7_day_sum] [numeric](18, 0) NULL,
	[inpatient_beds_7_day_sum] [numeric](18, 0) NULL,
	[total_icu_beds_7_day_sum] [numeric](18, 0) NULL,
	[total_staffed_adult_icu_beds_7_day_sum] [numeric](18, 0) NULL,
	[icu_beds_used_7_day_sum] [numeric](18, 0) NULL,
	[staffed_adult_icu_bed_occupancy_7_day_sum] [numeric](18, 0) NULL,
	[staffed_icu_adult_patients_confirmed_and_suspected_covid_7_day_sum] [numeric](18, 0) NULL,
	[staffed_icu_adult_patients_confirmed_covid_7_day_sum] [numeric](18, 0) NULL,
	[total_patients_hospitalized_confirmed_influenza_7_day_sum] [numeric](18, 0) NULL,
	[icu_patients_confirmed_influenza_7_day_sum] [numeric](18, 0) NULL,
	[total_patients_hospitalized_confirmed_influenza_and_covid_7_day_sum] [numeric](18, 0) NULL
) ON [PRIMARY]
GO


