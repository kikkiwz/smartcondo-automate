*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***

M7_0_1_21_000_RoomManagement_Success_EditRoomAdmin_VerifyScreen [ Verify Screen ]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click choose property
	...    4. choose dropdown
	...    5. click search button
	...    6. click edit room button 

    [Setup]    Open Browser To Login Page SCUser
   	
	Log To Console    ${\n}=========== Edit Room Verify Screen ===============


Verify screen page Edit Room
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

	#Remark
	Wait Element Visible    ${ROOMMANAGEMENT_SEARCHADMIN_LBL_REMARK_LOCATOR}

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

	Sleep    3s

	${room_no_locator}=    Replace String    ${ROOMMANAGEMENT_SEARCHADMIN_BTN_ROOMNO_LOCATOR}    [room_no]    ${roomNo}
	Set Global Variable    ${roomNolocator}    ${room_no_locator}
	Log To Console    room_no_locator ${roomNolocator}

	#Click Room
	Click Element Page    ${roomNolocator}

	# Edit room
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_EDITROOMDETAIL_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_EDITROOMDETAIL_TH}

	# Room no
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_ROOMNO_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_ROOMNO_TH}
	Wait Until Contains Element Should Be Enabled    ${ROOMMANAGEMENT_ADDEDITADMIN_TXT_ROOMNO_LOCATOR}

	# House no 
    Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_HOUSENO_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_HOUSENO_TH}
	Wait Until Contains Element Should Be Enabled    ${ROOMMANAGEMENT_ADDEDITADMIN_TXT_HOUSENO_LOCATOR}

	# Area (square meter) 
    Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_AREA_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_AREA_TH}
	Wait Until Contains Element Should Be Enabled    ${ROOMMANAGEMENT_ADDEDITADMIN_TXT_AREA_LOCATOR}

	# Proprietary ratio 
    Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_PROPRIETARYRATIO_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_PROPRIETARYRATIO_TH}
	Wait Until Contains Element Should Be Enabled    ${ROOMMANAGEMENT_ADDEDITADMIN_TXT_PROPRIETARYRATIO_LOCATOR}

	# Water meter no
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_WATERMETERNO_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_WATERMETERNO_TH}
	Wait Until Contains Element Should Be Enabled    ${ROOMMANAGEMENT_ADDEDITADMIN_TXT_WATERMETERNO_LOCATOR}

	# Electric meter no
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_ELECTRICMETERNO_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_ELECTRICMETERNO_TH}
	Wait Until Contains Element Should Be Enabled    ${ROOMMANAGEMENT_ADDEDITADMIN_TXT_ELECTRICMETERNO_LOCATOR}

	# Water meter limit unit
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_WATERMETERLIMITUNIT_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_WATERMETERLIMITUNIT_TH}
	Wait Until Contains Element Should Be Enabled    ${ROOMMANAGEMENT_ADDEDITADMIN_DDL_WATERMETERLIMITUNIT_LOCATOR}

	# Electric meter limit unit
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_ELECTRICMETERLIMITUNIT_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_ELECTRICMETERLIMITUNIT_TH}
	Wait Until Contains Element Should Be Enabled    ${ROOMMANAGEMENT_ADDEDITADMIN_DDL_ELECTRICMETERLIMITUNIT_LOCATOR}


	#Cancel button
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_BTN_CANCEL_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_BTN_CANCEL_TH} 
	#Save button
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_BTN_SAVE_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_BTN_SAVE_TH}


Verify screen : legth 125 and type is string in Room no
	# maxlength="125"
	Wait Should Contain Get Element Attribute    ${ROOMMANAGEMENT_ADDEDITADMIN_TXT_ROOMNO_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 125 and type is string in House no
	# maxlength="125"
	Wait Should Contain Get Element Attribute    ${ROOMMANAGEMENT_ADDEDITADMIN_TXT_HOUSENO_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 125 and type is string in Water meter no
	# maxlength="125"
	Wait Should Contain Get Element Attribute    ${ROOMMANAGEMENT_ADDEDITADMIN_TXT_WATERMETERNO_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 125 and type is string in Electric meter no
	# maxlength="125"
	Wait Should Contain Get Element Attribute    ${ROOMMANAGEMENT_ADDEDITADMIN_TXT_ELECTRICMETERNO_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}



Verify screen save confirm popup
	# Edit RoomAdmin input all field data no verify db
	#Proprietary ratio
	Wait Until Contains Input Text    ${ROOMMANAGEMENT_ADDEDITADMIN_TXT_PROPRIETARYRATIO_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_TXT_VALUE_PROPRIETARYRATIO_LOCATOR}
	Check Popup ConfirmSave TH    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_INCOMEDETAILS_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_INCOMEDETAILS_TH}
	#Click x
	Click Element Page    ${ROOMMANAGEMENT_BTN_CLOSE_LOCATOR}
	Sleep    4s
	Click Delete Data TH    ${ROOMMANAGEMENT_SEARCHADMIN_BTNDELETE_ROOM999_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_VALUE_ROOMNO_LOCATOR}

	#capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${ROOMMANAGEMENT_EDITROOMADMIN_M7_0_1_21_000_SUCCESS_SCREENSHOT}

	################### Generic Test Case Teardown ###################
    Generic Test Case Teardown IncomeCode3    ${income_code_id}