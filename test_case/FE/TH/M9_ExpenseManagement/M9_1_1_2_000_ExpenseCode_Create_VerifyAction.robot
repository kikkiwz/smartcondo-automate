*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [Create] ExpenseCodeManagement ###################
M9_1_1_2_000_ExpenseCode_Create_VerifyAction [VerifyAction "Create ExpenseCode"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Expense Code
    ...    5. click create button
    ...    6. Create data
    ...    7. click delete button
    
    [Setup]    Open Browser To Login Page Super Admin
        
    Log To Console    ${\n}=========== [Create] ExpenseCodeManagement =============== 

    #========== Click Setting Menu ExpenseCodeManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_TH}    ${MENU_LBL_MASTERMANAGEMENT_EXPENSEMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_EXPENSEMANAGEMENT_TH}   ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_HEADER_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_HEADER_TH}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_TH}

    #========== Check ExpenseCodeManagement ======
    #Click Create ExpenseCode
    Click Element Page    ${EXPENSECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create ExpenseCode
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_LOCATOR}    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_TH} 


Verify action : click Create [check Value in dropdown Group Type]
    
	# Wait Should Contain Get Element Attribute    ${SETTINGBANKACCOUNT_ADDEDIT_LBL_BANKACCOUNT_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${DEFAULT_DDL_SELECTBANKACCOUNT_TH} 
	${selectGroupType}=    Request DB Data GroupType
    ${dataGroupType}=    Set Variable    ${selectGroupType}[0]
	@{valArrDataNameTh}=    Set Variable    ${selectGroupType}[2]
	@{valArrDataNameEn}=    Set Variable    ${selectGroupType}[3]
	# Log To Console    [dataGroupType] : ${dataGroupType}
	# Log To Console    [valArrDataNameTh] : ${valArrDataNameTh}
	# Log To Console    [valArrDataNameEn] : ${valArrDataNameEn}
	Element Text Should Be Value Dropdown    ${EXPENSECODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${EXPENSECODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${EXPENSECODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${valArrDataNameTh}
	#close dropdrown

	#Click Cancel ExpenseCode
    Click Element Page    ${EXPENSECODE_ADDEDIT_BTN_CANCEL_LOCATOR}
    Sleep    0.5s

Verify Action : click Create ExpenseCode [please fill require information ,select dropdown require and show toase success message ]

    #Create data
    Create ExpenseCode input require field data 

    #Click delete button
    ${ExpenseCode}=    Get Text String    ${EXPENSECODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    ExpenseCode${ExpenseCode}
    Click Delete Data TH    ${EXPENSECODE_BTN_DELETE_LOCATOR}    ${ExpenseCode}

    #Delete MulctMethod
    Request DeleteData for MulctMethod     ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${mulctMethodId}
  
Verify Action : click Create ExpenseCode [please all fill and select data.]

    #Create data
    Create ExpenseCode input all field data 

    # #Click delete button
    # ${ExpenseCode}=    Get Text String    ${EXPENSECODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # # Log To Console    ExpenseCode${ExpenseCode}

    # #Click delete button
    # Click Delete Data TH    ${EXPENSECODE_BTN_DELETE_LOCATOR}    ${ExpenseCode}

Verify Action : click X button   
    #Click Create ExpenseCode
    Click Element Page    ${EXPENSECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create ExpenseCode
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_LOCATOR}    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_TH}

    #Click X button    
    Click Element Page    ${EXPENSECODE_BTN_CLOSE_LOCATOR}

    #NameHader
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_HEADER_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_HEADER_TH} 
    
    #NamePage
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_TH} 

Verify Action : click cancel button

    #Click Create ExpenseCode
    Click Element Page    ${EXPENSECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create ExpenseCode
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_LOCATOR}    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_TH}

    #Click Cancel button
    Click Element Page    ${EXPENSECODE_ADDEDIT_BTN_CANCEL_LOCATOR}

    #NameHader
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_HEADER_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_HEADER_TH} 
    
    #NamePage
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_TH} 

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${EXPENSECODE_CREATE_M9_1_1_2_000_SUCCESS_SCREENSHOT}
    
################### Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown ExpenseCode
