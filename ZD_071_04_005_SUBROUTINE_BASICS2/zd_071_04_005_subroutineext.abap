*&---------------------------------------------------------------------*
*& Report ZD_071_04_005_SUBROUTINEEXT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_04_005_SUBROUTINEEXT.
DATA count Type i VALUE 1.

PERFORM write_data. "더블클릭하여 아래와 같이 만들 수 있음.
*&---------------------------------------------------------------------*
*& Form WRITE_DATA
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM write_data .

  IF count < 5.
    PERFORM write_data.
    count = count + 1.
  ELSEIF count = 5.
    WRITE '반복 끝'.
  ELSE.
  ENDIF.



ENDFORM.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
