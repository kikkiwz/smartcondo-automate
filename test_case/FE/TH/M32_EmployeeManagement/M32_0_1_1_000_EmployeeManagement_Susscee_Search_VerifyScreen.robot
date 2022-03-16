*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Search] EmployeeManagement ###################
M32_0_1_1_000_EmployeeManagement_Search_VerifyScreen [Verify screen page "Search User Account"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click User Account

    [Setup]    Open Browser To Login Page Super Admin
   	
    #================
	#Click Setting menu
	Click Element Page    ${MENU_ICON_SETTING_LOCATOR}
	
	#User account
	Wait Until Contains Element Text Should Be    ${MENU_LBL_HOMETOP_ADMIN_EMPLOYEEMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_EMPLOYEEMANAGEMENT_TH} 
	
	#Click EmployeeManagement menu
	Click Element Page    ${MENU_LBL_HOMETOP_ADMIN_EMPLOYEEMANAGEMENT_LOCATOR}
	Sleep    0.5s

	#Click User EmployeeManagement tab
	Click Element Page    ${MENU_LBL_SETTING_EMPLOYEEMANAGEMENT_LOCATOR}

	#User EmployeeManagement tab
	Wait Until Contains Element Text Should Be    ${MENU_LBL_SETTING_EMPLOYEEMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_EMPLOYEEMANAGEMENT_TH} 
	

	#================
Verify screen page EmployeeManagement
	#Employee Management header
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_HEADER_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_HEADER_TH} 
	
	#Employee Management
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_TH} 
	
	#Add : EmployeeManagement information
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_ADD_TH} 
	Wait Until Contains Element Should Be Enabled    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}

	#Label: Employee Type
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEETYPE_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEETYPE_TH}


	#Label: Name-Surname
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_NAMESURNAME_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_NAMESURNAME_TH}

	#Label: Phone Number
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_PHONENUMBER_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_PHONENUMBER_TH}

	#Label: Search
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_BTN_SEARCH_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_BTN_SEARCH_TH}
	Wait Until Contains Element Should Be Enabled    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_BTN_SEARCH_LOCATOR}

	#Label: clear
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_BTN_CLEAR_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_BTN_CLEAR_TH}
	Wait Until Contains Element Should Be Enabled    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_BTN_CLEAR_LOCATOR}

	Sleep    5s

	#LabelTable: No
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NO_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NO_TH}

	#LabelTable: Employee Type
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_EMPLOYEETYPE_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_EMPLOYEETYPE_TH}

	#LabelTable: Name-Surname
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NAMESURNAME_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NAMESURNAME_TH}

	#LabelTable: Phone Number
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_PHONENUMBER_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_PHONENUMBER_TH}


Verify screen dropdown EmployeeType
	# Verify Screen Dropdown : Employee Type  
	Element Text Should Be Value Dropdown    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_DDL_EMPLOYEETYPE_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_DDL_EMPLOYEETYPE_LIST_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_DDL_EMPLOYEETYPE_CLASS_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_DDL_EMPLOYEETYPE_TH_VALUE}
	#close dropdrown
	Press Keys    ${NONE}    ${ESC}
	Sleep    0.5s


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



# Verify default number button
    #20
    Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_20_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_20} 
    #50
    Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_50_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_50} 
    #100
    Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_100_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_100} 
    #1000
    Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_1000_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_1000}

	#paging
	${replacePage}=    Paging Replace    ${rowcountSearchEmployeeManagement}
	${paging}=    Set Variable    ${replacePage[0]}
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_LBL_PagesXFromY_LOCATOR}    ${paging}

	Wait Until Contains Element Should Be Visible    ${EMPLOYEEMANAGEMENTINFORMATION_ICON_ARRORWLEFT_LOCATOR}
	Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_LBL_PAGE_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_LBL_PAGE_1}
	Wait Until Contains Element Should Be Visible    ${EMPLOYEEMANAGEMENTINFORMATION_ICON_ARRORWRIGHT_LOCATOR}




Verify screen : legth 255 and type is varchar in Name - Surname
	# maxlength="125"
	Wait Should Contain Get Element Attribute    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_TXT_NAMESURNAME_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}


Verify screen : legth 255 and type is varchar in Phone Number
	# maxlength="125"
	Wait Should Contain Get Element Attribute    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_TXT_PHONENUMBER_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_10}



	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_M32_0_1_1_000_SCREENSHOT}
	
################### Close Browser ###################
    [Teardown]    Close Browser  
