
-- drop table flight_detail;

insert into flight_detail(Flight_No,Flight_Name,Flight_Des,Flight_Tot_Capacity) values
('F1','indigo','Good Flight',200),('F2','Air India','Nice Flight',150),
('F3','SpiceJet','Excellent Flight',170),
('F4','Go First','Good Flight',190),('F5','TruJe','average Flight',200);

create table passenger( User_id int primary key auto_increment,User_Name varchar(50) not null,
Email varchar(60) not null,Password varchar(30) not null,Mob  int not null,Address varchar(70) not null,
DOB date
);

insert into passenger(User_id,User_Name,Email,Password,Mob,Address,DOB) values
(1,'User1','user1@gmail.com','user1@123',456798963,'kochi','2022-11-01'),
(2,'user2','user2@gmail.com','user2@123',456798968,'patna','2022-07-01'),
(3,'user3','user3@gmail.com','user3@123',456798785,'ranchi','2022-08-01'),
(4,'user4','user4@gmail.com','user4@123',456795665,'jharkhand','2022-01-01'),
(5,'user4','user5@gmail.com','user5@123',456795465,'mumbai','2022-09-01');

create table flight_schedule(
id int primary key auto_increment,
Flight_From varchar(100) not null,
Flight_To varchar(60) not null,
Flight_Date date,
Flight_Time datetime,
Flight_Cost int not null,
Flight_No varchar(30) not null,
  foreign key  (Flight_No)
references flight_detail(Flight_No)
);
-- drop table flight_schedule;

insert into flight_schedule(id,Flight_From,Flight_To,Flight_Date,Flight_Time,Flight_Cost,Flight_No)values
(102,'patna','mumbai','2022-10-01','2022-11-10 14:23:44',5000,'F2'),
(103,'kochi','mumbai','2022-08-01','2022-07-10 12:23:44',7000,'F3');

create table booking(
Ticket_No int primary key auto_increment,
Flight_From varchar(100) not null,
Flight_To varchar(60) not null,
Booking_Date date,
Travel_Date date,
Flight_Time datetime,
Boarding_Time datetime,
Seat_No int not null,
Flight_No varchar(30) not null,foreign key(Flight_No) references flight_detail(Flight_No),
User_id int, foreign key  (User_id) references passenger(User_id)
);

desc booking;

