FUNCTION Z_071_FM_CALCULATION.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(IM_OPERAND1) TYPE  I
*"     VALUE(IM_OPERAND2) TYPE  I
*"     VALUE(IM_OPERATOR) TYPE  C
*"  EXPORTING
*"     VALUE(EX_RESULT) TYPE  P
*"  RAISING
*"      CX_SY_ZERODIVIDE
*"      ZCX_071_CALC_EXCEPTION
*"----------------------------------------------------------------------

  CASE IM_OPERATOR.
    WHEN '+'.
      EX_RESULT = IM_OPERAND1 + IM_OPERAND2.
    WHEN '-'.
      EX_RESULT = IM_OPERAND1 - IM_OPERAND2.
    WHEN '*'.
      EX_RESULT = IM_OPERAND1 * IM_OPERAND2.
    WHEN '/'.
      EX_RESULT = IM_OPERAND1 / IM_OPERAND2.
    WHEN OTHERS.
      RAISE EXCEPTION TYPE zcx_071_undef_operator EXPORTING operator = im_operator.
   ENDCASE.

 IF ex_result > 1000.
   RAISE EXCEPTION TYPE zcx_071_valuetohigh EXPORTING maxvalue = 1000.
 ENDIF.

ENDFUNCTION.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
