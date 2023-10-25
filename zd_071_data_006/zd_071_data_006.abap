*&---------------------------------------------------------------------*
*& Report ZD_071_DATA_006
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZD_071_DATA_006.
TYPES customer_name TYPE c LENGTH 10.
*customer name 데이터 타입에 10자리 이하의 캐릭터 타입을 지정
DATA number_of_employees TYPE i.
*number_of_employees 변수에 정수 타입의 데이터 타입을 지정
TYPES number_of_unpaid_invoices TYPE n LENGTH 7.
*number_of_unpaid_incoives 타입에 7자리 이하의 문자형 수치데이터를 지정
TYPES creation_date TYPE d.
*creation_date 타입에 날짜 타입의 데이터를 지정
TYPES last_changed_at TYPE t.
*last_changed_at 타입에 시간 타입의 데이터를 지정

*여기서부터 구조체 입력
TYPES : BEGIN OF customer_structure, "연속 입력 시 , 로 구문별 구분함
  name TYPE customer_name, "구조 내 name 변수에 customer_name 타입을 참조하게 함
  n_employees LIKE number_of_employees, "구조 내 n_employees 변수에 number_of_employees 변수의 타입을 가져와 사용하기
  unpaid_invoices TYPE number_of_unpaid_invoices, "구조 내 unpaid_invoices 변수에 number_of_unpaid 타입을 참조하게 함
  creation_date TYPE d, "creation_date 타입에 날짜 타입을 지정
  last_changed_at TYPE t, "last_changed_at 변수에 시간 타입을 지정
  END OF customer_structure. "customer_structure 구조체 작성 종료

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
