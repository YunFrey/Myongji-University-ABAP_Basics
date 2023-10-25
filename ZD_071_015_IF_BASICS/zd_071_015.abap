*&---------------------------------------------------------------------*
*& Report ZD_071_015
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_015.
*v_string 변수를 스트링 타입으로 선언하고 123456.... 값으로 초기화
DATA v_string TYPE string VALUE '1234567890ABCDEFGHIJ'.
*v_string 변수값의 길이를 넣을 변수 지정
DATA v_string_length TYPE i.

START-OF-SELECTION.

*strlen 명령어를 사용하여 v_string 의 길이를 측정
v_string_length = strlen( v_string ).
*만약 값의 길이가 20보다 크면
IF v_string_length > 20 .
WRITE 'Too big'. "너무 크다고 출력
ELSE. " 아닌경우
WRITE v_string_length. "길이값 출력
ENDIF.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
