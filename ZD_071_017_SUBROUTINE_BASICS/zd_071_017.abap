*&---------------------------------------------------------------------*
*& Report ZD_071_017
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_017.

*ABAP 사전에 있는 usr04 테이블에서 bname 이라는 변수의 데이터타입을 가져와
*ty_users 데이터타입을 지정함

TYPES ty_users TYPE TABLE OF usr04-bname.

*it_users 변수를 만들고 ty_users 타입을 지정해줌
DATA it_users TYPE ty_users.

START-OF-SELECTION. "데이터 선언 끝

*usr04에 있는 bname 변수를 가져와 it_users 변수테이블에 붙여넣기
SELECT bname FROM usr04 INTO TABLE it_users.

*it_users 값을 사용하여 print_users 서브루틴을 불러옴
PERFORM print_users USING it_users.

*print_users 서브루틴 작성
*Actual Parameter 인 it_users 값을
*Formal Parameter us_t_users 로 변경하여 Import함
*us_t_users 는 ty_users 타입을 사용함

FORM print_users USING us_t_users TYPE ty_users.
DATA lwa_user TYPE LINE OF ty_users. "wa = Working Area 라는 임시메모리 변수 선언

*반복문, lwa_layer 테이블의 모든 데이터들을 작성하면서 줄바꿈하여 끝날때까지 실행
LOOP AT us_t_users INTO lwa_user.
WRITE lwa_user. "Internal Table 에 헤더라인이 있으면 이런 Working Area 를 굳이 안만들어도 됨
NEW-LINE.
ENDLOOP.

ENDFORM. "print_users

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
