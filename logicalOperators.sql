 
  Use company;
  select * from Employee;
 /*AND*/
 SELECT * FROM EMPLOYEE WHERE emp_mng=1 and emp_exp >8;
 SELECT * FROM EMPLOYEE WHERE emp_id>=5 and emp_dept='Finance';
 SELECT * FROM EMPLOYEE WHERE emp_id=205 and emp_sal>=50000;
 SELECT * FROM EMPLOYEE WHERE emp_name='Akshata J' and emp_dept='IT';
 SELECT * FROM EMPLOYEE WHERE emp_dept='IT' and emp_sal>=75000 and emp_mng=1;
 /*OR*/
 SELECT * FROM EMPLOYEE WHERE emp_id>105 or emp_sal>=30000 or id<=15;
 SELECT * FROM EMPLOYEE WHERE emp_id>=215 or emp_dept='IT' or emp_sal>=80000;
 SELECT emp_name, emp_dept FROM EMPLOYEE WHERE emp_dept='Sales' or emp_mng=1;
 SELECT emp_id, emp_name FROM EMPLOYEE WHERE mgr_id>=1 or emp_exp>=5; 
 SELECT * FROM EMPLOYEE WHERE emp_exp>=6 or emp_mng=1;
 /*in*/
 SELECT * FROM EMPLOYEE WHERE emp_id in(225,208,210,216,220);
 SELECT emp_name,id FROM EMPLOYEE WHERE emp_exp in (2,3,4,5,8,10);
 SELECT emp_name,emp_id FROM EMPLOYEE WHERE emp_sal in (50000,60000,75000,80000,40000);
 SELECT * FROM EMPLOYEE WHERE emp_name in ("Sushma M","Shweta K","Ashwin M","Dhanush");
 SELECT emp_name,emp_id FROM EMPLOYEE WHERE emp_dept in ("Sales","IT","Finance");
 /*not in*/
 SELECT * FROM EMPLOYEE WHERE emp_id not in(215,202,218,208,219);
 SELECT emp_name,id,emp_dept,emp_sal FROM EMPLOYEE WHERE emp_exp in (4,5,8,10,11);
 SELECT emp_name,emp_id FROM EMPLOYEE WHERE emp_sal not in (50000,60000,75000,80000,40000);
 SELECT * FROM EMPLOYEE WHERE emp_name not in ("Shweta K","Ashwin M","Dhanush","Kirti","Siddhi");
 SELECT emp_name,emp_dept FROM EMPLOYEE WHERE emp_dept not in ("Sales","IT","Finance","Marketing");
 /*between*/
 SELECT * FROM EMPLOYEE WHERE emp_id between 205 and 218;
 SELECT emp_name,emp_dept,emp_exp,emp_sal FROM EMPLOYEE WHERE emp_exp between 2 and 10;
 SELECT emp_name,emp_dept,emp_sal FROM EMPLOYEE WHERE emp_sal between 50000 and 75000;
 SELECT * FROM EMPLOYEE WHERE mgr_id between 1 and 5;
 SELECT emp_name,emp_dept,id FROM EMPLOYEE WHERE id between 2 and 12 ;
 /*Not Between*/
 SELECT * FROM EMPLOYEE WHERE emp_id not between 205 and 208;
 SELECT emp_name,emp_dept,emp_exp,emp_sal FROM EMPLOYEE WHERE emp_exp not between 2 and 8;
 SELECT emp_name,emp_dept,emp_sal FROM EMPLOYEE WHERE emp_sal not between 50000 and 75000;
 SELECT * FROM EMPLOYEE WHERE mgr_id not between 2 and 5;
 SELECT emp_name,emp_dept,id FROM EMPLOYEE WHERE id not between 2 and 12 ;
 /*like*/
 SELECT * FROM EMPLOYEE WHERE emp_id like '%0';
 SELECT emp_name,emp_dept,emp_exp,emp_sal FROM EMPLOYEE WHERE emp_sal like '6%00';
 SELECT emp_name,emp_dept,emp_sal FROM EMPLOYEE WHERE emp_name like '%sh';
 SELECT * FROM EMPLOYEE WHERE emp_dept like 'M%';
 SELECT emp_name,emp_dept,id FROM EMPLOYEE WHERE emp_name like 'K%i' ;

 /*Product Table*/
  select * from product;
  /*and*/
  select * from product where prd_price>=20000 and rating>3;
  select * from product where prd_quantity>=50 and prd_price>25000;
  select * from product where prd_price>6000 and prd_quantity>100;
  select * from product where id>=10 and rating>3;
  select * from product where prd_price>=40000 and id>5;
  /*or*/
  select * from product where prd_price>=20000 or rating>3 or prd_quantity>100;
  select * from product where prd_quantity>=50 or prd_price>25000;
  select * from product where prd_price>6000 or prd_quantity>100;
  select * from product where id>=10 or rating>3;
  select * from product where prd_price>=40000 or id>10;
  /*in*/
SELECT * FROM product WHERE id in(2,20,10,16,4);
SELECT * FROM product WHERE prd_quantity in (100,50,200,150,80,120);
SELECT prd_name,id FROM product WHERE prd_brand in ("Apple","Samsung","Nike","HP","Sony");
SELECT * FROM product WHERE prd_name in ("Apple Watch","Samsung TV","Nike Shoes","Sony Headphones","Dell Laptop");
SELECT manufactured_date,id FROM product WHERE prd_price in (52299,11299,349,12339);
/*not in*/
SELECT * FROM product WHERE id not in(2,20,10,16,4);
SELECT * FROM product WHERE prd_quantity not in (100,50,200,150,80,120);
SELECT prd_name,id FROM product WHERE prd_brand not in ("Apple","Samsung","Nike","HP","Sony");
SELECT * FROM product WHERE prd_name not in ("Apple Watch","Samsung TV","Nike Shoes","Sony Headphones","Dell Laptop");
SELECT manufactured_date,id FROM product WHERE prd_price not in (52299,11299,349,12339);
/*between*/
SELECT * FROM product WHERE id between 6 and 12;
SELECT * FROM product WHERE prd_quantity between 200 and 250;
SELECT prd_name,id FROM product WHERE prd_price between 50000 and 60000;
SELECT * FROM product WHERE rating between 3 and 5;
SELECT manufactured_date,id FROM product WHERE prd_quantity between 100 and 200;
/*not between*/
SELECT * FROM product WHERE id not between 10 and 12;
SELECT * FROM product WHERE prd_quantity not between 200 and 300;
SELECT prd_name,id FROM product WHERE prd_price not between 50000 and 60000;
SELECT * FROM product WHERE rating not between 1 and 3;
SELECT manufactured_date,id FROM product WHERE prd_quantity not between 100 and 200;
/*like*/
SELECT * FROM product WHERE id like '1%2';
SELECT * FROM product WHERE prd_quantity like '2%';
SELECT prd_name,id FROM product WHERE prd_price like '6%0';
SELECT * FROM product WHERE prd_brand like '%P%';
SELECT manufactured_date,id,prd_name FROM product WHERE prd_name like '%S%y%';
