create database FILE ;

use FILE ;

create table table1(
c1 varchar(50),
c2 date,
c3 int); 

create table table2(
c11 varchar(50),
c12 date,
c13 int);

create table table3(
c21 varchar(50),
c22 date,
c23 int);

create table table4(
c31 varchar(50),
c32 date,
c33 int);

delimiter //
create trigger trigger_insert
after insert on table1 for each row
begin
insert into table2(c11,c12,c13) values(new.c1,new.c2,new.c3);
end; //


delimiter //
create trigger trigger_update
after update on table1 for each row
begin
insert into table3(c21,c22,c23) values(user(),sysdate(),old.c3);
end; //


delimiter //
create trigger trigger_delete
after delete on table1 for each row
begin
insert into table4(c31,c32,c33) values(old.c1,old.c2,old.c3);
end; //

select * from table1;
select * from table2;
select * from table3;
select * from table4;

insert into table1 values("ASE","2010-05-01",17);

update table1 set c1 = "ITE" where c3 = 11;
update table1 set c1 = "EEE" where c3 = 1;
update table1 set c3 = 9999 where c1 = "ELECTRICAL";


DELETE FROM TABLE1 WHERE C3=7;
DELETE FROM TABLE1 WHERE C3=11;






