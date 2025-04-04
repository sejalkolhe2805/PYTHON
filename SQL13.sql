use operation;
create table c1(
course_name varchar(50),
course_id int (10),
course_title varchar(60),
course_desc varchar(80),
launch_date date,
course_fee int,
course_mentor varchar(50),
course_launch_year int)
partition by range (course_launch_year)(
partition p0 values less than (2019),
partition p1 values less than (2020),
partition p2 values less than (2021),
partition p3 values less than (2022),
partition p4 values less than maxvalue);

select * from c1;

select table_name, partition_name,partition_ordinal_position,partition_method,partition_expression,table_rows
from information_schema.partitions
where table_name= "c1";


insert into c1 values
('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu', 2017),
('aiops' , 102 , 'ML', "this is aiops course" ,'2019-07-07',3540,'sudhanshu', 2020) ;


create table  c2 (
course_name varchar(50) ,
course_id int(10) ,
course_title varchar(60),
course_desc varchar(80),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_launch_year int)
partition by list(course_launch_year)(
partition p0 values in(2019,2020),
partition p1 values in(2022,2021),
partition p2 values in(2023,2024)
);

select table_name, partition_name,partition_ordinal_position,partition_method,partition_expression,table_rows
from information_schema.partitions
where table_name= "c2";

insert into c2 values
('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu', 2019) ,
('aiops' , 102 , 'ML', "this is aiops course" ,'2019-07-07',3540,'sudhanshu', 2020) ;

select * from c2 ;


