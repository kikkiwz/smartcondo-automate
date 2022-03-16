*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [Delete] MulctMethodManagement ###################
M12_0_1_4_000_MulctMethod_Success_Delete_VerifyScreen [Verify screen popup confirm delete ]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Mulct Method
    ...    5. click create button
    ...    6. click delete button
    
    [Setup]    Open Browser To Login Page Super Admin EN
       
    Log To Console    ${\n}=========== [Search] MulctMethodManagement ===============     
    #========== Click Setting Menu MulctMethodManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_EN}    ${MENU_LBL_MASTERMANAGEMENT_MULCTMETHODMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_MULCTMETHODMANAGEMENT_EN}   ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_EN}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_EN}
    
    #========== Create MulctMethod ======
    Log To Console    ${\n}=========== [Create] MulctMethodManagement ===============
    Create MulctMethod input all field data EN
    Sleep    0.5s

    Log To Console    ${\n}=========== [Delete] MulctMethodManagement =============== 
    #Click delete button
    ${name}=    Get Text String    ${MULCTMETHOD_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    MulctMethod${MulctMethod}

    #Click delete button and Check Popup Delete 
    Check Popup Delete EN    ${MULCTMETHOD_BTN_DELETE_LOCATOR}    ${name}

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${MULCTMETHOD_DELETE_M12_0_1_4_000_SUCCESS_SCREENSHOT}

################### Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown MulctMethod EN


