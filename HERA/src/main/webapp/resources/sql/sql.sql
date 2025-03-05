create table face (
    code varchar2(20) primary key,
    name varchar2(100) not null,
    price number not null,
    description varchar2(500),
    category varchar2(30) not null,
    filename varchar2(100) not null
);
		
insert into face values('P11', '리플렉션 스킨 글로우 쿠션 파운데이션', 60000, '속부터 투명하게 차올라 유연하게 빛나는 리플렉션 글로우', '파운데이션/쿠션', 'foundation/1.jpg');
insert into face values('P12', '헬씨 글로우 듀이 밤', 43000, '맑고 섬세한 광채를 더하는 슬로우에이징 글로우 밤', '블러셔/하이라이터', 'blush/1.jpg');
insert into face values('P13', '헤라 블러쉬', 50000, '물 들이듯이 표현되는 컬러와 부드러운 텍스처로 자연스러운 생기를 더하는 블러쉬', '블러셔/하이라이터', 'blush/2.jpg');
insert into face values('P14', '센슈얼 립 앤 치크', 45000, '피부 톤 위에 얇게 베어 나와 투명한 생기를 부여하는 립앤치크', '블러셔/하이라이터', 'blush/3.jpg');
insert into face values('P15', '블랙 쿠션 파운데이션 SPF34/PA++', 74000, '감도 높은 피부의 시작. 얇고 매끈한 커버로 완성하는 소프트 새틴 스킨', '파운데이션/쿠션', 'foundation/2.jpg');
insert into face values('P16', '스킨 틴트 컴피 스프레더 SPF50+/PA++++', 70000, '갓 세안한 듯 맑고 투명한 블러리 글라스 스킨을 선사하는 스킨 틴트', '파운데이션/쿠션', 'foundation/3.png');

select * from face;
commit;

create table eye (
    code varchar2(20) primary key,
    name varchar2(100) not null,
    price number not null,
    description varchar2(500),
    category varchar2(30) not null,
    filename varchar2(100) not null
);

insert into eye values('P21', '쿼드 아이 컬러', 69000, '생기 있는 컬러가 얇고 편안하게 오랜 시간 밀착되는 4구 아이 섀도', '아이섀도', 'shadow/1.jpg');
insert into eye values('P22', '브로우 디자이너 오토 펜슬', 30000, '부드러운 드로잉으로 한 올 한 올 자연스러운 브로우가 완성, 지속되는 오토 아이브로우 펜슬', '아이브로우', 'brow/1.jpg');
insert into eye values('P23', '아이 디자이너 펜슬', 32000, '누구나 얇고 쉽게, 자연스럽고 깊은 눈매를 연출해주는 강력한 멀티프루프 오토 펜슬 아이라이너', '아이라이너', 'liner/1.jpg');
insert into eye values('P24', '이지 스타일링 아이라이너', 32000, '세련된 매트 블랙 컬러로 깔끔하게, 번지지 않는 또렷한 눈매를 연출해주는 멀티프루프 리퀴드 아이라이너', '아이라이너', 'liner/2.jpg');
insert into eye values('P25', '리치 컬링 마스카라', 35000, '슬림한 땅콩 브러시로 처짐 없이 아찔한 컬링이 지속되는 컬링 마스카라', '마스카라', 'mascara/1.jpg');
insert into eye values('P26', '리치 롱래쉬 워터프루프 마스카라', 35000, '초미세 파이버로 처짐 없이 아찔하게 길어지는 롱래쉬 워터프루프 마스카라', '마스카라', 'mascara/2.jpg');

update eye set filename='mascara/2.jpg' where code='P26';

select * from eye;
commit;


create table lip (
    code varchar2(20) primary key,
    name varchar2(100) not null,
    price number not null,
    description varchar2(500),
    category varchar2(30) not null,
    filename varchar2(100) not null
);

insert into lip values('P31', '루즈 클래시', 50000, '세련된 컬러와 고급스러운 글로우가 입술에 정교하고 편안하게 밀착되는 클래식 립스틱', '립스틱', 'stick/1.jpg');
insert into lip values('P32', '센슈얼 누드 밤', 40000, '풍부한 세라마이드로 *30시간 촉촉하고 건강하게 가꿔주는 생기 립밤', '립 밤/글로스', 'gloss_balm/1.jpg');
insert into lip values('P33', '센슈얼 피팅 글로우 틴트', 45000, '빈틈없이 밀착되는 맑은 컬러감과 오랫동안 유지되는 광택감으로 완성되는 빌더블 글로우 틴트', '틴트', 'tint/1.jpg');
insert into lip values('P34', '센슈얼 파우더 매트 립스틱', 45000, '편안하고 균일하게 컬러가 밀착되는 수분을 머금은 듯 한 듀이 벨벳 립스틱', '립스틱', 'stick/2.jpg');
insert into lip values('P35', '센슈얼 누드 글로스', 40000, '트렌디한 컬러로 글램한 입술을 연출해주는 컬러 글로스', '립 밤/글로스', 'gloss_balm/2.jpg');
insert into lip values('P36', '센슈얼 파우더 매트 리퀴드', 45000, '한 번의 터치로 각질 부각 없이 풍부한 컬러로 감싸주는 편안한 소프트 벨벳 틴트', '틴트', 'tint/2.jpg');

select * from lip;
commit;

drop table face;
drop table eye;
drop table lip;

SELECT f.*, 'face' source FROM face f WHERE name LIKE '%센슈얼%'
UNION
SELECT e.*, 'eye' source FROM eye e WHERE name LIKE '%센슈얼%'
UNION
SELECT l.*, 'lip' source FROM lip l WHERE name LIKE '%센슈얼%';




create table board (
    board_seq number not null, -- 게시글 순번
    id varchar2(30) not null, -- 작성한 회원의 아이디
    name varchar2(30) not null, -- 작성한 회원의 이름
    subject varchar2(200) not null, -- 게시글 제목
    content varchar2(1000) not null, -- 게시글 내용
    hit number, -- 게시글 조회수
    ip varchar2(30), -- 게시글을 작성한 ip
    logtime date default sysdate, -- 게시글 등록일
    updatetime date default sysdate, -- 게시글 수정일
    primary key(board_seq)
);

-- 시퀀스 생성
CREATE SEQUENCE board_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE;

drop sequence board_seq;

-- 데이터 저장
insert into board values(board_seq.nextval, 'kimjava', '김자바', '문의합니다', '문의합니다!!!', 0, '123.456.789.0', sysdate, sysdate);
insert into board values(board_seq.nextval, 'juyeong', '태주영', '문의한다고요', '진짜 문의', 0, '111.222.333.0', sysdate, sysdate);

select * from board order by board_seq desc;
commit;


CREATE TABLE users (
    id VARCHAR2(50) PRIMARY KEY,
    pw VARCHAR2(100) NOT NULL,
    name VARCHAR2(50) NOT NULL,
    email VARCHAR2(100) NOT NULL UNIQUE,
    phone VARCHAR2(30) NOT NULL,
    reg_date DATE DEFAULT SYSDATE
);

INSERT INTO users (id, pw, name, email, phone) VALUES ('admin', '1234', '관리자', 'admin@example.com', '010-1234-5678');


select * from users;
commit;