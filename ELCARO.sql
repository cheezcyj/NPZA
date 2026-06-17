--------------------------------------------------------
--  파일이 생성됨 - 월요일-7월-03-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ACCOUNT_TB
--------------------------------------------------------

  CREATE TABLE "ELCARO"."ACCOUNT_TB" 
   (	"ID" VARCHAR2(20 BYTE), 
	"PASSWORD" VARCHAR2(500 BYTE), 
	"NICKNAME" VARCHAR2(30 CHAR), 
	"ANI" NUMBER, 
	"MBTI" NUMBER, 
	"GENDER" CHAR(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ELCARO"."ACCOUNT_TB"."ID" IS '회원 아이디';
   COMMENT ON COLUMN "ELCARO"."ACCOUNT_TB"."PASSWORD" IS '비밀번호';
   COMMENT ON COLUMN "ELCARO"."ACCOUNT_TB"."NICKNAME" IS '닉네임 ';
   COMMENT ON COLUMN "ELCARO"."ACCOUNT_TB"."ANI" IS '띠';
   COMMENT ON COLUMN "ELCARO"."ACCOUNT_TB"."MBTI" IS 'mbti';
   COMMENT ON COLUMN "ELCARO"."ACCOUNT_TB"."GENDER" IS '성별';
   COMMENT ON TABLE "ELCARO"."ACCOUNT_TB"  IS '회원 테이블';
--------------------------------------------------------
--  DDL for Table ANI_TB
--------------------------------------------------------

  CREATE TABLE "ELCARO"."ANI_TB" 
   (	"ANI" NUMBER, 
	"ANI_NAME" VARCHAR2(10 BYTE), 
	"IMG_SRC" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ELCARO"."ANI_TB"."ANI" IS '띠';
   COMMENT ON COLUMN "ELCARO"."ANI_TB"."ANI_NAME" IS '띠이름';
   COMMENT ON COLUMN "ELCARO"."ANI_TB"."IMG_SRC" IS '이미지 경로';
   COMMENT ON TABLE "ELCARO"."ANI_TB"  IS '띠테이블';
--------------------------------------------------------
--  DDL for Table BOARD
--------------------------------------------------------

  CREATE TABLE "ELCARO"."BOARD" 
   (	"SEQ" NUMBER(8,0), 
	"TITLE" VARCHAR2(200 BYTE), 
	"CONTENTS" CLOB, 
	"DIV" VARCHAR2(2 BYTE), 
	"READ_CNT" NUMBER(8,0) DEFAULT 0, 
	"REG_DT" DATE DEFAULT SYSDATE, 
	"REG_ID" VARCHAR2(20 BYTE), 
	"MOD_DT" DATE DEFAULT SYSDATE, 
	"MOD_ID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("CONTENTS") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

   COMMENT ON COLUMN "ELCARO"."BOARD"."SEQ" IS '순번';
   COMMENT ON COLUMN "ELCARO"."BOARD"."TITLE" IS '제목';
   COMMENT ON COLUMN "ELCARO"."BOARD"."CONTENTS" IS '내용';
   COMMENT ON COLUMN "ELCARO"."BOARD"."DIV" IS '구분';
   COMMENT ON COLUMN "ELCARO"."BOARD"."READ_CNT" IS '조회수';
   COMMENT ON COLUMN "ELCARO"."BOARD"."REG_DT" IS '등록일';
   COMMENT ON COLUMN "ELCARO"."BOARD"."REG_ID" IS '등록자';
   COMMENT ON COLUMN "ELCARO"."BOARD"."MOD_DT" IS '수정일';
   COMMENT ON COLUMN "ELCARO"."BOARD"."MOD_ID" IS '수정자';
   COMMENT ON TABLE "ELCARO"."BOARD"  IS '커뮤니티';
--------------------------------------------------------
--  DDL for Table LUCK_TEXT_TB
--------------------------------------------------------

  CREATE TABLE "ELCARO"."LUCK_TEXT_TB" 
   (	"SEQ" NUMBER, 
	"LUCK_TY" NUMBER, 
	"LUCK" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ELCARO"."LUCK_TEXT_TB"."SEQ" IS '지문순번';
   COMMENT ON COLUMN "ELCARO"."LUCK_TEXT_TB"."LUCK_TY" IS '운세 종류 식별자';
   COMMENT ON COLUMN "ELCARO"."LUCK_TEXT_TB"."LUCK" IS '운세지문';
   COMMENT ON TABLE "ELCARO"."LUCK_TEXT_TB"  IS '운세 테이블';
--------------------------------------------------------
--  DDL for Table MBTI_TB
--------------------------------------------------------

  CREATE TABLE "ELCARO"."MBTI_TB" 
   (	"MBTI" NUMBER, 
	"MBTI_TYPE" VARCHAR2(4 BYTE), 
	"IMG_SRC" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ELCARO"."MBTI_TB"."MBTI" IS 'mbti';
   COMMENT ON COLUMN "ELCARO"."MBTI_TB"."MBTI_TYPE" IS '성격';
   COMMENT ON COLUMN "ELCARO"."MBTI_TB"."IMG_SRC" IS '이미지 경로';
   COMMENT ON TABLE "ELCARO"."MBTI_TB"  IS 'mbti테이블';
--------------------------------------------------------
--  DDL for Table RESULT_TB
--------------------------------------------------------

  CREATE TABLE "ELCARO"."RESULT_TB" 
   (	"ID" VARCHAR2(20 BYTE), 
	"NICK" VARCHAR2(30 BYTE), 
	"MBTI_SRC" VARCHAR2(200 BYTE), 
	"ANI_SRC" VARCHAR2(200 BYTE), 
	"LUCK10" VARCHAR2(4000 BYTE), 
	"LUCK20" VARCHAR2(4000 BYTE), 
	"LUCK30" VARCHAR2(4000 BYTE), 
	"LUCK40" VARCHAR2(4000 BYTE), 
	"LUCK50" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ELCARO"."RESULT_TB"."ID" IS '회원 아이디';
   COMMENT ON COLUMN "ELCARO"."RESULT_TB"."NICK" IS '닉네임';
   COMMENT ON COLUMN "ELCARO"."RESULT_TB"."MBTI_SRC" IS 'mbti이미지 경로';
   COMMENT ON COLUMN "ELCARO"."RESULT_TB"."ANI_SRC" IS '동물 이미지경로';
   COMMENT ON COLUMN "ELCARO"."RESULT_TB"."LUCK10" IS '운세10번 지문';
   COMMENT ON COLUMN "ELCARO"."RESULT_TB"."LUCK20" IS '운세20번지문';
   COMMENT ON COLUMN "ELCARO"."RESULT_TB"."LUCK30" IS '운세 30번지문 ';
   COMMENT ON COLUMN "ELCARO"."RESULT_TB"."LUCK40" IS '운세 40번지문';
   COMMENT ON COLUMN "ELCARO"."RESULT_TB"."LUCK50" IS '운세 50번지문';
   COMMENT ON TABLE "ELCARO"."RESULT_TB"  IS '결과저장테이블';
--------------------------------------------------------
--  DDL for Table URL_TB
--------------------------------------------------------

  CREATE TABLE "ELCARO"."URL_TB" 
   (	"SEQ" NUMBER, 
	"RESULT_DATE" DATE, 
	"URL" VARCHAR2(1000 BYTE), 
	"ID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ELCARO"."URL_TB"."SEQ" IS '시퀀스';
   COMMENT ON COLUMN "ELCARO"."URL_TB"."RESULT_DATE" IS '결과날짜';
   COMMENT ON COLUMN "ELCARO"."URL_TB"."URL" IS '결과주소';
   COMMENT ON COLUMN "ELCARO"."URL_TB"."ID" IS '회원 아이디';
   COMMENT ON TABLE "ELCARO"."URL_TB"  IS 'url 테이블';
REM INSERTING into ELCARO.ACCOUNT_TB
SET DEFINE OFF;
Insert into ELCARO.ACCOUNT_TB (ID,PASSWORD,NICKNAME,ANI,MBTI,GENDER) values ('sh','gptjd123!','으라차차 1조',5,16,'M');
Insert into ELCARO.ACCOUNT_TB (ID,PASSWORD,NICKNAME,ANI,MBTI,GENDER) values ('ccjj1002','123123','ccjj',1,1,'M');
Insert into ELCARO.ACCOUNT_TB (ID,PASSWORD,NICKNAME,ANI,MBTI,GENDER) values ('mj','mj','스파이더맨',2,5,'F');
Insert into ELCARO.ACCOUNT_TB (ID,PASSWORD,NICKNAME,ANI,MBTI,GENDER) values ('space','qwe123!@#','스페이스x',5,5,'M');
Insert into ELCARO.ACCOUNT_TB (ID,PASSWORD,NICKNAME,ANI,MBTI,GENDER) values ('abpd','asd123!@#','힘들어',4,14,'F');
Insert into ELCARO.ACCOUNT_TB (ID,PASSWORD,NICKNAME,ANI,MBTI,GENDER) values ('iphone','zxc123!@#','스티브잡스근영',4,14,'M');
Insert into ELCARO.ACCOUNT_TB (ID,PASSWORD,NICKNAME,ANI,MBTI,GENDER) values ('spider','spiderman67~','우먼',3,12,'F');
Insert into ELCARO.ACCOUNT_TB (ID,PASSWORD,NICKNAME,ANI,MBTI,GENDER) values ('opsa1','123123123Je@','김지원거짓말쟁이',3,8,'M');
Insert into ELCARO.ACCOUNT_TB (ID,PASSWORD,NICKNAME,ANI,MBTI,GENDER) values ('test','123123123Je@','테스트',10,8,'M');
Insert into ELCARO.ACCOUNT_TB (ID,PASSWORD,NICKNAME,ANI,MBTI,GENDER) values ('asd','123123123Je@','qwe',9,11,'M');
Insert into ELCARO.ACCOUNT_TB (ID,PASSWORD,NICKNAME,ANI,MBTI,GENDER) values ('opsa','123123123Je@','김지원거짓말쟁이',3,8,'M');
Insert into ELCARO.ACCOUNT_TB (ID,PASSWORD,NICKNAME,ANI,MBTI,GENDER) values ('turquois1218','xjzltjr12$','jinkwine',5,9,'M');
REM INSERTING into ELCARO.ANI_TB
SET DEFINE OFF;
Insert into ELCARO.ANI_TB (ANI,ANI_NAME,IMG_SRC) values (1,'mouse','../resources/images/ani/mouse.png');
Insert into ELCARO.ANI_TB (ANI,ANI_NAME,IMG_SRC) values (2,'cow','../resources/images/ani/cow.png');
Insert into ELCARO.ANI_TB (ANI,ANI_NAME,IMG_SRC) values (3,'tiger','../resources/images/ani/tiger.png');
Insert into ELCARO.ANI_TB (ANI,ANI_NAME,IMG_SRC) values (4,'rabbit','../resources/images/ani/rabbit.png');
Insert into ELCARO.ANI_TB (ANI,ANI_NAME,IMG_SRC) values (5,'dragon','../resources/images/ani/dragon.png');
Insert into ELCARO.ANI_TB (ANI,ANI_NAME,IMG_SRC) values (6,'snake','../resources/images/ani/snake.png');
Insert into ELCARO.ANI_TB (ANI,ANI_NAME,IMG_SRC) values (7,'horse','../resources/images/ani/horse.png');
Insert into ELCARO.ANI_TB (ANI,ANI_NAME,IMG_SRC) values (8,'sheep','../resources/images/ani/sheep.png');
Insert into ELCARO.ANI_TB (ANI,ANI_NAME,IMG_SRC) values (9,'monkey','../resources/images/ani/monkey.png');
Insert into ELCARO.ANI_TB (ANI,ANI_NAME,IMG_SRC) values (10,'rooster','../resources/images/ani/rooster.png');
Insert into ELCARO.ANI_TB (ANI,ANI_NAME,IMG_SRC) values (11,'dog','../resources/images/ani/dog.png');
Insert into ELCARO.ANI_TB (ANI,ANI_NAME,IMG_SRC) values (12,'pig','../resources/images/ani/pig.png');
REM INSERTING into ELCARO.BOARD
SET DEFINE OFF;
Insert into ELCARO.BOARD (SEQ,TITLE,DIV,READ_CNT,REG_DT,REG_ID,MOD_DT,MOD_ID) values (11,'제목','10',0,to_date('23/06/28','RR/MM/DD'),'admin',to_date('23/06/28','RR/MM/DD'),'admin');
Insert into ELCARO.BOARD (SEQ,TITLE,DIV,READ_CNT,REG_DT,REG_ID,MOD_DT,MOD_ID) values (12,'제목','10',0,to_date('23/06/28','RR/MM/DD'),'admin',to_date('23/06/28','RR/MM/DD'),'admin');
Insert into ELCARO.BOARD (SEQ,TITLE,DIV,READ_CNT,REG_DT,REG_ID,MOD_DT,MOD_ID) values (13,'제목','20',0,to_date('23/06/28','RR/MM/DD'),'admin',to_date('23/06/28','RR/MM/DD'),'admin');
Insert into ELCARO.BOARD (SEQ,TITLE,DIV,READ_CNT,REG_DT,REG_ID,MOD_DT,MOD_ID) values (14,'제목','10',0,to_date('23/06/28','RR/MM/DD'),'admin',to_date('23/06/28','RR/MM/DD'),'admin');
Insert into ELCARO.BOARD (SEQ,TITLE,DIV,READ_CNT,REG_DT,REG_ID,MOD_DT,MOD_ID) values (15,'제목','10',0,to_date('23/06/28','RR/MM/DD'),'admin',to_date('23/06/28','RR/MM/DD'),'admin');
REM INSERTING into ELCARO.LUCK_TEXT_TB
SET DEFINE OFF;
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (49,50,'분명 “사면 대박이다,  난 두 배 벌었어, 너도 해봐 어렵지 않아.” 남들 다 하는 투자 시장에 뛰어든지 오래. 
하지만 내가 사는 것마다 떨어지고 내가 팔면 올라가고..아직 그만두지 마세요!! 
투자는 운!! 실력도 운!! 그 동안 운이 너무 없었던 거에요. 하지만 오늘은 다릅니다!!
사는 종목마다 상승할 거에요. 당장 내일 떨어진다고 해도 다음 주면 따상!! 
주식 뿐만 아니라 부동산이나 모든 투자에서도 운빨이 최고에요!! 지금 하시는 일을 그만두고 투자에 매진하세요!!');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (50,50,'적극적으로 투자하면 안정적인 수익을 예상할 수 있습니다. 다만, 투자 전 충분한 조사와 분석은 필요합니다.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (51,50,'어제보다 나은 오늘입니다. 아마 긍정적인 결과를 기대해도 좋을 거에요. 기회는 잡고 걱정은 버리세요. 
어제까지의 손해가 오늘의 이익이 될 수도 있습니다. 오늘은 보수적인 자세보다 조금 더 진취적이고 공격적으로!! 
하지만 아시죠? 투자에서 과한 욕심은 금물!! 탐욕과 충동에 흔들리지 않는 현명한 투자를 하시면 됩니다. 
나 자신을 믿고 성공적인 투자를 하시기 바랍니다.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (52,50,'자신이 관심 있는 분야에 투자하는 것이 좋습니다. 그 분야에 대한 지식과 경험이 있기 때문에 투자에 대한 이해도가 높아지고, 높은 수익을 예상할 수 있습니다.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (53,50,'오늘은 누구의 말도 듣지 말고 나 자신의 판단으로만 투자하는 걸 추천드려요. 
누군가 오늘 나에게 투자를 권유한다면?? 
그 사람과 사이가 멀어질지도 모르니 신중하게 선택하시길 바랍니다…!');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (54,50,'돌다리는 두드려보고 건너보세요~ 떡상하는 주식 또는 기업을 보고있는 당신! 진정해보세요 바로 투자하시지 마시고 상황을 보고 투자를 해보는게 좋을거 같습니다.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (55,50,'오늘 투자는 관망하는 걸 추천드립니다. 
주식 or 코인이 상승하는 걸 보고 ‘나도 들어갈까?’라는 생각이 들 수 있겠지만 지나간 버스는 다시 돌아오지 않는 법이라고 하죠 ^^ 
오늘은 주식 or 코인은 생각하지 말고 복권 한 장 구입하는 걸로 만족해 보는 건 어떨까요? 
더 큰 행운이 찾아올지 모르잖아요!!');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (56,50,'오늘은 뭔가 좀 될지도? 오늘은 투자하기 살짝 애매한 날이지만 뭔가 투자 종목이 상승할것 같은 날입니다. 주식차트를 잘확인해주세요. 주식이 떡상한다고 바로 투자하시면 손해를 볼것입니다.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (57,50,'고액의 투자는 삼가하는 것이 현명합니다. 이번 달은 주식투자에 특히 위험한 
달중 하나입니다. 다른 위험한 달로는 10월, 7월, 1월, 9월, 4월, 11월, 5월, 3월, 
6월, 12월, 8월, 그리고 2월이 있습니다. 
예금은 연수익률 3%에 원금을 보장하는 좋은 종목임을 기억하세요. ');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (58,50,'주위에서 돈을 벌었다는 소식에 솔깃해 투자한 당신!! 하지만 남들은 이미 투자 
시장에서 돈을 벌고 잃으면서 경험을 얻었지만 경험이 없는 당신 아무것도 모르고 
투자했다가 올라가는 거 같았지만 계속 떨어져서 다시 고점을 찍기를 기다리며 
긍정 회로 돌리지만 그럴 일은 없습니다!!! 지금이라도 회수하고 날린 돈은 경험이다 
생각하며 열심히 일해서 먹고 사세요.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (59,50,'오늘 당신의 색은 파란색입니다.  자산운용이나 투자운이 좋지 않아요.? 
올라갈때가 있으면 내려갈때가 있고 내려갈때 있으면 그때 올라가는 겁니다.
지금은 자금을 움직이지 않는 것이 현명합니다. 당분간 핸드폰 보지 마시고 
속세를 벗어나세요. 화설갈끄니까~');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (60,50,'투자로 대박 나서 부러운 사람을 보던 당신!! 아무것도 모르고 부푼 큰 꿈에 설레며 
투자를 했지만 현실은 꿈처럼 되는 게 1도 없습니다...!! 그래도 존버하면 성공할 거야
할 수 있어 생각하지만 허튼 생각하지 말고 당장 투자 그만두세요 그러다 
한 달 생활비도 없어 길바닥에 주저앉아 한순간에 모든 걸 잃게 되며 남들 입에
 조롱거리 당사자가 될 것 입니다...ㅠㅠ');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (25,30,'어젯밤 상사의 집안에 좋은 일이 있었습니다. 오늘은 주도적으로 아이디어를 내면 먹힐 수 있어요! 미뤄둔 업무 보고가 있었다면 오늘 시도해보세요! 손쉽게 해결할 수 있어 기분이 좋을 것입니다. 
');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (26,30,'오늘은 그 동안 바빠서 미뤄뒀던 쇼핑몰을 둘러보세요. 자리에서 눈치 보느라 구매하지 못하고 찜만 해뒀던 물건도 질러보고 

SNS에서 헤어졌던 연인의 소식도 알아볼 수 있는 기회가 있을 거에요. 무슨 일이 있는지 상사는 기분이 너무 좋아서 

당신이 어떤 실수를 해도 넓은 아량으로 이해해주고 귀찮은 잔업도 본인이 도맡아서 할 것입니다. 아마도요. 

오늘만큼은 시간 되자마자 컴퓨터를 종료하고 사무실을 뛰쳐나가보세요.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (27,30,'평탄한 하루가 될 것입니다. 오늘은 상사에게 이름 불릴 일이 없습니다. 또한 제안한 기획이 채택될 수 있습니다. 무리라고 느껴지는 안건을 맡아도 괜찮습니다. ');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (28,30,'오늘은 상사와의 죽이 잘 맞을거에요. 내가 하는 말에도 귀 기울여주고 업무 지시도 친절히 잘 해주고 

대화를 하더라도 빵빵 터지며 즐거운 대화가 이어지며 농담도 주고 받을 거에요. 

하지만 이럴 때 일수록 상사는 상사라는 생각을 상기시키며 경계를 지키는 것이 중요해요. 

너무 기분이 좋아서 실수하지 않도록 조심하세요. 오늘의 아군이 내일의 적이 될 수도 있습니다. 회사는 정글이니까요.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (29,30,'오늘은 상사와 의사소통이 잘 되어 불만이 없는 날이에요. 평소와 달리 농담도 주고 받고 일도 무난하게 처리하고 있는 하루
하지만 이런 경우는 늘 오지 않아요.
상사의 기분이 좋아 죽이 잘 맞는 거지 기분이 나빴다면 저를 무시하려고 했을 수도 있어요ㅠㅠ
그러니 오늘 같이 기분이 좋아 보이면 저 또한 실수하지 않게 조심하여 하루를 좋게 마무리 해야합니다!!');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (30,30,'  사장님 기분이 안좋은거같기도? 오늘은 사장님 기분이 안좋은거 같습니다. 언제 오셔서 트집잡고 뭐라고 할 수 있으니 오늘은 조금더 조심 하셔야합니다.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (31,30,'오늘은 상사와 호흡이 평소보다 제대로 맞지 않아 다툼이 있는 날이에요. 평소에는 농담도 주고 받았지만 오늘은 그런 날이 아닌 거 같아 보이네요.
이럴 때일수록 조금 더 상사분에게 맞춰주세요.
그러다 보면 상사분도 본인으로 인해 기분이 나쁜게 아니었어도 기분이 좋아지기 시작할 거예요.
안 맞춰주면 오늘 하루는 힘들어질 거고 맞춰주면 오늘의 당신은 고생하지만 그래도 이게 계급 사회라는게 웃픈 현실이네요..!!');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (19,20,'오늘 같은 날은 사랑하는 애인과 데이트를 하면 많은 걸 하려 하지 하지 마세요.
이상하게 평소의 데이트와 다르지는 않지만 내 애인의 기분이 좋았다 싫었다 기복이 있을 수도 있어요. 츤데레 같아 보이지만 오늘 같은 날은 특별하게 시간을 함께 보내는 것보다는 사랑하는 애인의 기분은 맞춰주는 하루를 보내는게 어떨까요??');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (20,20,'좋은일이 생길지 나쁜일이 생길지 모르겠는걸? 데이트를 하면 좋은일 나쁜일이 일어날지도 모르지만 나쁜일이 좋은일로 커버가 되느 그런날입니다.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (4,10,'고백에 대한 운이 높은 날입니다. 자신의 감정을 담담하게 표현하면서도, 상대방의 감정을 존중하는 태도를 유지해보세요. 두 사람 모두에게 좋은 결과가 있을 것입니다.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (32,30,'선배님이 어제 좋은일 있으셨나? 상사의 기분을 보면 조금 좋은거같습니다. 실수는 어느정도 받아줄정도이지만 너무 큰실수나 자주하면 기분이 엄청 안좋아지실수 있느니 조심하셔야 합니다.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (33,30,'상사와의 소통이 어려울 수 있는 시기입니다. 하지만, 자신의 의견을 명확하게 표현하면서도, 적극적으로 상사와의 대화를 시도해보세요.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (34,30,'오늘은 상사의 기분이 좋지 않으니, 일을 꼼꼼히 확인하여 웬만하면 실수하지 않는 걸 추천드립니다. 

상사의 심기를 건드려서 좋을 건 없겠지요?? 

만약 오늘 실수한다면 상사가 한 달 동안 우려먹을지도 몰라요..');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (35,30,'오늘은 상사와의 갈등이 예상됩니다. 상사의 요구사항을 충족시키는 것이 어려울 수 있으므로, 주의해야 합니다.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (36,30,'오늘 직장 상사와는 거리를 많이 두는 게 어떨까요…?? 

오늘 상사를 예측하기 정말 어려운 날일 거 같아요..

상사에게 결재 맡을 게 있다면 다음날 가는 걸 추천드릴게요. 

혹여나… 오늘 당장 결재 맡아야 하는 게 있다면 여러 번 검토 후에 결재 맡길 바랍니다.

이왕이면 음료도 한잔 챙겨서 가는 센스! 

결재 서류 검토 안 하고 갔다가 잘 못 되면 불똥이 튈 수 있으니 주의하길 바랍니다!! ㅠㅠ');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (37,40,'안녕히 계세요 여러분~ 저는 이 세상의 굴레와 속박을 벗어던지고 제 행복을 찾아 떠납니다. 여러분도 행복하세요~ 
가영이의 대사 한 마디를 남기고 회사를 나와보세요. 오늘은 퇴사하기 좋은 날!! 
회사 문을 박차고 나오는 순간 놀라운 일들이 기다리고 있을 겁니다. 새로운 문을 열고 싶다면 지금이 최고의 타이밍입니다. 
새로운 모험과 성장을 위한 기회들이 기다리고 스스로의 잠재력을 발휘할 수 있는 기회가 될 거에요!!');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (38,40,'오늘은 무슨짓을해도 칭찬각!?이 운세를 보고 있는 당신! 오늘 회사에서 무슨짓을해도 
용서가 되는날 하지만 너무큰 실수는 큰일이 나니 상황을 보시는게 좋을거 같습니다.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (39,40,'지금 워라밸의 균형이 잘 맞지 않는다면 과감하세 퇴사를 생각해봐도 좋아요. 끝은 새로운 시작. 
스트레스만 주고 나를 옭아매는 직장보다는 조금 더 여유로운 일상을 즐길 수 있는 나 자신을 상상해 보세요. 
하지만 언제나 그렇듯 큰 결정은 신중히!! 모험은 재미있지만 지나치게 헤매거나 어리둥절 할 수 있으니 늘 조심해야합니다. 
당신의 능력과 잠재력을 믿고 새로운 도전을 준비해보세요!!');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (40,40,'회사에서 좋은일이?? 오늘은 일을하면서 행복할일이 일어날 것 입니다. 그러니 오늘은 
회사에서 기죽지 마시고 힘찬 하루를 보내면 될것 같습니다.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (41,40,'오늘 아주 평화로운 하루를 보내겠군요?? 

‘항상 이렇게 평화롭다면 퇴사하고 싶지 않을 텐데...''라고 입으로 말하고 싶은 당신!

마음속으로만 생각하는 걸 추천드립니다!

입으로 말하는 순간 평화롭지 않은 하루를 보낼지도 몰라요!! 

그러니 오늘은 아무 말 말고 조용~히 일만 하는 걸 추천드립니다!!');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (42,40,'퇴사 여부는 가족, 친구, 상사, 동료의 조언을 듣고 자신의 상황을 잘 파악한 후에 결정하는 것이 좋습니다. 주변인들의 반응이 좋지 않을 수 있습니다.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (43,40,'오늘은 뭔가 잘 안 풀리는 날!
일도 잘 안 풀리고 회사 사람들과의 마찰로 인해서 사직서를 당장이라도 꺼내 던지고 싶겠지만… 오늘은 아닌듯합니다!! 
커피 한잔하며 잠시 마음을 정리해 보고, 진정된 마음으로 다시 일에 임해 보는 건 어떨까요?
우리 아직… 대출 많이 남았잖아요?? ㅠㅠ');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (44,40,' 퇴사를 하더라도, 새로운 시작으로 자신의 역량을 높일 수 있는 활동에 집중하면, 미래에 더 큰 성과를 이룰 수 있는 기회를 만들어낼 수 있습니다.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (45,40,'회사나 학교에서 큰 활약을 할 수 있습니다. 퇴사하기엔 너무 아깝지 않으신가요? 망설이지 말고 당신의 능력을 보여줍시다. 더 좋은 회사로 자연스러운 이직이 가능할 수 있습니다.?이번 위기만 넘기면 외국계 회사를 고려해 보는 것도 좋아요.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (46,40,'오늘 하루 평화로운 거 같으면서 눈치 보느라 제대로 안 풀리는 날!!! 이런 찝찝함 속에 퇴근시간이 다가올수록 속으로는 싱글벙글 상당히 신이 나 있는 모습을 숨긴 채 언제까지 눈치 보고 불편하게 지내야 되지라는 생각으로 그만둘까?? 라는 상상을 하고 있는 당신!!! 실천하려 하지 말고 퇴근 후 자유시간을 보내며 어차피 달라지는 건 없다는 생각으로 쭉 다니세요!!');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (47,40,'아직 사표는 가슴에 고이 품어야 할때! 밖은 아직 춥습니다. 존중해서 버티며 연봉이 오르길 기다립시다. 우선은 하더 일에 집중하면서 성실하게 보내봅시다. 시간이 지나면 자연스레 풀릴겁니다. 어설프게 그만두고 싶다는 마음을 회사에서 알게 된다면 당신의 근간이 흔들릴 정도로 힘든 일이 생길 수도 있으니 주의하세요.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (48,40,'오늘 하루 원하는 대로 아무것도 되지 않는 당신!! 일하는 도중 내리 갈굼부터 시작하여 직장 동기와도 싸운 당신!! 화를 참지 못해 퇴사하고 다른 데로 이직할지 고민하는 당신!! 과연 이직해도 다를까?? 어차피 크게 달라지지 않아요ㅠㅠ 더럽고 치사해도 대출금도 갚아야 하고 포기해야 할 게 너무 많아요 운명이다 생각하고 퇴사하고 싶어도 노놉!! 못해ㅠㅠ');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (1,10,'오늘 좋아하는 사람에게 먼저 다가가 고백하지 말아요.
당신이 기다리던 사람이 먼저 다가와 고백할 거니까요.
큰 실수만 하지 말아요.
축하해요. 당신에게도 사랑이 시작되는 봄이 왔네요 :)');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (2,10,'고백에 대한 운이 매우 좋습니다. 자신의 마음을 열어두고, 솔직하게 상대방에게 전달하는 것이 중요합니다. 상대방도 당신의 솔직한 고백을 기다리고 있을 것입니다.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (3,10,'우와! 오늘 고백운이 상당하네요!!
좋아하는 사람에게 당장 가서 고백으로 혼내줍시다!!
뭐…?? 고백했다가 거절당할까 봐 걱정된다고요?? 그대여~ 아무 걱정 하지 말아요~~
오늘 당신의 고백운은 높답니다!
고백은 타이밍!! 오늘이 날입니다!!!
사랑은 자신감을 가져야 쟁취하는 거 아니겠어요??
자! 자신감을 가지고!! 혼내주러 가봅시다!!!');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (5,10,'사랑고백은 기세입니다. 도전적인 자세는 당신의 운을 상승시켜줍니다. 전투적인 자세로 전진하세요. 도전하고자 하는 의지가 성공의 지름길입니다. 긍정적인 대답을 받을 수도?');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (6,10,'기분이 아리송한데.... 당신의 썸녀 또는 썸남의 기분이 파악이 되지 않습니다. 고백은 하더라도 조심히 기분안상하게 하시면 될거같습니다.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (7,10,'주변에 당신의 매력을 어필하기 좋은 날 입니다. 짝사랑하는 이성이 있다면 말걸어보세요. 하지만 기억하세요 오늘은 고백날이 아닙니다. 좀 더 준비해서 다음에 시도해보시길~');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (8,10,'오늘은 촉이 이상한데? 당신의 촉이 오늘은 이상하다고 느끼고 있습니다. 하지만 이 촉이 좋은쪽인지 나쁜쪽인지 모르겠으니 조심히 고백을 하시는게 좋을거 같습니다.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (9,10,'오늘 고백을 하신다구요? 좋아하는 사람과의 약속을 잡기가 힘들 수도 있어요. 
당신이 계획한 코스에 맞지 않는 날씨가 될 확률이 높아요. 모든 것이 완벽해야 할 계획에 차질이 생길 확률이 아주 높아요. 
하지만 다행인 것은 당신이 좋아하는 사람이 당신의 마음을 궁금해 한다는 것입니다. 아직 가능성은 보여요. 
오늘 말고!! 그 사람에게 당신의 매력을 어필할 더 좋은 계획을 준비해봐요.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (10,10,'자꾸 호감이 가는 상대가 있나요? 있으시다면 고백을 참아 참아보는게 어떨까요!?
혼자만 좋아하면 상처받기도 쉽죠 또한 상대는 당신에게 관심이 없는데 고백하면 부담스러워 가까이서 지켜보다 멀리서 지켜보게 될 수 있습니다.
그렇기 때문에 고백을 쉽사리 하는 것보다는 지켜보다 더 좋은 인연이 갑자기 어디서 나올지는 아무도 모릅니다 쉽사리 고백하지 마세요.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (11,10,'지금 좋아하는 사람이 있나요? 혹시라도 오늘 고백하기로 마음 먹었다면 유리같은 그 마음 상처 받기 전에 
다른 날로 미루는 것이 좋을 거에요. 어떤 말을 해도 로맨틱하게 들리지 않을 거고 극단적으로는 상대방의 마음은 당신과 다른 곳을 향하고 있을 수도 있어요. 
하지만 오늘만 날이 아니고 그 사람만 당신의 인연이 아니에요. 또 다른 기회가 있으니 새로운 기회를 찾고 용기를 가져봐요.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (12,10,'좋아하는 상대가 있다면 그 사람과 얼마나 알고 지냈나요? 혹시라도 알고 지낸지 얼마가 되었든 평소에 애인으로서의 진전이 될 느낌이 없다면 고백하지 마세요.
자기 스타일이 아닌 상대에게 호감을 표시했는데 반응이 떨떠름하면 그 순간 당신은 끝입니다.
어떤 행동을 해도 성공할 사람은 성공하는데
호감을 표시했는데 떨떠름 한 반응이 보이면
당신은 가까이서도 보지 못하고 멀리서 지켜보다 연락도 끊겨 주위 사람들을 통해 소식을 들을 것입니다.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (21,20,'비밀이 발각되기 쉬운 날입니다. 들키지 않는 꼼수는 없습니다. 지금 상황을
모면하려고 무심코 한 거짓말이 큰 싸움을 불러일으킬 수 있습니다. 파트너에게 
사실을 솔직하게 말하고 위기를 헤쳐나가세요.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (22,20,'기념일이라 로맨틱한 식사를 하고 싶어서 분명히 몇 주 전에 예약하고 갔는데 모종의 이유로 명단에서 이름이 지워지고 
스트레스 받은 몸을 이끌고 당 채울 겸 디저트를 먹으러 갔는데 오늘 따라 우리 주문만 이상하게 늦고 뭔가 자꾸 꼬여만 가는 데이트가 될 수 있어요. 
오늘은 밖에서 타인들과 섞이지 않고 둘 만의 시간을 가져보는 것이 관계에 좋을 수 있습니다. 
자취를 하신다면 당신의 자취방으로, 아니면 숙박 어플을 이용해보는 것은 어떻까요? 유후훗');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (23,20,'파트너를 무시하는 경향이 있습니다. 날카로운 지적은 상대의 자존심에 
상처입힙니다. 때로는 자신의 의견을 굽히고 상대의 의견을 존중해야합니다.?
파트너의 요구사항을 우선시 하는 것이 좋습니다.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (13,20,'오늘은 사랑하는 사람이 하루 종일 이뻐 보이는 날이네요.
한마디로 ‘콩깍지가 제대로 씌인 날!’이라고 할 수 있겠습니다.
원래도 이뻐 죽겠는데 더 이뻐 보이면.. 어우~ 어떡해~ 너무 좋겠다!!! 이렇게 콩깍지 제대로 씌인 날
사랑하는 사람에게 따뜻한 말과 애정을 듬뿍 표현해 주세요.
둘의 관계가 더더욱 깊어질 수 있는 좋은 기회 아니겠어요?!');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (24,20,'오늘 같은 날은 연인과 데이트를 안 하는 게 가장 좋겠지만 어쩔 수 없이 데이트를 해야 한다면 극단적으로 연애 환승까지도 고려해야 할 거에요. 
오늘은 이상하게도 연인의 기분이 안 좋아 보일 수도 있고 사소한 일에 짜증 내고 있다는 생각이 들 수도 있어요. 극도로 예민할 수도 있는 당신의 연인!! 
그래도 연인의 마음이 소중하다면 내가 슈퍼 ‘을’이구나하고 꾹 참아봐요. 이후 더 나은 관계로의 발판이 될 수도 있습니다. 
하지만 자기애가 강한 당신이라면? 뭘 참아요? 이 참에 환승해 보는 것도 다양한 인간관계를 맺을 수 있는 기회가 될 것입니다.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (14,20,'오늘은 데이트를 즐길 수 있는 좋은 날입니다. 특별한 계획 없이도, 함께 시간을 보내며 좋은 추억을 만들어 갈 수 있을 것입니다.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (15,20,'요즘 사랑하는 사람과의 만남이 익숙해져서 설렘이 줄어들었었나요?
걱정 마세요. 설렘이 다시 시작되는 날이에요!!
오늘은 사랑하는 사람과 연애 초반에 했던 일들을 다시 한번 해보는 걸 추천드립니다.
그 시절 함께 했던 소중한 추억들을 다시 되새겨보며 상대방을 처음 좋아했을 때의 그 감정을 느껴보세요.*
연애 초반의 그 설렘이 다시 돌아오며 심장이 쾅쾅!! 할지 모르잖아요?? ?     참! 연애 초반인 사람들은 현재 심장이 쾅쾅 ing 일 테니 걱정 말고요!!');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (16,20,'데이트를 하는 동안, 서로를 더욱 잘 이해하고 소통할 수 있는 기회가 있을 것입니다. 이를 통해 서로를 더욱 가깝게 느낄 수 있을 것입니다.
');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (17,20,'오늘은 같이 있다는 사실 하나 만으로도 더없이 행복하고 즐거운 날입니다.
평소와 똑같은 행동을 하더라도 사소한 배려가 추가되면 다르게 보일 것입니다,
같이 있다는 것으로 서로 행복하고 재밌을 때 자주 보여주지 않았던 애교를 통해 사랑하는 사람의 마음을 들뜨는 게 해주는 건 어떨까요?
그렇다고 너무 무리하여 과소비 하는 데이트는 하지 말고 마음으로 표현하세요.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (18,20,'오늘은 뭔가 평범한데? 여친 또는 남친의 기분은 쏘쏘 합니다. 평소처럼 잘지내시면 그날은 큰 문제없이 지나갈것 입니다.');
REM INSERTING into ELCARO.MBTI_TB
SET DEFINE OFF;
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (1,'ISTJ','../resources/images/mbti/istj.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (2,'ISTP','../resources/images/mbti/istp.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (3,'ISFJ','../resources/images/mbti/isfj.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (4,'ISFP','../resources/images/mbti/isfp.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (5,'INTJ','../resources/images/mbti/intj.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (6,'INTP','../resources/images/mbti/intp.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (7,'INFJ','../resources/images/mbti/infj.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (8,'INFP','../resources/images/mbti/infp.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (9,'ESTJ','../resources/images/mbti/estj.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (10,'ESTP','../resources/images/mbti/estp.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (11,'ESFJ','../resources/images/mbti/esfj.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (12,'ESFP','../resources/images/mbti/esfp.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (13,'ENTJ','../resources/images/mbti/entj.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (14,'ENTP','../resources/images/mbti/entp.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (15,'ENFJ','../resources/images/mbti/enfj.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (16,'ENFP','../resources/images/mbti/enfp.png');
REM INSERTING into ELCARO.RESULT_TB
SET DEFINE OFF;
REM INSERTING into ELCARO.URL_TB
SET DEFINE OFF;
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (121,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%9C%BC%EB%9D%BC%EC%B0%A8%EC%B0%A8%201%EC%A1%B0&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fenfp.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fdragon.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','sh');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (122,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%9C%BC%EB%9D%BC%EC%B0%A8%EC%B0%A8%201%EC%A1%B0&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fenfp.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fdragon.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','sh');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (123,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%9C%BC%EB%9D%BC%EC%B0%A8%EC%B0%A8%201%EC%A1%B0&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fenfp.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fdragon.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','sh');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (220,to_date('23/06/26','RR/MM/DD'),'www.naver.com','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (221,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (222,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (241,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (242,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (243,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (244,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (245,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (246,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (247,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (248,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (269,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (270,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (271,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (272,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (161,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (181,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (249,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (250,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (273,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (284,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (285,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (286,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (287,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (288,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (289,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (290,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (291,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (292,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (293,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (294,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (295,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (296,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (297,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (298,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (299,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (300,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (301,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (302,to_date('23/06/26','RR/MM/DD'),'www.naver.com','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (303,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (304,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (305,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (306,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (307,to_date('23/06/26','RR/MM/DD'),'www.naver.com','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (308,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (309,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (310,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (311,to_date('23/06/26','RR/MM/DD'),'www.naver.com','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (312,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (313,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (142,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (143,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (141,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (201,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (202,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (203,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (204,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (205,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (206,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (207,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (208,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (209,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (210,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (211,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (212,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (213,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (214,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (252,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (254,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (1,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (2,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (3,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (4,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (5,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (6,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (7,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (8,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (9,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (10,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (11,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (21,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (22,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (23,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (24,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (25,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (26,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (27,to_date('23/06/14','RR/MM/DD'),'aaaabbbbbaaaaaaaaaaaaaaa','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (28,to_date('23/06/14','RR/MM/DD'),'aaaabbbbbaaaaaaaaaaaaaaa','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (29,to_date('23/06/14','RR/MM/DD'),'aaaabbbbbaaaaaaaaaaaaaaa','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (30,to_date('23/06/14','RR/MM/DD'),'aaaabbbbbaaaaaaaaaaaaaaa','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (31,to_date('23/06/14','RR/MM/DD'),'aaaabbbbbaaaaaaaaaaaaaaa','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (32,to_date('23/06/14','RR/MM/DD'),'aaaabbbbbaaaaaaaaaaaaaaa','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (251,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (255,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (256,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (257,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (274,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (275,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (276,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (277,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (278,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (279,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%9C%BC%EB%9D%BC%EC%B0%A8%EC%B0%A8%201%EC%A1%B0&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fenfp.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fdragon.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','sh');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (280,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%9C%BC%EB%9D%BC%EC%B0%A8%EC%B0%A8%201%EC%A1%B0&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fenfp.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fdragon.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','sh');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (281,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%9C%BC%EB%9D%BC%EC%B0%A8%EC%B0%A8%201%EC%A1%B0&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fenfp.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fdragon.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','sh');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (282,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (283,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (41,to_date('23/06/18','RR/MM/DD'),'aaaa','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (61,to_date('23/06/18','RR/MM/DD'),'qqqqq','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (62,to_date('23/06/18','RR/MM/DD'),'qqqqq','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (63,to_date('23/06/18','RR/MM/DD'),'qqqqq','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (64,to_date('23/06/18','RR/MM/DD'),'comic.naver.com/webtoon/detail?titleId=796152&no=54','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (101,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (102,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (215,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (216,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (217,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (218,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (219,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (253,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (258,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (259,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (260,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (261,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (262,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (263,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (264,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (265,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (266,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (267,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (268,to_date('23/06/26','RR/MM/DD'),'www.naver.com','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (336,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (337,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (339,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (364,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (365,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','spider');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (369,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','turquois1218');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (370,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','turquois1218');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (371,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','turquois1218');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (372,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','turquois1218');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (314,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (315,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (316,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (317,to_date('23/06/26','RR/MM/DD'),'www.naver.com','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (318,to_date('23/06/26','RR/MM/DD'),'www.naver.com','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (319,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (320,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (321,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (322,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (323,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (324,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (325,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (326,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (327,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (328,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (329,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (330,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (331,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (332,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (333,to_date('23/06/26','RR/MM/DD'),null,'mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (334,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (335,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (338,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (341,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (342,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (343,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (344,to_date('23/06/26','RR/MM/DD'),'http://www.elcarotest.com:8087/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (345,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (346,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (347,to_date('23/06/26','RR/MM/DD'),'http://www.elcarotest.com:8087/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (348,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (349,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (351,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (352,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (353,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (354,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (355,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','test');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (356,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','test');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (357,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','test');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (358,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (359,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (360,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (361,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','test');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (362,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (363,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (373,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (374,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (383,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','opsa1');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (384,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','opsa1');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (385,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','opsa1');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (366,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (367,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (368,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','spider');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (375,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','space');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (376,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','space');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (377,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','space');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (378,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','space');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (379,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','space');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (380,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','space');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (381,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','space');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (382,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','space');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (350,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','turquois1218');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (401,to_date('23/06/27','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (402,to_date('23/06/27','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (403,to_date('23/06/27','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (340,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
--------------------------------------------------------
--  DDL for Index PK_ACCOUNT_TB
--------------------------------------------------------

  CREATE UNIQUE INDEX "ELCARO"."PK_ACCOUNT_TB" ON "ELCARO"."ACCOUNT_TB" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_ANI_TB
--------------------------------------------------------

  CREATE UNIQUE INDEX "ELCARO"."PK_ANI_TB" ON "ELCARO"."ANI_TB" ("ANI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_BOARD
--------------------------------------------------------

  CREATE UNIQUE INDEX "ELCARO"."PK_BOARD" ON "ELCARO"."BOARD" ("SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_LUCK_TEXT_TB
--------------------------------------------------------

  CREATE UNIQUE INDEX "ELCARO"."PK_LUCK_TEXT_TB" ON "ELCARO"."LUCK_TEXT_TB" ("SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_MBTI_TB
--------------------------------------------------------

  CREATE UNIQUE INDEX "ELCARO"."PK_MBTI_TB" ON "ELCARO"."MBTI_TB" ("MBTI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_URL_TB
--------------------------------------------------------

  CREATE UNIQUE INDEX "ELCARO"."PK_URL_TB" ON "ELCARO"."URL_TB" ("SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table ACCOUNT_TB
--------------------------------------------------------

  ALTER TABLE "ELCARO"."ACCOUNT_TB" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."ACCOUNT_TB" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."ACCOUNT_TB" MODIFY ("NICKNAME" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."ACCOUNT_TB" MODIFY ("ANI" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."ACCOUNT_TB" MODIFY ("MBTI" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."ACCOUNT_TB" MODIFY ("GENDER" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."ACCOUNT_TB" ADD CONSTRAINT "PK_ACCOUNT_TB" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ANI_TB
--------------------------------------------------------

  ALTER TABLE "ELCARO"."ANI_TB" MODIFY ("ANI" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."ANI_TB" MODIFY ("ANI_NAME" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."ANI_TB" MODIFY ("IMG_SRC" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."ANI_TB" ADD CONSTRAINT "PK_ANI_TB" PRIMARY KEY ("ANI")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "ELCARO"."BOARD" MODIFY ("SEQ" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."BOARD" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."BOARD" ADD CONSTRAINT "PK_BOARD" PRIMARY KEY ("SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LUCK_TEXT_TB
--------------------------------------------------------

  ALTER TABLE "ELCARO"."LUCK_TEXT_TB" MODIFY ("SEQ" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."LUCK_TEXT_TB" MODIFY ("LUCK_TY" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."LUCK_TEXT_TB" ADD CONSTRAINT "PK_LUCK_TEXT_TB" PRIMARY KEY ("SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MBTI_TB
--------------------------------------------------------

  ALTER TABLE "ELCARO"."MBTI_TB" MODIFY ("MBTI" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."MBTI_TB" MODIFY ("MBTI_TYPE" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."MBTI_TB" MODIFY ("IMG_SRC" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."MBTI_TB" ADD CONSTRAINT "PK_MBTI_TB" PRIMARY KEY ("MBTI")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table URL_TB
--------------------------------------------------------

  ALTER TABLE "ELCARO"."URL_TB" MODIFY ("SEQ" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."URL_TB" ADD CONSTRAINT "PK_URL_TB" PRIMARY KEY ("SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ACCOUNT_TB
--------------------------------------------------------

  ALTER TABLE "ELCARO"."ACCOUNT_TB" ADD CONSTRAINT "FK_ANI_TB_TO_ACCOUNT_TB" FOREIGN KEY ("ANI")
	  REFERENCES "ELCARO"."ANI_TB" ("ANI") ENABLE;
  ALTER TABLE "ELCARO"."ACCOUNT_TB" ADD CONSTRAINT "FK_MBTI_TB_TO_ACCOUNT_TB" FOREIGN KEY ("MBTI")
	  REFERENCES "ELCARO"."MBTI_TB" ("MBTI") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RESULT_TB
--------------------------------------------------------

  ALTER TABLE "ELCARO"."RESULT_TB" ADD CONSTRAINT "FK_ACCOUNT_TB_TO_RESULT_TB" FOREIGN KEY ("ID")
	  REFERENCES "ELCARO"."ACCOUNT_TB" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table URL_TB
--------------------------------------------------------

  ALTER TABLE "ELCARO"."URL_TB" ADD CONSTRAINT "FK_ACCOUNT_TB_TO_URL_TB" FOREIGN KEY ("ID")
	  REFERENCES "ELCARO"."ACCOUNT_TB" ("ID") ENABLE;
