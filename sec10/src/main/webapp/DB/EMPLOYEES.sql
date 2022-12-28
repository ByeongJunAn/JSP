create table EMPLOYEES(
	id VARCHAR(10) NOT null primary key,
	pass VARCHAR(10) NOT null,
	name VARCHAR(24),
	lev char(1) DEFAULT 'A',
	enter DATE,
	gender CHAR(1) DEFAULT '1',
	phone VARCHAR(30)
);

insert into EMPLOYEES values("hong", "1234", "홍길동", "A", 20221228, "1", 01012345678 )

select * from employees; 