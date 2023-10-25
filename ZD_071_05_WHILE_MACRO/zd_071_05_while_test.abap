*&---------------------------------------------------------------------*
*& Report ZD_071_05_WHILE_TEST
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_05_WHILE_TEST.
DATA gv_initial type i VALUE 1.
DATA gv_initial2 type i VALUE 1.
DATA res type i VALUE 1.

WHILE gv_initial < 5.
  WRITE 'A'.
  gv_initial = gv_initial + 1.
ENDWHILE.

DEFINE increment.
  ADD 1 to &1.
  WRITE : &1, '2번째', &2.
  res = &1 + &2.
END-OF-DEFINITION.

increment gv_initial gv_initial2.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
