--������SQL����ѯ�ڡ���3-104���ϡ����ݿ⡿�ε�
--��Ů�����С����䡿����22��ġ�c���ԡ��εġ�����������90�ֵ�
--���С���ʦ�Ĺ��ź��ֻ��š�
-- ��ѯ����C���Ե���ʦ����
use manage
go
-- ��ѯ��������3 104�����ݿ��Ů����ѧ��
select [Student_Basic_Info].[Student ID] into [dbo].[IDs] from 
[dbo].[Student_Basic_Info] 
--inner join [dbo].[Score_Sheet] on [Student_Basic_Info].[Student ID]=[Score_Sheet].[Student ID] 
inner join [dbo].[Course_Schedule] on [Course_Schedule].TeachingClass=[Student_Basic_Info].[Class]
inner join [dbo].[Course_Info] on [Course_Info].[Course Number]=[Course_Schedule].[Course Number]
where [Classroom Number]='�� 3-104' 
and[Course_Info].[Course Title]='���ݿ������Ӧ��'
and [Student_Basic_Info].[Gender]='Ů'
and [Student_Basic_Info].[Age]>=22

--select [Student ID],[Score_Sheet].[Course Number],[Score_Sheet].[Score] into [dbo].[result]
select [Teacher_info].[Job number],[Teacher_info].[Phone Number] into [dbo].[result] 
from [dbo].[Teacher_Info] 
inner join [dbo].[Score_Sheet] on [Teacher_Info].[Job number]=[Score_Sheet].[Job number]
--ͨ��������ɼ�������ϵ
--inner join [dbo].[IDs] on [IDs].[Student ID]=[Score_Sheet].[Student ID] 
--ͨ��ѧ���޶�Ϊ֮ǰ��ѯ����Ů��ѧ��
inner join [dbo].[Course_Info] on [Course_Info].[Course Number]=[Score_Sheet].[Course Number]
where [Teacher_Info].[Gender]='��' 
 and [Score_Sheet].[Student ID] in (select [Student ID] from [IDs])
and [Course_Info].[Course Title]='C ���Լ��㷨���'
and [Score_Sheet].[Score]>=90

drop table IDs
select distinct * from [dbo].[result]
drop table result
-- select * from [Classroom_Info]
-- select * from [Classroom_Number]
-- select * from [Course_Schedule] where [Course Number]='1000157'
-- select TeachingClass from [dbo].[Course_Schedule]  where [Classroom Number]='�� 3-104'
-- select * from [dbo].[Course_Info]
-- select * from Score_Sheet where [Course Number]='1000156'
-- select * from Score_Sheet where Score >= 90 and [Course Number]='1000157'
-- select *from IDs 2 3 5 9 10 �ɼ��ֱ�Ϊ 93 94 94 99 91 ǡ��ȫ��������90��
