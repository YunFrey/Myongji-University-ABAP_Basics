*&---------------------------------------------------------------------*
*& Report ZY_071_02_01_TEST
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZY_071_02_01_TEST.

TYPES t_var TYPE c LENGTH 20.
*Local Type t_var 를 선언하고, 20글자 제한의 문자값이 들어감
DATA gv_var TYPE t_var.
*Data Variation gv_var 에 t_var 라는 Local Type 를 참조하여 변수에 문자열 할당
*DATA gv_var TYPE t_var VALUE 'Hellow ABAP'. 로 대체 가능
gv_var = 'Hellow ABAP'.
*gv_var 을 출력
WRITE gv_var.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
