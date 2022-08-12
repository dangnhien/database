# create datebase
-- create database nguyen_van_hieu
-- drop table nguyen_van_hieu.exercise1;

# create table
-- create table nguyen_van_hieu_exercise.table_persion_2 (
--     PK_id int not null auto_increment, 
-- 	name_human varchar(30),
--     continent varchar(30),
--     erea int, 
--     population int,
--     gdb int,
-- 	primary key (PK_id)
-- );

# insert data into table
-- insert into nguyen_van_hieu_exercise.table_persion_2 (name_human, continent, erea, population, gdb)
-- values ('duc_dat_1', 'Asian', 65, 25, 413), 
-- 			('nguyen_nhung_2', 'Europe', 28, 31, 129),
--         ('trinh_dong_4', 'Africa', 23, 371, 18),
--         ('minh_tam_16', 'Europe', 468, 37, 41),
--         ('dang_nhien_456', 'hoa_binh', 12, 20, 10);

# delete record of table data database
-- delete from nguyen_van_hieu_exercise.table_persion_1 
-- where gdb = 2034300000;

# modify  name column
-- alter table nguyen_van_hieu_exercise.table_persion_1
-- rename column erea to area;



########################################################## exercise select part 1 #################################
#1 display properties of table
-- select population 
-- from nguyen_van_hieu_exercise.table_persion_1
-- where name_human = 'Angola 6';

#2 display multiple information
-- select name_human, population
-- from nguyen_van_hieu_exercise.table_persion_1
-- where name_human in ('Angola 6', 'Andorra 3', 'Afghanistan 1');

#3 display information with between operator
-- select name_human, area
-- from nguyen_van_hieu_exercise.table_persion_1
-- where area between 9 and 15;

# modify data exit into column
-- update nguyen_van_hieu_exercise.table_persion_1
-- set area = 57, population = 107, gdb = 970
-- where name_human = 'Angola 6';


################################################### exercise select part 2 ############################################
# add column into table
-- alter table nguyen_van_hieu_exercise.table_persion_1
-- add id int ;

# add primary key
-- alter table nguyen_van_hieu_exercise.table_persion_1
-- add constraint PK_id primary key (id);

# drop column table
-- alter table nguyen_van_hieu_exercise.table_persion_1
-- drop column id;

# update data
-- update nguyen_van_hieu_exercise.table_persion_1
-- set id = 2
-- where name_human = 'Algeria 5';

# modify name column
-- alter table  nguyen_van_hieu_exercise.table_persion_2
-- rename column erea  to area;

# display table
-- select * from nguyen_van_hieu_exercise.table_persion_1 ;

-- drop table nguyen_van_hieu_exercise.table_persion_1;

-- alter table nguyen_van_hieu_exercise.table_persion_2
-- add capital varchar(50);

-- insert into nguyen_van_hieu_exercise.table_persion_2 (capital)
-- values ('bac ninh');

-- delete from nguyen_van_hieu_exercise.table_persion_2
-- where PK_id = 6;

-- update nguyen_van_hieu_exercise.table_persion_2
-- set capital = 'xuan hoi'
-- where PK_id = 5;

# display informations name, continent, population of all nation
-- select name_human, continent, population from nguyen_van_hieu_exercise.table_persion_2

# display all nation have population bigger 200 million people
-- select * from nguyen_van_hieu_exercise.table_persion_2
-- where population >= 25;

# display name nation, gdb medium head people of nations have population bigger 2 million people
-- select name_human, round(gdb/population,2) from nguyen_van_hieu_exercise.table_persion_2
-- where population > 37;

# display name nation, population of nations 'nation 1', 'nation 2', 'nation 3'
-- select name_human, population from nguyen_van_hieu_exercise.table_persion_2
-- where name_human in ('duc_dat_1', 'trinh_dong_4', 'dang_nhien_456');

# display name nation have contain the phrase 'dat'
-- select name_human from nguyen_van_hieu_exercise.table_persion_2
-- where name_human like '%nhien%';


##################################### part 3 of 7: exercise basic #################################
-- create table nguyen_van_hieu_exercise.nobel (
-- 	id int not null auto_increment,
-- 	year int,
-- 	subject varchar(50),
--     winner varchar(50),
--     constraint pk_nobel primary key (id)
-- );


-- insert into nguyen_van_hieu_exercise.nobel (year, subject, winner)
-- values (1960, 'Chemistry', 'Willard F. Libby'),
-- 	(1960, 'Literature', 'Saint-John Perse'),
--     (1960, 'Medicine', 'Sir Frank Macfarlane Burnet'),
--     (1960, 'Medicine', 'Peter Madawar');

-- #1
-- select *
-- from nguyen_van_hieu_exercise.nobel
-- where year = 1950;

-- #2
-- select winner
-- from nguyen_van_hieu_exercise.nobel
-- where year = 1962 
-- 	and subject = 'Literature';

-- #3
-- select year, subject
-- from nguyen_van_hieu_exercise.nobel
-- where winner = 'Albert Einstein';

-- #4
-- select winner
-- from nguyen_van_hieu_exercise.nobel
-- where year>=2000 
-- 	and subject = 'Peace';

-- #5
-- select *
-- from nguyen_van_hieu_exercise.nobel
-- where year between 1980 and 1990
-- 	and subject = 'Literature';

-- #6
-- select *
-- from nguyen_van_hieu_exercise.nobel
-- where winner in ('Theodore Roosevelt', 
-- 				 'Woodrow Wilson', 
-- 				 'Jimmy Carter', 
-- 				 'Barack Obama');

-- #7
-- select winner
-- from nguyen_van_hieu_exercise.nobel
-- where winner like 'John %';

-- #8
-- select *
-- from nguyen_van_hieu_exercise.nobel
-- where year = 1980 and subject = 'physics'
-- 	or year = 1984 and subject = 'Chemistry ';

-- #9
-- select *
-- from nguyen_van_hieu_exercise.nobel
-- where year = 1980 
-- 	and subject not in ('Chemistry', 'Medicine');

-- #10
-- select *
-- from nguyen_van_hieu_exercise.nobel
-- where subject = 'Medicine' and year <1910
--  or subject = 'Literature' and year>2004;

#11 
-- select *
-- from nguyen_van_hieu_exercise.nobel
-- where winner = 'PETER GRÜNBERG';

#12
-- select *
-- from nguyen_van_hieu_exercise.nobel
-- where winner = 'EUGENE O''NEILL';

#13
-- select year, subject, winner
-- from nguyen_van_hieu_exercise.nobel
-- where winner like 'Sir%'
-- order by year desc, winner asc;

#14
-- select winner, subject 
-- from nguyen_van_hieu_exercise.nobel
-- where year = 1984
-- order by subject in ('Chemistry','Physics'), subject, winner;

############################## part 4 of 7: solve test sql basic  fpt fsoft 2018 ##########################################
-- create database solve_test_sql_basic_2018;

-- create database link_table;

-- create table link_table.person(
-- 	id int not null,
--     last_name varchar(50),
--     first_name varchar(50),
--     age int,
--     constraint PK_person primary key (id)
-- );
-- drop table link_table.person;

-- create database foreign_key_constraint;

-- create table foreign_key_constraint.persons(
-- 	persons_Id int not null,
--     last_name varchar(50),
--     first_name varchar(50),
--     age int,
--     constraint PK_persons primary key (persons_id)
-- );

-- create table foreign_key_constraint.orders(
-- 	order_id int not null,
--     order_number int,
--     person_id int
-- );

-- alter table  foreign_key_constraint.orders
-- add constraint PK_orders primary key (order_id);

-- alter table foreign_key_constraint.persons
-- rename column persons_Id to person_id;

-- alter table foreign_key_constraint.orders
-- add constraint FK_persons_order
-- foreign key (person_id) references persons(person_id);

############################################## part 6 of 7 nguyen van hieu ######################################

-- create database ThucTap;

-- create table ThucTap.Khoa (
-- 	makhoa char(10) not null, 
--     tenkhoa char(30), 
--     dienthoai char(10),
--     primary key (makhoa)
-- );

-- create table ThucTap.GiangVien(
-- 	magv int not null, 
--     hotengv char(30), 
--     luong decimal(5,2), 
--     makhoa char(10),
--     primary key (magv),
--     foreign key (makhoa) references Khoa(makhoa)     
-- );

-- create table thuctap.sinhvien(
-- 	masv int not null, 
--     hotensv char(30), 
--     makhoa char(10), 
--     namsinh int, 
--     quequan char(30),
--     primary key (masv),
--     foreign key (makhoa) references khoa(makhoa)
-- );

-- create table thuctap.detai(
-- 	madt char(10) not null, 
--     tendt char(30), 
--     kinhphi int, 
--     NoiThucTap char(30),
--     primary key (madt)
-- );

-- create table thuctap.huongdan(
-- 	masv int not null, 
--     madt char(10),
--     magv int, 
--     ketqua decimal(5,2),
--     primary key (masv),
--     foreign key (madt) references detai(madt),
--     foreign key (magv) references giangvien(magv)
-- );

-- alter table thuctap.huongdan
-- drop foreign key huongdan_ibfk_2;

-- alter table  thuctap.huongdan
-- add constraint huongdan_ibfk_2
-- foreign key (magv) references giangvien(magv);

-- insert into thuctap.khoa values 
-- ('Geo', 'Dia ly', '3855413'),
-- ('Math', 'Toan', '345678'),
-- ('Bio', 'Sinh hoc', '236098');

-- insert into thuctap.giangvien values 
-- (11, 'Truong Minh Tam', 700, 'Geo'),
-- (12, 'Nguyen Thi Tinh', 500, 'Math'),
-- (13, 'Chu Hong Sang', 400, 'Bio'),
-- (14, 'Le Van Hai', 500, 'Bio'),
-- (15, 'Dang Thi Nhien', 900, 'Math'),
-- (16, 'Nguyen Duc Dat', 200, 'Geo');

-- insert into thuctap.sinhvien values
-- (1,'Le Van Son','Bio',1990,'Nghe An'),
-- (2,'Nguyen Thi Mai','Geo',1990,'Thanh Hoa'),
-- (3,'Bui Xuan Duc','Math',1992,'Ha Noi'),
-- (4,'Nguyen Van Tung','Bio',null,'Ha Tinh'),
-- (5,'Le Khanh Linh','Bio',1989,'Ha Nam'),
-- (6,'Tran Khac Trong','Geo',1991,'Thanh Hoa'),
-- (7,'Le Thi Van','Math',null,'null'),
-- (8,'Hoang Van Duc','Bio',1992,'Nghe An');

-- insert into thuctap.detai values
-- ('Dt01','GIS',100,'Nghe An'),
-- ('Dt02','ARC GIS',500,'Nam Dinh'),
-- ('Dt03','Spatial DB',100, 'Ha Tinh'),
-- ('Dt04','MAP',300,'Quang Binh' );

-- insert into thuctap.huongdan values
-- (1,'Dt01',13,8),
-- (2,'Dt03',14,0),
-- (3,'Dt03',12,10),
-- (5,'Dt04',14,7),
-- (6,'Dt01',13,Null),
-- (7,'Dt04',11,10),
-- (8,'Dt03',15,6);

##1
#1
-- select gv.magv, gv.hotengv, k.tenkhoa
-- from thuctap.giangvien gv
-- inner join thuctap.khoa k
-- on k.makhoa = gv.makhoa;

#2
-- select gv.magv, gv.hotengv, k.tenkhoa
-- from thuctap.giangvien gv
-- inner join thuctap.khoa k
-- on k.makhoa = gv.makhoa
-- where k.tenkhoa = 'Dia ly';

#3
-- select count(sinhvien.masv)
-- from thuctap.sinhvien sv
-- inner join thuctap.khoa k
-- on sinhvien.makhoa = khoa.makhoa
-- where khoa.tenkhoa = 'Sinh hoc';

#4
-- select sv.masv, sv.hotensv, 2022 - sv.namsinh
-- from thuctap.sinhvien sv
-- inner join thuctap.khoa k
-- on sv.makhoa =  k.makhoa
-- where k.tenkhoa  = 'toan';

#5
-- select count(gv.magv)
-- from thuctap.giangvien gv
-- inner join thuctap.khoa k
-- on gv.makhoa = k.makhoa
-- where k.tenkhoa = 'Sinh hoc';

#6
-- select sv.masv, sv.hotensv
-- from thuctap.sinhvien sv
-- where not exists(
-- 	select hd.masv
--     from thuctap.huongdan hd
--     where sv.masv = hd.masv
-- );

#7
-- select k.makhoa, k.tenkhoa, count(gv.magv)
-- from thuctap.khoa k
-- inner join thuctap.giangvien gv
-- on k.makhoa = gv.makhoa
-- group by k.makhoa;

#8
-- select k.dienthoai
-- from thuctap.khoa k
-- inner join thuctap.sinhvien sv
-- on k.makhoa = sv.makhoa
-- where sv.hotensv = 'Le Van Son';

##2
#1

#2

#3

#4

#5

#6
-- select sv.masv, sv.hotensv, hd.ketqua
-- from thuctap.sinhvien sv
-- inner join thuctap.huongdan hd on sv.masv = hd.masv
-- inner join thuctap.khoa k on sv.makhoa = k.makhoa
-- where k.tenkhoa = 'Toan';

#7
-- select k.tenkhoa, count(sv.masv)
-- from thuctap.khoa k
-- inner join thuctap.sinhvien sv
-- on k.makhoa = sv.makhoa
-- group by k.tenkhoa;

#8

#9

#10

































































