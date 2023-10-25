*&---------------------------------------------------------------------*
*& Report ZD_071_SQL_02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_SQL_02.

*sflight 의 STANDARD 테이블 구조를 gt_itab 변수에 넣기
DATA : gt_itab TYPE STANDARD TABLE OF sflight,
      gs_wa LIKE LINE OF gt_itab. "gt_itab 의 1차원 구조를 gs_wa 에 넣기

*gs_line 변수를 72자로 제한하고 캐릭터 타입으로 지정
DATA : gs_line(72) TYPE c,
      gt_list LIKE TABLE OF gs_line(72). "gs_line 변수의 테이블 형태를 gt_list 에 붙이기


*gs_line 변수에 CARRID CONNID 를 붙여넣기
gs_line = 'CARRID CONNID'.

*gs_line 의 sflight 에서 CARRID 와 CONNID 의 유니크한 값으로 분류하여 선택한 후 gt_itab 테이블에 붙여넣기
SELECT DISTINCT (gs_line) INTO CORRESPONDING FIELDS OF TABLE gt_itab FROM sflight.

*만약 sy-subrc 로그에 문제없음이 출력되면
IF sy-subrc = 0.
  LOOP AT gt_itab INTO gs_wa. "gt_itab 의 정보를 긁어서 gs_wa 변수에 붙여넣기
    WRITE : / gs_wa-carrid, gs_wa-connid. "gs_wa 변수의 carrid 를 가져오고 gs_Wa connid 를 가져옴
  ENDLOOP.
ENDIF.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
