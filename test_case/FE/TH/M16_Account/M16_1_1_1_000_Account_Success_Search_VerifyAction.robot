*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Search] Account ###################
M16_1_1_1_000_Account_Success_Search_VerifyAction [Verify Action page "Search Account"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click main Menu Account
	...    4. click Account

    [Setup]    Open Browser To Login Page SCUser
   	
    #========== Click main Menu Account ======
	Click Main Menu SCUser    ${MENU_LBL_ACCOUNT_LOCATOR}    ${MENU_LBL_ACCOUNT_TH}    ${ACCOUNT_SEARCH_LBL_HOME_SUBNAV_LOCATOR}    ${ACCOUNT_SEARCH_LBL_HOME_SUBNAV_TH}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_SUBNAV_LOCATOR}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_SUBNAV_TH}

	#Account Header
	Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_ACCOUNT_LOCATOR}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_TH} 
	
Verify API Onload and mapping data after click Account

    #================ Check Value Table ================
	#====== Verify DB ==========
    #Inquiry for verify DB  
	#  [((9, 10, 1, None, '1111111111', 'เทสบัญชี', datetime.datetime(2021, 9, 21, 17, 8, 41), '10', None, None, None, None, 7, 1, 1, None),), 1] 
    ${resultSearchAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Account    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_ACCOUNTS_FIELD_CREATEDAT} ${ORDERBY_DESC}
    ${dataSearchAccount}=    Set Variable    ${resultSearchAccount}[0]
	Log To Console    [dataSearchAccount] : ${dataSearchAccount}
	${rowcountSearchAccount}=    Set Variable    ${resultSearchAccount}[1]
	Log To Console    [rowcount SearchAccount] : ${rowcountSearchAccount}

	${checkNodata}=    Run Keyword If    '${rowcountSearchAccount}'=='0'    Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchAccount}'!='0'    Check Value Table Search Account    ${DEFAULT_TH}     ${rowcountSearchAccount}    ${dataSearchAccount}
    
Verify action : click Create button

    #Click Create Account
	Click Element Page    ${ACCOUNT_BTN_CREATE_LOCATOR}
	Sleep    0.5s
	
	#Create Account
	Wait Until Contains Element Text Should Be    ${ACCOUNT_ADD_LBL_CREATEACCOUNT_LOCATOR}    ${ACCOUNT_ADD_LBL_CREATEACCOUNT_TH} 
    
	#Click Cancel button
    Click Element Page    ${ACCOUNT_ADDEDIT_BTN_CANCEL_LOCATOR}

Verify action : click Edit button 

    Mouse Down    ${ACCOUNT_BTN_MORE_LOCATOR}
    #Click Edit Account
	Click Element Page    ${ACCOUNT_BTN_EDIT_LOCATOR}
	Sleep    0.5s
	
	#Edit Account
	Wait Until Contains Element Text Should Be    ${ACCOUNT_EDIT_LBL_EDITACCOUNT_LOCATOR}    ${ACCOUNT_EDIT_LBL_EDITACCOUNT_TH} 
	
	#Click Cancel button
    Click Element Page    ${ACCOUNT_ADDEDIT_BTN_CANCEL_LOCATOR}

Verify Action : click view button

    Mouse Down    ${ACCOUNT_BTN_MORE_LOCATOR}
    #Click View Bank account
	Click Element Page    ${ACCOUNT_BTN_VIEW_LOCATOR}
	Sleep    0.5s
	
	#View Account
	Wait Until Contains Element Text Should Be    ${ACCOUNT_VIEW_LBL_VIEWACCOUNT_LOCATOR}    ${ACCOUNT_VIEW_LBL_VIEWACCOUNT_TH} 
	
    #Click X button	
    Click Element Page    ${ACCOUNT_BTN_CLOSE_LOCATOR}

Verify Action : click delete button
 
    ${identificationNo}=    Get Text String    ${ACCOUNT_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
	# Log To Console    identificationNo${identificationNo}

    Mouse Down    ${ACCOUNT_BTN_MORE_LOCATOR}
    
    #Click delete button and Check Popup Delete 
	Check Popup Delete TH    ${ACCOUNT_BTN_DELETE_LOCATOR}    ${identificationNo}

Verify Action : click 50 button

    #Click 50 button
	Click Element Page    ${ACCOUNT_BTN_50_LOCATOR}

	#====== Verify DB ==========
	#Inquiry for verify DB  
	#  [((15, 'test', 1, datetime.datetime(2021, 9, 30, 0, 0), None, datetime.datetime(2021, 10, 14, 17, 57, 35), '1', None, None, None, None, 33, 'Admin0015', '11111', '0811111111', 15, 33),), 1] 
    ${resultSearchAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Account    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_ACCOUNTS_FIELD_CREATEDAT} ${ORDERBY_DESC}
    ${dataSearchAccount}=    Set Variable    ${resultSearchAccount}[0]
	Log To Console    [dataSearchAccount] : ${dataSearchAccount}
	${rowcountSearchAccount}=    Set Variable    ${resultSearchAccount}[1]
	Log To Console    [rowcount SearchBankAccount] : ${rowcountSearchAccount}

	${checkNodata}=    Run Keyword If    '${rowcountSearchAccount}'=='0'    Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchAccount}'!='0'    Check Value Table Search Account    ${DEFAULT_TH}     ${rowcountSearchAccount}    ${dataSearchAccount}
    
Verify Action : click 100 button

    #Click 100 button
	Click Element Page    ${ACCOUNT_BTN_100_LOCATOR}

	#====== Verify DB ==========
	#Inquiry for verify DB  
	#  [((15, 'test', 1, datetime.datetime(2021, 9, 30, 0, 0), None, datetime.datetime(2021, 10, 14, 17, 57, 35), '1', None, None, None, None, 33, 'Admin0015', '11111', '0811111111', 15, 33),), 1] 
    ${resultSearchAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Account    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_ACCOUNTS_FIELD_CREATEDAT} ${ORDERBY_DESC}
    ${dataSearchAccount}=    Set Variable    ${resultSearchAccount}[0]
	Log To Console    [dataSearchAccount] : ${dataSearchAccount}
	${rowcountSearchAccount}=    Set Variable    ${resultSearchAccount}[1]
	Log To Console    [rowcount SearchBankAccount] : ${rowcountSearchAccount}

	${checkNodata}=    Run Keyword If    '${rowcountSearchAccount}'=='0'    Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchAccount}'!='0'    Check Value Table Search Account    ${DEFAULT_TH}     ${rowcountSearchAccount}    ${dataSearchAccount}
    
Verify Action : click 1000 button
    #Click 1000 button
	Click Element Page    ${ACCOUNT_BTN_1000_LOCATOR}

	#====== Verify DB ==========
	#Inquiry for verify DB  
	#  [((15, 'test', 1, datetime.datetime(2021, 9, 30, 0, 0), None, datetime.datetime(2021, 10, 14, 17, 57, 35), '1', None, None, None, None, 33, 'Admin0015', '11111', '0811111111', 15, 33),), 1] 
    ${resultSearchAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Account    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_ACCOUNTS_FIELD_CREATEDAT} ${ORDERBY_DESC}
    ${dataSearchAccount}=    Set Variable    ${resultSearchAccount}[0]
	Log To Console    [dataSearchAccount] : ${dataSearchAccount}
	${rowcountSearchAccount}=    Set Variable    ${resultSearchAccount}[1]
	Log To Console    [rowcount SearchBankAccount] : ${rowcountSearchAccount}

	${checkNodata}=    Run Keyword If    '${rowcountSearchAccount}'=='0'    Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchAccount}'!='0'    Check Value Table Search Account    ${DEFAULT_TH}     ${rowcountSearchAccount}    ${dataSearchAccount}
    
Verify Action : click 20 button

    #Click 20 button
	Click Element Page    ${ACCOUNT_BTN_20_LOCATOR}

	#====== Verify DB ==========
	#Inquiry for verify DB  
	#  [((15, 'test', 1, datetime.datetime(2021, 9, 30, 0, 0), None, datetime.datetime(2021, 10, 14, 17, 57, 35), '1', None, None, None, None, 33, 'Admin0015', '11111', '0811111111', 15, 33),), 1] 
    ${resultSearchAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Account    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_ACCOUNTS_FIELD_CREATEDAT} ${ORDERBY_DESC}
    ${dataSearchAccount}=    Set Variable    ${resultSearchAccount}[0]
	Log To Console    [dataSearchAccount] : ${dataSearchAccount}
	${rowcountSearchAccount}=    Set Variable    ${resultSearchAccount}[1]
	Log To Console    [rowcount SearchBankAccount] : ${rowcountSearchAccount}

	${checkNodata}=    Run Keyword If    '${rowcountSearchAccount}'=='0'    Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchAccount}'!='0'    Check Value Table Search Account    ${DEFAULT_TH}     ${rowcountSearchAccount}    ${dataSearchAccount}

Verify Action : click search button [Search Start Date]

    #Start Date
	Wait Until Contains Input Text    ${ACCOUNT_SEARCH_INPUT_STARTDATE_LOCATOR}    ${ACCOUNT_STARTDATE_VALUE}
	#Click Search
	Click Element Page    ${ACCOUNT_SEARCH_BTN_SEARCH_LOCATOR}
	
	#====== Verify DB ==========
	#Inquiry for verify DB  
	#  [((15, 'test', 1, datetime.datetime(2021, 9, 30, 0, 0), None, datetime.datetime(2021, 10, 14, 17, 57, 35), '1', None, None, None, None, 33, 'Admin0015', '11111', '0811111111', 15, 33),), 1] 
    ${resultSearchAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Account    ${MYSQL_TYPE_ACCOUNT_SEARCH_STARTDATE}    ${ACCOUNT_STARTDATE_DB_VALUE}    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_ACCOUNTS_FIELD_CREATEDAT} ${ORDERBY_DESC}
	${dataSearchAccount}=    Set Variable    ${resultSearchAccount}[0]
	Log To Console    [dataSearchAccount] : ${dataSearchAccount}
	${rowcountSearchAccount}=    Set Variable    ${resultSearchAccount}[1]
	Log To Console    [rowcount SearchAccount] : ${rowcountSearchAccount}

	${checkNodata}=    Run Keyword If    '${rowcountSearchAccount}'=='0'    Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchAccount}'!='0'    Check Value Table Search Account    ${DEFAULT_TH}     ${rowcountSearchAccount}    ${dataSearchAccount}
   
    #Click Clear
	Click Element Page    ${ACCOUNT_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Expire Date]

    #Expire Date
	Wait Until Contains Input Text    ${ACCOUNT_SEARCH_INPUT_EXPIREDATE_LOCATOR}    ${ACCOUNT_EXPIREDATE_VALUE}
	#Click Search
	Click Element Page    ${ACCOUNT_SEARCH_BTN_SEARCH_LOCATOR}
	
	#====== Verify DB ==========
	#Inquiry for verify DB  
	#  [((15, 'test', 1, datetime.datetime(2021, 9, 30, 0, 0), None, datetime.datetime(2021, 10, 14, 17, 57, 35), '1', None, None, None, None, 33, 'Admin0015', '11111', '0811111111', 15, 33),), 1] 
    ${resultSearchAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Account    ${MYSQL_TYPE_ACCOUNT_SEARCH_EXPIREDATE}    null    ${ACCOUNT_EXPIREDATE_DB_VALUE}    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_ACCOUNTS_FIELD_CREATEDAT} ${ORDERBY_DESC}
	${dataSearchAccount}=    Set Variable    ${resultSearchAccount}[0]
	Log To Console    [dataSearchAccount] : ${dataSearchAccount}
	${rowcountSearchAccount}=    Set Variable    ${resultSearchAccount}[1]
	Log To Console    [rowcount SearchAccount] : ${rowcountSearchAccount}

	${checkNodata}=    Run Keyword If    '${rowcountSearchAccount}'=='0'    Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchAccount}'!='0'    Check Value Table Search Account    ${DEFAULT_TH}     ${rowcountSearchAccount}    ${dataSearchAccount}
   
    #Click Clear
	Click Element Page    ${ACCOUNT_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Account Name, Name, Phone]

    #Account Name, Name, Phone
	Wait Until Contains Input Text    ${ACCOUNT_SEARCH_TXT_ACCOUNTNAMENAMEPHONE_LOCATOR}    ${ACCOUNT_ACCOUNTNAMENAMEPHONE_VALUE}
	#Click Search
	Click Element Page    ${ACCOUNT_SEARCH_BTN_SEARCH_LOCATOR}
	
	#====== Verify DB ==========
	#Inquiry for verify DB  
	#  [((15, 'test', 1, datetime.datetime(2021, 9, 30, 0, 0), None, datetime.datetime(2021, 10, 14, 17, 57, 35), '1', None, None, None, None, 33, 'Admin0015', '11111', '0811111111', 15, 33),), 1] 
    ${resultSearchAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Account    ${MYSQL_TYPE_ACCOUNT_SEARCH_DATASEARCH}    null    null    ${ACCOUNT_ACCOUNTNAMENAMEPHONE_VALUE}    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_ACCOUNTS_FIELD_CREATEDAT} ${ORDERBY_DESC}
	${dataSearchAccount}=    Set Variable    ${resultSearchAccount}[0]
	Log To Console    [dataSearchAccount] : ${dataSearchAccount}
	${rowcountSearchAccount}=    Set Variable    ${resultSearchAccount}[1]
	Log To Console    [rowcount SearchAccount] : ${rowcountSearchAccount}

	${checkNodata}=    Run Keyword If    '${rowcountSearchAccount}'=='0'    Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchAccount}'!='0'    Check Value Table Search Account    ${DEFAULT_TH}     ${rowcountSearchAccount}    ${dataSearchAccount}
   
    #Click Clear
	Click Element Page    ${ACCOUNT_SEARCH_BTN_CLEAR_LOCATOR}
		
Verify Action : click search button [Search Start Date and Expire Date]

    #Start Date
	Wait Until Contains Input Text    ${ACCOUNT_SEARCH_INPUT_STARTDATE_LOCATOR}    ${ACCOUNT_STARTDATE_VALUE}
	#Expire Date
	Wait Until Contains Input Text    ${ACCOUNT_SEARCH_INPUT_EXPIREDATE_LOCATOR}    ${ACCOUNT_EXPIREDATE_VALUE}
	#Click Search
	Click Element Page    ${ACCOUNT_SEARCH_BTN_SEARCH_LOCATOR}
	
	#====== Verify DB ==========
	#Inquiry for verify DB  
	#  [((15, 'test', 1, datetime.datetime(2021, 9, 30, 0, 0), None, datetime.datetime(2021, 10, 14, 17, 57, 35), '1', None, None, None, None, 33, 'Admin0015', '11111', '0811111111', 15, 33),), 1] 
    ${resultSearchAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Account    ${MYSQL_TYPE_ACCOUNT_SEARCH_STARTEXPIREDATE}    ${ACCOUNT_STARTDATE_DB_VALUE}    ${ACCOUNT_EXPIREDATE_DB_VALUE}    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_ACCOUNTS_FIELD_CREATEDAT} ${ORDERBY_DESC}
	${dataSearchAccount}=    Set Variable    ${resultSearchAccount}[0]
	Log To Console    [dataSearchAccount] : ${dataSearchAccount}
	${rowcountSearchAccount}=    Set Variable    ${resultSearchAccount}[1]
	Log To Console    [rowcount SearchAccount] : ${rowcountSearchAccount}

	${checkNodata}=    Run Keyword If    '${rowcountSearchAccount}'=='0'    Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchAccount}'!='0'    Check Value Table Search Account    ${DEFAULT_TH}     ${rowcountSearchAccount}    ${dataSearchAccount}
   
    #Click Clear
	Click Element Page    ${ACCOUNT_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Start Date and Account Name, Name, Phone]

    #Start Date
	Wait Until Contains Input Text    ${ACCOUNT_SEARCH_INPUT_STARTDATE_LOCATOR}    ${ACCOUNT_STARTDATE_VALUE}
	#Account Name, Name, Phone
	Wait Until Contains Input Text    ${ACCOUNT_SEARCH_TXT_ACCOUNTNAMENAMEPHONE_LOCATOR}    ${ACCOUNT_ACCOUNTNAMENAMEPHONE_VALUE}
	#Click Search
	Click Element Page    ${ACCOUNT_SEARCH_BTN_SEARCH_LOCATOR}
	
	#====== Verify DB ==========
	#Inquiry for verify DB  
	#  [((15, 'test', 1, datetime.datetime(2021, 9, 30, 0, 0), None, datetime.datetime(2021, 10, 14, 17, 57, 35), '1', None, None, None, None, 33, 'Admin0015', '11111', '0811111111', 15, 33),), 1] 
    ${resultSearchAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Account    ${MYSQL_TYPE_ACCOUNT_SEARCH_STARTDATEDATASEARCH}    ${ACCOUNT_STARTDATE_DB_VALUE}    null    ${ACCOUNT_ACCOUNTNAMENAMEPHONE_VALUE}    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_ACCOUNTS_FIELD_CREATEDAT} ${ORDERBY_DESC}
	${dataSearchAccount}=    Set Variable    ${resultSearchAccount}[0]
	Log To Console    [dataSearchAccount] : ${dataSearchAccount}
	${rowcountSearchAccount}=    Set Variable    ${resultSearchAccount}[1]
	Log To Console    [rowcount SearchAccount] : ${rowcountSearchAccount}

	${checkNodata}=    Run Keyword If    '${rowcountSearchAccount}'=='0'    Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchAccount}'!='0'    Check Value Table Search Account    ${DEFAULT_TH}     ${rowcountSearchAccount}    ${dataSearchAccount}
   
    #Click Clear
	Click Element Page    ${ACCOUNT_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Expire Date and Account Name, Name, Phone]

    #Expire Date
	Wait Until Contains Input Text    ${ACCOUNT_SEARCH_INPUT_EXPIREDATE_LOCATOR}    ${ACCOUNT_EXPIREDATE_VALUE}
	#Account Name, Name, Phone
	Wait Until Contains Input Text    ${ACCOUNT_SEARCH_TXT_ACCOUNTNAMENAMEPHONE_LOCATOR}    ${ACCOUNT_ACCOUNTNAMENAMEPHONE_VALUE}
	#Click Search
	Click Element Page    ${ACCOUNT_SEARCH_BTN_SEARCH_LOCATOR}
	
	#====== Verify DB ==========
	#Inquiry for verify DB  
	#  [((15, 'test', 1, datetime.datetime(2021, 9, 30, 0, 0), None, datetime.datetime(2021, 10, 14, 17, 57, 35), '1', None, None, None, None, 33, 'Admin0015', '11111', '0811111111', 15, 33),), 1] 
    ${resultSearchAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Account    ${MYSQL_TYPE_ACCOUNT_SEARCH_EXPIREDATEDATASEARCH}    null    ${ACCOUNT_EXPIREDATE_DB_VALUE}    ${ACCOUNT_ACCOUNTNAMENAMEPHONE_VALUE}    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_ACCOUNTS_FIELD_CREATEDAT} ${ORDERBY_DESC}
	${dataSearchAccount}=    Set Variable    ${resultSearchAccount}[0]
	Log To Console    [dataSearchAccount] : ${dataSearchAccount}
	${rowcountSearchAccount}=    Set Variable    ${resultSearchAccount}[1]
	Log To Console    [rowcount SearchAccount] : ${rowcountSearchAccount}

	${checkNodata}=    Run Keyword If    '${rowcountSearchAccount}'=='0'    Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchAccount}'!='0'    Check Value Table Search Account    ${DEFAULT_TH}     ${rowcountSearchAccount}    ${dataSearchAccount}
   
    #Click Clear
	Click Element Page    ${ACCOUNT_SEARCH_BTN_CLEAR_LOCATOR}

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${ACCOUNT_SEARCH_M16_1_1_1_000_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser 
