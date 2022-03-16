*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Search] BankAccountManagement ###################
M8_1_1_1_000_BankAccountManagement_Success_Search_VerifyAction [Verify Action page "Search Bank Account"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click Bank Account Management

    [Setup]    Open Browser To Login Page Super Admin
   	
    #========== Click Setting Menu BankAccountManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_BANKACCOUNTMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_BANKACCOUNTMANAGEMENT_TH}    ${MENU_LBL_SETTING_BANKACCOUNTMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_BANKACCOUNTMANAGEMENT_TH}   ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_TH}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_TH}
	
	#========== Create Bank Account Management ======
	Log To Console    ${\n}=========== [Create] BankAccountManagement ===============
	#Create data
	Create Bank Account Management input require field data No Check Table
    Create Bank Account Management input all field data No Check Table

Verify API Onload and mapping data after click Bank Account Management

    #================ Check Value Table ================
	#====== Verify DB ==========
    #Inquiry for verify DB  
	#  [((9, 10, 1, None, '1111111111', 'เทสบัญชี', datetime.datetime(2021, 9, 21, 17, 8, 41), '10', None, None, None, None, 7, 1, 1, None),), 1] 
    ${resultSearchBankAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Bank Account    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
	${dataSearchBankAccount}=    Set Variable    ${resultSearchBankAccount}[0]
	Log To Console    [dataSearchBankAccount] : ${dataSearchBankAccount}
	${rowcountSearchBankAccount}=    Set Variable    ${resultSearchBankAccount}[1]
	Log To Console    [rowcount SearchBankAccount] : ${rowcountSearchBankAccount}

	${checkNodata}=    Run Keyword If    '${rowcountSearchBankAccount}'=='0'    Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchBankAccount}'!='0'    Check Value Table Search Bank Account    ${DEFAULT_TH}     ${rowcountSearchBankAccount}    ${dataSearchBankAccount}
    
 
Verify Action : click search button [Search Bank Account Name]

    #Bank Account Name
	Wait Until Contains Input Text    ${BANKACCOUNTINFORMATION_SEARCH_INPUT_BANKACCOUNTNAME_LOCATOR}    ${BANKACCOUNTINFORMATION_ACCOUNTNAME_VALUE1}
	#Click Search
	Click Element Page    ${BANKACCOUNTINFORMATION_SEARCH_BTN_SEARCH_LOCATOR}
	
	#====== Verify DB ==========
	#Inquiry for verify DB  
	#  [((9, 10, 1, None, '1111111111', 'เทสบัญชี', datetime.datetime(2021, 9, 21, 17, 8, 41), '10', None, None, None, None, 7, 1, 1, None),), 1] 
    ${resultSearchBankAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Bank Account    ${MYSQL_TYPE_BANKACCOUNT_SEARCH_BANKACCOUNTNAME}    ${BANKACCOUNTINFORMATION_ACCOUNTNAME_VALUE1}    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
	${dataSearchBankAccount}=    Set Variable    ${resultSearchBankAccount}[0]
	Log To Console    [dataSearchBankAccount] : ${dataSearchBankAccount}
	${rowcountSearchBankAccount}=    Set Variable    ${resultSearchBankAccount}[1]
	Log To Console    [rowcount SearchBankAccount] : ${rowcountSearchBankAccount}

	${checkNodata}=    Run Keyword If    '${rowcountSearchBankAccount}'=='0'    Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchBankAccount}'!='0'    Check Value Table Search Bank Account    ${DEFAULT_TH}     ${rowcountSearchBankAccount}    ${dataSearchBankAccount}
   
    #Click Clear
	Click Element Page    ${BANKACCOUNTINFORMATION_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Bank Account Number / PromptPay Number]

    #Bank Account Number / PromptPay Number
	Wait Until Contains Input Text    ${BANKACCOUNTINFORMATION_SEARCH_INPUT_BANKACCOUNTNUMBERPROMPTPAYNUMBER_LOCATOR}    ${BANKACCOUNTINFORMATION_ACCOUNTPROMPTPAYNUMBER_VALUE1}
	#Click Search
	Click Element Page    ${BANKACCOUNTINFORMATION_SEARCH_BTN_SEARCH_LOCATOR}
	
	#====== Verify DB ==========
	#Inquiry for verify DB  
	#  [((9, 10, 1, None, '1111111111', 'เทสบัญชี', datetime.datetime(2021, 9, 21, 17, 8, 41), '10', None, None, None, None, 7, 1, 1, None),), 1] 
    ${resultSearchBankAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Bank Account    ${MYSQL_TYPE_BANKACCOUNT_SEARCH_BANKACCOUNTNUMBER}    null    ${BANKACCOUNTINFORMATION_ACCOUNTPROMPTPAYNUMBER_VALUE1}    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
	${dataSearchBankAccount}=    Set Variable    ${resultSearchBankAccount}[0]
	Log To Console    [dataSearchBankAccount] : ${dataSearchBankAccount}
	${rowcountSearchBankAccount}=    Set Variable    ${resultSearchBankAccount}[1]
	Log To Console    [rowcount SearchBankAccount] : ${rowcountSearchBankAccount}

	${checkNodata}=    Run Keyword If    '${rowcountSearchBankAccount}'=='0'    Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchBankAccount}'!='0'    Check Value Table Search Bank Account    ${DEFAULT_TH}     ${rowcountSearchBankAccount}    ${dataSearchBankAccount}
   
    #Click Clear
	Click Element Page    ${BANKACCOUNTINFORMATION_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Status]

    #Status
	Select Dropdown    ${BANKACCOUNTINFORMATION_SEARCH_DDL_STATUS_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${BANKACCOUNTINFORMATION_STATUS_TH_VALUE1}
	Sleep    0.5s
	#Click Search
	Click Element Page    ${BANKACCOUNTINFORMATION_SEARCH_BTN_SEARCH_LOCATOR}
	
	#====== Verify DB ==========
	#Inquiry for verify DB  
	#  [((9, 10, 1, None, '1111111111', 'เทสบัญชี', datetime.datetime(2021, 9, 21, 17, 8, 41), '10', None, None, None, None, 7, 1, 1, None),), 1] 
    ${resultSearchBankAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Bank Account    ${MYSQL_TYPE_BANKACCOUNT_SEARCH_STATUS}    null    null    ${BANKACCOUNTINFORMATION_STATUSID_VALUE1}    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
	${dataSearchBankAccount}=    Set Variable    ${resultSearchBankAccount}[0]
	Log To Console    [dataSearchBankAccount] : ${dataSearchBankAccount}
	${rowcountSearchBankAccount}=    Set Variable    ${resultSearchBankAccount}[1]
	Log To Console    [rowcount SearchBankAccount] : ${rowcountSearchBankAccount}

	${checkNodata}=    Run Keyword If    '${rowcountSearchBankAccount}'=='0'    Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchBankAccount}'!='0'    Check Value Table Search Bank Account    ${DEFAULT_TH}     ${rowcountSearchBankAccount}    ${dataSearchBankAccount}
   
    #Click Clear
	Click Element Page    ${BANKACCOUNTINFORMATION_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Bank Account Name and Bank Account Number / PromptPay Number]

    #Bank Account Name
	Wait Until Contains Input Text    ${BANKACCOUNTINFORMATION_SEARCH_INPUT_BANKACCOUNTNAME_LOCATOR}    ${BANKACCOUNTINFORMATION_ACCOUNTNAME_VALUE1}
	#Bank Account Number / PromptPay Number
	Wait Until Contains Input Text    ${BANKACCOUNTINFORMATION_SEARCH_INPUT_BANKACCOUNTNUMBERPROMPTPAYNUMBER_LOCATOR}    ${BANKACCOUNTINFORMATION_ACCOUNTPROMPTPAYNUMBER_VALUE1}
	#Click Search
	Click Element Page    ${BANKACCOUNTINFORMATION_SEARCH_BTN_SEARCH_LOCATOR}
	
	#====== Verify DB ==========
	#Inquiry for verify DB  
	#  [((9, 10, 1, None, '1111111111', 'เทสบัญชี', datetime.datetime(2021, 9, 21, 17, 8, 41), '10', None, None, None, None, 7, 1, 1, None),), 1] 
    ${resultSearchBankAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Bank Account    ${MYSQL_TYPE_BANKACCOUNT_SEARCH_BANKACCOUNTNAMEBANKACCOUNTNUMBER}    ${BANKACCOUNTINFORMATION_ACCOUNTNAME_VALUE1}    ${BANKACCOUNTINFORMATION_ACCOUNTPROMPTPAYNUMBER_VALUE1}    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
	${dataSearchBankAccount}=    Set Variable    ${resultSearchBankAccount}[0]
	Log To Console    [dataSearchBankAccount] : ${dataSearchBankAccount}
	${rowcountSearchBankAccount}=    Set Variable    ${resultSearchBankAccount}[1]
	Log To Console    [rowcount SearchBankAccount] : ${rowcountSearchBankAccount}

	${checkNodata}=    Run Keyword If    '${rowcountSearchBankAccount}'=='0'    Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchBankAccount}'!='0'    Check Value Table Search Bank Account    ${DEFAULT_TH}     ${rowcountSearchBankAccount}    ${dataSearchBankAccount}
   
    #Click Clear
	Click Element Page    ${BANKACCOUNTINFORMATION_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Bank Account Name and Status]

    #Bank Account Name
	Wait Until Contains Input Text    ${BANKACCOUNTINFORMATION_SEARCH_INPUT_BANKACCOUNTNAME_LOCATOR}    ${BANKACCOUNTINFORMATION_ACCOUNTNAME_VALUE1}
	#Status
	Select Dropdown    ${BANKACCOUNTINFORMATION_SEARCH_DDL_STATUS_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${BANKACCOUNTINFORMATION_STATUS_TH_VALUE1}
	Sleep    0.5s
	#Click Search
	Click Element Page    ${BANKACCOUNTINFORMATION_SEARCH_BTN_SEARCH_LOCATOR}
	
	#====== Verify DB ==========
	#Inquiry for verify DB  
	#  [((9, 10, 1, None, '1111111111', 'เทสบัญชี', datetime.datetime(2021, 9, 21, 17, 8, 41), '10', None, None, None, None, 7, 1, 1, None),), 1] 
    ${resultSearchBankAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Bank Account    ${MYSQL_TYPE_BANKACCOUNT_SEARCH_BANKACCOUNTNAMESTATUS}    ${BANKACCOUNTINFORMATION_ACCOUNTNAME_VALUE1}    null    ${BANKACCOUNTINFORMATION_STATUSID_VALUE1}    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
	${dataSearchBankAccount}=    Set Variable    ${resultSearchBankAccount}[0]
	Log To Console    [dataSearchBankAccount] : ${dataSearchBankAccount}
	${rowcountSearchBankAccount}=    Set Variable    ${resultSearchBankAccount}[1]
	Log To Console    [rowcount SearchBankAccount] : ${rowcountSearchBankAccount}

	${checkNodata}=    Run Keyword If    '${rowcountSearchBankAccount}'=='0'    Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchBankAccount}'!='0'    Check Value Table Search Bank Account    ${DEFAULT_TH}     ${rowcountSearchBankAccount}    ${dataSearchBankAccount}
   
    #Click Clear
	Click Element Page    ${BANKACCOUNTINFORMATION_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Bank Account Number / PromptPay Number and Status]
    #Bank Account Number / PromptPay Number
	Wait Until Contains Input Text    ${BANKACCOUNTINFORMATION_SEARCH_INPUT_BANKACCOUNTNUMBERPROMPTPAYNUMBER_LOCATOR}    ${BANKACCOUNTINFORMATION_ACCOUNTPROMPTPAYNUMBER_VALUE1}
	#Status
	Select Dropdown    ${BANKACCOUNTINFORMATION_SEARCH_DDL_STATUS_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${BANKACCOUNTINFORMATION_STATUS_TH_VALUE1}
	Sleep    0.5s
	#Click Search
	Click Element Page    ${BANKACCOUNTINFORMATION_SEARCH_BTN_SEARCH_LOCATOR}
	
	#====== Verify DB ==========
	#Inquiry for verify DB  
	#  [((9, 10, 1, None, '1111111111', 'เทสบัญชี', datetime.datetime(2021, 9, 21, 17, 8, 41), '10', None, None, None, None, 7, 1, 1, None),), 1] 
    ${resultSearchBankAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Bank Account    ${MYSQL_TYPE_BANKACCOUNT_SEARCH_BANKACCOUNTNUMBERSTATUS}    null    ${BANKACCOUNTINFORMATION_ACCOUNTPROMPTPAYNUMBER_VALUE1}    ${BANKACCOUNTINFORMATION_STATUSID_VALUE1}    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
	${dataSearchBankAccount}=    Set Variable    ${resultSearchBankAccount}[0]
	Log To Console    [dataSearchBankAccount] : ${dataSearchBankAccount}
	${rowcountSearchBankAccount}=    Set Variable    ${resultSearchBankAccount}[1]
	Log To Console    [rowcount SearchBankAccount] : ${rowcountSearchBankAccount}

	${checkNodata}=    Run Keyword If    '${rowcountSearchBankAccount}'=='0'    Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchBankAccount}'!='0'    Check Value Table Search Bank Account    ${DEFAULT_TH}     ${rowcountSearchBankAccount}    ${dataSearchBankAccount}
   
    #Click Clear
	Click Element Page    ${BANKACCOUNTINFORMATION_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Bank Account Name and Bank Account Number / PromptPay Number and status]
    #Bank Account Name
	Wait Until Contains Input Text    ${BANKACCOUNTINFORMATION_SEARCH_INPUT_BANKACCOUNTNAME_LOCATOR}    ${BANKACCOUNTINFORMATION_ACCOUNTNAME_VALUE1}
	#Bank Account Number / PromptPay Number
	Wait Until Contains Input Text    ${BANKACCOUNTINFORMATION_SEARCH_INPUT_BANKACCOUNTNUMBERPROMPTPAYNUMBER_LOCATOR}    ${BANKACCOUNTINFORMATION_ACCOUNTPROMPTPAYNUMBER_VALUE1}
	#Status
	Select Dropdown    ${BANKACCOUNTINFORMATION_SEARCH_DDL_STATUS_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${BANKACCOUNTINFORMATION_STATUS_TH_VALUE1}
	Sleep    0.5s
	#Click Search
	Click Element Page    ${BANKACCOUNTINFORMATION_SEARCH_BTN_SEARCH_LOCATOR}
	
	#====== Verify DB ==========
	#Inquiry for verify DB  
	#  [((9, 10, 1, None, '1111111111', 'เทสบัญชี', datetime.datetime(2021, 9, 21, 17, 8, 41), '10', None, None, None, None, 7, 1, 1, None),), 1] 
    ${resultSearchBankAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Bank Account    ${MYSQL_TYPE_BANKACCOUNT_SEARCH_BANKACCOUNTNAMESTATUS}    ${BANKACCOUNTINFORMATION_ACCOUNTNAME_VALUE1}    ${BANKACCOUNTINFORMATION_ACCOUNTPROMPTPAYNUMBER_VALUE1}    ${BANKACCOUNTINFORMATION_STATUSID_VALUE1}    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
	${dataSearchBankAccount}=    Set Variable    ${resultSearchBankAccount}[0]
	Log To Console    [dataSearchBankAccount] : ${dataSearchBankAccount}
	${rowcountSearchBankAccount}=    Set Variable    ${resultSearchBankAccount}[1]
	Log To Console    [rowcount SearchBankAccount] : ${rowcountSearchBankAccount}

	${checkNodata}=    Run Keyword If    '${rowcountSearchBankAccount}'=='0'    Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchBankAccount}'!='0'    Check Value Table Search Bank Account    ${DEFAULT_TH}     ${rowcountSearchBankAccount}    ${dataSearchBankAccount}
   
Verify Action : click clear button

    #Click Clear
	Click Element Page    ${BANKACCOUNTINFORMATION_SEARCH_BTN_CLEAR_LOCATOR}

    #================ Check Value Table ================
	#====== Verify DB ==========
    #Inquiry for verify DB  
	#  [((9, 10, 1, None, '1111111111', 'เทสบัญชี', datetime.datetime(2021, 9, 21, 17, 8, 41), '10', None, None, None, None, 7, 1, 1, None),), 1] 
    ${resultSearchBankAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Bank Account    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
	${dataSearchBankAccount}=    Set Variable    ${resultSearchBankAccount}[0]
	Log To Console    [dataSearchBankAccount] : ${dataSearchBankAccount}
	${rowcountSearchBankAccount}=    Set Variable    ${resultSearchBankAccount}[1]
	Log To Console    [rowcount SearchBankAccount] : ${rowcountSearchBankAccount}

	${checkNodata}=    Run Keyword If    '${rowcountSearchBankAccount}'=='0'    Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchBankAccount}'!='0'    Check Value Table Search Bank Account    ${DEFAULT_TH}     ${rowcountSearchBankAccount}    ${dataSearchBankAccount}
    
Verify Action : click create button

    #Click Create Bank account
	Click Element Page    ${BANKACCOUNTINFORMATION_BTN_CREATE_LOCATOR}
	Sleep    0.5s
	
	#Create Bank Account Information
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_ADD_LBL_CREATEBANKACCOUNTINFORMATION_LOCATOR}    ${BANKACCOUNTINFORMATION_ADD_LBL_CREATEBANKACCOUNTINFORMATION_TH} 
    
	#Click Cancel button
    Click Element Page    ${BANKACCOUNTINFORMATION_ADDEDIT_BTN_CANCEL_LOCATOR}

Verify Action : click view button

    #Click View Bank account
	Click Element Page    ${BANKACCOUNTINFORMATION_BTN_VIEW_LOCATOR}
	Sleep    0.5s
	
	#View Bank Account Information
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBL_VIEWBANKACCOUNTINFORMATION_LOCATOR}    ${BANKACCOUNTINFORMATION_VIEW_LBL_VIEWBANKACCOUNTINFORMATION_TH} 
	
    #Click X button	
    Click Element Page    ${BANKACCOUNTINFORMATION_BTN_CLOSE_LOCATOR}

Verify Action : click edit button

    #Click Edit Bank account
	Click Element Page    ${BANKACCOUNTINFORMATION_BTN_EDIT_LOCATOR}
	Sleep    0.5s
	
	#Edit Bank Account Information
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_EDIT_LBL_EDITBANKACCOUNTINFORMATION_LOCATOR}    ${BANKACCOUNTINFORMATION_EDIT_LBL_EDITBANKACCOUNTINFORMATION_TH} 
	
	#Click Cancel button
    Click Element Page    ${BANKACCOUNTINFORMATION_ADDEDIT_BTN_CANCEL_LOCATOR}

Verify Action : click delete button

    #Click delete button and Check Popup Delete 
	Check Popup Delete TH    ${BANKACCOUNTINFORMATION_BTN_DELETE_LOCATOR}    ${BANKACCOUNTINFORMATION_ACCOUNTNAME_VALUE1} - ${BANKACCOUNTINFORMATION_ACCOUNTPROMPTPAYNUMBER_VALUE1}

Verify Action : click 50 button

    #Click 50 button
	Click Element Page    ${BANKACCOUNTINFORMATION_BTN_50_LOCATOR}

	#====== Verify DB ==========
	#Inquiry for verify DB  
	#  [((9, 10, 1, None, '1111111111', 'เทสบัญชี', datetime.datetime(2021, 9, 21, 17, 8, 41), '10', None, None, None, None, 7, 1, 1, None),), 1] 
    ${resultSearchBankAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Bank Account    ${MYSQL_TYPE_BANKACCOUNT_SEARCH_BANKACCOUNTNAME}    ${BANKACCOUNTINFORMATION_ACCOUNTNAME_VALUE1}    null    null    ${LIMIT_50}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
	${dataSearchBankAccount}=    Set Variable    ${resultSearchBankAccount}[0]
	Log To Console    [dataSearchBankAccount] : ${dataSearchBankAccount}
	${rowcountSearchBankAccount}=    Set Variable    ${resultSearchBankAccount}[1]
	Log To Console    [rowcount SearchBankAccount] : ${rowcountSearchBankAccount}

	${checkNodata}=    Run Keyword If    '${rowcountSearchBankAccount}'=='0'    Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchBankAccount}'!='0'    Check Value Table Search Bank Account    ${DEFAULT_TH}     ${rowcountSearchBankAccount}    ${dataSearchBankAccount}
   
Verify Action : click 100 button

    #Click 100 button
	Click Element Page    ${BANKACCOUNTINFORMATION_BTN_100_LOCATOR}

	#====== Verify DB ==========
	#Inquiry for verify DB  
	#  [((9, 10, 1, None, '1111111111', 'เทสบัญชี', datetime.datetime(2021, 9, 21, 17, 8, 41), '10', None, None, None, None, 7, 1, 1, None),), 1] 
    ${resultSearchBankAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Bank Account    ${MYSQL_TYPE_BANKACCOUNT_SEARCH_BANKACCOUNTNAME}    ${BANKACCOUNTINFORMATION_ACCOUNTNAME_VALUE1}    null    null    ${LIMIT_100}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
	${dataSearchBankAccount}=    Set Variable    ${resultSearchBankAccount}[0]
	Log To Console    [dataSearchBankAccount] : ${dataSearchBankAccount}
	${rowcountSearchBankAccount}=    Set Variable    ${resultSearchBankAccount}[1]
	Log To Console    [rowcount SearchBankAccount] : ${rowcountSearchBankAccount}

	${checkNodata}=    Run Keyword If    '${rowcountSearchBankAccount}'=='0'    Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchBankAccount}'!='0'    Check Value Table Search Bank Account    ${DEFAULT_TH}     ${rowcountSearchBankAccount}    ${dataSearchBankAccount}
   
Verify Action : click 1000 button
    #Click 1000 button
	Click Element Page    ${BANKACCOUNTINFORMATION_BTN_1000_LOCATOR}

	#====== Verify DB ==========
	#Inquiry for verify DB  
	#  [((9, 10, 1, None, '1111111111', 'เทสบัญชี', datetime.datetime(2021, 9, 21, 17, 8, 41), '10', None, None, None, None, 7, 1, 1, None),), 1] 
    ${resultSearchBankAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Bank Account    ${MYSQL_TYPE_BANKACCOUNT_SEARCH_BANKACCOUNTNAME}    ${BANKACCOUNTINFORMATION_ACCOUNTNAME_VALUE1}    null    null    ${LIMIT_1000}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
	${dataSearchBankAccount}=    Set Variable    ${resultSearchBankAccount}[0]
	Log To Console    [dataSearchBankAccount] : ${dataSearchBankAccount}
	${rowcountSearchBankAccount}=    Set Variable    ${resultSearchBankAccount}[1]
	Log To Console    [rowcount SearchBankAccount] : ${rowcountSearchBankAccount}

	${checkNodata}=    Run Keyword If    '${rowcountSearchBankAccount}'=='0'    Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchBankAccount}'!='0'    Check Value Table Search Bank Account    ${DEFAULT_TH}     ${rowcountSearchBankAccount}    ${dataSearchBankAccount}

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${BANKACCOUNTINFORMATION_SEARCH_M8_1_1_1_000_SUCCESS_SCREENSHOT}

################### Generic Test Case Teardown ###################
	[Teardown]    Generic Test Case Teardown BankAccountManagement2    ${BANKACCOUNTINFORMATION_ACCOUNTNAME_VALUE1} - ${BANKACCOUNTINFORMATION_ACCOUNTPROMPTPAYNUMBER_VALUE1}    ${BANKACCOUNTINFORMATION_ACCOUNTNAME_VALUE2} - ${BANKACCOUNTINFORMATION_ACCOUNTPROMPTPAYNUMBER_VALUE2}

