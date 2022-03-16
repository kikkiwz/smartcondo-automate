*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [Search] ExpenseCodeManagement ###################
M9_0_1_1_000_ExpenseCode_Search_VerifyScreen [Verify screen page "Search Expense Code"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Expense Code

    [Setup]    Open Browser To Login Page Super Admin
       
    Log To Console    ${\n}=========== [Search] ExpenseCodeManagement ===============     
    #========== Click Setting Menu ExpenseCodeManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_TH}    ${MENU_LBL_MASTERMANAGEMENT_EXPENSEMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_EXPENSEMANAGEMENT_TH}   ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_HEADER_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_HEADER_TH}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_TH}
    
    #========== Check ExpenseCodeManagement ======
    #Create button
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_BTN_CREATE_LOCATOR}    ${EXPENSECODE_BTN_CREATE_TH} 
    Wait Until Contains Element Should Be Enabled    ${EXPENSECODE_BTN_CREATE_LOCATOR}
    #Expense Code
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_EXPENSECODE_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_EXPENSECODE_TH} 
    #Mulct Name
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_EXPENSECODENAME_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_EXPENSECODENAME_TH} 
    #Status
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_STATUS_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_STATUS_TH} 
    # Wait Should Contain Get Element Attribute    ${EXPENSECODE_SEARCH_DDL_STATUS_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${DEFAULT_DDL_SELECT_TH} 
    # Element Text Should Be Value Dropdown    ${EXPENSECODE_SEARCH_DDL_STATUS_LOCATOR}    ${EXPENSECODE_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${EXPENSECODE_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${EXPENSECODE_SEARCH_DDL_STATUS_TH_VALUE}
    # #close dropdrown
    # Press Keys    ${NONE}    ${ESC}
    # Sleep    0.5s

    #Search button
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_BTN_SEARCH_LOCATOR}    ${EXPENSECODE_SEARCH_BTN_SEARCH_TH} 
    Wait Until Contains Element Should Be Enabled    ${EXPENSECODE_SEARCH_BTN_SEARCH_LOCATOR}
    #Clear button
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_BTN_CLEAR_LOCATOR}    ${EXPENSECODE_SEARCH_BTN_CLEAR_TH} 
    Wait Until Contains Element Should Be Enabled    ${EXPENSECODE_SEARCH_BTN_CLEAR_LOCATOR}

    #No
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_RESULT_NO_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_RESULT_NO_TH} 
    #Expense Code
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_RESULT_EXPENSECODE_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_RESULT_EXPENSECODE_TH} 
    #Expense Name
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_RESULT_EXPENSECODENAME_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_RESULT_EXPENSECODENAME_TH} 
    #Status
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_RESULT_STATUS_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_RESULT_STATUS_TH} 
    
    #================ Check Value Table ================
    Check Value Table ExpenseCode

Verify defualt value dropdown list [Dropdown : Status]
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_SEARCH_DDL_STATUS_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${DEFAULT_DDL_SELECT_TH} 
    Element Text Should Be Value Dropdown    ${EXPENSECODE_SEARCH_DDL_STATUS_LOCATOR}    ${EXPENSECODE_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${EXPENSECODE_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${EXPENSECODE_SEARCH_DDL_STATUS_TH_VALUE}
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    Sleep    0.5s

Verify over : 125 Length ,Textbox : Expense Code and Type : string 
    # maxlength="125"
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_SEARCH_INPUT_EXPENSECODE_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify over : 125 Length ,Textbox : Mulct Name and Type : string 
    # maxlength="125"
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_SEARCH_INPUT_EXPENSECODENAME_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify tooltip in button - button : View - button : Edit - button : Delete 
    
    #========== Create ExpenseCode ======
    Log To Console    ${\n}=========== [Create] ExpenseCodeManagement ===============
    Create ExpenseCode input require field data

    #================ Check Value Table ================
    Check Value Table ExpenseCode

    #view icon
    Wait Until Contains Element Should Be Visible    ${EXPENSECODE_BTN_VIEW_LOCATOR}
    Mouse Down    ${EXPENSECODE_BTN_VIEW_LOCATOR}
    Sleep    0.5s
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_LBL_VIEW_TH_LOCATOR}    ${EXPENSECODE_LBL_VIEW_TH} 
    #edit icon
    Wait Until Contains Element Should Be Visible    ${EXPENSECODE_BTN_EDIT_LOCATOR}
    Mouse Down    ${EXPENSECODE_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_LBL_EDIT_TH_LOCATOR}    ${EXPENSECODE_LBL_EDIT_TH} 
    #delete icon
    Wait Until Contains Element Should Be Visible    ${EXPENSECODE_BTN_DELETE_LOCATOR}
    Mouse Down    ${EXPENSECODE_BTN_DELETE_LOCATOR}
    Sleep    0.5s
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_LBL_DELETE_TH_LOCATOR}    ${EXPENSECODE_LBL_DELETE_TH} 
    
Verify default number button
    #20
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_BTN_20_LOCATOR}    ${EXPENSECODE_BTN_20} 
    #50
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_BTN_50_LOCATOR}    ${EXPENSECODE_BTN_50} 
    #100
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_BTN_100_LOCATOR}    ${EXPENSECODE_BTN_100} 
    #1000
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_BTN_1000_LOCATOR}    ${EXPENSECODE_BTN_1000} 
    
    #paging
    ${replacePage}=    Paging Replace    ${rowcountSearchExpenseCode}
    ${paging}=    Set Variable    ${replacePage[0]}
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_LBL_PagesXFromY_LOCATOR}    ${paging}

    Wait Until Contains Element Should Be Visible    ${EXPENSECODE_ICON_ARRORWLEFT_LOCATOR}
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_LBL_PAGE_LOCATOR}    ${EXPENSECODE_LBL_PAGE_1}
    Wait Until Contains Element Should Be Visible    ${EXPENSECODE_ICON_ARRORWRIGHT_LOCATOR}

Verify default in Status dropdown
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_SEARCH_DDL_STATUS_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${DEFAULT_DDL_SELECT_TH} 

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${EXPENSECODE_SEARCH_M9_0_1_1_000_SUCCESS_SCREENSHOT}
    
################### Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown ExpenseCode
