drop table room cascade constraints purge;


create table room(
	name		varchar2(100) PRIMARY KEY,--방이름
	addrzipnum	varchar2(50),--우편번호
	addrbasic	varchar2(300),--기본주소
	addrdetail	varchar2(300),--상세주소		
	room_type		varchar2(20),--숙수유형
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