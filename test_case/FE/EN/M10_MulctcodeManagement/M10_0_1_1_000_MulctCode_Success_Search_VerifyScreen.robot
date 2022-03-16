*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [Search] MulctcodeManagement ###################
M10_0_1_1_000_MulctCode_Success_Search_VerifyScreen [Verify screen page "Search Mulct Code"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Mulct Code

    [Setup]    Open Browser To Login Page Super Admin EN
       
    Log To Console    ${\n}=========== [Search] MulctcodeManagement ===============     
    #========== Click Setting Menu MulctcodeManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_EN}    ${MENU_LBL_MASTERMANAGEMENT_MULCTCODEMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_MULCTCODEMANAGEMENT_EN}   ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_HEADER_LOCATOR}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_HEADER_EN}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_LOCATOR}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_EN}
    
    #========== Check MulctcodeManagement ======
    #Create button
    Wait Until Contains Element Text Should Be    ${MULCTCODE_BTN_CREATE_LOCATOR}    ${MULCTCODE_BTN_CREATE_EN} 
    Wait Until Contains Element Should Be Enabled    ${MULCTCODE_BTN_CREATE_LOCATOR}
    #Mulct Code
    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_MULCTCODE_LOCATOR}    ${MULCTCODE_SEARCH_LBL_MULCTCODE_EN} 
    #Mulct Name
    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_MULCTNAME_LOCATOR}    ${MULCTCODE_SEARCH_LBL_MULCTNAME_EN} 
    #Status
    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_STATUS_LOCATOR}    ${MULCTCODE_SEARCH_LBL_STATUS_EN} 
    # Wait Should Contain Get Element Attribute    ${MULCTCODE_SEARCH_DDL_STATUS_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${DEFAULT_DDL_SELECT_EN} 
    # Element Text Should Be Value Dropdown    ${MULCTCODE_SEARCH_DDL_STATUS_LOCATOR}    ${MULCTCODE_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${MULCTCODE_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${MULCTCODE_SEARCH_DDL_STATUS_EN_VALUE}
    # #close dropdrown
    # Press Keys    ${NONE}    ${ESC}
    # Sleep    0.5s

    #Search button
    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_BTN_SEARCH_LOCATOR}    ${MULCTCODE_SEARCH_BTN_SEARCH_EN} 
    Wait Until Contains Element Should Be Enabled    ${MULCTCODE_SEARCH_BTN_SEARCH_LOCATOR}
    #Clear button
    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_BTN_CLEAR_LOCATOR}    ${MULCTCODE_SEARCH_BTN_CLEAR_EN} 
    Wait Until Contains Element Should Be Enabled    ${MULCTCODE_SEARCH_BTN_CLEAR_LOCATOR}

    #No
    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_RESULT_NO_LOCATOR}    ${MULCTCODE_SEARCH_LBL_RESULT_NO_EN} 
    #Mulct Code
    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_RESULT_MULCTCODE_LOCATOR}    ${MULCTCODE_SEARCH_LBL_RESULT_MULCTCODE_EN} 
    #Mulct Name
    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_RESULT_MULCTNAME_LOCATOR}    ${MULCTCODE_SEARCH_LBL_RESULT_MULCTNAME_EN} 
    #Status
    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_RESULT_STATUS_LOCATOR}    ${MULCTCODE_SEARCH_LBL_RESULT_STATUS_EN} 
    
    #================ Check Value Table ================
    Check Value Table MulctCode EN

Verify defualt value dropdown list [Dropdown : Status]
    Wait Should Contain Get Element Attribute    ${MULCTCODE_SEARCH_DDL_STATUS_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${DEFAULT_DDL_SELECT_EN} 
    Element Text Should Be Value Dropdown    ${MULCTCODE_SEARCH_DDL_STATUS_LOCATOR}    ${MULCTCODE_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${MULCTCODE_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${MULCTCODE_SEARCH_DDL_STATUS_EN_VALUE}
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    Sleep    0.5s

Verify over : 125 Length ,Textbox : Mulct Code and Type : string 
    # maxlength="125"
    Wait Should Contain Get Element Attribute    ${MULCTCODE_SEARCH_INPUT_MULCTCODE_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify over : 125 Length ,Textbox : Mulct Name and Type : string 
    # maxlength="125"
    Wait Should Contain Get Element Attribute    ${MULCTCODE_SEARCH_INPUT_MULCTNAME_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify tooltip in button - button : View - button : Edit - button : Delete 
    
    #========== Create MulctCode ======
    Log To Console    ${\n}=========== [Create] MulctcodeManagement ===============
    Create MulctCode input require field data EN

    #================ Check Value Table ================
    Check Value Table MulctCode EN

    #view icon
    Wait Until Contains Element Should Be Visible    ${MULCTCODE_BTN_VIEW_LOCATOR}
    Mouse Down    ${MULCTCODE_BTN_VIEW_LOCATOR}
    Sleep    0.5s
    Wait Until Contains Element Text Should Be    ${MULCTCODELBL_VIEW_EN_LOCATOR}    ${MULCTCODELBL_VIEW_EN} 
    #edit icon
    Wait Until Contains Element Should Be Visible    ${MULCTCODE_BTN_EDIT_LOCATOR}
    Mouse Down    ${MULCTCODE_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    Wait Until Contains Element Text Should Be    ${MULCTCODELBL_EDIT_EN_LOCATOR}    ${MULCTCODELBL_EDIT_EN} 
    #delete icon
    Wait Until Contains Element Should Be Visible    ${MULCTCODE_BTN_DELETE_LOCATOR}
    Mouse Down    ${MULCTCODE_BTN_DELETE_LOCATOR}
    Sleep    0.5s
    Wait Until Contains Element Text Should Be    ${MULCTCODELBL_DELETE_EN_LOCATOR}    ${MULCTCODELBL_DELETE_EN} 
    
Verify default number button
    #20
    Wait Until Contains Element Text Should Be    ${MULCTCODE_BTN_20_LOCATOR}    ${MULCTCODE_BTN_20} 
    #50
    Wait Until Contains Element Text Should Be    ${MULCTCODE_BTN_50_LOCATOR}    ${MULCTCODE_BTN_50} 
    #100
    Wait Until Contains Element Text Should Be    ${MULCTCODE_BTN_100_LOCATOR}    ${MULCTCODE_BTN_100} 
    #1000
    Wait Until Contains Element Text Should Be    ${MULCTCODE_BTN_1000_LOCATOR}    ${MULCTCODE_BTN_1000} 
    Log To Console    rowcountSearchMulctCoderowcountSearchMulctCoderowcountSearchMulctCode${rowcountSearchMulctCode}
    #paging
    ${replacePage}=    Paging Replace    ${rowcountSearchMulctCode}
    ${paging}=    Set Variable    ${replacePage[1]}
    Wait Until Contains Element Text Should Be    ${MULCTCODELBL_PagesXFromY_LOCATOR}    ${paging}

    Wait Until Contains Element Should Be Visible    ${MULCTCODEICON_ARRORWLEFT_LOCATOR}
    Wait Until Contains Element Text Should Be    ${MULCTCODELBL_PAGE_LOCATOR}    ${MULCTCODELBL_PAGE_1}
    Wait Until Contains Element Should Be Visible    ${MULCTCODEICON_ARRORWRIGHT_LOCATOR}

Verify default in Status dropdown
    Wait Should Contain Get Element Attribute    ${MULCTCODE_SEARCH_DDL_STATUS_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${DEFAULT_DDL_SELECT_EN} 

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${MULCTCODE_SEARCH_M10_0_1_1_000_SUCCESS_SCREENSHOT}
    
################### Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown MulctCode EN    ${MULCTCODE_MULCTMETHOD_NAMETH_VALUE}    ${mulctMethodId}
