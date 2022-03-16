*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [Search] IncomecodeManagement ###################
M11_0_1_1_000_IncomeCode_Success_Search_VerifyScreen [Verify screen page "Search Income Code"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Income Code

    [Setup]    Open Browser To Login Page Super Admin EN
       
    Log To Console    ${\n}=========== [Search] IncomecodeManagement ===============     
    #========== Click Setting Menu IncomecodeManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_EN}    ${MENU_LBL_MASTERMANAGEMENT_INCOMECODEMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_INCOMECODEMANAGEMENT_EN}   ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_HEADER_LOCATOR}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_HEADER_EN}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_LOCATOR}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_EN}

    #========== Check IncomecodeManagement ======
    #Create button
    Wait Until Contains Element Text Should Be    ${INCOMECODE_BTN_CREATE_LOCATOR}    ${INCOMECODE_BTN_CREATE_EN} 
    Wait Until Contains Element Should Be Enabled    ${INCOMECODE_BTN_CREATE_LOCATOR}
    #Income Code
    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_INCOMECODE_LOCATOR}    ${INCOMECODE_SEARCH_LBL_INCOMECODE_EN} 
    #Income Name
    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_INCOMENAME_LOCATOR}    ${INCOMECODE_SEARCH_LBL_INCOMENAME_EN} 
    #Status
    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_STATUS_LOCATOR}    ${INCOMECODE_SEARCH_LBL_STATUS_EN} 
    # Wait Should Contain Get Element Attribute    ${INCOMECODE_SEARCH_DDL_STATUS_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${DEFAULT_DDL_SELECT_EN} 
    # Element Text Should Be Value Dropdown    ${INCOMECODE_SEARCH_DDL_STATUS_LOCATOR}    ${INCOMECODE_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${INCOMECODE_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${INCOMECODE_SEARCH_DDL_STATUS_EN_VALUE}
    # #close dropdrown
    # Press Keys    ${NONE}    ${ESC}
    # Sleep    0.5s
    #Payment order The system will pay the earnings encoded in a predetermined order.
    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_NOTE_LOCATOR}    ${INCOMECODE_SEARCH_LBL_NOTE_EN} 

    #Search button
    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_BTN_SEARCH_LOCATOR}    ${INCOMECODE_SEARCH_BTN_SEARCH_EN} 
    Wait Until Contains Element Should Be Enabled    ${INCOMECODE_SEARCH_BTN_SEARCH_LOCATOR}
    #Clear button
    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_BTN_CLEAR_LOCATOR}    ${INCOMECODE_SEARCH_BTN_CLEAR_EN} 
    Wait Until Contains Element Should Be Enabled    ${INCOMECODE_SEARCH_BTN_CLEAR_LOCATOR}

    # #No
    # Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_RESULT_NO_LOCATOR}    ${INCOMECODE_SEARCH_LBL_RESULT_NO_EN} 
    #Income code
    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_RESULT_INCOMECODE_LOCATOR}    ${INCOMECODE_SEARCH_LBL_RESULT_INCOMECODE_EN} 
    #Income Name
    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_RESULT_INCOMENAME_LOCATOR}    ${INCOMECODE_SEARCH_LBL_RESULT_INCOMENAME_EN} 
    #Payment Order
    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_RESULT_PAYMENTORDER_LOCATOR}    ${INCOMECODE_SEARCH_LBL_RESULT_PAYMENTORDER_EN} 
    #Status
    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_RESULT_STATUS_LOCATOR}    ${INCOMECODE_SEARCH_LBL_RESULT_STATUS_EN} 
    
    #================ Check Value Table ================
    Check Value Table IncomeCode EN

Verify defualt value dropdown list [Dropdown : Status]
    Wait Should Contain Get Element Attribute    ${INCOMECODE_SEARCH_DDL_STATUS_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${DEFAULT_DDL_SELECT_EN} 
    Element Text Should Be Value Dropdown    ${INCOMECODE_SEARCH_DDL_STATUS_LOCATOR}    ${INCOMECODE_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${INCOMECODE_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${INCOMECODE_SEARCH_DDL_STATUS_EN_VALUE}
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    Sleep    0.5s

Verify over : 125 Length ,Textbox : Income Code and Type : string 
    # maxlength="125"
    Wait Should Contain Get Element Attribute    ${INCOMECODE_SEARCH_INPUT_INCOMECODE_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify over : 125 Length ,Textbox : Income Name and Type : string 
    # maxlength="125"
    Wait Should Contain Get Element Attribute    ${INCOMECODE_SEARCH_INPUT_INCOMENAME_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify tooltip in button - button : View - button : Edit - button : Delete 
    
    #========== Create IncomeCode ======
    Log To Console    ${\n}=========== [Create] IncomecodeManagement ===============
    Create IncomeCode input require field data EN

    # Create IncomeCode input all field data 

    #================ Check Value Table ================
    Check Value Table IncomeCode EN

    #view icon
    Wait Until Contains Element Should Be Visible    ${INCOMECODE_BTN_VIEW_LOCATOR}
    Mouse Down    ${INCOMECODE_BTN_VIEW_LOCATOR}
    Sleep    0.5s
    Wait Until Contains Element Text Should Be    ${INCOMECODE_LBL_VIEW_EN_LOCATOR}    ${INCOMECODE_LBL_VIEW_EN} 
    #edit icon
    Wait Until Contains Element Should Be Visible    ${INCOMECODE_BTN_EDIT_LOCATOR}
    Mouse Down    ${INCOMECODE_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    Wait Until Contains Element Text Should Be    ${INCOMECODE_LBL_EDIT_EN_LOCATOR}    ${INCOMECODE_LBL_EDIT_EN} 
    #delete icon
    Wait Until Contains Element Should Be Visible    ${INCOMECODE_BTN_DELETE_LOCATOR}
    Mouse Down    ${INCOMECODE_BTN_DELETE_LOCATOR}
    Sleep    0.5s
    Wait Until Contains Element Text Should Be    ${INCOMECODE_LBL_DELETE_EN_LOCATOR}    ${INCOMECODE_LBL_DELETE_EN} 
    
Verify default number button
    #20
    Wait Until Contains Element Text Should Be    ${INCOMECODE_BTN_20_LOCATOR}    ${INCOMECODE_BTN_20} 
    #50
    Wait Until Contains Element Text Should Be    ${INCOMECODE_BTN_50_LOCATOR}    ${INCOMECODE_BTN_50} 
    #100
    Wait Until Contains Element Text Should Be    ${INCOMECODE_BTN_100_LOCATOR}    ${INCOMECODE_BTN_100} 
    #1000
    Wait Until Contains Element Text Should Be    ${INCOMECODE_BTN_1000_LOCATOR}    ${INCOMECODE_BTN_1000} 
    
    #paging
    ${replacePage}=    Paging Replace    ${rowcountSearchIncomeCode}
    ${paging}=    Set Variable    ${replacePage[1]}
    Wait Until Contains Element Text Should Be    ${INCOMECODE_LBL_PagesXFromY_LOCATOR}    ${paging}

    Wait Until Contains Element Should Be Visible    ${INCOMECODE_ICON_ARRORWLEFT_LOCATOR}
    Wait Until Contains Element Text Should Be    ${INCOMECODE_LBL_PAGE_LOCATOR}    ${INCOMECODE_LBL_PAGE_1}
    Wait Until Contains Element Should Be Visible    ${INCOMECODE_ICON_ARRORWRIGHT_LOCATOR}

Verify default in Status dropdown
    Wait Should Contain Get Element Attribute    ${INCOMECODE_SEARCH_DDL_STATUS_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${DEFAULT_DDL_SELECT_EN} 

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${INCOMECODE_SEARCH_M11_0_1_1_000_SUCCESS_SCREENSHOT}
    
# # ################### Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown IncomeCode EN    ${DATA_MULCTMETHOD_NAMETH_VALUE}    ${mulctCodeId}    ${mulctMethodId}
