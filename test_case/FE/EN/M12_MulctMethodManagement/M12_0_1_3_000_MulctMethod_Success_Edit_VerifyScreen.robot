*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [Edit] MulctMethodManagement ###################
M12_0_1_3_000_MulctMethod_Success_Edit_VerifyScreen [Verify screen page "Edit Mulct Method"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Mulct Method
    ...    5. click create button
    ...    6. click edit button
    ...    7. click delete button
    
   [Setup]    Open Browser To Login Page Super Admin EN
        
    Log To Console    ${\n}=========== [Create] MulctMethodManagement =============== 

    #========== Click Setting Menu MulctMethodManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_EN}    ${MENU_LBL_MASTERMANAGEMENT_MULCTMETHODMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_MULCTMETHODMANAGEMENT_EN}   ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_EN}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_EN}

    #========== Create MulctMethod ======
    Log To Console    ${\n}=========== [Create] MulctMethodManagement ===============
    Create MulctMethod input require field data EN

    Log To Console    ${\n}=========== [Edit] MulctMethodManagement =============== 
    #Click Edit MulctMethod
    Click Element Page    ${MULCTMETHOD_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit MulctMethod
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_EDITMULCTMETHOD_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_EDITMULCTMETHOD_EN} 
    
    #close button
    Wait Until Contains Element Should Be Visible    ${MULCTMETHOD_BTN_CLOSE_LOCATOR}
    
    #Mulct Method Name *
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_MULCTMETHODNAME_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_MULCTMETHODNAME_EN} 
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_EDIT_LBL_MULCTMETHODNAME_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Visible    ${MULCTMETHOD_EDIT_INPUT_MULCTMETHODNAME_LOCATOR}
    
    #Status *
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_STATUS_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_STATUS_EN} 
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_EDIT_LBL_STATUS_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    # Wait Until Contains Element Should Be Enabled    ${MULCTMETHOD_EDIT_TXT_STATUS_LOCATOR}
    # Wait Should Contain Get Element Attribute    ${MULCTMETHOD_EDIT_DDL_STATUS_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${MULCTMETHOD_STATUSID_VALUE1}

    #Remark
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_REMARK_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_REMARK_EN} 
    Wait Until Contains Element Should Be Enabled    ${MULCTMETHOD_EDIT_INPUT_REMARK_LOCATOR}

    #Conditions for the charge of the mulct
    Wait Until Contains Element Text Should Be    ${MULCTMETHO_ADD_LBL_CONDITIONSFORTHECHARGEOFTHEMULCT_LOCATOR}    ${MULCTMETHO_ADD_LBL_CONDITIONSFORTHECHARGEOFTHEMULCT_EN} 

    #Adjustment Rate *
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_ADJUSTMENTRATE_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_ADJUSTMENTRATE_EN} 
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_EDIT_LBL_ADJUSTMENTRATE_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    # Wait Until Contains Element Should Be Enabled    ${MULCTMETHOD_EDIT_TXT_ADJUSTMENTRATE_LOCATOR}
    # Wait Should Contain Get Element Attribute    ${MULCTMETHOD_EDIT_DDL_ADJUSTMENTRATE_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${MULCTMETHOD_ADJUSTMENTRATE_AMOUNTID_VALUE}

    #Unit Charge *
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_UNITCHARGE_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_UNITCHARGE_EN} 
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_EDIT_LBL_UNITCHARGE_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    #Per the moment
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_UNITCHARGE_PERTHEMOMENT_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_UNITCHARGE_PERTHEMOMENT_EN} 
    #Per day
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_UNITCHARGE_PERDAY_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_UNITCHARGE_PERDAY_EN} 
    
    #Calculation Method *
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_CALCULATIONMETHOD_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_CALCULATIONMETHOD_EN} 
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_EDIT_LBL_CALCULATIONMETHOD_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    #Not roll over
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_CALCULATIONMETHOD_NOPENALTYCHARGE_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_CALCULATIONMETHOD_NOPENALTYCHARGE_EN} 
    #Roll over
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_CALCULATIONMETHOD_CHARGEAFINE_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_CALCULATIONMETHOD_CHARGEAFINE_EN} 
    
    ############## Table [Header] ############## 
    #Time Unit
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_RESULT_TIMEUNIT_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_RESULT_TIMEUNIT_EN}
    #Number of time past the deadline
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_RESULT_NUMBEROFTIMEPASTTHEDEADLINE_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_RESULT_NUMBEROFTIMEPASTTHEDEADLINE_EN}
    
    #Amount
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_RESULT_AMOUNT_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_RESULT_AMOUNT_EN}    
    #Adjustment Rate * [เปอร์เซ็นต์]
    Select Dropdown    ${MULCTMETHOD_EDIT_DDL_ADJUSTMENTRATE_LOCATOR}    ${MULCTMETHOD_EDIT_DDL_ADJUSTMENTRATE_LIST_LOCATOR}    ${MULCTMETHOD_EDIT_DDL_ADJUSTMENTRATE_CLASS_LOCATOR}    ${MULCTMETHOD_ADJUSTMENTRATE_PERCENT_EN_VALUE}
    Sleep    0.5s
    #Percent
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_RESULT_PERCENT_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_RESULT_PERCENT_EN}
    ############## Table [Body] ############## 
    
    # Wait Should Contain Get Element Attribute    ${MULCTMETHOD_EDIT_DDL_TIMEUNIT_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${MULCTMETHOD_TIMEUNIT_DAYID_VALUE}
    #Day/Month
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_TIMEUNIT_DAYMONTH_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_TIMEUNIT_DAY_EN}
    #Time Unit [เดือน]
    Select Dropdown    ${MULCTMETHOD_EDIT_DDL_TIMEUNIT_LOCATOR}    ${MULCTMETHOD_EDIT_DDL_TIMEUNIT_LIST_LOCATOR}    ${MULCTMETHOD_EDIT_DDL_TIMEUNIT_CLASS_LOCATOR}    ${MULCTMETHOD_TIMEUNIT_MOUTH_EN_VALUE}
    Sleep    0.5s
    
    #Day/Month
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_TIMEUNIT_DAYMONTH_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_TIMEUNIT_MONTH_EN}

    Wait Element Visible    ${MULCTMETHOD_EDIT_INPUT_NUMBEROFTIMEPASTTHEDEADLINE_LOCATOR}
    Wait Element Visible    ${MULCTMETHOD_EDIT_INPUT_AMOUNTPERCENT_LOCATOR}
    
    #+
    Wait Element Visible    ${MULCTMETHOD_EDIT_BTN_ADD_LOCATOR} 
    #-
    Wait Element Not Visible    ${MULCTMETHOD_EDIT_BTN_DELETE_LOCATOR}

    #txtbox Disabled
    # Wait Should Contain Get Element Attribute    ${MULCTMETHOD_EDIT_INPUT_NUMBEROFTIMEPASTTHEDEADLINELOCATOR}    ${ATTRIBUTE_ARIA_DISABLED_DX}    ${TRUE_LOWWER}
    
    #Onwards
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_RESULT_ONWARDS_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_RESULT_ONWARDS_EN}
    Wait Element Visible    ${MULCTMETHOD_EDIT_INPUT_AMOUNTPERCENT_ONWARDS_LOCATOR}

    #Cancel button
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADDEDIT_BTN_CANCEL_LOCATOR}    ${MULCTMETHOD_ADDEDIT_BTN_CANCEL_EN} 
    #Save button
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADDEDIT_BTN_SAVE_LOCATOR}    ${MULCTMETHOD_ADDEDIT_BTN_SAVE_EN} 

Verify screen : legth 255 and type is varchar in Mulct Method Name
    # maxlength="255"
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_EDIT_INPUT_MULCTMETHODNAME_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

Verify screen : legth 255 and type is varchar in Remark
    # maxlength="255"
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_EDIT_INPUT_REMARK_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

Verify data list in Status dropdown
    #Click X
    Click Element Page    ${MULCTMETHOD_BTN_CLOSE_LOCATOR}
    Sleep    0.5s
    
    #Click Edit MulctMethod
    Click Element Page    ${MULCTMETHOD_BTN_EDIT_LOCATOR}
    Sleep    0.5s

    #Edit MulctMethod
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_EDITMULCTMETHOD_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_EDITMULCTMETHOD_EN}
    
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_EDIT_DDL_STATUS_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${MULCTMETHOD_STATUSID_VALUE2}

    Element Text Should Be Value Dropdown    ${MULCTMETHOD_EDIT_DDL_STATUS_LOCATOR}    ${MULCTMETHOD_EDIT_DDL_STATUS_LIST_LOCATOR}    ${MULCTMETHOD_EDIT_DDL_STATUS_CLASS_LOCATOR}    ${MULCTMETHOD_EDIT_DDL_STATUS_EN_VALUE}
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    Sleep    0.5s

Verify data list in Adjustment Rate dropdown
    
    #Click Edit MulctMethod
    Click Element Page    ${MULCTMETHOD_BTN_EDIT_LOCATOR}
    Sleep    0.5s

    #Edit MulctMethod
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_EDITMULCTMETHOD_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_EDITMULCTMETHOD_EN}
    
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_EDIT_DDL_ADJUSTMENTRATE_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${MULCTMETHOD_ADJUSTMENTRATE_AMOUNTID_VALUE}

    Element Text Should Be Value Dropdown    ${MULCTMETHOD_EDIT_DDL_ADJUSTMENTRATE_LOCATOR}    ${MULCTMETHOD_EDIT_DDL_ADJUSTMENTRATE_LIST_LOCATOR}    ${MULCTMETHOD_EDIT_DDL_ADJUSTMENTRATE_CLASS_LOCATOR}    ${MULCTMETHOD_EDIT_DDL_ADJUSTMENTRATE_EN_VALUE}
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    Sleep    0.5s

Verify data list in Unit Charge Radiobutton
    #Click Edit MulctMethod
    Click Element Page    ${MULCTMETHOD_BTN_EDIT_LOCATOR}
    Sleep    0.5s

    #Edit MulctMethod
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_EDITMULCTMETHOD_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_EDITMULCTMETHOD_EN}
    
    #Per the moment
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_EDIT_RDL_UNITCHARGE_PERTHEMOMENT_CHECK_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${TRUE_LOWWER}
    
    #Per day
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_EDIT_RDL_UNITCHARGE_PERDAY_CHECK_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${FALSE_LOWWER}

Verify data list in Calculation Method Radiobutton
    
    #Not roll over
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_EDIT_RDL_CALCULATIONMETHOD_NOPENALTYCHARGE_CHECK_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${TRUE_LOWWER}
    
    #Roll over
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_EDIT_RDL_CALCULATIONMETHOD_CHARGEAFINE_CHECK_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${FALSE_LOWWER}

Verify data list in Time Unit dropdown
    #Click X
    Click Element Page    ${MULCTMETHOD_BTN_CLOSE_LOCATOR}
    Sleep    0.5s
    
    #Click Edit MulctMethod
    Click Element Page    ${MULCTMETHOD_BTN_EDIT_LOCATOR}
    Sleep    0.5s

    #Edit MulctMethod
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_EDITMULCTMETHOD_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_EDITMULCTMETHOD_EN}
    
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_EDIT_DDL_TIMEUNIT_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${MULCTMETHOD_TIMEUNIT_DAYID_VALUE}

    Element Text Should Be Value Dropdown    ${MULCTMETHOD_EDIT_DDL_TIMEUNIT_LOCATOR}    ${MULCTMETHOD_EDIT_DDL_TIMEUNIT_LIST_LOCATOR}    ${MULCTMETHOD_EDIT_DDL_TIMEUNIT_CLASS_LOCATOR}    ${MULCTMETHOD_EDIT_DDL_TIMEUNIT_EN_VALUE}
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    Sleep    0.5s

Verify screen : + Button  

    #Click Edit MulctMethod
    Click Element Page    ${MULCTMETHOD_BTN_EDIT_LOCATOR}
    Sleep    0.5s

    #Edit MulctMethod
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_EDITMULCTMETHOD_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_EDITMULCTMETHOD_EN}
    
    #Time Unit [เดือน]
    Select Dropdown    ${MULCTMETHOD_EDIT_DDL_TIMEUNIT_LOCATOR}    ${MULCTMETHOD_EDIT_DDL_TIMEUNIT_LIST_LOCATOR}    ${MULCTMETHOD_EDIT_DDL_TIMEUNIT_CLASS_LOCATOR}    ${MULCTMETHOD_TIMEUNIT_MOUTH_EN_VALUE}
    Sleep    0.5s
    
    #Click +
    Click Element Page    ${MULCTMETHOD_EDIT_BTN_ADD_LOCATOR}

    #+
    Wait Element Visible    ${MULCTMETHOD_EDIT_BTN_ADD_LOCATOR} 
    #-
    Wait Element Visible    ${MULCTMETHOD_EDIT_BTN_DELETE_LOCATOR}

    Wait Element Visible    ${MULCTMETHOD_EDIT_INPUT_NUMBEROFTIMEPASTTHEDEADLINE_LOCATOR}
    Wait Element Visible    ${MULCTMETHOD_EDIT_INPUT_AMOUNTPERCENT_LOCATOR}
    Wait Element Visible    ${MULCTMETHOD_EDIT_INPUT_NUMBEROFTIMEPASTTHEDEADLINE2_LOCATOR}
    Wait Element Visible    ${MULCTMETHOD_EDIT_INPUT_AMOUNTPERCENT2_LOCATOR}
    
    #Day/Month
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_TIMEUNIT_DAYMONTH_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_TIMEUNIT_MONTH_EN}
    #Day/Month
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_TIMEUNIT_DAYMONTH_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_TIMEUNIT_MONTH_EN}
   
    #txtbox Disabled
    # Wait Should Contain Get Element Attribute    ${MULCTMETHOD_EDIT_INPUT_NUMBEROFTIMEPASTTHEDEADLINELOCATOR}    ${ATTRIBUTE_ARIA_DISABLED_DX}    ${TRUE_LOWWER}
    
    #Onwards
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_RESULT_ONWARDS_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_RESULT_ONWARDS_EN}
    Wait Element Visible    ${MULCTMETHOD_EDIT_INPUT_AMOUNTPERCENT_ONWARDS_LOCATOR}

Verify screen : - Button  

    #Click -
    Click Element Page    ${MULCTMETHOD_EDIT_BTN_DELETE_LOCATOR}

    #+
    Wait Element Visible    ${MULCTMETHOD_EDIT_BTN_ADD_LOCATOR} 
    #-
    Wait Element Not Visible    ${MULCTMETHOD_EDIT_BTN_DELETE_LOCATOR}

    Wait Element Visible    ${MULCTMETHOD_EDIT_INPUT_NUMBEROFTIMEPASTTHEDEADLINE_LOCATOR}
    Wait Element Visible    ${MULCTMETHOD_EDIT_INPUT_AMOUNTPERCENT_LOCATOR}
    Wait Element Not Visible    ${MULCTMETHOD_EDIT_INPUT_NUMBEROFTIMEPASTTHEDEADLINE2_LOCATOR}
    Wait Element Not Visible    ${MULCTMETHOD_EDIT_INPUT_AMOUNTPERCENT2_LOCATOR}
    
    #Day/Month
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_TIMEUNIT_DAYMONTH_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_TIMEUNIT_MONTH_EN}
   
    #txtbox Disabled
    # Wait Should Contain Get Element Attribute    ${MULCTMETHOD_EDIT_INPUT_NUMBEROFTIMEPASTTHEDEADLINELOCATOR}    ${ATTRIBUTE_ARIA_DISABLED_DX}    ${TRUE_LOWWER}
    
    #Onwards
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_RESULT_ONWARDS_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_RESULT_ONWARDS_EN}
    Wait Element Visible    ${MULCTMETHOD_EDIT_INPUT_AMOUNTPERCENT_ONWARDS_LOCATOR}

    #Click X
    Click Element Page    ${MULCTMETHOD_BTN_CLOSE_LOCATOR}
    Sleep    0.5s
    
    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${MULCTMETHOD_EDIT_M12_0_1_3_000_SUCCESS_SCREENSHOT}
    
################## Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown MulctMethod EN


