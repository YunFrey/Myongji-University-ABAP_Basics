*&---------------------------------------------------------------------*
*& Report ZD_071_FLIGHTS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_FLIGHTS.

DATA it_flights TYPE TABLE OF spfli.
DATA wa_flight TYPE spfli.

SELECT * FROM spfli INTO TABLE it_flights.

IF sy-subrc = 0.
  LOOP AT it_flights INTO wa_flight.
  WRITE : / wa_flight-connid, wa_flight-cityfrom, wa_flight-countryfr,
          wa_flight-cityto, wa_flight-countryto.
  ENDLOOP.
ELSE.
  WRITE : 'SQL 쿼리문이 제대로 수행되지 않았습니다. 다시 실행해 주세요'.
ENDIF.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
