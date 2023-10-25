*&---------------------------------------------------------------------*
*& Report ZD_071_CALCULATION
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_CALCULATION.

*PARAMETER 에 3가지의 창 생성
PARAMETERS: input1 TYPE i, input2 TYPE i, operator TYPE c.
DATA result TYPE p.
*exception 과 text 를 받을 변수 생성
DATA exception TYPE REF TO zcx_071_CALC_EXCEPTION.
DATA exception_text TYPE string.
try.
*CASE 문을 통해 분기 작성
CALL FUNCTION 'Z_071_FM_CALCULATION'
  EXPORTING
    im_operand1       = input1
    im_operand2       = input2
    im_operator       = operator
  IMPORTING
    ex_result         = result.
          .

*출력부 작성
WRITE: input1, ' ', operator, ' ', input2, '=', result.

*계산 에러 발생 시(값 초과 및 연산자 오기입)
catch ZCX_071_CALC_EXCEPTION INTO exception.
  exception_text = exception->get_text( ).
  WRITE : 'Exception occured: ', exception_text.
*0으로 나눌 경우 캐치
catch CX_SY_ZERODIVIDE.
  WRITE: 'Do not divide by zero!'.
endtry.


*Selection texts
*----------------------------------------------------------
* INPUT1         첫 숫자를 입력하세요.
* INPUT2         두번째 숫자를 입력하세요.
* OPERATOR         연산자를 입력하세요 (예: +,-,*,/)

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
