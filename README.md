# ADS-Planner
A tool to distribute INSA students in ADS sessions.

## ADS
ADS (Action Découverte des Spécialités) is a teaching module aimed at presenting the specialties of the engineering program at INSA to students in the preparatory program. This module is composed of 3 sessions. Each students is asked to rank the specialities by preference, in order to distribute then into the three half-day sessions. 

The students concerned by ADS are the following:
- 2nd year students 
- Repeating students
- 2/3 accomodations
- EMIR and MICA students
Each group are treated differently (details below).

## Inputs (spreadsheets)
- Students choices
- Traditionnal track students list
- MICA students list
- EMIR students list

## Outputs (spreadsheets)
- List of students who have not responded
- Students choices with an additionnal column with the final results

## Technology
### Why R ?
- Coherence: Integration with existing code already in R
  - Generation of jury files
  - Assignment in departments
  - Generation of repeat contracts
  - ADS assignment

- Maintenance: simpler with a single language

- Ease of manipulation of data frames with R

- Longevity of the code over time compared to Python (version stability)

- Statistics performed on other parts of the code
  - R as the language of choice for statistics and data visualization

- Ease of use of R Shiny (web application, graphical interface
