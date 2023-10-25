*&---------------------------------------------------------------------*
*& Report ZD_071_013
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_013.
*패러미터로 a값과 b값을 입력받음
PARAMETERS p_num_a TYPE i DEFAULT 5.
PARAMETERS p_num_b LIKE p_num_a DEFAULT 2.
*v_result 라는 결과값 변수를 만듬
DATA v_result TYPE p DECIMALS 1.

START-OF-SELECTION.

v_result = p_num_a + p_num_b.
WRITE: 'Addition:', v_result.
NEW-LINE.
v_result = p_num_a - p_num_b.
WRITE: 'Subtraction:', v_result.
NEW-LINE.
v_result = p_num_a * p_num_b.
WRITE: 'Multiplication:', v_result.
NEW-LINE.
v_result = p_num_a / p_num_b.
WRITE: 'Division:', v_result.
NEW-LINE.
v_result = p_num_a ** p_num_b.
WRITE: 'Power:', v_result.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
