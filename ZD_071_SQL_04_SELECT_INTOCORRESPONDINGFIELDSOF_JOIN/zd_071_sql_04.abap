*&---------------------------------------------------------------------*
*& Report ZD_071_SQL_04
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_SQL_04.

*t_str 구성체를 만드는 과정
TYPES: BEGIN OF t_str,
  carrid TYPE sflight-carrid,
  carrname TYPE scarr-carrname,
  END OF t_str.

*gs_str 변수에 t_str 타입을 집어넣음
DATA : gs_str TYPE t_str.

* 주의 : 별칭 테이블은 ~ 로 소속된 구성을 불러옴
SELECT SINGLE a~carrid b~carrname "a테이블의 carrid 와 b테이블의 carrname 을 1개만 선택
  INTO CORRESPONDING FIELDS OF gs_str "그 중 gs_str 에 상응하는 부분에 집어넣음
  FROM sflight AS a "sflight 로부터 가져오나 a 로 별칭을 지정
  INNER JOIN scarr AS b
  ON a~carrid EQ b~carrid "scarr 와 a~carrid 를 조인하고 그중 b~carrid 와 같은 걸 출력
  WHERE a~carrid = 'AA'. "그중에 a~carrid 가 AA인걸 출력

WRITE : gs_str-carrid, gs_str-carrname.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
