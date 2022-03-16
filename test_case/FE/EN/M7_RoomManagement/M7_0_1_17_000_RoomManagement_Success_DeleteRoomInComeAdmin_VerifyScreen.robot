*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Delete] Room Management ###################
M7_0_1_17_000_RoomManagement_Success_DeleteRoomInComeAdmin_VerifyScreen [Verify screen]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click choose property
	...    4. choose dropdown
	...    5. click search button
	...    6. create floor 
	...    7. click create room button
	...    8. input data 
	...    9. click save button or save and continue in confirm save popup
	...    10. click Create income code button
	...    11. input data and save button
	...    12. click delete button

    [Setup]    Open Browser To Login Page SCUser EN
   	
	Log To Console    ${\n}=========== Delete Room InCome Verify screen ===============

    #Account
	Select Dropdown    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_ACCOUNT_LOCATOR}    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_ACCOUNT_LIST_LOCATOR}    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_ACCOUNT_CLASS_LOCATOR}    ${ROOMMANAGEMENT_ACCOUNT_EN_VALUE1}
	Sleep    0.5s
	#Property
	Select Dropdown    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_PROPERTY_LOCATOR}    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_PROPERTY_LIST_LOCATOR}    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_PROPERTY_CLASS_LOCATOR}    ${ROOMMANAGEMENT_PROPERTY_EN_VALUE1}
	Sleep    0.5s
	#Building
	Select Dropdown    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_BUILDING_LOCATOR}    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_BUILDING_LIST_LOCATOR}    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_BUILDING_CLASS_LOCATOR}    ${ROOMMANAGEMENT_BUILDING_EN_VALUE1}
	Sleep    0.5s
	#Click Search
	Click Element Page    ${ROOMMANAGEMENT_SEARCH_BTN_SEARCH_LOCATOR}
	Sleep    1s

	#Create Income
	${data}=    Evaluate    [{"nameTh":"${DATA_INCOMECODE_NAMEEN_VALUE}","nameEn":"${DATA_INCOMECODE_NAMEEN_VALUE}","incomecode":"${DATA_INCOMECODE_INCOMECODE_VALUE}","status":${DATA_INCOMECODE_STATUS_VALUE},"groupTypeId":${DATA_INCOMECODE_GROUPTYPEID_VALUE},"priceUnit":${DATA_INCOMECODE_PRICEUNIT_VALUE},"calculationTime":${DATA_INCOMECODE_CALCULATIONTIME_VALUE},"calculationMethodId":${DATA_INCOMECODE_CALCULATIONMETHODID_VALUE},"vatPercent":${DATA_INCOMECODE_VATPERCENT_VALUE},"taxPercent":${DATA_INCOMECODE_TAXPERCENT_VALUE},"calculateMulctFlag":${DATA_INCOMECODE_CALCULATEMULCTFLAG_VALUE},"remark":"${DATA_INCOMECODE_REMARK_VALUE}"}]
	${getCountDataList}    Get Length    ${data}
	@{IncomeCodeIdList}=    Create List 
	FOR    ${i}    IN RANGE    ${getCountDataList}
	${IncomeCodeId}=    Request CreateData for IncomeCode    ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${data}[${i}]    ${data[${i}]['nameTh']}
	Append To List    ${IncomeCodeIdList}    ${IncomeCodeId}
	Set Global Variable    ${income_code_id}    ${IncomeCodeIdList}
	Log To Console    IncomeCodeIdList::${IncomeCodeIdList}
	END

	#Create Room
	Create CreateRoomAdmin input required field data EN
	Sleep    2s

	
	${room_no_locator}=    Replace String    ${ROOMMANAGEMENT_SEARCHADMIN_BTN_ROOMNO_LOCATOR}    [room_no]    ${roomNo}
	Set Global Variable    ${roomNolocator}    ${room_no_locator}
	Log To Console    room_no_locator ${roomNolocator}    


Verify screen popup confirm delete 
	${roomNoDelete_locator}=    Replace String    ${ROOMMANAGEMENT_SEARCHADMIN_BTN_DELETEROOMNO_LOCATOR}    [room_no]    ${roomNo}
	Set Global Variable    ${roomNolocatorDelete}    ${roomNoDelete_locator}
	Log To Console    roomNolocatorDelete ${roomNolocatorDelete}

	#Click room
	Click Element Page    ${roomNolocator}

	#Click Income detail
	Click Element Page    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_INCOMEDETAILS_LOCATOR}
	Sleep    6s
	#Click Icon Delete
	# Click Element Page    ${ROOMMANAGEMENT_ADDEDITADMIN_ICON_DELETE_LOCATOR}
	Check Popup Delete EN  ${ROOMMANAGEMENT_ADDEDITADMIN_ICON_DELETE_LOCATOR}    ${DATA_INCOMECODE_NAMEEN_VALUE}
	Sleep    3s
	#Click Close
	Click Element Page    ${ROOMMANAGEMENT_BTN_CLOSE_LOCATOR}

	#Delete Room
	Click Delete Data EN    ${roomNolocatorDelete}    ${ROOMMANAGEMENT_ADDEDITADMIN_VALUE_ROOMNO_LOCATOR}


	#capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${ROOMMANAGEMENT_DELETEROOMADMIN_M7_0_1_17_000_SUCCESS_SCREENSHOT}

	################### Generic Test Case Teardown ###################
    Generic Test Case Teardown IncomeCode3    ${income_code_id}