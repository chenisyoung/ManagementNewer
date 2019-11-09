-- 教师信息表
use manage
go
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

[password] varchar(20) not null, --密码, 程序登录用

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
