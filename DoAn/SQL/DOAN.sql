create table XEDAP
(
  STT INT NOT NULL,
  TENXE NVARCHAR(30),
  NOISANXUAT NVARCHAR(30),
  GIA INT,
  SL INT,
  ANH NVARCHAR(50),
  PRIMARY KEY (STT) 
)
INSERT INTO XEDAP
VALUES(1,'LAMBORGHINI CERVELO P5X','ITALY',20000,149,'xd1.jpg')
INSERT INTO XEDAP
VALUES(2,'TREK YOSHITOMO NARA SPEED','SPAIN',145000,50,'xd2.jpg')
INSERT INTO XEDAP
VALUES(3,'GOLD EXTREME MOUNTAIN','MEXICO',300000,5,'xd3.jpg')
INSERT INTO XEDAP
VALUES(4,'CHROME HEARTS X CERVELO','USA',60000,95,'xd4.jpg')
SELECT * FROM XEDAP
create table MOTO
(
  STT INT NOT NULL,
  TENXE NVARCHAR(30),
  NOISANXUAT NVARCHAR(30),
  GIA INT,
  SL INT,
  NO1 NVARCHAR(30),
  ANH NVARCHAR(50),
  PRIMARY KEY (STT) 
)
INSERT INTO MOTO
VALUES(1,'AFICA TWIN 2021','JAPAN',589990,51,'mt1.jpg')
INSERT INTO MOTO
VALUES(2,'CB500X 2021','KOREAN',187990,200,'mt2.jpg')
INSERT INTO MOTO
VALUES(3,'CBR500R 2021','PHILIPPIN',286990,150,'mt3.jpg')
INSERT INTO MOTO
VALUES(4,'CB500F 2021','CAMPUCHIA',78990,489,'mt4.jpg')
select*from MOTO
create table OTO
(
  STT INT NOT NULL,
  TENXE NVARCHAR(30),
  NOISANXUAT NVARCHAR(30),
  GIA INT,
  SL INT,
  ANH NVARCHAR(50),
  PRIMARY KEY (STT) 
)
INSERT INTO OTO
VALUES(1,'Bugatti La Voiture Noire','TPHCM',18680,10,'oto1.jpg')
INSERT INTO OTO
VALUES(2,'Lamborghini Sian Roadster','HANOI',13120,10,'oto2.jpg')
INSERT INTO OTO
VALUES(3,'McLaren Speedtail','CAMAU',14810,10,'oto3.jpg')
INSERT INTO OTO
VALUES(4,'Bugatti Centodieci','DANANG',9050,10,'oto4.jpg')
SELECT*FROM OTO
create table fb
(
  STT int not null,
  Feedback nvarchar(30),
  PRIMARY KEY(STT),
)
insert into fb
values(1,'fb1.jpg')
insert into fb
values(2,'fb2.jpg')
insert into fb
values(3,'fb3.jpg')
insert into fb
values(4,'fb4.jpg')
insert into fb
values(5,'fb5.jpg')
insert into fb
values(6,'fb6.jpg')
insert into fb
values(7,'fb7.jpg')
insert into fb
values(8,'fb8.jpg')
insert into fb
values(9,'fb9.jpg')
insert into fb
values(10,'fb10.jpg')
insert into fb
values(11,'fb11.jpg')
insert into fb
values(12,'fb12.jpg')

