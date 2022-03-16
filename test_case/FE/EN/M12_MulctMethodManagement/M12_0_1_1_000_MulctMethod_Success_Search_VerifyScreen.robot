*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [Search] MulctMethodManagement ###################
M12_0_1_1_000_MulctMethod_Success_Search_VerifyScreen [Verify screen page "Search Mulct Method"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Mulct Method

    [Setup]    Open Browser To Login Page Super Admin EN
       
    Log To Console    ${\n}=========== [Search] MulctMethodManagement ===============     
    #========== Click Setting Menu MulctMethodManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_EN}    ${MENU_LBL_MASTERMANAGEMENT_MULCTMETHODMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_MULCTMETHODMANAGEMENT_EN}   ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_EN}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_EN}

    #========== Check MulctMethodManagement ======
    #Create button
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_BTN_CREATE_LOCATOR}    ${MULCTMETHOD_BTN_CREATE_EN} 
    Wait Until Contains Element Should Be Enabled    ${MULCTMETHOD_BTN_CREATE_LOCATOR}
    
    #Mulct Method Name
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODNAME_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODNAME_EN} 
    #Status
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_SEARCH_LBL_STATUS_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_STATUS_EN} 
    # Wait Should Contain Get Element Attribute    ${MULCTMETHOD_SEARCH_DDL_STATUS_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${DEFAULT_DDL_SELECT_EN} 
    # Element Text Should Be Value Dropdown    ${MULCTMETHOD_SEARCH_DDL_STATUS_LOCATOR}    ${MULCTMETHOD_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${MULCTMETHOD_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${MULCTMETHOD_SEARCH_DDL_STATUS_EN_VALUE}
    # #close dropdrown
    # Press Keys    ${NONE}    ${ESC}
    # Sleep    0.5s

    #Search button
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_SEARCH_BTN_SEARCH_LOCATOR}    ${MULCTMETHOD_SEARCH_BTN_SEARCH_EN} 
    Wait Until Contains Element Should Be Enabled    ${MULCTMETHOD_SEARCH_BTN_SEARCH_LOCATOR}
    #Clear button
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_SEARCH_BTN_CLEAR_LOCATOR}    ${MULCTMETHOD_SEARCH_BTN_CLEAR_EN} 
    Wait Until Contains Element Should Be Enabled    ${MULCTMETHOD_SEARCH_BTN_CLEAR_LOCATOR}

    #No
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_SEARCH_LBL_RESULT_NO_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_RESULT_NO_EN} 
    #Mulct Method Name
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_SEARCH_LBL_RESULT_MULCTMETHODNAME_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_RESULT_MULCTMETHODNAME_EN} 
    #Remark
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_SEARCH_LBL_RESULT_REMARK_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_RESULT_REMARK_EN} 
    #Status
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_SEARCH_LBL_RESULT_STATUS_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_RESULT_STATUS_EN} 
    
    #================ Check Value Table ================
    Check Value Table MulctMethod EN

Verify defualt value dropdown list [Dropdown : Status]
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_SEARCH_DDL_STATUS_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${DEFAULT_DDL_SELECT_EN} 
    Element Text Should Be Value Dropdown    ${MULCTMETHOD_SEARCH_DDL_STATUS_LOCATOR}    ${MULCTMETHOD_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${MULCTMETHOD_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${MULCTMETHOD_SEARCH_DDL_STATUS_EN_VALUE}
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    Sleep    0.5s

Verify over : 255 Length ,Textbox : Mulct Method Name and Type : string 
    # maxlength="255"
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_SEARCH_INPUT_MULCTMETHODNAME_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

Verify tooltip in button - button : View - button : Edit - button : Delete 
    
    #========== Create MulctMethod ======
    Log To Console    ${\n}=========== [Create] MulctMethodManagement ===============
    Create MulctMethod input require field data EN

    # Create MulctMethod input all field data EN

    #================ Check Value Table ================
    Check Value Table MulctMethod EN

    #view icon
    Wait Until Contains Element Should Be Visible    ${MULCTMETHOD_BTN_VIEW_LOCATOR}
    Mouse Down    ${MULCTMETHOD_BTN_VIEW_LOCATOR}
    Sleep    0.5s
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_LBL_VIEW_EN_LOCATOR}    ${MULCTMETHOD_LBL_VIEW_EN} 
    #edit icon
    Wait Until Contains Element Should Be Visible    ${MULCTMETHOD_BTN_EDIT_LOCATOR}
    Mouse Down    ${MULCTMETHOD_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_LBL_EDIT_EN_LOCATOR}    ${MULCTMETHOD_LBL_EDIT_EN} 
    #delete icon
    Wait Until Contains Element Should Be Visible    ${MULCTMETHOD_BTN_DELETE_LOCATOR}
    Mouse Down    ${MULCTMETHOD_BTN_DELETE_LOCATOR}
    Sleep    0.5s
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_LBL_DELETE_EN_LOCATOR}    ${MULCTMETHOD_LBL_DELETE_EN} 
    
Verify default number button
    #20
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_BTN_20_LOCATOR}    ${MULCTMETHOD_BTN_20} 
    #50
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_BTN_50_LOCATOR}    ${MULCTMETHOD_BTN_50} 
    #100
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_BTN_100_LOCATOR}    ${MULCTMETHOD_BTN_100} 
    #1000
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_BTN_1000_LOCATOR}    ${MULCTMETHOD_BTN_1000} 
    
    #paging
    ${replacePage}=    Paging Replace    ${rowcountSearchMulctMethod}
    ${paging}=    Set Variable    ${replacePage[1]}
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_LBL_PagesXFromY_LOCATOR}    ${paging}

    Wait Until Contains Element Should Be Visible    ${MULCTMETHOD_ICON_ARRORWLEFT_LOCATOR}
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_LBL_PAGE_LOCATOR}    ${MULCTMETHOD_LBL_PAGE_1}
    Wait Until Contains Element Should Be Visible    ${MULCTMETHOD_ICON_ARRORWRIGHT_LOCATOR}

Verify default in Status dropdown
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_SEARCH_DDL_STATUS_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${DEFAULT_DDL_SELECT_EN} 

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${MULCTMETHOD_SEARCH_M12_0_1_1_000_SUCCESS_SCREENSHOT}
    
################### Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown MulctMethod EN
