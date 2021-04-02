-- DELIVERABLE 1: Number of Retiring Employees by Title

-- (I) Create Retirement Titles CSV file
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;
-- Confirm table query
SELECT * FROM retirement_titles;

-- (II) Use DISTINCT ON with ORDER BY to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;
-- Confirm table query
SELECT * FROM unique_titles;

-- (III) Retrieve the number of employees (COUNT on unique job titles)
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT DESC;
-- Confirm table query
SELECT * FROM retiring_titles;

-- DELIVERABLE 2: The Employees Eligible for the Mentorship Program

-- (I) Create Mentorship Eligibility table
SELECT DISTINCT ON(emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON(e.emp_no = de.emp_no)
INNER JOIN titles as t
ON(e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01'AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;
-- Confirm table query
SELECT * FROM mentorship_eligibility;

-- DELIVERABLE 3: Written Summary of Analysis & Findings
-- Summary Code: High-level insights 

-- (I) COUNT the number of roles needed to be filled due to impending "silver tsunami" 

-- (II) Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of PH employees?