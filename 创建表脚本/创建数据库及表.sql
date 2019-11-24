--���Ƚ������ݿ�
create database manage  --���ݿ�����manage
on primary --������Ҫ�����ļ� 
( 
	name='manage', --�ļ����� 
	filename='C:\Users\chen\Desktop\manage.mdf', --�ļ�·�����ļ��� ������ʾ����Ϊ����
	size=10mb, --�ļ���С 
	filegrowth=10mb --�ļ�������С 
) 
log on --������־�ļ� 
( name='manage_log',--�ļ����� 
filename='C:\Users\chen\Desktop\manage_log.ldf', --�ļ�·�����ļ��� 
size=5mb, --�ļ���С 
filegrowth=10% --�ļ������ٷֱ� 
) 
--��������ṩԼ���ı�
-- ��������ʹ��ѧ������ѡ���γɽ�ѧ��,��������̫�����˱������
CREATE TABLE [dbo].[Class_number] ( --���������༶����Լ����
[Class] NVARCHAR(9) NOT NULL, --���� NVARCHAR �ͣ�����Ϊ 9 �İ༶��
CONSTRAINT [PK_Class_number] PRIMARY KEY ([Class]) --���ð༶��Ϊ����
);
--������Ŀ�����༶����,�˴�ֱ�Ӳ������ݸ�����������
insert [dbo].[Class_number](Class)
values('����171'),('����172'),('����173') --����޶����������༶

CREATE TABLE [dbo].[Gender] ( --�����Ա�����Լ����
[Gender] NVARCHAR (4) NOT NULL, --���� NVARCHAR �ͣ�����Ϊ 4 ���Ա���
CONSTRAINT [PK_Gender] PRIMARY KEY ([Gender]) --�����Ա�Ϊ�������
);
insert [dbo].[Gender](Gender)
values('��'),('Ů'),('����') --���������Ա��޶�

CREATE TABLE [dbo].[College] ( --����ѧԺ����Լ����
[College] NVARCHAR (20) NOT NULL, --���� NVARCHAR �ͣ�����Ϊ 20 ��ѧԺ��
CONSTRAINT [PK_College] PRIMARY KEY ([College]) --����ѧԺ��Ϊ�������
);

insert [dbo].[College](College)
values('����ѧԺ'),('��������ѧԺ'),('��ľ��������ѧԺ'),('��ѧ����ѧԺ'),
('���˼����ѧԺ'),('������������ϢѧԺ') --����ѧԺ��Ϣ

CREATE TABLE [dbo].[Major] ( --����רҵ����Լ����
[Major] NVARCHAR (20) NOT NULL, --���� NVARCHAR �ͣ�����Ϊ 20 ��רҵ��
CONSTRAINT [PK_Major] PRIMARY KEY ([Major]) --����רҵ��Ϊ�������
);
insert [dbo].[Major](Major)
values('�������̼����Զ���'),('�Զ���'),('��ѧ'),('��ľ����'),
('��ѧ'),('�������'),('��е��') --����רҵ��Ϣ

CREATE TABLE [dbo].[Course_Category] ( --�����γ�����������
[Course Category] NVARCHAR (10) NOT NULL,
--���� NVARCHAR �ͣ�����Ϊ 10 �Ŀγ�������
CONSTRAINT [PK_Course_Category] PRIMARY KEY ([Course Category])
--���ÿγ�����Ϊ�������
);
insert [dbo].[Course_Category]([Course Category])
values('ѧ�Ʊ��޿�'),('ͨʶ���޿�'),('ѧ����Ŀ�'),('ѧ�ź��Ŀ�'),
('רҵѡ�޿�') --����γ�������Ϣ

CREATE TABLE [dbo].[Way_Of_Investigation] ( --�������鷽ʽ����Լ����
[Way Of Investigation] NCHAR (4) NOT NULL,
--���� NVARCHAR �ͣ�����Ϊ 4 �Ŀ��鷽ʽ��
CONSTRAINT [PK_Way_Of_Investigation] PRIMARY KEY ([Way Of Investigation])
--���ÿ��鷽ʽΪ�������
);
insert [dbo].[Way_Of_Investigation]([Way Of Investigation])
values('����'),('����') --���뿼�鷽ʽ��Ϣ

CREATE TABLE [dbo].[Classroom_Number] ( --�������Һ�����Լ����
[Classroom Number] NVARCHAR(9) NOT NULL,
--���� NVARCHAR �ͣ�����Ϊ 9 �Ľ��Һ���
CONSTRAINT [PK_Classroom_Number] PRIMARY KEY ([Classroom Number])
--���ý��Һ�Ϊ�������
);
insert [dbo].[Classroom_Number]([Classroom Number])
values('�� 3-101'),('�� 3-102'),('�� 3-103'),('�� 3-106'),('�� 3-105'),
('�� 3-104'),('�� 3-107'),('�� 3-108'),('�� 3-109') --������Һ���Ϣ

CREATE TABLE [dbo].[Classroom_location] ( --�������ҵص�����Լ����
[Classroom location] NCHAR (10) NOT NULL,
--���� NCHAR �ͣ�����Ϊ 10 �Ľ��ҵص���
CONSTRAINT [PK_Classroom_location] PRIMARY KEY ([Classroom location])
--���ý��ҵص���Ϊ�������
);
insert [dbo].[Classroom_location]([Classroom location])
values('������ѧ¥')
--Ϊ���ڲ�ѯ��ʹ�ò�������Ϣ������ֻ���������ѧ¥��Ϊ���ҵص����Ϣ

CREATE TABLE [dbo].[Class_time] ( --�����Ͽ�ʱ������Լ����
[Class time] NCHAR (12) NOT NULL,
--���� NCHAR �ͣ�����Ϊ 12 ���Ͽ�ʱ����
CONSTRAINT [PK_Class_time] PRIMARY KEY ([Class time])
--�����Ͽ�ʱ����Ϊ�������
);
--�����Ͽ�ʱ��
insert [dbo].[Class_time]([Class time])
values
('��һ��һ���'),('��һ�ڶ����'),('��һ�������'),('��һ���Ĵ��'),('��һ������'), 
('�ܶ���һ���'),('�ܶ��ڶ����'),('�ܶ��������'),('�ܶ����Ĵ��'),('�ܶ�������'),
('������һ���'),('�����ڶ����'),('�����������'),('�������Ĵ��'),('����������'),
('���ĵ�һ���'),('���ĵڶ����'),('���ĵ������'),('���ĵ��Ĵ��'),('���ĵ�����'),
('�����һ���'),('����ڶ����'),('����������'),('������Ĵ��'),('���������')

--����ѧ����Ϣ��
CREATE TABLE [dbo].[Student_Basic_Info] ( --��������Ҫ���ѧ����Ϣ��
[ID] INT IDENTITY (1, 1) NOT NULL,
--��������Ψһ ID
[ID Number] CHAR (18) NOT NULL,
--���֤���룬check Լ��
[Student ID] CHAR (10) NOT NULL,
--ѧ�ţ�check Լ����Ψһ������
[Full name] NVARCHAR (20) NOT NULL, --����
[Class] NVARCHAR (9) NOT NULL, --�༶�����Լ��
[Gender] NVARCHAR (4) NOT NULL, --�Ա����Լ��
[Age] VARCHAR (3) NOT NULL, --���䣬check Լ��
[Biogenic Land] NVARCHAR (50) NOT NULL, --��Դ��
[College] NVARCHAR (20) DEFAULT ('��������ѧԺ') NOT NULL,
[Major] NVARCHAR (20) NOT NULL, --רҵ�����Լ��
[NCEE Score] CHAR (3) NOT NULL,
--�߿�������check Լ��
[Phone Number] CHAR (11) NOT NULL,
--�ֻ����룬check Լ����Ψһ������
[Name of Guardian 1] NVARCHAR (20) NOT NULL, --�໤�� 1 ����
[Name of Guardian 2] NVARCHAR (20) NOT NULL, --�໤�� 2 ����
[Phone Number of Guardian 1] CHAR (11) NOT NULL,
--�໤�� 1 �ֻ����룬check Լ����Ψһ������
[Phone Number of Guardian 2] CHAR (11) NOT NULL,
--�໤�� 2 �ֻ����룬check Լ����Ψһ������

[password] varchar(20) not null, 
--����, �����¼��,Ϊ�˷��㲻���⽨����洢����,�Ժ�ɸĽ�

CONSTRAINT [PK_Table1] PRIMARY KEY CLUSTERED ([Student ID]),
--����ѧ��Ϊѧ����Ϣ�������
--UNIQUE NONCLUSTERED ([Student ID] ASC),--Ψһ��������������Ҳ�ɲ��裩
UNIQUE NONCLUSTERED ([Phone Number] ASC), --�绰����Ψһ��
UNIQUE NONCLUSTERED ([Phone Number of Guardian 1] ASC),
--�໤�� 1 �绰����Ψһ��
UNIQUE NONCLUSTERED ([Phone Number of Guardian 2] ASC),
--�໤�� 2 �绰����Ψһ��
CONSTRAINT [FK_Student_Basic_Info_ToTable] FOREIGN KEY ([Class])
REFERENCES [dbo].[Class_number] ([Class]), --���Լ�������༶
CONSTRAINT [FK_Student_Basic_Info_ToTable_1] FOREIGN KEY ([Gender])
REFERENCES [dbo].[Gender] ([Gender]), --���Լ���Ա�
CONSTRAINT [FK_Student_Basic_Info_ToTable_2] FOREIGN KEY ([Major])
REFERENCES [dbo].[Major] ([Major]), --���Լ��רҵ
CONSTRAINT [SBIConstraint] CHECK ([ID Number]LIKE'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0
-9][0-9][0-9][0-9][0-9][0-9][0-9A-Z]'), --check Լ��
CONSTRAINT [SBIConstraint_1] CHECK ([Student ID]LIKE'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
CONSTRAINT [SBIConstraint_2] CHECK ([Age]LIKE'[0-9][0-9][0-9]'),
CONSTRAINT [SBIConstraint_3] CHECK ([NCEE Score]LIKE'[0-9][0-9][0-9]'),
CONSTRAINT [SBIConstraint_4] CHECK ([Phone Number]LIKE'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
,
CONSTRAINT [SBIConstraint_5] CHECK ([Phone Number of Guardian 1]LIKE'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
CONSTRAINT [SBIConstraint_6] CHECK ([Phone Number of Guardian 2]LIKE'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
);
--������ʦ��Ϣ��
CREATE TABLE [dbo].[Teacher_Info] ( --��������Ҫ��Ľ�ʦ��Ϣ��
[ID] INT IDENTITY (1, 1) NOT NULL, --��������Ψһ ID
[ID Number] CHAR(18) NOT NULL, --���֤���룬check Լ��
[Gender] NVARCHAR(4) NOT NULL, --�Ա����Լ��
[Age] CHAR(3) NOT NULL, --���䣬check Լ��
[Job number] CHAR(8) NOT NULL, --����,check Լ����Ψһ������
[Full Name] NVARCHAR(20) NOT NULL, --����
[College] NVARCHAR(20) NOT NULL, --ѧԺ�����Լ��
[Major] NVARCHAR(20) NOT NULL, --רҵ�����Լ��
[Office Location] NVARCHAR(20) NOT NULL, --�����ص㣬���Լ��
[Phone Number] CHAR(11) NOT NULL, --�绰���룬check Լ����Ψһ������

[password] varchar(20) not null, 
--����, �����¼��,Ϊ�˷��㲻���⽨����洢����,�Ժ�ɸĽ�

UNIQUE NONCLUSTERED ([Job number] ASC), --����Ψһ��
UNIQUE NONCLUSTERED ([Phone Number] ASC), --�ֻ���Ψһ��
CONSTRAINT [PK_Teacher_Info] PRIMARY KEY ([Job number]),
--���ù���Ϊ�������
CONSTRAINT [FK_Teacher_Info] FOREIGN KEY ([Gender]) REFERENCES
[dbo].[Gender] ([Gender]), --���Լ���Ա�
CONSTRAINT [FK_Teacher_Info_1] FOREIGN KEY ([College]) REFERENCES
[dbo].[College] ([College]), --���Լ��ѧԺ
CONSTRAINT [FK_Teacher_Info_2] FOREIGN KEY ([Major]) REFERENCES
[dbo].[Major] ([Major]), --���Լ��רҵ
CONSTRAINT [TIConstraint] CHECK ([ID Number]LIKE'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0
-9][0-9][0-9][0-9][0-9][0-9][0-9]'), --������Ч��Լ��
CONSTRAINT [TIConstraint_1] CHECK ([Job number]LIKE'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
CONSTRAINT [TIConstraint_2] CHECK ([Phone Number]LIKE'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
);
--������Ϣ��
use manage
go
--drop table Classroom_Info
CREATE TABLE [dbo].[Classroom_Info] --��������Ҫ�������Ϣ��
(
[ID] INT IDENTITY (1, 1) NOT NULL, --��������Ψһ ID
[Classroom Number] NVARCHAR(9) NOT NULL, --���Һ�
[Classroom location] NCHAR(10) NOT NULL, --���ҵص㣬���Լ��
[Capacity] CHAR(3) NOT NULL, --�������������Լ��
[Multimedia Situation] NCHAR(16) NOT NULL DEFAULT '���õ��Ժ�ͶӰ��',
--�������գ���Ϊ'���õ��Ժ�ͶӰ��'
UNIQUE NONCLUSTERED ([Classroom Number] ASC), --���Һ�Ψһ��
CONSTRAINT [PK_Classroom_Info] PRIMARY KEY ([Classroom Number]),
--���ý��Һ�Ϊ�������
CONSTRAINT [FK_Classroom_Info] FOREIGN KEY ([Classroom location])
REFERENCES [dbo].[Classroom_location] ([Classroom location]),
--���Լ�����ҵص�
CONSTRAINT [FK_Classroom_Info_1] FOREIGN KEY ([Classroom Number])
REFERENCES [dbo].[Classroom_Number] ([Classroom Number])--���Լ�����Һ�
);
--�γ���Ϣ��
use manage
go
CREATE TABLE [dbo].[Course_Info] ( --��������Ҫ��Ŀγ���Ϣ��
[ID] INT IDENTITY (1, 1) NOT NULL, --��������Ψһ ID
[Course Title] NVARCHAR(50) NOT NULL, --�γ����ƣ�Ψһ������
[Course Number] CHAR(7) NOT NULL, --�γ̱�ţ�check Լ����Ψһ������
[Course Category] NVARCHAR(10) NOT NULL, --�γ�������Լ��
[Way Of Investigation] NCHAR(4) NOT NULL, --���췽ʽ�����Լ��
[Hours Of Studying] CHAR(3) NOT NULL, --ѧʱ����check Լ��
UNIQUE NONCLUSTERED ([Course Title] ASC), --�γ�����Ψһ��
UNIQUE NONCLUSTERED ([Course Number] ASC), --�γ̱��Ψһ��
CONSTRAINT [PK_Course_Info] PRIMARY KEY ([Course Number]),
--���ÿγ̱��Ϊ����
CONSTRAINT [FK_Course_Info] FOREIGN KEY ([Course Category])
REFERENCES [dbo].[Course_Category] ([Course Category]),
--���Լ���γ�����
CONSTRAINT [FK_Course_Info_1] FOREIGN KEY ([Way Of Investigation])
REFERENCES [dbo].[Way_Of_Investigation] ([Way Of Investigation]),
--���Լ�����鷽ʽ
CONSTRAINT [CIConstraint] CHECK ([Course Number]LIKE'[0-9][0-9][0-9][0-9][0-9][0-9][0-9]'), --������Ч��Լ��
CONSTRAINT [CIConstraint_1] CHECK ([Hours Of Studying]LIKE'[0-9][0-9][0-9]')
)
--�γ̼ƻ���
CREATE TABLE [dbo].[Course_Schedule] ( --��������Ҫ��Ŀγ̼ƻ���
[ID] INT IDENTITY (1, 1) NOT NULL, --��������Ψһ ID
[Course Number] CHAR(7) NOT NULL, --�γ̱�ţ����Լ��
[Classroom Number] NVARCHAR(9) NOT NULL, --���Һţ����Լ��
[Job number] CHAR(8) NOT NULL, --���ţ����Լ��
[TeachingClass] NVARCHAR(9) NOT NULL, --��ѧ�࣬���Լ��
[Class time] NCHAR(12) NOT NULL, --�Ͽ�ʱ�䣬���Լ����Ψһ������
--UNIQUE NONCLUSTERED ([Class time] ASC),
CONSTRAINT [PK_Course_Schedule] PRIMARY KEY ([ID]),
--����Ψһ�� ID Ϊ�������
CONSTRAINT [FK_Course_Schedule] FOREIGN KEY ([TeachingClass])
REFERENCES [dbo].[Class_number] ([Class]),
--���Լ����ѧ��
CONSTRAINT [FK_Course_Schedule_1] FOREIGN KEY ([Class time])
REFERENCES [dbo].[Class_time] ([Class time]), --���Լ���Ͽ�ʱ��
CONSTRAINT [FK_Course_Schedule_2] FOREIGN KEY ([Job number])
REFERENCES [dbo].[Teacher_Info] ([Job number]), --���Լ������
CONSTRAINT [FK_Course_Schedule_3] FOREIGN KEY ([Classroom Number])
REFERENCES [dbo].[Classroom_Number] ([Classroom Number]),
--���Լ�����Һ�
CONSTRAINT [FK_Course_Schedule_4] FOREIGN KEY ([Course Number])
REFERENCES [dbo].[Course_Info] ([Course Number])
--���Լ���γ̱��
);
--�����ɼ���
CREATE TABLE [dbo].[Score_Sheet] ( --��������Ҫ��
[ID] INT IDENTITY (1, 1) NOT NULL, --��������Ψһ ID
[Student ID] CHAR(10) NOT NULL, --ѧ�ţ����Լ��
[Course Number] CHAR(7) NOT NULL, --�γ̱�ţ����Լ��
[Job number] CHAR(8) NOT NULL, --���ţ����Լ��
[Score] CHAR(3) NOT NULL, --��Ŀ�ɼ���check Լ��
CONSTRAINT [PK_Score_Sheet] PRIMARY KEY ([ID]),--���� ID Ϊ�ɼ��������
CONSTRAINT [FK_Score_Sheet] FOREIGN KEY ([Student ID]) REFERENCES
[dbo].[Student_Basic_Info] ([Student ID]), --���Լ��ѧ��
CONSTRAINT [FK_Score_Sheet_1] FOREIGN KEY ([Course Number])
REFERENCES [dbo].[Course_Info] ([Course Number]), --���Լ���γ̱��
CONSTRAINT [FK_Score_Sheet_2] FOREIGN KEY ([Job number]) REFERENCES
[dbo].[Teacher_Info] ([Job number]), --���Լ������
CONSTRAINT [SSConstraint_1] CHECK ([Score]LIKE'[0-9][0-9][0-9]'))--������Ч��