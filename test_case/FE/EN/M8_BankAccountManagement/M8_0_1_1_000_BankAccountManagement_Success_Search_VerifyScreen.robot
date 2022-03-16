*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Search] BankAccountManagement ###################
M8_0_1_1_000_BankAccountManagement_Success_Search_VerifyScreen [Verify screen page "Search Bank Account"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click Bank Account Management

    [Setup]    Open Browser To Login Page Super Admin EN
   	
	Log To Console    ${\n}=========== [Search] BankAccountManagement =============== 	
    #========== Click Setting Menu BankAccountManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_BANKACCOUNTMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_BANKACCOUNTMANAGEMENT_EN}    ${MENU_LBL_SETTING_BANKACCOUNTMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_BANKACCOUNTMANAGEMENT_EN}   ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_EN}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_EN}
	
	#========== Check BankAccountManagement ======
	#Create button
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_BTN_CREATE_LOCATOR}    ${BANKACCOUNTINFORMATION_BTN_CREATE_EN} 
	Wait Until Contains Element Should Be Enabled    ${BANKACCOUNTINFORMATION_BTN_CREATE_LOCATOR}
	#Bank Account Name
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTNAME_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTNAME_EN} 
	#Bank Account Number / PromptPay Number
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTNUMBERPROMPTPAYNUMBER_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTNUMBERPROMPTPAYNUMBER_EN} 
	#Status
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_STATUS_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_STATUS_EN} 
	# Wait Should Contain Get Element Attribute    ${BANKACCOUNTINFORMATION_SEARCH_DDL_STATUS_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${DEFAULT_DDL_ALL_EN} 
	Element Text Should Be Value Dropdown    ${BANKACCOUNTINFORMATION_SEARCH_DDL_STATUS_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_DDL_STATUS_EN_VALUE}
	#close dropdrown
	Press Keys    ${NONE}    ${ESC}
	Sleep    0.5s

	#Search button
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_BTN_SEARCH_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_BTN_SEARCH_EN} 
	Wait Until Contains Element Should Be Enabled    ${BANKACCOUNTINFORMATION_SEARCH_BTN_SEARCH_LOCATOR}
	#Clear button
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_BTN_CLEAR_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_BTN_CLEAR_EN} 
	Wait Until Contains Element Should Be Enabled    ${BANKACCOUNTINFORMATION_SEARCH_BTN_CLEAR_LOCATOR}
	#No
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_RESULT_NO_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_RESULT_NO_EN} 
	#Bank account
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_RESULT_BANKACCOUNT_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_RESULT_BANKACCOUNT_EN} 
	#Account types
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_RESULT_ACCOUNTTYPES_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_RESULT_ACCOUNTTYPES_EN} 
	#Account name
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_RESULT_ACCOUNTNAME_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_RESULT_ACCOUNTNAME_EN} 
	#Bank Account Number / PromptPay Number
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_RESULT_BANKACCOUNTNUMBERPROMPTPAYNUMBER_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_RESULT_BANKACCOUNTNUMBERPROMPTPAYNUMBER_EN} 
	#Status
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_SEARCH_LBL_RESULT_STATUS_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_RESULT_STATUS_EN} 
	
	#================ Check Value Table ================
	# Check Value Table Bank Account Management EN

Verify screen : legth 125 and type is varchar in Bank Account Name
	# maxlength="125"
	Wait Should Contain Get Element Attribute    ${BANKACCOUNTINFORMATION_SEARCH_INPUT_BANKACCOUNTNAME_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 125 and type is varchar in Bank Account Number / PromptPay Number
	# maxlength="125"
	Wait Should Contain Get Element Attribute    ${BANKACCOUNTINFORMATION_SEARCH_INPUT_BANKACCOUNTNUMBERPROMPTPAYNUMBER_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify tooltip in button - button : View - button : Edit - button : Delete 
    #========== Create Bank Account Management ======
	Log To Console    ${\n}=========== [Create] BankAccountManagement ===============
	Create Bank Account Management input require field data EN

	#================ Check Value Table ================
	Check Value Table Bank Account Management EN

    #view icon
	Wait Until Contains Element Should Be Visible    ${BANKACCOUNTINFORMATION_BTN_VIEW_LOCATOR}
    Mouse Down    ${BANKACCOUNTINFORMATION_BTN_VIEW_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_LBL_VIEW_EN_LOCATOR}    ${BANKACCOUNTINFORMATION_LBL_VIEW_EN} 
    #edit icon
	Wait Until Contains Element Should Be Visible    ${BANKACCOUNTINFORMATION_BTN_EDIT_LOCATOR}
	Mouse Down    ${BANKACCOUNTINFORMATION_BTN_EDIT_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_LBL_EDIT_EN_LOCATOR}    ${BANKACCOUNTINFORMATION_LBL_EDIT_EN} 
	#delete icon
	Wait Until Contains Element Should Be Visible    ${BANKACCOUNTINFORMATION_BTN_DELETE_LOCATOR}
	Mouse Down    ${BANKACCOUNTINFORMATION_BTN_DELETE_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_LBL_DELETE_EN_LOCATOR}    ${BANKACCOUNTINFORMATION_LBL_DELETE_EN} 
	
Verify default number button
    #20
    Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_BTN_20_LOCATOR}    ${BANKACCOUNTINFORMATION_BTN_20} 
    #50
    Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_BTN_50_LOCATOR}    ${BANKACCOUNTINFORMATION_BTN_50} 
    #100
    Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_BTN_100_LOCATOR}    ${BANKACCOUNTINFORMATION_BTN_100} 
    #1000
    Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_BTN_1000_LOCATOR}    ${BANKACCOUNTINFORMATION_BTN_1000} 
    
	#paging
	${replacePage}=    Paging Replace    ${rowcountSearchBankAccount}
	${paging}=    Set Variable    ${replacePage[1]}
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_LBL_PagesXFromY_LOCATOR}    ${paging}

	Wait Until Contains Element Should Be Visible    ${BANKACCOUNTINFORMATION_ICON_ARRORWLEFT_LOCATOR}
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_LBL_PAGE_LOCATOR}    ${BANKACCOUNTINFORMATION_LBL_PAGE_1}
	Wait Until Contains Element Should Be Visible    ${BANKACCOUNTINFORMATION_ICON_ARRORWRIGHT_LOCATOR}

    # Click delete button
    # Click Delete Data TH    ${BANKACCOUNTINFORMATION_BTN_DELETE_LOCATOR}    ${BANKACCOUNTINFORMATION_ACCOUNTNAME_VALUE2} - ${BANKACCOUNTINFORMATION_ACCOUNTPROMPTPAYNUMBER_VALUE2}
	
Verify default in Status dropdown
    Wait Should Contain Get Element Attribute    ${BANKACCOUNTINFORMATION_SEARCH_DDL_STATUS_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${BANKACCOUNTINFORMATION_SEARCH_DDL_STATUS_PLACEHOLDER_VALUE} 

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${BANKACCOUNTINFORMATION_SEARCH_M8_0_1_1_000_SUCCESS_SCREENSHOT}
	
################### Generic Test Case Teardown ###################
	[Teardown]    Generic Test Case Teardown BankAccountManagement EN    ${BANKACCOUNTINFORMATION_ACCOUNTNAME_VALUE2} - ${BANKACCOUNTINFORMATION_ACCOUNTPROMPTPAYNUMBER_VALUE2}
