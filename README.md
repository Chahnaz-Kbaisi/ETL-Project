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
* [Part 1](#part-1)
* [Key Question Part 1](#key-question-part-1) 
* [Data Sources Part 1](#data-sources-part-1) 
* [Part 2](#part-2)  
* [Key Question Part 2](#key-question-part-2) 
* [Data Sources Part 2](#data-sources-part-2) 
* [Part 3](#part-3) 
* [Key Questions Part 3](#key-questions-part-3) 
* [Data Sources Part 3](#data-sources-part-3) 
* [Extract](#extract) 
* [Transform](#transform) 
* [Load](#Load) 
* [Process Limitations](#process-limitations) 
* [Data Analysis](#data-analysis)
* [Languages & Libaraties](#languages-&-libraries)


# Project Description:

This project assesses the prescribing of opioid drugs across the US from 1999 to 2014, focusing on changes in prescription rates at Veterans Affairs sites from 2012 to 2018, and details relevant information on the types of medical facilities and dispensers that provide them. It describes the rate of usage by race, education and family income. The analysis also shows the rates of overdose that have led to death in the US. Using claims for medically-assisted treatment and deaths from overdose from counties in California, we will determine if there is an association between seeking treatment for opioid abuse and subsequent death. 

# Research Areas:

After picking a topic, we developed some key questions to inform our data search. Then, we narrowed down the unfiltered data to a few datasets for each part to then take a closer look and pick the sets that could potentially be analyzed to answer our key questions. We used a team approach by which every member was able to engage in each of the steps so that learning, usage and application would be as comprehensive as possible. Each team member studied their respective dataset and then downloaded the files to begin the extraction step

## The Three Key areas we investigated are:
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

* **Part_3**

### Demographic information on opioid usage and overdose death across the US

# Key Questions Part 3:  

  * What is the prevalence of overdose deaths across the US from 1999 to 2014?
  * What are the rates of usage organized by demographics across the US?
  * Using California as a model, is there a relationship between enrollments in medically-assisted facilities and rates of overdose deaths?
  * What are the total number of opioid overdose deaths for each state between 1999 and 2018?
  
# Data Sources Part 3: 

  - [Opioid Overdose Deaths](https://data.world/health/opioid-overdose-deaths)
  - [Drug Use, Employment, Work Absence, Income, Race, Education](https://data.world/balexturner/drug-use-employment-work-absence-income-race-education)
  - [Medication-Assisted Treatment in Medi-Cal for Opioid Use](https://data.world/chhs/8329a339-ab77-4d05-ab7a-405d0ae5765c)
  - [Opioid related deaths by state with demographics (Built dataset at)](https://wonder.cdc.gov/controller/datarequest/D76)
  
# Extract
***

Our data source extraction was from csv files. After deep exploration of the data we needed for this project, we started the retrieval process by writing the code for extraction and then running it through transformation steps to get it ready for loading. In the extraction step, we read csv files and saved them into pandas dataframe for the next step. 

# Transform
***

Then we transformed the datasets to accommodate the objectives of our project, this included cleaning the data, removing the null data, selecting needed columns, renaming, picking and joining them. During this step, we were forced to drop some of the datasets because the columns we planned to use in the joining did not contain the necessary data for the process. We were then left with only two datasets that we could possibly join. Then we created the new datasets with selected columns and checked the data types to prevent errors during loading. We saved the new cleaned and modified datasets into an output folder in csv file form.

# Load
***

For the final step (i.e., loading), we picked postgres to load the datasets into a database. Since we divided our project into three parts, we decided to create three different databases, one for each part. In an effort to make our ETL pipeline easier to use, we adjusted it so users can navigate to the database they need for their analysis. During loading, we created the connection to postgres and then created tables in pgAdmin localhost, and finally loaded the csv files that we saved into the tables. This finalized our loading process and the ETL steps were completed.

# Process Limitations
***

We then attempted to analyze some of our data to answer parts of the key questions that were used to build our project. However, due to the limited time and the scope of the project we restricted our analysis to some rudimentary elements that highlight some of the data’s salient features. 

In combing the data, one of the major problems was that periods for different datasets varied and were hard to align. Moreover, classification of opioid related deaths is complex and applied differently across health agencies. Thus, we had to employ a simple definition for the event to standardized its tabulation in our data. Reporting of these data are complex and not all states provide the information uniformly, which makes combining of datasets challenging. In addition, due to the sensitive nature of this topic, some of the data is not available due to privacy issues, which creates gaps in the datasets. Finally, there were some inconsistencies in the transformed data because  some of the parameters were presented as true/false (nominal data) or female/male and needed to be converted to Boolean. 

# Data Analysis
***


# Languages & Libraries
***
> * Jupyter Notebook
> * PostgresSQL 
> * SQLAlchemy
> * Python
> * Pandas
> * Plotly Express

  
  
  






