*&---------------------------------------------------------------------*
*& Report ZD_071_DATA_008
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_DATA_008.

* 한줄씩 타입 지정하는 방법
TYPES BEGIN OF some_components_sflight.
  TYPES carrid TYPE sflight-carrid. "some_components_sflight 의 carrid 구성체를 sflight 테이블의 carrid 구성체의 타입으로 지정
  TYPES connid TYPE sflight-connid.
  TYPES fldate TYPE sflight-fidate.
  TYPES price TYPE sflight-price.
  TYPES currency TYPE sflight-currency.
  TYPES planetype TYPE sflight-currency.
  TYPES seatsmax TYPE sflight-seatsmax.
  TYPES seatsoccupied TYPE sflight_seatsocc.
  TYPES END OF some_components_sflight.

* : 을 사용하여 연속 입력 (주의점 : . 대신 쉼표를 사용 / : TYPES 연속 입력 제외)

  TYPES : BEGIN OF some_components_sflight_2,
  carrid TYPE sflight-carrid, "some_components_sflight 의 carrid 구성체를 sflight 테이블의 carrid 구성체의 타입으로 지정
  connid TYPE sflight-connid,
  fldate TYPE sflight-fidate,
  price TYPE sflight-price,
  currency TYPE sflight-currency,
  planetype TYPE sflight-currency,
  seatsmax TYPE sflight-seatsmax,
  seatsoccupied TYPE sflight_seatsocc,
  END OF some_components_sflight_2. "마지막에는 온점으로 구문 끝내기

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
