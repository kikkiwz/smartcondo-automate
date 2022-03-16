*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Delete] MulctcodeManagement ###################
M10_1_1_4_000_MulctCode_Success_Delete_VerifyAction [VerifyAction "Delete MulctCode"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
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

Verify action : click Cancel button
    #Click Delete button
	Click Element Page    ${MULCTCODE_BTN_DELETE_LOCATOR}

    #Click Cancel button
	Click Element Page    ${ALERT_BTN_CANCEL_LOCATOR}

Verify action : click Confirm button
	Log To Console    ${\n}=========== [Delete] MulctcodeManagement =============== 
    ${MulctCode}=    Get Text String    ${MULCTCODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    MulctCode${MulctCode}

	#Click delete button
    Click Delete Data TH    ${MULCTCODE_BTN_DELETE_LOCATOR}    ${MulctCode}
	
	#================ Verify DB ================	
	Request Verify DB Check Data Delete MulctCode    ${MYSQL_TYPE_DELETE_ALLFIELD}    ${MULCTCODE_MULCTCODENAMETH_VALUE}    ${MULCTCODE_MULCTCODENAMEEN_VALUE}    ${MULCTCODE_MULCTCODE_VALUE}    ${MULCTCODE_VAT_VALUE}    ${MULCTCODE_TAX_VALUE}    ${MULCTCODE_REMARK_VALUE}    ${MULCTCODE_STATUSID_VALUE1}    ${MULCTCODE_GROUPTYPEID_VALUE1}    ${mulctMethodId}
    
	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${MULCTCODE_DELETE_M10_1_1_4_000_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser 
