select * from LoginInfo

insert into Logininfo values (11111,'hello')

select * from Registration

CREATE TABLE [dbo].[dept] (
    [deptno] INT          NOT NULL,
    [dname]  VARCHAR (20) NULL,
    [loc]    VARCHAR (20) NULL,
    PRIMARY KEY CLUSTERED ([deptno] ASC)
);

CREATE TABLE [dbo].[emp] (
    [EMPNO]    INT          NOT NULL,
    [ENAME]    VARCHAR (10) NULL,
    [JOB]      VARCHAR (9)  NULL,
    [MGR]      INT          NULL,
    [HIREDATE] DATETIME     NULL,
    [SAL]      MONEY        NULL,
    [COMM]     MONEY        NULL,
    [DEPTNO]   INT          NULL,
    PRIMARY KEY CLUSTERED ([EMPNO] ASC),
    FOREIGN KEY ([DEPTNO]) REFERENCES [dbo].[dept] ([deptno])
);


create table courseinfo
(cid int primary key identity,
coursename varchar(30) not null)

insert into courseinfo values ('BE')
insert into courseinfo values ('BTECH')
insert into courseinfo values ('ME')
insert into courseinfo values ('MBA')
insert into courseinfo values ('MCA')

select * from courseinfo


create table Studentinfo
(rollno int primary key identity(100,10),
name varchar(50) not null,
courseid int references Courseinfo(cid))

insert into Studentinfo values('Blake',1)
insert into Studentinfo values('Martin',2)
insert into Studentinfo values('Scott',3)
insert into Studentinfo values('Ford',4)
insert into Studentinfo values('Clark',5)
insert into Studentinfo values('Smith',1)
insert into Studentinfo values('King',4)
insert into Studentinfo values('Roy',2)

select * from Studentinfo
