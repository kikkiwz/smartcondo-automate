*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Update] Employee Management ###################
M32_0_1_3_000_EmployeeManagement_Success_Update_VerifyScreenPage [Verify screen page "Update Employee Management"]
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
	Create Employee management input require field data

	Log To Console    ${\n}=========== [Edit] EmployeeManagement ===============
	#Click Icon Update
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_EDIT_LOCATOR}
    Sleep    1s


	#Varify Screen : Edit employee detail Header
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_HEADER_EDITEMPLOYEEDETAIL_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_HEADER_EDITEMPLOYEEDETAIL_TH}

	#Varify Screen : Employee Type
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_EMPLOYEETYPE_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_EMPLOYEETYPE_TH}

	#Varify Screen : Title
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_TITLE_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_TITLE_TH}


	#Varify Screen : First name
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_FIRSTNAME_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_FIRSTNAME_TH}

	#Varify Screen : Last name
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_LASTNAME_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_LASTNAME_TH}

	#Varify Screen : Phone number
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_PHONENUMBER_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_PHONENUMBER_TH}

	#Varify Screen : Active For Projects
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_ACTIVEFORPROJECTS_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_ACTIVEFORPROJECTS_TH}

	Check Active For Projects    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_CHK_PROPERTYNAME_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_PROPERTYNAME_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_CHK_BUILDINGNAME_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_BUILDINGNAME_LOCATOR}        


	#Varify Screen : Select / Unselect all
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_SELECTUNSELECTALL_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_SELECTUNSELECTALL_TH}

	#Varify Screen : Cancel
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_BTN_CANCEL_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_BTN_CANCEL_TH}

	#Varify Screen : Save
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_BTN_SAVE_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_BTN_SAVE_TH}


	
Verify Screen : legth 255 in Firstname
	# maxlength="255"
	Wait Should Contain Get Element Attribute    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_TXT_FIRSTNAME_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

Verify Screen : legth 255 in Lastname
	# maxlength="255"
	Wait Should Contain Get Element Attribute    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_TXT_LASTNAME_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

Verify screen : Phone Number length 10
	# maxlength="10"
	Wait Should Contain Get Element Attribute    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_TXT_PHONENUMBER_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_10}

Close popup
	Sleep    0.5s
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_BTN_CANCEL_LOCATOR}
	

	#Delete Data
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_DELETE_LOCATOR}
	Sleep    0.5s
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_DELETE_BTN_CONFIRM_LOCATOR}


	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_M32_0_1_3_000_SCREENSHOT}

	################## Close Browser ###################
    [Teardown]    Close Browser 