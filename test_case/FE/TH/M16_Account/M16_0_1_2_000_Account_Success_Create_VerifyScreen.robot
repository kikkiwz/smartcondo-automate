*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [Create] Success ###################
M16_0_1_2_000_Account_Success_Create_VerifyScreen [Verify screen page "Create Account"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. click main Menu Account
    ...    4. click Account
    ...    5. click create button

    [Setup]    Open Browser To Login Page SCUser
        
    Log To Console    ${\n}=========== [Create] Account =============== 

    #========== Click main Menu Account ======
    Click Main Menu SCUser    ${MENU_LBL_ACCOUNT_LOCATOR}    ${MENU_LBL_ACCOUNT_TH}    ${ACCOUNT_SEARCH_LBL_HOME_SUBNAV_LOCATOR}    ${ACCOUNT_SEARCH_LBL_HOME_SUBNAV_TH}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_SUBNAV_LOCATOR}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_SUBNAV_TH}

    #Account Header
    Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_ACCOUNT_LOCATOR}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_TH} 
    
    #========== Check Account ======
    #Click Add Account
    Click Element Page    ${ACCOUNT_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create Account
    Wait Until Contains Element Text Should Be    ${ACCOUNT_ADD_LBL_CREATEACCOUNT_LOCATOR}    ${ACCOUNT_ADD_LBL_CREATEACCOUNT_TH} 

    #Name*
    Wait Until Contains Get Text Split String Join    ${ACCOUNT_ADD_LBL_NAME_LOCATOR}    ${ACCOUNT_ADD_LBL_NAME_TH} 
    Wait Until Contains Element Should Be Visible    ${ACCOUNT_ADD_TXT_NAME_LOCATOR}
    
    #Maximum Room*
    Wait Until Contains Get Text Split String Join    ${ACCOUNT_ADD_LBL_MAXIMUMROOM_LOCATOR}    ${ACCOUNT_ADD_LBL_MAXIMUMROOM_TH} 
    Wait Until Contains Element Should Be Enabled    ${ACCOUNT_ADD_TXT_MAXIMUMROOM_LOCATOR}
    
    #Phone*
    Wait Until Contains Get Text Split String Join    ${ACCOUNT_ADD_LBL_PHONE_LOCATOR}    ${ACCOUNT_ADD_LBL_PHONE_TH} 
    Wait Until Contains Element Should Be Enabled    ${ACCOUNT_ADD_TXT_PHONE_LOCATOR}
    
    #Taxpayer Identification No*
    Wait Until Contains Get Text Split String Join    ${ACCOUNT_ADD_LBL_TAXPAYERIDENTIFICATIONNO_LOCATOR}    ${ACCOUNT_ADD_LBL_TAXPAYERIDENTIFICATIONNO_TH} 
    Wait Until Contains Element Should Be Visible    ${ACCOUNT_ADD_TXT_TAXPAYERIDENTIFICATIONNO_LOCATOR}
    
    #Start Date*
    Wait Until Contains Get Text Split String Join    ${ACCOUNT_ADD_LBL_STARTDATE_LOCATOR}    ${ACCOUNT_ADD_LBL_STARTDATE_TH} 
    Wait Until Contains Element Should Be Visible    ${ACCOUNT_ADD_DATE_STARTDATE_INPUT_LOCATOR}
    
    #Expire Date 
    Wait Until Contains Get Text Split String Join    ${ACCOUNT_ADD_LBL_EXPIREDATE_LOCATOR}    ${ACCOUNT_ADD_LBL_EXPIREDATE_TH} 
    Wait Until Contains Element Should Be Visible    ${ACCOUNT_ADD_DATE_EXPIREDATE_INPUT_LOCATOR}
    
    #Permanent 
    Wait Until Contains Element Text Should Be    ${ACCOUNT_ADD_CHK_PERMANENT_LOCATOR}    ${ACCOUNT_ADD_LBL_PERMANENT_TH} 

    #Permission
    Wait Until Contains Element Text Should Be    ${ACCOUNT_ADD_LBL_PERMISSION_LOCATOR}    ${ACCOUNT_ADD_LBL_PERMISSION_TH} 
    
    # Check Permission Menu    
    Check Permission Menu    ${ACCOUNT_ADD_CHK_PERMISSION_MENU_LOCATOR}    ${ACCOUNT_ADD_LBL_PERMISSION_MENU_LOCATOR}    ${ACCOUNT_ADD_ICON_PERMISSION_MENU_LOCATOR}    ${ACCOUNT_ADD_LBL_PERMISSION_MENU_TOOLTIP_GROUPNAME_LOCATOR}    ${ACCOUNT_ADD_LBL_PERMISSION_MENU_TOOLTIP_ROLE_LOCATOR}

    #Cancel button
    Wait Until Contains Element Text Should Be    ${ACCOUNT_ADDEDIT_BTN_CANCEL_LOCATOR}    ${ACCOUNT_ADDEDIT_BTN_CANCEL_TH} 
    #Save button
    Wait Until Contains Element Text Should Be    ${ACCOUNT_ADDEDIT_BTN_SAVE_LOCATOR}    ${ACCOUNT_ADDEDIT_BTN_SAVE_TH} 

Verify over 255 Length [Textbox : Name, Type : string]
    # maxlength="255"
    Wait Should Contain Get Element Attribute    ${ACCOUNT_ADD_TXT_NAME_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

    # Type : string 
    Wait Should Contain Get Element Attribute    ${ACCOUNT_ADD_TXT_NAME_LOCATOR}    ${ATTRIBUTE_TYPE}    ${DEFAULT_TYPE_TEXT} 
    Wait Until Contains Element Should Be Enabled    ${ACCOUNT_ADD_TXT_NAME_LOCATOR}

Verify over 11 Length [Textbox : Maximum Room, Type : int]
    # maxlength="11"
    Wait Should Contain Get Element Attribute    ${ACCOUNT_ADD_TXT_MAXIMUMROOM_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_11}
    
    # Type : string 
    Wait Should Contain Get Element Attribute    ${ACCOUNT_ADD_TXT_NAME_LOCATOR}    ${ATTRIBUTE_TYPE}    ${DEFAULT_TYPE_TEXT} 
    Wait Until Contains Element Should Be Enabled    ${ACCOUNT_ADD_TXT_NAME_LOCATOR}

Verify over 255 Length [Textbox : Phone, Type : string]
    # maxlength="255"
    Wait Should Contain Get Element Attribute    ${ACCOUNT_ADD_TXT_NAME_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

    # Type : string 
    Wait Should Contain Get Element Attribute    ${ACCOUNT_ADD_TXT_NAME_LOCATOR}    ${ATTRIBUTE_TYPE}    ${DEFAULT_TYPE_TEXT} 
    Wait Until Contains Element Should Be Enabled    ${ACCOUNT_ADD_TXT_NAME_LOCATOR}

Verify over 255 Length [Textbox : Taxpayer Identification No, Type : string]
    # maxlength="255"
    Wait Should Contain Get Element Attribute    ${ACCOUNT_ADD_TXT_NAME_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

    # Type : string 
    Wait Should Contain Get Element Attribute    ${ACCOUNT_ADD_TXT_NAME_LOCATOR}    ${ATTRIBUTE_TYPE}    ${DEFAULT_TYPE_TEXT} 
    Wait Until Contains Element Should Be Enabled    ${ACCOUNT_ADD_TXT_NAME_LOCATOR}

Verify [Textbox : Start Date, Type : string]

    # Type : string 
    Wait Should Contain Get Element Attribute    ${ACCOUNT_ADD_DATE_STARTDATE_INPUT_LOCATOR}    ${ATTRIBUTE_TYPE}    ${DEFAULT_TYPE_TEXT} 
    Wait Until Contains Element Should Be Disabled    ${ACCOUNT_ADD_DATE_STARTDATE_INPUT_LOCATOR}

Verify [Textbox : Expire Date, Type : string]

    # Type : string 
    Wait Should Contain Get Element Attribute    ${ACCOUNT_ADD_DATE_EXPIREDATE_INPUT_LOCATOR}    ${ATTRIBUTE_TYPE}    ${DEFAULT_TYPE_TEXT} 
    Wait Until Contains Element Should Be Disabled    ${ACCOUNT_ADD_DATE_EXPIREDATE_INPUT_LOCATOR}

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${ACCOUNT_CREATE_M16_0_1_2_000_SUCCESS_SCREENSHOT}
    
################### Close Browser ###################
    [Teardown]    Close Browser 
