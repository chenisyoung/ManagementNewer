--最后采用SQL语句查询在【西3-104】上【数据库】课的
--【女生】中【年龄】超过22岁的【c语言】课的【分数】高于90分的
--【男】老师的工号和手机号。
-- 我的查询思路是分两步查询
-- 查询的是C语言的老师名字
use manage
go
-- 查询符合在西3 104上数据库的年龄超过22的女生的学号
select [Student_Basic_Info].[Student ID] into [dbo].[IDs] from 
[dbo].[Student_Basic_Info] 
--inner join [dbo].[Score_Sheet] on [Student_Basic_Info].[Student ID]=[Score_Sheet].[Student ID] 
inner join [dbo].[Course_Schedule] on [Course_Schedule].TeachingClass=[Student_Basic_Info].[Class]
inner join [dbo].[Course_Info] on [Course_Info].[Course Number]=[Course_Schedule].[Course Number]
where [Classroom Number]='西 3-104' 
and[Course_Info].[Course Title]='数据库基础与应用'
and [Student_Basic_Info].[Gender]='女'
and [Student_Basic_Info].[Age]>=22
-- 通过学号查询成绩表中c语言课超过90的女生对应的任课老师的信息
select [Teacher_info].[Job number],[Teacher_info].[Phone Number] into [dbo].[result] 
from [dbo].[Teacher_Info] 
inner join [dbo].[Score_Sheet] on [Teacher_Info].[Job number]=[Score_Sheet].[Job number]
--通过工号与成绩表建立关系
inner join [dbo].[IDs] on [IDs].[Student ID]=[Score_Sheet].[Student ID] 
--通过学号限定为之前查询到的女生学号
inner join [dbo].[Course_Info] on [Course_Info].[Course Number]=[Score_Sheet].[Course Number]
where --以下为要求限定
[Teacher_Info].[Gender]='男' 
and [Course_Info].[Course Title]='C 语言及算法设计'
and [Score_Sheet].[Score]>=90
-- 删除临时表
drop table IDs
select distinct * from [dbo].[result]
drop table result