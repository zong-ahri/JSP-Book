-- 테이블 생성
create table if not exists member(
	id varchar(20) not null,
	passwd varchar(20),
	name varchar(30),
	primary key (id)
);

-- 테이블 조회
show tables;

-- 테이블 상세조회
desc member;

-- 데이터 조회
select * from member;

-- 데이터 수정
delete from member where id = '2';