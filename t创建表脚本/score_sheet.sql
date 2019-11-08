use manage 
go
CREATE TABLE [dbo].[Score_Sheet] ( --创建题设要求
[ID] INT IDENTITY (1, 1) NOT NULL, --设置自增唯一 ID
[Student ID] CHAR(10) NOT NULL, --学号，外键约束
[Course Number] CHAR(7) NOT NULL, --课程编号，外键约束
[Job number] CHAR(8) NOT NULL, --工号，外键约束
[Score] CHAR(3) NOT NULL, --科目成绩，check 约束
CONSTRAINT [PK_Score_Sheet] PRIMARY KEY ([ID]),
--设置 ID 为成绩表的主键
CONSTRAINT [FK_Score_Sheet] FOREIGN KEY ([Student ID]) REFERENCES
[dbo].[Student_Basic_Info] ([Student ID]), --外键约束学号
CONSTRAINT [FK_Score_Sheet_1] FOREIGN KEY ([Course Number])
REFERENCES [dbo].[Course_Info] ([Course Number]), --外键约束课程编号
CONSTRAINT [FK_Score_Sheet_2] FOREIGN KEY ([Job number]) REFERENCES
[dbo].[Teacher_Info] ([Job number]), --外键约束工号
CONSTRAINT [SSConstraint_1] CHECK ([Score]LIKE'[0-9][0-9][0-9]'),
--数据有效性
);
