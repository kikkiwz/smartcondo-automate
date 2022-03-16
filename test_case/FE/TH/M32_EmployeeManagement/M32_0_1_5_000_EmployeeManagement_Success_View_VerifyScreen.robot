*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [View] Employee Management ###################
M32_0_1_5_000_EmployeeManagement_Success_View_VerifyScreenPage [Verify screen page "View Employee Management"]
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


	#Varify Screen : View employee detail Header
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_HEADER_VIEWEMPLOYEEDETAIL_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_HEADER_VIEWEMPLOYEEDETAIL_TH}

	#Varify Screen : Employee Type
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_EMPLOYEETYPE_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_EMPLOYEETYPE_TH}

	#Varify Screen : Title
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_TITLE_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_TITLE_TH}

	# #Varify Screen : First name
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_FIRSTNAME_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_FIRSTNAME_TH}

	#Varify Screen : Last name
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_LASTNAME_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_LASTNAME_TH}

	#Varify Screen : Phone number
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_PHONENUMBER_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_PHONENUMBER_TH}

	#Varify Screen : Active For Projects
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_ACTIVEFORPROJECTS_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_ACTIVEFORPROJECTS_TH}

	#Property
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_PROPERTYNAME_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_PROPERTY_TH_VALUE} 
	#Building
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_BUILDINGNAME_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_BUIBING_TH_VALUE} 
	

	#Click Close button
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_CLOSE_LOCATOR}

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${EMPLOYEEMANAGEMENTINFORMATION_VIEW_M32_0_1_5_000_SUCCESS_SCREENSHOT}


	#Delete Data
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_DELETE_LOCATOR}
	Sleep    0.5s
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_DELETE_BTN_CONFIRM_LOCATOR}

################### Generic Test Case Teardown ###################
    [Teardown]    Close Browser
	


