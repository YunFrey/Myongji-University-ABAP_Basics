*----------------------------------------------------------------------*
***INCLUDE ZD_071_DYNPRO_USER_COMMAND_I02.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0200  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_0200 INPUT.

"이전 스크린에서 건 Shared Lock 풀기
  CALL FUNCTION 'DEQUEUE_EZ_SPFLI'
   EXPORTING
     MODE_SPFLI       = 'S'
     MANDT            = SY-MANDT
     CARRID           = spfli-carrid
     CONNID           = spfli-connid
            .

  CASE ok_code.
    "WHEN 'LEAVE'.
      "LEAVE PROGRAM.
    "WHEN 'BACK'.
    WHEN 'SAVE'.
      IF spfli <> wa_flight.
        "데이타가 다를 경우 Save 시작
                " DB 수정을 위해 Exclusive Lock 걸기
         	 CALL FUNCTION 'ENQUEUE_EZ_SPFLI'
           EXPORTING
             MODE_SPFLI           = 'E'
             MANDT                = SY-MANDT
             CARRID               = spfli-carrid
             CONNID               = spfli-connid
           EXCEPTIONS
             FOREIGN_LOCK         = 1
             SYSTEM_FAILURE       = 2
             OTHERS               = 3
                    .
          IF sy-subrc <> 0.
* Implement suitable error handling here
          ENDIF.

        MODIFY spfli FROM spfli.
      ENDIF.

      "Exclusive Lock 풀기
      CALL FUNCTION 'DEQUEUE_EZ_SPFLI'
       EXPORTING
         MODE_SPFLI       = 'E'
         MANDT            = SY-MANDT
         CARRID           = spfli-carrid
         CONNID           = spfli-connid
                .
   ENDCASE.

   CLEAR ok_code.

ENDMODULE.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
