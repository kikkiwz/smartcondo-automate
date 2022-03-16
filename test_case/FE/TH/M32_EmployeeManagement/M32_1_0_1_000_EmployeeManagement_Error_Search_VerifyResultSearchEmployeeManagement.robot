*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Search] EmployeeManagement ###################
M32_1_0_1_000_EmployeeManagement_Error_Search_VerifyResultSearchEmployeeManagement [Data Not Found Send request to DB (searchEmployeeManagement)]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click User Account

    [Setup]    Open Browser To Login Page Super Admin
   	
	#========== Click Setting Menu EmployeeManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_EMPLOYEEMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_EMPLOYEEMANAGEMENT_TH}    ${MENU_LBL_SETTING_EMPLOYEEMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_EMPLOYEEMANAGEMENT_TH}   ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_HEADER_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_HEADER_TH}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_TH}
	


   #========== Check EmployeeManagement ======
   #================ Check Value Table ================
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

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_M32_1_0_1_000_ERROR_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser 







