*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [Create] MulctMethodManagement ###################
M12_0_1_2_000_MulctMethod_Success_Create_VerifyScreen [Verify screen page "Create Mulct Method"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Mulct Method
    ...    5. click create button
    ...    6. click delete button

    [Setup]    Open Browser To Login Page Super Admin
        
    Log To Console    ${\n}=========== [Create] MulctMethodManagement =============== 

    #========== Click Setting Menu MulctMethodManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_TH}    ${MENU_LBL_MASTERMANAGEMENT_MULCTMETHODMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_MULCTMETHODMANAGEMENT_TH}   ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_TH}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_TH}

    #========== Check MulctMethodManagement ======
    #Click Create MulctMethod
    Click Element Page    ${MULCTMETHOD_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create MulctMethod
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_LOCATOR}    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_TH} 

    #close button
    Wait Until Contains Element Should Be Visible    ${MULCTMETHOD_BTN_CLOSE_LOCATOR}
    
    #Mulct Method Name *
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_MULCTMETHODNAME_LOCATOR}    ${MULCTMETHOD_ADD_LBL_MULCTMETHODNAME_TH} 
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_ADD_LBL_MULCTMETHODNAME_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Visible    ${MULCTMETHOD_ADD_INPUT_MULCTMETHODNAME_LOCATOR}
    
    #Status *
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_STATUS_LOCATOR}    ${MULCTMETHOD_ADD_LBL_STATUS_TH} 
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_ADD_LBL_STATUS_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    # Wait Until Contains Element Should Be Enabled    ${MULCTMETHOD_ADD_TXT_STATUS_LOCATOR}
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_ADD_DDL_STATUS_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${MULCTMETHOD_STATUSID_VALUE1}

    #Remark
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_REMARK_LOCATOR}    ${MULCTMETHOD_ADD_LBL_REMARK_TH} 
    Wait Until Contains Element Should Be Enabled    ${MULCTMETHOD_ADD_INPUT_REMARK_LOCATOR}

    #Conditions for the charge of the mulct
    Wait Until Contains Element Text Should Be    ${MULCTMETHO_ADD_LBL_CONDITIONSFORTHECHARGEOFTHEMULCT_LOCATOR}    ${MULCTMETHO_ADD_LBL_CONDITIONSFORTHECHARGEOFTHEMULCT_TH} 

    #Adjustment Rate *
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_ADJUSTMENTRATE_LOCATOR}    ${MULCTMETHOD_ADD_LBL_ADJUSTMENTRATE_TH} 
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_ADD_LBL_ADJUSTMENTRATE_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    # Wait Until Contains Element Should Be Enabled    ${MULCTMETHOD_ADD_TXT_ADJUSTMENTRATE_LOCATOR}
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${MULCTMETHOD_ADJUSTMENTRATE_AMOUNTID_VALUE}

    #Unit Charge *
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_UNITCHARGE_LOCATOR}    ${MULCTMETHOD_ADD_LBL_UNITCHARGE_TH} 
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_ADD_LBL_UNITCHARGE_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    #Per the moment
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_UNITCHARGE_PERTHEMOMENT_LOCATOR}    ${MULCTMETHOD_ADD_LBL_UNITCHARGE_PERTHEMOMENT_TH} 
    #Per day
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_UNITCHARGE_PERDAY_LOCATOR}    ${MULCTMETHOD_ADD_LBL_UNITCHARGE_PERDAY_TH} 
    
    #Calculation Method *
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_CALCULATIONMETHOD_LOCATOR}    ${MULCTMETHOD_ADD_LBL_CALCULATIONMETHOD_TH} 
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_ADD_LBL_CALCULATIONMETHOD_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    #Not roll over
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_CALCULATIONMETHOD_NOPENALTYCHARGE_LOCATOR}    ${MULCTMETHOD_ADD_LBL_CALCULATIONMETHOD_NOPENALTYCHARGE_TH} 
    #Roll over
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_CALCULATIONMETHOD_CHARGEAFINE_LOCATOR}    ${MULCTMETHOD_ADD_LBL_CALCULATIONMETHOD_CHARGEAFINE_TH} 
    
    ############## Table [Header] ############## 
    #Time Unit
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_RESULT_TIMEUNIT_LOCATOR}    ${MULCTMETHOD_ADD_LBL_RESULT_TIMEUNIT_TH}
    #Number of time past the deadline
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_RESULT_NUMBEROFTIMEPASTTHEDEADLINE_LOCATOR}    ${MULCTMETHOD_ADD_LBL_RESULT_NUMBEROFTIMEPASTTHEDEADLINE_TH}
    
    #Amount
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_RESULT_AMOUNT_LOCATOR}    ${MULCTMETHOD_ADD_LBL_RESULT_AMOUNT_TH}    
    #Adjustment Rate * [เปอร์เซ็นต์]
    Select Dropdown    ${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_LOCATOR}    ${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_LIST_LOCATOR}    ${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_CLASS_LOCATOR}    ${MULCTMETHOD_ADJUSTMENTRATE_PERCENT_TH_VALUE}
    Sleep    0.5s
    #Percent
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_RESULT_PERCENT_LOCATOR}    ${MULCTMETHOD_ADD_LBL_RESULT_PERCENT_TH}
    ############## Table [Body] ############## 
    
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${MULCTMETHOD_TIMEUNIT_DAYID_VALUE}
    #Day/Month
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_TIMEUNIT_DAYMONTH_LOCATOR}    ${MULCTMETHOD_ADD_LBL_TIMEUNIT_DAY_TH}
    #Time Unit [เดือน]
    Select Dropdown    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_LOCATOR}    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_LIST_LOCATOR}    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_CLASS_LOCATOR}    ${MULCTMETHOD_TIMEUNIT_MOUTH_TH_VALUE}
    Sleep    0.5s
    
    #Day/Month
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_TIMEUNIT_DAYMONTH_LOCATOR}    ${MULCTMETHOD_ADD_LBL_TIMEUNIT_MONTH_TH}

    Wait Element Visible    ${MULCTMETHOD_ADD_INPUT_NUMBEROFTIMEPASTTHEDEADLINE_LOCATOR}
    Wait Element Visible    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT_LOCATOR}
    
    #+
    Wait Element Visible    ${MULCTMETHOD_ADD_BTN_ADD_LOCATOR} 
    #-
    Wait Element Not Visible    ${MULCTMETHOD_ADD_BTN_DELETE_LOCATOR}

    #txtbox Disabled
    # Wait Should Contain Get Element Attribute    ${MULCTMETHOD_ADD_INPUT_NUMBEROFTIMEPASTTHEDEADLINELOCATOR}    ${ATTRIBUTE_ARIA_DISABLED_DX}    ${TRUE_LOWWER}
    
    #Onwards
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_RESULT_ONWARDS_LOCATOR}    ${MULCTMETHOD_ADD_LBL_RESULT_ONWARDS_TH}
    Wait Element Visible    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT_ONWARDS_LOCATOR}

    #Cancel button
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADDEDIT_BTN_CANCEL_LOCATOR}    ${MULCTMETHOD_ADDEDIT_BTN_CANCEL_TH} 
    #Save button
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADDEDIT_BTN_SAVE_LOCATOR}    ${MULCTMETHOD_ADDEDIT_BTN_SAVE_TH} 

Verify screen : legth 255 and type is varchar in Mulct Method Name
    # maxlength="255"
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_ADD_INPUT_MULCTMETHODNAME_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

Verify screen : legth 255 and type is varchar in Remark
    # maxlength="255"
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_ADD_INPUT_REMARK_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

Verify data list in Status dropdown
    #Click X
    Click Element Page    ${MULCTMETHOD_BTN_CLOSE_LOCATOR}
    Sleep    0.5s
    
    #Click Create MulctMethod
    Click Element Page    ${MULCTMETHOD_BTN_CREATE_LOCATOR}
    Sleep    0.5s

    #Create MulctMethod
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_LOCATOR}    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_TH}
    
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_ADD_DDL_STATUS_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${MULCTMETHOD_STATUSID_VALUE1}

    Element Text Should Be Value Dropdown    ${MULCTMETHOD_ADD_DDL_STATUS_LOCATOR}    ${MULCTMETHOD_ADD_DDL_STATUS_LIST_LOCATOR}    ${MULCTMETHOD_ADD_DDL_STATUS_CLASS_LOCATOR}    ${MULCTMETHOD_ADD_DDL_STATUS_TH_VALUE}
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    Sleep    0.5s

Verify data list in Adjustment Rate dropdown
    
    #Click Create MulctMethod
    Click Element Page    ${MULCTMETHOD_BTN_CREATE_LOCATOR}
    Sleep    0.5s

    #Create MulctMethod
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_LOCATOR}    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_TH}
    
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${MULCTMETHOD_ADJUSTMENTRATE_AMOUNTID_VALUE}

    Element Text Should Be Value Dropdown    ${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_LOCATOR}    ${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_LIST_LOCATOR}    ${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_CLASS_LOCATOR}    ${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_TH_VALUE}
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    Sleep    0.5s

Verify data list in Unit Charge Radiobutton
    #Click Create MulctMethod
    Click Element Page    ${MULCTMETHOD_BTN_CREATE_LOCATOR}
    Sleep    0.5s

    #Create MulctMethod
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_LOCATOR}    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_TH}
    
    #Per the moment
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_ADD_RDL_UNITCHARGE_PERTHEMOMENT_CHECK_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${TRUE_LOWWER}
    
    #Per day
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_ADD_RDL_UNITCHARGE_PERDAY_CHECK_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${FALSE_LOWWER}

Verify data list in Calculation Method Radiobutton
    
    #Not roll over
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_ADD_RDL_CALCULATIONMETHOD_NOPENALTYCHARGE_CHECK_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${TRUE_LOWWER}
    
    #Roll over
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_ADD_RDL_CALCULATIONMETHOD_CHARGEAFINE_CHECK_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${FALSE_LOWWER}

Verify data list in Time Unit dropdown
    #Click X
    Click Element Page    ${MULCTMETHOD_BTN_CLOSE_LOCATOR}
    Sleep    0.5s
    
    #Click Create MulctMethod
    Click Element Page    ${MULCTMETHOD_BTN_CREATE_LOCATOR}
    Sleep    0.5s

    #Create MulctMethod
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_LOCATOR}    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_TH}
    
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${MULCTMETHOD_TIMEUNIT_DAYID_VALUE}

    Element Text Should Be Value Dropdown    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_LOCATOR}    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_LIST_LOCATOR}    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_CLASS_LOCATOR}    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_TH_VALUE}
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    Sleep    0.5s

Verify screen : + Button  

    #Click Create MulctMethod
    Click Element Page    ${MULCTMETHOD_BTN_CREATE_LOCATOR}
    Sleep    0.5s

    #Create MulctMethod
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_LOCATOR}    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_TH}
    
    #Time Unit [เดือน]
    Select Dropdown    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_LOCATOR}    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_LIST_LOCATOR}    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_CLASS_LOCATOR}    ${MULCTMETHOD_TIMEUNIT_MOUTH_TH_VALUE}
    Sleep    0.5s
    
    #Click +
    Click Element Page    ${MULCTMETHOD_ADD_BTN_ADD_LOCATOR}

    #+
    Wait Element Visible    ${MULCTMETHOD_ADD_BTN_ADD_LOCATOR} 
    #-
    Wait Element Visible    ${MULCTMETHOD_ADD_BTN_DELETE_LOCATOR}

    Wait Element Visible    ${MULCTMETHOD_ADD_INPUT_NUMBEROFTIMEPASTTHEDEADLINE_LOCATOR}
    Wait Element Visible    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT_LOCATOR}
    Wait Element Visible    ${MULCTMETHOD_ADD_INPUT_NUMBEROFTIMEPASTTHEDEADLINE2_LOCATOR}
    Wait Element Visible    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT2_LOCATOR}
    
    #Day/Month
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_TIMEUNIT_DAYMONTH_LOCATOR}    ${MULCTMETHOD_ADD_LBL_TIMEUNIT_MONTH_TH}
    #Day/Month
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_TIMEUNIT_DAYMONTH2_LOCATOR}    ${MULCTMETHOD_ADD_LBL_TIMEUNIT_MONTH_TH}
   
    #txtbox Disabled
    # Wait Should Contain Get Element Attribute    ${MULCTMETHOD_ADD_INPUT_NUMBEROFTIMEPASTTHEDEADLINELOCATOR}    ${ATTRIBUTE_ARIA_DISABLED_DX}    ${TRUE_LOWWER}
    
    #Onwards
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_RESULT_ONWARDS_LOCATOR}    ${MULCTMETHOD_ADD_LBL_RESULT_ONWARDS_TH}
    Wait Element Visible    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT_ONWARDS_LOCATOR}

Verify screen : - Button  

    #Click -
    Click Element Page    ${MULCTMETHOD_ADD_BTN_DELETE_LOCATOR}

    #+
    Wait Element Visible    ${MULCTMETHOD_ADD_BTN_ADD_LOCATOR} 
    #-
    Wait Element Not Visible    ${MULCTMETHOD_ADD_BTN_DELETE_LOCATOR}

    Wait Element Visible    ${MULCTMETHOD_ADD_INPUT_NUMBEROFTIMEPASTTHEDEADLINE_LOCATOR}
    Wait Element Visible    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT_LOCATOR}
    Wait Element Not Visible    ${MULCTMETHOD_ADD_INPUT_NUMBEROFTIMEPASTTHEDEADLINE2_LOCATOR}
    Wait Element Not Visible    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT2_LOCATOR}
    
    #Day/Month
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_TIMEUNIT_DAYMONTH_LOCATOR}    ${MULCTMETHOD_ADD_LBL_TIMEUNIT_MONTH_TH}
   
    #txtbox Disabled
    # Wait Should Contain Get Element Attribute    ${MULCTMETHOD_ADD_INPUT_NUMBEROFTIMEPASTTHEDEADLINELOCATOR}    ${ATTRIBUTE_ARIA_DISABLED_DX}    ${TRUE_LOWWER}
    
    #Onwards
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_RESULT_ONWARDS_LOCATOR}    ${MULCTMETHOD_ADD_LBL_RESULT_ONWARDS_TH}
    Wait Element Visible    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT_ONWARDS_LOCATOR}
       
    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${MULCTMETHOD_CREATE_M12_0_1_2_000_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser