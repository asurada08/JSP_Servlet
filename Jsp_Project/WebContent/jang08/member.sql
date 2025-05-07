create table member (
name varchar2(10),
userid varchar2(10), 
pwd varchar2(10),
email varchar2(20),
phone char(13),
admin number(1) default 0,
primary key(userid));

insert into member values('이소미', 'somi', '1234', 'gmd@naver.com', '010-2362-5157', 0);
insert into member values('하상오', 'sang12', '1234', 'ha@naver.com', '010-5629-8888', 1);
insert into member values('김윤승', 'light', '1234', 'youn1004@naver.com', '010-9999-8282', 0);

commit;

select * from member;
select * from member where userid='somi';
update member set phone='011-765-4321' where userid='somi';
delete member where userid='somi';