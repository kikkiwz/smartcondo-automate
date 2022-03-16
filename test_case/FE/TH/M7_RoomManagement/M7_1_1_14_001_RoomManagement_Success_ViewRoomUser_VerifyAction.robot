*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [View] Room Management ###################
M7_1_1_14_001_RoomManagement_Success_ViewRoomUser_VerifyAction [Verify Action "View Room User"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. click choose property
    ...    4. click choose room
    ...    5. click Room details button in popup-room
    ...    6. click Room detail button

    [Setup]    Open Browser To Login Page Super Admin
   	
    #========== Click Building ======
	Click building 
	


Verify Action : click Room details button
	#Click Room
	Click Element Page  ${ROOMMANAGEMENT_SEARCH_BTN_ROOMA103_LOCATOR}

	#Click Room Detail
	Click Element Page  ${ROOMMANAGEMENT_SEARCH_LBL_ROOMDETAILS_LOCATOR}

    #Room no header
    Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_VIEW_LBL_HEADERPOPUPVIEW_ROOMNOHEADER_LOCATOR}    ${ROOMMANAGEMENT_VIEW_LBL_HEADERPOPUPVIEW_ROOMA103_TH}

    #Room detail
    Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_ROOMDETAIL_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_ROOMDETAIL_TH}

    #Room detail
    Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_ROOMDETAIL_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_ROOMDETAIL_TH}

    #Income details
    Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_INCOMEDETAILS_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_INCOMEDETAILS_TH}

    #Room no
    Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_ROOM_NO_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_ROOM_NO_TH}
    Selenium2Library.Element Should Be Disabled    ${ROOMMANAGEMENT_SEARCH_TXT_ROOM_NO_LOCATOR}    

    #House no
    Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_HOUSE_NO_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_HOUSE_NO_TH}
    Selenium2Library.Element Should Be Disabled    ${ROOMMANAGEMENT_SEARCH_TXT_HOUSE_NO_LOCATOR}

    #S Area (square meter)
    Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_SAREA_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_SAREA_TH}
    Selenium2Library.Element Should Be Disabled    ${ROOMMANAGEMENT_SEARCH_TXT_SAREA_LOCATOR}


    #Proprietary ratio
    Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_PROPRIETARYRATIO_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_PROPRIETARYRATIO_TH}
    Selenium2Library.Element Should Be Disabled    ${ROOMMANAGEMENT_SEARCH_TXT_PROPRIETARYRATIO_LOCATOR}


    #Water meter no
    Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_WATERMETERNO_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_WATERMETERNO_TH}
    Selenium2Library.Element Should Be Disabled    ${ROOMMANAGEMENT_SEARCH_TXT_WATERMETERNO_LOCATOR}


    #Electric meter no
    Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_ELECTRICMETERNO_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_ELECTRICMETERNO_TH}
    Selenium2Library.Element Should Be Disabled    ${ROOMMANAGEMENT_SEARCH_TXT_ELECTRICMETERNO_LOCATOR}


    #Water meter limit unit
    Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_WATERMETERLIMITUNIT_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_WATERMETERLIMITUNIT_TH}
    Selenium2Library.Element Should Be Disabled    ${ROOMMANAGEMENT_SEARCH_TXT_WATERMETERLIMITUNIT_LOCATOR}


    #Electric meter limit unit
    Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_ELECTRICMETERLIMITUNIT_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_ELECTRICMETERLIMITUNIT_TH}
    Selenium2Library.Element Should Be Disabled    ${ROOMMANAGEMENT_SEARCH_TXT_ELECTRICMETERLIMITUNIT_LOCATOR}



Verify action : click Income details button
    Click Element Page  ${ROOMMANAGEMENT_SEARCH_LBL_INCOMEDETAILS_LOCATOR}



Verify action : click X button
    Click Element Page  ${ROOMMANAGEMENT_BTN_CLOSE_LOCATOR}


    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${ROOMMANAGEMENT_VIEWROOMUSER_M7_1_1_14_001_SUCCESS_SCREENSHOT}

	################### Close Browser ###################
    Close Browser