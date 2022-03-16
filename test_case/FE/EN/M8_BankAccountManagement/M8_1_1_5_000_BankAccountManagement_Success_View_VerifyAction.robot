*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [View] BankAccountManagement ###################
M8_1_1_5_000_BankAccountManagement_Success_View_VerifyAction [VerifyAction "View Bank Account"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click Bank Account Management
	...    5. click create button
    ...    6. click view button
	...    7. click delete button

    [Setup]    Open Browser To Login Page Super Admin EN
   	
    #========== Click Setting Menu BankAccountManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_BANKACCOUNTMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_BANKACCOUNTMANAGEMENT_EN}    ${MENU_LBL_SETTING_BANKACCOUNTMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_BANKACCOUNTMANAGEMENT_EN}   ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_EN}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_EN}
	
	#========== Create Bank Account Management ======
	Log To Console    ${\n}=========== [Create] BankAccountManagement ===============
    Create Bank Account Management input all field data EN 
    Sleep    0.5s

	Log To Console    ${\n}=========== [View] BankAccountManagement =============== 
	#Click View Bank account
	Click Element Page    ${BANKACCOUNTINFORMATION_BTN_VIEW_LOCATOR}
	Sleep    0.5s
	
	#View Bank Account Information
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBL_VIEWBANKACCOUNTINFORMATION_LOCATOR}    ${BANKACCOUNTINFORMATION_VIEW_LBL_VIEWBANKACCOUNTINFORMATION_EN} 
	
	#Bank [Value]
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBL_BANK_LOCATOR}    ${BANKACCOUNTINFORMATION_VIEW_LBL_BANK_EN} 
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBD_BANK_LOCATOR}    ${BANKACCOUNTINFORMATION_BANK_EN_VALUE1} 
	
	#Bank Account Type  [Value]
	Wait Until Contains Element Text Should Be   ${BANKACCOUNTINFORMATION_VIEW_LBL_BANKACCOUNTTYPE_LOCATOR}    ${BANKACCOUNTINFORMATION_VIEW_LBL_BANKACCOUNTTYPE_EN} 
    Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBD_BANKACCOUNTTYPE_LOCATOR}    ${BANKACCOUNTINFORMATION_BANKACCOUNTTYPE_EN_VALUE1} 
	
	#Branch [Value]
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBL_BRANCH_LOCATOR}    ${BANKACCOUNTINFORMATION_VIEW_LBL_BRANCH_EN} 
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBD_BRANCH_LOCATOR}    ${BANKACCOUNTINFORMATION_BRANCH_VALUE1} 
	
	#Account name [Value]
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBL_ACCOUNTNAME_LOCATOR}    ${BANKACCOUNTINFORMATION_VIEW_LBL_ACCOUNTNAME_EN} 
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBD_ACCOUNTNAME_LOCATOR}    ${BANKACCOUNTINFORMATION_ACCOUNTNAME_VALUE1} 
	
	#Account/PromptPay Number [Value]
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBL_ACCOUNTPROMPTPAYNUMBER_LOCATOR}    ${BANKACCOUNTINFORMATION_VIEW_LBL_ACCOUNTPROMPTPAYNUMBER_EN} 
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBD_ACCOUNTPROMPTPAYNUMBER_LOCATOR}    ${BANKACCOUNTINFORMATION_ACCOUNTPROMPTPAYNUMBER_VALUE1} 
	
	#Status [Value]
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBL_STATUS_LOCATOR}    ${BANKACCOUNTINFORMATION_VIEW_LBL_STATUS_EN} 
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBD_STATUS_LOCATOR}    ${BANKACCOUNTINFORMATION_STATUS_EN_VALUE1} 
	
	#Operate Type [Value]
	Wait Until Contains Element Text Should Be   ${BANKACCOUNTINFORMATION_VIEW_LBL_OPERATETYPE_LOCATOR}    ${BANKACCOUNTINFORMATION_VIEW_LBL_OPERATETYPE_EN} 
	Wait Until Contains Element Text Should Be   ${BANKACCOUNTINFORMATION_VIEW_LBD_OPERATETYPE_LOCATOR}    ${BANKACCOUNTINFORMATION_OPERATETYPE_EN_VALUE1} 
	
	#Remark [Value]
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBL_REMARK_LOCATOR}    ${BANKACCOUNTINFORMATION_VIEW_LBL_REMARK_EN} 
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBD_REMARK_LOCATOR}    ${BANKACCOUNTINFORMATION_REMARK_VALUE1} 
	
	#================ Verify DB ================	
	Request Verify DB Check Data View Bank Account    ${MYSQL_TYPE_VIEW_ALLFIELD}    ${BANKACCOUNTINFORMATION_BANKID_VALUE1}    ${BANKACCOUNTINFORMATION_BRANCH_VALUE1}    ${BANKACCOUNTINFORMATION_BANKACCOUNTTYPEID_VALUE1}    ${BANKACCOUNTINFORMATION_ACCOUNTNAME_VALUE1}    ${BANKACCOUNTINFORMATION_ACCOUNTPROMPTPAYNUMBER_VALUE1}    ${BANKACCOUNTINFORMATION_OPERATETYPEID_VALUE1}    ${BANKACCOUNTINFORMATION_STATUSID_VALUE1}    ${BANKACCOUNTINFORMATION_REMARK_VALUE1}    ${BANKACCOUNTINFORMATION_PROPERTYID_VALUE}    ${BANKACCOUNTINFORMATION_BUIBINGID_VALUE}

Verify Action : click X button   
    #Click X button	
    Click Element Page    ${BANKACCOUNTINFORMATION_BTN_CLOSE_LOCATOR}

	#NameHader
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_EN} 
	
	#NamePage
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_EN} 

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${BANKACCOUNTINFORMATION_VIEW_M8_1_1_5_000_SUCCESS_SCREENSHOT}
	
################### Generic Test Case Teardown ###################
	[Teardown]    Generic Test Case Teardown BankAccountManagement EN    ${BANKACCOUNTINFORMATION_ACCOUNTNAME_VALUE1} - ${BANKACCOUNTINFORMATION_ACCOUNTPROMPTPAYNUMBER_VALUE1}
