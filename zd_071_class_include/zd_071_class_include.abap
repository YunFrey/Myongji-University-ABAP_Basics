*&---------------------------------------------------------------------*
*& Include          Z_071_CLASS_INCLUDE
*&---------------------------------------------------------------------*
*클래스 선언
CLASS lcl_airplane DEFINITION.
  "공개 접근제어자
  PUBLIC SECTION.

  METHODS : set_attributes "set_attributes 메소드 생성
              IMPORTING "im_name 변수와 im_planetype 변수를 받음
                im_name TYPE string
                im_planetype TYPE string,

            get_attributes, "set_attributes 메소드 생성

            constructor. "생성자 메소드 생성

            "PRIVATE 변수의 정보를 얻는 메소드를 PUBLIC 에 선언
  CLASS-METHODS : get_no_of_planes
                    EXPORTING no_of_planes TYPE i.

  "PRIVATE 접근제어자
  PRIVATE SECTION.
  "gv_name 과 gv_planetype 라는 PRIVATE 변수 선언
  DATA : gv_name TYPE string,
         gv_planetype TYPE string.

  CLASS-DATA gv_no_of_planes TYPE i. "비행기 개수를 얻는 static 변수 PRIVATE 에 선언

ENDCLASS.


*클래스 정의
CLASS lcl_airplane IMPLEMENTATION.
  "생성자를 통해 변수에 +1씩 추가
  METHOD constructor.
    gv_no_of_planes = gv_no_of_planes + 1.
  ENDMETHOD.
  "비행기 대수 얻어 no_of_planes 변수에 저장
  METHOD get_no_of_planes.
    no_of_planes = gv_no_of_planes.
  ENDMETHOD.

  METHOD set_attributes.
    gv_name = im_name.
    gv_planetype = im_planetype.
  ENDMETHOD.

  METHOD get_attributes.
    WRITE : / '항공기 이름 : ', gv_name,
             '항공기 종류 : ', gv_planetype.
  ENDMETHOD.
ENDCLASS.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
