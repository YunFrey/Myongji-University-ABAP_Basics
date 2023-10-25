*&---------------------------------------------------------------------*
*& Report ZD_071_04_003_TIMEDT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_04_003_TIMEDT.

* 1. 날짜 계산
DATA: gv_date TYPE d.

gv_date = sy-datum.
WRITE : / gv_date.

gv_date = gv_date + 3.
WRITE : / gv_date.

* 2. 시간 계산
DATA: gv_time TYPE t.

gv_time = sy-uzeit.
WRITE: / gv_time.
gv_time = gv_time - 60.
WRITE: / gv_time.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
