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

);
