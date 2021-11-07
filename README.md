# Pewlett-Hackard Employees Analysis

## Overview 

A manager at Pewlett-Hackard has requested the company's employee data be brought up to current technology standards. Afterwards, he/she would like to run an analysis of the company's current workforce to:

- Determine  number of retiring employees
- Identify employees eligible to participate in a mentorship program
 
 ## Solution
 
 1. Create a Postgres database and import data currently in CSV format (see Fig. A)
 2. Create table (**retirement_info**) that holds info for employees born between 1952 and 1955
 3. Create table (**mentorship_candidates**) that holds info for employees born in 1965 

Fig. A
![Employee Database](https://raw.githubusercontent.com/khanh703/Pewlett-Hackard-Analysis/main/EmployeeDB.png)

## Results 
After creating the database, importing data, and running the analysis, here are our findings:

### Retiring Positions
 - Senior Engineer 22,770 
 - Senior Staff 22,003 
 - Engineer 19,997 
 - Staff 18,494
 - Technique Leader 4,502 
 - Assistant Engineer 2,630 
 - Manager 2

### Mentorship Candidates by Title
- Senior Staff 569
- Senior Engineer 529
- Engineer 190
- Staff 155
- Technique Leader 77
- Assistant Engineer 29

#### Download Data files

[Retirement Info](Data/unique_titles.csv)

[Retiring Titles](Data/retiring_titles.csv)

[Mentorship Candidates](Data/mentorship_eligibility.csv)


## Summary 
Based on the results, Pewlett-Hackard has a high number of employees that are eligible to retire in the next three years and not enough mentorship candidates to fill those positions. In addition to identifying and training candidates qualified for mentorship, we advise looking externally to fill the soon to be open positions as there is not enough mentorship candidates to fill all positions.
