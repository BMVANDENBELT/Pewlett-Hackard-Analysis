# Pewlett-Hackard-Analysis
-----------------
# OVERVIEW
- The purpose of this analysis is to determmine the number of employees that will be retiring from Pewlett-Hackered while also evaluating it on a few different parameters (employees eligible for their mentorship program, the number of retirees per title, the number of roles that will need to be replaced due to the many individuals retiring.
![EmployeeDB](https://user-images.githubusercontent.com/107223178/187565163-d5ac7b7a-925b-499c-9db4-3354a684f221.png)
- The picture above diaplsays the relationship between each table and how they interact with onr another.

------------------
# RESULTS
- We first created the Retirement Titles table which displays employees born between January 1st, 1952 and December 31, 1955 (they are defined as "retirement age" pee their job titles. Some employees showed up mulitple times in the table output but that's because they have had different titles throughout their tenure at Pewlett-Hackard.

<img width="622" alt="retirement_titles" src="https://user-images.githubusercontent.com/107223178/187565705-69e790b3-3189-4c45-ba38-d55408230aba.png">

- Following that, we have the Unique Titles table which have only included the the employees that are retirement age but by their current role at Pewlett-Hackard. Thus, only showing up once in the data output.

<img width="483" alt="unique_titles" src="https://user-images.githubusercontent.com/107223178/188023364-8caf285e-91aa-437c-8706-80027452095b.png">

- The third table shows the count of retirement-age ready individuals that will be leaving Pewlett-Hackard. As you can see it is a small table that contains the count as well as the title of each employee.

<img width="203" alt="retiring_titles" src="https://user-images.githubusercontent.com/107223178/188023421-281081c6-6061-432d-a268-07c3345f7f1c.png">

- The fourth table is the "Mentorship Eligible" employees. They are eligible to participate in the mentorship program for training new hires for the company.

<img width="722" alt="mentorship_eligibility" src="https://user-images.githubusercontent.com/107223178/188023181-4b093f50-b428-4d9c-9db3-d23bf544677f.png">

--------------------
# SUMMARY

- When you look at the data, it is shown that their are 1549 retiring-employees that are eligible for the mentorship program. Because we joined both the departments table and the retirement table, we were able to see just how many people will be leaving the company as well as giving us an idea of how many roles will need to be filled.
- - There are many ways we can filter the data set to show just what we are looking for but an important query that would benefit the overall scope of the mentorship problem would be a table that holds all the encompassing data while being able to filter for mentorship eligibility, retiring, rolls needed to be filled.
