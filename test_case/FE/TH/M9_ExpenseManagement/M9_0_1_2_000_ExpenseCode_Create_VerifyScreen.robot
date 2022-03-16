*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [Create] ExpenseCodeManagement ###################
M9_0_1_2_000_ExpenseCode_Create_VerifyScreen [Verify screen page "Create Expense Code"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Expense Code
    ...    5. click create button

    [Setup]    Open Browser To Login Page Super Admin
        
    Log To Console    ${\n}=========== [Create] ExpenseCodeManagement =============== 

    #========== Click Setting Menu ExpenseCodeManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_TH}    ${MENU_LBL_MASTERMANAGEMENT_EXPENSEMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_EXPENSEMANAGEMENT_TH}   ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_HEADER_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_HEADER_TH}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_TH}
    
    #========== Check ExpenseCodeManagement ======
    #Click Create Expensecode
    Click Element Page    ${EXPENSECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create Expensecode
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_LOCATOR}    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_TH} 

    #close button
    Wait Until Contains Element Should Be Visible    ${EXPENSECODE_BTN_CLOSE_LOCATOR}
    
    #Expensecode NameTh *
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_ADD_LBL_EXPENSECODENAMETH_LOCATOR}    ${EXPENSECODE_ADD_LBL_EXPENSECODENAMETH_TH} 
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_ADD_LBL_EXPENSECODENAMETH_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Visible    ${EXPENSECODE_ADD_TXT_EXPENSECODENAMETH_LOCATOR}
    
    #Expensecode NameEn
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_ADD_LBL_EXPENSECODENAMEEN_LOCATOR}    ${EXPENSECODE_ADD_LBL_EXPENSECODENAMEEN_TH} 
    Wait Until Contains Element Should Be Enabled    ${EXPENSECODE_ADD_TXT_EXPENSECODENAMEEN_LOCATOR}
    
    #Expensecode *
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_ADD_LBL_EXPENSECODE_LOCATOR}    ${EXPENSECODE_ADD_LBL_EXPENSECODE_TH} 
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_ADD_LBL_EXPENSECODE_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Enabled    ${EXPENSECODE_ADD_TXT_EXPENSECODE_LOCATOR}
    
    #Status *
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_ADD_LBL_STATUS_LOCATOR}    ${EXPENSECODE_ADD_LBL_STATUS_TH} 
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_ADD_LBL_STATUS_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    # Wait Until Contains Element Should Be Enabled    ${EXPENSECODE_ADD_TXT_STATUS_LOCATOR}
    
    #Group Type *
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_ADD_LBL_GROUPTYPE_LOCATOR}    ${EXPENSECODE_ADD_LBL_GROUPTYPE_TH} 
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_ADD_LBL_GROUPTYPE_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    # Wait Until Contains Element Should Be Enabled    ${EXPENSECODE_ADD_TXT_GROUPTYPE_LOCATOR}
    
    #Price Per Unit *
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_ADD_LBL_PRICEPERUNIT_LOCATOR}    ${EXPENSECODE_ADD_LBL_PRICEPERUNIT_TH} 
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_ADD_LBL_PRICEPERUNIT_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Enabled    ${EXPENSECODE_ADD_TXT_PRICEPERUNIT_LOCATOR}
    
    #Vat.(%) *
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_ADD_LBL_VAT_LOCATOR}    ${EXPENSECODE_ADD_LBL_VAT_TH} 
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_ADD_LBL_VAT_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Enabled    ${EXPENSECODE_ADD_INPUT_VAT_LOCATOR}
    #Tax.(%) *
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_ADD_LBL_TAX_LOCATOR}    ${EXPENSECODE_ADD_LBL_TAX_TH} 
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_ADD_LBL_TAX_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Enabled    ${EXPENSECODE_ADD_INPUT_TAX_LOCATOR}
    
    #Remark
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_ADD_LBL_REMARK_LOCATOR}    ${EXPENSECODE_ADD_LBL_REMARK_TH} 
    Wait Until Contains Element Should Be Enabled    ${EXPENSECODE_ADD_TXTAREA_REMARK_LOCATOR}

    #Cancel button
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_ADDEDIT_BTN_CANCEL_LOCATOR}    ${EXPENSECODE_ADDEDIT_BTN_CANCEL_TH} 
    #Save button
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_ADDEDIT_BTN_SAVE_LOCATOR}    ${EXPENSECODE_ADDEDIT_BTN_SAVE_TH} 

Verify screen : legth 125 and type is varchar in Expensecode NameTh
    # maxlength="125"
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_ADD_TXT_EXPENSECODENAMETH_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 125 and type is varchar in Expensecode NameEn
    # maxlength="125"
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_ADD_TXT_EXPENSECODENAMEEN_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 125 and type is varchar in Expensecode
    # maxlength="125"
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_ADD_TXT_EXPENSECODE_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 5,2 and type is varchar in Vat.(%)
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_ADD_INPUT_VAT_LOCATOR}    ${ATTRIBUTE_MAX}    ${DEFAULT_TXT_MAX_100}
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_ADD_INPUT_VAT_LOCATOR}    ${ATTRIBUTE_MIN}    ${DEFAULT_TXT_MIN_0}

Verify screen : legth 5,2 and type is varchar in Tax.(%)
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_ADD_INPUT_TAX_LOCATOR}    ${ATTRIBUTE_MAX}    ${DEFAULT_TXT_MAX_100}
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_ADD_INPUT_TAX_LOCATOR}    ${ATTRIBUTE_MIN}    ${DEFAULT_TXT_MIN_0}

Verify screen : legth 255 and type is varchar in Remark
    # maxlength="255"
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_ADD_TXTAREA_REMARK_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

Verify data list in Group Type dropdown
    #Click Cancel Expensecode
    Click Element Page    ${EXPENSECODE_ADDEDIT_BTN_CANCEL_LOCATOR}
    Sleep    0.5s
    
    #Click Create Expensecode
    Click Element Page    ${EXPENSECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s

    #Create Expensecode
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_LOCATOR}    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_TH} 

    # Wait Should Contain Get Element Attribute    ${SETTINGBANKACCOUNT_ADDEDIT_LBL_BANKACCOUNT_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${DEFAULT_DDL_SELECTBANKACCOUNT_TH} 
    ${selectGroupType}=    Request DB Data GroupType
    ${dataGroupType}=    Set Variable    ${selectGroupType}[0]
    @{valArrDataNameTh}=    Set Variable    ${selectGroupType}[2]
    @{valArrDataNameEn}=    Set Variable    ${selectGroupType}[3]
    # Log To Console    [dataGroupType] : ${dataGroupType}
    # Log To Console    [valArrDataNameTh] : ${valArrDataNameTh}
    # Log To Console    [valArrDataNameEn] : ${valArrDataNameEn}
    Element Text Should Be Value Dropdown    ${EXPENSECODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${EXPENSECODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${EXPENSECODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${valArrDataNameTh}
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    Sleep    0.5s

Verify data list in Status dropdown
    #Click Cancel Expensecode
    Click Element Page    ${EXPENSECODE_ADDEDIT_BTN_CANCEL_LOCATOR}
    Sleep    0.5s
    
    #Click Create Expensecode
    Click Element Page    ${EXPENSECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s

    #Create Expensecode
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_LOCATOR}    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_TH} 

    Element Text Should Be Value Dropdown    ${EXPENSECODE_ADD_DDL_STATUS_LOCATOR}    ${EXPENSECODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${EXPENSECODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${EXPENSECODE_ADD_DDL_STATUS_TH_VALUE}
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    Sleep    0.5s

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${EXPENSECODE_CREATE_M9_0_1_2_000_SUCCESS_SCREENSHOT}
    
################### Close Browser ###################
    [Teardown]    Close Browser 
