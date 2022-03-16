*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [Edit] MulctcodeManagement ###################
M10_1_1_3_000_MulctCode_Success_Edit_VerifyAction [VerifyAction "Edit Mulctcode"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Mulct Code
    ...    5. click create button
    ...    6. click edit button
    ...    7. click delete button
    
   [Setup]    Open Browser To Login Page Super Admin EN
       
    Log To Console    ${\n}=========== [Search] MulctcodeManagement ===============     
    #========== Click Setting Menu MulctcodeManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_EN}    ${MENU_LBL_MASTERMANAGEMENT_MULCTCODEMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_MULCTCODEMANAGEMENT_EN}   ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_HEADER_LOCATOR}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_HEADER_EN}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_LOCATOR}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_EN}
    
    #========== Create MulctCode ======
    Log To Console    ${\n}=========== [Create] MulctcodeManagement ===============
    Create MulctCode input require field data EN

Verify Action : click save button

    #Edit data
    Edit MulctCode input all field data EN

Verify Action : click X button   
    #Click Edit MulctCode
    Click Element Page    ${MULCTCODE_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit Mulctcode
    Wait Until Contains Element Text Should Be    ${MULCTCODE_EDIT_LBL_EDITMULCTCODE_LOCATOR}    ${MULCTCODE_EDIT_LBL_EDITMULCTCODE_EN} 
    
    #Click X button    
    Click Element Page    ${MULCTCODE_BTN_CLOSE_LOCATOR}

    #NameHader
    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_HEADER_LOCATOR}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_HEADER_EN} 
    
    #NamePage
    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_LOCATOR}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_EN} 

Verify Action : click cancel button

    #Click Edit MulctCode
    Click Element Page    ${MULCTCODE_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit Mulctcode
    Wait Until Contains Element Text Should Be    ${MULCTCODE_EDIT_LBL_EDITMULCTCODE_LOCATOR}    ${MULCTCODE_EDIT_LBL_EDITMULCTCODE_EN} 
    
    #Click Cancel button
    Click Element Page    ${MULCTCODE_ADDEDIT_BTN_CANCEL_LOCATOR}

    #NameHader
    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_HEADER_LOCATOR}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_HEADER_EN} 
    
    #NamePage
    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_LOCATOR}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_EN} 

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${MULCTCODE_EDIT_M10_1_1_3_000_SUCCESS_SCREENSHOT}
    
################### Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown MulctCode EN    ${MULCTCODE_MULCTMETHOD_NAMETH_VALUE}    ${mulctMethodId}
 
