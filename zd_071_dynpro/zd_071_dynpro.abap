*&---------------------------------------------------------------------*
*& Module Pool      ZD_071_DYNPRO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*

INCLUDE ZD_071_DYNPRO_TOP                       .    " Global Data

* INCLUDE ZD_071_DYNPRO_O01                       .  " PBO-Modules
* INCLUDE ZD_071_DYNPRO_I01                       .  " PAI-Modules
* INCLUDE ZD_071_DYNPRO_F01                       .  " FORM-Routines

INCLUDE zd_071_dynpro_status_0100o01.

INCLUDE zd_071_dynpro_user_command_i01.

INCLUDE zd_071_dynpro_status_0200o01.

INCLUDE zd_071_dynpro_user_command_i02.


INCLUDE zd_071_dynpro_status_0300o01.

INCLUDE zd_071_dynpro_user_command_i03.

INCLUDE zd_071_dynpro_status_0110o01.

INCLUDE zd_071_dynpro_status_0303o01.

*&SPWIZARD: FUNCTION CODES FOR TABSTRIP 'MYTABSTRIP'
CONSTANTS: BEGIN OF C_MYTABSTRIP,
             TAB1 LIKE SY-UCOMM VALUE 'MYTABSTRIP_FC1',
             TAB2 LIKE SY-UCOMM VALUE 'MYTABSTRIP_FC2',
             TAB3 LIKE SY-UCOMM VALUE 'MYTABSTRIP_FC3',
           END OF C_MYTABSTRIP.
*&SPWIZARD: DATA FOR TABSTRIP 'MYTABSTRIP'
CONTROLS:  MYTABSTRIP TYPE TABSTRIP.
DATA:      BEGIN OF G_MYTABSTRIP,
             SUBSCREEN   LIKE SY-DYNNR,
             PROG        LIKE SY-REPID VALUE 'ZD_071_DYNPRO',
             PRESSED_TAB LIKE SY-UCOMM VALUE C_MYTABSTRIP-TAB1,
           END OF G_MYTABSTRIP.
"DATA:      OK_CODE LIKE SY-UCOMM.

*&SPWIZARD: OUTPUT MODULE FOR TS 'MYTABSTRIP'. DO NOT CHANGE THIS LINE!
*&SPWIZARD: SETS ACTIVE TAB
MODULE MYTABSTRIP_ACTIVE_TAB_SET OUTPUT.
  MYTABSTRIP-ACTIVETAB = G_MYTABSTRIP-PRESSED_TAB.
  CASE G_MYTABSTRIP-PRESSED_TAB.
    WHEN C_MYTABSTRIP-TAB1.
      G_MYTABSTRIP-SUBSCREEN = '0200'.
    WHEN C_MYTABSTRIP-TAB2.
      G_MYTABSTRIP-SUBSCREEN = '0302'.
    WHEN C_MYTABSTRIP-TAB3.
      G_MYTABSTRIP-SUBSCREEN = '0303'.
    WHEN OTHERS.
*&SPWIZARD:      DO NOTHING
  ENDCASE.
ENDMODULE.

*&SPWIZARD: INPUT MODULE FOR TS 'MYTABSTRIP'. DO NOT CHANGE THIS LINE!
*&SPWIZARD: GETS ACTIVE TAB
MODULE MYTABSTRIP_ACTIVE_TAB_GET INPUT.
  OK_CODE = SY-UCOMM.
  CASE OK_CODE.
    WHEN C_MYTABSTRIP-TAB1.
      G_MYTABSTRIP-PRESSED_TAB = C_MYTABSTRIP-TAB1.
    WHEN C_MYTABSTRIP-TAB2.
      G_MYTABSTRIP-PRESSED_TAB = C_MYTABSTRIP-TAB2.
    WHEN C_MYTABSTRIP-TAB3.
      G_MYTABSTRIP-PRESSED_TAB = C_MYTABSTRIP-TAB3.
    WHEN OTHERS.
*&SPWIZARD:      DO NOTHING
  ENDCASE.
ENDMODULE.

*GUI Texts
*----------------------------------------------------------
* 100 --> Choose a connection
* 200 --> Connection details

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
