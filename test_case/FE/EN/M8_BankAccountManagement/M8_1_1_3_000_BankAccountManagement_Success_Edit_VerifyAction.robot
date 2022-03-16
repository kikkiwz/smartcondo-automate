*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Edit] BankAccountManagement ###################
M8_1_1_3_000_BankAccountManagement_Success_Edit_VerifyAction [VerifyAction "Edit Bank Account"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click Bank Account Management
	...    5. click create button
    ...    6. click edit button
	...    7. click delete button

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
	
Verify Action : click X button   
    #Click X button	
    Click Element Page    ${BANKACCOUNTINFORMATION_BTN_CLOSE_LOCATOR}

	#NameHader
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_EN} 
	
	#NamePage
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_EN} 

Verify Action : click save button

    #Edit data
    Edit Bank Account Management input all field data EN
	
Verify Action : click cancel button

    #Click Edit Bank account
	Click Element Page    ${BANKACCOUNTINFORMATION_BTN_EDIT_LOCATOR}
	Sleep    0.5s
	
	#Edit Bank Account Information
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_EDIT_LBL_EDITBANKACCOUNTINFORMATION_LOCATOR}    ${BANKACCOUNTINFORMATION_EDIT_LBL_EDITBANKACCOUNTINFORMATION_EN} 
	
	#Click Cancel button
    Click Element Page    ${BANKACCOUNTINFORMATION_ADDEDIT_BTN_CANCEL_LOCATOR}

	#NameHader
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_EN} 
	
	#NamePage
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_EN} 
	
	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${BANKACCOUNTINFORMATION_EDIT_M8_1_1_3_000_SUCCESS_SCREENSHOT}
	
################### Generic Test Case Teardown ###################
	[Teardown]    Generic Test Case Teardown BankAccountManagement EN    ${BANKACCOUNTINFORMATION_ACCOUNTNAME_VALUE1} - ${BANKACCOUNTINFORMATION_ACCOUNTPROMPTPAYNUMBER_VALUE1}

