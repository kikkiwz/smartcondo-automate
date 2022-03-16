*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Delete] BankAccountManagement ###################
M8_1_1_4_000_BankAccountManagement_Success_Delete_VerifyAction [VerifyAction "Delete Bank Account"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click Bank Account Management
	...    5. click create button
	...    6. click delete button
	
    [Setup]    Open Browser To Login Page Super Admin EN
   	
    #========== Click Setting Menu BankAccountManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_BANKACCOUNTMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_BANKACCOUNTMANAGEMENT_EN}    ${MENU_LBL_SETTING_BANKACCOUNTMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_BANKACCOUNTMANAGEMENT_EN}   ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_EN}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_EN}
	
	#========== Create Bank Account Management ======
	Log To Console    ${\n}=========== [Create] BankAccountManagement ===============
    Create Bank Account Management input require field data EN
    Sleep    0.5s

Verify action : click Cancel button
    #Click Delete button
	Click Element Page    ${BANKACCOUNTINFORMATION_BTN_DELETE_LOCATOR}

    #Click Cancel button
	Click Element Page    ${ALERT_BTN_CANCEL_LOCATOR}

Verify action : click Confirm button
	Log To Console    ${\n}=========== [Delete] BankAccountManagement =============== 

	#Click delete button
    Click Delete Data EN    ${BANKACCOUNTINFORMATION_BTN_DELETE_LOCATOR}    ${BANKACCOUNTINFORMATION_ACCOUNTNAME_VALUE2} - ${BANKACCOUNTINFORMATION_ACCOUNTPROMPTPAYNUMBER_VALUE2}
	
	#================ Verify DB ================	
	Request Verify DB Check Data Delete Bank Account    ${MYSQL_TYPE_DELETE_REQUIREDFIELD}    ${BANKACCOUNTINFORMATION_BANKID_VALUE2}    ${BANKACCOUNTINFORMATION_BRANCH_VALUE2}    ${BANKACCOUNTINFORMATION_BANKACCOUNTTYPEID_VALUE2}    ${BANKACCOUNTINFORMATION_ACCOUNTNAME_VALUE2}    ${BANKACCOUNTINFORMATION_ACCOUNTPROMPTPAYNUMBER_VALUE2}    ${BANKACCOUNTINFORMATION_OPERATETYPEID_VALUE2}    ${BANKACCOUNTINFORMATION_STATUSID_VALUE2}    ${BANKACCOUNTINFORMATION_REMARK_VALUE2}
    
	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${BANKACCOUNTINFORMATION_DELETE_M8_1_1_4_000_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser 
