create database fraud_detection_db;
use fraud_detection_db;
drop database fraud_detection_db;

create table transactions(
transaction_id INT PRIMARY KEY,
user_id INT,
transaction_date DATETIME,
amount DECIMAL(10,2),
location VARCHAR(20),
device_type VARCHAR(20),
transaction_type VARCHAR(10)
);
create table users(
user_id INT PRIMARY KEY,
user_name VARCHAR(20),
account_type VARCHAR(20),
join_date date
);
drop table users;
create table accounts(
account_id INT PRIMARY KEY,
user_id INT,
account_number VARCHAR(20),
account_balance DECIMAL(12,2),
account_status VARCHAR(20),
FOREIGN KEY (user_id) REFERENCES users(user_id)
);

create table devices(
device_id INT PRIMARY KEY,
user_id INT,
device_type VARCHAR(50),
device_location VARCHAR(50),
FOREIGN KEY (user_id) REFERENCES users(user_id)
);
drop table devices;
create table locations(
location_id INT PRIMARY KEY,
city VARCHAR(50),
COUNTRY VARCHAR(50)
);

create table transaction_details(
detail_id INT PRIMARY KEY,
transaction_id INT,
merchant_name VARCHAR(20),
status VARCHAR(20),
FOREIGN KEY(transaction_id) REFERENCES transactions(transaction_id)
);


create table fraud_alerts(
alert_id INT PRIMARY KEY,
transaction_id INT,
fraud_type VARCHAR(50),
ALERT_STATUS VARCHAR(20),
FOREIGN KEY (transaction_id) REFERENCES transactions(transaction_id)
);

INSERT INTO users VALUES
(101,'Amit Sharma','Savings','2022-01-10'),
(102,'Priya Verma','Current','2021-05-15'),
(103,'Rahul Patil','Savings','2023-02-20'),
(104,'Sneha Iyer','Savings','2020-11-01'),
(105,'Rohit Singh','Current','2022-07-25'),
(106,'Anjali Mehta','Savings','2021-09-12'),
(107,'Karan Kapoor','Savings','2023-03-18'),
(108,'Pooja Nair','Current','2020-06-30'),
(109,'Vikas Yadav','Savings','2022-04-05'),
(110,'Neha Gupta','Savings','2021-12-11'),

(111,'Arjun Reddy','Current','2020-08-14'),
(112,'Meera Joshi','Savings','2023-01-19'),
(113,'Suresh Pillai','Savings','2021-03-27'),
(114,'Divya Kulkarni','Current','2022-10-09'),
(115,'Manish Tiwari','Savings','2023-06-01'),
(116,'Nikita Shah','Savings','2022-02-14'),
(117,'Aditya Singh','Current','2021-07-21'),
(118,'Ritika Das','Savings','2020-09-10'),
(119,'Sanjay Mishra','Savings','2023-05-05'),
(120,'Kavita Rao','Current','2022-08-18'),

(121,'Deepak Yadav','Savings','2021-04-23'),
(122,'Swati Choudhary','Savings','2023-02-11'),
(123,'Naveen Kumar','Current','2020-12-03'),
(124,'Ayesha Khan','Savings','2022-03-29'),
(125,'Ravi Verma','Savings','2021-11-16'),
(126,'Shreya Ghosh','Current','2023-07-07'),
(127,'Ankit Jain','Savings','2022-05-13'),
(128,'Simran Kaur','Savings','2020-10-21'),
(129,'Harish Shetty','Current','2021-06-09'),
(130,'Ramesh Gupta','Savings','2022-09-30'),

(131,'Sunita Sharma','Savings','2023-01-25'),
(132,'Vivek Anand','Current','2020-07-17'),
(133,'Rahul Das','Savings','2021-08-08'),
(134,'Pallavi Joshi','Savings','2022-12-12'),
(135,'Siddharth Malhotra','Current','2023-03-03'),
(136,'Tanvi Kulkarni','Savings','2021-02-19'),
(137,'Imran Khan','Savings','2022-06-27'),
(138,'Kriti Sharma','Current','2020-04-14'),
(139,'Ashok Reddy','Savings','2023-05-22'),
(140,'Nisha Patel','Savings','2021-10-05'),

(141,'Varun Kapoor','Current','2022-01-30'),
(142,'Ritu Singh','Savings','2023-06-10'),
(143,'Aman Verma','Savings','2020-11-23'),
(144,'Neelam Yadav','Current','2021-03-15'),
(145,'Kunal Mehta','Savings','2022-08-02'),
(146,'Rashmi Iyer','Savings','2023-04-09'),
(147,'Yogesh Patil','Current','2020-05-28'),
(148,'Farhan Ali','Savings','2021-09-19'),
(149,'Komal Shah','Savings','2022-07-07'),
(150,'Anurag Mishra','Current','2023-02-28');


INSERT INTO accounts VALUES
(1,101,'ACC101',50000,'Active'),
(2,102,'ACC102',30000,'Active'),
(3,103,'ACC103',45000,'Active'),
(4,104,'ACC104',20000,'Inactive'),
(5,105,'ACC105',80000,'Active'),
(6,106,'ACC106',60000,'Active'),
(7,107,'ACC107',35000,'Active'),
(8,108,'ACC108',40000,'Active'),
(9,109,'ACC109',25000,'Active'),
(10,110,'ACC110',30000,'Active'),

(11,111,'ACC111',70000,'Active'),
(12,112,'ACC112',55000,'Active'),
(13,113,'ACC113',28000,'Inactive'),
(14,114,'ACC114',45000,'Active'),
(15,115,'ACC115',32000,'Active'),
(16,116,'ACC116',52000,'Active'),
(17,117,'ACC117',31000,'Active'),
(18,118,'ACC118',46000,'Active'),
(19,119,'ACC119',21000,'Inactive'),
(20,120,'ACC120',82000,'Active'),

(21,121,'ACC121',61000,'Active'),
(22,122,'ACC122',36000,'Active'),
(23,123,'ACC123',42000,'Active'),
(24,124,'ACC124',26000,'Active'),
(25,125,'ACC125',31000,'Active'),
(26,126,'ACC126',71000,'Active'),
(27,127,'ACC127',56000,'Active'),
(28,128,'ACC128',29000,'Inactive'),
(29,129,'ACC129',46000,'Active'),
(30,130,'ACC130',33000,'Active'),

(31,131,'ACC131',54000,'Active'),
(32,132,'ACC132',32000,'Active'),
(33,133,'ACC133',47000,'Active'),
(34,134,'ACC134',22000,'Inactive'),
(35,135,'ACC135',84000,'Active'),
(36,136,'ACC136',62000,'Active'),
(37,137,'ACC137',37000,'Active'),
(38,138,'ACC138',43000,'Active'),
(39,139,'ACC139',27000,'Active'),
(40,140,'ACC140',32000,'Active'),

(41,141,'ACC141',72000,'Active'),
(42,142,'ACC142',57000,'Active'),
(43,143,'ACC143',30000,'Inactive'),
(44,144,'ACC144',47000,'Active'),
(45,145,'ACC145',34000,'Active'),
(46,146,'ACC146',56000,'Active'),
(47,147,'ACC147',33000,'Active'),
(48,148,'ACC148',48000,'Active'),
(49,149,'ACC149',23000,'Inactive'),
(50,150,'ACC150',86000,'Active');



INSERT INTO devices VALUES
(1,101,'Mobile','Mumbai'),
(2,102,'Laptop','Delhi'),
(3,103,'Mobile','Pune'),
(4,104,'Tablet','Chennai'),
(5,105,'Mobile','Hyderabad'),
(6,106,'Laptop','Mumbai'),
(7,107,'Mobile','Jaipur'),
(8,108,'Laptop','Kochi'),
(9,109,'Mobile','Patna'),
(10,110,'Mobile','Indore'),

(11,111,'Tablet','Hyderabad'),
(12,112,'Mobile','Nagpur'),
(13,113,'Laptop','Trivandrum'),
(14,114,'Mobile','Pune'),
(15,115,'Tablet','Varanasi'),
(16,116,'Mobile','Surat'),
(17,117,'Laptop','Noida'),
(18,118,'Mobile','Kolkata'),
(19,119,'Tablet','Bhopal'),
(20,120,'Mobile','Bangalore'),

(21,121,'Laptop','Gurgaon'),
(22,122,'Mobile','Chandigarh'),
(23,123,'Laptop','Coimbatore'),
(24,124,'Mobile','Mumbai'),
(25,125,'Mobile','Delhi'),
(26,126,'Tablet','Kolkata'),
(27,127,'Mobile','Jaipur'),
(28,128,'Laptop','Amritsar'),
(29,129,'Mobile','Mangalore'),
(30,130,'Tablet','Kanpur'),

(31,131,'Mobile','Agra'),
(32,132,'Laptop','Patna'),
(33,133,'Mobile','Guwahati'),
(34,134,'Tablet','Nashik'),
(35,135,'Mobile','Delhi'),
(36,136,'Laptop','Pune'),
(37,137,'Mobile','Hyderabad'),
(38,138,'Laptop','Noida'),
(39,139,'Mobile','Chennai'),
(40,140,'Mobile','Ahmedabad'),

(41,141,'Tablet','Delhi'),
(42,142,'Mobile','Lucknow'),
(43,143,'Laptop','Kanpur'),
(44,144,'Mobile','Patna'),
(45,145,'Tablet','Mumbai'),
(46,146,'Mobile','Chennai'),
(47,147,'Laptop','Pune'),
(48,148,'Mobile','Bangalore'),
(49,149,'Tablet','Surat'),
(50,150,'Mobile','Varanasi');


TRUNCATE TABLE transactions;

INSERT INTO transactions VALUES
(1,101,'2024-01-01',5000,'Mumbai','Mobile','Debit'),
(2,102,'2024-01-02',12000,'Delhi','Laptop','Credit'),
(3,103,'2024-01-03',8000,'Pune','Mobile','Debit'),
(4,104,'2024-01-04',25000,'Chennai','Tablet','Debit'),
(5,105,'2024-01-05',15000,'Lucknow','Mobile','Credit'),

(6,106,'2024-01-06',30000,'Ahmedabad','Laptop','Debit'),
(7,107,'2024-01-07',7000,'Jaipur','Mobile','Debit'),
(8,108,'2024-01-08',22000,'Kochi','Laptop','Credit'),
(9,109,'2024-01-09',5000,'Patna','Mobile','Debit'),
(10,110,'2024-01-10',40000,'Indore','Mobile','Debit'),

(11,111,'2024-01-11',18000,'Hyderabad','Tablet','Credit'),
(12,112,'2024-01-12',27000,'Nagpur','Mobile','Debit'),
(13,113,'2024-01-13',9000,'Trivandrum','Laptop','Debit'),
(14,114,'2024-01-14',35000,'Pune','Mobile','Credit'),
(15,115,'2024-01-15',20000,'Varanasi','Tablet','Debit'),

(16,116,'2024-01-16',45000,'Surat','Mobile','Debit'),
(17,117,'2024-01-17',10000,'Noida','Laptop','Credit'),
(18,118,'2024-01-18',28000,'Kolkata','Mobile','Debit'),
(19,119,'2024-01-19',6000,'Bhopal','Tablet','Debit'),
(20,120,'2024-01-20',50000,'Bangalore','Mobile','Credit'),

(21,121,'2024-01-21',22000,'Gurgaon','Laptop','Debit'),
(22,122,'2024-01-22',15000,'Chandigarh','Mobile','Credit'),
(23,123,'2024-01-23',18000,'Coimbatore','Laptop','Debit'),
(24,124,'2024-01-24',7000,'Mumbai','Mobile','Debit'),
(25,125,'2024-01-25',26000,'Delhi','Mobile','Credit'),

(26,126,'2024-01-26',33000,'Kolkata','Tablet','Debit'),
(27,127,'2024-01-27',14000,'Jaipur','Mobile','Debit'),
(28,128,'2024-01-28',19000,'Amritsar','Laptop','Credit'),
(29,129,'2024-01-29',21000,'Mangalore','Mobile','Debit'),
(30,130,'2024-01-30',9000,'Kanpur','Tablet','Debit'),

(31,131,'2024-02-01',24000,'Agra','Mobile','Credit'),
(32,132,'2024-02-02',17000,'Patna','Laptop','Debit'),
(33,133,'2024-02-03',11000,'Guwahati','Mobile','Debit'),
(34,134,'2024-02-04',36000,'Nashik','Tablet','Credit'),
(35,135,'2024-02-05',42000,'Delhi','Mobile','Debit'),

(36,136,'2024-02-06',28000,'Pune','Laptop','Credit'),
(37,137,'2024-02-07',13000,'Hyderabad','Mobile','Debit'),
(38,138,'2024-02-08',31000,'Noida','Laptop','Debit'),
(39,139,'2024-02-09',9000,'Chennai','Mobile','Credit'),
(40,140,'2024-02-10',20000,'Ahmedabad','Mobile','Debit'),

(41,141,'2024-02-11',37000,'Delhi','Tablet','Credit'),
(42,142,'2024-02-12',15000,'Lucknow','Mobile','Debit'),
(43,143,'2024-02-13',12000,'Kanpur','Laptop','Debit'),
(44,144,'2024-02-14',26000,'Patna','Mobile','Credit'),
(45,145,'2024-02-15',31000,'Mumbai','Tablet','Debit'),

(46,146,'2024-02-16',27000,'Chennai','Mobile','Debit'),
(47,147,'2024-02-17',8000,'Pune','Laptop','Credit'),
(48,148,'2024-02-18',45000,'Bangalore','Mobile','Debit'),
(49,149,'2024-02-19',6000,'Surat','Tablet','Debit'),
(50,150,'2024-02-20',52000,'Varanasi','Mobile','Credit');


INSERT INTO locations VALUES
(1,'Mumbai','India'),(2,'Delhi','India'),(3,'Pune','India'),(4,'Bangalore','India'),
(5,'Chennai','India'),(6,'Hyderabad','India'),(7,'Kolkata','India'),(8,'Ahmedabad','India'),
(9,'Jaipur','India'),(10,'Nagpur','India'),(11,'Surat','India'),(12,'Lucknow','India'),
(13,'Kanpur','India'),(14,'Indore','India'),(15,'Bhopal','India'),(16,'Patna','India'),
(17,'Chandigarh','India'),(18,'Coimbatore','India'),(19,'Visakhapatnam','India'),(20,'Thane','India'),
(21,'Vadodara','India'),(22,'Agra','India'),(23,'Nashik','India'),(24,'Amritsar','India'),
(25,'Ranchi','India'),(26,'Raipur','India'),(27,'Guwahati','India'),(28,'Jodhpur','India'),
(29,'Madurai','India'),(30,'Mysore','India'),(31,'Tirupati','India'),(32,'Udaipur','India'),
(33,'Varanasi','India'),(34,'Noida','India'),(35,'Gurgaon','India'),(36,'Faridabad','India'),
(37,'Aurangabad','India'),(38,'Solapur','India'),(39,'Kolhapur','India'),(40,'Srinagar','India'),
(41,'Shimla','India'),(42,'Goa','India'),(43,'Dehradun','India'),(44,'Trichy','India'),
(45,'Salem','India'),(46,'Jamshedpur','India'),(47,'Dhanbad','India'),(48,'Aligarh','India'),
(49,'Meerut','India'),(50,'Bareilly','India');

truncate table transaction_details;

INSERT INTO transaction_details (detail_id, transaction_id, merchant_name, status) VALUES
(1,1,'Amazon','Success'),
(2,2,'Flipkart','Success'),
(3,3,'Swiggy','Success'),
(4,4,'Zomato','Success'),
(5,5,'Uber','Success'),

(6,6,'Ola','Success'),
(7,7,'Myntra','Success'),
(8,8,'Ajio','Success'),
(9,9,'BigBasket','Success'),
(10,10,'Croma','Success'),

(11,11,'RelianceDigital','Success'),
(12,12,'TataCliq','Success'),
(13,13,'AppleStore','Success'),
(14,14,'Uber','Success'),
(15,15,'Ola','Success'),

(16,16,'Amazon','Success'),
(17,17,'Flipkart','Success'),
(18,18,'Swiggy','Success'),
(19,19,'Zomato','Failed'),
(20,20,'Croma','Success'),

(21,21,'Paytm','Success'),
(22,22,'PhonePe','Success'),
(23,23,'GooglePay','Success'),
(24,24,'MakeMyTrip','Success'),
(25,25,'IRCTC','Success'),

(26,26,'BookMyShow','Success'),
(27,27,'Nykaa','Success'),
(28,28,'Decathlon','Success'),
(29,29,'Pantaloons','Success'),
(30,30,'ShoppersStop','Success'),

(31,31,'Amazon','Success'),
(32,32,'Flipkart','Success'),
(33,33,'Swiggy','Success'),
(34,34,'Zomato','Success'),
(35,35,'Uber','Failed'),

(36,36,'Ola','Success'),
(37,37,'Myntra','Success'),
(38,38,'Ajio','Success'),
(39,39,'BigBasket','Success'),
(40,40,'Croma','Success'),

(41,41,'RelianceDigital','Success'),
(42,42,'TataCliq','Success'),
(43,43,'AppleStore','Success'),
(44,44,'Uber','Success'),
(45,45,'Ola','Success'),

(46,46,'Amazon','Success'),
(47,47,'Flipkart','Success'),
(48,48,'Swiggy','Success'),
(49,49,'Zomato','Failed'),
(50,50,'Croma','Success');


SELECT COUNT(*) FROM transaction_details;

INSERT INTO fraud_alerts (alert_id, transaction_id, fraud_type, ALERT_STATUS) VALUES
(1,1,'None','No Alert'),
(2,2,'None','No Alert'),
(3,3,'None','No Alert'),
(4,4,'None','No Alert'),
(5,5,'None','No Alert'),

(6,6,'High Amount','Resolved'),
(7,7,'None','No Alert'),
(8,8,'Multiple Transactions','Pending'),
(9,9,'None','No Alert'),
(10,10,'High Amount','Resolved'),

(11,11,'None','No Alert'),
(12,12,'Location Mismatch','Pending'),
(13,13,'None','No Alert'),
(14,14,'Multiple Transactions','Resolved'),
(15,15,'None','No Alert'),

(16,16,'High Amount','Pending'),
(17,17,'None','No Alert'),
(18,18,'None','No Alert'),
(19,19,'Suspicious Merchant','Resolved'),
(20,20,'High Amount','Resolved'),

(21,21,'None','No Alert'),
(22,22,'None','No Alert'),
(23,23,'None','No Alert'),
(24,24,'Multiple Transactions','Pending'),
(25,25,'None','No Alert'),

(26,26,'Location Mismatch','Resolved'),
(27,27,'None','No Alert'),
(28,28,'High Amount','Pending'),
(29,29,'None','No Alert'),
(30,30,'None','No Alert'),

(31,31,'Multiple Transactions','Resolved'),
(32,32,'None','No Alert'),
(33,33,'None','No Alert'),
(34,34,'Location Mismatch','Pending'),
(35,35,'Suspicious Merchant','Resolved'),

(36,36,'None','No Alert'),
(37,37,'None','No Alert'),
(38,38,'High Amount','Resolved'),
(39,39,'None','No Alert'),
(40,40,'Multiple Transactions','Pending'),

(41,41,'High Amount','Resolved'),
(42,42,'None','No Alert'),
(43,43,'None','No Alert'),
(44,44,'Location Mismatch','Pending'),
(45,45,'None','No Alert'),

(46,46,'Suspicious Merchant','Resolved'),
(47,47,'None','No Alert'),
(48,48,'High Amount','Pending'),
(49,49,'Suspicious Merchant','Resolved'),
(50,50,'High Amount','Resolved');

#1)Total Transactions & Total Amount
select 
count(*) as total_transactions,
sum(amount) as total_amount
from transactions;
#Insight: Overall business volume

#2)Top 5 Users by Spending
select 
user_id,
sum(amount) as total_spent
from transactions
group by user_id
order by  total_spent DESC
LIMIT 5;

#Insight: High-value customers


#3)City-wise Transaction Analysis
select 
location,
count(*) as total_transactions,
sum(amount) as total_amount
from transactions
group by location
order by total_amount DESC; 

#Insight: Top performing cities

#4)Transaction Type Analysis (Debit vs Credit)
select
transaction_type,
count(*) as total_transactions,
sum(amount) as total_amount
from transactions
group by transaction_type;

#👉 Insight: Spending behavior

#5)Device-wise Usage
select 
device_type,
count(*) as usage_count
from transactions
group by device_type;

#Insight: Mobile vs Laptop usage

#6)Failed Transactions
select 
count(*) as failed_transactions
from transaction_details
where status='Failed';

#Insight: System/payment issues

#7)Top Merchants
select 
merchant_name,
count(*) as total_transactions
from transaction_details
group by merchant_name
order by total_transactions DESC
LIMIT 5;
#Insight: Popular platforms

#8)Total Fraud Cases

select 
count(*) as fraud_cases
from fraud_alerts
where fraud_type!='None';
#Insight: Fraud rate

#9)Fraud Type Distribution
select 
fraud_type,
count(*) as total_cases
from fraud_alerts
where fraud_type!='None'
group by fraud_type
order by total_cases DESC;

#Insight: Most common fraud types

#10)Fraud Transactions with Amount
select 
t.transaction_id,
t.user_id,
t.amount,
f.fraud_type,
f.alert_status
from transactions t
join fraud_alerts for on t.transaction_id=f.transaction_id
where f.fraud_type!='None';
#Insight: High-risk transactions

#11)Daily Transaction Trend
select DATE(transaction_date) as date,
count(*) as total_transactions,
sum(amount) as total_amount
from transactions
group by date(transaction_date)
order by date;

#Insight: Time-based trend

#12)Detect Sudden Spike (Window Function)
select * 
from (
select 
user_id,
transaction_id,
amount,
LAG(amount) over (partition by user_id order by transaction_date) as  prev_amount from transactions
)t
where amount>2*prev_amount;

#Insight: Suspicious high jumps (fraud detection)

#13)Users with Most Failed Transactions
select 
t.user_id,
count(*) as failed_count
from transactions t
join transaction_details td
on t.transaction_id=td.transaction_id
where td.status='Failed'
group by t.user_id
order by failed_count DESC;
#Insight: Risky users

#14)Average Transaction Amount
select 
AVG(amount) as avg_transaction_amount
from transactions;

#Insight: Typical spending

#15)High Value Transactions (> 30,000)

select *
from transactions
where amount>30000;


#16)Fraud Rate %

select 
(count(case when fraud_type!='None' Then 1 END)*100.0/count(*))
 as fraud_percentage 
 from fraud_alerts;
 
 