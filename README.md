# ADS-Planner
A tool to distribute INSA students into ADS sessions.

## ADS
ADS (Action Découverte des Spécialités) is a teaching module aimed at presenting the specialties of the engineering program at INSA to students in the preparatory program. This module consists of three sessions. Each student is asked to rank the specialties by preference to distribute them into the three half-day sessions.

The students concerned by ADS are the following:
- 2nd-year students 
- Repeating students
- 2/3 accomodations
- EMIR and MICA students
Each group is treated differently (details below).

## Inputs (spreadsheets)
- Students' choices
- Traditionnal track students list
- MICA students list
- EMIR students list

## Outputs (spreadsheets)
- List of students who have not responded
- Students' choices with an additional column for the final results

## Technology
### Why R ?
- Coherence: Integration with existing code already written in R
  - Generation of jury files
  - Assignment in departments
  - Generation of repeat contracts
  - ADS assignment

- Maintenance: Simpler with a single language

- Ease of manipulation: R facilitates data frame manipulation

- Longevity: R code is likely to remain stable over time compared to Python

- Statistics: R is the language of choice for statistics and data visualization, with statistics performed on other parts of the code.

- Ease of use of R-Shiny: Allows for web application development and graphical interface creation.
