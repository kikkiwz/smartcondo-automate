*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Crate] Room Management ###################
M7_1_1_20_001_RoomManagement_Success_CreateRoomInComeAdmin_VerifyAction [Verify Action]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click room details tab
	...    4. click delete room button

    [Setup]    Open Browser To Login Page SCUser
   	
	Log To Console    ${\n}=========== Create Room InCome Verify screen ===============

    #Account
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


	#Create Income
	${data}=    Evaluate    [{"nameTh":"${DATA_INCOMECODE_NAMETH_VALUE}","nameEn":"${DATA_INCOMECODE_NAMEEN_VALUE}","incomecode":"${DATA_INCOMECODE_INCOMECODE_VALUE}","status":${DATA_INCOMECODE_STATUS_VALUE},"groupTypeId":${DATA_INCOMECODE_GROUPTYPEID_VALUE},"priceUnit":${DATA_INCOMECODE_PRICEUNIT_VALUE},"calculationTime":${DATA_INCOMECODE_CALCULATIONTIME_VALUE},"calculationMethodId":${DATA_INCOMECODE_CALCULATIONMETHODID_VALUE},"vatPercent":${DATA_INCOMECODE_VATPERCENT_VALUE},"taxPercent":${DATA_INCOMECODE_TAXPERCENT_VALUE},"calculateMulctFlag":${DATA_INCOMECODE_CALCULATEMULCTFLAG_VALUE},"remark":"${DATA_INCOMECODE_REMARK_VALUE}"}]
	${getCountDataList}    Get Length    ${data}
	@{IncomeCodeIdList}=    Create List 
	FOR    ${i}    IN RANGE    ${getCountDataList}
	${IncomeCodeId}=    Request CreateData for IncomeCode    ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${data}[${i}]    ${data[${i}]['nameTh']}
	Append To List    ${IncomeCodeIdList}    ${IncomeCodeId}
	Set Global Variable    ${income_code_id}    ${IncomeCodeIdList}
	Log To Console    IncomeCodeIdList::${IncomeCodeIdList}
	END

	#Create Room
	CreateRoomAdmin input required field data for check income code 
	Sleep    2s

	

Verify Action : click X button and Click Cancel
	${room_no_locator}=    Replace String    ${ROOMMANAGEMENT_SEARCHADMIN_BTN_ROOMNO_LOCATOR}    [room_no]    ${roomNo}
	Set Global Variable    ${roomNolocator}    ${room_no_locator}
	Log To Console    room_no_locator ${roomNolocator}    

	#Click Search
	Click Element Page    ${ROOMMANAGEMENT_SEARCH_BTN_SEARCH_LOCATOR}
	
	#Click room
	Click Element Page    ${roomNolocator}

	#Click Income detail
	Click Element Page    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_INCOMEDETAILS_LOCATOR}
	#Click Cancel
	Click Element Page    ${ROOMMANAGEMENT_ADDEDITADMIN_BTN_CANCELINCOMECODE_LOCATOR}
	Sleep    2s
	#Click Close
	Click Element Page    ${ROOMMANAGEMENT_BTN_CLOSE_LOCATOR}


Verify Action : click save button
	Create Income input all field data Check Table

	#================ Check Value Table ================
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchGetIncomeDetail}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check Room Management    ${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_INCOMEDETAILADMIN}    null    null    null    ${idRoom}    null
	${dataSearchGetIncomeDetail}=    Set Variable    ${resultSearchGetIncomeDetail}[0]
	Log To Console    [dataSearchGetIncomeDetail] : ${dataSearchGetIncomeDetail}
	${rowcountGetIncomeDetail}=    Set Variable    ${resultSearchGetIncomeDetail}[1]
	Log To Console    [rowcount rowcountGetIncomeDetail] : ${rowcountGetIncomeDetail}

	${checkNodata}=    Run Keyword If    '${rowcountGetIncomeDetail}'=='0'    Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountGetIncomeDetail}'!='0'    Check Value Table Income Detail    ${DEFAULT_TH}     ${rowcountGetIncomeDetail}    ${dataSearchGetIncomeDetail}


Verify Action : click delete button
	Check Popup Delete TH  ${ROOMMANAGEMENT_ADDEDITADMIN_ICON_DELETE_LOCATOR}    ${DATA_INCOMECODE_NAMETH_VALUE}
	Sleep    3s
	#Click Close
	Click Element Page    ${ROOMMANAGEMENT_BTN_CLOSE_LOCATOR}

	#Delete Room
	Click Delete Data TH    ${ROOMMANAGEMENT_SEARCHADMIN_BTNDELETE_ROOM999_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_VALUE_ROOMNO_LOCATOR}


	#capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${ROOMMANAGEMENT_CREATEROOMADMIN_M7_1_1_20_001_SUCCESS_SCREENSHOT}

	################### Generic Test Case Teardown ###################
    Generic Test Case Teardown IncomeCode3    ${income_code_id}
	


