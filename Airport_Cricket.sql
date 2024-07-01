CREATE DATABASE CRICKET_TEAMS;
CREATE DATABASE AIRPORT_DETAILS;
USE AIRPORT_DETAILS;
CREATE TABLE Airport (
    AirportID INT,
    Name VARCHAR(255),
    City VARCHAR(255),
    Country VARCHAR(255),
    Elevation INT
);
 INSERT INTO Airport VALUES (1, 'HJA International Airport', 'Atlanta', 'United States', 1026);
 INSERT INTO Airport VALUES (2, 'Beijing Capital International Airport', 'Beijing', 'China', 116);
 INSERT INTO Airport VALUES(3, 'Indira Gandhi International Airport', 'New Delhi', 'India', 777);
 INSERT INTO Airport VALUEs (4, 'Dubai International Airport', 'Dubai', 'United Arab Emirates', 62);
 INSERT INTO Airport VALUES(5, 'Chhatrapati Shivaji Maharaj International Airport', 'Mumbai', 'India', 39);
 INSERT INTO Airport VALUES(6, 'Singapore Changi Airport', 'Singapore', 'Singapore', 22);
 INSERT INTO Airport VALUES(7, 'Suvarnabhumi Airport', 'Bangkok', 'Thailand', 5);
 INSERT INTO Airport VALUES(8, 'Kempegowda International Airport', 'Bengaluru', 'India', 915);
 INSERT INTO Airport VALUES(9, 'Pune Airport', 'Pune', 'India', 1942);
 INSERT INTO Airport VALUES(10, 'Paris Charles de Gaulle Airport', 'Paris', 'France', 392);
 INSERT INTO Airport VALUES(11, 'Rajiv Gandhi International Airport', 'Hyderabad', 'India', 2024);
 INSERT INTO Airport VALUES(12, 'Chaudhary Charan Singh International Airport', 'Lucknow', 'India', 410);
 INSERT INTO Airport VALUES(13, 'Dr. Babasaheb Ambedkar International Airport', 'Nagpur', 'India', 1033);
 INSERT INTO Airport VALUES(14, 'Guangzhou Baiyun International Airport', 'Guangzhou', 'China', 15);
 INSERT INTO Airport VALUES(15, 'Frankfurt Airport', 'Frankfurt', 'Germany', 364);
 INSERT INTO Airport VALUES(16, 'Cochin International Airport', 'Kochi', 'India', 30);
 INSERT INTO Airport VALUES(17, 'Goa International Airport', 'Goa', 'India', 184);
 INSERT INTO Airport VALUES(18, 'Sardar Vallabhbhai Patel International Airport', 'Ahmedabad', 'India', 58);
 INSERT INTO Airport VALUES(19, 'Trivandrum International Airport', 'Thiruvananthapuram', 'India', 15);
 INSERT INTO Airport VALUES (20, 'Denver International Airport', 'Denver', 'United States', 5431);
 SELECT * FROM Airport;
 USE airport_details;
 select * from Airport where AirportID = 18;
 select * from Airport where Country='India';
 select * from Airport where Country like'%a';
 select * from Airport where AirportID>15 and Country='India';
 USE Cricket_Teams;
 CREATE TABLE Teams (
    TeamID INT ,
    TeamName VARCHAR(100),
    Country VARCHAR(100),
    Coach VARCHAR(100)
);
DROP TABLE Teams;
CREATE TABLE Teams (
    TeamID INT ,
    TeamName VARCHAR(100),
    Country VARCHAR(100),
    Coach VARCHAR(100),
    Captain VARCHAR(30)
);
Insert into Teams Values (1, 'Mumbai Indians', 'India', 'Mahela Jayawardene', 'Rohit Sharma');
Insert into Teams Values(2, 'Chennai Super Kings', 'India', 'Stephen Fleming', 'MS Dhoni');
Insert into Teams Values(3, 'Royal Challengers Bangalore', 'India', 'Simon Katich', 'Virat Kohli');
Insert into Teams Values(4, 'Kolkata Knight Riders', 'India', 'Brendon McCullum', 'Eoin Morgan');
Insert into Teams Values(5, 'Delhi Capitals', 'India', 'Ricky Ponting', 'Rishabh Pant');
Insert into Teams Values(6, 'Sunrisers Hyderabad', 'India', 'Trevor Bayliss', 'David Warner');
Insert into Teams Values(7, 'Punjab Kings', 'India', 'Anil Kumble', 'KL Rahul');
Insert into Teams Values(8, 'Rajasthan Royals', 'India', 'Andrew McDonald', 'Sanju Samson');
Insert into Teams Values(9, 'Sydney Sixers', 'Australia', 'Greg Shipperd', 'Moises Henriques');
Insert into Teams Values(10, 'Melbourne Stars', 'Australia', 'David Hussey', 'Glenn Maxwell');
Insert into Teams Values(11, 'Perth Scorchers', 'Australia', 'Adam Voges', 'Ashton Turner');
Insert into Teams Values(12, 'Karachi Kings', 'Pakistan', 'Herschelle Gibbs', 'Imad Wasim');
Insert into Teams Values(13, 'Lahore Qalandars', 'Pakistan', 'Aaqib Javed', 'Sohail Akhtar');
Insert into Teams Values(14, 'Peshawar Zalmi', 'Pakistan', 'Darren Sammy', 'Wahab Riaz');
Insert into Teams Values(15, 'Quetta Gladiators', 'Pakistan', 'Moin Khan', 'Sarfaraz Ahmed');
Insert into Teams Values(16, 'England National Team', 'England', 'Chris Silverwood', 'Eoin Morgan');
Insert into Teams Values(17, 'Australia National Team', 'Australia', 'Justin Langer', 'Aaron Finch');
Insert into Teams Values(18, 'India National Team', 'India', 'Ravi Shastri', 'Virat Kohli');
Insert into Teams Values(19, 'New Zealand National Team', 'New Zealand', 'Gary Stead', 'Kane Williamson');
Insert into Teams Values(20, 'South Africa National Team', 'South Africa', 'Mark Boucher', 'Temba Bavuma'); 
SELECT * FROM Teams;
SELECT * FROM Teams where TeamId>=15;
SELECT * FROM Teams where Country like'I%';
SELECT * FROM Teams where Captain='Virat Kohli';
 