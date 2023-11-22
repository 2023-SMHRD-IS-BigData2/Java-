create table MEMBER(
  ID VARCHAR2(50) PRIMARY KEY,
  PW VARCHAR2(50),
  NAME VARCHAR2(50),
  TEL VARCHAR2(50),
  CAR_NUM VARCHAR2(50),
  CAR_TYPE VARCHAR2(50)
);

DROP TABLE MEMBER;

SELECT * FROM MEMBER;

insert into MEMBER values('test','test','test','test','test','test');

SELECT * FROM PARKING;

insert into PARKING values(num_parkings.nextval,'a','a','a','a','a','a'
 									,'a','a',NULL,NULL,NULL);
 									
update PARKING set P_YN = '주차가능', P_COUNT = 50, P_POS = 10 where P_PLACE = '서영주차장';