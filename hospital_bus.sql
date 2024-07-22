create database mydb;
use mydb;
CREATE TABLE hospital_info (
    hospital_id INT,
    hospital_name VARCHAR(100),
    address VARCHAR(255),
    phone_number VARCHAR(20),
    num_beds INT,
    num_doctors INT
);
CREATE TABLE bus_info (
    bus_id INT,
    bus_number VARCHAR(20),
    bus_type VARCHAR(25),
    bus_name VARCHAR(50),
    ticket_price DECIMAL(10, 2),
    capacity INT
);
/*Columns added to hospital_info using alter*/
ALTER TABLE hospital_info ADD COLUMN established_year INT;
ALTER TABLE hospital_info ADD COLUMN email VARCHAR(100);
ALTER TABLE hospital_info ADD COLUMN rating DECIMAL(3, 2);
ALTER TABLE hospital_info ADD COLUMN specialty VARCHAR(100);

/*Columns added to bus_info using alter*/
ALTER TABLE bus_info ADD COLUMN seat_no int;
ALTER TABLE bus_info ADD COLUMN seat_type VARCHAR(25);
ALTER TABLE bus_info ADD COLUMN departure_time TIME;
ALTER TABLE bus_info ADD COLUMN arrival_time TIME;

/*Inserting data into hospital_info table*/
INSERT INTO hospital_info (hospital_id, hospital_name, address, phone_number, num_beds, num_doctors, established_year, email, rating, specialty)
VALUES (1, 'Bangalore City Hospital', 'MG Road, Bangalore', '080-12345678', 100, 50, 1990, 'contact@bangalorecityhospital.com', 4.5, 'General'),
(2, 'Bangalore Central Hospital', ' Brigade Road, Bangalore', '080-23456789', 150, 70, 1985, 'info@bangalorecentralhospital.com', 4.2, 'Cardiology'),
(3, 'Bangalore West Hospital', 'Koramangala, Bangalore', '080-34567890', 200, 90, 2000, 'westside@bangalorehospital.com', 4.8, 'Orthopedics'),
(4, 'Bangalore Medicare Hospital', 'Whitefield, Bangalore', '080-45678901', 120, 60, 1995, 'eastside@bangalorehospital.com', 4.3, 'Pediatrics'),
(5, 'Bangalore Nest Hospital', ' Hebbal, Bangalore', '080-56789012', 110, 55, 1992, 'north@bangalorehospital.com', 4.1, 'Neurology'),
(6, 'Bangalore Southern Hospital', 'Jayanagar, Bangalore', '080-67890123', 130, 65, 1988, 'south@bangalorehospital.com', 4.6, 'Dermatology'),
(7, 'Bangalore Welltown Hospital', 'Indiranagar, Bangalore', '080-78901234', 140, 70, 1996, 'uptown@bangalorehospital.com', 4.7, 'Oncology'),
(8, 'Bangalore MariGold Hospital', 'BTM Layout, Bangalore', '080-89012345', 160, 80, 2001, 'downtown@bangalorehospital.com', 4.4, 'Gastroenterology'),
(9, 'Bangalore Lakeview Hospital', 'Ulsoor, Bangalore', '080-90123456', 170, 85, 1987, 'lakeview@bangalorehospital.com', 4.2, 'Pulmonology'),
(10, 'Bangalore Ayush Hospital', 'Bellandur, Bangalore', '080-01234567', 180, 90, 1993, 'riverside@bangalorehospital.com', 4.5, 'Urology'),
(11, 'Bangalore Hilltop Hospital', 'HSR Layout, Bangalore', '080-12345679', 190, 95, 1998, 'hilltop@bangalorehospital.com', 4.6, 'Endocrinology'),
(12, 'Bangalore Ayurtej Hospital', 'Banashankari, Bangalore', '080-23456780', 210, 105, 1991, 'valley@bangalorehospital.com', 4.3, 'Hematology'),
(13, 'Bangalore Meadow Hospital', 'Basavanagudi, Bangalore', '080-34567891', 230, 115, 1989, 'meadow@bangalorehospital.com', 4.7, 'Rheumatology'),
(14, 'Bangalore Jaidev Hospital', 'Richmond Town, Bangalore', '080-45678902', 250, 125, 1994, 'mountain@bangalorehospital.com', 4.8, 'Nephrology'),
(15, 'Bangalore Cure Hospital', 'JP Nagar, Bangalore', '080-56789013', 270, 135, 2002, 'coastal@bangalorehospital.com', 4.9, 'Ophthalmology'),
(16, 'Belgavi Civil Hospital', 'Shahapur, Belgavi', '0831-1234567', 100, 50, 1990, 'contact@belgavicivilhospital.com', 4.5, 'General'),
(17, 'Belgavi Central Hospital', 'Tilakwadi, Belgavi', '0831-2345678', 150, 70, 1985, 'info@belgavicentralhospital.com', 4.2, 'Cardiology'),
(18, 'Belgavi Hafiz Hospital', 'Darbargalli, Belgavi', '0831-3456789', 200, 90, 2000, 'hafiz@belgavihospital.com', 4.8, 'Orthopedics'),
(19, 'Belgavi Lakeview Hospital', 'Shahapur, Belgavi', '0831-4567890', 120, 60, 1995, 'lakeview@belgavihospital.com', 4.3, 'Pediatrics'),
(20, 'Belgavi vadgaon Hospital', 'Vadgaon, Belgavi', '0831-5678901', 110, 55, 1992, 'north@belgavihospital.com', 4.1, 'Neurology'),
(21, 'Belgavi Tangade Homeopathic clinic', '987 Tilakwadi, Belgavi', '0831-6789012', 130, 65, 1988, 'tangade@belgavihospital.com', 4.6, 'Dermatology'),
(22, 'Belgavi Arihant Hospital', 'Khanapur Road, Belgavi', '0831-7890123', 140, 70, 1996, 'arihant@belgavihospital.com', 4.7, 'Oncology'),
(23, 'Belgavi Apoorva Hospital', 'Bhagyanagar, Belgavi', '0831-8901234', 160, 80, 2001, 'apoorva@belgavihospital.com', 4.4, 'Gastroenterology'),
(24, 'Belgavi Lakeside Hospital', '852 Railway Colony, Belgavi', '0831-9012345', 170, 85, 1987, 'lakeside@belgavihospital.com', 4.2, 'Pulmonology'),
(25, 'Belgavi K.L.E Hospital', 'Camp, Belgavi', '0831-0123456', 180, 90, 1993, 'kle@belgavihospital.com', 4.5, 'Urology'),
(26, 'Belgavi Hilltop Hospital', '654 Mahantesh Nagar, Belgavi', '0831-1234568', 190, 95, 1998, 'hilltop@belgavihospital.com', 4.6, 'Endocrinology'),
(27, 'Belgavi Valley Hospital', '321 Ramteerth Nagar, Belgavi', '0831-2345679', 210, 105, 1991, 'valley@belgavihospital.com', 4.3, 'Hematology'),
(28, 'Belgavi Meadow Hospital', '987 Rani Channamma Nagar, Belgavi', '0831-3456780', 230, 115, 1989, 'meadow@belgavihospital.com', 4.7, 'Rheumatology'),
(29, 'Belgavi Mountain Hospital', '753 Sadashiv Nagar, Belgavi', '0831-4567891', 250, 125, 1994, 'mountain@belgavihospital.com', 4.8, 'Nephrology'),
(30, 'Belgavi Coastal Hospital', '159 Nanawadi, Belgavi', '0831-5678902', 270, 135, 2002, 'coastal@belgavihospital.com', 4.9, 'Ophthalmology');
 SELECT * FROM Hospital_info;
 
 /*Inserting data into Bus_info table*/

INSERT INTO bus_info (bus_id, bus_number, bus_type, bus_name, ticket_price, capacity, seat_no, seat_type, departure_time, arrival_time)
VALUES(1, 'VRL100', 'Sleeper', 'VRL Luxury', 500.00, 50, 1, 'Window', '08:00', '14:00'),
(2, 'VRL101', 'Semi-Sleeper', 'VRL Express', 300.00, 45, 2, 'Aisle', '09:00', '12:00'),
(3, 'VRL102', 'Sleeper', 'VRL Comfort', 1200.00, 40, 3, 'Window', '22:00', '08:00'),
(4, 'VRL103', 'Semi-Sleeper', 'VRL Fast', 800.00, 55, 4, 'Aisle', '21:00', '05:00'),
(5, 'VRL104', 'Sleeper', 'VRL Premium', 1500.00, 50, 5, 'Window', '18:00', '06:00'),
(6, 'Reshma200', 'Sleeper', 'Reshma Deluxe', 1000.00, 52, 6, 'Aisle', '20:00', '06:00'),
(7, 'Reshma201', 'Semi-Sleeper', 'Reshma Comfort', 700.00, 48, 7, 'Window', '22:00', '06:00'),
(8, 'Reshma202', 'Sleeper', 'Reshma Fast', 600.00, 46, 8, 'Aisle', '19:00', '01:00'),
(9, 'Reshma203', 'Semi-Sleeper', 'Reshma Express', 500.00, 50, 9, 'Window', '08:00', '14:00'),
(10, 'Reshma204', 'Sleeper', 'Reshma Luxury', 1800.00, 54, 10, 'Aisle', '17:00', '07:00'),
(11, 'BMTC300', 'City', 'BMTC Route 1', 50.00, 40, 11, 'Regular', '06:00', '08:00'),
(12, 'BMTC301', 'City', 'BMTC Route 2', 45.00, 38, 12, 'Regular', '07:00', '09:00'),
(13, 'BMTC302', 'City', 'BMTC Route 3', 60.00, 42, 13, 'Regular', '08:00', '10:00'),
(14, 'BMTC303', 'City', 'BMTC Route 4', 55.00, 35, 14, 'Regular', '09:00', '11:00'),
(15, 'BMTC304', 'City', 'BMTC Route 5', 65.00, 36, 15, 'Regular', '10:00', '12:00'),
(16, 'BMTC305', 'City', 'BMTC Route 6', 40.00, 37, 16, 'Regular', '11:00', '13:00'),
(17, 'SRS500', 'Sleeper', 'SRS Comfort', 900.00, 50, 17, 'Window', '20:00', '04:00'),
(18, 'SRS501', 'Semi-Sleeper', 'SRS Fast', 1200.00, 45, 18, 'Aisle', '18:00', '06:00'),
(19, 'SRS502', 'Sleeper', 'SRS Luxury', 1100.00, 48, 19, 'Window', '19:00', '07:00'),
(20, 'SRS503', 'Semi-Sleeper', 'SRS Express', 1500.00, 52, 20, 'Aisle', '17:00', '05:00'),
(21, 'SRS504', 'Sleeper', 'SRS Deluxe', 1300.00, 46, 21, 'Window', '21:00', '07:00'),
(22, 'SRS505', 'Semi-Sleeper', 'SRS Fast', 600.00, 40, 22, 'Aisle', '07:00', '13:00'),
(23, 'SRS506', 'Sleeper', 'SRS Comfort', 500.00, 42, 23, 'Window', '06:00', '10:00'),
(24, 'SRS507', 'Semi-Sleeper', 'SRS Express', 1000.00, 44, 24, 'Aisle', '22:00', '06:00'),
(25, 'SRS508', 'Sleeper', 'SRS Deluxe', 700.00, 48, 25, 'Window', '20:00', '02:00'),
(26, 'SRS509', 'Semi-Sleeper', 'SRS Fast', 400.00, 46, 26, 'Aisle', '06:00', '09:00'),
(27, 'SRS510', 'Sleeper', 'SRS Comfort', 800.00, 50, 27, 'Window', '07:00', '13:00'),
(28, 'SRS511', 'Semi-Sleeper', 'SRS Express', 500.00, 52, 2, 'Aisle', '08:00', '14:00'),
(29, 'SRS512', 'Sleeper', 'SRS Luxury', 400.00, 40, 29, 'Window', '09:00', '13:00'),
(30, 'SRS513', 'Semi-Sleeper', 'SRS Deluxe', 300.00, 45, 30, 'Aisle', '10:00', '14:00');

select * from bus_info;

SELECT MAX(ticket_price) AS max_ticket_price
FROM bus_info;
ALTER TABLE bus_info RENAME COLUMN bus_name TO bus_dept;
update bus_info set bus_dept='BMTC' where bus_id=11;
SELECT bus_dept,MIN(ticket_price) AS min_ticket_price from bus_info group by bus_dept;
