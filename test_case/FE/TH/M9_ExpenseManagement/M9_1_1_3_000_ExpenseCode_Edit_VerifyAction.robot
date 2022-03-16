*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [Edit] ExpenseCodeManagement ###################
M9_1_1_3_000_ExpenseCode_Edit_VerifyAction [VerifyAction "Edit Mulctcode"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Expense Code
    ...    5. click create button
    ...    6. click edit button
    ...    7. click delete button
    
    [Setup]    Open Browser To Login Page Super Admin
       
    Log To Console    ${\n}=========== [Search] ExpenseCodeManagement ===============     
    #========== Click Setting Menu ExpenseCodeManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_TH}    ${MENU_LBL_MASTERMANAGEMENT_EXPENSEMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_EXPENSEMANAGEMENT_TH}   ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_HEADER_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_HEADER_TH}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_TH}
    
    #========== Create ExpenseCode ======
    Log To Console    ${\n}=========== [Create] ExpenseCodeManagement ===============
    Create ExpenseCode input require field data

Verify Action : click save button

    #Edit data
    Edit ExpenseCode input all field data

Verify Action : click X button   
    #Click Edit ExpenseCode
    Click Element Page    ${EXPENSECODE_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit Mulctcode
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_EDIT_LBL_EDITEXPENSECODE_LOCATOR}    ${EXPENSECODE_EDIT_LBL_EDITEXPENSECODE_TH} 
    
    #Click X button    
    Click Element Page    ${EXPENSECODE_BTN_CLOSE_LOCATOR}

    #NameHader
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_HEADER_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_HEADER_TH} 
    
    #NamePage
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_TH} 

Verify Action : click cancel button

    #Click Edit ExpenseCode
    Click Element Page    ${EXPENSECODE_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit Mulctcode
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_EDIT_LBL_EDITEXPENSECODE_LOCATOR}    ${EXPENSECODE_EDIT_LBL_EDITEXPENSECODE_TH} 
    
    #Click Cancel button
    Click Element Page    ${EXPENSECODE_ADDEDIT_BTN_CANCEL_LOCATOR}

    #NameHader
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_HEADER_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_HEADER_TH} 
    
    #NamePage
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_TH} 

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${EXPENSECODE_EDIT_M9_1_1_3_000_SUCCESS_SCREENSHOT}
    
################### Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown ExpenseCode
 
