create table personal(
PERSONAL_ID	varchar2(12) primary key,
PERSONAL_NICKNAME varchar2(30),
PERSONAL_PASSWORD varchar2(10),
PERSONAL_TEL varchar2(15),
PERSONAL_NAME varchar2(20),
PERSONAL_BIRTH date default sysdate,
PERSONAL_GENDER varchar2(3),
PERSONAL_POST varchar2(6),
PERSONAL_ADDRESS varchar2(150),
PERSONAL_EMAIL varchar2(30)
);
select * from personal
select * from faq
delete from faq;
create table cs(
CS_LIST VARCHAR2(15),
CS_DATE date default sysdate,
CS_CONTENT VARCHAR2(1000),
CS_NUMBER VARCHAR2(15) PRIMARY KEY,
CS_ANSWER_OK VARCHAR2(3),
CS_ANSWER VARCHAR2(1000)
);
create sequence faq_seq
INCREMENT BY 1 
START WITH 1
MINVALUE 1
MAXVALUE 1000
NOCYCLE
noCACHE;

create table faq(
FAQ_ID VARCHAR2(12),
seq number(10),
FAQ_KINDS VARCHAR2(15),
FAQ_SUBJECT VARCHAR2(50),
FAQ_CONTENT VARCHAR2(1000),
FAQ_DATE date default sysdate,
FAQ_COMPLETE varchar2(3),
foreign key (FAQ_ID) references personal(PERSONAL_ID)
);

drop table faq;

insert into faq(
FAQ_ID,
seq,
FAQ_KINDS,
FAQ_SUBJECT,
FAQ_CONTENT,
FAQ_COMPLETE)
 values
 ('yjjs2002',faq_seq.nextval, '종류', '제목', '내용', 'f');

CREATE TABLE SEARCH(
SEARCH_HISTORY VARCHR2(45));

