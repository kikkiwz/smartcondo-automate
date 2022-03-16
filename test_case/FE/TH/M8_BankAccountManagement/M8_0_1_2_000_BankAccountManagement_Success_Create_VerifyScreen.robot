*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Create] BankAccountManagement ###################
M8_0_1_2_000_BankAccountManagement_Success_Create_VerifyScreen [Verify screen page "Create Bank Account"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click Bank Account Management
    ...    5. click create button

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
	
	#close button
	Wait Until Contains Element Should Be Visible    ${BANKACCOUNTINFORMATION_BTN_CLOSE_LOCATOR}
    
	#Bank *
	Wait Until Contains Get Text Split String Join    ${BANKACCOUNTINFORMATION_ADDEDIT_LBL_BANK_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_LBL_BANK_TH} 
	Wait Until Contains Element Should Be Enabled    ${BANKACCOUNTINFORMATION_ADDEDIT_TXT_BANK_LOCATOR}
	# Wait Should Contain Get Element Attribute    ${SETTINGBANKACCOUNT_ADDEDIT_LBL_BANKACCOUNT_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${DEFAULT_DDL_SELECTBANKACCOUNT_TH} 
	${selectBanks}=    Request DB Data Banks All
    ${dataBanksAll}=    Set Variable    ${selectBanks}[0]
	@{valArrDataBanksNameTh}=    Set Variable    ${selectBanks}[2]
	@{valArrDataBanksNameEn}=    Set Variable    ${selectBanks}[3]
	# Log To Console    [dataBanksAll] : ${dataBanksAll}
	# Log To Console    [valArrDataBanksNameTh] : ${valArrDataBanksNameTh}
	# Log To Console    [valArrDataBanksNameEn] : ${valArrDataBanksNameEn}
	Element Text Should Be Value Dropdown Long    ${BANKACCOUNTINFORMATION_ADDEDIT_DDL_BANK_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_DDL_BANK_LIST_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_DDL_BANK_CLASS_LOCATOR}    ${valArrDataBanksNameTh}
	#close dropdrown
	Press Keys    ${NONE}    ${ESC}
	Sleep    2s
    Click Element Page    ${BANKACCOUNTINFORMATION_ADDEDIT_LBL_BANKACCOUNTTYPE_LOCATOR}

	#Bank Account Type *
	Wait Until Contains Get Text Split String Join    ${BANKACCOUNTINFORMATION_ADDEDIT_LBL_BANKACCOUNTTYPE_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_LBL_BANKACCOUNTTYPE_TH} 
	Wait Until Contains Element Should Be Visible    ${BANKACCOUNTINFORMATION_ADDEDIT_TXT_BANKACCOUNTTYPE_LOCATOR}
	
	#Branch
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_ADDEDIT_LBL_BRANCH_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_LBL_BRANCH_TH} 
	Wait Until Contains Element Should Be Enabled    ${BANKACCOUNTINFORMATION_ADDEDIT_TXT_BRANCH_LOCATOR}
	
	#Account name *
	Wait Until Contains Get Text Split String Join    ${BANKACCOUNTINFORMATION_ADDEDIT_LBL_ACCOUNTNAME_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_LBL_ACCOUNTNAME_TH} 
	Wait Until Contains Element Should Be Enabled    ${BANKACCOUNTINFORMATION_ADDEDIT_TXT_ACCOUNTNAME_LOCATOR}
	
	#Account/PromptPay Number *
	Wait Until Contains Get Text Split String Join    ${BANKACCOUNTINFORMATION_ADDEDIT_LBL_ACCOUNTPROMPTPAYNUMBER_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_LBL_ACCOUNTPROMPTPAYNUMBER_TH} 
	Wait Until Contains Element Should Be Enabled    ${BANKACCOUNTINFORMATION_ADDEDIT_TXT_ACCOUNTPROMPTPAYNUMBER_LOCATOR}
	
	#Status *
	Wait Until Contains Get Text Split String Join    ${BANKACCOUNTINFORMATION_ADDEDIT_LBL_STATUS_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_LBL_STATUS_TH} 
	Wait Until Contains Element Should Be Visible    ${BANKACCOUNTINFORMATION_ADDEDIT_TXT_STATUS_LOCATOR}
	
	#Operate Type *
	Wait Until Contains Get Text Split String Join    ${BANKACCOUNTINFORMATION_ADDEDIT_LBL_OPERATETYPE_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_LBL_OPERATETYPE_TH} 
	Wait Until Contains Element Should Be Visible    ${BANKACCOUNTINFORMATION_ADDEDIT_TXT_OPERATETYPE_LOCATOR}
	
	#Remark
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_ADDEDIT_LBL_REMARK_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_LBL_REMARK_TH} 
	Wait Until Contains Element Should Be Enabled    ${BANKACCOUNTINFORMATION_ADDEDIT_TXTAREA_REMARK_LOCATOR}

	#Set up accounts in buildings
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_ADDEDIT_LBL_ACTIVEFORPROJECTS_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_LBL_ACTIVEFORPROJECTS_TH} 
	#Select / Unselect all
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_ADDEDIT_LBL_SELECTUNSELECTALL_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_LBL_SELECTUNSELECTALL_TH} 
	
	Check Active For Projects    ${BANKACCOUNTINFORMATION_ADDEDIT_CHK_PROPERTYNAME_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_LBL_PROPERTYNAME_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_CHK_BUILDINGNAME_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_LBL_BUILDINGNAME_LOCATOR}        
	
	#Cancel button
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_ADDEDIT_BTN_CANCEL_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_BTN_CANCEL_TH} 
	#Save button
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_BTN_SAVE_TH} 

Verify screen : legth 125 and type is varchar in Branch
    # maxlength="125"
	Wait Should Contain Get Element Attribute    ${BANKACCOUNTINFORMATION_ADDEDIT_TXT_BRANCH_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 125 and type is varchar in Account Name
    # maxlength="125"
	Wait Should Contain Get Element Attribute    ${BANKACCOUNTINFORMATION_ADDEDIT_TXT_ACCOUNTNAME_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 125 and type is varchar in Account/PromptPay Number
    # maxlength="125"
	Wait Should Contain Get Element Attribute    ${BANKACCOUNTINFORMATION_ADDEDIT_TXT_ACCOUNTPROMPTPAYNUMBER_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 255 and type is varchar in Remark
    # maxlength="255"
	Wait Should Contain Get Element Attribute    ${BANKACCOUNTINFORMATION_ADDEDIT_TXTAREA_REMARK_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

Verify default in Status dropdown
    Wait Should Contain Get Element Attribute    ${BANKACCOUNTINFORMATION_ADDEDIT_LBL_STATUS_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${BANKACCOUNTINFORMATION_ADDEDIT_LBL_STATUS_PLACEHOLDER_VALUE} 

Verify default in Operate Type dropdown
    Wait Should Contain Get Element Attribute    ${BANKACCOUNTINFORMATION_ADDEDIT_LBL_OPERATETYPE_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${BANKACCOUNTINFORMATION_ADDEDIT_LBL_OPERATETYPE_PLACEHOLDER_VALUE} 

Verify data list in Bank Account Type dropdown
    #Click Cancel Bank account
	Click Element Page    ${BANKACCOUNTINFORMATION_ADDEDIT_BTN_CANCEL_LOCATOR}
	Sleep    0.5s
	
	#Click Add Bank account
	Click Element Page    ${BANKACCOUNTINFORMATION_BTN_CREATE_LOCATOR}
	Sleep    0.5s

	#Create Bank Account Information
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_ADD_LBL_CREATEBANKACCOUNTINFORMATION_LOCATOR}    ${BANKACCOUNTINFORMATION_ADD_LBL_CREATEBANKACCOUNTINFORMATION_TH} 

	Element Text Should Be Value Dropdown    ${BANKACCOUNTINFORMATION_ADDEDIT_DDL_BANKACCOUNTTYPE_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_DDL_BANKACCOUNTTYPE_LIST_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_DDL_BANKACCOUNTTYPE_CLASS_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_DDL_BANKACCOUNTTYPE_TH_VALUE}
	#close dropdrown
	Press Keys    ${NONE}    ${ESC}
	Sleep    0.5s

Verify data list in Status dropdown
    #Click Cancel Bank account
	Click Element Page    ${BANKACCOUNTINFORMATION_ADDEDIT_BTN_CANCEL_LOCATOR}
	Sleep    0.5s
	
	#Click Add Bank account
	Click Element Page    ${BANKACCOUNTINFORMATION_BTN_CREATE_LOCATOR}
	Sleep    0.5s

	#Create Bank Account Information
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_ADD_LBL_CREATEBANKACCOUNTINFORMATION_LOCATOR}    ${BANKACCOUNTINFORMATION_ADD_LBL_CREATEBANKACCOUNTINFORMATION_TH} 
	
	Element Text Should Be Value Dropdown    ${BANKACCOUNTINFORMATION_ADDEDIT_DDL_STATUS_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_DDL_STATUS_LIST_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_DDL_STATUS_CLASS_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_DDL_STATUS_TH_VALUE}
	#close dropdrown
	Press Keys    ${NONE}    ${ESC}
	Sleep    0.5s

Verify data list in Operate Type dropdown
    #Click Cancel Bank account
	Click Element Page    ${BANKACCOUNTINFORMATION_ADDEDIT_BTN_CANCEL_LOCATOR}
	Sleep    0.5s
	
	#Click Add Bank account
	Click Element Page    ${BANKACCOUNTINFORMATION_BTN_CREATE_LOCATOR}
	Sleep    0.5s
	
    #Create Bank Account Information
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_ADD_LBL_CREATEBANKACCOUNTINFORMATION_LOCATOR}    ${BANKACCOUNTINFORMATION_ADD_LBL_CREATEBANKACCOUNTINFORMATION_TH} 
	
	Element Text Should Be Value Dropdown    ${BANKACCOUNTINFORMATION_ADDEDIT_DDL_OPERATETYPE_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_DDL_OPERATETYPE_LIST_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_DDL_OPERATETYPE_CLASS_LOCATOR}    ${BANKACCOUNTINFORMATION_ADDEDIT_DDL_OPERATETYPE_TH_VALUE}
	#close dropdrown
	Press Keys    ${NONE}    ${ESC}
	Sleep    0.5s

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${BANKACCOUNTINFORMATION_CREATE_M8_0_1_2_000_SUCCESS_SCREENSHOT}
	
################### Close Browser ###################
    [Teardown]    Close Browser 
