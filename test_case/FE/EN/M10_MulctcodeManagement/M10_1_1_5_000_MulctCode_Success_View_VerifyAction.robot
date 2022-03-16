*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [View] MulctcodeManagement ###################
M10_1_1_5_000_MulctCode_Success_View_VerifyAction [VerifyAction "View Mulctcode"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Mulct Code
    ...    5. click create button
    ...    6. click view button
    ...    7. click delete button
    
   [Setup]    Open Browser To Login Page Super Admin EN
       
    Log To Console    ${\n}=========== [Search] MulctcodeManagement ===============     
    #========== Click Setting Menu MulctcodeManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_EN}    ${MENU_LBL_MASTERMANAGEMENT_MULCTCODEMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_MULCTCODEMANAGEMENT_EN}   ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_HEADER_LOCATOR}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_HEADER_EN}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_LOCATOR}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_EN}
    
    #========== Create MulctCode ======
    Log To Console    ${\n}=========== [Create] MulctcodeManagement ===============
    Create MulctCode input all field data EN 
    Sleep    0.5s

    Log To Console    ${\n}=========== [View] MulctcodeManagement =============== 
    #Click View Mulctcode
    Click Element Page    ${MULCTCODE_BTN_VIEW_LOCATOR}
    Sleep    0.5s
    
    #Mulctcode Details
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBL_MULCTCODEDETAILS_LOCATOR}    ${MULCTCODE_VIEW_LBL_MULCTCODEDETAILS_EN} 
    
    #Mulctcode NameTh
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBL_MULCTCODENAMETH_LOCATOR}    ${MULCTCODE_VIEW_LBL_MULCTCODENAMETH_EN} 
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBD_MULCTCODENAMETH_LOCATOR}    ${MULCTCODE_MULCTCODENAMETH_VALUE} 
    
    #Mulctcode NameEn
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBL_MULCTCODENAMEEN_LOCATOR}    ${MULCTCODE_VIEW_LBL_MULCTCODENAMEEN_EN} 
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBD_MULCTCODENAMEEN_LOCATOR}    ${MULCTCODE_MULCTCODENAMEEN_VALUE} 
    
    #Mulctcode
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBL_MULCTCODE_LOCATOR}    ${MULCTCODE_VIEW_LBL_MULCTCODE_EN} 
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBD_MULCTCODE_LOCATOR}    ${MULCTCODE_MULCTCODE_VALUE} 
    
    #Status
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBL_STATUS_LOCATOR}    ${MULCTCODE_VIEW_LBL_STATUS_EN} 
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBD_STATUS_LOCATOR}    ${MULCTCODE_STATUS_EN_VALUE1} 
    
    #Group Type
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBL_GROUPTYPE_LOCATOR}    ${MULCTCODE_VIEW_LBL_GROUPTYPE_EN} 
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBD_GROUPTYPE_LOCATOR}    ${MULCTCODE_GROUPTYPE_EN_VALUE1} 
    
    #Mulct Method
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBL_MULCTMETHOD_LOCATOR}    ${MULCTCODE_VIEW_LBL_MULCTMETHOD_EN} 
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBD_MULCTMETHOD_LOCATOR}    ${MULCTCODE_MULCTMETHOD_EN_VALUE} 
    
    #Vat.(%)
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBL_VAT_LOCATOR}    ${MULCTCODE_VIEW_LBL_VAT_EN} 
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBD_VAT_LOCATOR}    ${MULCTCODE_VAT_VIEW_VALUE} 
    #Tax.(%)
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBL_TAX_LOCATOR}    ${MULCTCODE_VIEW_LBL_TAX_EN} 
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBD_TAX_LOCATOR}    ${MULCTCODE_TAX_VIEW_VALUE} 
    
    #Remark
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBL_REMARK_LOCATOR}    ${MULCTCODE_VIEW_LBL_REMARK_EN} 
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBD_REMARK_LOCATOR}    ${MULCTCODE_REMARK_VALUE} 

    #================ Verify DB ================    
    Request Verify DB Check Data View Mulctcode    ${MYSQL_TYPE_VIEW_ALLFIELD}    ${MULCTCODE_MULCTCODENAMETH_VALUE}    ${MULCTCODE_MULCTCODENAMEEN_VALUE}    ${MULCTCODE_MULCTCODE_VALUE}    ${MULCTCODE_VAT_VALUE}    ${MULCTCODE_TAX_VALUE}    ${MULCTCODE_REMARK_VALUE}    ${MULCTCODE_STATUSID_VALUE1}    ${MULCTCODE_GROUPTYPEID_VALUE1}    ${mulctMethodId}

Verify Action : click X button   
    #Click X button    
    Click Element Page    ${MULCTCODE_BTN_CLOSE_LOCATOR}

    #NameHader
    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_HEADER_LOCATOR}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_HEADER_EN} 
    
    #NamePage
    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_LOCATOR}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_EN} 

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${MULCTCODE_VIEW_M10_1_1_5_000_SUCCESS_SCREENSHOT}

################### Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown MulctCode EN    ${MULCTCODE_MULCTMETHOD_NAMETH_VALUE}    ${mulctMethodId}

