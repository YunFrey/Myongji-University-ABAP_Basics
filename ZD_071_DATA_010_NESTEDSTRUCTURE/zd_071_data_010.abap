*&---------------------------------------------------------------------*
*& Report ZD_071_DATA_010
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_DATA_010.
*008 과 009 에서 언급된 필드를 포함한 구조체를 정의하는 과정

TYPES : BEGIN OF some_components_sflight_2,
  carrid TYPE sflight-carrid,
  connid TYPE sflight-connid,
  fldate TYPE sflight-fldate,
  price TYPE sflight-price,
  currency TYPE sflight-currency,
  planetype TYPE sflight-planetype,
  seatsmax TYPE sflight-seatsmax,
  seatsocc TYPE sflight-seatsocc,
  END OF some_components_sflight_2.

TYPES : BEGIN OF flight_booking,
  carrid TYPE sbook-carrid,
  connid TYPE sbook-connid,
  fldate TYPE sbook-fldate,
  bookid TYPE sbook-bookid,
  customid TYPE sbook-customid,
  END OF flight_booking.

*여기까지 some_components_sflight_2 와 flight_booking 구성체에 대한 데이터타입 설정 끝

*두 구성체의 carrid 와 connid 와 fldate 는 같은 이름을 가지지못하므로
* 아래의 접미사를 flight_booking 로컬 구조체로부터 온 각 구성체에 붙이는 작업 시작

TYPES : BEGIN OF sflight_sbook.
  INCLUDE TYPE some_components_sflight_2.
  INCLUDE TYPE flight_booking AS book RENAMING WITH SUFFIX _book. "SUFFIX 뒤에 띄어쓰기 필수!
*sflight_sbook 구성체를 만들 때 some_components_sflight_@ 의 구성체는 그대로 가져오되
*flight_booking 구성체를 가져올 땐 book 이라는 접미사를 붙이는 코드임
  TYPES END OF sflight_sbook. "INCLUDE 구문 사용 시 TYPES END OF 를 사용해야함
*sflight_sbook 구성체 설정 완료

  START-OF-SELECTION. "차후 F8 버튼으로 실행 가능
  DATA one_record TYPE sflight_sbook. "one_record 에 sflight_sbook 타입을 가져옴
  BREAK-POINT. "브레이크 포인트 설정, 디버거에서 조회 가능


  WRITE '끝!'.


  WRITE icon_checked AS ICON .

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
