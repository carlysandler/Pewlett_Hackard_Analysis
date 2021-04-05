# Pewlett_Hackard_Analysis
*Utilzing `PostgreSQL` and  `PGAdmin` to Analyze, Relational Employee Database*
---
## Overview of Project:
This project was assigned by the Human Resources Department at Pewlett Hackard--the company seeked help in the preparation for the incoming "Silver Tsnuami", a period in time where a record number of baby boomers across the country will begin to retire. The goal of this project is to mitigate the potential negative affects of lossing substanstial human capital, and not just any human capital, those of seniority and expertise. Losing a substanial amount of senior roles could leave Pewlett Hackard with unparalleled vacancies across the entire company. This could lead to substanically low productivity in output and,even worse,  incrementally high costs of recruiting and training replacements of retireees. 

To aid in the readiness for the "silver Tsunami", I specifically was asked to query the newly created PostgresSQL database, EmployeeDB, to retrieve the following information: 

__Deliverable 1:__
1) The count of retirement-eligible, current employees that are leaving their roles soon
2) Of these employees (retirees):
    a) What titles or roles do we need to be most concerned about in terms of future vaccancy?
    b) How many vaccancies will there be for each role being lost?

---
_retiring_titles.csv : The Number of employees retiring by job title_

<img width="248" alt="retiring_titles" src="https://user-images.githubusercontent.com/77628698/113529567-bdad9b80-9591-11eb-9cd2-198f1b26eb1e.png">
---
Because there are an overwhelming amount of employees retiring soon, it is important to ascertain the viability of PH's efforts to thwart the detrimental affects of the mass retirement of employees. As PH starts to consider the efficacy of an internal mentorship program, I am tasked with providing foresight on the program's viability. To do so, the following information was queried into a new data table.

__Deliverable 2:__
1) Which employees are eligible for the mentorship program if the parameters of eligibiity include:
  - Employees born in the year 1965 
  - Employees currently still with company
2) Of these employees, what is their most recent title (to_date = '9999-01-01')?
3) Of these employees, how long have they been in the role (from_date)?
---
_mentorship_eligiblity.csv : The Employees Eligible for the Mentorship Program_

<img width="650" alt="mentorship_eligibility" src="https://user-images.githubusercontent.com/77628698/113530385-e6cf2b80-9593-11eb-9abc-e005e6f74260.png">


Both Deiverables are based on queries involved:
1) creating joined tables in SQL,
2) filtering on our retirement eligibility parameters, and
3) exporting our relational data tables as CSV files to submit to HR leadership.

### Results
Based on the queries performed, we can provide high-level insights to Pewlett-Hackard's HR depeartment.

--
--
--
--



#### Summary

 
