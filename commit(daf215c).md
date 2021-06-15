DB(PostgreSQL) 연동

![image](https://user-images.githubusercontent.com/45585087/122085318-90a52100-ce3d-11eb-93fb-60397219ccb2.png)


1. https://www.postgresql.org에서 postgresql을 다운로드 (버전 : PostgreSQL 10.17, compiled by Visual C++ build 1800, 64-bit)
2. exe 파일 실행
3. 설치
4. 윈도우 검색창에서 pgadmin 검색
5. pgadmin 클릭
6. 비밀번호 입력
7. 엔터
8. 왼쪽 트리에서 Databases 우클릭


도중에 발생한 에러 해결
스프링 web.xml 
java.sun.com --> JAVA 대문자로 바꾸면 해결


com.myproject.test1에서 com.myproject로 변경  (아래 그림 참조)
![image](https://user-images.githubusercontent.com/45585087/122084272-a534e980-ce3c-11eb-89e7-297dfe4601f1.png)

/test1에서 /로 변경 (아래 그림 참조)
![image](https://user-images.githubusercontent.com/45585087/122084208-95b5a080-ce3c-11eb-9419-ae807b519a9b.png)


사용한 쿼리문
create table user_info (
	user_name character(10),
	user_id character(10) primary key,
	phone_number character(10),
	age integer	
)

ALTER TABLE user_info ALTER COLUMN user_id TYPE integer USING user_id::integer

CREATE SEQUENCE IF NOT EXISTS seq_user_info
     AS integer
     INCREMENT  BY 1
     START  WITH  1 
     OWNED BY user_info.user_id

ALTER TABLE user_info ALTER user_id SET DEFAULT nextval('seq_user_info')

ALTER TABLE user_info ALTER COLUMN phone_number TYPE character(13) 

INSERT INTO
	user_info
(
	user_name,
	phone_number,
	age
)
VALUES
(
	'Anna',
	'010-1234-1234',
	20    
)

INSERT INTO
	user_info
(
	user_name,
	phone_number,
	age
)
VALUES
(
	'Barbara',
	'010-2345-6789',
	30    
)

select * from user_info


참조
https://osc131.tistory.com/48
https://mybatis.org/mybatis-3/ko/getting-started.html
https://hojin880214.tistory.com/56
