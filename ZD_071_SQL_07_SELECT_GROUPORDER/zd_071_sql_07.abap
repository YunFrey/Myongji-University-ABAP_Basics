*&---------------------------------------------------------------------*
*& Report ZD_071_SQL_07
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_SQL_07.

DATA : gv_carrid TYPE sflight-carrid,
      gv_connid TYPE sflight-connid,
      gv_paymentsum TYPE i.

* carrid 항목과 connid 항목과 paymentsum 으로 별칭화한 paymentsum의 평균값만 도출하기

SELECT carrid connid AVG( paymentsum ) AS paymentsum
  INTO (gv_carrid, gv_connid, gv_paymentsum)"각 변수에 집어넣기
  FROM sflight
  GROUP BY carrid connid
  ORDER BY paymentsum.
  WRITE : / gv_carrid, gv_connid, gv_paymentsum.
ENDSELECT.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
