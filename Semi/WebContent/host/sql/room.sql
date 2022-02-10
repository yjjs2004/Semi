drop table room cascade constraints purge;


create table room(
	host_id			varchar2(12),
	name		varchar2(100) PRIMARY KEY,--방이름
	phone		varchar2(100),
	location		varchar2(300),--상세주소			
	room_type		varchar2(20),--숙수유형
	filename	varchar2(200),
	fileroute		varchar2(500),
	rooms_name		varchar2(10),
	personnel		varchar2(20),
	bedcount		varchar2(20),
	price			varchar2(50),
	filename_a	varchar2(200),
	fileroute_b		varchar2(500),
	FOREIGN KEY(host_id) REFERENCES host(host_id)
);

select * from room

insert into room(room_id)
values ('AAA')