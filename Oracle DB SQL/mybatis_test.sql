drop table tbl_member;
drop sequence seq_member;

create table tbl_member (
    member_no number primary key,
    member_id varchar2(20) unique not null,
    member_pw varchar2(30) not null,
    member_name varchar2(30) not null,
    member_email varchar2(100) unique not null,
    member_phone char(13) not null,
    member_addr varchar2(200) not null,
    member_level number default 3 not null,
    enroll_date date default sysdate not null
);

create sequence seq_member;

insert into tbl_member values
(
    seq_member.nextval, 
    'admin',
    '7777', 
    '관리자', 
    'test@naver.com', 
    '010-1234-1234', 
    '서울', 
    1, 
    sysdate
);

create or replace procedure procedure_ins_member as
begin
    for i in 1..75 loop
        insert into tbl_member values (
            seq_member.nextval, 
            'user' || i, 
            '1234', 
            '유저' || i, 
            'test' || i || '@naver.com', 
            '010-1234-5678', 
            'addr' || i, 
            2, 
            sysdate
        );
    end loop;
    commit;
end;
/

begin 
    procedure_ins_member;
end;
/

select * from tbl_member;

insert into tbl_member values ( seq_member.nextval, 'user77', '1234', '유저77', 'test77@naver.com', '010-1234-1234', '서울 강감구 삼성동', 2, sysdate);
insert into tbl_member values ( seq_member.nextval, 'user78', '1234', '유저78', 'test78@naver.com', '010-1234-1234', '경기 가평군', 2, sysdate);
insert into tbl_member values ( seq_member.nextval, 'user79', '1234', '유저79', 'test79@naver.com', '010-1234-1234', '부산광역시 금정구', 2, sysdate);
insert into tbl_member values ( seq_member.nextval, 'user80', '1234', '유저80', 'test80@naver.com', '010-1234-1234', '전라남도 목포시', 2, sysdate);
insert into tbl_member values ( seq_member.nextval, 'user81', '1234', '유저81', 'test81@naver.com', '010-1234-1234', '서울 강서구 화곡동', 2, sysdate);
insert into tbl_member values ( seq_member.nextval, 'user82', '1234', '유저82', 'test82@naver.com', '010-1234-1234', '부산광역시 해운대구', 2, sysdate);
insert into tbl_member values ( seq_member.nextval, 'user83', '1234', '유저83', 'test83@naver.com', '010-1234-1234', '경기 성남시 분당구', 2, sysdate);

commit;

select * 
    from tbl_member
where to_char(enroll_date, 'yyyymmdd') = to_char(sysdate, 'yyyymmdd');

-- 서울, 경기, 부산, 목포

-- 서울 체크하고서 조회
select *
    from tbl_member
    where member_addr like '%서울%';

-- 서울, 부산 체크하고서 조회
select * 
    from tbl_member
    where member_addr like '%서울%'
    or member_addr like '%부산%';
    
-- 전부 체크하고서 조회 : 전부 or 로 연결