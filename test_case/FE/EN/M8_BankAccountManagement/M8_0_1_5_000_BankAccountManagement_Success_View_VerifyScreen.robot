*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [View] BankAccountManagement ###################
M8_0_1_5_000_BankAccountManagement_Success_View_VerifyScreen [Verify screen page "View Bank Account"]
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
	
	#close button
	Wait Until Contains Element Should Be Visible    ${BANKACCOUNTINFORMATION_BTN_CLOSE_LOCATOR}
    
	#Bank
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBL_BANK_LOCATOR}    ${BANKACCOUNTINFORMATION_VIEW_LBL_BANK_EN} 
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBD_BANK_LOCATOR}    ${BANKACCOUNTINFORMATION_BANK_EN_VALUE1} 
	
	#Bank Account Type 
	Wait Until Contains Element Text Should Be   ${BANKACCOUNTINFORMATION_VIEW_LBL_BANKACCOUNTTYPE_LOCATOR}    ${BANKACCOUNTINFORMATION_VIEW_LBL_BANKACCOUNTTYPE_EN} 
    Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBD_BANKACCOUNTTYPE_LOCATOR}    ${BANKACCOUNTINFORMATION_BANKACCOUNTTYPE_EN_VALUE1} 
	
	#Branch
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBL_BRANCH_LOCATOR}    ${BANKACCOUNTINFORMATION_VIEW_LBL_BRANCH_EN} 
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBD_BRANCH_LOCATOR}    ${BANKACCOUNTINFORMATION_BRANCH_VALUE1} 
	
	#Account name
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBL_ACCOUNTNAME_LOCATOR}    ${BANKACCOUNTINFORMATION_VIEW_LBL_ACCOUNTNAME_EN} 
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBD_ACCOUNTNAME_LOCATOR}    ${BANKACCOUNTINFORMATION_ACCOUNTNAME_VALUE1} 
	
	#Account/PromptPay Number
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBL_ACCOUNTPROMPTPAYNUMBER_LOCATOR}    ${BANKACCOUNTINFORMATION_VIEW_LBL_ACCOUNTPROMPTPAYNUMBER_EN} 
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBD_ACCOUNTPROMPTPAYNUMBER_LOCATOR}    ${BANKACCOUNTINFORMATION_ACCOUNTPROMPTPAYNUMBER_VALUE1} 
	
	#Status
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBL_STATUS_LOCATOR}    ${BANKACCOUNTINFORMATION_VIEW_LBL_STATUS_EN} 
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBD_STATUS_LOCATOR}    ${BANKACCOUNTINFORMATION_STATUS_EN_VALUE1} 
	
	#Operate Type
	Wait Until Contains Element Text Should Be   ${BANKACCOUNTINFORMATION_VIEW_LBL_OPERATETYPE_LOCATOR}    ${BANKACCOUNTINFORMATION_VIEW_LBL_OPERATETYPE_EN} 
	Wait Until Contains Element Text Should Be   ${BANKACCOUNTINFORMATION_VIEW_LBD_OPERATETYPE_LOCATOR}    ${BANKACCOUNTINFORMATION_OPERATETYPE_EN_VALUE1} 
	
	#Remark
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBL_REMARK_LOCATOR}    ${BANKACCOUNTINFORMATION_VIEW_LBL_REMARK_EN} 
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBD_REMARK_LOCATOR}    ${BANKACCOUNTINFORMATION_REMARK_VALUE1} 
	
	#Set up accounts in buildings
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBL_ACTIVEFORPROJECTS_LOCATOR}    ${BANKACCOUNTINFORMATION_VIEW_LBL_ACTIVEFORPROJECTS_EN} 
	
	# Check Active For Projects    ${BANKACCOUNTINFORMATION_VIEW_CHK_PROPERTYNAME_LOCATOR}    ${BANKACCOUNTINFORMATION_VIEW_LBL_PROPERTYNAME_LOCATOR}    ${BANKACCOUNTINFORMATION_VIEW_CHK_BUILDINGNAME_LOCATOR}    ${BANKACCOUNTINFORMATION_VIEW_LBL_BUILDINGNAME_LOCATOR}        
    #Property
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBL_PROPERTYNAME_LOCATOR}    ${BANKACCOUNTINFORMATION_PROPERTY_EN_VALUE} 
	#Building
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_VIEW_LBL_BUILDINGNAME_LOCATOR}    ${BANKACCOUNTINFORMATION_BUIBING_EN_VALUE} 
	
	#Click Close button
	Click Element Page    ${BANKACCOUNTINFORMATION_BTN_CLOSE_LOCATOR}

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${BANKACCOUNTINFORMATION_VIEW_M8_0_1_5_000_SUCCESS_SCREENSHOT}

################### Generic Test Case Teardown ###################
	[Teardown]    Generic Test Case Teardown BankAccountManagement EN    ${BANKACCOUNTINFORMATION_ACCOUNTNAME_VALUE1} - ${BANKACCOUNTINFORMATION_ACCOUNTPROMPTPAYNUMBER_VALUE1}

