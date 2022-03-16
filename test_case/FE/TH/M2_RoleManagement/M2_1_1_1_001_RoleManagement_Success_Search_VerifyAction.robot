*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Search] Role Management ###################
M2_1_1_1_001_RoleManagement_Success_Search_VerifyAction [Verify Action "Role Management"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click User Account

    [Setup]    Open Browser To Login Page Super Admin
   	
    #========== Click Setting Menu Role Management ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_ROLEMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_ROLEMANAGEMENT_TH}    ${MENU_LBL_SETTING_ROLEMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_ROLEMANAGEMENT_TH}   ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_HEADER_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_HEADER_TH}    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_TH}
	
	#========== Create Data Role Management ======
	Create Role input all field data No Check Table EN
	Sleep    1s

Verify Action : click search button [Role Name]

	#input Role Management
	Wait Until Contains Input Text    ${ROLEMANAGEMENTINFORMATION_SEARCH_TXT_ROLEMANAGEMENT_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}
	#Click Search
	Click Element Page  ${ROLEMANAGEMENTINFORMATION_BTN_SEARCH_LOCATOR}
	Sleep    3s

	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchRoleManagement}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Role Management    ${MYSQL_TYPE_ROLEMANAGEMENT_SEARCH_ROLENAME}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_ROLEMANAGEMENT_FIELD_ROLENAME} ${ORDERBY_ASC}
	Log To Console    resultSearchRoleManagement::${resultSearchRoleManagement}    

	${dataSearchRoleManagement}=    Set Variable    ${resultSearchRoleManagement}[0]
	Log To Console    [dataSearchRoleManagement] : ${dataSearchRoleManagement}
	${rowcountSearchRoleManagement}=    Set Variable    ${resultSearchRoleManagement}[1]
	Log To Console    [rowcount SearchRoleManagement] : ${rowcountSearchRoleManagement}

	${checkNodata}=    Run Keyword If    '${rowcountSearchRoleManagement}'=='0'    Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchRoleManagement}'!='0'    Check Value Table Role Management    ${DEFAULT_TH}     ${rowcountSearchRoleManagement}    ${dataSearchRoleManagement}

    #Click Clear
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_BTN_CLEAR_LOCATOR}

Verify Action : click clear button
	#input Role Management
	Wait Until Contains Input Text    ${ROLEMANAGEMENTINFORMATION_SEARCH_TXT_ROLEMANAGEMENT_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}
	#Click Search
	Click Element Page  ${ROLEMANAGEMENTINFORMATION_BTN_SEARCH_LOCATOR}

	#Click Clear
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_BTN_CLEAR_LOCATOR}




Verify Action : click 50 button

    #Click 50 button
	Click Element Page    ${ROLEMANAGEMENTINFORMATION_BTN_50_LOCATOR}

    #====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchRoleManagement}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Role Management    ${MYSQL_TYPE_ROLEMANAGEMENT_SEARCH_ALL}    null    ${LIMIT_50}    ${OFFSET_0}    ${DB_TB_ROLEMANAGEMENT_FIELD_ROLENAME} ${ORDERBY_ASC}
	Log To Console    resultSearchRoleManagement::${resultSearchRoleManagement}    

	${dataSearchRoleManagement}=    Set Variable    ${resultSearchRoleManagement}[0]
	Log To Console    [dataSearchRoleManagement] : ${dataSearchRoleManagement}
	Set Global Variable     ${rowcountSearchRoleManagement}    ${resultSearchRoleManagement}[1]
	Log To Console    [rowcount SearchRoleManagement] : ${rowcountSearchRoleManagement}

	${checkNodata}=    Run Keyword If    '${rowcountSearchRoleManagement}'=='0'    Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchRoleManagement}'!='0'    Check Value Table Role Management    ${DEFAULT_TH}     ${rowcountSearchRoleManagement}    ${dataSearchRoleManagement}
   
	Sleep    1s

Verify Action : click 100 button

    #Click 50 button
	Click Element Page    ${ROLEMANAGEMENTINFORMATION_BTN_100_LOCATOR}

    #====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchRoleManagement}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Role Management    ${MYSQL_TYPE_ROLEMANAGEMENT_SEARCH_ALL}    null    ${LIMIT_100}    ${OFFSET_0}    ${DB_TB_ROLEMANAGEMENT_FIELD_ROLENAME} ${ORDERBY_ASC}
	Log To Console    resultSearchRoleManagement::${resultSearchRoleManagement}    

	${dataSearchRoleManagement}=    Set Variable    ${resultSearchRoleManagement}[0]
	Log To Console    [dataSearchRoleManagement] : ${dataSearchRoleManagement}
	Set Global Variable     ${rowcountSearchRoleManagement}    ${resultSearchRoleManagement}[1]
	Log To Console    [rowcount SearchRoleManagement] : ${rowcountSearchRoleManagement}

	${checkNodata}=    Run Keyword If    '${rowcountSearchRoleManagement}'=='0'    Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchRoleManagement}'!='0'    Check Value Table Role Management    ${DEFAULT_TH}     ${rowcountSearchRoleManagement}    ${dataSearchRoleManagement}
   
	Sleep    1s

Verify Action : click 1000 button

    #Click 50 button
	Click Element Page    ${ROLEMANAGEMENTINFORMATION_BTN_1000_LOCATOR}

    #====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchRoleManagement}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Role Management    ${MYSQL_TYPE_ROLEMANAGEMENT_SEARCH_ALL}    null    ${LIMIT_1000}    ${OFFSET_0}    ${DB_TB_ROLEMANAGEMENT_FIELD_ROLENAME} ${ORDERBY_ASC}
	Log To Console    resultSearchRoleManagement::${resultSearchRoleManagement}    

	${dataSearchRoleManagement}=    Set Variable    ${resultSearchRoleManagement}[0]
	Log To Console    [dataSearchRoleManagement] : ${dataSearchRoleManagement}
	Set Global Variable     ${rowcountSearchRoleManagement}    ${resultSearchRoleManagement}[1]
	Log To Console    [rowcount SearchRoleManagement] : ${rowcountSearchRoleManagement}

	${checkNodata}=    Run Keyword If    '${rowcountSearchRoleManagement}'=='0'    Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchRoleManagement}'!='0'    Check Value Table Role Management    ${DEFAULT_TH}     ${rowcountSearchRoleManagement}    ${dataSearchRoleManagement}
   
	Sleep    1s


	#Search Role Management
	Wait Until Contains Input Text    ${ROLEMANAGEMENTINFORMATION_SEARCH_TXT_ROLEMANAGEMENT_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}
	# Click Search
	Click Element Page  ${ROLEMANAGEMENTINFORMATION_BTN_SEARCH_LOCATOR}
	Sleep    0.5s

	${dataDelete}=    Set Variable    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1} 
	#Click delete button
	Click Delete Data TH    ${ROLEMANAGEMENTINFORMATION_ICON_DELETE_LOCATOR}    ${dataDelete}

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${ROLEMANAGEMENTINFORMATION_SEARCH_M2_1_1_1_001_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser 