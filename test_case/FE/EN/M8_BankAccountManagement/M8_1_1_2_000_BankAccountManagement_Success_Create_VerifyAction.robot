*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Create] BankAccountManagement ###################
M8_1_1_2_000_BankAccountManagement_Success_Create_VerifyAction [VerifyAction "Create Bank Account"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click Bank Account Management
    ...    5. click create button
    ...    6. Create data
    ...    7. click delete button
    [Setup]    Open Browser To Login Page Super Admin EN

	Log To Console    ${\n}=========== [Create] BankAccountManagement =============== 

    #========== Click Setting Menu BankAccountManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_BANKACCOUNTMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_BANKACCOUNTMANAGEMENT_EN}    ${MENU_LBL_SETTING_BANKACCOUNTMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_BANKACCOUNTMANAGEMENT_EN}   ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_EN}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_EN}
	
	#========== Check BankAccountManagement ======
	#Click Create Bank account
	Click Element Page    ${BANKACCOUNTINFORMATION_BTN_CREATE_LOCATOR}
	Sleep    0.5s
	
	#Create Bank Account Information
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_ADD_LBL_CREATEBANKACCOUNTINFORMATION_LOCATOR}    ${BANKACCOUNTINFORMATION_ADD_LBL_CREATEBANKACCOUNTINFORMATION_EN} 

Verify Action : click X button   
    #Click X button	
    Click Element Page    ${BANKACCOUNTINFORMATION_BTN_CLOSE_LOCATOR}

	#NameHader
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_EN} 
	
	#NamePage
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_EN} 

Verify Action : click save button [input all field data]

    #Create data
    Create Bank Account Management input all field data EN

	#Click delete button
    Click Delete Data EN    ${BANKACCOUNTINFORMATION_BTN_DELETE_LOCATOR}    ${BANKACCOUNTINFORMATION_ACCOUNTNAME_VALUE1} - ${BANKACCOUNTINFORMATION_ACCOUNTPROMPTPAYNUMBER_VALUE1}
	
Verify Action : click save button [input require field data] 

    #Create data
    Create Bank Account Management input require field data EN

    #Click delete button
    Click Delete Data EN    ${BANKACCOUNTINFORMATION_BTN_DELETE_LOCATOR}    ${BANKACCOUNTINFORMATION_ACCOUNTNAME_VALUE2} - ${BANKACCOUNTINFORMATION_ACCOUNTPROMPTPAYNUMBER_VALUE2}
		
Verify Action : click cancel button

    #Click Create Bank account
	Click Element Page    ${BANKACCOUNTINFORMATION_BTN_CREATE_LOCATOR}
	Sleep    0.5s
	
	#Create Bank Account Information
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_ADD_LBL_CREATEBANKACCOUNTINFORMATION_LOCATOR}    ${BANKACCOUNTINFORMATION_ADD_LBL_CREATEBANKACCOUNTINFORMATION_EN} 
    
	#Click Cancel button
    Click Element Page    ${BANKACCOUNTINFORMATION_ADDEDIT_BTN_CANCEL_LOCATOR}

	#NameHader
	# Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_EN} 
	
	#NamePage
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_EN} 
	
	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${BANKACCOUNTINFORMATION_CREATE_M8_1_1_2_000_SUCCESS_SCREENSHOT}
	
################### Close Browser ###################
    [Teardown]    Close Browser 
