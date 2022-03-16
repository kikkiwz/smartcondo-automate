*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Search] Role Management ###################
M2_1_0_5_000_RoleManagement_Success_View_VerifyScreen [Verify screen page "Role Management"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click User Account

    [Setup]    Open Browser To Login Page Super Admin
   	
    #========== Click Setting Menu Role Management ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_ROLEMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_ROLEMANAGEMENT_TH}    ${MENU_LBL_SETTING_ROLEMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_ROLEMANAGEMENT_TH}   ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_HEADER_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_HEADER_TH}    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_TH}
	


Verify screen page View Role

	Click Element Page  ${ROLEMANAGEMENTINFORMATION_ICON_VIEW_LOCATOR}
	Sleep    1s


	#Label: Role Management
	Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_VIEWROLE_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_VIEWROLE_TH}

	#Close
	Wait Until Contains Element Should Be Enabled    ${ROLEMANAGEMENTINFORMATION_BTN_CLOSE_LOCATOR}

	# Role Name*
	Wait Until Contains Get Text Split String Join    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_ROLENAME_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_ROLENAME_TH} 
	Wait Until Contains Element Should Be Visible    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_TXT_ROLENAME_LOCATOR}


	#Permission*
	Wait Until Contains Get Text Split String Join    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_PERMISSION_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_PERMISSION_TH} 

	#LabelTable: Name Menu
	Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_MENUNAME_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_MENUNAME_TH}


	#LabelTable: View
	Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_VIEW_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_VIEW_TH}


	#LabelTable: Create
	Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_CREATE_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_CREATE_TH}


	#LabelTable: Edit
	Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_EDIT_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_EDIT_TH}

	#LabelTable: Delete
	Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_DELETE_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_DELETE_TH}


	#Check MenuName
	Check MenuName



	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${ROLEMANAGEMENTINFORMATION_VIEW_M2_1_0_5_000_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser 