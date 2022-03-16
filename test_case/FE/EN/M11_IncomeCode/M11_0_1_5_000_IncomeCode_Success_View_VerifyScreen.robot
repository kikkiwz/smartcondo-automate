*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot

*** Test Cases ***
################### [View] IncomeCodeManagement ###################
M11_0_1_5_000_IncomeCode_Success_View_VerifyScreen [Verify screen page "View IncomeCode"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Income Code
    ...    5. click create button
    ...    6. click view button
    ...    7. click delete button
    
    [Setup]    Open Browser To Login Page Super Admin EN
       
    Log To Console    ${\n}=========== [Search] IncomeCodeManagement ===============     
    #========== Click Setting Menu IncomeCodeManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_EN}    ${MENU_LBL_MASTERMANAGEMENT_INCOMECODEMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_INCOMECODEMANAGEMENT_EN}   ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_HEADER_LOCATOR}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_HEADER_EN}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_LOCATOR}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_EN}
    
    #========== Create IncomeCode ======
    Log To Console    ${\n}=========== [Create] IncomeCodeManagement ===============
    Create IncomeCode input all field data EN 
    Sleep    0.5s

    Log To Console    ${\n}=========== [View] IncomeCodeManagement =============== 
    #Click View IncomeCode
    Click Element Page    ${INCOMECODE_BTN_VIEW_LOCATOR}
    Sleep    0.5s
    
    #Incomecode Details
    Wait Until Contains Element Text Should Be    ${INCOMECODE_VIEW_LBL_INCOMECODEDETAILS_LOCATOR}    ${INCOMECODE_VIEW_LBL_INCOMECODEDETAILS_EN} 
    
    #close button
    Wait Until Contains Element Should Be Visible    ${INCOMECODE_BTN_CLOSE_LOCATOR}
    
    #IncomeCode NameTh
    Wait Until Contains Element Text Should Be    ${INCOMECODE_VIEW_LBL_INCOMECODENAMETH_LOCATOR}    ${INCOMECODE_VIEW_LBL_INCOMECODENAMETH_EN} 
    Wait Until Contains Element Text Should Be    ${INCOMECODE_VIEW_LBD_INCOMECODENAMETH_LOCATOR}    ${INCOMECODE_INCOMECODENAMETH_VALUE} 
    
    #IncomeCode NameEn
    Wait Until Contains Element Text Should Be    ${INCOMECODE_VIEW_LBL_INCOMECODENAMEEN_LOCATOR}    ${INCOMECODE_VIEW_LBL_INCOMECODENAMEEN_EN} 
    Wait Until Contains Element Text Should Be    ${INCOMECODE_VIEW_LBD_INCOMECODENAMEEN_LOCATOR}    ${INCOMECODE_INCOMECODENAMEEN_VALUE} 
    
    #IncomeCode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_VIEW_LBL_INCOMECODE_LOCATOR}    ${INCOMECODE_VIEW_LBL_INCOMECODE_EN} 
    Wait Until Contains Element Text Should Be    ${INCOMECODE_VIEW_LBD_INCOMECODE_LOCATOR}    ${INCOMECODE_INCOMECODE_VALUE} 
    
    #Status
    Wait Until Contains Element Text Should Be    ${INCOMECODE_VIEW_LBL_STATUS_LOCATOR}    ${INCOMECODE_VIEW_LBL_STATUS_EN} 
    Wait Until Contains Element Text Should Be    ${INCOMECODE_VIEW_LBD_STATUS_LOCATOR}    ${INCOMECODE_STATUS_EN_VALUE1} 
    
    #Group Type
    Wait Until Contains Element Text Should Be    ${INCOMECODE_VIEW_LBL_GROUPTYPE_LOCATOR}    ${INCOMECODE_VIEW_LBL_GROUPTYPE_EN} 
    Wait Until Contains Element Text Should Be    ${INCOMECODE_VIEW_LBD_GROUPTYPE_LOCATOR}    ${INCOMECODE_GROUPTYPE_EN_VALUE1} 
    
    #Price Per Unit
    Wait Until Contains Element Text Should Be    ${INCOMECODE_VIEW_LBL_PRICEPERUNIT_LOCATOR}    ${INCOMECODE_VIEW_LBL_PRICEPERUNIT_EN} 
    Wait Until Contains Element Text Should Be    ${INCOMECODE_VIEW_LBD_PRICEPERUNIT_LOCATOR}    ${INCOMECODE_PRICEPERUNIT_VIEW_VALUE} 

    #Calculation Type (every specified month)
    Wait Until Contains Element Text Should Be    ${INCOMECODE_VIEW_LBL_GROUPTYPE_LOCATOR}    ${INCOMECODE_VIEW_LBL_GROUPTYPE_EN} 
    Wait Until Contains Element Text Should Be    ${INCOMECODE_VIEW_LBD_GROUPTYPE_LOCATOR}    ${INCOMECODE_GROUPTYPE_EN_VALUE1} 

    #Payment Order 
    Wait Until Contains Element Text Should Be    ${INCOMECODE_VIEW_LBL_PAYMENTORDER_LOCATOR}    ${INCOMECODE_VIEW_LBL_PAYMENTORDER_EN} 
    Wait Until Contains Element Text Should Be    ${INCOMECODE_VIEW_LBD_PAYMENTORDER_LOCATOR}    ${INCOMECODE_PAYMENTORDER_VALUE} 

    #Vat.(%)
    Wait Until Contains Element Text Should Be    ${INCOMECODE_VIEW_LBL_VAT_LOCATOR}    ${INCOMECODE_VIEW_LBL_VAT_EN} 
    Wait Until Contains Element Text Should Be    ${INCOMECODE_VIEW_LBD_VAT_LOCATOR}    ${INCOMECODE_VAT_VIEW_VALUE} 

    #Tax.(%)
    Wait Until Contains Element Text Should Be    ${INCOMECODE_VIEW_LBL_TAX_LOCATOR}    ${INCOMECODE_VIEW_LBL_TAX_EN} 
    Wait Until Contains Element Text Should Be    ${INCOMECODE_VIEW_LBD_TAX_LOCATOR}    ${INCOMECODE_TAX_VIEW_VALUE} 

    #Charge a mulct
    Wait Until Contains Element Text Should Be    ${INCOMECODE_VIEW_LBL_CHARGEAMULCT_LOCATOR}    ${INCOMECODE_VIEW_LBL_CHARGEAMULCT_EN} 
    Wait Until Contains Element Text Should Be    ${INCOMECODE_VIEW_LBD_CHARGEAMULCT_LOCATOR}    ${INCOMECODE_CHARGEAMULCT_NOPENALTYCHARGE_EN_VALUE} 
    
    #Remark
    Wait Until Contains Element Text Should Be    ${INCOMECODE_VIEW_LBL_REMARK_LOCATOR}    ${INCOMECODE_VIEW_LBL_REMARK_EN} 
    Wait Until Contains Element Text Should Be    ${INCOMECODE_VIEW_LBD_REMARK_LOCATOR}    ${INCOMECODE_REMARK_VALUE} 

    #Click Close button
    Click Element Page    ${INCOMECODE_BTN_CLOSE_LOCATOR}

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${INCOMECODE_VIEW_M11_0_1_5_000_SUCCESS_SCREENSHOT}

################### Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown IncomeCode EN    ${DATA_MULCTMETHOD_NAMETH_VALUE}    ${mulctCodeId}    ${mulctMethodId}

