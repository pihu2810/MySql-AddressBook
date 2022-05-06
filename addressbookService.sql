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