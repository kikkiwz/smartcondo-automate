*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Create] Employee Management ###################
M32_1_0_3_006_EmployeeManagement_Error_Update_VerifyResultAfterClickSaveButton [Verify result after click save button]
    [Documentation]    Step is :    
	...   1. open link : https://login.smartcondo.net/en  
	...   2. login
	...   3. click ข้อมูลมาสเตอร์
	...   4. click menu จัดการพนักงาน
	...   5. click add button
    [Setup]    Open Browser To Login Page Super Admin
   	


	#========== Click Setting Menu EmployeeManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_EMPLOYEEMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_EMPLOYEEMANAGEMENT_TH}    ${MENU_LBL_SETTING_EMPLOYEEMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_EMPLOYEEMANAGEMENT_TH}   ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_HEADER_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_HEADER_TH}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_TH}
	

	#========== Create EmployeeManagement ======
	Log To Console    ${\n}=========== [Create] EmployeeManagement =============== 
	Create Employee management input require field data
	Sleep    0.5s


	Request DeleteData for EmployeeManagement      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${idEmployeeManagement}


	Log To Console    ${\n}=========== [Edit] EmployeeManagement ===============
	#Click Icon Update
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_EDIT_LOCATOR}
  
	#alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_DATANOTFOUND_TH}


	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${EMPLOYEEMANAGEMENTINFORMATION_EDIT_M32_1_0_3_006_ERROR_SCREENSHOT}
	
################### Close Browser ###################
    [Teardown]    Close Browser  