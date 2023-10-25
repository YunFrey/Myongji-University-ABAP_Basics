*----------------------------------------------------------------------*
***INCLUDE ZD_071_DYNPRO_STATUS_0110O01.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Module STATUS_0110 OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE status_0110 OUTPUT.
* SET PF-STATUS 'xxxxxxxx'.
* SET TITLEBAR 'xxx'.

  IF bsp_container IS INITIAL."bsp_container 가 비어있을 경우
    CREATE OBJECT bsp_container
      EXPORTING
         container_name = 'HTML_BSP'.
    CREATE OBJECT html_bsp
      EXPORTING
        parent = bsp_container.
  ENDIF.

*HTMLBSP 관련 변수 추가

  DATA : urlbsp TYPE string, "여기에 웹사이트의 URL 이 String 값으로 저장됨
        url TYPE url, "URL 타입으로 웹사이트의 URL을 저장한다
        l_appl TYPE string, "BSP Application 의 이름이 저장되는 공간
        l_page TYPE string, "BSp Page(htm)의 이름이 저장되는 공간
        t_pars TYPE tihttpnvp,  "HTMl Viewer Control 에서 시작 시 추가할 수 있는 옵션값이 저장되는 곳(필수)
        s_pars TYPE IHTTPNVP. "SAP-CLIENT 시작매개변수를 t_pars 테이블에 지정하기 위한 WorkArea
  CLEAR s_pars.

  l_appl = 'ZD_071_BSP'.
  l_page = 'htmlb_connections.htm'.
  s_pars-NAME = 'SAP-CLIENT'.
  s_pars-value = SY-MANDT.
  APPEND s_pars to t_pars. " WorkArea의 패러미터 정보를 t_pars 테이블에 넣음
*URL을 만드는 과정
  CALL METHOD cl_http_ext_webapp=>create_url_for_bsp_application
    EXPORTING
      bsp_application = l_appl
      bsp_start_page = l_page
      bsp_start_parameters = t_pars
    IMPORTING
      abs_url = urlbsp.

 url = urlbsp.

*로그인 정보 추가
 DATA loginfo TYPE string.
 loginfo = '&sap-user=zd-071&sap-password=yunfrey0917!'.

*URL에 로그인 정보 추가
 CONCATENATE url loginfo into url.


 CALL METHOD html_bsp->show_url
 EXPORTING
   url = url.

ENDMODULE.

----------------------------------------------------------------------------------
Extracted by Mass Download version 1.5.5 - E.G.Mellodew. 1998-2023. Sap Release 753
