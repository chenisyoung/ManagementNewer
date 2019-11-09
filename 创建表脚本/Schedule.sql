use manage
go
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
--Alter table [dbo].[Course_Schedule] drop constraint [FK_Course_Schedule]
--alter table [dbo].[Course_Schedule] alter column [TeachingClass] nvarchar(9)
--Alter table [dbo].[Course_Schedule] add CONSTRAINT [FK_Course_Schedule] FOREIGN KEY ([TeachingClass])
--REFERENCES [dbo].[Class_number] ([Class])
