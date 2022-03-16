*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [View] MulctMethodManagement ###################
M12_1_1_5_000_MulctMethod_Success_View_VerifyAction [VerifyAction "View Mulct Method"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Mulct Method
    ...    5. click create button
    ...    6. click view button
    ...    7. click delete button
    
    [Setup]    Open Browser To Login Page Super Admin EN
       
    Log To Console    ${\n}=========== [Search] MulctMethodManagement ===============     
    #========== Click Setting Menu MulctMethodManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_EN}    ${MENU_LBL_MASTERMANAGEMENT_MULCTMETHODMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_MULCTMETHODMANAGEMENT_EN}   ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_EN}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_EN}
    
    #========== Create MulctMethod ======
    Log To Console    ${\n}=========== [Create] MulctMethodManagement ===============
    Create MulctMethod input all field data EN
    Sleep    0.5s

    Log To Console    ${\n}=========== [View] MulctMethodManagement =============== 
    #Click View MulctMethod
    Click Element Page    ${MULCTMETHOD_BTN_VIEW_LOCATOR}
    Sleep    0.5s
    
    #MulctMethod Details
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBL_MULCTMETHODDETAILS_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_MULCTMETHODDETAILS_EN} 
    
    #Mulct Method Name
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBL_MULCTMETHODNAME_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_MULCTMETHODNAME_EN} 
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_MULCTMETHODNAME_LOCATOR}    ${MULCTMETHOD_MULCTMETHODNAME_VALUE} 

    #Status
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBL_STATUS_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_STATUS_EN} 
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_STATUS_LOCATOR}    ${MULCTMETHOD_STATUS_EN_VALUE1} 
    
    #Remark
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBL_REMARK_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_REMARK_EN} 
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_REMARK_LOCATOR}    ${MULCTMETHOD_REMARK_VALUE} 

    #Conditions for the charge of the mulct
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBL_CONDITIONSFORTHECHARGEOFTHEMULCT_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_CONDITIONSFORTHECHARGEOFTHEMULCT_EN} 
    
    #Adjustment Rate
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBL_ADJUSTMENTRATE_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_ADJUSTMENTRATE_EN} 
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_ADJUSTMENTRATE_LOCATOR}    ${MULCTMETHOD_ADJUSTMENTRATE_PERCENT_EN_VALUE} 

    #Unit Charge
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBL_UNITCHARGE_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_UNITCHARGE_EN} 
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_VIEW_RDL_UNITCHARGE_LOCATOR}    ${ATTRIBUTE_NG_REFLECT_MODEL}    ${MULCTMETHOD_UNITCHARGE_PERDAYID_VALUE}
    #Per the moment
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_UNITCHARGE_PERTHEMOMENT_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_UNITCHARGE_PERTHEMOMENT_EN} 
    #Per day
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_UNITCHARGE_PERDAY_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_UNITCHARGE_PERDAY_EN} 

    #Calculation Method
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBL_CALCULATIONMETHOD_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_CALCULATIONMETHOD_EN} 
    Wait Should Contain Get Element Attribute    ${MULCTMETHOD_VIEW_RDL_CALCULATIONMETHOD_LOCATOR}    ${ATTRIBUTE_NG_REFLECT_MODEL}    ${MULCTMETHOD_UNITCHARGE_PERDAYID_VALUE}
    #Per the moment
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_CALCULATIONMETHOD_NOTROLLOVER_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_CALCULATIONMETHOD_NOTROLLOVER_EN} 
    #Per day
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_CALCULATIONMETHOD_ROLLOVER_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_CALCULATIONMETHOD_ROLLOVER_EN} 
    
    ############## Table ############## 
    #Time Unit
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBL_RESULT_TIMEUNIT_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_RESULT_TIMEUNIT_EN} 
    #Number of time past the deadline
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBL_RESULT_NUMBEROFTIMEPASTTHEDEADLINE_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_RESULT_NUMBEROFTIMEPASTTHEDEADLINE_EN} 
    #Amount/Percent
    # Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBL_RESULT_AMOUNT_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_RESULT_AMOUNT_EN} 
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBL_RESULT_PERCENT_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_RESULT_PERCENT_EN} 
    
    ############## body ############## 
    #Time Unit
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_TIMEUNIT1_LOCATOR}    ${MULCTMETHOD_TIMEUNIT_MOUTH_EN_VALUE} 
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_TIMEUNIT2_LOCATOR}    ${MULCTMETHOD_TIMEUNIT_MOUTH_EN_VALUE} 
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_TIMEUNIT3_LOCATOR}    ${MULCTMETHOD_TIMEUNIT_MOUTH_EN_VALUE} 
    #Number of time past the deadline
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_NUMBEROFTIMEPASTTHEDEADLINE1_LOCATOR}    ${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE_VALUE} 
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_NUMBEROFTIMEPASTTHEDEADLINE2_LOCATOR}    ${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE2_VALUE} 
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_NUMBEROFTIMEPASTTHEDEADLINE3_LOCATOR}    ${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE_ONWARDS_VALUE} 
    #Amount/Percent
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_AMOUNTPERCENT1_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT_VALUE} 
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_AMOUNTPERCENT2_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT2_VALUE} 
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBD_AMOUNTPERCENT3_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT3_VALUE} 

    #================ Verify DB ================    
    Request Verify DB Check Data View MulctMethod    ${MYSQL_TYPE_VIEW_ALLFIELD}    ${MULCTMETHOD_MULCTMETHODNAME_VALUE}    ${MULCTMETHOD_REMARK_VALUE}    ${MULCTMETHOD_STATUSID_VALUE1}    ${MULCTMETHOD_ADJUSTMENTRATE_PERCENTID_VALUE}    ${MULCTMETHOD_UNITCHARGE_PERDAYID_VALUE}    ${MULCTMETHOD_CALCULATIONMETHOD_ROLLOVERID_VALUE}    ${MULCTMETHOD_TIMEUNIT_MOUTHID_VALUE}
    
    #================ Verify DB [MulctCondition] ================    
    ${dataMulctCondition}=    Evaluate    [{"timePastDeadline":"${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE_VALUE}","dateToFlag":0,"total":"${MULCTMETHOD_AMOUNTPERCENT_VALUE}"},{"timePastDeadline":"${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE2_VALUE}","dateToFlag":0,"total":"${MULCTMETHOD_AMOUNTPERCENT2_VALUE}"},{"timePastDeadline":"${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE_ONWARDS_VALUE}","dateToFlag":1,"total":"${MULCTMETHOD_AMOUNTPERCENT3_VALUE}"}]
    Request Verify DB Check Data MulctCondition Account    ${MYSQL_TYPE_CREATE_ALLFIELD}    ${mulctMethodId}    ${NONE}    ${NONE}    ${dataMulctCondition}

Verify Action : click X button   
    #Click X button    
    Click Element Page    ${MULCTMETHOD_BTN_CLOSE_LOCATOR}

    #NameHader
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_EN} 
    
    #NamePage
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_EN} 

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${MULCTMETHOD_VIEW_M12_1_1_5_000_SUCCESS_SCREENSHOT}

################### Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown MulctMethod EN

