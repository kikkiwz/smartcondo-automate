*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Delete] Employee Management ###################
M32_1_1_4_000_EmployeeManagement_Success_Delete_VerifyAction [Verify Action "Delete Employee Management"]
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
	Sleep    0.5s



Verify action : click Cancel button
    #Click Delete button
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_DELETE_LOCATOR}

    #Click Cancel button
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_DELETE_BTN_CANCEL_LOCATOR}





Verify action : click Confirm button
	Log To Console    ${\n}=========== [Delete] EmployeeManagement =============== 

	${dataDelete}=    Set Variable    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_MR_TH}${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_FIRSTNAME_VALUE} ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LASTNAME_VALUE} ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_CLEANINGSTAFF_TH}    
  
	#Click delete button
	Click Delete Data TH    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_DELETE_LOCATOR}    ${dataDelete}


	#================ Verify DB ================	
	Request Verify DB Check Data Delete EmployeeManagement    ${MYSQL_TYPE_DELETE_ALLFIELD}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_EMPLOYEETYPE_VALUE1}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_PREFIX_VALUE1}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_FIRSTNAME_VALUE}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LASTNAME_VALUE}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_PHONENUMBER_VALUE}    ${EMPLOYEEMANAGEMENTINFORMATION_PROPERTYID_VALUE}    ${EMPLOYEEMANAGEMENTINFORMATION_BUIBINGID_VALUE}     
   

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${EMPLOYEEMANAGEMENTINFORMATION_DELETE_M32_1_1_4_000_SUCCESS_SCREENSHOT}

################### Generic Test Case Teardown ###################
	[Teardown]    Close Browser








