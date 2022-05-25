use librarydatabase;

-- create table_name(
-- column_name datatype optional constraint,
-- column_name datatype optional constraint,
-- column_name datatype optional constraint,
-- ......
-- constraint constraint_name constraint_type(column_name)
-- 
-- );

-- User table
create table User(
User_ID int(10) Not Null,
Full_Name varChar(30) Not Null,
Gender varChar(1) Not Null,
Address varChar(50) Not Null,
Phone_Number int(15) Not Null,
-- define the primary key colum --
constraint User_PK Primary Key(User_ID)
);

-- Book table
create table Book(
Book_ID int(10) Not Null,
Book_Title varChar(45) Not Null,
Book_Author varChar(45) Not Null,
-- define the primary key colum --
constraint Book_PK Primary Key(Book_ID)
);


-- Borrowing table
create table Borrowing(
Borrowing_ID int Not Null,
Borrowing_Date date Not Null,
Return_Date date Not Null,
User_ID int Not Null,
Librarian_ID int Not Null,
Book_ID int Not Null
);

-- Librarian table
create table Librarian(
Librarian_ID int(10) Not Null,
Full_Name varChar(45) Not Null,
Email_Address varChar(45) Not Null,
Phone_Number varChar(15) Not Null,
Home_Address varChar(45) Not Null,
Job varChar(20) Not Null
);

select *
from User;

select *
from Librarian;

select *
from Borrowing;

select *
from Book;