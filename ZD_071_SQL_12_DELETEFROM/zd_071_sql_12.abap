*&---------------------------------------------------------------------*
*& Report ZD_071_SQL_12
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_SQL_12.
DATA gs_spfli TYPE spfli.

MOVE 'KO' TO gs_spfli-carrid.
MOVE '0001' TO gs_spfli-connid.

DELETE spfli FROM gs_spfli.

DELETE FROM spfli WHERE carrid = 'KO'.

IF SY-SUBRC = 0.
  WRITE 'Delete Success!'.
ENDIF.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
