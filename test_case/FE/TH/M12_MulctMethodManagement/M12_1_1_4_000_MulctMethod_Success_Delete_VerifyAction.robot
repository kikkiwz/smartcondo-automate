*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [Delete] MulctMethodManagement ###################
M12_1_1_4_000_MulctMethod_Success_Delete_VerifyAction [VerifyAction "Delete Mulct Method"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    3. main menu MasterSetting
    ...    4. click menu Mulct Method
    ...    5. click create button
    ...    6. click delete button
    
   [Setup]    Open Browser To Login Page Super Admin
       
    Log To Console    ${\n}=========== [Search] MulctMethodManagement ===============     
    #========== Click Setting Menu MulctMethodManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_TH}    ${MENU_LBL_MASTERMANAGEMENT_MULCTMETHODMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_MULCTMETHODMANAGEMENT_TH}   ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_TH}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_TH}
    
    #========== Create MulctMethod ======
    Log To Console    ${\n}=========== [Create] MulctMethodManagement ===============
    Create MulctMethod input all field data 
    Sleep    0.5s

Verify action : click Cancel button
    #Click Delete button
    Click Element Page    ${MULCTMETHOD_BTN_DELETE_LOCATOR}

    #Click Cancel button
    Click Element Page    ${ALERT_BTN_CANCEL_LOCATOR}

Verify action : click Confirm button
    Log To Console    ${\n}=========== [Delete] MulctMethodManagement =============== 
    ${name}=    Get Text String    ${MULCTMETHOD_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    MulctMethod${MulctMethod}

    #Click delete button
    Click Delete Data TH    ${MULCTMETHOD_BTN_DELETE_LOCATOR}    ${name}
    
    #================ Verify DB ================    
    Request Verify DB Check Data Delete MulctMethod    ${MYSQL_TYPE_DELETE_ALLFIELD}    ${MULCTMETHOD_MULCTMETHODNAME_VALUE}    ${MULCTMETHOD_REMARK_VALUE}    ${MULCTMETHOD_STATUSID_VALUE1}    ${MULCTMETHOD_ADJUSTMENTRATE_PERCENTID_VALUE}    ${MULCTMETHOD_UNITCHARGE_PERDAYID_VALUE}    ${MULCTMETHOD_CALCULATIONMETHOD_ROLLOVERID_VALUE}    ${MULCTMETHOD_TIMEUNIT_MOUTHID_VALUE}

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${MULCTMETHOD_DELETE_M12_1_1_4_000_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser