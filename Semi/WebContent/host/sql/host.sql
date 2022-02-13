drop table host cascade constraints purge;


create table host(
	host_id			varchar2(12),--�궗�뾽�옄 �븘�씠�뵒
	host_password	varchar2(10),--�궗�뾽�옄 鍮꾨�踰덊샇
	host_name		varchar2(15),--�궗�뾽�옄  �씠由�
	host_birth		date,
	addrzipnum	varchar2(50),--�슦�렪踰덊샇
	addrbasic	varchar2(300),--湲곕낯二쇱냼
	addrdetail	varchar2(300),--�긽�꽭二쇱냼
	host_business	varchar2(10),--媛쒖씤/踰뺤씤
	host_email		varchar2(30),--�궗�뾽�옄 �씠硫붿씪
	business_name	varchar2(20) NULL,--�긽�샇紐�
	business_num	varchar2(10) NULL,--�궗�뾽�옄 踰덊샇
	corporation_name varchar2(20)	NULL,--踰뺤씤紐�
	corporation_num varchar2(20)	NULL,--踰뺤씤踰덊샇
	PRIMARY KEY (host_id)
);

drop table room
create table room(
	name		varchar2(100),--諛⑹씠由�
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
	rooms_img2		varchar2(100),
	foreign key (name) references host(host_id)
);

);
select * from host

select * from cart

select host_id, host_password from host where host_id='asd'