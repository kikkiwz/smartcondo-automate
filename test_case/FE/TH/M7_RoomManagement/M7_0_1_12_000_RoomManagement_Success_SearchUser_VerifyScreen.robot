*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Search] Room Management ###################
M7_0_1_12_000_RoomManagement_Success_SearchUser_VerifyScreen [Verify screen page "Room Management"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click User Account

    [Setup]    Open Browser To Login Page Super Admin
   	
    #========== Click Building ======
	Click building 
	
Prepare Data
	#Search data For Get Count All Room
	${convertStrAccountId}=    Convert To String    ${accountId}
	${selectStatementGetCountAllRoom}=    Replace String    ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_GETCOUNTROOMLISTALL}    [account_id]    ${convertStrAccountId}
	${selectStatementGetCountAllRoom}=    Replace String    ${selectStatementGetCountAllRoom}    [property_id]    ${ROOMMANAGEMENT_PROPERTYID_VALUE}
	${selectStatementGetCountAllRoom}=    Replace String    ${selectStatementGetCountAllRoom}    [building_id]    ${ROOMMANAGEMENT_BUILDINGID_VALUE}
	Log To Console    [rooms : resultQuery] : ${selectStatementGetCountAllRoom}
	#[(), 0]
    # queryResults,rowCount
    @{resultGetCountAllRoom}=    Start Connect To MySql Query All List    ${selectStatementGetCountAllRoom}    ${selectStatementGetCountAllRoom}
	# Log To Console    [rooms] Request Verify DB Check Data Room list All : ${resultGetCountAllRoom}
	${dataResultGetCountAllRoom}=    Set Variable    ${resultGetCountAllRoom}[0]
	Log To Console    [result : GetCountAllRoom] : ${dataResultGetCountAllRoom}
	${rowCountGetCountAllRoom}=    Set Variable    ${resultGetCountAllRoom}[1]
	# Log To Console    [rowCount : GetCountAllRoom] : ${rowCountGetCountAllRoom}
	${CountAllRoom}=    Set Variable    ${dataResultGetCountAllRoom}[0][0]
	Log To Console    [CountAllRoom] : ${CountAllRoom}
	${CountAllRoomStr}=    Convert To String    ${CountAllRoom}
	Set Global Variable    ${CountAllRoomGlobal}    ${CountAllRoomStr}
	
	
	#Search data For Get Count Empty Room
	${convertStrAccountId}=    Convert To String    ${accountId}
	${selectStatementGetCountEmptyRoom}=    Replace String    ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_GETCOUNTEMPTYROOM}    [account_id]    ${convertStrAccountId}
	Log To Console    [GetCountEmptyRoom : resultQuery] : ${selectStatementGetCountEmptyRoom}
	#[(), 0]
    # queryResults,rowCount
    @{resultGetCountEmptyRoom}=    Start Connect To MySql Query All List    ${selectStatementGetCountEmptyRoom}    ${selectStatementGetCountEmptyRoom}
	# Log To Console    [GetCountEmptyRoom] Request Verify DB Check Data Room list All : ${resultGetCountEmptyRoom}
	${dataResultGetCountEmptyRoom}=    Set Variable    ${resultGetCountEmptyRoom}[0]
	Log To Console    [result : GetCountEmptyRoom] : ${dataResultGetCountEmptyRoom}
	${rowCountGetCountEmptyRoom}=    Set Variable    ${resultGetCountEmptyRoom}[1]
	# Log To Console    [rowCount : GetCountEmptyRoom] : ${rowCountGetCountEmptyRoom}
	${CountEmptyRoom}=    Set Variable    ${dataResultGetCountEmptyRoom}[0][0]
	Log To Console    [CountEmptyRoom] : ${CountEmptyRoom}
	${CountEmptyRoomStr}=    Convert To String    ${CountEmptyRoom}
	Set Global Variable    ${CountEmptyRoomGlobal}    ${CountEmptyRoomStr}


	#Search data For Get Count Tranfer Room
	${convertStrAccountId}=    Convert To String    ${accountId}
	${selectStatementGetCountTranferRoom}=    Replace String    ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_GETCOUNTTRANFERROOM}    [account_id]    ${convertStrAccountId}
	Log To Console    [GetCountTranferRoom : resultQuery] : ${selectStatementGetCountTranferRoom}
	#[(), 0]
    # queryResults,rowCount
    @{resultGetCountTranferRoom}=    Start Connect To MySql Query All List    ${selectStatementGetCountTranferRoom}    ${selectStatementGetCountTranferRoom}
	# Log To Console    [GetCountTranferRoom] Request Verify DB Check Data Room list All : ${resultGetCountTranferRoom}
	${dataResultGetCountTranferRoom}=    Set Variable    ${resultGetCountTranferRoom}[0]
	Log To Console    [result : GetCountTranferRoom] : ${dataResultGetCountTranferRoom}
	${rowCountGetCountTranferRoom}=    Set Variable    ${resultGetCountTranferRoom}[1]
	# Log To Console    [rowCount : GetCountTranferRoom] : ${rowCountGetCountTranferRoom}
	${CountTranferRoom}=    Set Variable    ${dataResultGetCountTranferRoom}[0][0]
	Log To Console    [CountTranferRoom] : ${CountTranferRoom}
	${CountTranferRoomStr}=    Convert To String    ${CountTranferRoom}
	Set Global Variable    ${CountTranferRoomGlobal}    ${CountTranferRoomStr}



Verify screen page Search Room details [User]

	${getText}=    Get Text String    ${ROOMMANAGEMENT_SEARCH_LBL_TOTALROOM_LOCATOR}
	Log To Console    getText:${getText}

	#ห้องทั้งหมด xx ห้อง
	${replaceTotalroom}=    Replace String    ${ROOMMANAGEMENT_SEARCH_LBL_TOTALROOM_TH}    [totalroom]    ${CountAllRoomGlobal}   
	Log To Console    replaceTotalroom::${replaceTotalroom}     
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_TOTALROOM_LOCATOR}    ${replaceTotalroom}

	#Label: Status
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_STATUS_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_STATUS_TH}

	#Btn: Search
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_BTN_SEARCH_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_BTN_SEARCH_TH}
	Wait Until Contains Element Should Be Enabled    ${ROOMMANAGEMENT_SEARCH_BTN_SEARCH_LOCATOR}

	#Btn: clear
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_BTN_CLEAR_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_BTN_CLEAR_TH}
	Wait Until Contains Element Should Be Enabled    ${ROOMMANAGEMENT_SEARCH_BTN_CLEAR_LOCATOR}

	#Label: floor
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_FLOOR_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_FLOOR_TH}

	#================ Check Value RoomList ================
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchRoomManagement}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check Room Management    ${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_SEARCHALL}    null    ${ROOMMANAGEMENT_PROPERTYID_VALUE}    ${ROOMMANAGEMENT_BUILDINGID_VALUE}    null    ${ROOMMANAGEMENT_ORDERBY_VALUE}
	Log To Console    resultSearchRoomManagement::${resultSearchRoomManagement} 

	${dataSearchRoomManagement}=    Set Variable    ${resultSearchRoomManagement}[0]
	Log To Console    [dataSearchRoomManagement] : ${dataSearchRoomManagement}
	${rowcountSearchRoomManagement}=    Set Variable    ${resultSearchRoomManagement}[1]
	Log To Console    [rowcount SearchRoomManagement] : ${rowcountSearchRoomManagement}
	${checkNodata}=    Run Keyword If    '${rowcountSearchRoomManagement}'!='0'    Check Value RoomList    ${DEFAULT_TH}     ${rowcountSearchRoomManagement}    ${dataSearchRoomManagement}

 
Verify hover in display : Transferred x room
	# จำนวนห้องโอนแล้ว [count] ห้อง
	${replaceTotalTranferRoom}=    Replace String    ${ROOMMANAGEMENT_SEARCH_LBL_TOTALROOMTANFER_TH}    [count]    ${CountTranferRoomGlobal}
	Log To Console    replaceTotalTranferRoom:${replaceTotalTranferRoom}
	Wait Until Contains Element Should Be Visible    ${ROOMMANAGEMENT_SEARCH_ICON_CLOSEDOOR_LOCATOR}
	Mouse Down    ${ROOMMANAGEMENT_SEARCH_ICON_CLOSEDOOR_LOCATOR}
	Wait Should Contain Get Element Attribute    ${ROOMMANAGEMENT_SEARCH_LBL_TOTALROOMTANFER_LOCATOR}    ${ATTRIBUTE_NG_REFLECT_VISIBLE}    ${TRUE_LOWWER}

Verify hover in display : Empty x room
	#จำนวนห้องว่าง [count] ห้อง
	${replaceTotalEmptyRoom}=    Replace String    ${ROOMMANAGEMENT_SEARCH_LBL_TOTALROOMEMPTY_TH}    [count]    ${CountEmptyRoomGlobal}
	Log To Console    replaceTotalEmptyRoom:${replaceTotalEmptyRoom}
	Wait Until Contains Element Should Be Visible    ${ROOMMANAGEMENT_SEARCH_ICON_OPENDOOR_LOCATOR}
	Mouse Down    ${ROOMMANAGEMENT_SEARCH_ICON_OPENDOOR_LOCATOR}
	Wait Should Contain Get Element Attribute    ${ROOMMANAGEMENT_SEARCH_LBL_TOTALROOMEMPTY_LOCATOR}    ${ATTRIBUTE_NG_REFLECT_VISIBLE}    ${TRUE_LOWWER}



Verify list data in dropdown status
	# Verify Screen Dropdown : Employee Type  
	Element Text Should Be Value Dropdown    ${ROOMMANAGEMENT_SEARCH_DDL_STATUS_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_DDL_STATUS_TH_VALUE}
	#close dropdrown
	Press Keys    ${NONE}    ${ESC}
	Sleep    0.5s

Verify screen popup "room"
	#Click Room
	Click Element Page  ${ROOMMANAGEMENT_SEARCH_BTN_ROOMA101_LOCATOR}

	#Label: ห้อง XXX
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_HEADERPOPUP_ROOMA101_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_HEADERPOPUP_ROOMA101_TH}

	#Label: ประเภทห้อง
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_ROOMTYPE_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_ROOMTYPE_TH}


	#Label: สถานะห้อง
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_ROOMSTATUS_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_ROOMSTATUS_TH}


	#Label: ห้องโอนแล้ว
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_TRANSFERRED_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_TRANSFERRED_TH}


	#Label: ดูข้อมูลห้องพัก
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_ROOMDETAILS_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_ROOMDETAILS_TH}


	#Label: ดูข้อมูลเจ้าของห้อง
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_VIEWOWNERINFORMATION_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_VIEWOWNERINFORMATION_TH}

	#Click Close
	Click Element Page    ${ROOMMANAGEMENT_BTN_CLOSE_LOCATOR}

	#capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${ROOMMANAGEMENT_SEARCHUSER_M7_0_1_12_000_SUCCESS_SCREENSHOT}


	#########################Close Browser#########################
	Close Browser