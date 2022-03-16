*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Create] Employee Management ###################
M32_1_1_2_000_EmployeeManagement_Success_Create_VerifyAction [Verify Action "Create Employee Management"]
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
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_CREATE_LBL_HEADER_ADDEMPLOYEE_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_CREATE_LBL_HEADER_ADDEMPLOYEE_TH} 


	
Verify Action : Click save button [input all field data]  
	#Create data
	Create Employee management input all field data 

	Sleep    10s
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_DELETE_LOCATOR}
	Sleep    0.5s
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_DELETE_BTN_CONFIRM_LOCATOR}
	Sleep    2s



Verify Action : click cancel button

    #Click Add Employee Management
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}
	Sleep    0.5s
	#Create Employee Management Information
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_CREATE_LBL_HEADER_ADDEMPLOYEE_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_CREATE_LBL_HEADER_ADDEMPLOYEE_TH} 
    
	#Click Cancel button
    Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_CREATE_BTN_CANCEL_LOCATOR}


Verify Action : click save button [input require field data] 

    #Create data
    Create Employee management input require field data

	Sleep    10s
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_DELETE_LOCATOR}
	Sleep    0.5s
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_DELETE_BTN_CONFIRM_LOCATOR}
# 	Sleep    1s


Verify Value Name : Property and Building

	#Click Add Employee Management
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}
	Sleep    0.5s

	Check Active For Projects    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_CHK_PROPERTYNAME_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_PROPERTYNAME_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_CHK_BUILDINGNAME_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_BUILDINGNAME_LOCATOR}        


Verify Action : Click dropdown Prefix
	#Click Add Employee Management

	#Prefix *
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_CREATE_LBL_TITLE_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_CREATE_LBL_TITLE_TH} 
	# Wait Should Contain Get Element Attribute    ${SETTINGBANKACCOUNT_ADDEDIT_LBL_BANKACCOUNT_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${DEFAULT_DDL_SELECTBANKACCOUNT_TH} 
	${selectPrefix}=    Request DB Data Titles All
    ${dataPrefixAll}=    Set Variable    ${selectPrefix}[0]
	@{valArrDataPrefixsNameTh}=    Set Variable    ${selectPrefix}[2]
	@{valArrDataPrefixsNameEn}=    Set Variable    ${selectPrefix}[3]
	Log To Console    [valArrDataPrefixsNameTh] : ${valArrDataPrefixsNameTh}
	Element Text Should Be Value Dropdown Long    ${EMPLOYEEMANAGEMENTINFORMATION_CREATE_DDL_TITLE_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_CREATE_VALUE_DDL_TITLE_LIST_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_CREATE_VALUE_DDL_TITLE_CLASS_LOCATOR}    ${valArrDataPrefixsNameTh}
	#close dropdrown
	Press Keys    ${NONE}    ${ESC}