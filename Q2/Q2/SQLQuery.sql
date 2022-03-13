create database school;
create table courses(
	CourseID int identity(1, 1) primary key,
	name varchar(50),
	Lecturer_name varchar(50)
);
create table Student(
	StudentId int identity(1, 1) primary key,
	Name varchar(50),
	City Varchar(50),
	CourseID int Foreign key references courses(CourseID)
);
insert into courses values
	("web Development", "M.M.Herath"),
	("Graphic Design", "J.S.V.Piyasena"),
	("Mobile App Development", "K.K.S. Dias"),
	("Java", "U.H.S.Perera");

insert into Student values
	("Kasun Gamage", "Kandy"),
	("Daniel Sam", "Jaffna"),
	("Hansi Silva", "Colombo"),
	("Ranidu Herath", "Matara"),
	("Praneeth Wijesinghe", "Kandy"),
	("Nuwani Herath", "Rathnapura");

select * from student;
select StudentId, name, city from student where city="kandy";
update Student set city="Galle" where studentId=4;