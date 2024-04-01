create table Groups(
[Id] int,
[Name] nvarchar(50)
)

create table Students(
[Id] int,
[Name] nvarchar(50),
[Surname] nvarchar(50),
[Age] int 

)

drop table Groups

alter table Students
add [Adress] nvarchar(200)

alter table Students
drop column [Adress] 

EXEC sp_rename MyStudents,Student

EXEC sp_rename 'Students.Lastname',Surname

select * from Students

insert into Students ([Id],[Name],[Surname],[Age])
values(1,'Ilqar','Shiriyev',26),
      (3,'Reshad','Agayev',21),
      (4,'Kamran','Muradov',24),
      (5,'Hacixan','Hacixanov',19),
      (6,'Zeyqem','Ashurov',39)

	  delete from Students where [Id] =7


insert into Students ([Id],[Name],[Surname],[Age])
values(7,'Behruz','Eliyev',37)


update Students
set [Age] = 25
where [Id] = 5


select * from Students

select [Age] as 'Student age' from Students

select Count(*) as 'Student count' from Students

select AVG([Age]) from Students

select Sum([Age]) as 'Students age sum' from Students

select Min([Age]) as 'Student Min age' from Students

select Max([Age]) as 'Student Max age' from Students

select * from Students where [Id] > 3

select * from Students where [Id] > 3

select Count(*) from Students where [Id] > 3

select * from Students where [Id] > 2 and [Id] <= 5

select * from Students where Age between 25 and 39

select * from Students where [Name] like 'r%'

select * from Students where [Age] = (select Min(Age) from Students)

Declare @age int
Set @age = (select Min(Age) from Students)

select * from Students where [Age] = @age

select * from Students
order by [Age] desc

DECLARE @resultName nvarchar(50)
set @resultName = (select [Name] from Students where [Id] = 3)
select SUBSTRING(@resultName,1,3)AS 'Resad Daglinin adinin qisaldilmasi'

select LEN([Name]) from Students where [Id] = 3	

select [Name] from Students where [Id] = 3

select SUBSTRING(@resultName,1,3)from Students


create table Employees(
[Id] int primary key identity(1,1),
[Name] nvarchar(50) not null,
[Surname] nvarchar(50) default 'XXX',
[Age] int check (Age >= 18),
[Email] nvarchar(100) unique,
)

insert into Employees([Name],[Surname],[Age],[Email])
values('Hacixan','Hacixanov',19,'hacixan@gmail.com')

select * from Employees