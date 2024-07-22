use mydb;
CREATE TABLE bank_details (
  bank_id int NOT NULL UNIQUE,
  bank_name varchar(50) NOT NULL,
  address varchar(100) NOT NULL,
  city varchar(20) NOT NULL default 'Bangalore',
  state varchar(20) NOT NULL,
  phone varchar(15) NOT NULL,
  email varchar(50) NOT NULL,
  PRIMARY KEY (bank_id),
  CHECK ( phone LIKE '+91%')
  );
  CREATE TABLE cust_details (
  cust_id int NOT NULL UNIQUE,
  bank_id int NOT NULL,
  cust_name varchar(50) NOT NULL,
  address varchar(100) NOT NULL,
  city varchar(20) NOT NULL default 'Bangalore',
  state varchar(20) NOT NULL,
  phone varchar(15) NOT NULL,
  email varchar(50) NOT NULL,
  PRIMARY KEY (cust_id),
  FOREIGN KEY (bank_id) REFERENCES bank_details(bank_id),
  CHECK (phone LIKE '+91%' AND  email like '%@gmail.com')
);
CREATE TABLE loan_details (
  loan_id int NOT NULL UNIQUE,
  lcust_id int NOT NULL,
  loan_amount decimal(10, 2) NOT NULL,
  interest_rate decimal(5, 2) NOT NULL,
  loan_duration int NOT NULL default 1,
  loan_type varchar(20) NOT NULL,
  loan_status varchar(20) NOT NULL ,
  PRIMARY KEY (loan_id),
  FOREIGN KEY (lcust_id) REFERENCES cust_details(cust_id),
  CHECK (loan_amount > 0 AND interest_rate > 0 AND loan_duration > 0)
);

/*Bank Details*/
INSERT INTO bank_details (bank_id, bank_name, address,state, phone, email) VALUES 
(1, 'State Bank of India', 'Plot No. 111, Sector 18', 'Karnataka', '+919876543210', 'sbi@sbi.com');
INSERT INTO bank_details VALUES (2, 'ICICI Bank', 'ICICI Bank Tower, BKC', 'Mumbai', 'Maharashtra', '+919876543211', 'icici@icici.com');
INSERT INTO bank_details VALUES(3, 'HDFC Bank', 'HDFC Bank House, Senapati Bapat Marg', 'Mumbai', 'Maharashtra', '+919876543212', 'hdfc@hdfc.com');
INSERT INTO bank_details VALUES(4, 'Axis Bank', 'Axis Bank Tower, Sector 18', 'Gurgaon', 'Haryana', '+919876543213', 'axis@axis.com');
INSERT INTO bank_details VALUES(5, 'Kotak Mahindra Bank', 'Kotak Mahindra Bank Ltd, Nariman Point', 'Mumbai', 'Maharashtra', '+919876543214', 'kotak@kotak.com');
INSERT INTO bank_details VALUES(6, 'Yes Bank', 'Yes Bank Tower, Sector 18', 'Gurgaon', 'Haryana', '+919876543215', 'yes@yes.com');
INSERT INTO bank_details VALUES(7, 'Bank of Baroda', 'Bank of Baroda, Mandvi', 'Mumbai', 'Maharashtra', '+919876543216', 'bob@bob.com');
INSERT INTO bank_details VALUES(8, 'Union Bank of India', 'Union Bank Bhavan, Nariman Point', 'Mumbai', 'Maharashtra', '+919876543217', 'ubi@ubi.com');
INSERT INTO bank_details VALUES(9, 'Punjab National Bank', 'PNB House, Sector 18', 'New Delhi', 'Delhi', '+919876543218', 'pnb@pnb.com');
INSERT INTO bank_details VALUES(10, 'Canara Bank', 'Canara Bank, J C Road', 'Bangalore', 'Karnataka', '+919876543219', 'canara@canara.com');

SELECT * FROM BANK_DETAILS;
/*Customer Details*/
INSERT INTO cust_details VALUES (1, 1, 'Rahul Kumar', 'plot No. 1, Main Street', 'Bangalore', 'Karnataka', '+919876543210', 'rahulkumar@gmail.com');
INSERT INTO cust_details VALUES(2, 2, 'Priya Sharma', 'Plot No. 2, Second Street', 'Mumbai', 'Maharashtra', '+919876543211', 'priyasharma@gmail.com');
INSERT INTO cust_details VALUES(3, 3, 'Rajesh Singh', 'Plot No. 7, Third Street', 'Mumbai', 'Maharastra', '+919876543212', 'rajeshsingh@gmail.com');
INSERT INTO cust_details VALUES(4, 4, 'Swati Gupta', 'Sector 18', 'Haryana', 'Guragaon', '+919876543213', 'swatigupta@gmail.com');
INSERT INTO cust_details VALUES(5, 5, 'Abhishek Jain', 'No. 5, Fifth Street', 'Mumbai', 'Maharastra', '+919876543214', 'abhishekJain@gmail.com');
INSERT INTO cust_details VALUES(6, 6, 'Divya Rao', ' Sixth Street Main 5th cross', 'Haryana', 'Guragaon', '+919876543215', 'divyrao@gmail.com');
INSERT INTO cust_details VALUES(7, 7, 'Rohan Mehta', 'No. 7, Seventh main', 'Mumbai', 'Maharashtra', '+919876543216', 'rohanmehta@gmail.com');
INSERT INTO cust_details VALUES(8, 8, 'Sonia Singh', ' Nariman Point Eighth main', 'Mumbai', 'Maharastra', '+919876543217', 'soniasingh@gmail.com');
INSERT INTO cust_details VALUES(9, 9, 'Amit Kumar', 'PNB House, Sector 18', 'New Delhi', 'Delhi', '+919876543218', 'amitkumar@gmail.com');
INSERT INTO cust_details VALUES(10, 10, 'Neha Gupta', 'J C Road 2nd Cross', 'Bangalore', 'Karnataka', '+919876543219', 'nehabgupta@gmail.com');

SELECT * FROM CUST_DETAILS;

/*Loan Details*/
INSERT INTO loan_details (loan_id, lcust_id, loan_amount, interest_rate, loan_type, loan_status) 
VALUES (1, 1, 500000.00, 10.50, 'Home Loan', 'Approved');
INSERT INTO loan_details VALUES(2, 2, 300000.00, 12.00, 3, 'Personal Loan', 'Pending');
INSERT INTO loan_details VALUES(3, 3, 200000.00, 11.00, 2, 'Car Loan', 'Rejected');
INSERT INTO loan_details VALUES(4, 4, 400000.00, 10.00, 4, 'Home Loan', 'Approved');
INSERT INTO loan_details VALUES(5, 5, 100000.00, 15.00, 1, 'Personal Loan', 'Pending');
INSERT INTO loan_details VALUES(6, 6, 600000.00, 9.50, 6, 'Home Loan', 'Approved');
INSERT INTO loan_details VALUES(7, 7, 350000.00, 12.50, 3, 'Car Loan', 'Rejected');
INSERT INTO loan_details VALUES(8, 8, 250000.00, 11.50, 2, 'Personal Loan', 'Pending');
INSERT INTO loan_details VALUES(9, 9, 450000.00, 10.50, 5, 'Home Loan', 'Approved');
INSERT INTO loan_details VALUES(10, 10, 150000.00, 13.00, 1, 'Car Loan', 'Rejected');

SELECT * FROM LOAN_DETAILS;

