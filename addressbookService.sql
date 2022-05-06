create database addressbookService;
use addressbookService;
CREATE TABLE addressBook (
		id int not null auto_increment primary key,
		firstname varchar(20) NOT NULL, 
        lastname varchar(20) NOT NULL,
        address varchar(100),
        city varchar(20) NOT NULL,
        state varchar(20) NOT NULL,
        zip integer(6),
        phonenumber varchar(10) NOT NULL,
        email varchar(20) NOT NULL UNIQUE
);
desc addressBook;
INSERT INTO addressbook VALUES
(1,'Vishaka','kadam','Kothrud','Pune','Maharashtra','424112','1234567890', 'vishaka.m@gmail.com'),
(2,'Kunal','Patil','Deccan','Pune','Maharashtra','420166','9191919291', 'kunal.p@gmail.com'),
(3,'Shanvika','J','Andhra','Andhra Pradesh','AP','487879','4567890125', 'Shanvika.k@yahoo.com'),
(4,'Kumar','k','Madhya Pradesh','Gwalior','MP','43342','6577567890', 'kumar.m@gmail.com');

SELECT * FROM addressbook;
UPDATE addressbook SET firstname = 'Vishu'
WHERE id = 1; 

SELECT * from addressbook where firstname = 'Vishu';
SELECT firstname from addressbook where firstname = 'Vishu';
DELETE from addressbook WHERE id = 4;
SELECT * FROM addressbook WHERE firstname = 'Kumar';
SELECT * from addressbook where city = 'Pune' OR state = 'MP';
SELECT  city, state, COUNT(*) from addressbook where city = 'Pune' AND state = 'Maharashtra';
SELECT * FROM addressbook WHERE state = 'Maharashtra' ORDER BY firstname ASC;
SELECT * FROM addressbook WHERE state = 'Maharashtra' ORDER BY firstname DESC;
SELECT ab_type, COUNT(*) FROM addressbook GROUP BY ab_type;
insert into addressbook(id,firstname,lastname,address,city,state,zip,phonenumber,email,ab_name,ab_type)
 values(5,'vishu', 'kadam', 'Kothrud', 'Pune', 'Maharashtra','424112', '1234567890',	'jul.m1@gmail.com',	'AddressBook2',	'friends');
CREATE TABLE addressbooks (
		id int not null auto_increment primary key,
		firstname varchar(20) NOT NULL, 
        lastname varchar(20) NOT NULL,
        address varchar(100),
        city varchar(20) NOT NULL,
        state varchar(20) NOT NULL,
        zip integer(6),
        phonenumber varchar(10) NOT NULL,
        email varchar(20) NOT NULL UNIQUE
);
desc addressbooks;

create table addressbooks_name(
  id int not null auto_increment primary key,
  name varchar (20) not null,
  ab_id int ,
  foreign key (ab_id)references addressbooks(id)  
);
desc addressbooks_name;

create table addressbooks_type(
id int not null primary key,
type varchar (20)
);
desc addressbooks_type;

create table addressbooks_abtype(
  a_id int not null,
  t_id int not null,
  foreign key(a_id) references addressbooks(id),
  foreign key(t_id) references addressbooks_type(id),
  primary key(a_id,t_id)
);

INSERT INTO addressbooks VALUES
(1,'vishaka','kadam','Kothrud','Pune','Maharashtra','424112','1234567890', 'vishaka.m@gmail.com'),
(2,'kunal','Patil','Deccan','Pune','Maharashtra','420166','9191919291', 'kunal.p@gmail.com'),
(3,'shanvika','K','Andhra','Andhra Pradesh','AP','487879','4567890125', 'shanvika.k@yahoo.com'),
(4,'pihu','j','Madhya Pradesh','Gwalior','MP','43342','6577567890', 'pihu.m@gmail.com');
 
insert into addressbooks_name values (1,'AdddressBook1', 2); 

insert into addressbooks_type
values(1,'family');
insert into addressbooks_type
values(2,'friends');
insert into addressbooks_type
values(3,'profession');

insert into addressbooks_abtype(a_id,t_id)values(1,1);

select * from addressbooks;
select * from addressbooks_name;
select * from addressbooks_type;
select * from addressbooks_abtype;

SELECT * from addressbooks inner join addressbooks_name where city = 'Pune' OR state = 'MP';

SELECT  city, state, COUNT(*) from addressbooks  where city = 'Pune' AND state = 'Maharashtra';

SELECT * FROM addressbooks WHERE state = 'Maharashtra' ORDER BY firstname ASC;

SELECT type, count(*) FROM addressbooks join addressbooks_type group by type;

select * from addressbooks inner join addressbooks_type ON addressbooks.id = 1 and addressbooks_type.id IN(1,2);


select * from addressbooks inner join addressbooks_name inner join addressbooks_type ON addressbooks.id = 1 and addressbooks_name.id= '1' and addressbooks_type.id IN (1);


