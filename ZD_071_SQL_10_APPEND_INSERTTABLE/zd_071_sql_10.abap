*&---------------------------------------------------------------------*
*& Report ZD_071_SQL_10
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_SQL_10.

DATA : gt_spfli TYPE TABLE OF spfli,
       gs_spfli TYPE spfli.

gs_spfli-carrid = 'KO'.
gs_spfli-connid = '0001'.
gs_spfli-cityfrom = 'Seoul'.
gs_spfli-cityto = ' Beijing '.
APPEND gs_spfli TO gt_spfli.

gs_spfli-carrid = 'KO'.
gs_spfli-connid = '0002'.
gs_spfli-cityfrom = ' Seoul '.
gs_spfli-cityto = 'Bangalore'.
APPEND gs_spfli TO gt_spfli.

INSERT spfli FROm TABLE gt_spfli ACCEPTING DUPLICATE KEYS.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
