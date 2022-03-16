*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Delete] IncomeCodeManagement ###################
M11_0_1_4_000_IncomeCode_Success_Delete_VerifyScreen [Verify screen popup confirm delete ]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
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

	Log To Console    ${\n}=========== [Delete] IncomeCodeManagement =============== 
	#Click delete button
    ${IncomeCode}=    Get Text String    ${INCOMECODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    IncomeCode${IncomeCode}

	#Click delete button and Check Popup Delete 
	Check Popup Delete TH    ${INCOMECODE_BTN_DELETE_LOCATOR}    ${IncomeCode}

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${INCOMECODE_DELETE_M11_0_1_4_000_SUCCESS_SCREENSHOT}

################### Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown IncomeCode    ${DATA_MULCTMETHOD_NAMETH_VALUE}    ${mulctCodeId}    ${mulctMethodId}


