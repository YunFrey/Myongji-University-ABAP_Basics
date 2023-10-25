*&---------------------------------------------------------------------*
*& Report ZD_071_STUDENT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zd_071_student.

*str_student 구조체 생성 (name | family_name | students_id)

TYPES : BEGIN OF str_student,
          name(40)        TYPE c,
          family_name(40) TYPE c,
          students_id(10) TYPE n,
        END OF str_student.

*student 변수를 만들어 str_student 구조를 참조한다.
DATA student TYPE str_student.

* str_student 구성체에 데이터값 집어넣는 과정
student-name = 'Max'.
student-family_name = 'Mueller'.
student-students_id = '0123456789'.

* 구성체의 필드에 값을 집어넣기
write : / 'Name: ',student-name, / 'Family name: ', student-family_name, / 'Students ID: ', student-students_id.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
