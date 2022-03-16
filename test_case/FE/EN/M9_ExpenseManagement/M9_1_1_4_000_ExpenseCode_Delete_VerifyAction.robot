*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Delete] ExpenseCodeManagement ###################
M9_1_1_4_000_ExpenseCode_Delete_VerifyAction [VerifyAction "Delete ExpenseCode"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
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

Verify action : click Cancel button
    #Click Delete button
	Click Element Page    ${EXPENSECODE_BTN_DELETE_LOCATOR}

    #Click Cancel button
	Click Element Page    ${ALERT_BTN_CANCEL_LOCATOR}

Verify action : click Confirm button
	Log To Console    ${\n}=========== [Delete] ExpenseCodeManagement =============== 
    ${ExpenseCode}=    Get Text String    ${EXPENSECODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    ExpenseCode${ExpenseCode}

	#Click delete button
    Click Delete Data EN    ${EXPENSECODE_BTN_DELETE_LOCATOR}    ${ExpenseCode}
	
	#================ Verify DB ================	
	Request Verify DB Check Data Delete ExpenseCode    ${MYSQL_TYPE_DELETE_ALLFIELD}    ${EXPENSECODE_EXPENSECODENAMETH_VALUE}    ${EXPENSECODE_EXPENSECODENAMEEN_VALUE}    ${EXPENSECODE_EXPENSECODE_VALUE}    ${EXPENSECODE_PRICEPERUNIT_VALUE}    ${EXPENSECODE_VAT_VALUE}    ${EXPENSECODE_TAX_VALUE}    ${EXPENSECODE_REMARK_VALUE}    ${EXPENSECODE_STATUSID_VALUE1}    ${EXPENSECODE_GROUPTYPEID_VALUE1}
    
	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${EXPENSECODE_DELETE_M9_1_1_4_000_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser 
