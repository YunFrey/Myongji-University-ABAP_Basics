*&---------------------------------------------------------------------*
*& Report ZD_071_SQL_05
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_SQL_05.

*데이터 선언부
DATA gs_where TYPE c LENGTH 72.
DATA gt_where LIKE TABLE OF gs_where.
DATA gv_carrname TYPE scarr-carrname.
DATA gv_carrid1 TYPE scarr-carrid VALUE 'AC'.
DATA gv_carrid2 TYPE scarr-carrid VALUE 'AF'.

* CARRID = 부분과 gv_carrid1 을 합쳐서 gs_where 에 붙여넣기

CONCATENATE 'CARRID = ''' gv_carrid1 '''' INTO gs_where.
APPEND gs_where TO gt_where. "gs_where 의 요소를 gt_where 에 추가하기

gs_where = 'OR'. "gs_where 변수값을 OR 로 지정
APPEND gs_where to gt_where. "gs_where 의 요소를 gt_where 에 추가하기


* CARRID = 부분과 gv_carrid 부분을 합쳐서 gs_where 에 집어넣기
CONCATENATE 'CARRID = ''' gv_carrid2 '''' INTO gs_where.
APPEND gs_where TO gt_where. "gs_where 의 요소를 gt_where 에 추가하기

SELECT carrname
  INTO gv_carrname
  FROM scarr
  WHERE (gt_where).
  WRITE / gv_carrname.
ENDSELECT.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
