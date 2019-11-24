--首先建立数据库
create database manage  --数据库名称manage
on primary --创建主要数据文件 
( 
	name='manage', --文件名称 
	filename='C:\Users\chen\Desktop\manage.mdf', --文件路径和文件名 这里演示设置为桌面
	size=10mb, --文件大小 
	filegrowth=10mb --文件增长大小 
) 
log on --创建日志文件 
( name='manage_log',--文件名称 
filename='C:\Users\chen\Desktop\manage_log.ldf', --文件路径和文件名 
size=5mb, --文件大小 
filegrowth=10% --文件增长百分比 
) 
--建立相关提供约束的表
-- 本来打算使用学生自主选课形成教学班,后来发现太复杂了便放弃了
CREATE TABLE [dbo].[Class_number] ( --创建行政班级主键约束表
[Class] NVARCHAR(9) NOT NULL, --定义 NVARCHAR 型，长度为 9 的班级列
CONSTRAINT [PK_Class_number] PRIMARY KEY ([Class]) --设置班级列为主键
);
--由于题目给出班级个数,此处直接插入数据更加清晰方便
insert [dbo].[Class_number](Class)
values('电自171'),('电自172'),('电自173') --外键限定输入行政班级

CREATE TABLE [dbo].[Gender] ( --创建性别主键约束表
[Gender] NVARCHAR (4) NOT NULL, --定义 NVARCHAR 型，长度为 4 的性别列
CONSTRAINT [PK_Gender] PRIMARY KEY ([Gender]) --设置性别为表的主键
);
insert [dbo].[Gender](Gender)
values('男'),('女'),('不详') --输入三种性别限定

CREATE TABLE [dbo].[College] ( --创建学院主键约束表
[College] NVARCHAR (20) NOT NULL, --定义 NVARCHAR 型，长度为 20 的学院列
CONSTRAINT [PK_College] PRIMARY KEY ([College]) --设置学院列为表的主键
);

insert [dbo].[College](College)
values('数信学院'),('电气工程学院'),('土木建筑工程学院'),('化学化工学院'),
('马克思主义学院'),('计算机与电子信息学院') --输入学院信息

CREATE TABLE [dbo].[Major] ( --创建专业主键约束表
[Major] NVARCHAR (20) NOT NULL, --定义 NVARCHAR 型，长度为 20 的专业列
CONSTRAINT [PK_Major] PRIMARY KEY ([Major]) --设置专业列为表的主键
);
insert [dbo].[Major](Major)
values('电气工程及其自动化'),('自动化'),('化学'),('土木工程'),
('哲学'),('计算机类'),('机械类') --输入专业信息

CREATE TABLE [dbo].[Course_Category] ( --创建课程性质主键表
[Course Category] NVARCHAR (10) NOT NULL,
--定义 NVARCHAR 型，长度为 10 的课程性质列
CONSTRAINT [PK_Course_Category] PRIMARY KEY ([Course Category])
--设置课程性质为表的主键
);
insert [dbo].[Course_Category]([Course Category])
values('学科必修课'),('通识必修课'),('学类核心课'),('学门核心课'),
('专业选修课') --输入课程性质信息

CREATE TABLE [dbo].[Way_Of_Investigation] ( --创建考查方式主键约束表
[Way Of Investigation] NCHAR (4) NOT NULL,
--定义 NVARCHAR 型，长度为 4 的考查方式列
CONSTRAINT [PK_Way_Of_Investigation] PRIMARY KEY ([Way Of Investigation])
--设置考查方式为表的主键
);
insert [dbo].[Way_Of_Investigation]([Way Of Investigation])
values('考试'),('考察') --输入考查方式信息

CREATE TABLE [dbo].[Classroom_Number] ( --创建教室号主键约束表
[Classroom Number] NVARCHAR(9) NOT NULL,
--定义 NVARCHAR 型，长度为 9 的教室号列
CONSTRAINT [PK_Classroom_Number] PRIMARY KEY ([Classroom Number])
--设置教室号为表的主键
);
insert [dbo].[Classroom_Number]([Classroom Number])
values('西 3-101'),('西 3-102'),('西 3-103'),('西 3-106'),('西 3-105'),
('西 3-104'),('西 3-107'),('西 3-108'),('西 3-109') --输入教室号信息

CREATE TABLE [dbo].[Classroom_location] ( --创建教室地点主键约束表
[Classroom location] NCHAR (10) NOT NULL,
--定义 NCHAR 型，长度为 10 的教室地点列
CONSTRAINT [PK_Classroom_location] PRIMARY KEY ([Classroom location])
--设置教室地点列为表的主键
);
insert [dbo].[Classroom_location]([Classroom location])
values('第三教学楼')
--为简化在查询中使用不到的信息，我们只输入第三教学楼作为教室地点的信息

CREATE TABLE [dbo].[Class_time] ( --创建上课时间主键约束表
[Class time] NCHAR (12) NOT NULL,
--定义 NCHAR 型，长度为 12 的上课时间列
CONSTRAINT [PK_Class_time] PRIMARY KEY ([Class time])
--设置上课时间列为表的主键
);
--输入上课时间
insert [dbo].[Class_time]([Class time])
values
('周一第一大节'),('周一第二大节'),('周一第三大节'),('周一第四大节'),('周一第五大节'), 
('周二第一大节'),('周二第二大节'),('周二第三大节'),('周二第四大节'),('周二第五大节'),
('周三第一大节'),('周三第二大节'),('周三第三大节'),('周三第四大节'),('周三第五大节'),
('周四第一大节'),('周四第二大节'),('周四第三大节'),('周四第四大节'),('周四第五大节'),
('周五第一大节'),('周五第二大节'),('周五第三大节'),('周五第四大节'),('周五第五大节')

--插入学生信息表
CREATE TABLE [dbo].[Student_Basic_Info] ( --创建题设要求的学生信息表
[ID] INT IDENTITY (1, 1) NOT NULL,
--设置自增唯一 ID
[ID Number] CHAR (18) NOT NULL,
--身份证号码，check 约束
[Student ID] CHAR (10) NOT NULL,
--学号，check 约束，唯一性索引
[Full name] NVARCHAR (20) NOT NULL, --姓名
[Class] NVARCHAR (9) NOT NULL, --班级，外键约束
[Gender] NVARCHAR (4) NOT NULL, --性别，外键约束
[Age] VARCHAR (3) NOT NULL, --年龄，check 约束
[Biogenic Land] NVARCHAR (50) NOT NULL, --生源地
[College] NVARCHAR (20) DEFAULT ('电气工程学院') NOT NULL,
[Major] NVARCHAR (20) NOT NULL, --专业，外键约束
[NCEE Score] CHAR (3) NOT NULL,
--高考分数，check 约束
[Phone Number] CHAR (11) NOT NULL,
--手机号码，check 约束，唯一性索引
[Name of Guardian 1] NVARCHAR (20) NOT NULL, --监护人 1 姓名
[Name of Guardian 2] NVARCHAR (20) NOT NULL, --监护人 2 姓名
[Phone Number of Guardian 1] CHAR (11) NOT NULL,
--监护人 1 手机号码，check 约束，唯一性索引
[Phone Number of Guardian 2] CHAR (11) NOT NULL,
--监护人 2 手机号码，check 约束，唯一性索引

[password] varchar(20) not null, 
--密码, 程序登录用,为了方便不另外建立表存储密码,以后可改进

CONSTRAINT [PK_Table1] PRIMARY KEY CLUSTERED ([Student ID]),
--设置学号为学生信息表的主键
--UNIQUE NONCLUSTERED ([Student ID] ASC),--唯一性索引（可设置也可不设）
UNIQUE NONCLUSTERED ([Phone Number] ASC), --电话号码唯一性
UNIQUE NONCLUSTERED ([Phone Number of Guardian 1] ASC),
--监护人 1 电话号码唯一性
UNIQUE NONCLUSTERED ([Phone Number of Guardian 2] ASC),
--监护人 2 电话号码唯一性
CONSTRAINT [FK_Student_Basic_Info_ToTable] FOREIGN KEY ([Class])
REFERENCES [dbo].[Class_number] ([Class]), --外键约束行政班级
CONSTRAINT [FK_Student_Basic_Info_ToTable_1] FOREIGN KEY ([Gender])
REFERENCES [dbo].[Gender] ([Gender]), --外键约束性别
CONSTRAINT [FK_Student_Basic_Info_ToTable_2] FOREIGN KEY ([Major])
REFERENCES [dbo].[Major] ([Major]), --外键约束专业
CONSTRAINT [SBIConstraint] CHECK ([ID Number]LIKE'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0
-9][0-9][0-9][0-9][0-9][0-9][0-9A-Z]'), --check 约束
CONSTRAINT [SBIConstraint_1] CHECK ([Student ID]LIKE'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
CONSTRAINT [SBIConstraint_2] CHECK ([Age]LIKE'[0-9][0-9][0-9]'),
CONSTRAINT [SBIConstraint_3] CHECK ([NCEE Score]LIKE'[0-9][0-9][0-9]'),
CONSTRAINT [SBIConstraint_4] CHECK ([Phone Number]LIKE'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
,
CONSTRAINT [SBIConstraint_5] CHECK ([Phone Number of Guardian 1]LIKE'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
CONSTRAINT [SBIConstraint_6] CHECK ([Phone Number of Guardian 2]LIKE'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
);
--创建教师信息表
CREATE TABLE [dbo].[Teacher_Info] ( --创建题设要求的教师信息表
[ID] INT IDENTITY (1, 1) NOT NULL, --设置自增唯一 ID
[ID Number] CHAR(18) NOT NULL, --身份证号码，check 约束
[Gender] NVARCHAR(4) NOT NULL, --性别，外键约束
[Age] CHAR(3) NOT NULL, --年龄，check 约束
[Job number] CHAR(8) NOT NULL, --工号,check 约束，唯一性索引
[Full Name] NVARCHAR(20) NOT NULL, --姓名
[College] NVARCHAR(20) NOT NULL, --学院，外键约束
[Major] NVARCHAR(20) NOT NULL, --专业，外键约束
[Office Location] NVARCHAR(20) NOT NULL, --工作地点，外键约束
[Phone Number] CHAR(11) NOT NULL, --电话号码，check 约束，唯一性索引

[password] varchar(20) not null, 
--密码, 程序登录用,为了方便不另外建立表存储密码,以后可改进

UNIQUE NONCLUSTERED ([Job number] ASC), --工号唯一性
UNIQUE NONCLUSTERED ([Phone Number] ASC), --手机号唯一性
CONSTRAINT [PK_Teacher_Info] PRIMARY KEY ([Job number]),
--设置工号为表的主键
CONSTRAINT [FK_Teacher_Info] FOREIGN KEY ([Gender]) REFERENCES
[dbo].[Gender] ([Gender]), --外键约束性别
CONSTRAINT [FK_Teacher_Info_1] FOREIGN KEY ([College]) REFERENCES
[dbo].[College] ([College]), --外键约束学院
CONSTRAINT [FK_Teacher_Info_2] FOREIGN KEY ([Major]) REFERENCES
[dbo].[Major] ([Major]), --外键约束专业
CONSTRAINT [TIConstraint] CHECK ([ID Number]LIKE'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0
-9][0-9][0-9][0-9][0-9][0-9][0-9]'), --数据有效性约束
CONSTRAINT [TIConstraint_1] CHECK ([Job number]LIKE'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
CONSTRAINT [TIConstraint_2] CHECK ([Phone Number]LIKE'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
);
--教室信息表
use manage
go
--drop table Classroom_Info
CREATE TABLE [dbo].[Classroom_Info] --创建题设要求教室信息表
(
[ID] INT IDENTITY (1, 1) NOT NULL, --设置自增唯一 ID
[Classroom Number] NVARCHAR(9) NOT NULL, --教室号
[Classroom location] NCHAR(10) NOT NULL, --教室地点，外键约束
[Capacity] CHAR(3) NOT NULL, --教室人数，外键约束
[Multimedia Situation] NCHAR(16) NOT NULL DEFAULT '配置电脑和投影仪',
--设置若空，则为'配置电脑和投影仪'
UNIQUE NONCLUSTERED ([Classroom Number] ASC), --教室号唯一性
CONSTRAINT [PK_Classroom_Info] PRIMARY KEY ([Classroom Number]),
--设置教室号为表的主键
CONSTRAINT [FK_Classroom_Info] FOREIGN KEY ([Classroom location])
REFERENCES [dbo].[Classroom_location] ([Classroom location]),
--外键约束教室地点
CONSTRAINT [FK_Classroom_Info_1] FOREIGN KEY ([Classroom Number])
REFERENCES [dbo].[Classroom_Number] ([Classroom Number])--外键约束教室号
);
--课程信息表
use manage
go
CREATE TABLE [dbo].[Course_Info] ( --创建题设要求的课程信息表
[ID] INT IDENTITY (1, 1) NOT NULL, --设置自增唯一 ID
[Course Title] NVARCHAR(50) NOT NULL, --课程名称，唯一性索引
[Course Number] CHAR(7) NOT NULL, --课程编号，check 约束，唯一性索引
[Course Category] NVARCHAR(10) NOT NULL, --课程类别，外键约束
[Way Of Investigation] NCHAR(4) NOT NULL, --考察方式，外键约束
[Hours Of Studying] CHAR(3) NOT NULL, --学时数，check 约束
UNIQUE NONCLUSTERED ([Course Title] ASC), --课程名称唯一性
UNIQUE NONCLUSTERED ([Course Number] ASC), --课程编号唯一性
CONSTRAINT [PK_Course_Info] PRIMARY KEY ([Course Number]),
--设置课程编号为主键
CONSTRAINT [FK_Course_Info] FOREIGN KEY ([Course Category])
REFERENCES [dbo].[Course_Category] ([Course Category]),
--外键约束课程性质
CONSTRAINT [FK_Course_Info_1] FOREIGN KEY ([Way Of Investigation])
REFERENCES [dbo].[Way_Of_Investigation] ([Way Of Investigation]),
--外键约束考查方式
CONSTRAINT [CIConstraint] CHECK ([Course Number]LIKE'[0-9][0-9][0-9][0-9][0-9][0-9][0-9]'), --数据有效性约束
CONSTRAINT [CIConstraint_1] CHECK ([Hours Of Studying]LIKE'[0-9][0-9][0-9]')
)
--课程计划表
CREATE TABLE [dbo].[Course_Schedule] ( --创建题设要求的课程计划表
[ID] INT IDENTITY (1, 1) NOT NULL, --设置自增唯一 ID
[Course Number] CHAR(7) NOT NULL, --课程编号，外键约束
[Classroom Number] NVARCHAR(9) NOT NULL, --教室号，外键约束
[Job number] CHAR(8) NOT NULL, --工号，外键约束
[TeachingClass] NVARCHAR(9) NOT NULL, --教学班，外键约束
[Class time] NCHAR(12) NOT NULL, --上课时间，外键约束，唯一性索引
--UNIQUE NONCLUSTERED ([Class time] ASC),
CONSTRAINT [PK_Course_Schedule] PRIMARY KEY ([ID]),
--设置唯一性 ID 为表的主键
CONSTRAINT [FK_Course_Schedule] FOREIGN KEY ([TeachingClass])
REFERENCES [dbo].[Class_number] ([Class]),
--外键约束教学班
CONSTRAINT [FK_Course_Schedule_1] FOREIGN KEY ([Class time])
REFERENCES [dbo].[Class_time] ([Class time]), --外键约束上课时间
CONSTRAINT [FK_Course_Schedule_2] FOREIGN KEY ([Job number])
REFERENCES [dbo].[Teacher_Info] ([Job number]), --外键约束工号
CONSTRAINT [FK_Course_Schedule_3] FOREIGN KEY ([Classroom Number])
REFERENCES [dbo].[Classroom_Number] ([Classroom Number]),
--外键约束教室号
CONSTRAINT [FK_Course_Schedule_4] FOREIGN KEY ([Course Number])
REFERENCES [dbo].[Course_Info] ([Course Number])
--外键约束课程编号
);
--创建成绩表
CREATE TABLE [dbo].[Score_Sheet] ( --创建题设要求
[ID] INT IDENTITY (1, 1) NOT NULL, --设置自增唯一 ID
[Student ID] CHAR(10) NOT NULL, --学号，外键约束
[Course Number] CHAR(7) NOT NULL, --课程编号，外键约束
[Job number] CHAR(8) NOT NULL, --工号，外键约束
[Score] CHAR(3) NOT NULL, --科目成绩，check 约束
CONSTRAINT [PK_Score_Sheet] PRIMARY KEY ([ID]),--设置 ID 为成绩表的主键
CONSTRAINT [FK_Score_Sheet] FOREIGN KEY ([Student ID]) REFERENCES
[dbo].[Student_Basic_Info] ([Student ID]), --外键约束学号
CONSTRAINT [FK_Score_Sheet_1] FOREIGN KEY ([Course Number])
REFERENCES [dbo].[Course_Info] ([Course Number]), --外键约束课程编号
CONSTRAINT [FK_Score_Sheet_2] FOREIGN KEY ([Job number]) REFERENCES
[dbo].[Teacher_Info] ([Job number]), --外键约束工号
CONSTRAINT [SSConstraint_1] CHECK ([Score]LIKE'[0-9][0-9][0-9]'))--数据有效性