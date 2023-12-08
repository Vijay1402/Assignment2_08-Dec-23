create database ExerciseDb

create table CompanyInfo
(CId int primary key not null,
Cname nvarchar(50) not null)

insert into CompanyInfo values
(1, 'SamSung'),
(2, 'HP'),
(3, 'Apple'),
(4, 'Dell'),
(5, 'Toshiba'),
(6, 'Redmi')

create table ProductInfo
(PId int primary key identity(100,1),
PName nvarchar(50) not null,
PPrice float not null,
PMDate date not null,
CId int foreign key references CompanyInfo (CId))

insert into ProductInfo values
('Laptop', 55000.90, '12/12/2023', 1),
('Laptop', 35000.90, '12/12/2012', 2),
('Mobile', 15000.90, '12/03/2012', 2),
('Laptop', 135000.90, '12/12/2012', 3),
('Mobile', 65000.90, '12/12/2012', 3),
('Laptop', 35000.90, '12/12/2012', 5),
('Mobile', 35000.90, '12/01/2012', 5),
('Earpod', 1000.90, '12/01/2022', 3),
('Laptop', 85000.90, '12/12/2021', 6),
('Mobile', 55000.70, '12/12/2020', 1)

select * from CompanyInfo
select * from ProductInfo

--Q1: All Company names and their product details
select c.CId, c.Cname, p.PId, p.PName, p.PPrice, p.PMDate from CompanyInfo c left outer join ProductInfo p on c.CId=p.CId

--Q2: All Products names and their Company name
select p.PId, p.PName, p.PPrice, p.PMDate, c.Cname from CompanyInfo c right outer join ProductInfo p on c.CId=p.CId

--Q2: All possible combinations of Product and Company
select * from CompanyInfo cross join ProductInfo
