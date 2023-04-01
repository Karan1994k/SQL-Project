-- Karan Rajesh Sawant
-- Retail Mart Managemant

-- Q1
create database  if not exists SQLbasics;

-- Q2
use SQLbasics;

-- Q3
create table product (product_code int, product_name varchar(255), price int, stock int, category varchar(255));
create table customer (field_customerID int, customer_name varchar(255), customer_location varchar(255), customer_phonenumber int);
create table sales (field_date date, order_number int, product_code int, product_name varchar(255), quantity int, price int);

-- Q4
insert into product values (1, "tulip",198,5,"perfume"),
(2,"cornoto",50,21,"icecream"),
(3,"Pen",10,52,"Stationary"),
(4,"Lays",10,20,"snacks"),
(5,"mayanoise",90,10,"dip"),
(6,"jam",105,10,"spread"),
(7,"shampoo",5,90,"hair product"),
(8,"axe",210,4,"perfume"),
(9,"park avenue",901,2,"perfume"),
(10,"wattagirl",201,3,"perfume"),
(11,"pencil",4,10,"Stationary"),
(12,"sharpener",5,90,"Stationary"),
(13,"sketch pen",30,10,"Stationary"),
(14,"tape",15,30,"Stationary"),
(15,"paint",60,12,"Stationary"),
(16,"chocolate",25,50,"snacks"),
(17,"biscuts",60,26,"snacks"),
(18,"mango",100	,21,"fruits"),
(19	,"apple",120,9,"fruits"),
(20	,"kiwi",140,4,"fruits"),
(21,"carrot",35,12,"vegetable"),
(22,"onion",22,38,"vegetable"),
(23,"tomato",21,15,"vegetable"),
(24,"serum",90,4,"hair product"),
(25,"conditioner",200,5,"hair product"),
(26,"oil bottle",40,2,"kitchen utensil");
insert into customer values
(1111,"Nisha","kerala",8392320),
(1212,"Oliver","kerala",4353891),
(1216,"Nila","delhi",3323242),
(1246,"Vignesh","chennai",1111212),
(1313,"shiny","Maharastra",5454543),
(1910,"Mohan","mumbai",9023941),
(2123,"Biyush","Bombay",1253358),
(3452,"Alexander","West Bengal",1212134),
(3921,"Mukesh","Manipur",4232321),
(5334,"Christy","pakistan",2311111),
(9021,"Rithika","Kashmir",1121344),
(9212,"Jessica","banglore",1233435),
(9875,"Stephen","chennai",1212133);

select * from product;

alter table sales modify order_number varchar(255);

-- Q5
alter table sales add serial_number int;

-- Q6
alter table product modify stock varchar(255);

-- Q7
alter table product rename to productdetails;

-- Q8
alter table sales drop order_number;
alter table sales drop serial_number;

-- Q9
alter table sales change field_date order_date date;
 alter table sales change product_code product_id int;
alter table sales add order_no varchar(255) after order_date;
alter table sales change product_id customer_id int;
select order_date, order_no, customer_id, quantity,price from sales;
alter table sales drop categories;
alter table sales change product_name c_name varchar(255);
alter table sales add s_code int after c_name;
alter table sales drop P_name;
alter table sales add p_name varchar(255) after s_code;
insert into sales values ("2016-07-24","HM06",	9212,	"Jessica",	11,	"pencil",	3,	30),
("2016-10-19","HM09",	3921,	"Mukesh",	17,	"biscuits",	10,	600),
("2016-10-30","HM10",	9875,	"Stephen",	2,	"cornoto",	10,	500),
("2018-04-12","HM03",	1212,	"Oliver",	20,	"kiwi",	3,	420),
("2018-05-02","HM05",	1910,	"Mohan",	20,	"kiwi",	2,	280),
("2018-09-20","HM08",	5334,	"Chirsty",	16,	"chocolate",	2,	50),
("2019-01-11","HM07",	1246,	"Vignesh",	19,	"apple",	5,	600),
("2019-03-15","HM01",	1910,	"Mohan",	5,	"mayanoise",	4,	360),
("2021-02-10","HM04",	1111,	"Nisha",	25,	"conditioner",	5,	1000),
("2021-02-12","HM02",	2123,	"Biyush",	3,	"Pen",	2,	20);

-- Q10 
select category from productdetails where category="stationary";

-- Q11
select distinct * from productdetails;

-- Q12
select * from sales where quantity>2 and price<500;

-- Q13
select * from customer where customer_name like "%a";

