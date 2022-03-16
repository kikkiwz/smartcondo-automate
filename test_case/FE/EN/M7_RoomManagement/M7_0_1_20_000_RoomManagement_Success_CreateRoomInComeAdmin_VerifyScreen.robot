*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Delete] Room Management ###################
M7_0_1_20_000_RoomManagement_Success_CreateRoomInComeAdmin_VerifyScreen [Verify screen]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click room details tab
	...    4. click delete room button

    [Setup]    Open Browser To Login Page SCUser EN
   	
	Log To Console    ${\n}=========== Create Room InCome Verify screen ===============

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
	Create CreateRoomAdmin input all field data EN 
	Sleep    2s
	

Verify screen page Create Room - Income

	${room_no_locator}=    Replace String    ${ROOMMANAGEMENT_SEARCHADMIN_BTN_ROOMNO_LOCATOR}    [room_no]    ${roomNo}
	Set Global Variable    ${roomNolocator}    ${room_no_locator}
	Log To Console    room_no_locator ${roomNolocator}    
	
	#Click room
	Click Element Page    ${roomNolocator}


	Click Element Page    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_INCOMEDETAILS_LOCATOR}

	#Label: รหัสรายได้
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_INCOMECODE_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_INCOMECODE_EN}
	Wait Until Contains Element Should Be Enabled    ${ROOMMANAGEMENT_ADDEDITADMIN_DDL_INCOMECODE_LOCATOR}

	#Cancel button
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_BTN_CANCELINCOMECODE_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_BTN_CANCELINCOMECODE_EN} 

	#Save button
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_BTN_SAVEINCOMECODE_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_BTN_SAVEINCOMECODE_EN}

	#Create income Code
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_BTN_CREATEINCOMECODE_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_BTN_CREATEINCOMECODE_EN}

	#colum : รหัสรายได้
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_COLUM_INCOMECODE_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_COLUM_INCOMECODE_EN}

	#colum : ชื่อรายได้
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_COLUM_INCOMENAME_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_COLUM_INCOMENAME_EN}


	Check Value Table Income Details
	Sleep    2s

	#paging
	${replacePage}=    Paging Replace    ${rowcountIncomeDetail}
	${paging}=    Set Variable    ${replacePage[1]}
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_LBL_PagesXFromY_LOCATOR}    ${paging}
	Wait Until Contains Element Should Be Visible    ${ROOMMANAGEMENT_ICON_ARRORWLEFT_LOCATOR}
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_LBL_PAGE_LOCATOR}    ${ROOMMANAGEMENT_LBL_PAGE_1}
	Wait Until Contains Element Should Be Visible    ${ROOMMANAGEMENT_ICON_ARRORWRIGHT_LOCATOR}




Verify tooltip in button : Delete (Enable)
	#delete icon
    Wait Until Contains Element Should Be Visible    ${ROOMMANAGEMENT_ADDEDITADMIN_ICON_DELETE_LOCATOR}
    Mouse Down    ${ROOMMANAGEMENT_ADDEDITADMIN_ICON_DELETE_LOCATOR}
    Sleep    0.5s
	# Wait Should Contain Get Element Attribute    ${MULCTCODELBL_DELETE_EN_LOCATOR}    ${ATTRIBUTE_NG_REFLECT_VISIBLE}    ${TRUE_LOWWER}
    # Wait Until Contains Element Text Should Be    ${MULCTCODELBL_DELETE_EN_LOCATOR}    ${MULCTCODELBL_DELETE_EN}
	#Click Close
	Click Element Page    ${ROOMMANAGEMENT_BTN_CLOSE_LOCATOR}

	#Delete Room
	Click Delete Data EN    ${ROOMMANAGEMENT_SEARCHADMIN_BTNDELETE_ROOM999_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_VALUE_ROOMNO_LOCATOR}


	#capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${ROOMMANAGEMENT_CREATEROOMADMIN_M7_0_1_20_000_SUCCESS_SCREENSHOT}

	################### Generic Test Case Teardown ###################
    Generic Test Case Teardown IncomeCode3    ${income_code_id}