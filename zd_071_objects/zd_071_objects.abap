*&---------------------------------------------------------------------*
*& Report Z_071_OBJECTS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_OBJECTS.

INCLUDE ZD_071_CLASS_INCLUDE.

*lcl_airplane 클래스를 참조하여 r_plane 변수와 인터널 테이블 생성
DATA : r_plane TYPE REF TO lcl_airplane,
      it_plane_list TYPE TABLE OF REF TO lcl_airplane.

*데이터 정의 끝, 메인 명령 시작
START-OF-SELECTION.

*r_plane 변수를 사용해 인스턴스 생성
*객체 생성 1
CREATE OBJECT r_plane.
r_plane->set_attributes(
 EXPORTING
   im_name = 'Hamburg'
   im_planetype = 'Boeing 737' ).
 APPEND r_plane TO it_plane_list. "만든 객체정보를 테이블에 저장
*객체 생성
CREATE OBJECT r_plane.
 r_plane->set_attributes(
 EXPORTING
   im_name = 'Munich'
   im_planetype = 'Airbus 380' ).
 APPEND r_plane TO it_plane_list. "만든 객체정보를 테이블에 저장

*인터널 테이블의 값을 긁어와 r_plane 변수에 넣고 get_attriutes 메소드에 집언허기
 LOOP AT it_plane_list INTO r_plane.
   r_plane->get_attributes( ). "주의, () 사이에 공백 꼭 있어야함
   ENDLOOP.

DATA lv_no_of_planes TYPE i.

CALL METHOD lcl_airplane=>get_no_of_planes "클래스 메소드 접근
 IMPORTING
   no_of_planes = lv_no_of_planes.
   WRITE : / '비행기 대수 : ', lv_no_of_planes.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
