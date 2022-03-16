*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Search] Room Management ###################
M7_0_1_15_000_RoomManagement_Success_ViewRoomIncomeUser_VerifyScreen [Verify screen page "View Room User - Income"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click User Account

    [Setup]    Open Browser To Login Page Super Admin
   	
    #========== Click Building ======
	Click building 
	

Verify screen page View Room-income User
	#Click Room
	Click Element Page  ${ROOMMANAGEMENT_SEARCH_BTN_ROOMA103_LOCATOR}

    #Click Room Detail
	Click Element Page  ${ROOMMANAGEMENT_SEARCH_LBL_ROOMDETAILS_LOCATOR}

	#Click incom Detail
	Click Element Page  ${ROOMMANAGEMENT_SEARCH_LBL_INCOMEDETAILS_LOCATOR}


    #Room no header
    Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_VIEW_LBL_HEADERPOPUPVIEW_ROOMNOHEADER_LOCATOR}    ${ROOMMANAGEMENT_VIEW_LBL_HEADERPOPUPVIEW_ROOMA103_TH}


    #Room detail
    Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_ROOMDETAIL_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_ROOMDETAIL_TH}

    #Income details
    Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_INCOMEDETAILS_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_INCOMEDETAILS_TH}

    #Income code
    Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_VIEW_LBL_COLUM_INCOMECODE_LOCATOR}    ${ROOMMANAGEMENT_VIEW_LBL_COLUM_INCOMECODE_TH}
    Sleep    2s
    #Income name
    Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_VIEW_LBL_COLUM_INCOMENAME_LOCATOR}    ${ROOMMANAGEMENT_VIEW_LBL_COLUM_INCOMENAME_TH}

    #Click Close
	Click Element Page    ${ROOMMANAGEMENT_BTN_CLOSE_LOCATOR}


    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${ROOMMANAGEMENT_VIEWROOMUSER_M7_0_1_15_000_SUCCESS_SCREENSHOT}


	#########################Close Browser#########################
	Close Browser