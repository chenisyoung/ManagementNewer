--������SQL����ѯ�ڡ���3-104���ϡ����ݿ⡿�ε�
--��Ů�����С����䡿����22��ġ�c���ԡ��εġ�����������90�ֵ�
--���С���ʦ�Ĺ��ź��ֻ��š�
-- �ҵĲ�ѯ˼·�Ƿ�������ѯ
-- ��ѯ����C���Ե���ʦ����
use manage
go
-- ��ѯ��������3 104�����ݿ�����䳬��22��Ů����ѧ��
select [Student_Basic_Info].[Student ID] into [dbo].[IDs] from 
[dbo].[Student_Basic_Info] 
--inner join [dbo].[Score_Sheet] on [Student_Basic_Info].[Student ID]=[Score_Sheet].[Student ID] 
inner join [dbo].[Course_Schedule] on [Course_Schedule].TeachingClass=[Student_Basic_Info].[Class]
inner join [dbo].[Course_Info] on [Course_Info].[Course Number]=[Course_Schedule].[Course Number]
where [Classroom Number]='�� 3-104' 
and[Course_Info].[Course Title]='���ݿ������Ӧ��'
and [Student_Basic_Info].[Gender]='Ů'
and [Student_Basic_Info].[Age]>=22
-- ͨ��ѧ�Ų�ѯ�ɼ�����c���Կγ���90��Ů����Ӧ���ο���ʦ����Ϣ
select [Teacher_info].[Job number],[Teacher_info].[Phone Number] into [dbo].[result] 
from [dbo].[Teacher_Info] 
inner join [dbo].[Score_Sheet] on [Teacher_Info].[Job number]=[Score_Sheet].[Job number]
--ͨ��������ɼ�������ϵ
inner join [dbo].[IDs] on [IDs].[Student ID]=[Score_Sheet].[Student ID] 
--ͨ��ѧ���޶�Ϊ֮ǰ��ѯ����Ů��ѧ��
inner join [dbo].[Course_Info] on [Course_Info].[Course Number]=[Score_Sheet].[Course Number]
where --����ΪҪ���޶�
[Teacher_Info].[Gender]='��' 
and [Course_Info].[Course Title]='C ���Լ��㷨���'
and [Score_Sheet].[Score]>=90
-- ɾ����ʱ��
drop table IDs
select distinct * from [dbo].[result]
drop table result