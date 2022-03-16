*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Search] Role Management ###################
M2_1_1_2_000_RoleManagement_Success_Create_VerifyAPIOnloadAndMappingData [Verify API Onload "Role Management"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click User Account

    [Setup]    Open Browser To Login Page Super Admin
   	
    #========== Click Setting Menu Role Management ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_ROLEMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_ROLEMANAGEMENT_TH}    ${MENU_LBL_SETTING_ROLEMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_ROLEMANAGEMENT_TH}   ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_HEADER_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_HEADER_TH}    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_TH}
	
	# Create Role input all field data Check Table

Verify API Onload and mapping data
	#================ Check Value Table ================
	Check Table Role Management


	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${ROLEMANAGEMENTINFORMATION_CREATE_M2_1_1_2_000_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser 