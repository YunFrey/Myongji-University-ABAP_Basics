*&---------------------------------------------------------------------*
*& Report ZD_071_SQL_09
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_SQL_09.

DATA : gs_scarr TYPE scarr.

gs_scarr-carrid = 'JU'.
gs_scarr-carrname = "Air JongUn'.
gs_scarr-url = 'http://www.airjongun.co.kr/'.

UPDATE SCARR SET CARRNAME = 'Air Jongun' WHERE CARRID = 'JU'.
*GS_SCARR 변수를 SCARR 에 집어넣기

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
