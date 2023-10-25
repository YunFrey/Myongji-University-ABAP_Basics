*&---------------------------------------------------------------------*
*& Report ZD_071_SQL_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_SQL_01.

*sflight 의 테이블 구조를 가져와 gt_itab 변수에 지정.
TYPES gt_itab LIKE sflight. "sflight 의 테이블 구조를 가져와 gs_wa 변수에 지정.
DATA gs_wa TYPE gt_itab. "gt_itab 의 타입을 가져옴 "미사용하는 변수
*sflight 타입을 사용하려면 STANDARD TABLE 또는 TYPE 을 사용할 수도 있음

*sflight 에서 carrid 가 AA인 부분을 가져와 gs_wa 변수에 지정
SELECT * INTO gs_wa FROM sflight WHERE carrid = 'AA'.
  WRITE : / gs_wa-carrid, "gs_wa 변수의 carrid 항목을 출력
  gs_wa-connid. "gs_wa 변수의 connid 항목도 출력
ENDSELECT.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
