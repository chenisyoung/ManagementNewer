create database manage  --���ݿ�����manage
on primary --������Ҫ�����ļ� 
( 
	name='Teaching_Systems', --�ļ����� 
	filename='C:\Users\chen\Desktop\manage.mdf', --�ļ�·�����ļ��� ������ʾ����Ϊ����
	size=10mb, --�ļ���С 
	filegrowth=10mb --�ļ�������С 
) 
log on --������־�ļ� 
( name='Teaching_Systems_log',--�ļ����� 
filename='C:\Users\chen\Desktop\manage.ldf', --�ļ�·�����ļ��� 
size=5mb, --�ļ���С 
filegrowth=10% --�ļ������ٷֱ� 
) 