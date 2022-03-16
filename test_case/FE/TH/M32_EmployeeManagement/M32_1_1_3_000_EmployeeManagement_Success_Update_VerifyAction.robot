*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Update] Employee Management ###################
M32_1_1_3_000_EmployeeManagement_Success_Update_VerifyAction [Verify Action "Update Employee Management"]
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
	#Click Edit EmployeeManagement 
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_EDIT_LOCATOR}
    Sleep    1s


	#Varify Screen : Edit employee detail Header
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_HEADER_EDITEMPLOYEEDETAIL_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_HEADER_EDITEMPLOYEEDETAIL_TH}

	

Verify Action : Click save button
	Edit Employee management input all field data
	Sleep    3s



Verify Action : Click dropdown Prefix

	#Click Edit EmployeeManagement 
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_EDIT_LOCATOR}
	Sleep    1s

	#Prefix *
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_TITLE_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_TITLE_TH} 
	# Wait Should Contain Get Element Attribute    ${SETTINGBANKACCOUNT_ADDEDIT_LBL_BANKACCOUNT_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${DEFAULT_DDL_SELECTBANKACCOUNT_TH} 
	${selectPrefix}=    Request DB Data Titles All
    ${dataPrefixAll}=    Set Variable    ${selectPrefix}[0]
	@{valArrDataPrefixsNameTh}=    Set Variable    ${selectPrefix}[2]
	@{valArrDataPrefixsNameEn}=    Set Variable    ${selectPrefix}[3]
	Log To Console    [valArrDataPrefixsNameTh] : ${valArrDataPrefixsNameTh}
	Element Text Should Be Value Dropdown Long    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_DDL_TITLE_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_TITLE_LIST_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_TITLE_CLASS_LOCATOR}    ${valArrDataPrefixsNameTh}
	#close dropdrown
	Press Keys    ${NONE}    ${ESC}

	Mouse Down    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_PHONENUMBER_LOCATOR}
	#Click Cancel button
    Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_BTN_CANCEL_LOCATOR}
	Sleep    0.5s



Verify Value Name : Property and Building

	#Click Edit EmployeeManagement 
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_EDIT_LOCATOR}
	Sleep    0.5s

	Check Active For Projects    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_CHK_PROPERTYNAME_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_PROPERTYNAME_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_CHK_BUILDINGNAME_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_BUILDINGNAME_LOCATOR}        
	
	Mouse Down    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_PHONENUMBER_LOCATOR}
	#Click Cancel button
    Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_BTN_CANCEL_LOCATOR}

Verify Action : click cancel button

    #Click Edit Employee Management
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_EDIT_LOCATOR}
	Sleep    0.5s
	#Update Employee Management Information
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_HEADER_EDITEMPLOYEEDETAIL_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_HEADER_EDITEMPLOYEEDETAIL_TH} 
    
	#Click Cancel button
    Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_BTN_CANCEL_LOCATOR}
	Sleep    0.5s

	#Update Employee Management Information
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_TH} 
    


	Sleep    10s
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_DELETE_LOCATOR}
	Sleep    0.5s
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_DELETE_BTN_CONFIRM_LOCATOR}

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${EMPLOYEEMANAGEMENTINFORMATION_EDIT_M32_1_1_3_000_SUCCESS_SCREENSHOT}
	
################## Close Browser ###################
    [Teardown]    Close Browser