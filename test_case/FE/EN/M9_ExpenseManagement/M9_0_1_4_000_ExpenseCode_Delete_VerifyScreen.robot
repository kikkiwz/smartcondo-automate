*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Delete] ExpenseCodeManagement ###################
M9_0_1_4_000_ExpenseCode_Delete_VerifyScreen [Verify screen popup confirm delete ]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. main menu MasterSetting
    ...    4. click menu Expense Code
    ...    5. click create button
    ...    6. click delete button
    
    [Setup]    Open Browser To Login Page Super Admin EN
       
    Log To Console    ${\n}=========== [Search] ExpenseCodeManagement ===============     
    #========== Click Setting Menu ExpenseCodeManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_EN}    ${MENU_LBL_MASTERMANAGEMENT_EXPENSEMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_EXPENSEMANAGEMENT_EN}   ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_HEADER_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_HEADER_EN}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_EN}
    
    #========== Create ExpenseCode ======
    Log To Console    ${\n}=========== [Create] ExpenseCodeManagement ===============
    Create ExpenseCode input all field data EN
    Sleep    0.5s

	Log To Console    ${\n}=========== [Delete] ExpenseCodeManagement =============== 
	#Click delete button
    ${ExpenseCode}=    Get Text String    ${EXPENSECODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    ExpenseCode${ExpenseCode}

	#Click delete button and Check Popup Delete 
	Check Popup Delete EN    ${EXPENSECODE_BTN_DELETE_LOCATOR}    ${ExpenseCode}

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${EXPENSECODE_DELETE_M9_0_1_4_000_SUCCESS_SCREENSHOT}

################### Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown ExpenseCode EN


