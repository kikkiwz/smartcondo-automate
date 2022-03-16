*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Delete] Role Management ###################
M2_0_1_4_000_RoleManagement_Success_Delete_VerifyScreen [Verify screen page "Delete Role Management"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click User Account


    [Setup]    Open Browser To Login Page Super Admin
   	
	#========== Click Setting Menu EmployeeManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_ROLEMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_ROLEMANAGEMENT_TH}    ${MENU_LBL_SETTING_ROLEMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_ROLEMANAGEMENT_TH}   ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_HEADER_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_HEADER_TH}    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_TH}
	

	#========== Create Role Management ======
	Log To Console    ${\n}=========== [Create] Role Management =============== 
	Create Role input all field data No Check Table
	Sleep    1s
	#Search Role Management
	Wait Until Contains Input Text    ${ROLEMANAGEMENTINFORMATION_SEARCH_TXT_ROLEMANAGEMENT_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}
	# Click Search
	Click Element Page  ${ROLEMANAGEMENTINFORMATION_BTN_SEARCH_LOCATOR}
	Sleep    0.5s
	
	Log To Console    ${\n}=========== [Delete] Role Management =============== 

	${dataDelete}=    Set Variable    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}        
	Log To Console    dataDelete::${dataDelete}    
	#Click delete button and Check Popup Delete
	Check Popup Delete TH    ${ROLEMANAGEMENTINFORMATION_ICON_DELETE_LOCATOR}    ${dataDelete}
	Sleep    3s
	Click Delete Data TH    ${ROLEMANAGEMENTINFORMATION_ICON_DELETE_LOCATOR}    ${dataDelete}



	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${ROLEMANAGEMENTINFORMATION_DELETE_M2_0_1_4_000_SUCCESS_SCREENSHOT}

################### Generic Test Case Teardown ###################
	[Teardown]    Generic Test Case Teardown EmployeeManagement    ${dataDelete}







