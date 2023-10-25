*&---------------------------------------------------------------------*
*& Report ZD_071_SQL_03
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_SQL_03.

DATA: gs_wa TYPE sflight, "sflight 테이블의 타입을 gs_Wa 변수에 붙여넣기
      gt_itab TYPE TABLE OF sflight. "sflight 의 테이블 형태 타입을 gs_itab 에 붙여넣기

*spfil 테이블에서 gt_tab 와 동일한 탭을 가져와 carrid 와 connid 항목만 보여주기
SELECT carrid connid FROM spfli INTO CORRESPONDING FIELDS OF TABLE gt_itab
  PACKAGE SIZE 5.
  LOOP AT gt_itab INTO gs_wa. "gs_wa 변수에 gt_itab 의 항목 붙여넣기
    WRITE : / gs_wa-carrid, gs_wa-connid.
  ENDLOOP.
ENDSELECT.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
