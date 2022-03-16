*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [Create] IncomeCodeManagement ###################
M11_0_1_2_000_IncomeCode_Success_Create_VerifyScreen [Verify screen page "Create IncomeCode"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Income Code
    ...    5. click create button
    ...    6. click delete button

    [Setup]    Open Browser To Login Page Super Admin
        
    Log To Console    ${\n}=========== [Create] IncomeCodeManagement =============== 

    #========== Click Setting Menu IncomecodeManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_TH}    ${MENU_LBL_MASTERMANAGEMENT_INCOMECODEMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_INCOMECODEMANAGEMENT_TH}   ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_HEADER_LOCATOR}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_HEADER_TH}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_LOCATOR}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_TH}

    #========== Check IncomeCodeManagement ======
    #Click Create IncomeCode
    Click Element Page    ${INCOMECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create IncomeCode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_TH} 

    #close button
    Wait Until Contains Element Should Be Visible    ${INCOMECODE_BTN_CLOSE_LOCATOR}
    
    #IncomeCode NameTh *
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_INCOMECODENAMETH_LOCATOR}    ${INCOMECODE_ADD_LBL_INCOMECODENAMETH_TH} 
    Wait Should Contain Get Element Attribute    ${INCOMECODE_ADD_LBL_INCOMECODENAMETH_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Visible    ${INCOMECODE_ADD_TXT_INCOMECODENAMETH_LOCATOR}
    
    #IncomeCode NameEn
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_INCOMECODENAMEEN_LOCATOR}    ${INCOMECODE_ADD_LBL_INCOMECODENAMEEN_TH} 
    Wait Until Contains Element Should Be Enabled    ${INCOMECODE_ADD_TXT_INCOMECODENAMEEN_LOCATOR}
    
    #IncomeCode *
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_INCOMECODE_LOCATOR}    ${INCOMECODE_ADD_LBL_INCOMECODE_TH} 
    Wait Should Contain Get Element Attribute    ${INCOMECODE_ADD_LBL_INCOMECODE_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Enabled    ${INCOMECODE_ADD_TXT_INCOMECODE_LOCATOR}
    
    #Status *
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_STATUS_LOCATOR}    ${INCOMECODE_ADD_LBL_STATUS_TH} 
    Wait Should Contain Get Element Attribute    ${INCOMECODE_ADD_LBL_STATUS_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    # Wait Until Contains Element Should Be Enabled    ${INCOMECODE_ADD_TXT_STATUS_LOCATOR}
    
    #Group Type *
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_GROUPTYPE_LOCATOR}    ${INCOMECODE_ADD_LBL_GROUPTYPE_TH} 
    Wait Should Contain Get Element Attribute    ${INCOMECODE_ADD_LBL_GROUPTYPE_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    # Wait Until Contains Element Should Be Enabled    ${INCOMECODE_ADD_TXT_GROUPTYPE_LOCATOR}

    #Price Per Unit *
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_PRICEPERUNIT_LOCATOR}    ${INCOMECODE_ADD_LBL_PRICEPERUNIT_TH} 
    Wait Should Contain Get Element Attribute    ${INCOMECODE_ADD_LBL_PRICEPERUNIT_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Enabled    ${INCOMECODE_ADD_TXT_PRICEPERUNIT_LOCATOR}

    #Calculation type (every specified month)
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_CALCULATIONTYPE_LOCATOR}    ${INCOMECODE_ADD_LBL_CALCULATIONTYPE_TH} 
    # Wait Until Contains Element Should Be Enabled    ${INCOMECODE_ADD_TXT_MULCTMETHOD_LOCATOR}
    
    #Calulation Method *
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_CALCULATIONMETHOD_LOCATOR}    ${INCOMECODE_ADD_LBL_CALCULATIONMETHOD_TH} 
    # Wait Until Contains Element Should Be Enabled    ${INCOMECODE_ADD_TXT_MULCTMETHOD_LOCATOR}
    
    #Vat.(%) *
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_VAT_LOCATOR}    ${INCOMECODE_ADD_LBL_VAT_TH} 
    Wait Should Contain Get Element Attribute    ${INCOMECODE_ADD_LBL_VAT_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Enabled    ${INCOMECODE_ADD_INPUT_VAT_LOCATOR}
    #Tax.(%) *
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_TAX_LOCATOR}    ${INCOMECODE_ADD_LBL_TAX_TH} 
    Wait Should Contain Get Element Attribute    ${INCOMECODE_ADD_LBL_TAX_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Enabled    ${INCOMECODE_ADD_INPUT_TAX_LOCATOR}

    #Charge a mulct *
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_CHAGEAMULCT_LOCATOR}    ${INCOMECODE_ADD_LBL_CHAGEAMULCT_TH} 
    #No penalty charge
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_CHAGEAMULCT_NOPENALTYCHARGE_LOCATOR}    ${INCOMECODE_ADD_LBL_CHAGEAMULCT_NOPENALTYCHARGE_TH} 
    #Charge a fine
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_CHAGEAMULCT_CHARGEAFINE_LOCATOR}    ${INCOMECODE_ADD_LBL_CHAGEAMULCT_CHARGEAFINE_TH} 
    
    #Remark
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_REMARK_LOCATOR}    ${INCOMECODE_ADD_LBL_REMARK_TH} 
    Wait Until Contains Element Should Be Enabled    ${INCOMECODE_ADD_TXTAREA_REMARK_LOCATOR}

    #Click Charge a fine
    Click Element Page    ${INCOMECODE_ADD_RDL_CHAGEAMULCT_CHARGEAFINE_LOCATOR}

    #Mulctcode * 
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_MULCTCODE_LOCATOR}    ${INCOMECODE_ADD_LBL_MULCTCODE_TH} 
    Wait Should Contain Get Element Attribute    ${INCOMECODE_ADD_LBL_MULCTCODE_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    # Wait Until Contains Element Should Be Enabled    ${INCOMECODE_ADD_TXT_MULCTMETHOD_LOCATOR}
    
    #Calulation Method *
    Select Dropdown    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${INCOMECODE_CALCULATIONMETHOD_TH_VALUE2}
    Sleep    0.5s
    #Minimum Unit *
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_MINIMUMUNIT_LOCATOR}    ${INCOMECODE_ADD_LBL_MINIMUMUNIT_TH} 
    Wait Should Contain Get Element Attribute    ${INCOMECODE_ADD_LBL_MINIMUMUNIT_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Enabled    ${INCOMECODE_ADD_INPUT_MINIMUMUNIT_LOCATOR}

    #Calulation Method *
    Select Dropdown    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${INCOMECODE_CALCULATIONMETHOD_TH_VALUE3}
    Sleep    0.5s
    #Minimum Price *
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_MINIMUMPRICE_LOCATOR}    ${INCOMECODE_ADD_LBL_MINIMUMPRICE_TH} 
    Wait Should Contain Get Element Attribute    ${INCOMECODE_ADD_LBL_MINIMUMPRICE_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Enabled    ${INCOMECODE_ADD_INPUT_MINIMUMPRICE_LOCATOR}

    #Cancel button
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADDEDIT_BTN_CANCEL_LOCATOR}    ${INCOMECODE_ADDEDIT_BTN_CANCEL_TH} 
    #Save button
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADDEDIT_BTN_SAVE_LOCATOR}    ${INCOMECODE_ADDEDIT_BTN_SAVE_TH} 

Verify screen : legth 125 and type is varchar in Incomecode NameTh
    # maxlength="125"
    Wait Should Contain Get Element Attribute    ${INCOMECODE_ADD_TXT_INCOMECODENAMETH_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 125 and type is varchar in Incomecode NameEn
    # maxlength="125"
    Wait Should Contain Get Element Attribute    ${INCOMECODE_ADD_TXT_INCOMECODENAMEEN_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 125 and type is varchar in Incomecode
    # maxlength="125"
    Wait Should Contain Get Element Attribute    ${INCOMECODE_ADD_TXT_INCOMECODE_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 125 and type is varchar in Price Per Unit
    # maxlength="125"
    Wait Should Contain Get Element Attribute    ${INCOMECODE_ADD_TXT_INCOMECODE_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 125 and type is varchar in Minimum Unit
    #Calulation Method *
    Select Dropdown    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${INCOMECODE_CALCULATIONMETHOD_TH_VALUE2}
    Sleep    0.5s
    # maxlength="125"
    Wait Should Contain Get Element Attribute    ${INCOMECODE_ADD_TXT_INCOMECODE_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 125 and type is varchar in Minimum Price
    #Calulation Method *
    Select Dropdown    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${INCOMECODE_CALCULATIONMETHOD_TH_VALUE3}
    Sleep    0.5s
    # maxlength="125"
    Wait Should Contain Get Element Attribute    ${INCOMECODE_ADD_TXT_INCOMECODE_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 5,2 and type is varchar in Vat.(%)
    Wait Should Contain Get Element Attribute    ${INCOMECODE_ADD_INPUT_VAT_LOCATOR}    ${ATTRIBUTE_MAX}    ${DEFAULT_TXT_MAX_100}
    Wait Should Contain Get Element Attribute    ${INCOMECODE_ADD_INPUT_VAT_LOCATOR}    ${ATTRIBUTE_MIN}    ${DEFAULT_TXT_MIN_0}

Verify screen : legth 5,2 and type is varchar in Tax.(%)
    Wait Should Contain Get Element Attribute    ${INCOMECODE_ADD_INPUT_TAX_LOCATOR}    ${ATTRIBUTE_MAX}    ${DEFAULT_TXT_MAX_100}
    Wait Should Contain Get Element Attribute    ${INCOMECODE_ADD_INPUT_TAX_LOCATOR}    ${ATTRIBUTE_MIN}    ${DEFAULT_TXT_MIN_0}

Verify screen : legth 255 and type is varchar in Remark
    # maxlength="255"
    Wait Should Contain Get Element Attribute    ${INCOMECODE_ADD_TXTAREA_REMARK_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

Verify data list in Charge a mulct Radiobutton
    #Charge a mulct *
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_CHAGEAMULCT_LOCATOR}    ${INCOMECODE_ADD_LBL_CHAGEAMULCT_TH} 
    #No penalty charge
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_CHAGEAMULCT_NOPENALTYCHARGE_LOCATOR}    ${INCOMECODE_ADD_LBL_CHAGEAMULCT_NOPENALTYCHARGE_TH} 
    #Charge a fine
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_CHAGEAMULCT_CHARGEAFINE_LOCATOR}    ${INCOMECODE_ADD_LBL_CHAGEAMULCT_CHARGEAFINE_TH} 

Verify data list in Group Type dropdown
    #Click Cancel IncomeCode
    Click Element Page    ${INCOMECODE_ADDEDIT_BTN_CANCEL_LOCATOR}
    Sleep    0.5s
    
    #Click Create IncomeCode
    Click Element Page    ${INCOMECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s

    #Create IncomeCode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_TH}

    # Wait Should Contain Get Element Attribute    ${SETTINGBANKACCOUNT_ADDEDIT_LBL_BANKACCOUNT_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${DEFAULT_DDL_SELECTBANKACCOUNT_TH} 
    ${selectGroupType}=    Request DB Data GroupType
    ${dataGroupType}=    Set Variable    ${selectGroupType}[0]
    @{valArrDataNameTh}=    Set Variable    ${selectGroupType}[2]
    @{valArrDataNameEn}=    Set Variable    ${selectGroupType}[3]
    # Log To Console    [dataGroupType] : ${dataGroupType}
    # Log To Console    [valArrDataNameTh] : ${valArrDataNameTh}
    # Log To Console    [valArrDataNameEn] : ${valArrDataNameEn}
    Element Text Should Be Value Dropdown    ${INCOMECODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${INCOMECODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${valArrDataNameTh}
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    Sleep    1s

Verify data list in Status dropdown
    #Click X
    Click Element Page    ${INCOMECODE_BTN_CLOSE_LOCATOR}
    Sleep    0.5s
    
    #Click Create IncomeCode
    Click Element Page    ${INCOMECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s

    #Create IncomeCode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_TH}

    Element Text Should Be Value Dropdown    ${INCOMECODE_ADD_DDL_STATUS_LOCATOR}    ${INCOMECODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${INCOMECODE_ADD_DDL_STATUS_TH_VALUE}
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    Sleep    0.5s


Verify data list in Calculation type (every specified month) dropdown
    #Click X
    Click Element Page    ${INCOMECODE_BTN_CLOSE_LOCATOR}
    Sleep    0.5s
    
    #Click Create IncomeCode
    Click Element Page    ${INCOMECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s

    #Create IncomeCode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_TH}

    Element Text Should Be Value Dropdown Long    ${INCOMECODE_ADD_DDL_CALCULATIONTYPE_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONTYPE_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONTYPE_CLASS_LOCATOR}    ${DEFAULT_LBL_MONTH_TH}
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    Sleep    1s

Verify data list in Calculation Method dropdown
    #Click X
    Click Element Page    ${INCOMECODE_BTN_CLOSE_LOCATOR}
    Sleep    0.5s
    
    #Click Create IncomeCode
    Click Element Page    ${INCOMECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s

    #Create IncomeCode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_TH}

    # Wait Should Contain Get Element Attribute    ${SETTINGBANKACCOUNT_ADDEDIT_LBL_BANKACCOUNT_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${DEFAULT_DDL_SELECTBANKACCOUNT_TH} 
    ${selectCalculationMethod}=    Request DB Data CalculationMethod
    ${dataCalculationMethod}=    Set Variable    ${selectCalculationMethod}[0]
    @{valArrDataNameTh}=    Set Variable    ${selectCalculationMethod}[2]
    @{valArrDataNameEn}=    Set Variable    ${selectCalculationMethod}[3]
    # Log To Console    [dataGroupType] : ${dataGroupType}
    # Log To Console    [valArrDataNameTh] : ${valArrDataNameTh}
    # Log To Console    [valArrDataNameEn] : ${valArrDataNameEn}
    Element Text Should Be Value Dropdown    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${valArrDataNameTh}
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    Sleep    1s

Verify data list in Mulctcode dropdown

    #Click X
    Click Element Page    ${INCOMECODE_BTN_CLOSE_LOCATOR}
    Sleep    0.5s

    #========== Create MulctCode ====== 
    ${mulctConditionDetail}=    Set Variable    [{"timePastDeadline": 1, "dateToFlag": ${FALSE_LOWWER}, "total": 100 }, {"dateToFlag": ${TRUE_LOWWER}, "timePastDeadline": 9999, "total": 1}]
 
    #Create data MulctCode and MulctMethod receive mulctMethodId mulctCodeId Set Global   
    Run keyword And Continue On Failure    Request CreateData for MulctCode      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_MULCTMETHOD_STATUS_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATE_VALUE}    ${DATA_MULCTMETHOD_CALCULATEMULCTTYPE_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATETYPE_VALUE}    ${DATA_MULCTMETHOD_UNITFROMTO_VALUE}    ${mulctConditionDetail}    ${DATA_MULCTMETHOD_NAMETH_VALUE}    ${DATA_MULCTCODE_GROUPTYPEID_VALUE}    ${DATA_MULCTCODE_MULCTCODE_VALUE}    ${DATA_MULCTCODE_NAMEEN_VALUE}    ${DATA_MULCTCODE_NAMETH_VALUE}    ${DATA_MULCTCODE_REMARK_VALUE}    ${DATA_MULCTCODE_STATUS_VALUE}    ${DATA_MULCTCODE_TAX_VALUE}    ${DATA_MULCTCODE_VAT_VALUE}

    #Click Create IncomeCode
    Click Element Page    ${INCOMECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s

    #Create IncomeCode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_TH}
    
    #Click Charge a fine
    Click Element Page    ${INCOMECODE_ADD_RDL_CHAGEAMULCT_CHARGEAFINE_LOCATOR}

    # Wait Should Contain Get Element Attribute    ${SETTINGBANKACCOUNT_ADDEDIT_LBL_BANKACCOUNT_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${DEFAULT_DDL_SELECTBANKACCOUNT_TH} 
    ${selectMulctcode}=    Request DB Data Mulctcode
    ${dataMulctcode}=    Set Variable    ${selectMulctcode}[0]
    # @{valArrDataNameTh}=    Set Variable    ${selectMulctcode}[2]
    # @{valArrDataNameEn}=    Set Variable    ${selectMulctcode}[3]
    @{valArrDataNameTh}=    Set Variable    ${selectMulctcode}[4]
    @{valArrDataNameEn}=    Set Variable    ${selectMulctcode}[5]
    # Log To Console    [dataGroupType] : ${dataGroupType}
    # Log To Console    [valArrDataNameTh] : ${valArrDataNameTh}
    # Log To Console    [valArrDataNameEn] : ${valArrDataNameEn}
    Element Text Should Be Value Dropdown    ${INCOMECODE_ADD_DDL_MULCTCODE_LOCATOR}    ${INCOMECODE_ADD_DDL_MULCTCODE_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_MULCTCODE_CLASS_LOCATOR}    ${valArrDataNameTh}
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    Sleep    1s

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${INCOMECODE_CREATE_M11_0_1_2_000_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Generic Test Case Teardown IncomeCode mulctCode and mulctMethod    ${DATA_MULCTMETHOD_NAMETH_VALUE}    ${mulctCodeId}    ${mulctMethodId}