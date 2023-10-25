****************************************************************																																
*   This file was generated by Direct Download Enterprise.     *																																
*   Please do not change it manually.                          *																																
****************************************************************																																
%_DYNPRO																																
ZD_071_DYNPRO																																
0300																																
753																																
                40																																
%_HEADER																																
ZD_071_DYNPRO                           0300 0300      0  0192 37  0  0 27122  0G E                              20230111003928																																
%_DESCRIPTION																																
Screen Including Tabstrip and subscreen.																																
%_FIELDS																																
MYTABSTRIP			 80	08	30	00	00	00	  1	  2	J	101	  1	  1		 20	I				  4	  8										
MYTABSTRIP_TAB1		CHAR	 17	00	00	08	30	00	  1	  1	I	101	  1	  1		  0	P				  0	  0	105	MYTABSTRIP_SCA						Details in screen	                                                                                                                                                                        MYTABSTRIP_FC1	
MYTABSTRIP_TAB2		CHAR	 14	00	00	08	30	00	  1	  2	I	101	  1	  1		  0	P				  0	  0	106	MYTABSTRIP_SCA						Details in web	                                                                                                                                                                        MYTABSTRIP_FC2	
MYTABSTRIP_TAB3		CHAR	 18	00	00	08	30	00	  1	  3	I	101	  1	  1		  0	P				  0	  0	102	MYTABSTRIP_SCA						Real time tracking	                                                                                                                                                                        MYTABSTRIP_FC3	
MYTABSTRIP_SCA			 78	00	F0	00	00	00	  3	  3	I	101	  0	  0		 17	B				  3	  5	103									
OK_CODE		CHAR	 20	80	10	08	00	00	255	  1	O	  0	  0	  0		  0					  0	  0								____________________		
%_FLOWLOGIC																																
PROCESS BEFORE OUTPUT.																																
*&SPWIZARD: PBO FLOW LOGIC FOR TABSTRIP 'MYTABSTRIP'																																
  MODULE MYTABSTRIP_ACTIVE_TAB_SET.																																
  CALL SUBSCREEN MYTABSTRIP_SCA																																
    INCLUDING G_MYTABSTRIP-PROG G_MYTABSTRIP-SUBSCREEN.																																
 MODULE STATUS_0300.																																
*																																
PROCESS AFTER INPUT.																																
*&SPWIZARD: PAI FLOW LOGIC FOR TABSTRIP 'MYTABSTRIP'																																
  CALL SUBSCREEN MYTABSTRIP_SCA.																																
  MODULE MYTABSTRIP_ACTIVE_TAB_GET.																																
MODULE USER_COMMAND_0300.																																
