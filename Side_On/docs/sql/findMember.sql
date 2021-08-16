// ���̺�

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

// ������ 
drop sequence SEQ_FIND_MEMBER;


CREATE SEQUENCE SEQ_FIND_MEMBER
start with 1
increment by 1
;

// �ʱ� ������
insert into find_member values (1, '2021-08-16', 'ù��° �Խñ�', 'user01', '����� ������', '��ȹ', null, 'ù��° �Խñ�');
insert into find_member values (2, '2021-08-16', '�ι�° �Խñ�', 'user02', '����� ������', '��ȹ', null, '�ι�° �Խñ�');
insert into find_member values (3, '2021-08-16', '����° �Խñ�', 'user03', '����� ������', '��ȹ', null, '����° �Խñ�');
insert into find_member values (4, '2021-08-16', '�׹�° �Խñ�', 'user04', '����� ������', '��ȹ', null, '�׹�° �Խñ�');
insert into find_member values (5, '2021-08-16', '�ټ���° �Խñ�', 'user05', '����� ������', '��ȹ', null, '�ټ���° �Խñ�');

select * from find_member;

// Ŀ��
commit;