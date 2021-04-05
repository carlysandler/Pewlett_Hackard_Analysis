# Pewlett_Hackard_Analysis
*Utilzing `PostgreSQL` and  `PGAdmin` to Query Relational Employee Database*
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
__Deliverable 2:__

Because there are an overwhelming amount of employees retiring soon, it is important to ascertain the viability of PH's efforts to thwart the detrimental affects of the mass retirement of employees. As PH starts to consider the efficacy of an internal mentorship program, I am tasked with providing foresight on the program's viability. 

To do so, the following information was queried into a new data table:

1) Which employees are eligible for the mentorship program if the parameters of eligibiity include:
  - Employees born in the year 1965,
  - Employees currently still with company?
2) Of these employees, what is their most recent title (to_date = '9999-01-01')?
3) Of these employees, how long have they been in the role (from_date)?

---

_mentorship_eligiblity.csv : The Employees Eligible for the Mentorship Program_

<img width="650" alt="mentorship_eligibility" src="https://user-images.githubusercontent.com/77628698/113530385-e6cf2b80-9593-11eb-9abc-e005e6f74260.png">


Both Deiverables are based on queries involved:
1) creating joined tables in SQL,
2) filtering on our retirement eligibility parameters, and
3) exporting our relational data tables as CSV files to submit to HR leadership.

---

### Results
Based on the queries performed, we can provide high-level insights to Pewlett-Hackard's HR depeartment.

- There are 29,414 Senior Engineers and 28,254 Senior Staff retiring soon. That means 64% of the Senior staff is retiring (~ 50,000 roles)
  -  This 64% can be argued to be even more catastrophic as expertise, seasoned profesionalism and company/industry knowledge are developed over time and cannot readily be replaced
-  Two managers at Pewlett-Hackard are retiring soon. Considering that there are only 9 departments with one current manager per department, a loss of 22% of managerial staff is worthy of concern. 
  -  Investments in training internally or recruiting qualified external candidiates will be necessary and imperative to the future operational success of the both the Sales and Research Teams 
- 1,549 employees are eligible to participate in the mentorship program. This number only makes up 1.7% of the total number of employees getting ready to retire soon.
 
### Summary

1) How many roles will need to be filled as the "silver tsunami" begins to make an impact
  
PH needs to prepare to fill a total of 90,398 roles. Besides the ~50,000 senior positions being vacatted, PH needs to prepare to lose 14,222 Engineers, 12,242 Staff, 4502 Technique Leaders, 1761 Assistant Engineers and 2 Managers.

2) Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett-Hackard employees?

Based on the parameters given, there are only 1,549 current employees that are retirement-ready (born in 1965) that qualify to mentor the next genreation of PH empkoyees. In the efforts of using the internal program as a safeguard asgainst a major loss in human captial, these numbers are bleak:
    
   - For every 58 new hires/replacement employees, there is only 1 mentor available. Unfortunatley, a 58:1 ratio provides little to none bandwidth to provide individual/personalized mentoring and training.
  
#### Suggesstions for Future Queries

   -I would suggest looking to increse the eligibility pool of mentors to offset this shortage of mentors and surplus of replacement hirees. This can be done by updating the query conditional filter to include another 10 year cohort of employees born between 1965-1975 who may not be "retirement ready" but are accomplished enough to mentor replacement hirees. 
     
     I argue that a good data scientist would query the summary statitics (standard deviantion, IQR) of the difference between to_date and from_date. This variable  would measure the time spent in a particular role, as expertise and professional development are not just a measure of absolute age, but also relative time spent at the company and how much one can contribute, thereby quickly climbing the hierachical corporate ladder . 
     
  - I believe HR would be able to pool together many more potential mentors if further queries looked into time spent in a particular role (those that are being vacated) as well as time spent working in a specific department. This query is especially important to HR in their efforts to replace the two managers that are retiring soon. By identifying the departments of these 2 managers (in retiring_titles), we can complete inner joins of the dept_emp table and titles table to delineate the amout of employees within each department (grouped by department) with an innner grouping of job title. The more granular we go, the more clear PH's focus will be on preparring for the invitable "Silver Tsunami."
