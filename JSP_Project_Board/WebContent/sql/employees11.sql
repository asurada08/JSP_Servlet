create table employees11(
  id varchar2(10) not null,
  pass varchar2(10) not null,
  name varchar2(24),
  lev char(1) default 'A',
  enter date default sysdate,
  gender char(1) default '1',
  phone varchar2(30),
  primary key(id));
  
insert into employees11(id, pass, name, lev, gender, phone) values('admin', '1111', '관리자', 'A', '1', '010-0000-0000');

commit;