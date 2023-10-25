*&---------------------------------------------------------------------*
*& Report ZD_071_SQL_06
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_SQL_06.

DATA : gv_carrid TYPE sflight-carrid,
      gv_connid TYPE sflight-connid,
      gv_paymentsum TYPE i.

*paymentsum 의 평균값 명령어를 사용하여 gv_paymentsum 변수에 넣음
SELECT carrid connid AVG( paymentsum )
  INTO (gv_carrid, gv_connid, gv_paymentsum)
  FROM sflight
  GROUP BY carrid connid. "carrid 와 connid 를 기준으로 그룹화

  WRITE : / gv_carrid, gv_connid, gv_paymentsum.
ENDSELECT.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
