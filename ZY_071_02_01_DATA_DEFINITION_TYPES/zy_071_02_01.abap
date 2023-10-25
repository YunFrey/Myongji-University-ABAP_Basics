*&---------------------------------------------------------------------*
*& Report ZY_071_02_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZY_071_02_01.
*주석을 다는 단축키는 Ctrl+[,] 이다. 주석을 푸는 단축키는 Ctrl+[.] 이다.
*Type type 에서 데이터 변수의 타입 정의하기

*1) Predefined ABAP Type 을 이용한 변수 선언
DATA : gv_num   TYPE i,
      gv_deci   TYPE f.

*2) 프로그램의 Local Type 를 이용한 벼수 선언
*
TYPES : BEGIN of t_struct,
  col1 TYPE c,
  col2 TYPE i,
  col3 TYPE d,
  END OF t_struct.
* 1차원 배열의 t_struct 를 만들었음, 아래부터는 gs_struct Data Object 에 t_struct 라는 TYPE 집어넣기
DATA : gs_struct TYPE t_struct.

*3) ABAP Dictionary 의 Type 를 이용한 변수 선언
DATA : gv_carrid TYPE s_carr_id,
      gv_connid TYPE sflight-carrid,
      gv_matnr TYPE mara-matnr.

* DATA 구문 종류

* [TYPE type]
DATA gv_num1   TYPE i.
DATA gv_num2   TYPE i.
* 위는 아래와 같이 묶일 수 있음
DATA :gv_num1f TYPE i,
      gv_num2f TYPE i.

* [LIKE num]
DATA : gv_num3    LIKE gv_num1.
*gv_num1와 동일한 타입의 변수 선언 시 사용 (gv_num = [i타입의 데이터]) 만 있음

*[VALUE int]
DATA : gv_num4   TYPE i VALUE 123,
*      int 값에 123 초기화하기
      gv_flag VALUE 'X',
*      type 없이 문자 X로 초기화
      gv_val  VALUE IS INITIAL.
*      기본 초기화 값으로 초기화
* CONSTANTS 변수 선언 시 VALUE 옵션은 필수임

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
