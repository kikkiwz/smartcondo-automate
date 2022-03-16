*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Delete] Role Management ###################
M2_1_1_4_000_RoleManagement_Success_Delete_VerifyAction [Verify Action "Delete Role Management"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click User Account


    [Setup]    Open Browser To Login Page Super Admin EN
   	
	#========== Click Setting Menu EmployeeManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_ROLEMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_ROLEMANAGEMENT_EN}    ${MENU_LBL_SETTING_ROLEMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_ROLEMANAGEMENT_EN}   ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_HEADER_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_HEADER_EN}    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_EN}
	

	#========== Create Role Management ======
	Log To Console    ${\n}=========== [Create] Role Management =============== 
	Create Role input all field data No Check Table EN
	Sleep    1s
	#Search Role Management
	Wait Until Contains Input Text    ${ROLEMANAGEMENTINFORMATION_SEARCH_TXT_ROLEMANAGEMENT_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}
	# Click Search
	Click Element Page  ${ROLEMANAGEMENTINFORMATION_BTN_SEARCH_LOCATOR}
	Sleep    0.5s


Verify action : click Cancel button
    #Click Delete button
	Click Element Page    ${ROLEMANAGEMENTINFORMATION_ICON_DELETE_LOCATOR}

    #Click Cancel button
	Click Element Page    ${ALERT_BTN_CANCEL_LOCATOR}



Verify action : click Confirm button
	Log To Console    ${\n}=========== [Delete] Role Management =============== 

	${dataDelete}=    Set Variable    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}        

	#Click delete button
	Click Delete Data EN    ${ROLEMANAGEMENTINFORMATION_ICON_DELETE_LOCATOR}    ${dataDelete}

	#================ Verify DB ================	
	Request Verify DB Check Data Delete Role Management    ${MYSQL_TYPE_DELETE_ALLFIELD}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}         
   

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${ROLEMANAGEMENTINFORMATION_DELETE_M2_1_1_4_000_SUCCESS_SCREENSHOT}

################### Generic Test Case Teardown ###################
	[Teardown]   Close Browser







