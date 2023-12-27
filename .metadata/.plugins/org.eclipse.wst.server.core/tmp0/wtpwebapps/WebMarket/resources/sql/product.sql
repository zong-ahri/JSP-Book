CREATE TABLE IF NOT EXISTS product(
	p_id VARCHAR(10) NOT NULL,
	p_name VARCHAR(20),
	p_unitPrice INTEGER,
	p_description TEXT,
	p_category VARCHAR(20),
	p_manufacturer VARCHAR(20),
	p_unitInStock LONG,
	p_condition VARCHAR(20),
	p_fileName VARCHAR(20),
	PRIMARY KEY (p_id)
) DEFAULT character set utf8 COLLATE utf8_general_ci;


CREATE TABLE member (
	id VARCHAR(10) NOT NULL,		--회원 아이디
	password VARCHAR(10) NOT NULL,	--비밀번호
	name VARCHAR(10) NOT NULL,		--이름
	gender VARCHAR(4),				--성별
	birth VARCHAR(10),				--생일
	mail VARCHAR(30),				--메일
	phone VARCHAR(20),				--전화번호
	address VARCHAR(90),			--주소
	regist_day VARCHAR(50),			--가입 일자
	PRIMARY KEY(id)					--회원 아이디를 고유 키로 설정
) DEFAULT CHARSET=utf8;