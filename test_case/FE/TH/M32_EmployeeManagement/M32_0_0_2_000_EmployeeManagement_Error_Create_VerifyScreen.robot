*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Create] Employee Management ###################
M32_0_0_2_000_EmployeeManagement_Error_Create_VerifyScreen [Verify wording required field]
    [Documentation]    Step is :    
	...   1. open link : https://login.smartcondo.net/en  
	...   2. login
	...   3. click ข้อมูลมาสเตอร์
	...   4. click menu จัดการพนักงาน
	...   5. click add button

    [Setup]    Open Browser To Login Page Super Admin


	#========== Click Setting Menu Employee Management ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_EMPLOYEEMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_EMPLOYEEMANAGEMENT_TH}    ${MENU_LBL_SETTING_EMPLOYEEMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_EMPLOYEEMANAGEMENT_TH}   ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_HEADER_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_HEADER_TH}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_TH}
	
	
	#========== Check Employee Management ======
	#Click Add Employee Management
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}
	Sleep    0.5s

	#Create Employee Management Information
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_ADDEMPLOYEE_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_ADDEMPLOYEE_TH} 

	
	#Click Save
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}

Verify wording required field [EmployeeType]
		Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_EMPLOYEETYPE_PLEASEINPUTDATA_LOCATOR}    ${VALID_LBL_PLEASESELECTDATA_TH} 


Verify wording required field [Name]
		Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_FIRSTNAME_PLEASEINPUTDATA_LOCATOR}    ${VALID_LBL_PLEASEINPUTDATA_TH} 


Verify wording required field [Surname]
		Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_LASTNAME_PLEASEINPUTDATA_LOCATOR}    ${VALID_LBL_PLEASEINPUTDATA_TH} 



Verify wording required field [Phonenumber]
		Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_PHONENUMBER_PLEASEINPUTDATA_LOCATOR}    ${VALID_LBL_PLEASEINPUTDATA_TH} 



	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${EMPLOYEEMANAGEMENTINFORMATION_CREATE_M32_0_0_2_000_ERROR_SCREENSHOT}
	
################### Close Browser ###################
    [Teardown]    Close Browser 