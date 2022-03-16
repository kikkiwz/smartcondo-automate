*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Create] Employee Management ###################
M32_0_0_3_002_EmployeeManagement_Error_Update_VerifyScreen [Verify wording required field]
    [Documentation]    Step is :    
	...   1. open link : https://login.smartcondo.net/en  
	...   2. login
	...   3. click ข้อมูลมาสเตอร์
	...   4. click menu จัดการพนักงาน
	...   5. click add button
    [Setup]    Open Browser To Login Page Super Admin
   	


	#========== Click Setting Menu EmployeeManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_EMPLOYEEMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_EMPLOYEEMANAGEMENT_TH}    ${MENU_LBL_SETTING_EMPLOYEEMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_EMPLOYEEMANAGEMENT_TH}   ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_HEADER_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_HEADER_TH}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_TH}
	

	#========== Create Bank Account Management ======
	Log To Console    ${\n}=========== [Create] EmployeeManagement =============== 
	# Create Employee management input require field data No Check Table

	Log To Console    ${\n}=========== [Edit] EmployeeManagement ===============
	#Click Icon Update
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_EDIT_LOCATOR}
    Sleep    1s


	#Varify Screen : Edit employee detail Header
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_HEADER_EDITEMPLOYEEDETAIL_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_HEADER_EDITEMPLOYEEDETAIL_TH}


Clear Text
		Clear Element Text  ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_FIRSTNAME_LOCATOR}
		Clear Element Text  ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_LASTNAME_LOCATOR}
		Clear Element Text  ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_PHONENUMBER_LOCATOR}
		Sleep    0.5

Verify wording required field [Name]
		Mouse Down    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_FIRSTNAME_PLEASEINPUTDATA_LOCATOR}    
		Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_FIRSTNAME_PLEASEINPUTDATA_LOCATOR}    ${VALID_LBL_PLEASEINPUTDATA_TH} 


Verify wording required field [Surname]
		Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_LASTNAME_PLEASEINPUTDATA_LOCATOR}    ${VALID_LBL_PLEASEINPUTDATA_TH} 


Verify wording required field [Phonenumber]
		Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_PHONENUMBER_PLEASEINPUTDATA_LOCATOR}    ${VALID_LBL_PLEASEINPUTDATA_TH} 


	${dataDelete}=    Set Variable    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_FIRSTNAME_VALUE} ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LASTNAME_VALUE} ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_CLEANINGSTAFF_TH}    

	#capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${EMPLOYEEMANAGEMENTINFORMATION_CREATE_M32_0_0_2_000_ERROR_SCREENSHOT}
	
################### Close Browser ###################
    [Teardown]    Generic Test Case Teardown EmployeeManagement    ${dataDelete} 