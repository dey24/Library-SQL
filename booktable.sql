	CREATE DATABASE Library

create table Book_Details(
ISBN_Code int Primary Key,
Book_Title varchar(100),
Language varchar(10),
Binding_id int,
No_Copies_Actual int,
No_Copies_Current int,
Category_id int,
Published_year int
)
drop table Book_Details
*****insert values in the table*****

insert into Book_Details 
values ('001', 'Data Structure and Algorithms', 'English',2,20,15,2,2006);

*****create next table*****

create table Binding_Details(
Binding_id int primary key,
Binding_Name varchar(50)
)

*****insert values in binding table*****

insert into Binding_Details
values ('01', 'McGraw Connor');
insert into Binding_Details
values ('02', 'Book Prints');
insert into Binding_Details
values ('03', 'Publishers');
insert into Binding_Details
values ('04', 'Publication OP');

*****creating relation between booktable and bindingtable*****

alter table Book_Details
add constraint Binding_ID_FK foreign key(Binding_id) references Binding_Details(Binding_id);

*****Creating Category Table*****

create table Category_Details (
Catergory_id int primary key,
Category_name varchar(50)
)

*****insert values in category details table*****

insert into Category_Details values (1, 'Database');
insert into Category_Details values (2, 'Programming Language');

*****creating relationship between Book and category table*****

alter table Book_Details add constraint Category_id_fk Foreign Key (Category_id) references Category_Details(Catergory_id);

*****create borrower table*****

create table borrower_details(
Borrower_id int primary key,
Book_id int,
Borrower_From Date,
Borrower_To Date,
Actual_Return_Date Date,
Issued_by int
)

*****inserting some data in the borrower table*****

insert into borrower_details values (
1, 004, '01-Aug-2020', '01-Sep-2020', '01-Sep-2020', 1
)
insert into borrower_details values (
2, 6, '02-Aug-2020', '02-Sep-2020', NULL, 2
)

create table Staff_Details(
Staff_Id int primary key,
Staff_Name varchar(50),
Password varchar(35),
Is_Admin binary,
Designation varchar(20)
)
Drop table Staff_Details;

*****inserting some data in staff details****

Insert into Staff_Details values 
(
1, 'Kartik Sau', '1234kartikcallingkartik', 0, 'HOD'
);
Insert into Staff_Details values (
2, 'Some Name', '123somename', 0, 'Lib_mgr'
);

****relationship between borrower and staff table*****

Alter table borrower_details
Add Constraint Issued_by_fk foreign key(Issued_by) references Staff_Details(Staff_Id);

****Create Student table****

Create Table Student_Details (
Student_id varchar(20) primary key,
Student_name varchar(30),
Gender varchar(10),
DOB date,
Borrower_id int,
Department varchar(20),
contact_number varchar(11)
)

******Insert some data in Student details table*****

insert into Student_Details values (
'2019-1001', 'Arnab, Sarkar', 'Male', '05-Oct-2000', 1, 'CSE', 0000000001
)
insert into Student_Details values (
'2019-1002', 'Biswadeep, Bhattacharya', 'Male', '09-March-2001', 2, 'CSE', 0000000002
)
insert into Student_Details values (
'2019-1003', 'Banshita, Dutta Roy', 'Female', '04-March-2000', 3, 'CSIT', 0000000004
)
insert into Student_Details values (
'2019-1004', 'Chiranjit, Dey', 'Male', '24-May-2000', 4, 'CSE', 0000000005
)

********relationship b/w student and borrower table********

alter table Student_Details add Constraint borrower_id_fk foreign key(Borrower_id) references borrower_details(Borrower_id);

*****Create shelf table****

create table Shelf_Details(
Shelf_id int primary key,
Shelf_No int,
Floor_No int, 
)

****inserting data into shelf-details table****

insert into Shelf_Details values (
1,1,1
);
insert into Shelf_Details values (
2,2,1
);
insert into Shelf_Details values (
3,1,2
)