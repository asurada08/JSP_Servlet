create table movie (
code number(4),
title varchar2(50),
price number(10),
director varchar2(20),
actor varchar2(20),
poster varchar2(100),
synopsis varchar2(3000),
primary key(code));

create SEQUENCE movie_seq start with 1 INCREMENT by 1;

insert into movie values (movie_seq.nextval, '베를린', 10000, '류승완', '하정우', 'movie1.jpg', '거대한 국제적 음모가...');
insert into movie values (movie_seq.nextval, '박수건달', 10000, '조진규', '박신양,엄지원', 'movie2.jpg', '건달로 사느냐, 무당으로사느냐...');
insert into movie values (movie_seq.nextval, '레미제라블', 10000, '톰 후퍼', '휴 잭맨', 'movie3.jpg', '빵 한조각을 훔친 죄로 19년의 감옥살이를 한...');
insert into movie values (movie_seq.nextval, '7번방의 선물', 9000, '이환경', '류승용,박신혜', 'movie4.jpg', '최악의 흉악범들이 모인 교도소 7번방에...');

commit;