create table item(
item_no number primary key,
name varchar2(100) not null,
maker varchar2(100) not null,
price number not null
);

create sequence item_seq;

insert into item (item_no, name, maker, price) values(item_seq.NEXTVAL,'1','1',1);