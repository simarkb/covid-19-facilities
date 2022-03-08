USE [covid_19_hosp_usa]
GO

/****** Object:  Table [dbo].[covid_vaccination_data_unfiltered]    Script Date: 1/30/2022 1:28:13 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[final_covid_vaccination_data](
	[hospital_pk] [varchar](50) NULL,
	[collection_week] [date] NULL,
	[no_doses_percent] [numeric](18, 0) NULL,
	[one_dose_percent] [numeric](18, 0) NULL,
	[all_doses_percent] [numeric](18, 0) NULL
) ON [PRIMARY]
GO


