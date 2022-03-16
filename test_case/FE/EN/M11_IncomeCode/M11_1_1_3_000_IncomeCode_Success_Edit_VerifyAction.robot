*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [Edit] IncomeCodeManagement ###################
M11_1_1_3_000_IncomeCode_Success_Edit_VerifyAction [VerifyAction "Edit Income Code"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Income Code
    ...    5. click create button
    ...    6. click edit button
    ...    7. click delete button
    
    [Setup]    Open Browser To Login Page Super Admin EN
       
    Log To Console    ${\n}=========== [Search] IncomeCodeManagement ===============     
    #========== Click Setting Menu IncomeCodeManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_EN}    ${MENU_LBL_MASTERMANAGEMENT_INCOMECODEMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_INCOMECODEMANAGEMENT_EN}   ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_HEADER_LOCATOR}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_HEADER_EN}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_LOCATOR}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_EN}
    
    #========== Create IncomeCode ======
    Log To Console    ${\n}=========== [Create] IncomeCodeManagement ===============
    Create IncomeCode input require field data EN

Verify Action : click save button

    #Edit data
    Edit IncomeCode input all field data EN

Verify Action : click X button   
    #Click Edit IncomeCode
    Click Element Page    ${INCOMECODE_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit Incomecode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_EDITINCOMECODE_LOCATOR}    ${INCOMECODE_EDIT_LBL_EDITINCOMECODE_EN} 
    
    #Click X button    
    Click Element Page    ${INCOMECODE_BTN_CLOSE_LOCATOR}

    #NameHader
    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_HEADER_LOCATOR}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_HEADER_EN} 
    
    #NamePage
    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_LOCATOR}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_EN} 

Verify Action : click cancel button

    #Click Edit IncomeCode
    Click Element Page    ${INCOMECODE_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit Incomecode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_EDITINCOMECODE_LOCATOR}    ${INCOMECODE_EDIT_LBL_EDITINCOMECODE_EN} 
    
    #Click Cancel button
    Click Element Page    ${INCOMECODE_ADDEDIT_BTN_CANCEL_LOCATOR}

    #NameHader
    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_HEADER_LOCATOR}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_HEADER_EN} 
    
    #NamePage
    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_LOCATOR}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_EN} 

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${INCOMECODE_EDIT_M11_1_1_3_000_SUCCESS_SCREENSHOT}
    
################### Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown IncomeCode EN    ${DATA_MULCTMETHOD_NAMETH_VALUE}    ${mulctCodeId}    ${mulctMethodId}
