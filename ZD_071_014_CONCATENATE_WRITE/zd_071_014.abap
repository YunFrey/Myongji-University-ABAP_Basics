*&---------------------------------------------------------------------*
*& Report ZD_071_014
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_014.

CONSTANTS c_abap TYPE c LENGTH 4 VALUE 'ABAP'.
*상수 c_abap 에 4자릿수의 c 타입을 지정하고 ABAP 값으로 초기화
DATA v_whole_text TYPE string.
*v_whole_text 변수는 String 값을 입력하게 타입 설정

START-OF-SELECTION.

*c_abap 의 'ABAP' 와 '101' 을 합쳐서 v_whole_Text 변수에 넣고 출력하기
CONCATENATE c_abap '101' INTO v_whole_text .
WRITE v_whole_text.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
