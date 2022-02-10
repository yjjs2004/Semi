drop table host cascade constraints purge;


create table host(
	host_id			varchar2(12),--사업자 아이디
	host_password	varchar2(10),--사업자 비밀번호
	host_name		varchar2(15),--사업자  이름
	host_birth		date,
	addrzipnum	varchar2(50),--우편번호
	addrbasic	varchar2(300),--기본주소
	addrdetail	varchar2(300),--상세주소
	host_business	varchar2(10),--개인/법인
	host_email		varchar2(30),--사업자 이메일
	business_name	varchar2(20) NULL,--상호명
	business_num	varchar2(10) NULL,--사업자 번호
	corporation_name varchar2(20)	NULL,--법인명
	corporation_num varchar2(20)	NULL,--법인번호
	PRIMARY KEY (host_id)
);

select * from host

