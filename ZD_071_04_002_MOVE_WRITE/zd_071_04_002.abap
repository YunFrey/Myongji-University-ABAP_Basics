*&---------------------------------------------------------------------*
*& Report ZD_071_04_002
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_04_002.
DATA gv_f0.
MOVE : 'KOREA' TO gv_f0.
* gv_f0 = 'KOREA'. 와 동일한 기능 수행
WRITE : / gv_f0.
* 결과 : K 만 출력됨 c의 기본 길이는 Character 1자리이기 때문

DATA gv_f1(5).
* DATA gv_f1 LENGTH 5. 와 동일
MOVE : 'KOREA' to gv_f1.
WRITE : / gv_f1.
* 결과 : KOREA

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
