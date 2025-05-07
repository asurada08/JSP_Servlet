create table employee (
name varchar2(20),
address varchar2(100),
ssn varchar2(15)
);

insert into employee values ('duke', 'seoul', '970224-1039234');
insert into employee values ('pororo', 'busan', '001222-1038782');
insert into employee values ('candy', 'deajeon', '981221-1829192');

select * from employee;