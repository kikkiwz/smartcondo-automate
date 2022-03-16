*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***

M7_1_1_19_000_RoomManagement_Success_CreateRoomAdmin_VerifyAction [ Verify Action ]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click choose property
	...    4. choose dropdown
	...    5. click search button
	...    6. create floor 
	...    7. click create room button

    [Setup]    Open Browser To Login Page SCUser EN
   	
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

Verify Action : click X button
	#Click Add
	Click Element Page    ${ROOMMANAGEMENT_SEARCHADMIN_BTN_ADDROOM_LOCATOR}

	#Click x
	Click Element Page    ${ROOMMANAGEMENT_BTN_CLOSE_LOCATOR}

	Wait Element Visible    ${ROOMMANAGEMENT_SEARCHADMIN_LBL_REMARK_LOCATOR}

Verify Action : click cancel button
	#Click Add
	Click Element Page    ${ROOMMANAGEMENT_SEARCHADMIN_BTN_ADDROOM_LOCATOR}

	#Click Cancel
	Click Element Page    ${ROOMMANAGEMENT_ADDEDITADMIN_BTN_CANCEL_LOCATOR}

	Wait Element Visible    ${ROOMMANAGEMENT_SEARCHADMIN_LBL_REMARK_LOCATOR}

Verify Action : click Income details tab
	#Click Add
	Click Element Page    ${ROOMMANAGEMENT_SEARCHADMIN_BTN_ADDROOM_LOCATOR}
	Check Popup ConfirmSave EN    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_INCOMEDETAILS_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_INCOMEDETAILS_EN}
	Click Element Page  ${ROOMMANAGEMENT_ADDEDITADMIN_BTN_CANCEL_LOCATOR}


Verify Action : click cancel button in confirm save popup
	#Click Add
	Click Element Page    ${ROOMMANAGEMENT_SEARCHADMIN_BTN_ADDROOM_LOCATOR}
	#Click Cancel
	Click Element Page  ${ROOMMANAGEMENT_ADDEDITADMIN_BTN_CANCEL_LOCATOR}


Verify Action : click save button or click Save and Continue button - input all field data 
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

 	Create CreateRoomAdmin input all field data EN
	Sleep    4s
	Click Delete Data EN    ${ROOMMANAGEMENT_SEARCHADMIN_BTNDELETE_ROOM999_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_VALUE_ROOMNO_LOCATOR}

Verify Action : click save button or click Save and Continue button - input required field data 
	Sleep    6s
	Create CreateRoomAdmin input required field data EN
	Sleep    4s
	Click Delete Data EN    ${ROOMMANAGEMENT_SEARCHADMIN_BTNDELETE_ROOM999_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_VALUE_ROOMNO_LOCATOR}

	#capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${ROOMMANAGEMENT_CREATEROOMADMIN_M7_1_1_19_000_SUCCESS_SCREENSHOT}

	################### Generic Test Case Teardown ###################
    Generic Test Case Teardown IncomeCode3    ${income_code_id}