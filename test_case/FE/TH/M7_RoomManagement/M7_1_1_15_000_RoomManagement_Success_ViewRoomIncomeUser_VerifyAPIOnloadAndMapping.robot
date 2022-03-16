*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [View] Room Management ###################
M7_1_1_15_000_RoomManagement_Success_ViewRoomIncomeUser_VerifyAPIOnloadAndMapping [Verify API Onload "View Room User - Income"]
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
	

Verify API Onload and mapping data after click Bank Account Management

	#Click Room
	Click Element Page  ${ROOMMANAGEMENT_SEARCH_BTN_ROOMA103_LOCATOR}

    #Click Room Detail
	Click Element Page  ${ROOMMANAGEMENT_SEARCH_LBL_ROOMDETAILS_LOCATOR}

	#Click incom Detail
	Click Element Page  ${ROOMMANAGEMENT_SEARCH_LBL_INCOMEDETAILS_LOCATOR}

    #================ Check Value Table ================
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchGetIncomeDetail}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check Room Management    ${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_INCOMEDETAIL}    null    null    null    ${ROOMMANAGEMENT_ROOMID_VALUE}    null
	${dataSearchGetIncomeDetail}=    Set Variable    ${resultSearchGetIncomeDetail}[0]
	Log To Console    [dataSearchGetIncomeDetail] : ${dataSearchGetIncomeDetail}
	${rowcountGetIncomeDetail}=    Set Variable    ${resultSearchGetIncomeDetail}[1]
	Log To Console    [rowcount rowcountGetIncomeDetail] : ${rowcountGetIncomeDetail}

	${checkNodata}=    Run Keyword If    '${rowcountGetIncomeDetail}'=='0'    Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_VIEW_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountGetIncomeDetail}'!='0'    Check Value Table View Income Detail    ${DEFAULT_TH}     ${rowcountGetIncomeDetail}    ${dataSearchGetIncomeDetail}
    
	#Click Close
	Click Element Page  ${ROOMMANAGEMENT_BTN_CLOSE_LOCATOR}

	
	#capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${ROOMMANAGEMENT_VIEWROOMUSER_M7_1_1_15_000_SUCCESS_SCREENSHOT}

	################### Close Browser ###################
    Close Browser