*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Edit] BankAccountManagement ###################
M8_0_0_3_002_BankAccountManagement_Error_Edit_VerifyScreen [Verify wording required field]
   [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click Bank Account Management
	...    5. Create Data
    ...    6. click edit button
    ...    7. delete data in field
	...    8. click delete button

    [Setup]    Open Browser To Login Page Super Admin EN

    #========== Click Setting Menu BankAccountManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_BANKACCOUNTMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_BANKACCOUNTMANAGEMENT_EN}    ${MENU_LBL_SETTING_BANKACCOUNTMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_BANKACCOUNTMANAGEMENT_EN}   ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_EN}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_EN}

	#========== Create Bank Account Management ======
	Log To Console    ${\n}=========== [Create] BankAccountManagement ===============
	Create Bank Account Management input require field data EN

	Log To Console    ${\n}=========== [Edit] BankAccountManagement =============== 
	#Click Edit Bank account
	Click Element Page    ${BANKACCOUNTINFORMATION_BTN_EDIT_LOCATOR}
	Sleep    0.5s
	
	#Edit Bank Account Information
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_EDIT_LBL_EDITBANKACCOUNTINFORMATION_LOCATOR}    ${BANKACCOUNTINFORMATION_EDIT_LBL_EDITBANKACCOUNTINFORMATION_EN} 

Verify wording required field [Account Name]
	#Account name *
	Clear Element Text  ${BANKACCOUNTINFORMATION_ADDEDIT_TXT_ACCOUNTNAME_LOCATOR}
	Click Element Page        ${BANKACCOUNTINFORMATION_ADDEDIT_TXT_ACCOUNTNAME_LOCATOR}
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_ADDEDIT_TXT_ACCOUNTNAME_PLEASEINPUTDATA_LOCATOR}    ${VALID_LBL_PLEASEINPUTDATA_EN} 

Verify wording required field [Account/PromptPay Number]
	#Account/PromptPay Number *
	Clear Element Text  ${BANKACCOUNTINFORMATION_ADDEDIT_TXT_ACCOUNTPROMPTPAYNUMBER_LOCATOR}
	Click Element Page        ${BANKACCOUNTINFORMATION_ADDEDIT_TXT_ACCOUNTPROMPTPAYNUMBER_LOCATOR}
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_ADDEDIT_TXT_ACCOUNTPROMPTPAYNUMBER_PLEASEINPUTDATA_LOCATOR}    ${VALID_LBL_PLEASEINPUTDATA_EN} 
	
    #Click Cancel button
	Click Element Page    ${BANKACCOUNTINFORMATION_ADDEDIT_BTN_CANCEL_LOCATOR}

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${BANKACCOUNTINFORMATION_EDIT_M8_0_0_3_002_ERROR_SCREENSHOT}
	
################### Generic Test Case Teardown ###################
	[Teardown]    Generic Test Case Teardown BankAccountManagement EN    ${BANKACCOUNTINFORMATION_ACCOUNTNAME_VALUE2} - ${BANKACCOUNTINFORMATION_ACCOUNTPROMPTPAYNUMBER_VALUE2}


