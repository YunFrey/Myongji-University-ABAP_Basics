*&---------------------------------------------------------------------*
*& Report ZD_071_SQL_08
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_SQL_08.

DATA : gv_carrid TYPE sflight-carrid,
      gv_connid TYPE sflight-connid,
      gv_paymentsum TYPE sflight-paymentsum.

SELECT SINGLE carrid connid paymentsum
  INTO (gv_carrid, gv_connid, gv_paymentsum)
  FROM sflight AS a "sflight 를 별칭 a 로 지정
* 쿼리문 안에 또 쿼리문 실행
  WHERE carrid IN ( SELECT carrid
                      FROM spfli
                      WHERE carrid = a~carrid
                      AND connid = a~connid )
  AND a~carrid = 'AA'.
  "carrid 를 SELECT 문에 집어넣은 결과와 a~carrid 가 AA인 조건을 합쳐서 WHERE 문 수행

  WRITE : gv_carrid, gv_connid, gv_paymentsum.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
