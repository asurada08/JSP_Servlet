create table board2(
	num number(4) primary key,
	author varchar2(20),
	title varchar2(50),
	content varchar2(100),
	writeday date default sysdate,
	readCnt number(4) default 0,
	repRoot number(4),
	repStep number(4),
	repIndent number(4)
);

create sequence board2_seq;

insert into board2(num, author, title, content, repRoot, repStep, repIndent)
values(board2_seq.nextval, '홍길동', '테스트', '테스트입니다', board2_seq.CURRVAL, 0, 0);

commit;

select * from board2;