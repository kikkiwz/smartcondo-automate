*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***

M7_1_1_13_000_RoomManagement_Success_SearchAdmin_VerifyAction [Verify Action ]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click room details tab
    ...    4. choose dropdown Account 

    [Setup]    Open Browser To Login Page SCUser
   	
   Log To Console    ${\n}=========== Search Room details [Admin] ===============


Verify Action : after choose dropdown : Account and Property and Building "Search Room details [Admin]"
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






Verify Action : click search button after choose 3 dropdown

    # #================ Check Value RoomList ================
	# #====== Verify DB ==========
    # #Inquiry for verify DB  
    ${resultSearchRoomManagement}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check Room Management    ${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_SEARCHROOMLIST_SCUSER}    ${ROOMMANAGEMENT_ACCOUNTID_VALUE}    ${ROOMMANAGEMENT_PROPERTYID_VALUE}    ${ROOMMANAGEMENT_BUILDINGID_VALUE}    ${DB_TB_CHECKROOMMANAGEMENT_ORDERBY_FLOOR_AND_ROOMNO_ASC}
	# Log To Console    resultSearchRoomManagement::${resultSearchRoomManagement} 


	${dataSearchRoomManagement}=    Set Variable    ${resultSearchRoomManagement}[0]
	Log To Console    [dataSearchRoomManagement] : ${dataSearchRoomManagement}
	${rowcountSearchRoomManagement}=    Set Variable    ${resultSearchRoomManagement}[1]
	Log To Console    [rowcount SearchRoomManagement] : ${rowcountSearchRoomManagement}

	${checkNodata}=    Run Keyword If    '${rowcountSearchRoomManagement}'!='0'    Check Value RoomList Admin    ${DEFAULT_TH}     ${rowcountSearchRoomManagement}    ${dataSearchRoomManagement}
	Sleep    3s





Verify Action : click room button
	#Click Room
	Click Element Page    ${roomNolocator}
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_EDITROOMDETAIL_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_EDITROOMDETAIL_TH}
	Click Element Page    ${ROOMMANAGEMENT_BTN_CLOSE_LOCATOR}





Verify Action : click create room button
	Click Element Page    ${ROOMMANAGEMENT_SEARCHADMIN_BTN_ADDROOM_LOCATOR}
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_CREATEROOM_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_CREATEROOM_TH}
	Click Element Page    ${ROOMMANAGEMENT_BTN_CLOSE_LOCATOR}





Verify Action : click create floor button
	Wait Until Contains Input Text    ${ROOMMANAGEMENT_SEARCHADMIN_TXT_ADDFLOOR_LOCATOR}    ${ROOMMANAGEMENT_SEARCHADMIN_VALUE_ADDFLOOR_LOCATOR} 
	Click Element Page    ${ROOMMANAGEMENT_SEARCHADMIN_BTN_ADDFLOOR_LOCATOR}



Verify Action : click delete room button
	${dataroom}=    Get Text String    ${ROOMMANAGEMENT_SEARCHADMIN_BTN_ROOMA104_LOCATOR}   
	Check Popup Delete TH    ${ROOMMANAGEMENT_SEARCHADMIN_BTNDELETE_ROOM999_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_VALUE_ROOMNO_LOCATOR}

	# Click Delete Data TH    ${ROOMMANAGEMENT_SEARCHADMIN_BTNDELETE_ROOM999_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_VALUE_ROOMNO_LOCATOR}




Verify Action : click clear button
    #Click Clear
	Click Element Page    ${ROOMMANAGEMENT_SEARCH_BTN_CLEAR_LOCATOR}
	Sleep    1s
	Wait Element Not Visible    ${ROOMMANAGEMENT_SEARCHADMIN_LBL_REMARK_LOCATOR}


	#capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${ROOMMANAGEMENT_SEARCHADMIN_M7_1_1_13_000_SUCCESS_SCREENSHOT}

	################### Generic Test Case Teardown ###################
    Generic Test Case Teardown IncomeCode3    ${income_code_id}