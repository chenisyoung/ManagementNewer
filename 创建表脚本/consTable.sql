use manage
go
-- 本来打算使用学生自主选课形成教学班,后来发现太复杂了便放弃了
CREATE TABLE [dbo].[Class_number] ( --创建行政班级主键约束表
[Class] NVARCHAR(9) NOT NULL, --定义 NVARCHAR 型，长度为 9 的班级列
CONSTRAINT [PK_Class_number] PRIMARY KEY ([Class]) --设置班级列为主键
);
--由于题目给出班级个数,此处直接插入数据更加清晰
insert [dbo].[Class_number](Class)
values('电自171'),('电自172'),('电自173') --外键限定输入行政班级

CREATE TABLE [dbo].[Gender] ( --创建性别主键约束表
[Gender] NVARCHAR (4) NOT NULL, --定义 NVARCHAR 型，长度为 4 的性别列
CONSTRAINT [PK_Gender] PRIMARY KEY ([Gender]) --设置性别为表的主键
);
insert [dbo].[Gender](Gender)
values('男'),('女'),('不详') --输入三种情况的性别

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
