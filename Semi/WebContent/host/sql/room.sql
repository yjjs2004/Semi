drop table room cascade constraints purge;


create table room(
	name		varchar2(100) PRIMARY KEY,--諛⑹씠由�
	addrzipnum	varchar2(50),--�슦�렪踰덊샇
	addrbasic	varchar2(300),--湲곕낯二쇱냼
	addrdetail	varchar2(300),--�긽�꽭二쇱냼		
	room_type		varchar2(20),--�닕�닔�쑀�삎
	room_text		varchar2(100),
	room_img		varchar2(100),
	rooms_name		varchar2(100),
	personnel		varchar2(20),
	bedcount		varchar2(20),
	price			varchar2(50),
	rooms_img1		varchar2(100),
	rooms_img2		varchar2(100)
	
);

select * from room

insert into room(room_id)
values ('AAA')