-- 데이터베이스 생성
create database seoul_rentalbicycle default character set utf8mb4;


-- 각 테이블 생성
CREATE TABLE rentalshop
(
    shopnumber int,
    shopname varchar(64),
    gu varchar(8),
    detailaddress varchar(64),
    latitude float,
    longtitude float,
    builddate date,
    lcd int,
    qr int,
    operationtype varchar(4)
);

CREATE TABLE rentalbicycle
(
    daten date,
    shopnumber int,
    shopname varchar(50),
    divisioncode varchar(10),
    sex char,
    agecode char(6),
    counting int,
    exercise float,
    carbon float,
    distance float,
    exercisetime int

);


-- python으로 데이터 insert
-- sqlalchemy 모듈 이용


-- 테이블 조회
SELECT * FROM rentalshop limit 10;

SELECT * FROM rentalbicycle limit 10;


-- 테이블 행갯수 조회
SELECT count(*) FROM rentalshop;


-- 두 테이블 조인시킨 create view 생성
create view mergeview as       
select YEAR(rentalbicycle.daten) as year, MONTH(rentalbicycle.daten) as month, 
rentalbicycle.shopnumber, rentalshop.shopname, rentalshop.gu, 
rentalshop.operationtype, rentalbicycle.divisioncode, 
rentalbicycle.sex, rentalbicycle.agecode, rentalbicycle.counting, 
rentalbicycle.exercise, rentalbicycle.carbon, rentalbicycle.distance, 
rentalbicycle.exercisetime 
from rentalbicycle, rentalshop
where rentalbicycle.shopnumber = rentalshop.shopnumber;


-- create view 테이블이 잘 생성됐는지 확인
SHOW tables;

SELECT * from mergeview limit 10;

select count(*) from mergeview;


-- operationtype별 정거장개수(shopnumber로 카운팅)
create view shoptype as 
select distinct operationtype, shopnumber 
from mergeview

select operationtype, count(*) as cnt 
from shoptype 
group by operationtype


-- 구별 정류장 개수 (shopnumber로 카운팅)
create view gushop as 
select distinct gu, shopnumber 
from mergeview

select gu, count(*) as cnt 
from gushop 
group by gu


-- 1년간 대여횟수가 가장 많은 정류소 상위 10개
select shopname, sum(counting) as cnt 
from mergeview 
group by shopname 
order by cnt desc limit 10

-- 월별 대여횟수(counting 으로 집계) (바 차트&선 그래프)
select month, sum(counting) as cnt 
from mergeview 
group by month


-- 지역구별 대여횟수
select gu, sum(counting) as cnt
from mergeview 
group by gu 
order by cnt desc


-- 구분코드별 대여횟수 (파이차트)
select divisioncode, sum(counting) as cnt 
from mergeview 
group by divisioncode 
order by cnt desc limit 4


-- 성별 대여횟수 (파이 차트)
select sex, sum(counting) as cnt 
from mergeview 
group by sex


-- 나이대별 대여횟수
select agecode, sum(counting) as cnt 
from mergeview 
group by agecode 
order by agecode


-- 나이대별 평균 움직인 거리
select agecode, avg(distance) 
from mergeview 
group by agecode 
order by avg(distance) desc


-- 나이대별 성별 대여횟수 (counting으로 집계) (hue 사용)
select agecode, sex, sum(counting) as cnt 
from mergeview 
group by agecode, sex
order by agecode


-- 80대 성별없음 상세 조회(구분 코드별 분석)
select divisioncode, sum(counting) as cnt 
from mergeview 
where (agecode='AGE_008' and sex='N') 
group by divisioncode


-- 80대 성별없음 상세 조회(지역구별 분석)
select gu, sum(counting) as cnt 
from mergeview 
where (agecode='AGE_008' and sex='N') 
group by gu 
order by cnt desc


-- 80대 성별없음 상세 조회(월별 분석)
select month, sum(counting) as cnt 
from mergeview 
where (agecode='AGE_008' and sex='N') 
group by month 
order by cnt desc





