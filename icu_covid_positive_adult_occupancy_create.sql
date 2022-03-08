USE [covid_19_hosp_usa]
GO

/****** Object:  Table [dbo].[covid_bed_data_unfiltered]    Script Date: 1/28/2022 11:04:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[icu_covid_positive_adult_occupancy](
	[hospital_pk] [varchar](50) NULL,
	[collection_week] [date] NULL,
	[percent_icu_beds_occ_covid_positive_adult] [numeric](18, 0) NULL
) ON [PRIMARY]
GO


