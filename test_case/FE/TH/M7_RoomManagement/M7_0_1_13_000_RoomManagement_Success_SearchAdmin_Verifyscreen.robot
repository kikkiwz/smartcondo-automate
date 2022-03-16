*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### Search Room details [Admin] ###################
M7_0_1_13_000_RoomManagement_Success_SearchAdmin_Verifyscreen [Verify screen page "Search Room details [Admin]"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click room details tab

    [Setup]    Open Browser To Login Page SCUser
   	
   Log To Console    ${\n}=========== Search Room details [Admin] ===============


Verify screen page "Search Room details [Admin]

	#Label: Account
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCHADMIN_LBL_ACCOUNT_LOCATOR}    ${ROOMMANAGEMENT_SEARCHADMIN_LBL_ACCOUNT_TH}
	# Wait Until Contains Element Should Be Enabled    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_ACCOUNT_LOCATOR}


	#Label: Property
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCHADMIN_LBL_PROPERTY_LOCATOR}    ${ROOMMANAGEMENT_SEARCHADMIN_LBL_PROPERTY_TH}
	Wait Until Contains Element Should Be Disabled    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_PROPERTY_LOCATOR}


	#Label: Building
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCHADMIN_LBL_BUILDING_LOCATOR}    ${ROOMMANAGEMENT_SEARCHADMIN_LBL_BUILDING_TH}
	Wait Until Contains Element Should Be Disabled    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_BUILDING_LOCATOR}


	#Btn: Search
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_BTN_SEARCH_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_BTN_SEARCH_TH}
	Wait Until Contains Element Should Be Enabled    ${ROOMMANAGEMENT_SEARCH_BTN_SEARCH_LOCATOR}

	#Btn: clear
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_BTN_CLEAR_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_BTN_CLEAR_TH}
	Wait Until Contains Element Should Be Enabled    ${ROOMMANAGEMENT_SEARCH_BTN_CLEAR_LOCATOR}



	# Account
	Select Dropdown    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_ACCOUNT_LOCATOR}    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_ACCOUNT_LIST_LOCATOR}    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_ACCOUNT_CLASS_LOCATOR}    ${ROOMMANAGEMENT_ACCOUNT_TH_VALUE1}
	Sleep    0.5s
	#Property
	Select Dropdown    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_PROPERTY_LOCATOR}    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_PROPERTY_LIST_LOCATOR}    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_PROPERTY_CLASS_LOCATOR}    ${ROOMMANAGEMENT_PROPERTY_TH_VALUE1}
	Sleep    0.5s
	#Building
	Select Dropdown    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_BUILDING_LOCATOR}    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_BUILDING_LIST_LOCATOR}    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_BUILDING_CLASS_LOCATOR}    ${ROOMMANAGEMENT_BUILDING_TH_VALUE1}
	Sleep    0.5s
	#Click Search
	Click Element Page    ${ROOMMANAGEMENT_SEARCH_BTN_SEARCH_LOCATOR}
	Sleep    1s

	#Check Remark
	Wait Element Visible    ${ROOMMANAGEMENT_SEARCHADMIN_LBL_REMARK_LOCATOR}

	${getText}=    Selenium2Library.Get Text    ${ROOMMANAGEMENT_SEARCHADMIN_LBL_FLOOR_LOCATOR}     
	Log To Console    GET TEXT ::: ${getText}   

	# Btn AddRoom
	Wait Until Contains Element Should Be Enabled    ${ROOMMANAGEMENT_SEARCHADMIN_BTN_ADDROOM_LOCATOR}

	# Btn AddFloor
	Wait Until Contains Element Should Be Enabled    ${ROOMMANAGEMENT_SEARCHADMIN_BTN_ADDFLOOR_LOCATOR}

	#================ Check Value RoomList ================
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchRoomManagement}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check Room Management    ${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_SEARCHROOMLIST_SCUSER}    ${ROOMMANAGEMENT_ACCOUNTID_VALUE}    ${ROOMMANAGEMENT_PROPERTYID_VALUE}    ${ROOMMANAGEMENT_BUILDINGID_VALUE}    null    ${ROOMMANAGEMENT_ORDERBY_VALUE}    
	Log To Console    resultSearchRoomManagement::${resultSearchRoomManagement} 

	${dataSearchRoomManagement}=    Set Variable    ${resultSearchRoomManagement}[0]
	Log To Console    [dataSearchRoomManagement] : ${dataSearchRoomManagement}
	${rowcountSearchRoomManagement}=    Set Variable    ${resultSearchRoomManagement}[1]
	Log To Console    [rowcount SearchRoomManagement] : ${rowcountSearchRoomManagement}
	${checkNodata}=    Run Keyword If    '${rowcountSearchRoomManagement}'!='0'    Check Value RoomList Admin    ${DEFAULT_TH}     ${rowcountSearchRoomManagement}    ${dataSearchRoomManagement}


	# Label: floor
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCHADMIN_LBL_FLOOR_LOCATOR}    ${ROOMMANAGEMENT_SEARCHADMIN_LBL_FLOOR_TH}

	#capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${ROOMMANAGEMENT_SEARCHADMIN_M7_0_1_13_000_SUCCESS_SCREENSHOT}


	#########################Close Browser#########################
	Close Browser