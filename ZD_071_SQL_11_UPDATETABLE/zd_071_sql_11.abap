*&---------------------------------------------------------------------*
*& Report ZD_071_SQL_11
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_SQL_11.

DATA gs_spfli TYPE spfli.

MOVE 'KO' TO gs_spfli-carrid.
MOVE '0001' TO gs_spfli-connid.
MOVE 'Busan' TO gs_spfli-cityfrom.

UPDATE spfli FROm gs_spfli.

UPDATE spfli
set CITYTO = ' Shanghai'
where carrid = 'KO'
AND CONNID = '0001'.

IF SY-SUBRC = 0.
  WRITE 'Update is success!!'.
ENDIF.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
