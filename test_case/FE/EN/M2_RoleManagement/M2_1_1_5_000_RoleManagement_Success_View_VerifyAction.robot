*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Search] Role Management ###################
M2_1_1_5_000_RoleManagement_Success_View_VerifyAction [Verify Action "Role Management"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click User Account

    [Setup]    Open Browser To Login Page Super Admin EN
   	
    #========== Click Setting Menu Role Management ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_ROLEMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_ROLEMANAGEMENT_EN}    ${MENU_LBL_SETTING_ROLEMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_ROLEMANAGEMENT_EN}   ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_HEADER_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_HEADER_EN}    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_EN}
	
	

Verify Action : click X button

	#Click Add
	Click Element Page  ${ROLEMANAGEMENTINFORMATION_ICON_VIEW_LOCATOR}
	Sleep    1s


	#Label: Role Management
	Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_VIEWROLE_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_VIEWROLE_EN}

	#Close
	Click Element Page    ${ROLEMANAGEMENTINFORMATION_BTN_CLOSE_LOCATOR}




Verify Action : Verify API Onload and mapping data
	Create Role input all field data No Check Table EN
	Sleep    1s
	#Search Role Management
	Wait Until Contains Input Text    ${ROLEMANAGEMENTINFORMATION_SEARCH_TXT_ROLEMANAGEMENT_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}
	# Click Search
	Click Element Page  ${ROLEMANAGEMENTINFORMATION_BTN_SEARCH_LOCATOR}
	Sleep    0.5s
	
	#Click View
	Sleep    3s
	Click Element Page    ${ROLEMANAGEMENTINFORMATION_ICON_VIEW_LOCATOR}

	#================ Verify DB ================
	Request Verify DB Check Data View Role Management    ${MYSQL_TYPE_VIEW_ALLFIELD}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}


	Click Element Page  ${ROLEMANAGEMENTINFORMATION_BTN_CLOSE_LOCATOR}
	#Click delete
	Click Element Page  ${ROLEMANAGEMENTINFORMATION_ICON_DELETE_LOCATOR}
	#Click Confirm
	Click Element Page  ${ALERT_BTN_CONFIRM_LOCATOR}


	# capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${ROLEMANAGEMENTINFORMATION_VIEW_M2_1_1_5_000_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser 
	





