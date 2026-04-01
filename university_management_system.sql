-- University Management System
-- Created by Ankita Chincholkar
-- Description: Database for managing students, faculty, courses

create database university;
use university;
create table student(id int(5),name varchar(50),total_creadit int(5),primary key(id));
create table instructor(instructor_id int,name varchar(50),dept_name varchar(50),salary int,primary key(instructor_id));
create table advisor(s_id int,i_id int,constraint foreign key fk_sid(s_id)references student(id),constraint foreign key fk_iid(i_id)references instructor (instructor_id));
create table department(dept_name varchar(50),building varchar (50),budget int(5),primary key(dept_name));
create table course(course_id int,title varchar(50),dept_name varchar(50),credits int (5),primary key(course_id));
create table prereq(course_id int,prereq_id int,constraint foreign key fk_courseid(course_id)references course(course_id),constraint foreign key fk_prereq_id(prereq_id)references course(course_id));
create table takes(id int,course_id int,sec_id int,semester int,academic_year year,grade char(2),constraint foreign key fk_id(id)references student(id));
create table time_slot(time_slot_id int,date_of_activity date,start_time time,end_time time,primary key(time_slot_id));
create table teaches(i_id int,course_id int,sec_id int,semester int,academic_year year,constraint foreign key fk_id(i_id)references instructor(instructor_id));
create table classroom(building varchar(50),room_no int,capacity int,primary key(building,room_no));
create table section(course_id int,sec_id int,semester int,academic_year year,building varchar(50),room_no int,time_slot_id int,primary key(course_id,sec_id,semester,academic_year));
alter table takes add constraint foreign key fk_course_sec_sem_year(course_id,sec_id,semester,academic_year)references section(course_id,sec_id,semester,academic_year);
insert into student values (123,"ankita",9);
insert into student values (124,"rugved",8);
insert into student values (125,"sushant",7);
insert into student values (126,"ratan",5);
select * from student;




