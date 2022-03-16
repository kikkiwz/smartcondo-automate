*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Delete] Room Management ###################
M7_0_1_16_000_RoomManagement_Success_DeleteRoomAdmin_VerifyScreen [Verify screen popup confirm delete ]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click room details tab
	...    4. click delete room button


    [Setup]    Open Browser To Login Page SCUser
   	
	Log To Console    ${\n}=========== Delete Room Verify Action ===============

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
	Create CreateRoomAdmin input all field data 
	
Verify screen popup confirm delete 
	${roomNoDelete_locator}=    Replace String    ${ROOMMANAGEMENT_SEARCHADMIN_BTN_DELETEROOMNO_LOCATOR}    [room_no]    ${roomNo}
	Set Global Variable    ${roomNolocatorDelete}    ${roomNoDelete_locator}
	Log To Console    roomNolocatorDelete ${roomNolocatorDelete}   
	
	Check Popup Delete TH  ${roomNolocatorDelete}    ${ROOMMANAGEMENT_ADDEDITADMIN_VALUE_ROOMNO_LOCATOR}
	Sleep    3s
	Click Delete Data TH    ${roomNolocatorDelete}    ${ROOMMANAGEMENT_ADDEDITADMIN_VALUE_ROOMNO_LOCATOR}


    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${ROOMMANAGEMENT_DELETEROOMADMIN_M7_0_1_16_000_SUCCESS_SCREENSHOT}


################### Generic Test Case Teardown ###################
    Generic Test Case Teardown IncomeCode3    ${income_code_id}


