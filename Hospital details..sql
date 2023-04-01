-- Name=Karan Rajesh Sawant.
-- Project Name=Hospital details. 

-- Q1)Write a query to create a patients table with the date,patientid,
-- patient name, age, weight, gender, location, phone, number, disease,
-- doctor name and doctor ID fields. 
create database if not exists patients;

-- Q2)Write a query to see all the data in table. 
select * 
from patients_datasets;

-- Q3)Write a query to display the total number of patients in the table. 
select count(pid) 
from patients_datasets;

-- Q4)Write a query to display the patient ID,patient name, gender and disease
-- of the oldest (age) patient. 
select pid,p_name,gender,disease
from patients_datasets 
order by age 
desc limit 1;

-- Q5)Write a query to display the patient ID and patient names of all entries
-- with the current date. 
select pid,p_name,date, curdate() as currentdate 
from patients_datasets;

-- Q6)Write a query to display the old patient name and new patient name in 
-- uppercase. 
select pid,ucase(p_name) 
from patients_datasets ;

-- Q7)Write a query to display the patient name along with the total number
-- of characters in their name. 
select p_name, length(p_name) as total_c 
from patients_datasets;

-- Q8)Write a query to display the gender of the patient as M or F along with
-- the patient name. 
select p_name,gender, if(gender like "M__e", "M","F") 
from patients_datasets ;

-- Q9)Write a query to combine the patient names and doctors name in a new column. 
select p_name,doctor_name,concat(p_name," ",doctor_name) as Pat_doc 
from patients_datasets;

-- Q10)Write a query to display the patients age along with the logarithmic values
-- (base 10) of their age. 
select age,log10(age) 
from patients_datasets;

-- Q11)Write a query to extract the year for a given data and place it in a separate
-- column.
select date,mid(date,7,4) as year 
from patients_datasets;

-- Q12)Write a query to check the patient name and doctors name are similar and display
-- NULL else return the patients name.
select p_name,doctor_name, if (p_name=doctor_name,"Null",p_name) as checking 
from patients_datasets;

-- Q13)Write a query to check if the patient age is greater the 40 display YES if it is
-- NO if isn't. 
select pid,age, if(age>40,"Yes","NO") as final 
from patients_datasets;

-- Q14 Write a Query to display duplicate entries in the doctor name column. 
select count(doctor_name), doctor_name 
from patients_datasets 
group by doctor_name 
having count(doctor_name)>=2;





