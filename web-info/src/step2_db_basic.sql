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
/*
 * ���̺� �����
 * table �� : typetest, column : name �� money
 * datatype : varchar2(9) ���ڿ� ������ Ÿ�� 9�� ������ ���� �ѱ��� 3�ڱ���
 * 				number ���� ������ Ÿ��
 * ��������(constraints) : primary key(pk, ��Ű) -> unique + not null
 */
create table typetest(
	name varchar2(9) primary key,
	money number not null
)

insert into typetest(name, money) values('javaking',100);

select money from typetest where name='javaking';
-- insert test, ���̺� ������ �ִ� 9��(����)�� ���������Ƿ� error
insert into typetest(name, money) values('barackobama',200);
-- insert ok
insert into typetest(name, money) values('����ȣ',200);
-- insert fail �ִ�9�� �ѱ� 3�ڱ��� ���
insert into typetest(name, money) values('�ְ���ȣ',200);
-- ��ȸ�� ����
select money*2, name from typetest

drop talbe typetest;

create table test1(
	id varchar2(100) primary key,
	hit number default 0
)
-- default 0 �� ������������ ������ ������ insert���� ������
-- �⺻ �� 0�� �߰��ȴ�
-- id�� java�� ������ insert
insert into test1(id) values('java')
select * from test1
alter table test1 rename to test2;
select * from test2
-- alter�� �̿��� �÷����� ����
/*
 * alter talbe ���̺��
 * rename column �����ؾ��� �÷��� to ���ο� �÷���;
 * hit�� count�� ����
 */ 
*/
alter table test2 rename column hit to count;
select * from test2
/*
 * ���̺�� : product
 * �÷��� : id, name, maker, price
 * ������ Ÿ�� : id, name, maker�� ��� varchar2(100)
 * 				price�� number
 * �������� : id�� primary key, �������� not null
 * 
 * ���̺� ������ ��ȸ ���
 * id	name	maker	price
 * a	������7	�Ｚ		150
 * b	������6	�Ｚ		100
 * c	������6	����		120
 */

create table product(
	id varchar2(100) primary key,
	name varchar2(100) not null,
	maker varchar2(100) not null,
	price number not null
)

insert into product(id,name,maker,price) values ('a','������7','�Ｚ',150);
insert into product(id,name,maker,price) values ('b','������6','�Ｚ',100);
insert into product(id,name,maker,price) values ('c','������6','����',120);

select * from product;

select count(*) from pruduct;

select max(price) from product;
select min(price) from product;
select avg(price) from product;
select round(avg(price)) from product;
select ceil(avg(price)) from product;
select floor(avg(price)) from product;
select * from product order by price desc;
select * from product where price<=130
select id,name,price from product where maker='�Ｚ' order by price asc
select * from product where price>=100 and price<=120