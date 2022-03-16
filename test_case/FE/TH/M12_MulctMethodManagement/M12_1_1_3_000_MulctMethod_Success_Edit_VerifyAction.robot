*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [Edit] MulctMethodManagement ###################
M12_1_1_3_000_MulctMethod_Success_Edit_VerifyAction [VerifyAction "Edit Mulct Method"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Mulct Method
    ...    5. click create button
    ...    6. click edit button
    ...    7. click delete button
    
    [Setup]    Open Browser To Login Page Super Admin
       
    Log To Console    ${\n}=========== [Search] MulctMethodManagement ===============     
    #========== Click Setting Menu MulctMethodManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_TH}    ${MENU_LBL_MASTERMANAGEMENT_MULCTMETHODMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_MULCTMETHODMANAGEMENT_TH}   ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_TH}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_TH}
    
    #========== Create MulctMethod ======
    Log To Console    ${\n}=========== [Create] MulctMethodManagement ===============
    Create MulctMethod input require field data

Verify Action : click save button

    #Edit data
    Edit MulctMethod input all field data

Verify Action : click X button   
    #Click Edit MulctMethod
    Click Element Page    ${MULCTMETHOD_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit MulctMethod
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_EDITMULCTMETHOD_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_EDITMULCTMETHOD_TH}
    
    #Click X button    
    Click Element Page    ${MULCTMETHOD_BTN_CLOSE_LOCATOR}

    #NameHader
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_TH} 
    
    #NamePage
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_TH} 

Verify Action : click cancel button

    #Click Edit MulctMethod
    Click Element Page    ${MULCTMETHOD_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit MulctMethod
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_EDITMULCTMETHOD_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_EDITMULCTMETHOD_TH}
    
    #Click Cancel button
    Click Element Page    ${MULCTMETHOD_ADDEDIT_BTN_CANCEL_LOCATOR}
    
    Sleep    0.5s

    #NameHader
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_TH} 
    
    #NamePage
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_TH} 

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${MULCTMETHOD_EDIT_M12_1_1_3_000_SUCCESS_SCREENSHOT}
    
################### Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown MulctMethod
