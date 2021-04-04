-- Challenge Background

-- Management gives two more assignments:

	-- Deliverable 1: The Number of Retiring Employees by Title
	-- Deliverable 2: The Employees Eligible for the Mentorship Program
	-- Deliverable 3: A written report on the employee database analysis (README.md)
		-- prepare Bobby's manager for the "silver tsunami"

-- Deliverable 1 Instructions:
	-- Utilze ERD created (EmployeeDB) & SQL query experience:
		-- Create a Retirement Titles table that holds the titles of current employees who were born (1952-01-01 and 1955-12-31)
		-- Because some employees may have multiple titles in database (e.g. due to promotions):
			-- Need to use the 'DISTINCT ON' statement for most recent title of each employee
		-- Then use COUNT () function to create a final table that has the umber of retirement-age employees by most recent job title

-- Create a SQL file in the Queries folder of your Pewlett-Hackard-Analysis GitHub folder, and name it Employee_Database_challenge.sql.

-- Follow the instructions below to complete Deliverable 1.

-- 1. Retrieve the emp_no, first_name, and  last_name columns from the Employees table.

-- 2. Retrieve the title, from_date, and to_date columns from the Titles table.

-- 3. Create a new table using the INTO clause.

-- 4. Join both tables on the primary key.

-- 5. Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.

-- 6. Export the Retirement Titles table from the previous step as retirement_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.

-- 7. Before you export your table, confirm that it looks like this image:

-- Note: 
	-- There are duplicate entries for some employees because they have switched titles over the years. Use the following instructions to remove these duplicates and keep only the most recent title of each employee.

-- 8. Copy the query from the Employee_Challenge_starter_code.sql and add it to your Employee_Database_challenge.sql file.

-- 9a. Retrieve the employee number, first and last name, and title columns from the Retirement Titles table.

	-- 9b. These columns will be in the new table that will hold the most recent title of each employee.

-- 10. Use the DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.

-- 11. Create a Unique Titles table using the INTO clause.

-- 12. Sort the Unique Titles table in ascending order by the employee number and descending order by the last date (i.e. to_date) of the most recent title.

-- 13. Export the Unique Titles table as unique_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.

-- 14. Before you export your table, confirm that it looks like this image:

-- 15. Write another query in the Employee_Database_challenge.sql file to retrieve the number of employees by their most recent job title who are about to retire.

-- 16. First, retrieve the number of titles from the Unique Titles table.

-- 17. Then, create a Retiring Titles table to hold the required information.

-- 18. Group the table by title, then sort the count column in descending order.

-- 19. Export the Retiring Titles table as retiring_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.

-- 20. Before you export your table, confirm that it looks like this image:

-- Save your Employee_Database_challenge.sql file in your Queries folder in the Pewlett-Hackard folder.

-- Deliverable 1 Requirements

	-- A query is written and executed to create a Retirement Titles table for employees who are born between January 1, 1952 and December 31, 1955. (10 pt)

	-- The Retirement Titles table is exported as retirement_titles.csv. (5 pt)

	-- ​A query is written and executed to create a Unique Titles table that contains the employee number, first and last name, and most recent title. (15 pt)

	-- ​The Unique Titles table is exported as unique_titles.csv. (5 pt)

	-- A query is written and executed to create a Retiring Titles table that contains the number of titles filled by employees who are retiring. (10 pt)

	-- The Retiring Titles table is exported as retiring_titles.csv. (5 pt)

-- Deliverable 2: The Employees Eligible for the Mentorship Program(30 points)

-- Deliverable 2 Instructions

-- Using the ERD you created in this module as a reference and your knowledge of SQL queries, create a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.

-- In the Employee_Database_challenge.sql file, write a query to create a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program.

-- 1. Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.

-- 2. Retrieve the from_date and to_date columns from the Department Employee table.

-- 3. Retrieve the title column from the Titles table.

-- 4. Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.

-- 5. Create a new table using the INTO clause.

-- 6. Join the Employees and the Department Employee tables on the primary key.

-- 7. Join the Employees and the Titles tables on the primary key.

-- 8. Filter the data on the to_date column to get current employees whose birth dates are between January 1, 1965 and December 31, 1965.

-- 9. Order the table by the employee number.

-- 10. Export the Mentorship Eligibility table as mentorship_eligibilty.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.

-- 11. Before you export your table, confirm that it looks like this image:

	-- The mentorship table with the employee number, first and last name, birth date, from and to date for the current title, ordered by employee number.

-- Deliverable 2 Requirements:

	-- A query is written and executed to create a Mentorship Eligibility table for current employees who were born between January 1, 1965 and December 31, 1965. (25 pt)

	-- The Mentorship Eligibility table is exported and saved as mentorship_eligibilty.csv. (5 pt)

-- Deliverable 3: A written report on the employee database analysis (20 points)

-- Deliverable 3 Instructions

-- For this part of the Challenge, you’ll write a report to help the manager prepare for the upcoming "silver tsunami."

-- The analysis should contain the following:

	-- 1. Overview of the analysis: Explain the purpose of this analysis.

	-- 2. Results: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.

	-- 3. Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

		-- How many roles will need to be filled as the "silver tsunami" begins to make an impact?

		-- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

-- Deliverable 3 Requirements

-- Structure, Organization, and Formatting (6 points)
	
	-- The written analysis has the following structure, organization, and formatting:

	-- There is a title, and there are multiple sections. (2 pt)
	-- Each section has a heading and subheading. (2 pt)
	-- Links to images are working and displayed correctly. (2 pt)

-- Analysis (14 points)
	-- The written analysis has the following:

	-- 1. Overview of the analysis:
		-- The purpose of the new analysis is well defined. (3 pt)

	-- 2. Results:
		-- There is a bulleted list with four major points from the two analysis deliverables. (6 pt)

	-- 3. Summary:
		-- The summary addresses the two questions and contains two additional queries or tables that may provide more insight. (5 pt)

-- SUMBMISSION REQUIREMENTS:
	-- Deliverable 1
	-- Deliverable 2
	-- Deliverable 3

	-- Upload the following to your Pewlett-Hackard-Analysis GitHub repository:

	-- 1. The Queries folder with the Employee_Database_challenge.sql file

	-- 2. The Data folder with the retirement_titles.csv, unique_titles.csv, retiring_titles.csv, and mentorship_eligibilty.csv files
	
	-- 3. An updated README.md that has your written analysis