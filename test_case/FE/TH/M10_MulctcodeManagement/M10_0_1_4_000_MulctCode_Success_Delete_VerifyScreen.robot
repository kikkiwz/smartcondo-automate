*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Delete] MulctcodeManagement ###################
M10_0_1_4_000_MulctCode_Success_Delete_VerifyScreen [Verify screen popup confirm delete ]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. main menu MasterSetting
    ...    4. click menu Mulct Code
    ...    5. click create button
    ...    6. click delete button
    
    [Setup]    Open Browser To Login Page Super Admin
       
    Log To Console    ${\n}=========== [Search] MulctcodeManagement ===============     
    #========== Click Setting Menu MulctcodeManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_TH}    ${MENU_LBL_MASTERMANAGEMENT_MULCTCODEMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_MULCTCODEMANAGEMENT_TH}   ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_HEADER_LOCATOR}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_HEADER_TH}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_LOCATOR}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_TH}
    
    #========== Create MulctCode ======
    Log To Console    ${\n}=========== [Create] MulctcodeManagement ===============
    Create MulctCode input all field data 
    Sleep    0.5s

	Log To Console    ${\n}=========== [Delete] MulctcodeManagement =============== 
	#Click delete button
    ${MulctCode}=    Get Text String    ${MULCTCODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    MulctCode${MulctCode}

	#Click delete button and Check Popup Delete 
	Check Popup Delete TH    ${MULCTCODE_BTN_DELETE_LOCATOR}    ${MulctCode}

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${MULCTCODE_DELETE_M10_0_1_4_000_SUCCESS_SCREENSHOT}

################### Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown MulctCode    ${MULCTCODE_MULCTMETHOD_NAMETH_VALUE}    ${mulctMethodId}


