*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [View] ExpenseCodeManagement ###################
M9_1_1_5_000_ExpenseCode_View_VerifyAction [VerifyAction "View Expensecode"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Expense Code
    ...    5. click create button
    ...    6. click view button
    ...    7. click delete button
    
    [Setup]    Open Browser To Login Page Super Admin
       
    Log To Console    ${\n}=========== [Search] ExpenseCodeManagement ===============     
    #========== Click Setting Menu ExpenseCodeManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_TH}    ${MENU_LBL_MASTERMANAGEMENT_EXPENSEMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_EXPENSEMANAGEMENT_TH}   ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_HEADER_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_HEADER_TH}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_TH}
    
    #========== Create ExpenseCode ======
    Log To Console    ${\n}=========== [Create] ExpenseCodeManagement ===============
    Create ExpenseCode input all field data 
    Sleep    0.5s

    Log To Console    ${\n}=========== [View] ExpenseCodeManagement =============== 
    #Click View Expensecode
    Click Element Page    ${EXPENSECODE_BTN_VIEW_LOCATOR}
    Sleep    0.5s
    
    #Expensecode Details
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_VIEW_LBL_EXPENSECODEDETAILS_LOCATOR}    ${EXPENSECODE_VIEW_LBL_EXPENSECODEDETAILS_TH} 
    
    #Expensecode NameTh
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_VIEW_LBL_EXPENSECODENAMETH_LOCATOR}    ${EXPENSECODE_VIEW_LBL_EXPENSECODENAMETH_TH} 
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_VIEW_LBD_EXPENSECODENAMETH_LOCATOR}    ${EXPENSECODE_EXPENSECODENAMETH_VALUE} 
    
    #Expensecode NameEn
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_VIEW_LBL_EXPENSECODENAMEEN_LOCATOR}    ${EXPENSECODE_VIEW_LBL_EXPENSECODENAMEEN_TH} 
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_VIEW_LBD_EXPENSECODENAMEEN_LOCATOR}    ${EXPENSECODE_EXPENSECODENAMEEN_VALUE} 
    
    #Expensecode
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_VIEW_LBL_EXPENSECODE_LOCATOR}    ${EXPENSECODE_VIEW_LBL_EXPENSECODE_TH} 
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_VIEW_LBD_EXPENSECODE_LOCATOR}    ${EXPENSECODE_EXPENSECODE_VALUE} 
    
    #Status
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_VIEW_LBL_STATUS_LOCATOR}    ${EXPENSECODE_VIEW_LBL_STATUS_TH} 
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_VIEW_LBD_STATUS_LOCATOR}    ${EXPENSECODE_STATUS_TH_VALUE1} 
    
    #Group Type
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_VIEW_LBL_GROUPTYPE_LOCATOR}    ${EXPENSECODE_VIEW_LBL_GROUPTYPE_TH} 
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_VIEW_LBD_GROUPTYPE_LOCATOR}    ${EXPENSECODE_GROUPTYPE_TH_VALUE1} 

    #Vat.(%)
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_VIEW_LBL_VAT_LOCATOR}    ${EXPENSECODE_VIEW_LBL_VAT_TH} 
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_VIEW_LBD_VAT_LOCATOR}    ${EXPENSECODE_VAT_VIEW_VALUE} 
    #Tax.(%)
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_VIEW_LBL_TAX_LOCATOR}    ${EXPENSECODE_VIEW_LBL_TAX_TH} 
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_VIEW_LBD_TAX_LOCATOR}    ${EXPENSECODE_TAX_VIEW_VALUE} 
    
    #Remark
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_VIEW_LBL_REMARK_LOCATOR}    ${EXPENSECODE_VIEW_LBL_REMARK_TH} 
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_VIEW_LBD_REMARK_LOCATOR}    ${EXPENSECODE_REMARK_VALUE} 

    #================ Verify DB ================    
    Request Verify DB Check Data View Expensecode    ${MYSQL_TYPE_VIEW_ALLFIELD}    ${EXPENSECODE_EXPENSECODENAMETH_VALUE}    ${EXPENSECODE_EXPENSECODENAMEEN_VALUE}    ${EXPENSECODE_EXPENSECODE_VALUE}    ${EXPENSECODE_PRICEPERUNIT_VALUE}    ${EXPENSECODE_VAT_VALUE}    ${EXPENSECODE_TAX_VALUE}    ${EXPENSECODE_REMARK_VALUE}    ${EXPENSECODE_STATUSID_VALUE1}    ${EXPENSECODE_GROUPTYPEID_VALUE1}

Verify Action : click X button   
    #Click X button    
    Click Element Page    ${EXPENSECODE_BTN_CLOSE_LOCATOR}

    #NameHader
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_HEADER_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_HEADER_TH} 
    
    #NamePage
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_TH} 

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${EXPENSECODE_VIEW_M9_1_1_5_000_SUCCESS_SCREENSHOT}

################### Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown ExpenseCode

