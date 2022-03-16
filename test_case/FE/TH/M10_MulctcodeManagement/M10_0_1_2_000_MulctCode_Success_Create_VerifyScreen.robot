*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [Create] MulctcodeManagement ###################
M10_0_1_2_000_MulctCode_Success_Create_VerifyScreen [Verify screen page "Create Mulctcode"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Mulct Code
    ...    5. click create button

    [Setup]    Open Browser To Login Page Super Admin
        
    Log To Console    ${\n}=========== [Create] MulctcodeManagement =============== 

    #========== Click Setting Menu MulctcodeManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_TH}    ${MENU_LBL_MASTERMANAGEMENT_MULCTCODEMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_MULCTCODEMANAGEMENT_TH}   ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_HEADER_LOCATOR}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_HEADER_TH}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_LOCATOR}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_TH}
    
    #========== Check MulctcodeManagement ======
    #Click Create Mulctcode
    Click Element Page    ${MULCTCODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create Mulctcode
    Wait Until Contains Element Text Should Be    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_LOCATOR}    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_TH} 

    #close button
    Wait Until Contains Element Should Be Visible    ${MULCTCODE_BTN_CLOSE_LOCATOR}
    
    #Mulctcode NameTh *
    Wait Until Contains Element Text Should Be    ${MULCTCODE_ADD_LBL_MULCTCODENAMETH_LOCATOR}    ${MULCTCODE_ADD_LBL_MULCTCODENAMETH_TH} 
    Wait Should Contain Get Element Attribute    ${MULCTCODE_ADD_LBL_MULCTCODENAMETH_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Visible    ${MULCTCODE_ADD_TXT_MULCTCODENAMETH_LOCATOR}
    
    #Mulctcode NameEn
    Wait Until Contains Element Text Should Be    ${MULCTCODE_ADD_LBL_MULCTCODENAMEEN_LOCATOR}    ${MULCTCODE_ADD_LBL_MULCTCODENAMEEN_TH} 
    Wait Until Contains Element Should Be Enabled    ${MULCTCODE_ADD_TXT_MULCTCODENAMEEN_LOCATOR}
    
    #Mulctcode *
    Wait Until Contains Element Text Should Be    ${MULCTCODE_ADD_LBL_MULCTCODE_LOCATOR}    ${MULCTCODE_ADD_LBL_MULCTCODE_TH} 
    Wait Should Contain Get Element Attribute    ${MULCTCODE_ADD_LBL_MULCTCODE_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Enabled    ${MULCTCODE_ADD_TXT_MULCTCODE_LOCATOR}
    
    #Status *
    Wait Until Contains Element Text Should Be    ${MULCTCODE_ADD_LBL_STATUS_LOCATOR}    ${MULCTCODE_ADD_LBL_STATUS_TH} 
    Wait Should Contain Get Element Attribute    ${MULCTCODE_ADD_LBL_STATUS_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    # Wait Until Contains Element Should Be Enabled    ${MULCTCODE_ADD_TXT_STATUS_LOCATOR}
    
    #Group Type *
    Wait Until Contains Element Text Should Be    ${MULCTCODE_ADD_LBL_GROUPTYPE_LOCATOR}    ${MULCTCODE_ADD_LBL_GROUPTYPE_TH} 
    Wait Should Contain Get Element Attribute    ${MULCTCODE_ADD_LBL_GROUPTYPE_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    # Wait Until Contains Element Should Be Enabled    ${MULCTCODE_ADD_TXT_GROUPTYPE_LOCATOR}
    
    #Mulct Method *
    Wait Until Contains Element Text Should Be    ${MULCTCODE_ADD_LBL_MULCTMETHOD_LOCATOR}    ${MULCTCODE_ADD_LBL_MULCTMETHOD_TH} 
    Wait Should Contain Get Element Attribute    ${MULCTCODE_ADD_LBL_MULCTMETHOD_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    # Wait Until Contains Element Should Be Enabled    ${MULCTCODE_ADD_TXT_MULCTMETHOD_LOCATOR}
    
    #Vat.(%) *
    Wait Until Contains Element Text Should Be    ${MULCTCODE_ADD_LBL_VAT_LOCATOR}    ${MULCTCODE_ADD_LBL_VAT_TH} 
    Wait Should Contain Get Element Attribute    ${MULCTCODE_ADD_LBL_VAT_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Enabled    ${MULCTCODE_ADD_INPUT_VAT_LOCATOR}
    #Tax.(%) *
    Wait Until Contains Element Text Should Be    ${MULCTCODE_ADD_LBL_TAX_LOCATOR}    ${MULCTCODE_ADD_LBL_TAX_TH} 
    Wait Should Contain Get Element Attribute    ${MULCTCODE_ADD_LBL_TAX_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Enabled    ${MULCTCODE_ADD_INPUT_TAX_LOCATOR}
    
    #Remark
    Wait Until Contains Element Text Should Be    ${MULCTCODE_ADD_LBL_REMARK_LOCATOR}    ${MULCTCODE_ADD_LBL_REMARK_TH} 
    Wait Until Contains Element Should Be Enabled    ${MULCTCODE_ADD_TXTAREA_REMARK_LOCATOR}

    #Cancel button
    Wait Until Contains Element Text Should Be    ${MULCTCODE_ADDEDIT_BTN_CANCEL_LOCATOR}    ${MULCTCODE_ADDEDIT_BTN_CANCEL_TH} 
    #Save button
    Wait Until Contains Element Text Should Be    ${MULCTCODE_ADDEDIT_BTN_SAVE_LOCATOR}    ${MULCTCODE_ADDEDIT_BTN_SAVE_TH} 

Verify screen : legth 125 and type is varchar in Mulctcode NameTh
    # maxlength="125"
    Wait Should Contain Get Element Attribute    ${MULCTCODE_ADD_TXT_MULCTCODENAMETH_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 125 and type is varchar in Mulctcode NameEn
    # maxlength="125"
    Wait Should Contain Get Element Attribute    ${MULCTCODE_ADD_TXT_MULCTCODENAMEEN_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 125 and type is varchar in Mulctcode
    # maxlength="125"
    Wait Should Contain Get Element Attribute    ${MULCTCODE_ADD_TXT_MULCTCODE_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

# Verify screen : legth 5,2 and type is varchar in Vat.(%)
#     Wait Should Contain Get Element Attribute    ${MULCTCODE_ADD_INPUT_VAT_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

# Verify screen : legth 5,2 and type is varchar in Tax.(%)
#     Wait Should Contain Get Element Attribute    ${MULCTCODE_ADD_INPUT_TAX_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 255 and type is varchar in Remark
    # maxlength="255"
    Wait Should Contain Get Element Attribute    ${MULCTCODE_ADD_TXTAREA_REMARK_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

Verify data list in Group Type dropdown
    #Click Cancel Mulctcode
    Click Element Page    ${MULCTCODE_ADDEDIT_BTN_CANCEL_LOCATOR}
    Sleep    0.5s
    
    #Click Create Mulctcode
    Click Element Page    ${MULCTCODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s

    #Create Mulctcode
    Wait Until Contains Element Text Should Be    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_LOCATOR}    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_TH} 

    # Wait Should Contain Get Element Attribute    ${SETTINGBANKACCOUNT_ADDEDIT_LBL_BANKACCOUNT_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${DEFAULT_DDL_SELECTBANKACCOUNT_TH} 
    ${selectGroupType}=    Request DB Data GroupType
    ${dataGroupType}=    Set Variable    ${selectGroupType}[0]
    @{valArrDataNameTh}=    Set Variable    ${selectGroupType}[2]
    @{valArrDataNameEn}=    Set Variable    ${selectGroupType}[3]
    # Log To Console    [dataGroupType] : ${dataGroupType}
    # Log To Console    [valArrDataNameTh] : ${valArrDataNameTh}
    # Log To Console    [valArrDataNameEn] : ${valArrDataNameEn}
    Element Text Should Be Value Dropdown    ${MULCTCODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${MULCTCODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${valArrDataNameTh}
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    Sleep    0.5s

Verify data list in Status dropdown
    #Click Cancel Mulctcode
    Click Element Page    ${MULCTCODE_ADDEDIT_BTN_CANCEL_LOCATOR}
    Sleep    0.5s
    
    #Click Create Mulctcode
    Click Element Page    ${MULCTCODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s

    #Create Mulctcode
    Wait Until Contains Element Text Should Be    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_LOCATOR}    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_TH} 

    Element Text Should Be Value Dropdown    ${MULCTCODE_ADD_DDL_STATUS_LOCATOR}    ${MULCTCODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${MULCTCODE_ADD_DDL_STATUS_TH_VALUE}
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    Sleep    0.5s

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${MULCTCODE_CREATE_M10_0_1_2_000_SUCCESS_SCREENSHOT}
    
################### Close Browser ###################
    [Teardown]    Close Browser 
