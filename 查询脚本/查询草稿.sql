--最后采用SQL语句查询在【西3-104】上【数据库】课的
--【女生】中【年龄】超过22岁的【c语言】课的【分数】高于90分的
--【男】老师的工号和手机号。
-- 查询的是C语言的老师名字
use manage
go
-- 查询符合在西3 104上数据库的女生的学号
select [Student_Basic_Info].[Student ID] into [dbo].[IDs] from 
[dbo].[Student_Basic_Info] 
--inner join [dbo].[Score_Sheet] on [Student_Basic_Info].[Student ID]=[Score_Sheet].[Student ID] 
inner join [dbo].[Course_Schedule] on [Course_Schedule].TeachingClass=[Student_Basic_Info].[Class]
inner join [dbo].[Course_Info] on [Course_Info].[Course Number]=[Course_Schedule].[Course Number]
where [Classroom Number]='西 3-104' 
and[Course_Info].[Course Title]='数据库基础与应用'
and [Student_Basic_Info].[Gender]='女'
and [Student_Basic_Info].[Age]>=22

--select [Student ID],[Score_Sheet].[Course Number],[Score_Sheet].[Score] into [dbo].[result]
select [Teacher_info].[Job number],[Teacher_info].[Phone Number] into [dbo].[result] 
from [dbo].[Teacher_Info] 
inner join [dbo].[Score_Sheet] on [Teacher_Info].[Job number]=[Score_Sheet].[Job number]
--通过工号与成绩表建立关系
--inner join [dbo].[IDs] on [IDs].[Student ID]=[Score_Sheet].[Student ID] 
--通过学号限定为之前查询到的女生学号
inner join [dbo].[Course_Info] on [Course_Info].[Course Number]=[Score_Sheet].[Course Number]
where [Teacher_Info].[Gender]='男' 
 and [Score_Sheet].[Student ID] in (select [Student ID] from [IDs])
and [Course_Info].[Course Title]='C 语言及算法设计'
and [Score_Sheet].[Score]>=90

drop table IDs
select distinct * from [dbo].[result]
drop table result
-- select * from [Classroom_Info]
-- select * from [Classroom_Number]
-- select * from [Course_Schedule] where [Course Number]='1000157'
-- select TeachingClass from [dbo].[Course_Schedule]  where [Classroom Number]='西 3-104'
-- select * from [dbo].[Course_Info]
-- select * from Score_Sheet where [Course Number]='1000156'
-- select * from Score_Sheet where Score >= 90 and [Course Number]='1000157'
-- select *from IDs 2 3 5 9 10 成绩分别为 93 94 94 99 91 恰好全部都大于90分
