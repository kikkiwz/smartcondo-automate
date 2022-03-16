*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [Edit] IncomeCodeManagement ###################
M11_0_1_3_000_IncomeCode_Success_Edit_VerifyScreen [Verify screen page "Edit Income Code"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Income Code
    ...    5. click create button
    ...    6. click edit button
    ...    7. click delete button
    
   [Setup]    Open Browser To Login Page Super Admin EN
        
    Log To Console    ${\n}=========== [Create] IncomeCodeManagement =============== 

    #========== Click Setting Menu IncomecodeManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_EN}    ${MENU_LBL_MASTERMANAGEMENT_INCOMECODEMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_INCOMECODEMANAGEMENT_EN}   ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_HEADER_LOCATOR}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_HEADER_EN}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_LOCATOR}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_EN}

    #========== Create IncomeCode ======
    Log To Console    ${\n}=========== [Create] IncomeCodeManagement ===============
    Create IncomeCode input require field data EN

    Log To Console    ${\n}=========== [Edit] IncomeCodeManagement =============== 
    #Click Edit Incomecode
    Click Element Page    ${INCOMECODE_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit Incomecode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_EDITINCOMECODE_LOCATOR}    ${INCOMECODE_EDIT_LBL_EDITINCOMECODE_EN} 
    
    #close button
    Wait Until Contains Element Should Be Visible    ${INCOMECODE_BTN_CLOSE_LOCATOR}
    
    #Incomecode NameTh *
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_INCOMECODENAMETH_LOCATOR}    ${INCOMECODE_EDIT_LBL_INCOMECODENAMETH_EN} 
    Wait Should Contain Get Element Attribute    ${INCOMECODE_EDIT_LBL_INCOMECODENAMETH_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Visible    ${INCOMECODE_EDIT_TXT_INCOMECODENAMETH_LOCATOR}
    
    #Incomecode NameEn
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_INCOMECODENAMEEN_LOCATOR}    ${INCOMECODE_EDIT_LBL_INCOMECODENAMEEN_EN} 
    Wait Until Contains Element Should Be Enabled    ${INCOMECODE_EDIT_TXT_INCOMECODENAMEEN_LOCATOR}
    
    #Incomecode *
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_INCOMECODE_LOCATOR}    ${INCOMECODE_EDIT_LBL_INCOMECODE_EN} 
    Wait Should Contain Get Element Attribute    ${INCOMECODE_EDIT_LBL_INCOMECODE_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Enabled    ${INCOMECODE_EDIT_TXT_INCOMECODE_LOCATOR}
    
    #Status *
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_STATUS_LOCATOR}    ${INCOMECODE_EDIT_LBL_STATUS_EN} 
    Wait Should Contain Get Element Attribute    ${INCOMECODE_EDIT_LBL_STATUS_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    # Wait Until Contains Element Should Be Enabled    ${INCOMECODE_EDIT_TXT_STATUS_LOCATOR}
    
    #Group Type *
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_GROUPTYPE_LOCATOR}    ${INCOMECODE_VIEW_LBL_GROUPTYPE_EN} 
    Wait Should Contain Get Element Attribute    ${INCOMECODE_EDIT_LBL_GROUPTYPE_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    # Wait Until Contains Element Should Be Enabled    ${INCOMECODE_EDIT_TXT_GROUPTYPE_LOCATOR}
    
    #Price Per Unit *
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_PRICEPERUNIT_LOCATOR}    ${INCOMECODE_EDIT_LBL_PRICEPERUNIT_EN} 
    Wait Should Contain Get Element Attribute    ${INCOMECODE_EDIT_LBL_PRICEPERUNIT_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Enabled    ${INCOMECODE_EDIT_TXT_PRICEPERUNIT_LOCATOR}

    #Calculation type (every specified month)
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_CALCULATIONTYPE_LOCATOR}    ${INCOMECODE_EDIT_LBL_CALCULATIONTYPE_EN} 
    # Wait Until Contains Element Should Be Enabled    ${INCOMECODE_EDIT_TXT_MULCTMETHOD_LOCATOR}
    
    #Payment Order *
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_PAYMENTORDER_LOCATOR}    ${INCOMECODE_EDIT_LBL_PAYMENTORDER_EN} 
    # Wait Should Contain Get Element Attribute    ${INCOMECODE_EDIT_LBL_PAYMENTORDER_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Enabled    ${INCOMECODE_EDIT_INPUT_PAYMENTORDER_LOCATOR}

    #Calulation Method *
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_CALCULATIONMETHOD_LOCATOR}    ${INCOMECODE_EDIT_LBL_CALCULATIONMETHOD_EN} 
    # Wait Until Contains Element Should Be Enabled    ${INCOMECODE_EDIT_TXT_MULCTMETHOD_LOCATOR}
    
    #Vat.(%) *
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_VAT_LOCATOR}    ${INCOMECODE_EDIT_LBL_VAT_EN} 
    Wait Should Contain Get Element Attribute    ${INCOMECODE_EDIT_LBL_VAT_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Enabled    ${INCOMECODE_EDIT_INPUT_VAT_LOCATOR}
    #Tax.(%) *
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_TAX_LOCATOR}    ${INCOMECODE_EDIT_LBL_TAX_EN} 
    Wait Should Contain Get Element Attribute    ${INCOMECODE_EDIT_LBL_TAX_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Enabled    ${INCOMECODE_EDIT_INPUT_TAX_LOCATOR}

    #Charge a mulct *
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_CHAGEAMULCT_LOCATOR}    ${INCOMECODE_EDIT_LBL_CHAGEAMULCT_EN} 
    #No penalty charge
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_CHAGEAMULCT_NOPENALTYCHARGE_LOCATOR}    ${INCOMECODE_EDIT_LBL_CHAGEAMULCT_NOPENALTYCHARGE_EN} 
    #Charge a fine
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_CHAGEAMULCT_CHARGEAFINE_LOCATOR}    ${INCOMECODE_EDIT_LBL_CHAGEAMULCT_CHARGEAFINE_EN} 
    
    #Remark
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_REMARK_LOCATOR}    ${INCOMECODE_EDIT_LBL_REMARK_EN} 
    Wait Until Contains Element Should Be Enabled    ${INCOMECODE_EDIT_TXTAREA_REMARK_LOCATOR}

    #Click Charge a fine
    Click Element Page    ${INCOMECODE_EDIT_LBL_CHAGEAMULCT_CHARGEAFINE_LOCATOR}

    #Mulctcode * 
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_MULCTCODE_LOCATOR}    ${INCOMECODE_EDIT_LBL_MULCTCODE_EN} 
    Wait Should Contain Get Element Attribute    ${INCOMECODE_EDIT_LBL_MULCTCODE_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    # Wait Until Contains Element Should Be Enabled    ${INCOMECODE_EDIT_TXT_MULCTMETHOD_LOCATOR}
    
    #Calulation Method *
    Select Dropdown    ${INCOMECODE_EDIT_DDL_CALCULATIONMETHOD_LOCATOR}    ${INCOMECODE_EDIT_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${INCOMECODE_EDIT_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${INCOMECODE_CALCULATIONMETHOD_EN_VALUE2}
    Sleep    0.5s
    #Minimum Unit *
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_MINIMUMUNIT_LOCATOR}    ${INCOMECODE_EDIT_LBL_MINIMUMUNIT_EN} 
    Wait Should Contain Get Element Attribute    ${INCOMECODE_EDIT_LBL_MINIMUMUNIT_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Enabled    ${INCOMECODE_EDIT_INPUT_MINIMUMUNIT_LOCATOR}

    #Calulation Method *
    Select Dropdown    ${INCOMECODE_EDIT_DDL_CALCULATIONMETHOD_LOCATOR}    ${INCOMECODE_EDIT_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${INCOMECODE_EDIT_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${INCOMECODE_CALCULATIONMETHOD_EN_VALUE3}
    Sleep    0.5s
    #Minimum Price *
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_MINIMUMPRICE_LOCATOR}    ${INCOMECODE_EDIT_LBL_MINIMUMPRICE_EN} 
    Wait Should Contain Get Element Attribute    ${INCOMECODE_EDIT_LBL_MINIMUMPRICE_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Enabled    ${INCOMECODE_EDIT_INPUT_MINIMUMPRICE_LOCATOR}
    
    #Cancel button
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADDEDIT_BTN_CANCEL_LOCATOR}    ${INCOMECODE_ADDEDIT_BTN_CANCEL_EN} 
    #Save button
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADDEDIT_BTN_SAVE_LOCATOR}    ${INCOMECODE_ADDEDIT_BTN_SAVE_EN} 

Verify screen : legth 125 and type is varchar in Incomecode NameTh
    # maxlength="125"
    Wait Should Contain Get Element Attribute    ${INCOMECODE_EDIT_TXT_INCOMECODENAMETH_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 125 and type is varchar in Incomecode NameEn
    # maxlength="125"
    Wait Should Contain Get Element Attribute    ${INCOMECODE_EDIT_TXT_INCOMECODENAMEEN_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 125 and type is varchar in Incomecode
    # maxlength="125"
    Wait Should Contain Get Element Attribute    ${INCOMECODE_EDIT_TXT_INCOMECODE_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 125 and type is varchar in Price Per Unit
    # maxlength="125"
    Wait Should Contain Get Element Attribute    ${INCOMECODE_EDIT_TXT_INCOMECODE_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 125 and type is varchar in Minimum Unit
    #Calulation Method *
    Select Dropdown    ${INCOMECODE_EDIT_DDL_CALCULATIONMETHOD_LOCATOR}    ${INCOMECODE_EDIT_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${INCOMECODE_EDIT_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${INCOMECODE_CALCULATIONMETHOD_EN_VALUE2}
    Sleep    0.5s
    # maxlength="125"
    Wait Should Contain Get Element Attribute    ${INCOMECODE_EDIT_TXT_INCOMECODE_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 125 and type is varchar in Minimum Price
    #Calulation Method *
    Select Dropdown    ${INCOMECODE_EDIT_DDL_CALCULATIONMETHOD_LOCATOR}    ${INCOMECODE_EDIT_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${INCOMECODE_EDIT_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${INCOMECODE_CALCULATIONMETHOD_EN_VALUE3}
    Sleep    0.5s
    # maxlength="125"
    Wait Should Contain Get Element Attribute    ${INCOMECODE_EDIT_TXT_INCOMECODE_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

# Verify screen : legth 5,2 and type is varchar in Vat.(%)
    Wait Should Contain Get Element Attribute    ${INCOMECODE_EDIT_INPUT_VAT_LOCATOR}    ${ATTRIBUTE_MAX}    ${DEFAULT_TXT_MAX_100}
    Wait Should Contain Get Element Attribute    ${INCOMECODE_EDIT_INPUT_VAT_LOCATOR}    ${ATTRIBUTE_MIN}    ${DEFAULT_TXT_MIN_0}

# Verify screen : legth 5,2 and type is varchar in Tax.(%)
    Wait Should Contain Get Element Attribute    ${INCOMECODE_EDIT_INPUT_TAX_LOCATOR}    ${ATTRIBUTE_MAX}    ${DEFAULT_TXT_MAX_100}
    Wait Should Contain Get Element Attribute    ${INCOMECODE_EDIT_INPUT_TAX_LOCATOR}    ${ATTRIBUTE_MIN}    ${DEFAULT_TXT_MIN_0}

Verify screen : legth 255 and type is varchar in Remark
    # maxlength="255"
    Wait Should Contain Get Element Attribute    ${INCOMECODE_EDIT_TXTAREA_REMARK_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

Verify data list in Charge a mulct Radiobutton
    #Charge a mulct *
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_CHAGEAMULCT_LOCATOR}    ${INCOMECODE_EDIT_LBL_CHAGEAMULCT_EN} 
    #No penalty charge
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_CHAGEAMULCT_NOPENALTYCHARGE_LOCATOR}    ${INCOMECODE_EDIT_LBL_CHAGEAMULCT_NOPENALTYCHARGE_EN} 
    #Charge a fine
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_CHAGEAMULCT_CHARGEAFINE_LOCATOR}    ${INCOMECODE_EDIT_LBL_CHAGEAMULCT_CHARGEAFINE_EN} 

Verify data list in Group Type dropdown
    #Click Cancel IncomeCode
    Click Element Page    ${INCOMECODE_ADDEDIT_BTN_CANCEL_LOCATOR}
    Sleep    0.5s
    
    #Click Edit Incomecode
    Click Element Page    ${INCOMECODE_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit Incomecode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_EDITINCOMECODE_LOCATOR}    ${INCOMECODE_EDIT_LBL_EDITINCOMECODE_EN} 
    
    # Wait Should Contain Get Element Attribute    ${SETTINGBANKACCOUNT_ADDEDIT_LBL_BANKACCOUNT_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${DEFAULT_DDL_SELECTBANKACCOUNT_EN} 
    ${selectGroupType}=    Request DB Data GroupType
    ${dataGroupType}=    Set Variable    ${selectGroupType}[0]
    @{valArrDataNameTh}=    Set Variable    ${selectGroupType}[2]
    @{valArrDataNameEn}=    Set Variable    ${selectGroupType}[3]
    # Log To Console    [dataGroupType] : ${dataGroupType}
    # Log To Console    [valArrDataNameTh] : ${valArrDataNameTh}
    # Log To Console    [valArrDataNameEn] : ${valArrDataNameEn}
    Element Text Should Be Value Dropdown    ${INCOMECODE_EDIT_DDL_GROUPTYPE_LOCATOR}    ${INCOMECODE_EDIT_DDL_GROUPTYPE_LIST_LOCATOR}    ${INCOMECODE_EDIT_DDL_GROUPTYPE_CLASS_LOCATOR}    ${valArrDataNameEn}
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    Sleep    1s

Verify data list in Status dropdown
    #Click X
    Click Element Page    ${INCOMECODE_BTN_CLOSE_LOCATOR}
    Sleep    0.5s
    
    #Click Edit Incomecode
    Click Element Page    ${INCOMECODE_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit Incomecode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_EDITINCOMECODE_LOCATOR}    ${INCOMECODE_EDIT_LBL_EDITINCOMECODE_EN} 
    
    Element Text Should Be Value Dropdown    ${INCOMECODE_EDIT_DDL_STATUS_LOCATOR}    ${INCOMECODE_EDIT_DDL_STATUS_LIST_LOCATOR}    ${INCOMECODE_EDIT_DDL_STATUS_CLASS_LOCATOR}    ${INCOMECODE_EDIT_DDL_STATUS_EN_VALUE}
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    Sleep    0.5s


Verify data list in Calculation type (every specified month) dropdown
    #Click X
    Click Element Page    ${INCOMECODE_BTN_CLOSE_LOCATOR}
    Sleep    0.5s
    
    #Click Edit Incomecode
    Click Element Page    ${INCOMECODE_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit Incomecode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_EDITINCOMECODE_LOCATOR}    ${INCOMECODE_EDIT_LBL_EDITINCOMECODE_EN} 
    
    Element Text Should Be Value Dropdown Long    ${INCOMECODE_EDIT_DDL_CALCULATIONTYPE_LOCATOR}    ${INCOMECODE_EDIT_DDL_CALCULATIONTYPE_LIST_LOCATOR}    ${INCOMECODE_EDIT_DDL_CALCULATIONTYPE_CLASS_LOCATOR}    ${DEFAULT_LBL_MONTH_EN}
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    Sleep    1s

Verify data list in Calculation Method dropdown
    #Click X
    Click Element Page    ${INCOMECODE_BTN_CLOSE_LOCATOR}
    Sleep    0.5s
    
    #Click Edit Incomecode
    Click Element Page    ${INCOMECODE_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit Incomecode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_EDITINCOMECODE_LOCATOR}    ${INCOMECODE_EDIT_LBL_EDITINCOMECODE_EN} 
    
    # Wait Should Contain Get Element Attribute    ${SETTINGBANKACCOUNT_ADDEDIT_LBL_BANKACCOUNT_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${DEFAULT_DDL_SELECTBANKACCOUNT_EN} 
    ${selectCalculationMethod}=    Request DB Data CalculationMethod
    ${dataCalculationMethod}=    Set Variable    ${selectCalculationMethod}[0]
    @{valArrDataNameTh}=    Set Variable    ${selectCalculationMethod}[2]
    @{valArrDataNameEn}=    Set Variable    ${selectCalculationMethod}[3]
    # Log To Console    [dataGroupType] : ${dataGroupType}
    # Log To Console    [valArrDataNameTh] : ${valArrDataNameTh}
    # Log To Console    [valArrDataNameEn] : ${valArrDataNameEn}
    Element Text Should Be Value Dropdown    ${INCOMECODE_EDIT_DDL_CALCULATIONMETHOD_LOCATOR}    ${INCOMECODE_EDIT_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${INCOMECODE_EDIT_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${valArrDataNameEn}
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    Sleep    1s

Verify data list in Mulctcode dropdown

    #Click X
    Click Element Page    ${INCOMECODE_BTN_CLOSE_LOCATOR}
    Sleep    0.5s

    # #========== Create MulctCode ====== 
    # ${mulctConditionDetail}=    Set Variable    [{"timePastDeadline": 1, "dateToFlag": ${FALSE_LOWWER}, "total": 100 }, {"dateToFlag": ${TRUE_LOWWER}, "timePastDeadline": 9999, "total": 1}]
 
    # #Create data MulctCode and MulctMethod receive mulctMethodId mulctCodeId Set Global   
    # Run keyword And Continue On Failure    Request CreateData for MulctCode      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_MULCTMETHOD_STATUS_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATE_VALUE}    ${DATA_MULCTMETHOD_CALCULATEMULCTTYPE_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATETYPE_VALUE}    ${DATA_MULCTMETHOD_UNITFROMTO_VALUE}    ${mulctConditionDetail}    ${DATA_MULCTMETHOD_NAMETH_VALUE}    ${DATA_MULCTCODE_GROUPTYPEID_VALUE}    ${DATA_MULCTCODE_MULCTCODE_VALUE}    ${DATA_MULCTCODE_NAMEEN_VALUE}    ${DATA_MULCTCODE_NAMETH_VALUE}    ${DATA_MULCTCODE_REMARK_VALUE}    ${DATA_MULCTCODE_STATUS_VALUE}    ${DATA_MULCTCODE_TAX_VALUE}    ${DATA_MULCTCODE_VAT_VALUE}

    #Click Edit Incomecode
    Click Element Page    ${INCOMECODE_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit Incomecode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_EDITINCOMECODE_LOCATOR}    ${INCOMECODE_EDIT_LBL_EDITINCOMECODE_EN} 
    
    #Click Charge a fine
    Click Element Page    ${INCOMECODE_EDIT_LBL_CHAGEAMULCT_CHARGEAFINE_LOCATOR}

    # Wait Should Contain Get Element Attribute    ${SETTINGBANKACCOUNT_ADDEDIT_LBL_BANKACCOUNT_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${DEFAULT_DDL_SELECTBANKACCOUNT_EN} 
    ${selectMulctcode}=    Request DB Data Mulctcode
    ${dataMulctcode}=    Set Variable    ${selectMulctcode}[0]
    # @{valArrDataNameTh}=    Set Variable    ${selectMulctcode}[2]
    # @{valArrDataNameEn}=    Set Variable    ${selectMulctcode}[3]
    @{valArrDataNameTh}=    Set Variable    ${selectMulctcode}[4]
    @{valArrDataNameEn}=    Set Variable    ${selectMulctcode}[5]
    # Log To Console    [dataGroupType] : ${dataGroupType}
    # Log To Console    [valArrDataNameTh] : ${valArrDataNameTh}
    # Log To Console    [valArrDataNameEn] : ${valArrDataNameEn}
    Element Text Should Be Value Dropdown    ${INCOMECODE_EDIT_DDL_MULCTCODE_LOCATOR}    ${INCOMECODE_EDIT_DDL_MULCTCODE_LIST_LOCATOR}    ${INCOMECODE_EDIT_DDL_MULCTCODE_CLASS_LOCATOR}    ${valArrDataNameEn}
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    Sleep    1s

    #Click X
    Click Element Page    ${INCOMECODE_BTN_CLOSE_LOCATOR}
    Sleep    0.5s

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${INCOMECODE_EDIT_M11_0_1_3_000_SUCCESS_SCREENSHOT}
    
################## Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown IncomeCode EN    ${DATA_MULCTMETHOD_NAMETH_VALUE}    ${mulctCodeId}    ${mulctMethodId}


