*&---------------------------------------------------------------------*
*& Report ZD_071_016
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_016.

*변수 선언 및 1로 초기화
DATA v_current_number TYPE i VALUE 1.

START-OF-SELECTION.

*v_current_number 가 100보다 이하인 동안
WHILE v_current_number <= 100.
*IF문 시작
  IF ( v_current_number MOD 8 ) = 0. "만약 v_current_number 가 8로 나눈 나머지가 0이 면
    WRITE: 'The number', v_current_number, ' is a multiple of 8'. " v_current_number 가 8의 배수라고 표시
    NEW-LINE.
    ENDIF.
*IF문 종료
    ADD 1 TO v_current_number. "v_current_number 에 1을 추가하여 반복문 다시 시작 (1부터 ~~ 100까지 카운트)

ENDWHILE.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
