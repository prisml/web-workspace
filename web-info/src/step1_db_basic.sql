/*
 *  SQL(Structured Query Language) : ������ ���� ���
 * 									 database ���� ���
 *  1. DDL(Data Definition Language) :
 * 		create	: table ����
 * 		drop	: table ����
 * 		alter	: table ���� ����
 * 	2. DML(Data Manipulation Language)
 * 		insert	: ���� �߰�
 * 		delete	: ���� ����
 * 		updata	: ���� ����
 * 	3. DQL(Data Query Language)
 * 		select : ���� ��ȸ
 * 	4. DCL(Data Control Language)
 * 		commit	: Ʈ�����(�۾�����)�� ����� ������ �ݿ�
 * 		rollback: Ʈ������� �۾������ ����ϰ� ������� ����
 * 		grant	: ���� �ο�
 * 
 */

create table member(
	id varchar2(100) primary key,
	password varchar2(100) not null,
	name varchar2(100) not null,
	address varchar2(100)
)

insert into MEMBER(id,password,name,address)
values('java','1234','������','�Ǳ�');

select id,password,name,address from member;

drop table member;

-- member table�� ȸ�� ������ ����
-- ORA-00001: ���Ἲ ���� ����(SCOTT.SYS_C0040000)�� ����˴ϴ�.
-- ���� ���� ������ ����
-- id�� primary key ���������� �����Ǿ� �ְ�
-- �ݵ�� �����ϰ� �����ؾ� �Ѵ�
-- id�� �ߺ��ǹǷ� error�� ���� �߰��� ���� �ʴ´�
insert into MEMBER(id,password,name,address)
values('java','1234','�ι���','��ž');

insert into MEMBER(id,password,name,address)
values('gandi','1234','��ȣ��','��ž');

-- name �÷��� not null ���������� �־ �ݵ�� name�� insert�ؾ� �Ѵ�
insert into MEMBER(id,password,address)
values('test','1234','��ž');
-- ���� address�� ������ ���������� �����Ƿ� insert ���ص� �ȴ�
insert into MEMBER(id,password,name)
values('test','1234','Ȳ�⽺');

select * from MEMBER;

select count(*) from MEMBER;

select name from MEMBER;

select id,address from MEMBER;

select name,address from MEMBER where id='gandi';

select name,address from MEMBER where id='java' and password='1234';

select name,address from MEMBER where address is null;
select name,address from MEMBER where address is not null;

update member set name='����' where id='gandi'; 
select name from MEMBER where id='gandi';

update member set address='�Ǳ�' where address is NULL;

select id,name from MEMBER where address='�Ǳ�';

insert into MEMBER(id,password,name,address)
values('jdbc','abcd','����','��õ');

select * from MEMBER where id='jdbc';

update MEMBER set name='��ȣ��' where address='��ž';
update MEMBER set name='Ȳ����' where name='Ȳ�⽺';

delete from member where name='����';

commit --���� db�� �۾������ �ݿ�

-- ����
select * from member order by id asc;