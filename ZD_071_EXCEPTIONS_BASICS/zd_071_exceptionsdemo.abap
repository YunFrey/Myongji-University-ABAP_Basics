*&---------------------------------------------------------------------*
*& Report ZD_071_EXCEPTIONSDEMO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_EXCEPTIONSDEMO.
PARAMETERS Num_1 TYPE I.
DATA res_1 TYPE P DECIMALS 2.
DATA orf_1 TYPE REF TO CX_ROOT.
DATA txt_1 TYPE STRING.

START-OF-SELECTION.
WRITE : / 'Square Root and Division with:', Num_1.
WRITE : /.

*절대값 체크하기
TRY.
*입력값이 150이 넘을 때 CX_DEMO_ABS_TOO_LARGE 에러를 RAISE
  IF ABS( Num_1 ) > 150.
    RAISE EXCEPTION TYPE CX_DEMO_ABS_TOO_LARGE.
  ENDIF.
*이제 에러를 캐치
    CATCH CX_DEMO_ABS_TOO_LARGE INTO orf_1.
    txt_1 = orf_1->GET_TEXT( ).
    WRITE : 'Exception occured: ', txt_1.
ENDTRY.

*제곱근 구하기
TRY.
  res_1 = SQRT( Num_1 ).
  Write: / 'Result of square root: ', res_1.
ENDTRY.

*나누기
TRY.
  res_1 = 1 / Num_1.
  WRITE: / 'Result of division: ', res_1.
  CATCH CX_SY_ZERODIVIDE INTO orf_1.
    txt_1 = orf_1->GET_TEXT( ).
    WRITE : / 'Exception occured: ', txt_1.
  CLEANUP.
    CLEAR res_1.
ENDTRY.


TRY.
CATCH CX_SY_ARITHMETIC_ERROR INTO orf_1.
    txt_1 = orf_1->GET_TEXT( ).
    WRITE : 'Exception occured: ', txt_1.
    "에러를 출력했으니 res_1 변수는 초기화
ENDTRY.

  TRY.
CATCH CX_ROOT INTO orf_1.
  txt_1 = orf_1->GET_TEXT( ).
  WRITE : 'Exception occured: ', txt_1.
  "에러를 출력했으니 res_1 변수는 초기화
ENDTRY.

*가장 마지막에 발생한 에러
  IF NOT txt_1 IS INITIAL.
    Write / txt_1.
    ELSE.
      WRITE : / 'Final Result is:', res_1.
    ENDIF.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
