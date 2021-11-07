-- Challenge 1A
SELECT E.emp_no, E.first_name, 
	E.last_name,
	T.title, 
	T.from_date, 
	T.to_date
INTO retirement_titles
FROM employees AS E
INNER JOIN titles AS T
ON T.emp_no = E.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY T.emp_no ASC;

SELECT * from retirement_titles


-- CHALLENGE 1B
SELECT DISTINCT ON (T.emp_no) T.emp_no, 
	E.first_name, 
	E.last_name, 
	T.title
INTO unique_titles
FROM employees AS E
INNER JOIN titles AS T
ON T.emp_no = E.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (T.to_date = '1999-01-01')
ORDER BY T.emp_no ASC, T.to_date ASC

SELECT * from unique_titles


-- RETIRING TITLES
SELECT COUNT(*) as count, title 
INTO retiring_titles
FROM unique_titles 
GROUP BY title
ORDER BY count DESC


-- MENTORSHIP CANDIDATES
SELECT 
	DISTINCT ON (T.emp_no) T.emp_no, E.first_name, E.last_name, E.birth_date,
	DE.from_date, DE.to_date,
	T.title
INTO mentorship_candidates
FROM employees AS E
	JOIN dept_emp AS DE
	ON E.emp_no = DE.emp_no
	JOIN titles AS T
	ON T.emp_no = E.emp_no
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY  T.emp_no 