create table choose
(
	choose int not null
)
insert into choose values (1)

update choose set choose=1

create table geyan
(
	geyan nvarchar(64) not null
)
insert into geyan values 
('阅读使人充实，会谈使人敏捷，写作使人精确。——培根'),
('最大的骄傲于最大的自卑都表示心灵的最软弱无力。——斯宾诺莎'),
('知人者智，自知者明。胜人者有力，自胜者强。——老子'),
('最具挑战性的挑战莫过于提升自我。——迈克尔·F·斯特利'),
('只有把抱怨环境的心情，化为上进的力量，才是成功的保证。——罗曼·罗兰')

create table tanchuang
(
	tanchuang nvarchar(128) not null
)
insert into tanchuang values ('系统已经不再维护!')

create table tanchuang1
(
	tanchuang nvarchar(128) not null
)
insert into tanchuang1 values ('系统已经不再维护!即将退出')