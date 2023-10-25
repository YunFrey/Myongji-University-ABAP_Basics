*----------------------------------------------------------------------*
***INCLUDE ZD_071_DYNPRO_USER_COMMAND_I01.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0100  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_0100 INPUT.

CASE ok_code.
  WHEN 'BACK'.
    LEAVE PROGRAM.
  WHEN 'SELECT'.

    "Lock Object 생성, Shared Lock 걸기
    CALL FUNCTION 'ENQUEUE_EZ_SPFLI'
     EXPORTING
       MODE_SPFLI           = 'S'
       MANDT                = SY-MANDT
       CARRID               = spfli-carrid
       CONNID               = spfli-connid
*       X_CARRID             = ' '
*       X_CONNID             = ' '
*       _SCOPE               = '2'
*       _WAIT                = ' '
*       _COLLECT             = ' '
     EXCEPTIONS
       FOREIGN_LOCK         = 1
       SYSTEM_FAILURE       = 2
       OTHERS               = 3
              .
    IF sy-subrc <> 0.
* Implement suitable error handling here
    ENDIF.
    "Lock Object 생성 끝

    SELECT SINGLE * FROM spfli INTO wa_flight WHERE carrid = spfli-carrid
    AND connid = spfli-connid.
ENDCASE.

CLEAR ok_code. "다음 dynpro 에서도 ok_code 를 초기화하여 사용하기 위해 필요함

ENDMODULE.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
