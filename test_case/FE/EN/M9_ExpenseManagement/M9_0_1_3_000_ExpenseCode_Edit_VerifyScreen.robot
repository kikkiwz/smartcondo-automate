*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [Edit] ExpenseCodeManagement ###################
M9_0_1_3_000_ExpenseCode_Edit_VerifyScreen [Verify screen page "Edit Expensecode"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Expense Code
    ...    5. click create button
    ...    6. click edit button
    ...    7. click delete button
    
    [Setup]    Open Browser To Login Page Super Admin EN
       
    Log To Console    ${\n}=========== [Search] ExpenseCodeManagement ===============     
    #========== Click Setting Menu ExpenseCodeManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_EN}    ${MENU_LBL_MASTERMANAGEMENT_EXPENSEMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_EXPENSEMANAGEMENT_EN}   ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_HEADER_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_HEADER_EN}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_EN}
    
    #========== Create ExpenseCode ======
    Log To Console    ${\n}=========== [Create] ExpenseCodeManagement ===============
    Create ExpenseCode input require field data EN

    Log To Console    ${\n}=========== [Edit] ExpenseCodeManagement =============== 
    #Click Edit ExpenseCode
    Click Element Page    ${EXPENSECODE_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit Expensecode
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_EDIT_LBL_EDITEXPENSECODE_LOCATOR}    ${EXPENSECODE_EDIT_LBL_EDITEXPENSECODE_EN} 
    
    #close button
    Wait Until Contains Element Should Be Visible    ${EXPENSECODE_BTN_CLOSE_LOCATOR}
    
    #Expensecode NameTh *
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_EDIT_LBL_EXPENSECODENAMETH_LOCATOR}    ${EXPENSECODE_EDIT_LBL_EXPENSECODENAMETH_EN} 
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_EDIT_LBL_EXPENSECODENAMETH_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Visible    ${EXPENSECODE_EDIT_TXT_EXPENSECODENAMETH_LOCATOR}
    
    #Expensecode NameEn
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_EDIT_LBL_EXPENSECODENAMEEN_LOCATOR}    ${EXPENSECODE_EDIT_LBL_EXPENSECODENAMEEN_EN} 
    Wait Until Contains Element Should Be Enabled    ${EXPENSECODE_EDIT_TXT_EXPENSECODENAMEEN_LOCATOR}
    
    #Expensecode *
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_EDIT_LBL_EXPENSECODE_LOCATOR}    ${EXPENSECODE_EDIT_LBL_EXPENSECODE_EN} 
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_EDIT_LBL_EXPENSECODE_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Enabled    ${EXPENSECODE_EDIT_TXT_EXPENSECODE_LOCATOR}
    
    #Status *
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_EDIT_LBL_STATUS_LOCATOR}    ${EXPENSECODE_EDIT_LBL_STATUS_EN} 
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_EDIT_LBL_STATUS_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    # Wait Until Contains Element Should Be Enabled    ${EXPENSECODE_EDIT_TXT_STATUS_LOCATOR}
    
    #Group Type *
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_EDIT_LBL_GROUPTYPE_LOCATOR}    ${EXPENSECODE_VIEW_LBL_GROUPTYPE_EN} 
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_EDIT_LBL_GROUPTYPE_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    # Wait Until Contains Element Should Be Enabled    ${EXPENSECODE_EDIT_TXT_GROUPTYPE_LOCATOR}

    #Price Per Unit *
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_EDIT_LBL_PRICEPERUNIT_LOCATOR}    ${EXPENSECODE_EDIT_LBL_PRICEPERUNIT_EN} 
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_EDIT_LBL_PRICEPERUNIT_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Enabled    ${EXPENSECODE_EDIT_TXT_PRICEPERUNIT_LOCATOR}

    #Vat.(%) *
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_EDIT_LBL_VAT_LOCATOR}    ${EXPENSECODE_EDIT_LBL_VAT_EN} 
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_EDIT_LBL_VAT_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Enabled    ${EXPENSECODE_EDIT_INPUT_VAT_LOCATOR}
    #Tax.(%) *
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_EDIT_LBL_TAX_LOCATOR}    ${EXPENSECODE_EDIT_LBL_TAX_EN} 
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_EDIT_LBL_TAX_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Enabled    ${EXPENSECODE_EDIT_INPUT_TAX_LOCATOR}
    
    #Remark
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_EDIT_LBL_REMARK_LOCATOR}    ${EXPENSECODE_EDIT_LBL_REMARK_EN} 
    Wait Until Contains Element Should Be Enabled    ${EXPENSECODE_EDIT_TXTAREA_REMARK_LOCATOR}
    
    #Cancel button
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_ADDEDIT_BTN_CANCEL_LOCATOR}    ${EXPENSECODE_ADDEDIT_BTN_CANCEL_EN} 
    #Save button
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_ADDEDIT_BTN_SAVE_LOCATOR}    ${EXPENSECODE_ADDEDIT_BTN_SAVE_EN} 

Verify screen : legth 125 and type is varchar in Expensecode NameTh
    # maxlength="125"
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_EDIT_TXT_EXPENSECODENAMETH_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 125 and type is varchar in Expensecode NameEn
    # maxlength="125"
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_EDIT_TXT_EXPENSECODENAMEEN_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 125 and type is varchar in Expensecode
    # maxlength="125"
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_EDIT_TXT_EXPENSECODE_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 5,2 and type is varchar in Vat.(%)
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_EDIT_INPUT_VAT_LOCATOR}    ${ATTRIBUTE_MAX}    ${DEFAULT_TXT_MAX_100}
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_EDIT_INPUT_VAT_LOCATOR}    ${ATTRIBUTE_MIN}    ${DEFAULT_TXT_MIN_0}

Verify screen : legth 5,2 and type is varchar in Tax.(%)
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_EDIT_INPUT_TAX_LOCATOR}    ${ATTRIBUTE_MAX}    ${DEFAULT_TXT_MAX_100}
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_EDIT_INPUT_TAX_LOCATOR}    ${ATTRIBUTE_MIN}    ${DEFAULT_TXT_MIN_0}

Verify screen : legth 255 and type is varchar in Remark
    # maxlength="255"
    Wait Should Contain Get Element Attribute    ${EXPENSECODE_EDIT_TXTAREA_REMARK_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

Verify data list in Group Type dropdown
    #Click Cancel Expensecode
    Click Element Page    ${EXPENSECODE_ADDEDIT_BTN_CANCEL_LOCATOR}
    Sleep    0.5s
    
    #Click Edit ExpenseCode
    Click Element Page    ${EXPENSECODE_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit Expensecode
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_EDIT_LBL_EDITEXPENSECODE_LOCATOR}    ${EXPENSECODE_EDIT_LBL_EDITEXPENSECODE_EN} 
    
    # Wait Should Contain Get Element Attribute    ${SETTINGBANKACCOUNT_ADDEDIT_LBL_BANKACCOUNT_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${DEFAULT_DDL_SELECTBANKACCOUNT_EN} 
    ${selectGroupType}=    Request DB Data GroupType
    ${dataGroupType}=    Set Variable    ${selectGroupType}[0]
    @{valArrDataNameTh}=    Set Variable    ${selectGroupType}[2]
    @{valArrDataNameEn}=    Set Variable    ${selectGroupType}[3]
    # Log To Console    [dataGroupType] : ${dataGroupType}
    # Log To Console    [valArrDataNameTh] : ${valArrDataNameTh}
    # Log To Console    [valArrDataNameEn] : ${valArrDataNameEn}
    Element Text Should Be Value Dropdown    ${EXPENSECODE_EDIT_DDL_GROUPTYPE_LOCATOR}    ${EXPENSECODE_EDIT_DDL_GROUPTYPE_LIST_LOCATOR}    ${EXPENSECODE_EDIT_DDL_GROUPTYPE_CLASS_LOCATOR}    ${valArrDataNameEn}
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    Sleep    0.5s

Verify data list in Status dropdown
    #Click Cancel Expensecode
    Click Element Page    ${EXPENSECODE_ADDEDIT_BTN_CANCEL_LOCATOR}
    Sleep    0.5s
    
    #Click #Edit Expensecode
    Click Element Page    ${EXPENSECODE_BTN_EDIT_LOCATOR}
    Sleep    0.5s

    #Edit Expensecode
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_EDIT_LBL_EDITEXPENSECODE_LOCATOR}    ${EXPENSECODE_EDIT_LBL_EDITEXPENSECODE_EN} 

    Element Text Should Be Value Dropdown    ${EXPENSECODE_EDIT_DDL_STATUS_LOCATOR}    ${EXPENSECODE_EDIT_DDL_STATUS_LIST_LOCATOR}    ${EXPENSECODE_EDIT_DDL_STATUS_CLASS_LOCATOR}    ${EXPENSECODE_EDIT_DDL_STATUS_EN_VALUE}
    #close dropdrown
    Sleep    0.5s
	
	#Click Cancel Expensecode
    Click Element Page    ${EXPENSECODE_ADDEDIT_BTN_CANCEL_LOCATOR}
    Sleep    0.5s

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${EXPENSECODE_EDIT_M9_0_1_3_000_SUCCESS_SCREENSHOT}
    
################### Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown ExpenseCode EN
 

