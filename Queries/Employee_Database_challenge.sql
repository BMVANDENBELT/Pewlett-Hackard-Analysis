--Deliverable 1 
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


SELECT DISTINCT ON (rt.emp_no) 
    rt.emp_no,
    rt.first_name,
    rt.last_name,
    rt.title
INTO unique_titles
FROM retirement_titles as rt
WHERE rt.to_date = '9999-01-01'
ORDER BY rt.emp_no, rt.to_date DESC;


SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut 
GROUP BY ut.title
ORDER BY COUNT DESC;

SELECT * FROM retiring_titles

-- Deliverable 2
SELECT DISTINCT ON (e.emp_no)
	e.emp_no,
	e.first_name, 
	e.last_name, 
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibilty
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;


SELECT DISTINCT ON (rt.emp_no)
rt.emp_no,
rt.first_name,
rt.last_name,
rt.title,
de.dept_no,
d.dept_name
INTO unique_titles_by_dept
FROM retirement_titles as rt	
INNER JOIN dept_emp as de
	ON (rt.emp_no = de.emp_no)
INNER JOIN departments as d 
	ON (de.dept_no = d.dept_no)
ORDER BY rt.emp_no;


SELECT utbd.title, 
    utbd.dept_name,
    COUNT(utbd.title)
INTO roles_tbfilled
FROM unique_titles_by_dept AS utbd
GROUP BY utbd.dept_name, utbd.title
ORDER BY utbd.dept_name;


SELECT utbd.title,
    utbd.dept_name,
    COUNT(utbd.title)
INTO mentor_qualified_staff
FROM unique_titles_by_dept AS utbd
WHERE utbd.title IN (utbd.dept_name, utbd.title)
GROUP BY utbd.title IN ("Senior Engineer", "Senior Staff", "Technique Leader", "Manager")
ORDER BY utbd.dept_name;