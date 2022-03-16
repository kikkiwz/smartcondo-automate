*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot

*** Test Cases ***
################### [View] MulctMethodManagement ###################
M12_0_1_5_000_MulctMethod_Success_View_VerifyScreen [Verify screen page "View Mulct Method"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Mulct Method
    ...    5. click create button
    ...    6. click view button
    ...    7. click delete button
    
    [Setup]    Open Browser To Login Page Super Admin
       
    Log To Console    ${\n}=========== [Search] MulctMethodManagement ===============     
    #========== Click Setting Menu MulctMethodManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_TH}    ${MENU_LBL_MASTERMANAGEMENT_MULCTMETHODMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_MULCTMETHODMANAGEMENT_TH}   ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_TH}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_TH}
    
    #========== Create MulctMethod ======
    Log To Console    ${\n}=========== [Create] MulctMethodManagement ===============
    Create MulctMethod input all field data 
    Sleep    0.5s

    Log To Console    ${\n}=========== [View] MulctMethodManagement =============== 
    #Click View MulctMethod
    Click Element Page    ${MULCTMETHOD_BTN_VIEW_LOCATOR}
    Sleep    0.5s
    
    #MulctMethod Details
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBL_MULCTMETHODDETAILS_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_MULCTMETHODDETAILS_TH} 
    
    #close button
    Wait Until Contains Element Should Be Visible    ${MULCTMETHOD_BTN_CLOSE_LOCATOR}
    
    #Mulct Method Name
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBL_MULCTMETHODNAME_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_MULCTMETHODNAME_TH} 
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_MULCTMETHODNAME_LOCATOR}    ${MULCTMETHOD_MULCTMETHODNAME_VALUE} 

    #Status
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBL_STATUS_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_STATUS_TH} 
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_STATUS_LOCATOR}    ${MULCTMETHOD_STATUS_TH_VALUE1} 
    
    #Remark
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBL_REMARK_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_REMARK_TH} 
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_REMARK_LOCATOR}    ${MULCTMETHOD_REMARK_VALUE} 

    #Conditions for the charge of the mulct
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBL_CONDITIONSFORTHECHARGEOFTHEMULCT_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_CONDITIONSFORTHECHARGEOFTHEMULCT_TH} 
    
    #Adjustment Rate
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBL_ADJUSTMENTRATE_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_ADJUSTMENTRATE_TH} 
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_ADJUSTMENTRATE_LOCATOR}    ${MULCTMETHOD_ADJUSTMENTRATE_PERCENT_TH_VALUE} 

    #Unit Charge
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBL_UNITCHARGE_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_UNITCHARGE_TH} 
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_VIEW_RDL_UNITCHARGE_LOCATOR}    ${ATTRIBUTE_NG_REFLECT_MODEL}    ${MULCTMETHOD_UNITCHARGE_PERDAYID_VALUE}
    #Per the moment
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_UNITCHARGE_PERTHEMOMENT_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_UNITCHARGE_PERTHEMOMENT_TH} 
    #Per day
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_UNITCHARGE_PERDAY_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_UNITCHARGE_PERDAY_TH} 

    #Calculation Method
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBL_CALCULATIONMETHOD_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_CALCULATIONMETHOD_TH} 
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_VIEW_RDL_CALCULATIONMETHOD_LOCATOR}    ${ATTRIBUTE_NG_REFLECT_MODEL}    ${MULCTMETHOD_UNITCHARGE_PERDAYID_VALUE}
    #Per the moment
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_CALCULATIONMETHOD_NOTROLLOVER_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_CALCULATIONMETHOD_NOTROLLOVER_TH} 
    #Per day
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_CALCULATIONMETHOD_ROLLOVER_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_CALCULATIONMETHOD_ROLLOVER_TH} 
    
    ############## Table ############## 
    #Time Unit
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBL_RESULT_TIMEUNIT_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_RESULT_TIMEUNIT_TH} 
    #Number of time past the deadline
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBL_RESULT_NUMBEROFTIMEPASTTHEDEADLINE_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_RESULT_NUMBEROFTIMEPASTTHEDEADLINE_TH} 
    #Amount/Percent
    # Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBL_RESULT_AMOUNT_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_RESULT_AMOUNT_TH} 
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBL_RESULT_PERCENT_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_RESULT_PERCENT_TH} 
    
    ############## body ############## 
    #Time Unit
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_TIMEUNIT1_LOCATOR}    ${MULCTMETHOD_TIMEUNIT_MOUTH_TH_VALUE} 
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_TIMEUNIT2_LOCATOR}    ${MULCTMETHOD_TIMEUNIT_MOUTH_TH_VALUE} 
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_TIMEUNIT3_LOCATOR}    ${MULCTMETHOD_TIMEUNIT_MOUTH_TH_VALUE} 
    #Number of time past the deadline
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_NUMBEROFTIMEPASTTHEDEADLINE1_LOCATOR}    ${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE_VALUE} 
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_NUMBEROFTIMEPASTTHEDEADLINE2_LOCATOR}    ${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE2_VALUE} 
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_NUMBEROFTIMEPASTTHEDEADLINE3_LOCATOR}    ${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE_ONWARDS_VALUE} 
    #Amount/Percent
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_AMOUNTPERCENT1_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT_VALUE} 
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_AMOUNTPERCENT2_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT2_VALUE} 
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_AMOUNTPERCENT3_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT3_VALUE} 

    #Click Close button
    Click Element Page    ${MULCTMETHOD_BTN_CLOSE_LOCATOR}

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${MULCTMETHOD_VIEW_M12_0_1_5_000_SUCCESS_SCREENSHOT}

################### Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown MulctMethod

