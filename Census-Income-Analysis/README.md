Disclaimer: The dataset is from https://github.com/rohanmistry231/Practice-Datasets-for-Excel

**Questions (first > will be SQL's answer, second > will be Excel's answer):**

•	What is the proportion of people who earn more than $50K?
24.08
•	What is the average age of people who earn more than $50K?
44.25
•	What is the correlation between age and education level?
-0.04
•	What is the proportion of men and women who earn more than $50K?
Female|3.62
Male|20.46
•	What is the median hours worked per week for people who earn more than $50K?
25


**Tools:**
1. SQL - SQLite for beginner
2. Excel
3. Github for version control
(Maybe in future, using Python and R)

**Lessons (SQL):**
- The dataset has dots at the first column. Since I learnt that modifying the OG database is not recommended, I tried to transform it in the sql. The progess:
1. Create a dummy table called table_raw.sql (can be done in terminal, but I want to keep the code) that will create sql DB based on the naming of the OG file and import the file in it
2. Create the desired table with desised value
3. Then insert the data from the dummy table to the desired table by selecting accordingly column
4. Voila, now we can drop the dummy table
- Remember to create table 
- Should check the number fields equals from the OG database with sql

**Lessons (Excel):**


