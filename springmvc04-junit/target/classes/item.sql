drop table spring_item;
drop sequence spring_item_seq;
create table spring_item(
	item_no number primary key,
	name varchar2(100) not null,
	maker varchar2(100) not null,
	price number not null
)
create sequence spring_item_seq;
insert into spring_item values(spring_item_seq.nextval,'참이슬','진로',100);
insert into spring_item values(spring_item_seq.nextval,'처음처럼','롯데',200);
commit

select item_no,name,maker,price from spring_item
where item_no=1;

-- reg_date 컬럼을 추가
ALTER TABLE spring_item ADD reg_date DATE;

UPDATE spri ng_item SET reg_date=sysdate;

SELECT * FROM spring_item;

SELECT item_no,name,maker,price, to_char(reg_date,'yyyy-MM-DD HH24:MI:SS') as regDate FROM spring_item;


--reg_date 컬럼의 제약조건을 추가
ALTER TABLE spring_item MODIFY reg_date NOT NULL;
COMMIT
