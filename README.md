# **Seoul Rentalbicycle Data Analysis**
##### Data Science | SQL | Python | Project
#### Jaeyoung Jeong

<br/>

## 요약
* **서울시내 공공자전거 따릉이의 이용현황(2019.07-2020.06)** 을 다양한 관점에서 분석했습니다.
* **공공자전거 대여소 정보** 데이터와 **공공자전거 이용현황** 데이터를 이용했습니다.
* **사용기술 : SQL, AWS(RDS), Python**

<br/>

## 프로젝트 소개

### 배경
* 서울시내 공공자전거 서비스 **이용자가 계속해서 증가**하고 있습니다.
* 이용자가 늘어남에 따라 **수요와 공급의 불균형, 대여소 위치 부적절문제** 등이 발생하고 있습니다.
* 서울시민에게 보다 **안정된 서비스를 제공**하기 위해 **공공자전거 이용현황을 분석**하였습니다.

<br/>

### 프로젝트 개요
1. **프로젝트명 : Seoul Rentalbicycle Data Analysis**
2. **수행자 : 정재영**
3. **수행기간 : 2022.03**
4. **목표 : 공공자전거 이용현황 분석&시각화**
5. **사용 데이터 : 공공자전거 대여소 정보, 공공자전거 이용정보(월별)** 
6. **데이터 출처 : 서울 열린데이터 광장**

<br/>

## 세부내용

### Database
* **MySQL 데이터베이스**를 사용했습니다.
* **Amazon Web Service(AWS)의 RDS서비스**를 이용했습니다.

<br/>

### Python
* **Jupyter Notebook환경에서 SQL 쿼리문을 실행**했습니다.
* **대용량 데이터**를 데이터베이스에 insert하기 위해 **sqlalchemy를 사용**했습니다.

<br/>

### Data
* 공공자전거 대여소 정보(21.01.31 기준)
* 공공자전거 이용정보(월별)19.12
* 공공자전거 이용정보(월별)20.01-20.05
* 공공자전거 이용정보(월별)20.06
* 서울특별시 공공자전거 이용정보(월별)19.07-19.11

<br/>

### EDA
* 데이터 가공 후, **공공자전거 대여소 정보는 10개의 특징과 2152개의 데이터, 공공자전거 이용정보는 11개의 특징과 657046개의 데이터**가 생성됐습니다.
* 두 데이터를 데이터베이스에 insert후 공통된 특징을 이용해 **create view를 생성**했습니다.

<br/>

### Visualization

<br/>

🎈 **서울시내 유형별 대여소 개수** - LCD정류장 개수가 QR정류장보다 약 2배이상으로 나타났습니다.

<br/>

![image](https://user-images.githubusercontent.com/56102116/160545717-437007f4-a9c5-44b7-881f-305ceb60b08a.png)

<br/>

🎈 **지역구별 대여소 개수** - 송파구(132)가 가장 많고 강북구(53)가 가장 적었습니다.

<br/>

![image](https://user-images.githubusercontent.com/56102116/160546321-e5b3ece1-86c2-49a8-ac5a-491b5c2cbb18.png)

<br/>

🎈 **1년간 대여횟수가 가장 많은 정류소 상위10개** - 뚝섬유원지 1번출구 앞이 이용횟수가 가장 많은 것으로 나타났습니다.

<br/>

![image](https://user-images.githubusercontent.com/56102116/160546548-a0dab0e2-1b1b-4d39-80e6-0ad0ec1dcd0a.png)

<br/>

🎈 **월별 대여횟수** - 겨울(12~2)에 이용률이 가장 낮았고 봄(3-5)에 점차 늘어나며 6월달이 가장 이용횟수가 많은 것으로 나타났습니다.

<br/>

![image](https://user-images.githubusercontent.com/56102116/160547061-25339fea-72f8-4a8e-914c-550346c333b2.png)

<br/>

🎈 **지역구별 대여횟수** - 영등포구가 공공자전거 이용횟수가 가장 많은 것으로 나타났습니다.

<br/>

![image](https://user-images.githubusercontent.com/56102116/160547349-3a5f5b63-bb22-46a9-95ba-dcb9d5e76cf0.png)

<br/>

🎈 **구분코드별 대여횟수** - 정기이용권 사용자가 전체의 76.5%를 차지하고 있습니다.

<br/>

![image](https://user-images.githubusercontent.com/56102116/160547488-134d37ff-fc16-494b-b705-fd97b2cb82ae.png)

<br/>

🎈 **성별 대여횟수** - 성별미상이 전체의 절반이상을 나타내고 있습니다.

<br/>

![image](https://user-images.githubusercontent.com/56102116/160547687-dfc630bb-ba22-4653-a9f5-eaf8fecbbc30.png)

<br/>

🎈 **나이대별 대여횟수** - 20대 이용률이 가장 높고 30대가 뒤를 이었습니다.

<br/>

![image](https://user-images.githubusercontent.com/56102116/160547808-f9225af4-59cf-4e28-81ca-383e1f79ff1e.png)

<br/>

🎈 **나이대별 평균 움직인 거리** - 이동거리의 평균은 20대가 가장 높은것으로 나타났습니다. 

<br/>

![image](https://user-images.githubusercontent.com/56102116/160548033-94829790-1d3a-48db-aa2b-1854a3555cb6.png)

<br/>

🎈 **나이대별 성별 대여횟수** - 20대가 대여횟수가 가장 높고 그중에서도 성별미상 이용자가 높은 비율을 차지하고 있습니다. 80대 이용자가 60대 70대 이용자보다 높은 것으로 나타났습니다.

<br/>

![image](https://user-images.githubusercontent.com/56102116/160548274-a262b4ff-7009-4042-89c9-f5f647054541.png)

<br/>

🎈 **80대 이용자 성별없음** - 이용유형별로 세부분석 해본 결과 일일권 이용자가 대부분 인것으로 나타났습니다.

<br/>

![image](https://user-images.githubusercontent.com/56102116/160548704-496175f5-f090-4609-b0d9-abd700a596a2.png)

<br/>

🎈 **80대 성별없음** - 지역구별로 세부분석 해본 결과 모든 연령 이용자와 큰 차이가 없는 것으로 나타났습니다.

<br/>

![image](https://user-images.githubusercontent.com/56102116/160549067-d1dd1dbc-c921-4de1-bb45-d3eff88367cd.png)

<br/>

🎈 **80대 성별없음** - 월별로 세부분석 해본 결과 모든 연령 이용자와 큰 차이가 없는 것으로 나타났습니다.

<br/>

![image](https://user-images.githubusercontent.com/56102116/160549251-42e5b87f-388b-4d88-af09-d7dae383bd4f.png)

<br/>


