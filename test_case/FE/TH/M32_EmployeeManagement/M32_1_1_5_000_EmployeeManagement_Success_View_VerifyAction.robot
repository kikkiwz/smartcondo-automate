*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [View] Employee Management ###################
M32_1_1_5_000_EmployeeManagement_Success_View_VerifyAction [Verify Action "View Employee Management"]
    [Documentation]    Step is :    
	...   1. open link : https://login.smartcondo.net/en  
	...   2. login
	...   3. click ข้อมูลมาสเตอร์
	...   4. click menu จัดการพนักงาน


    [Setup]    Open Browser To Login Page Super Admin
   	
	#========== Click Setting Menu EmployeeManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_EMPLOYEEMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_EMPLOYEEMANAGEMENT_TH}    ${MENU_LBL_SETTING_EMPLOYEEMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_EMPLOYEEMANAGEMENT_TH}   ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_HEADER_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_HEADER_TH}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_TH}
	

	#========== Create Bank Account Management ======
	Log To Console    ${\n}=========== [Create] EmployeeManagement =============== 
	Create Employee management input all field data 

	Log To Console    ${\n}=========== [View] EmployeeManagement ===============
	#Click View
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_VIEW_LOCATOR}
	Sleep    1s


	#View employee detail 
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_HEADER_VIEWEMPLOYEEDETAIL_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_HEADER_VIEWEMPLOYEEDETAIL_TH}

	
#================ Verify DB ================	
	Request Verify DB Check Data View EmployeeManagement    ${MYSQL_TYPE_VIEW_ALLFIELD}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_EMPLOYEETYPE_VALUE1}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_PREFIX_VALUE1}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_FIRSTNAME_VALUE}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LASTNAME_VALUE}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_PHONENUMBER_VALUE}     ${EMPLOYEEMANAGEMENTINFORMATION_PROPERTYID_VALUE}    ${EMPLOYEEMANAGEMENTINFORMATION_BUIBINGID_VALUE}

	#Click close
    Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_CLOSE_LOCATOR}
	Sleep    3s


Verify Action : click Close button

    #Click Edit Employee Management
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_VIEW_LOCATOR}
	Sleep    0.5s
	#View Employee Management Information
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_HEADER_VIEWEMPLOYEEDETAIL_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_HEADER_VIEWEMPLOYEEDETAIL_TH} 
    
	# Click Cancel button
    Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_CLOSE_LOCATOR}
	Sleep    0.5s

	#Update Employee Management Information
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_TH} 
    


	Sleep    10s
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_DELETE_LOCATOR}
	Sleep    0.5s
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_DELETE_BTN_CONFIRM_LOCATOR}

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${EMPLOYEEMANAGEMENTINFORMATION_VIEW_M32_1_1_5_000_SUCCESS_SCREENSHOT}
	
################# Close Browser ###################
    [Teardown]    Close Browser