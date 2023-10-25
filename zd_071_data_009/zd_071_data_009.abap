*&---------------------------------------------------------------------*
*& Report ZD_071_DATA_009
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_DATA_009.
TYPES: BEGIN OF flight_booking, "flight_booking 구조체의 작성 시작
* sbook 라는 ABAP Dictionary 의 CARRID,CONNID,FLDATE,BOOKID,CUSTOMID 구성체를 가져와 데이터 타입을 지정함
  carrid TYPE sbook-carrid,
  connid TYPE sbook-connid,
  fldate TYPE sbook-fldate,
  bookid TYPE sbook-bookid,
  customid TYPE sbook-customid,
  END OF flight_booking.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
