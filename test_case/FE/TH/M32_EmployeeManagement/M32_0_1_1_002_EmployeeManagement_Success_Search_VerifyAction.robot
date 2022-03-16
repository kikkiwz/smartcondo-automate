*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Search] EmployeeManagement ###################
M32_0_1_1_002_EmployeeManagement_Search_VerifyAction [Verify Action "Search User Account"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click User Account

    [Setup]    Open Browser To Login Page Super Admin
   	
	#========== Click Setting Menu EmployeeManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_EMPLOYEEMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_EMPLOYEEMANAGEMENT_TH}    ${MENU_LBL_SETTING_EMPLOYEEMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_EMPLOYEEMANAGEMENT_TH}   ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_HEADER_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_HEADER_TH}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_TH}
	

	#========== Create Bank Account Management ======
	Log To Console    ${\n}=========== [Create] EmployeeManagement =============== 
	Create Employee management input require field data
	# Create Employee management input require field data
	# Create Employee management input all field data
	Sleep    0.5s
	


Verify API Onload and mapping data after click User Account
   #====== Verify DB ==========
    #Inquiry for verify DB  
	#  [((9, 10, 1, None, '1111111111', 'เทสบัญชี', datetime.datetime(2021, 9, 21, 17, 8, 41), '10', None, None, None, None, 7, 1, 1, None),), 1] 
    ${resultSearchEmployeeManagement}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Employee Management    ${MYSQL_TYPE_SEARCHLISTALL}    ${LIMIT_20}    ${OFFSET_0}

	Log To Console    resultSearchEmployeeManagement:::${resultSearchEmployeeManagement}  
	
	${dataSearchEmployeeManagement}=    Set Variable    ${resultSearchEmployeeManagement}[0][0]
	Log To Console    [dataSearchEmployeeManagement] : ${dataSearchEmployeeManagement}
	Set Global Variable    ${rowcountSearchEmployeeManagement}    ${resultSearchEmployeeManagement}[1]
	Log To Console    [rowcount SearchEmployeeManagement] : ${rowcountSearchEmployeeManagement}

	${checkNodata}=    Run Keyword If    '${rowcountSearchEmployeeManagement}'=='0'    Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchEmployeeManagement}'!='0'    Check Value Table Search Employee Management     ${rowcountSearchEmployeeManagement}    ${dataSearchEmployeeManagement}

	Sleep    3s


Verify Action : after Click search button
	#Search All
	Select Dropdown    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_DDL_EMPLOYEETYPE_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_DDL_EMPLOYEETYPE_LIST_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_DDL_EMPLOYEETYPE_CLASS_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_VALUE_DDL_ALL_TH}
	Sleep    0.5s
	#Click Search
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_BTN_SEARCH_LOCATOR}

	#====== Verify DB ==========
    #Inquiry for verify DB  
	#  [((9, 10, 1, None, '1111111111', 'เทสบัญชี', datetime.datetime(2021, 9, 21, 17, 8, 41), '10', None, None, None, None, 7, 1, 1, None),), 1] 
    ${resultSearchEmployeeManagement}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Employee Management    ${MYSQL_TYPE_SEARCHLISTALL}    ${LIMIT_20}    ${OFFSET_0}

	Log To Console    resultSearchEmployeeManagement:::${resultSearchEmployeeManagement}  
	
	${dataSearchEmployeeManagement}=    Set Variable    ${resultSearchEmployeeManagement}[0][0]
	Log To Console    [dataSearchEmployeeManagement] : ${dataSearchEmployeeManagement}
	Set Global Variable    ${rowcountSearchEmployeeManagement}    ${resultSearchEmployeeManagement}[1]
	Log To Console    [rowcount SearchEmployeeManagement] : ${rowcountSearchEmployeeManagement}

	${checkNodata}=    Run Keyword If    '${rowcountSearchEmployeeManagement}'=='0'    Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchEmployeeManagement}'!='0'    Check Value Table Search Employee Management     ${rowcountSearchEmployeeManagement}    ${dataSearchEmployeeManagement}

	#Click Clear
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_BTN_CLEAR_LOCATOR}




Verify Action : click clear button

	# Input Name
	Wait Until Contains Input Text    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_TXT_NAMESURNAME_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_FIRSTNAME_VALUE}
	Sleep    2s

	#Click User EmployeeManagement tab
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_BTN_CLEAR_LOCATOR}
	Sleep    2s



Verify Action : Click icon edit
	#Click Edit
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_EDIT_LOCATOR}

	Sleep    3s

	#Varify Screen : Edit employee detail Header
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_HEADER_EDITEMPLOYEEDETAIL_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_HEADER_EDITEMPLOYEEDETAIL_TH}

	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_BTN_CANCEL_LOCATOR}



Verify Action : Click icon Delete
	#Click User EmployeeManagement tab
	# Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_DELETE_LOCATOR}
	${dataDelete}=    Set Variable    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_FIRSTNAME_VALUE} ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LASTNAME_VALUE} ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_CLEANINGSTAFF_TH}    
	Log To Console    dataDelete::${dataDelete}    
	#Click delete button and Check Popup Delete
	Check Popup Delete TH    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_DELETE_LOCATOR}    ${dataDelete}


	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_M32_1_1_1_000_SUCCESS_SCREENSHOT}

################### Generic Test Case Teardown ###################
	[Teardown]    Generic Test Case Teardown EmployeeManagement    ${dataDelete}








