create database manage  --数据库名称manage
on primary --创建主要数据文件 
( 
	name='Teaching_Systems', --文件名称 
	filename='C:\Users\chen\Desktop\manage.mdf', --文件路径和文件名 这里演示设置为桌面
	size=10mb, --文件大小 
	filegrowth=10mb --文件增长大小 
) 
log on --创建日志文件 
( name='Teaching_Systems_log',--文件名称 
filename='C:\Users\chen\Desktop\manage.ldf', --文件路径和文件名 
size=5mb, --文件大小 
filegrowth=10% --文件增长百分比 
) 