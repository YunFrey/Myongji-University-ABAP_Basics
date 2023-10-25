*----------------------------------------------------------------------*
***INCLUDE ZD_071_DYNPRO_STATUS_0303O01.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Module STATUS_0303 OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE status_0303 OUTPUT.
* SET PF-STATUS 'xxxxxxxx'.
* SET TITLEBAR 'xxx'.
    IF tracking_container IS INITIAL.
      CREATE OBJECT tracking_container
      EXPORTING container_name = 'HTML_TRACKING'.
      CREATE OBJECT html_tracking
      EXPORTING parent = tracking_container.
      ENDIF.

      DATA: flightnr TYPE i,
            flightnrc TYPE c LENGTH 4,
            urltrack TYPE c LENGTH 100.
      flightnr = wa_flight-connid.
      flightnrc = flightnr.
      CONCATENATE 'https://www.flightstats.com/v2/flight-tracker/'
      wa_flight-carrid '/' flightnrc INTO urltrack.
      CALL METHOD html_tracking->show_url
      EXPORTING url = urltrack.
ENDMODULE.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
