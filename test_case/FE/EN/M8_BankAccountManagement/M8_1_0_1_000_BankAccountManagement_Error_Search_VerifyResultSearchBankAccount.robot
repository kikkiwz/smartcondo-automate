*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Search] BankAccountManagement ###################
M8_1_0_1_000_BankAccountManagement_Error_Search_VerifyResultSearchBankAccount [Data Not Found Send request to DB (searchBankAccount)]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click Bank Account Management

    [Setup]    Open Browser To Login Page Super Admin EN
   	
    #========== Click Setting Menu BankAccountManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_BANKACCOUNTMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_BANKACCOUNTMANAGEMENT_EN}    ${MENU_LBL_SETTING_BANKACCOUNTMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_BANKACCOUNTMANAGEMENT_EN}   ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_EN}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_EN}
	
	#========== Check BankAccountManagement ======
    #================ Check Value Table ================
	#====== Verify DB ==========
    #Inquiry for verify DB  
	#  [((9, 10, 1, None, '1111111111', 'เทสบัญชี', datetime.datetime(2021, 9, 21, 17, 8, 41), '10', None, None, None, None, 7, 1, 1, None),), 1] 
    ${resultSearchBankAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Bank Account    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
	${dataSearchBankAccount}=    Set Variable    ${resultSearchBankAccount}[0]
	Log To Console    [dataSearchBankAccount] : ${dataSearchBankAccount}
	${rowcountSearchBankAccount}=    Set Variable    ${resultSearchBankAccount}[1]
	Log To Console    [rowcount SearchBankAccount] : ${rowcountSearchBankAccount}

	${checkNodata}=    Run Keyword If    '${rowcountSearchBankAccount}'=='0'    Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchBankAccount}'!='0'    Check Value Table Search Bank Account     ${DEFAULT_EN}    ${rowcountSearchBankAccount}    ${dataSearchBankAccount}
    
	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${BANKACCOUNTINFORMATION_SEARCH_M8_1_0_1_000_ERROR_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser 
