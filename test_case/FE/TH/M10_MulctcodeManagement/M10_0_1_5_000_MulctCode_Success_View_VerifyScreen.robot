*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [View] MulctcodeManagement ###################
M10_0_1_5_000_MulctCode_Success_View_VerifyScreen [Verify screen page "View Mulctcode"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Mulct Code
    ...    5. click create button
    ...    6. click view button
    ...    7. click delete button
    
    [Setup]    Open Browser To Login Page Super Admin
       
    Log To Console    ${\n}=========== [Search] MulctcodeManagement ===============     
    #========== Click Setting Menu MulctcodeManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_TH}    ${MENU_LBL_MASTERMANAGEMENT_MULCTCODEMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_MULCTCODEMANAGEMENT_TH}   ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_HEADER_LOCATOR}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_HEADER_TH}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_LOCATOR}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_TH}
    
    #========== Create MulctCode ======
    Log To Console    ${\n}=========== [Create] MulctcodeManagement ===============
    Create MulctCode input all field data 
    Sleep    0.5s

    Log To Console    ${\n}=========== [View] MulctcodeManagement =============== 
    #Click View Mulctcode
    Click Element Page    ${MULCTCODE_BTN_VIEW_LOCATOR}
    Sleep    0.5s
    
    #Mulctcode Details
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBL_MULCTCODEDETAILS_LOCATOR}    ${MULCTCODE_VIEW_LBL_MULCTCODEDETAILS_TH} 
    
    #close button
    Wait Until Contains Element Should Be Visible    ${MULCTCODE_BTN_CLOSE_LOCATOR}
    
    #Mulctcode NameTh
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBL_MULCTCODENAMETH_LOCATOR}    ${MULCTCODE_VIEW_LBL_MULCTCODENAMETH_TH} 
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBD_MULCTCODENAMETH_LOCATOR}    ${MULCTCODE_MULCTCODENAMETH_VALUE} 
    
    #Mulctcode NameEn
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBL_MULCTCODENAMEEN_LOCATOR}    ${MULCTCODE_VIEW_LBL_MULCTCODENAMEEN_TH} 
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBD_MULCTCODENAMEEN_LOCATOR}    ${MULCTCODE_MULCTCODENAMEEN_VALUE} 
    
    #Mulctcode
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBL_MULCTCODE_LOCATOR}    ${MULCTCODE_VIEW_LBL_MULCTCODE_TH} 
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBD_MULCTCODE_LOCATOR}    ${MULCTCODE_MULCTCODE_VALUE} 
    
    #Status
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBL_STATUS_LOCATOR}    ${MULCTCODE_VIEW_LBL_STATUS_TH} 
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBD_STATUS_LOCATOR}    ${MULCTCODE_STATUS_TH_VALUE1} 
    
    #Group Type
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBL_GROUPTYPE_LOCATOR}    ${MULCTCODE_VIEW_LBL_GROUPTYPE_TH} 
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBD_GROUPTYPE_LOCATOR}    ${MULCTCODE_GROUPTYPE_TH_VALUE1} 
    
    #Mulct Method
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBL_MULCTMETHOD_LOCATOR}    ${MULCTCODE_VIEW_LBL_MULCTMETHOD_TH} 
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBD_MULCTMETHOD_LOCATOR}    ${MULCTCODE_MULCTMETHOD_TH_VALUE} 
    
    #Vat.(%)
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBL_VAT_LOCATOR}    ${MULCTCODE_VIEW_LBL_VAT_TH} 
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBD_VAT_LOCATOR}    ${MULCTCODE_VAT_VIEW_VALUE} 
    #Tax.(%)
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBL_TAX_LOCATOR}    ${MULCTCODE_VIEW_LBL_TAX_TH} 
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBD_TAX_LOCATOR}    ${MULCTCODE_TAX_VIEW_VALUE} 
    
    #Remark
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBL_REMARK_LOCATOR}    ${MULCTCODE_VIEW_LBL_REMARK_TH} 
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBD_REMARK_LOCATOR}    ${MULCTCODE_REMARK_VALUE} 

    #Click Close button
    Click Element Page    ${MULCTCODE_BTN_CLOSE_LOCATOR}

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${MULCTCODE_VIEW_M10_0_1_5_000_SUCCESS_SCREENSHOT}

################### Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown MulctCode    ${MULCTCODE_MULCTMETHOD_NAMETH_VALUE}    ${mulctMethodId}


