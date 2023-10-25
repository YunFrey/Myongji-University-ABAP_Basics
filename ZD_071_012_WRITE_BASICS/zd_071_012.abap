*&---------------------------------------------------------------------*
*& Report ZD_071_012
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_012.
DATA v_number_a TYPE i.
DATA v_number_b LIKE v_number_a VALUE 2. "위 구문의 데이터 타입을 가져오고 2로 초기화
DATA v_result TYPE p .
START-OF-SELECTION.
v_number_a = 5.
v_result = v_number_a + v_number_b.
WRITE: 'Adition:', v_result . "number_a + number_b 값을 지수 형식으로 표현
NEW-LINE.
v_result = v_number_a - v_number_b.
WRITE: 'Subtraction:', v_result. "빼기
NEW-LINE.
v_result = v_number_a * v_number_b.
WRITE: 'Multiplication:', v_result. "곱하기
NEW-LINE.
v_result = v_number_a / v_number_b.
WRITE: 'Division:', v_result DECIMALS 1. "나누기
NEW-LINE.
v_result = v_number_a ** v_number_b.
WRITE: 'Power:', v_result. "제곱
NEW-LINE.

* 추가 연습
DATA v_number_aa TYPE i VALUE 7.
DATA v_number_bb LIKE v_number_a VALUE 3. "위 구문의 데이터 타입을 가져오고 2로 초기화
DATA v_resultt TYPE f.
v_result = v_number_a MOD v_number_b.
WRITE: '나머지구하기기:', v_result. "나머지
NEW-LINE.
v_result = v_number_a DIV v_number_b.
WRITE: '나눈수구하기:', v_result. "나눈수

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
