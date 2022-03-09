# Analyzing COVID-19’s Impact on U.S. Hospitals and Health Facilities #
[Objectives](#Objectives "Goto Objectives")

## Outline ##
[Objectives](#Objectives "Goto Objectives")
* [Key terms](#Key-terms "Goto Key-terms")
* [Scope](#Scope "Goto Scope")
* [Assumptions](#Assumptions "Goto Assumptions")
* [Technology Stack](#Technology-Stack "Goto Technology-Stack")
* [Process](#Process "Goto Process")
* [Findings](#Findings "Goto Findings")
* [COVID-19 Positive Adult ICU Occupancy](#COVID-19-Positive-Adult-ICU-Occupancy "Goto COVID-19-Positive-Adult-ICU-Occupancy")
* [COVID-19 Related Emergency Department Visits](#COVID-19-Related-Emergency-Department-Visits "Goto COVID-19-Related-Emergency-Department-Visits")
* [Recommendations](#Recommendations "Goto Recommendations")
* [Next Steps](#Next-Steps "Goto Next-Steps")

## Objectives ##
Analyze COVID-19 Hospitalization Capacity by Facility Data to understand trends in bed occupancy and vaccination.
Month
Location
Create forecasts for the next 25 weeks
Provide recommendations for hospital systems based on location and past bed occupancy trends

## Key Terms ##
Urban – area with a population > 1,000 persons per mile
Rural – area outside of Urban areas
Urban Clusters – collection of densely settled blocks adding up to between 2,500 – 50,000 people
Micropolitan Area –Urban clusters between 10,000 -50,000 people
Micropolitan Area –Urban clusters of 50,000 or more people

## Scope ##
### In-Scope ###
Adult ICU bed occupancy (COVID-19 positive cases)
COVID-19 related Emergency Department visits
National U.S. analysis
13-week forecast of ICU bed occupancy by COVID-19 positive and Emergency Department visits related to COVID-19

### Out-of-Scope ###
International analysis
Clinical data analysis
Biomedical findings
Demographic analysis
Laboratory testing
Patient demographics
COVID-19 diagnostic criteria
Co-existing illnesses
COVID-19 variants

## Assumptions ##
All data was collected on a weekly basis
Micropolitan Area – Area consisting of 10,000 to 50,000 people
Metropolitan Area –Area consisting of more than 50,000 people
Facilities in Metropolitan and Micropolitan area were combined
Any reported quantitative values below zero considered erroneous or invalid
Socioeconomic factors not considered

## Technology Stack ##
Microsoft SQL Server
Tableau Desktop
Microsoft Excel
R

## Process ##
### Extraction ###
Obtained dataset from HealthData.gov
The COVID-19  Reported Patient Impact and Hospital Capacity by Facilities RAW CSV file was exported from HealthData.gov onto local drive
Microsoft Excel was used to eliminate any unnecessary columns from all cells using Find All and Replace function
Database named covid_19_hosp_usa created on Microsoft SQL Server
Dataset imported into local server using the SQL Server Import and Export Data Tool

### Transformation ###
Data Type Modification
All identification and qualitative data was converted to Varchar(100) format
All quantitative data was converted to numeric(18,0) format

Data Normalization 
master_hosp_info table created using 
CREATE TABLE Query
INSERT INTO, SELECT DISTINCT, FROM Query used to obtain unique facility information
Primary key: hospital_pk
5054 unique Facilities
Attributes: hospital_pk, state, ccn, hospital_name, address, zip, hospital_subtype, fips_code, is_metro_micro, geocoded_hospital_address
master_dates table created using 
CREATE TABLE Query
INSERT INTO, SELECT DISTINCT, FROM Query used to obtain unique collection dates
Primary key: collection_week
76 unique dates
Attribute: collection_week
Covid_bed_data_unfiltered_sums table created using 
CREATE TABLE Query
INSERT INTO, SELECT, FROM Query used to obtain staffed bed data for each collection week.
378,976 observations
For each observation, 7-day sums for values describing number of staffed beds and usage were collected
Ed_covid_visits table created using CREATE TABLE Query
INSERT INTO, SELECT DISTINCT, FROM Query used to obtain unique collection dates
76 unique dates
For each observation, 7-day sums for values describing number of staffed beds and usage were collected
Calculations
icu_covid_positive_adult_occupancy table created 
using CREATE TABLE Query
Columns: hospital_pk, collection_week, percent_icu_beds_occ_covid_positive_adult
INSERT INTO, SELECT, FROM, WHERE Query used to obtain Adult ICU bed data for each collection week.
SELECT statement used to calculate percentage of ICU beds occupied by COVID-19 positive adults.
(staffed_icu_adult_patients_confirmed_covid_7_day_sum/ total_icu_beds_7_day_sum) * 100
WHERE statement used to filter out observations with total_icu_beds_sum_7_day_sum <= 0 and staffed_icu_adult_patients_confirmed_covid_7_day_sum <0
378,976 observations
ed_covid_visits table created using 
CREATE TABLE Query
Columns: hospital_pk, collection_week, ED_Covid_Visit_Percent
INSERT INTO, SELECT, FROM, WHERE Query used to obtain COVID-19 related Emergency Department visits for each collection week.
SELECT statement used to calculate percentage of Emergency Department visits that were COVID-19 related visits (suspected + confirmed patients).
(previous_day_covid_ED_visits_7_day_sum / previous_day_total_ED_visits_7_day_sum) * 100
WHERE statement used to filter out observations with previous_day_total_ED_visits_7_day_sum <= 0 and previous_day_covid_ED_visits_7_day_sum <0
378,976 observations

Filtration criteria
Relevant quantitative data must be zero or a positive value
Any variable used as a denominator must by > 0

### Data Loading ### 
Target: Tableau Desktop

Steps
Established a live connection between covid_19_hosp_usa database and target using Tableau’s pre-installed Microsoft SQL Server connection driver
Used right joins to merge data from one table with master_hosp_info

## Findings ##
COVID-19 Positive Adult ICU Occupancy
Past Data 
Notable surges in average ICU bed occupancy in the following weeks for all U.S cities: 
September 20th 2020 to December 27th 2020
June 20th 2021 to August 29th 2021
Notable surges in average ICU bed occupancy in the following weeks for rural U.S cities: 
September 6th 2020 to January 3rd 2021
July 4th to August 22nd 2021
Notable surges in average ICU bed occupancy in the following weeks for metropolitan and micropolitan U.S cities: 
September 13th 2020 to December 27th 2020
June 20th 2021 to August 29th 2021

Forecast for ICU Bed Occupancy
Expected 194% surge in average ICU Occupancy due to Adult COVID-19 Positive cases nationwide between January 23rd 2022 and April 24th 2022.
46.8% -> 137.8%
Expected 67.02% surge in average ICU Occupancy due to Adult COVID-19 Positive cases in Rural cities between January 23rd 2022 and April 24th 2022.
31.95% -> 53.38%
Expected 207.5% surge in average ICU Occupancy due to Adult COVID-19 Positive cases in Metropolitan and Micropolitan cities between January 23rd 2022 and April 24th 2022.
48.2% -> 148.2%

COVID-19 Related Emergency Department Visits
Past Data 
Notable surges in average Emergency Department Visits in the following weeks for all U.S cities: 
September 27th 2020 to November 27th 2020
June 27th 2021 to August 15thth 2021
December 5th 2021 to December 26th 2021
Notable surges in average ICU bed occupancy in the following weeks for rural U.S cities:
August 30th 2020 to November 8th 2020
June 27th 2021 to August 15th 2021
December 12th 2021 to January 2nd 2022
Notable surges in average ICU bed occupancy in the following weeks for metropolitan and micropolitan U.S cities: 
October 18th 2020 to November 27th 2020
June 27th 2021 to August 15th 2021
December 5th 2021 to December 25th 2021

Forecast
Expected 281.7% surge in average ICU Occupancy due to Adult COVID-19 Positive cases nationwide between January 23rd 2022 and April 24th 2022.
38.2% -> 145.8%
Expected 148.4% surge in average ICU Occupancy due to Adult COVID-19 Positive cases in rural cities between January 23rd 2022 and April 24th 2022.
32.0% -> 79.5%
Expected 328.1% surge in average ICU Occupancy due to Adult COVID-19 Positive cases in micropolitan and metropolitan cities between January 23rd 2022 and April 24th 2022.
39.8% -> 170.4%

## Recommendations ##
Metropolitan and micropolitan facilities will need to increase preparation for future COVID-19 cases.
Suggestions to reduce ICU facility and Emergency Department surges
Encourage preventative measures
Wearing a mask
Self-quarantine
Maintaining adequate diet
Regular testing
Limit exposure to closed space areas
COVID-19 Vaccination (Health workers and other individuals)
Symptom management
Access to provider-patient communication
At-home care

## Next Steps ##
Update database with most recent dataset
Factors to consider
Type of facilities
COVID-19 Variants
Coexisting illnesses (ex: influenza)
Patients suspected of COVID-19

## Sources ##
U.S Census Bureau
Healthdata.gov
