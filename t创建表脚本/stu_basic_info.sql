use manage
go
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
[College] NVARCHAR (20) DEFAULT ('电气工程学院') NOT
NULL,
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

[password] varchar(20) not null, --密码, 程序登录用

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
