*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Create] BankAccountManagement ###################
M8_0_0_2_000_BankAccountManagement_Error_Create_VerifyScreen [Verify wording required field]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click Bank Account Management
    ...    5. click create button
    ...    5. click save button
	
    [Setup]    Open Browser To Login Page Super Admin
    	
	Log To Console    ${\n}=========== [Create] BankAccountManagement =============== 

    #========== Click Setting Menu BankAccountManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_BANKACCOUNTMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_BANKACCOUNTMANAGEMENT_TH}    ${MENU_LBL_SETTING_BANKACCOUNTMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_BANKACCOUNTMANAGEMENT_TH}   ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_TH}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_TH}
	
	#========== Check BankAccountManagement ======
	#Click Add Bank account
	Click Element Page    ${BANKACCOUNTINFORMATION_BTN_CREATE_LOCATOR}
	Sleep    0.5s
	
	#Create Bank Account Information
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_ADD_LBL_CREATEBANKACCOUNTINFORMATION_LOCATOR}    ${BANKACCOUNTINFORMATION_ADD_LBL_CREATEBANKACCOUNTINFORMATION_TH} 

    #Click Save button
	Click Element Page    ${BANKACCOUNTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}

Verify wording required field [Bank]
	#Bank *
	Click Element Page        ${BANKACCOUNTINFORMATION_ADDEDIT_TXT_BANK_LOCATOR}
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_ADDEDIT_TXT_BANK_PLEASEINPUTDATA_LOCATOR}    ${VALID_LBL_PLEASESELECTDATA_TH} 

Verify wording required field [Bank Account Type]
	#Bank Account Type *
	Click Element Page        ${BANKACCOUNTINFORMATION_ADDEDIT_TXT_BANKACCOUNTTYPE_LOCATOR}
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_ADDEDIT_TXT_BANKACCOUNTTYPE_PLEASEINPUTDATA_LOCATOR}    ${VALID_LBL_PLEASESELECTDATA_TH} 

Verify wording required field [Account/PromptPay Number]
	#Account/PromptPay Number *
	Click Element Page        ${BANKACCOUNTINFORMATION_ADDEDIT_TXT_ACCOUNTPROMPTPAYNUMBER_LOCATOR}
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_ADDEDIT_TXT_ACCOUNTPROMPTPAYNUMBER_PLEASEINPUTDATA_LOCATOR}    ${VALID_LBL_PLEASEINPUTDATA_TH} 
	
Verify wording required field [Account Name]
	#Account name *
	Click Element Page        ${BANKACCOUNTINFORMATION_ADDEDIT_TXT_ACCOUNTNAME_LOCATOR}
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_ADDEDIT_TXT_ACCOUNTNAME_PLEASEINPUTDATA_LOCATOR}    ${VALID_LBL_PLEASEINPUTDATA_TH} 

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${BANKACCOUNTINFORMATION_CREATE_M8_0_0_2_000_ERROR_SCREENSHOT}
	
################### Close Browser ###################
    [Teardown]    Close Browser 
