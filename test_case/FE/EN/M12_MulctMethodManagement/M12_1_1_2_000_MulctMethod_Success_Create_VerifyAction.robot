*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [Create] MulctMethodManagement ###################
M12_1_1_2_000_MulctMethod_Success_Create_VerifyAction [VerifyAction "Create Mulct Method"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Mulct Method
    ...    5. click create button
    ...    6. click delete button
    
    [Setup]    Open Browser To Login Page Super Admin EN
        
    Log To Console    ${\n}=========== [Create] MulctMethodManagement =============== 

    #========== Click Setting Menu MulctMethodManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_EN}    ${MENU_LBL_MASTERMANAGEMENT_MULCTMETHODMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_MULCTMETHODMANAGEMENT_EN}   ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_EN}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_EN}

Verify Action : click Create Mulctcode [input data all textbox ,selete data all dropdown, radiobutton.]

    #Create data
    Create MulctMethod input require field data EN

    Generic Test Case Teardown MulctMethod not Close Browser EN

Verify Action : click Create Mulctcode [please all fill and select data.]

    # Create data
    Create MulctMethod input all field data EN

Verify Action : click X button   
    #Click Create Mulctcode
    Click Element Page    ${MULCTMETHOD_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create MulctMethod
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_LOCATOR}    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_EN}

    #Click X button    
    Click Element Page    ${MULCTMETHOD_BTN_CLOSE_LOCATOR}

    #NameHader
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_EN} 
    
    #NamePage
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_EN} 

Verify Action : click cancel button

    #Click Create Mulctcode
    Click Element Page    ${MULCTMETHOD_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create MulctMethod
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_LOCATOR}    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_EN}

    #Click Cancel button
    Click Element Page    ${MULCTMETHOD_ADDEDIT_BTN_CANCEL_LOCATOR}

    #NameHader
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_EN} 
    
    #NamePage
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_EN} 

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${MULCTMETHOD_CREATE_M12_1_1_2_000_SUCCESS_SCREENSHOT}
    
################### Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown MulctMethod EN

