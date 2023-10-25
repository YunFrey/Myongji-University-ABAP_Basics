*&---------------------------------------------------------------------*
*& Report ZD_071_SQL_13
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_SQL_13.

DATA : gt_spfli TYPE TABLE OF spfli,
      gs_spfli TYPE spfli.

gs_spfli-carrid = 'KO'.
gs_spfli-connid = '0001'.
gs_spfli-cityfrom = 'Korea'.
MODIFY spfli FROM gs_spfli.

gs_spfli-carrid = 'KO'.
gs_spfli-connid = '0001'.
gs_spfli-cityfrom = 'Busan'.
APPEND gs_spfli TO gt_spfli.

gs_spfli-carrid = 'KO'.
gs_spfli-connid = '0003'.
gs_spfli-cityfrom = 'Seoul'.
APPEND gs_spfli to gt_spfli.

MODIFY spfli FROm TABLE gt_spfli.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
