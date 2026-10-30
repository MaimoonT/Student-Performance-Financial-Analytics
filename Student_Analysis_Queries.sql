CREATE TABLE Students_Performance (
    Student_ID VARCHAR(10) PRIMARY KEY,
    Student_Name VARCHAR(100),
    Gender VARCHAR(10),
    Age INT,
    Department VARCHAR(20),
    Course VARCHAR(30),
    City VARCHAR(50),
    Attendance_Percent DECIMAL(5,2),
    Marks INT,
    Total_Marks INT,
    Grade VARCHAR(5),
)


INSERT INTO Students_Performance
(Student_id, Student_name, Gender, Age, Department,Course, City,
 Attendance_percent, Marks, Total_marks, Grade)
VALUES
('S001','Rahul','Male',20,'CSE','Python','Hyderabad',92,85,100,'A'),
('S002','Priya','Female',21,'ECE','SQL','Bangalore',88,78,100,'B'),
('S003','Arjun','Male',20,'CSE','Excel','Chennai',72,55,100,'C'),
('S004','Sneha','Female',22,'EEE','Power BI','Delhi',95,91,100,'A'),
('S005','Kiran','Male',21,'MECH','SQL','Mumbai',68,48,100,'D'),
('S006','Anjali','Female',20,'CSE','Python','Pune',89,82,100,'A'),
('S007','Rohit','Male',22,'ECE','Excel','Hyderabad',76,64,100,'B'),
('S008','Divya','Female',21,'EEE','SQL','Bangalore',94,88,100,'A'),
('S009','Vivek','Male',20,'CSE','Power BI','Chennai',81,73,100,'B'),
('S010','Pooja','Female',22,'MECH','Excel','Delhi',65,52,100,'C'),
('S011','Aman','Male',21,'CSE','SQL','Mumbai',74,59,100,'C'),
('S012','Kavya','Female',20,'ECE','Python','Pune',91,86,100,'A'),
('S013','Ravi','Male',22,'EEE','Power BI','Hyderabad',79,69,100,'B'),
('S014','Meena','Female',21,'MECH','SQL','Chennai',62,45,100,'D'),
('S015','Suresh','Male',20,'CSE','Excel','Bangalore',87,80,100,'A'),
('S016','Nisha','Female',22,'ECE','Power BI','Delhi',93,90,100,'A'),
('S017','Vikram','Male',21,'EEE','Python','Mumbai',71,57,100,'C'),
('S018','Swathi','Female',20,'CSE','SQL','Pune',96,94,100,'A'),
('S019','Manoj','Male',22,'MECH','Power BI','Hyderabad',69,51,100,'C'),
('S020','Asha','Female',21,'ECE','Excel','Chennai',84,76,100,'B'),
('S021','Karthik','Male',20,'CSE','Python','Delhi',78,67,100,'B'),
('S022','Lakshmi','Female',22,'EEE','SQL','Bangalore',90,83,100,'A'),
('S023','Ajay','Male',21,'MECH','Excel','Mumbai',73,61,100,'B'),
('S024','Harini','Female',20,'CSE','Power BI','Pune',97,92,100,'A'),
('S025','Naveen','Male',22,'ECE','SQL','Hyderabad',66,49,100,'D'),
('S026','Pavani','Female',21,'EEE','Python','Chennai',86,79,100,'B'),
('S027','Ramesh','Male',20,'CSE','Excel','Bangalore',75,58,100,'C'),
('S028','Deepa','Female',22,'MECH','Power BI','Delhi',92,87,100,'A'),
('S029','Surya','Male',21,'ECE','Python','Mumbai',80,72,100,'B'),
('S030','Keerthi','Female',20,'CSE','SQL','Pune',98,96,100,'A'),
('S031','Venu','Male',22,'EEE','Excel','Hyderabad',70,54,100,'C'),
('S032','Bhavya','Female',21,'MECH','SQL','Bangalore',85,77,100,'B'),
('S033','Tarun','Male',20,'CSE','Power BI','Chennai',82,75,100,'B'),
('S034','Sowmya','Female',22,'ECE','Python','Delhi',94,89,100,'A'),
('S035','Rakesh','Male',21,'EEE','SQL','Mumbai',67,46,100,'D'),
('S036','Neha','Female',20,'CSE','Excel','Pune',88,81,100,'A'),
('S037','Prakash','Male',22,'MECH','Power BI','Hyderabad',77,63,100,'B'),
('S038','Madhuri','Female',21,'ECE','SQL','Chennai',91,84,100,'A'),
('S039','Ganesh','Male',20,'CSE','Python','Bangalore',64,43,100,'D'),
('S040','Shalini','Female',22,'EEE','Excel','Delhi',89,78,100,'B'),
('S041','Harish','Male',21,'MECH','SQL','Mumbai',72,56,100,'C'),
('S042','Tejaswini','Female',20,'CSE','Power BI','Pune',95,93,100,'A'),
('S043','Mahesh','Male',22,'ECE','Python','Hyderabad',83,74,100,'B'),
('S044','Srilatha','Female',21,'EEE','SQL','Bangalore',87,80,100,'A'),
('S045','Chandu','Male',20,'CSE','Excel','Chennai',69,50,100,'C'),
('S046','Anusha','Female',22,'MECH','Power BI','Delhi',93,86,100,'A'),
('S047','Ravi Kumar','Male',21,'ECE','SQL','Mumbai',76,65,100,'B'),
('S048','Mounika','Female',20,'CSE','Python','Pune',99,97,100,'A'),
('S049','Sanjay','Male',22,'EEE','Excel','Hyderabad',61,44,100,'D'),
('S050','Swetha','Female',21,'MECH','SQL','Chennai',90,82,100,'A');
--Display all student records
SELECT * FROM Students_Performance;

CREATE TABLE Fee_Details (
    Fee_ID INT PRIMARY KEY,
    Student_ID VARCHAR(10) UNIQUE,
    Total_Fees DECIMAL(10,2),
    Paid_Fees DECIMAL(10,2),
    Pending_Fees DECIMAL(10,2),
    Payment_Status VARCHAR(20),
    FOREIGN KEY (Student_ID)
        REFERENCES Students_Performance(Student_ID)
);

INSERT INTO Fee_Details
(Fee_ID, Student_ID, Total_Fees, Paid_Fees, Pending_Fees, Payment_Status)
VALUES
(101,'S001',50000,50000,0,'Paid'),
(102,'S002',50000,40000,10000,'Pending'),
(103,'S003',45000,30000,15000,'Pending'),
(104,'S004',55000,55000,0,'Paid'),
(105,'S005',45000,35000,10000,'Pending'),
(106,'S006',50000,50000,0,'Paid'),
(107,'S007',50000,45000,5000,'Pending'),
(108,'S008',55000,55000,0,'Paid'),
(109,'S009',50000,40000,10000,'Pending'),
(110,'S010',45000,30000,15000,'Pending'),
(111,'S011',50000,50000,0,'Paid'),
(112,'S012',50000,45000,5000,'Pending'),
(113,'S013',55000,40000,15000,'Pending'),
(114,'S014',45000,30000,15000,'Pending'),
(115,'S015',50000,50000,0,'Paid'),
(116,'S016',50000,50000,0,'Paid'),
(117,'S017',55000,45000,10000,'Pending'),
(118,'S018',50000,50000,0,'Paid'),
(119,'S019',45000,35000,10000,'Pending'),
(120,'S020',50000,50000,0,'Paid'),
(121,'S021',50000,40000,10000,'Pending'),
(122,'S022',55000,55000,0,'Paid'),
(123,'S023',45000,40000,5000,'Pending'),
(124,'S024',50000,50000,0,'Paid'),
(125,'S025',50000,30000,20000,'Pending'),
(126,'S026',55000,45000,10000,'Pending'),
(127,'S027',50000,40000,10000,'Pending'),
(128,'S028',45000,45000,0,'Paid'),
(129,'S029',50000,50000,0,'Paid'),
(130,'S030',55000,55000,0,'Paid'),
(131,'S031',50000,35000,15000,'Pending'),
(132,'S032',45000,40000,5000,'Pending'),
(133,'S033',50000,50000,0,'Paid'),
(134,'S034',55000,50000,5000,'Pending'),
(135,'S035',50000,30000,20000,'Pending'),
(136,'S036',45000,45000,0,'Paid'),
(137,'S037',50000,40000,10000,'Pending'),
(138,'S038',55000,55000,0,'Paid'),
(139,'S039',50000,30000,20000,'Pending'),
(140,'S040',45000,40000,5000,'Pending'),
(141,'S041',50000,35000,15000,'Pending'),
(142,'S042',55000,55000,0,'Paid'),
(143,'S043',50000,50000,0,'Paid'),
(144,'S044',55000,50000,5000,'Pending'),
(145,'S045',45000,30000,15000,'Pending'),
(146,'S046',50000,50000,0,'Paid'),
(147,'S047',50000,40000,10000,'Pending'),
(148,'S048',55000,55000,0,'Paid'),
(149,'S049',50000,30000,20000,'Pending'),
(150,'S050',45000,45000,0,'Paid');

--Display all fee records
SELECT * FROM Fee_Details;

--Find the total number of students
select count(*) as Total_students
from Students_Performance

--Find students scoring above 80
select student_id, student_name, Marks
from student_performance
where marks>=80
order by marks desc;

--Find students with attendance below 75%
select student_id, student_name, attendance_percent
from Students_Performance
where Attendance_Percent<75

--Find students belonging to CSE
select * from Students_Performance
where Department = 'CSE'


--isplay unique departments
SELECT DISTINCT Department 
from Students_Performance

--Find students whose names start with 'S'
select * from student_performance 
where student_name like 's%'

--Sort students by marks from highest to lowest
select student_id, student_name, marks
from Students_Performance
order by marks desc

--Find students scoring between 60 and 80
select student_id, student_name, marks
from Students_Performance
where marks between 60 and 80

--alculate average marks
select avg(marks) from Students_Performance

--alculate average marks
SELECT AVG(CAST(Marks AS DECIMAL(5,2))) AS Average_Marks
FROM Student_performance;

--Find highest and lowest marks
select 
 max(marks)  as highest_marks,
min(marks) as lowest_marks
from students_performance

--Count students in each department
select department, count(*) as student_count
from Students_Performance
group by department
order by student_count desc

--Calculate average marks by department
select department,
avg(marks) as avg_marks
from students_performance
group by department
order by avg_marks desc

--Calculate average attendance by department
select department,
avg(attendance_percent) as avg_attendance
from students_performance
group by department
order by avg_attendance desc

--Count students by grade
select grade, count(*) as student_count
from Students_Performance
group by Grade
order by student_count desc

--Find departments with average marks above 70
select department, avg(marks) as avg_marks
from Students_Performance
group by department
having avg(marks) >70;

-- Find the average marks for each course
select course as course, 
avg(marks)as avg_marks
from Students_Performance
group by course
order by avg_marks desc 

--Count students by city
select city, count(*) as student_count
from students_performance
group by city
order by student_count desc

--Calculate gender-wise average marks
select gender, avg(marks) as avg_marks
from students_performance
group by gender 
order by avg_marks desc

--Find the highest-scoring student
select top 1 * from Students_Performance
order by marks desc

--Find the second-highest distinct mark
SELECT MAX(Marks) AS Second_Highest_Marks
FROM Student_performance
WHERE Marks < (
    SELECT MAX(Marks)
    FROM Student_performance
);

--Find the second-highest distinct mark
select student_id, student_name, marks 
from students_performance
where marks = (select max(marks) as second_highest_marks from Students_Performance
 where marks<(select max(marks) from students_performance))

 --top 10 Rank of students by marks
select top 10 student_id, student_name, department, marks,
rank() over (order by marks desc) as student_rank
from students_performance

--Find the top 3 students in each department
with Rankedstudents as (
select student_id, student_name, department, marks, 
row_number() over(
partition by department 
order by marks desc
) as department_rank
from students_performance
)
select * from rankedstudents
where department_rank <=3
order by department,department_rank;

--Find students scoring above their department average
select s.student_id, s.student_name, s.department, s.marks
from Students_Performance s
where s.marks>( select avg(marks) from Students_Performance s2
where s2.department =s.Department
);

--Classify students by academic risk
select student_id, student_name, marks, attendance_percent,
case
 when marks< 60 and attendance_percent<75
 then 'high risk'
 when marks<60 or attendance_percent<75
 then 'medium risk'
 else 'low risk'
 end as risk_level
from Students_Performance

--Find students with both low marks and low attendance
select student_id, student_name, marks, attendance_percent
from Students_Performance
where marks<60
and attendance_percent<75;

--Find students with marks above the overall average
select student_id, student_name, marks 
from Students_Performance
where marks>(select avg(marks) from Students_Performance)
order by marks desc

--Calculate total fees, collected fees and pending fees
select sum(Total_fees) as total_fees,
sum (Paid_Fees) as Paid_Fees,
sum(pending_fees) as pending_fees
from fee_details

--Find students who have pending fees
select * from fee_details
where pending_fees>0
order by pending_fees desc

--Find students with pending fees of at least ₹10,000
select* from fee_details
where pending_fees >=1000
order by pending_fees desc

--Count students by payment status
select payment_status, count(*) as  student_count
from fee_details
group by payment_status
order by student_count desc


--Calculate fee collection by payment status
SELECT Payment_Status,
       SUM(Total_Fees) AS Total_Fees,
       SUM(Paid_Fees) AS Collected_Fees,
       SUM(Pending_Fees) AS Pending_Fees
FROM Fee_Details
GROUP BY Payment_Status;

--Find departments with the highest pending fees
select s.department,
sum(f.pending_fees) as total_pending_fees
from students_performance s
join fee_details f
on s.student_id= f.student_id
group by department
order by total_pending_fees desc

--Calculate fee collection by city
select s.city,
sum(f.paid_fees) as Total_Paid_fees,
sum(f.pending_fees)as total_pending_fees
from Students_Performance s
join fee_details f
on s.student_id=f.student_id
group by city
order by total_pending_fees desc

--Find fully paid students
select* from Fee_Details
where pending_fees= 0

--Find students who have paid less than the average amount paid
select student_id, paid_fees
from Fee_Details
where paid_fees<( select avg(paid_fees) from Fee_Details)

--Combine student details with fee details
select s.*, f.Total_fees, f.Paid_fees, f.Pending_fees, f.Payment_status
from students_performance s
join fee_details f
on s.student_id= f.student_id

--Find students who have low marks and pending fees
select s.student_id, s.marks, f.pending_fees
from students_performance s
join fee_details f
on s.student_id=f.student_id
where s.marks<=50 and f.pending_fees>0

--Find students with low attendance and pending fees
select s.student_id, s.attendance_percent, f.pending_fees
from Students_Performance s
join fee_details f
on s.student_id=f.student_id
where Attendance_Percent<=75 and pending_fees>0

--Find high-performing students who have pending fees
select s.student_id, s.marks, f.pending_fees
from students_performance s
join fee_details f
on s.student_id=f.student_id
where s.marks>=80 and f.pending_fees>0

--Find the top 5 students with the highest pending fees
select top 5 s.student_id, s.student_name, f.pending_fees
from Students_Performance s
join fee_details f
on s.student_id=f.student_id
order by f.pending_fees 

--Find students whose fees are cleared but marks are below 60
select s.student_id, s.student_name, s.marks,f.pending_fees
from Students_Performance s
join Fee_Details f
on s.student_id= f.student_id
where f.pending_fees = 0 and s.marks<=60

--Final department scorecard
SELECT s.Department,
       COUNT(*) AS Total_Students,
       AVG(s.Marks) AS Average_Marks,
       AVG(s.Attendance_Percent) AS Average_Attendance,
       SUM(CASE WHEN s.Marks >= 80 THEN 1 ELSE 0 END) AS High_Scorers,
       SUM(CASE WHEN s.Marks < 60 THEN 1 ELSE 0 END) AS Students_Below_60,
       SUM(f.Paid_Fees) AS Collected_Fees,
       SUM(f.Pending_Fees) AS Pending_Fees
FROM Students_Performance s
JOIN Student_Fees f
    ON s.Student_id = f.Student_ID
GROUP BY s.Department
ORDER BY Pending_Fees DESC;