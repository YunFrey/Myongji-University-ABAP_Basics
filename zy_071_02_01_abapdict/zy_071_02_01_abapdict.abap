*&---------------------------------------------------------------------*
*& Report ZY_071_02_01_ABAPDICT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZY_071_02_01_ABAPDICT.

"ABAP Dictionary 를 이용한 변수 선언
"전역 번수는 항상 G로 시작하게 됨, GV는 전역 변수 필드 타입을 의미함
DATA : gv_carrid TYPE s_carr_id,
      gv_connid TYPE sflight-carrid,
      gv_matnr TYPE mara-matnr.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
