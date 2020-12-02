# ETL- Group Project: Extract, Transform, Load
# Insight into the Opioid Epidemic from Rates of Prescription and Overdose Deaths  

![Alt Text](https://www.kemahpalms.com/wp-content/uploads/2020/05/Opioid-Epidemic.jpeg)

### Team Members:
> * Chahnaz Kbaisi ([Chahnaz-Kbaisi](https://github.com/Chahnaz-Kbaisi))
> * Susan Thomas ([SusanCThomas](https://github.com/SusanCThomas))
> * Prarthna Ashutoshmunidottir ([Prarthna-design](https://github.com/Prarthna-design))

# Table of Contents

* [Project Description](#project-description) 
* [Research Areas](#research-areas) 
* [Project Key Areas of Investigation](#project-key-areas-of-investigation)

  [Part 1](#part-1) | [Part 2](#part-2) | [Part 3](#part-3) 
  ----------------- | ----------------- | ----------------- |
  [Key Question Part 1](#key-question-part-1) |  [Key Question Part 2](#key-question-part-2) | [Key Questions Part 3](#key-questions-part-3) | 
  [Data Sources Part 1](#data-sources-part-1) |  [Data Sources Part 2](#data-sources-part-2) | [Data Sources Part 3](#data-sources-part-3) |
* [Extract](#extract) 
* [Transform](#transform) 
* [Load](#load) 
* [Process Limitations](#process-limitations) 
* [Data Analysis](#data-analysis)
* [Languages And Libraries](#languages-and-libraries)


# Project Description:

This project assesses the prescribing of opioid drugs across the US from 1999 to 2014, focusing on changes in prescription rates at Veterans Affairs sites from 2012 to 2018, and details relevant information on the types of medical facilities and dispensers that provide them. It describes the rate of usage by race, education and family income. The analysis also shows the rates of overdose that have led to death in the US. Using claims for medically-assisted treatment and deaths from overdose from counties in California, we will determine if there is an association between seeking treatment for opioid abuse and subsequent death. 

# Research Areas:

After picking a topic, we developed some key questions to inform our data search. Then, we narrowed down the unfiltered data to a few datasets for each part to then take a closer look and pick the sets that could potentially be analyzed to answer our key questions. We used a team approach by which every member was able to engage in each of the steps so that learning, usage and application would be as comprehensive as possible. Each team member studied their respective dataset and then downloaded the files to begin the extraction step.

# Project Key Areas of Investigation:
***

# Part 1: 

* **Part_1**

### Assessing Opioid Prescriptions across the US from 1999 to 2014 

# Key Question Part 1: 

### What is the rate of opioid prescriptions across the US from 1999 to 2014?

# Data Sources Part 1: 

  - [Opioid Prescribing Rates at VA Facilities 2012 - 2018](https://catalog.data.gov/dataset/opioid-prescribing-rates-at-va-facilities-2012-2018) 
  - [Opioid Prescriptions Dispensed](https://data.world/jessicayung/opioid-prescriptions-dispensed)

# Part 2:

* **Part_2**

### Information on Opioid Dispensers in the US 

# Key Question Part 2:  

### What is the relevant information about dispensers and medical facilities?

# Data Sources Part 2: 

  - [Opioid Overdose Deaths](https://data.world/health/opioid-overdose-deaths)
  - [U.S. Opiate Prescriptions/Overdoses](https://www.kaggle.com/apryor6/us-opiate-prescriptions)

# Part 3:

[Part_3](https://github.com/Chahnaz-Kbaisi/ETL-Project/tree/main/Part_3)

### Demographic information on opioid usage and overdose death across the US

# Key Questions Part 3:  

  * What is the prevalence of overdose deaths across the US from 1999 to 2014?
  * What are the rates of usage organized by demographics across the US?
  * Using California as a model, is there a relationship between enrollments in medically-assisted facilities and rates of overdose deaths?
  * What are the total number of opioid overdose deaths for each state between 1999 and 2018?
  
# Data Sources Part 3: 
[Part 3 Resources with all datasets](https://github.com/Chahnaz-Kbaisi/ETL-Project/tree/main/Part_3/Resources)
***
  - [Opioid Overdose Deaths](https://data.world/health/opioid-overdose-deaths)
  - [Drug Use, Employment, Work Absence, Income, Race, Education](https://data.world/balexturner/drug-use-employment-work-absence-income-race-education)
  - [Medication-Assisted Treatment in Medi-Cal for Opioid Use](https://data.world/chhs/8329a339-ab77-4d05-ab7a-405d0ae5765c)
  - [Opioid related deaths by state with demographics (Built dataset at)](https://wonder.cdc.gov/controller/datarequest/D76)
    
    Note: Usage of the CDC Wonder database requires acceptance of the sites rules. Once in the form, user must provide search criteria for the specific data types              and the categories of inclusion. The data herein was built with the following inclusion criteria: state, year, gender, race, and mortality due to opioid overdose (ICD-40). 
         
# Extract
***

* Extraction of data was from csv source files
* Deep exploration of data content
* Data retrieval for extraction and writing code
* Read csv files and saved into pandas dataframe

# Transform
***

* Transformed data to accommodate project objectives
* Cleaned the data and removed the null
* Selected and renamed the needed columns
* Removed columns of data that were irrelevant 
* Created the new dataset with selected columns
* Checked the data types to prevent errors during loading

# Load
***

* Selected postgres to load the datasets into a database
* Created three different databases, one for each project part
* Adjusted ETL pipeline for ease of use and navigation to the database for analysis
* Created connection to postgres during loading
* Created tables in pgAdmin localhost [Tables](https://github.com/Chahnaz-Kbaisi/ETL-Project/blob/main/Part_3/usage_overdose_us.sql)
* Loaded the new datasets into the tables

# Process Limitations
***

* Identifying datasets that contained appropriately identified opioid usage classification
* Reconciling variations in mortality indicators
* Dealing with missing data and nominal data parameters that needed to transformed to boolean

# Data Analysis
***

* Analyzed data to answer parts of key questions 
* Combined data from different datasets that were misaligned
* Reconciled variations in data forms to ensure proper joining
* Created plots based on joined data and built dataset

# Part 3 Analysis:
### Plot 1: 

> The below Plotly Express shows the number of annual deaths between 1999 & 2018 for all states. This data was acquired from the CDC's wonder database by quering specific paramters and using the ICD-10 codes for opioid related deaths.

![States Overdose Deaths](https://github.com/Chahnaz-Kbaisi/ETL-Project/blob/main/Part_3/SnapShoots/states_overdose_animated_map_snapshoot.png)

> Plot Summary: In this plot, hovering over individual data points provides details on each states overdose death by year. Between 1999 and 2018, California had th highesy number of death and the greatest increases over that time span. On the other hand, Colorado appears to have the lowest death rates over approximately the same period.

### Plot 2:

> The below Plotly Express shows the number of annual deaths between 1999 & 2014 for all states by gender. 

![States Overdose Deaths By Gender](https://github.com/Chahnaz-Kbaisi/ETL-Project/blob/main/Part_3/SnapShoots/gender_death_state_screenshoot.png)

> Plot Summary: The plot above shows the number of deaths by gender in each state from 1999 to 2014. Males in both California and Florida had the most deaths over that period with a doubling of the numbers.

[For further analysis of part 3 refer to Part 3 Jupyter Notebook](https://github.com/Chahnaz-Kbaisi/ETL-Project/blob/main/Part_3/usage_overdose_us.ipynb)

# Languages And Libraries
***
> * Jupyter Notebook
> * PostgresSQL 
> * SQLAlchemy
> * Python
> * Pandas
> * Plotly Express

  
  
  






