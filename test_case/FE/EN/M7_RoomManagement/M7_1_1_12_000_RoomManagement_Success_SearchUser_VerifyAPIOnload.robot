*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Search] Room Management ###################
M7_1_1_12_000_RoomManagement_Success_SearchUser_VerifyAPIOnload [VerifyAPIOnload "Room Management"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click User Account

    [Setup]    Open Browser To Login Page Super Admin EN

    #========== Click Building ======
	Click building 


Verify API Onload and mapping data after click choose property	

	#================ Check Value RoomList ================
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchRoomManagement}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check Room Management    ${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_SEARCHALL}    null    ${ROOMMANAGEMENT_PROPERTYID_VALUE}    ${ROOMMANAGEMENT_BUILDINGID_VALUE}    null    ${ROOMMANAGEMENT_ORDERBY_VALUE}
	# Log To Console    resultSearchRoomManagement::${resultSearchRoomManagement} 


	${dataSearchRoomManagement}=    Set Variable    ${resultSearchRoomManagement}[0]
	Log To Console    [dataSearchRoomManagement] : ${dataSearchRoomManagement}
	${rowcountSearchRoomManagement}=    Set Variable    ${resultSearchRoomManagement}[1]
	Log To Console    [rowcount SearchRoomManagement] : ${rowcountSearchRoomManagement}


	${checkNodata}=    Run Keyword If    '${rowcountSearchRoomManagement}'!='0'    Check Value RoomList EN    ${DEFAULT_EN}     ${rowcountSearchRoomManagement}    ${dataSearchRoomManagement}
    

	#capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${ROOMMANAGEMENT_SEARCHUSER_M7_1_1_12_000_SUCCESS_SCREENSHOT}

	################### Close Browser ###################
    Close Browser









