create table board{
num number(5) primary key,
pass varchar2(30),
name varchar2(30),
email varchar2(30),
title varchar2(50),
content varchar2(1000),
readcount number(4) default 0,
writedate date default sysdate
};

create sequence board_seq start with 1 increment by 1;

insert into board(num, name, email, pass, title, content) values(board_seq.nextval, '성윤정', 'pinksun@nate.com', '1234', '첫방문', '반갑습니다.');
insert into board(num, name, email, pass, title, content) values(board_seq.nextval, '성윤정', 'pinksun@nate.com', '1234', '김밥', '맛있어요.');
insert into board(num, name, email, pass, title, content) values(board_seq.nextval, '전수빈', 'raccon@nate.com', '3333', '고등애', '일식입니다.');
insert into board(num, name, email, pass, title, content) values(board_seq.nextval, '전원지', 'one@nate.com', '1111', '갯골마을', '돼지삼겹살이 맛있습니다.');

commit;

select * from board;