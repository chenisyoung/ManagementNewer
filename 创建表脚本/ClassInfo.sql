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
