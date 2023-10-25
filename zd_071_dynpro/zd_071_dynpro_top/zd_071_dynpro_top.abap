*&---------------------------------------------------------------------*
*& Include ZD_071_DYNPRO_TOP                        - Module Pool      ZD_071_DYNPRO
*&---------------------------------------------------------------------*
PROGRAM ZD_071_DYNPRO.

TABLES spfli.

DATA : ok_code LIKE sy-ucomm,
      wa_flight TYPE spfli.

*HTML_BSP Custom Control 추가(screen 302)

DATA : html_bsp TYPE REF TO cl_gui_html_viewer,
      bsp_container TYPE REF TO cl_gui_custom_container.

DATA : html_tracking TYPE REF TO cl_gui_html_viewer,
      tracking_container TYPE REF TO cl_gui_custom_container.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
