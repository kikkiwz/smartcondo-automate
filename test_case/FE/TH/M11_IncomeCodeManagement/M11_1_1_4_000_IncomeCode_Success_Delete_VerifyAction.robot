*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Delete] IncomeCodeManagement ###################
M11_1_1_4_000_IncomeCode_Success_Delete_VerifyAction [VerifyAction "Delete Income Code"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
    ...    3. main menu MasterSetting
    ...    4. click menu Income Code
    ...    5. click create button
    ...    6. click delete button
    
   [Setup]    Open Browser To Login Page Super Admin
       
    Log To Console    ${\n}=========== [Search] IncomeCodeManagement ===============     
    #========== Click Setting Menu IncomeCodeManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_TH}    ${MENU_LBL_MASTERMANAGEMENT_INCOMECODEMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_INCOMECODEMANAGEMENT_TH}   ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_HEADER_LOCATOR}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_HEADER_TH}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_LOCATOR}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_TH}
    
    #========== Create IncomeCode ======
    Log To Console    ${\n}=========== [Create] IncomeCodeManagement ===============
    Create IncomeCode input all field data 
    Sleep    0.5s

Verify action : click Cancel button
    #Click Delete button
	Click Element Page    ${INCOMECODE_BTN_DELETE_LOCATOR}

    #Click Cancel button
	Click Element Page    ${ALERT_BTN_CANCEL_LOCATOR}

Verify action : click Confirm button
	Log To Console    ${\n}=========== [Delete] IncomeCodeManagement =============== 
    ${IncomeCode}=    Get Text String    ${INCOMECODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    IncomeCode${IncomeCode}

	#Click delete button
    Click Delete Data TH    ${INCOMECODE_BTN_DELETE_LOCATOR}    ${IncomeCode}
	
	#================ Verify DB ================	
	Request Verify DB Check Data Delete IncomeCode    ${MYSQL_TYPE_DELETE_ALLFIELD}    ${INCOMECODE_INCOMECODENAMETH_VALUE}    ${INCOMECODE_INCOMECODENAMEEN_VALUE}    ${INCOMECODE_INCOMECODE_VALUE}    ${INCOMECODE_VAT_VALUE}    ${INCOMECODE_TAX_VALUE}    ${INCOMECODE_REMARK_VALUE}    ${INCOMECODE_STATUSID_VALUE1}    ${INCOMECODE_GROUPTYPE_ID_VALUE1}    ${NONE}    ${INCOMECODE_CALCULATIONMETHOD_ID_VALUE1}    ${INCOMECODE_PRICEPERUNIT_VALUE}    ${NONE}    ${NONE}    ${DATA_MULCTCODE_INDEX_VALUE}

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${INCOMECODE_DELETE_M11_1_1_4_000_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Generic Test Case Teardown IncomeCode mulctCode and mulctMethod    ${DATA_MULCTMETHOD_NAMETH_VALUE}    ${mulctCodeId}    ${mulctMethodId}
