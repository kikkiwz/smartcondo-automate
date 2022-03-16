*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Create] BankAccountManagement ###################
M8_1_0_2_006_BankAccountManagement_Error_Create_DataAlreadyExisted [Data Already Existed]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click Bank Account Management
    ...    5. click create button
    ...    6. Create data
    ...    7. Create data
    ...    8. click delete button

    [Setup]    Open Browser To Login Page Super Admin EN

	Log To Console    ${\n}=========== [Create] BankAccountManagement =============== 

    #========== Click Setting Menu BankAccountManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_BANKACCOUNTMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_BANKACCOUNTMANAGEMENT_EN}    ${MENU_LBL_SETTING_BANKACCOUNTMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_BANKACCOUNTMANAGEMENT_EN}   ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_EN}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_EN}
	
	#========== Check BankAccountManagement ======
    #Create data
    Create Bank Account Management input require field data EN

    #Click Create Bank account
	Click Element Page    ${BANKACCOUNTINFORMATION_BTN_CREATE_LOCATOR}
	Sleep    0.5s
	
	#Create Bank Account Information
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_ADD_LBL_CREATEBANKACCOUNTINFORMATION_LOCATOR}    ${BANKACCOUNTINFORMATION_ADD_LBL_CREATEBANKACCOUNTINFORMATION_EN} 
   
    #Bank *
	Select Dropdown    ${BANKACCOUNTINFORMATION_ADDEDIT_DDL_BANK_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_DDL_BANK_LIST_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_DDL_BANK_CLASS_LOCATOR}    ${BANKACCOUNTINFORMATION_BANK_EN_VALUE2}
	Sleep    0.5s
	#Bank Account Type *
	Select Dropdown    ${BANKACCOUNTINFORMATION_ADDEDIT_DDL_BANKACCOUNTTYPE_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_DDL_BANKACCOUNTTYPE_LIST_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_DDL_BANKACCOUNTTYPE_CLASS_LOCATOR}    ${BANKACCOUNTINFORMATION_BANKACCOUNTTYPE_EN_VALUE2}
	Sleep    0.5s
	#Account name *
	Wait Until Contains Input Text    ${BANKACCOUNTINFORMATION_ADDEDIT_TXT_ACCOUNTNAME_LOCATOR}    ${BANKACCOUNTINFORMATION_ACCOUNTNAME_VALUE2}
	#Account/PromptPay Number *
	Wait Until Contains Input Text    ${BANKACCOUNTINFORMATION_ADDEDIT_TXT_ACCOUNTPROMPTPAYNUMBER_LOCATOR}    ${BANKACCOUNTINFORMATION_ACCOUNTPROMPTPAYNUMBER_VALUE2}
	#Status *
	Select Dropdown    ${BANKACCOUNTINFORMATION_ADDEDIT_DDL_STATUS_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_DDL_STATUS_LIST_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_DDL_STATUS_CLASS_LOCATOR}    ${BANKACCOUNTINFORMATION_STATUS_EN_VALUE2}
	Sleep    0.5s
	#Operate Type *
	Select Dropdown    ${BANKACCOUNTINFORMATION_ADDEDIT_DDL_OPERATETYPE_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_DDL_OPERATETYPE_LIST_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_DDL_OPERATETYPE_CLASS_LOCATOR}    ${BANKACCOUNTINFORMATION_OPERATETYPE_EN_VALUE2}
	Sleep    0.5s
	
    #Click Save button
    Click Element Page    ${BANKACCOUNTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}
    
	Sleep    2s
	#alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_DATAALRADYEXISTED_EN}

    #Click Cancel button
	Click Element Page    ${BANKACCOUNTINFORMATION_ADDEDIT_BTN_CANCEL_LOCATOR}

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${BANKACCOUNTINFORMATION_CREATE_M8_1_0_2_006_ERROR_SCREENSHOT}
	
################### Generic Test Case Teardown ###################
	[Teardown]    Generic Test Case Teardown BankAccountManagement EN    ${BANKACCOUNTINFORMATION_ACCOUNTNAME_VALUE2} - ${BANKACCOUNTINFORMATION_ACCOUNTPROMPTPAYNUMBER_VALUE2}

