// 테이블

create table find_member (
    find_date varchar2(15) not null,
    find_title varchar2(60) not null,  
    find_writer varchar2(20) not null,
    find_address varchar2(60) not null,
    find_position varchar2(20) not null, 
    find_imgpath varchar2(500),
    find_content varchar2(1500) not null,
    CONSTRAINT FK_find_member FOREIGN KEY (find_writer)
    REFERENCES member(memberId)
    ON DELETE CASCADE
    );

// 시퀀스 
drop sequence SEQ_FIND_MEMBER;


CREATE SEQUENCE SEQ_FIND_MEMBER
start with 1
increment by 1
;

// 초기 데이터
insert into find_member values (1, '2021-08-16', '첫번째 게시글', 'user01', '서울시 강남구', '기획', null, '첫번째 게시글');
insert into find_member values (2, '2021-08-16', '두번째 게시글', 'user02', '서울시 강남구', '기획', null, '두번째 게시글');
insert into find_member values (3, '2021-08-16', '세번째 게시글', 'user03', '서울시 강남구', '기획', null, '세번째 게시글');
insert into find_member values (4, '2021-08-16', '네번째 게시글', 'user04', '서울시 강남구', '기획', null, '네번째 게시글');
insert into find_member values (5, '2021-08-16', '다섯번째 게시글', 'user05', '서울시 강남구', '기획', null, '다섯번째 게시글');

select * from find_member;

// 커밋
commit;