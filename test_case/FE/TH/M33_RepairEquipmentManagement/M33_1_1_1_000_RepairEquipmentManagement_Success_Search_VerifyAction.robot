*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Search] RepairEquipmentManagement ###################
M33_1_1_1_000_RepairEquipmentManagement_Success_Search_VerifyAction [Verify Action page "Search Repair equipment management"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click master
    ...    5. click menu Repair equipment management 

    [Setup]    Open Browser To Login Page Super Admin

    #-------- Click Setting Menu Repair Equipment Management --------
    Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_REPAIREQUIPMENTMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_REPAIREQUIPMENTMANAGEMENT_TH}    ${MENU_LBL_SETTING_REPAIREQUIPMENTMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_REPAIREQUIPMENTMANAGEMENT_TH}   ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_REPAIREQUIPMENTINFORMATION_HEADER_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_REPAIREQUIPMENTINFORMATION_HEADER_TH}    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_REPAIREQUIPMENTINFORMATION_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_REPAIREQUIPMENTINFORMATION_TH}

    #--------- Create Repair Equipment Information ----------
    Log To Console    ${\n}========== [Create] Repaire Equipment Information ==========
    Create Repair Equipment Information input all data
    Create Repair Equipment Information input all data 2

Verify API Onload and mapping data after click Repair equipment management
    ${resultSearchRepairEquipment}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Repair Equipment    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    ${LIMIT_20}    ${OFFSET_0}    null
	${dataSearchRepairEquipment}=    Set Variable    ${resultSearchRepairEquipment}[0]
	Log To Console    [dataSearchRepairEquipment] : ${dataSearchRepairEquipment}
	${rowcountSearchRepairEquipment}=    Set Variable    ${resultSearchRepairEquipment}[1]
	Log To Console    [rowcount SearchRepairEquipment] : ${rowcountSearchRepairEquipment}

	${checkNodata}=    Run Keyword If    '${rowcountSearchRepairEquipment}'=='0'    Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchRepairEquipment}'!='0'    Check Value Table Search Repair Equipment    ${DEFAULT_TH}     ${rowcountSearchRepairEquipment}    ${dataSearchRepairEquipment}
	Sleep    0.5s

Verify Action : click search button [Search by Status]
    Click Change Status Disable To Enable
    Sleep    0.5s
	Select Dropdown    ${REPAIREQUIPMENTINFORMATION_SEARCH_DDL_STATUS_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_SEARCH_DDL_CLASS_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_STATUS_TH_VALUE2}
	Sleep    0.5s
	#Click Search
	Click Element Page    ${REPAIREQUIPMENTINFORMATION_SEARCH_BTN_SEARCH_LOCATOR}
	
	#====== Verify DB ==========
    ${resultSearchRepairEquipment}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Repair Equipment    ${MYSQL_TYPE_REPAIREQUIPMENT_SEARCH_STATUS}    null    ${REPAIREQUIPMENTINFORMATION_STATUSID_VALUE2}    ${LIMIT_20}    ${OFFSET_0}    null
	${dataSearchRepairEquipment}=    Set Variable    ${resultSearchRepairEquipment}[0]
	Log To Console    [dataSearchRepairEquipment] : ${dataSearchRepairEquipment}
	${rowcountSearchRepairEquipment}=    Set Variable    ${resultSearchRepairEquipment}[1]
	Log To Console    [rowcount SearchRepairEquipment] : ${rowcountSearchRepairEquipment}

	${checkNodata}=    Run Keyword If    '${rowcountSearchRepairEquipment}'=='0'    Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchRepairEquipment}'!='0'    Check Value Table Search Repair Equipment    ${DEFAULT_TH}     ${rowcountSearchRepairEquipment}    ${dataSearchRepairEquipment}
   
    #Click Clear
	Click Element Page    ${REPAIREQUIPMENTINFORMATION_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search by Status and Device name]
    #Input Device Name
    Wait Until Contains Input Text    ${REPAIREQUIPMENTINFORMATION_SEARCH_TXT_DEVICENAME_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_DEVICENAMETH_VALUE2}
	#Select Status
	Select Dropdown    ${REPAIREQUIPMENTINFORMATION_SEARCH_DDL_STATUS_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_SEARCH_DDL_CLASS_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_STATUS_TH_VALUE1}
	Sleep    0.5s
	#Click Search
	Click Element Page    ${REPAIREQUIPMENTINFORMATION_SEARCH_BTN_SEARCH_LOCATOR}
	
	#====== Verify DB ==========
    ${resultSearchRepairEquipment}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Repair Equipment    ${MYSQL_TYPE_REPAIREQUIPMENT_SEARCH_ALL}    ${REPAIREQUIPMENTINFORMATION_DEVICENAMETH_VALUE2}    ${REPAIREQUIPMENTINFORMATION_STATUSID_VALUE1}    ${LIMIT_20}    ${OFFSET_0}    null
	${dataSearchRepairEquipment}=    Set Variable    ${resultSearchRepairEquipment}[0]
	Log To Console    [dataSearchRepairEquipment] : ${dataSearchRepairEquipment}
	${rowcountSearchRepairEquipment}=    Set Variable    ${resultSearchRepairEquipment}[1]
	Log To Console    [rowcount SearchRepairEquipment] : ${rowcountSearchRepairEquipment}

	${checkNodata}=    Run Keyword If    '${rowcountSearchRepairEquipment}'=='0'    Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchRepairEquipment}'!='0'    Check Value Table Search Repair Equipment    ${DEFAULT_TH}     ${rowcountSearchRepairEquipment}    ${dataSearchRepairEquipment}
   
    #Click Clear
	Click Element Page    ${REPAIREQUIPMENTINFORMATION_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click clear button
    Click Element Page    ${REPAIREQUIPMENTINFORMATION_SEARCH_BTN_CLEAR_LOCATOR}

    #================ Check Value Table ================
    ${resultSearchRepairEquipment}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Repair Equipment    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    ${LIMIT_20}    ${OFFSET_0}    null
	${dataSearchRepairEquipment}=    Set Variable    ${resultSearchRepairEquipment}[0]
	Log To Console    [dataSearchRepairEquipment] : ${dataSearchRepairEquipment}
	${rowcountSearchRepairEquipment}=    Set Variable    ${resultSearchRepairEquipment}[1]
	Log To Console    [rowcount SearchRepairEquipment] : ${rowcountSearchRepairEquipment}

	${checkNodata}=    Run Keyword If    '${rowcountSearchRepairEquipment}'=='0'    Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchRepairEquipment}'!='0'    Check Value Table Search Repair Equipment    ${DEFAULT_TH}     ${rowcountSearchRepairEquipment}    ${dataSearchRepairEquipment}
    
Verify Action : click create button
    Click Element Page    ${REPAIREQUIPMENTINFORMATION_BTN_CREATE_LOCATOR}
	Sleep    0.5s
	#Check Pop-up Title
	Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_ADD_LBL_CREATEREPAIREQUIPMENTINFORMATION_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_ADD_LBL_CREATEREPAIREQUIPMENTINFORMATION_TH}    
	#Click Cancel button
    Click Element Page    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_BTN_CANCEL_LOCATOR}

Verify Action : click Enable button
    Click Change Status Enable To Disable
    Sleep    0.5s

Verify Action : click Disable button
    Click Element Page    ${REPAIREQUIPMENTINFORMATION_BTN_DISABLE_LOCATOR}
	Sleep    0.5s
	#Check Pop-up Title
	Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_CHANGESTATUS_LBL_TITLE_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_CHANGESTATUS_LBL_TITLE_TH}    
	#Click Cancel button
    Click Element Page    ${REPAIREQUIPMENTINFORMATION_CHANGESTATUS_BTN_CANCEL_LOCATOR}

Verify Action : click edit button
    Click Element Page    ${REPAIREQUIPMENTINFORMATION_BTN_EDIT_LOCATOR}
	Sleep    0.5s
	#Check Pop-up Title
	Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_ADD_LBL_EDITREPAIREQUIPMENTINFORMATION_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_ADD_LBL_EDITREPAIREQUIPMENTINFORMATION_TH}    
	#Click Cancel button
    Click Element Page    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_BTN_CANCEL_LOCATOR}

Verify Action : click delete button
    Check Popup Delete TH    ${REPAIREQUIPMENTINFORMATION_BTN_DELETE_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_DEVICENAMETH_VALUE1}

Verify Action : click 50 button
    Click Element Page    ${REPAIREQUIPMENTINFORMATION_BTN_50_LOCATOR}

	#================ Check Value Table ================
    ${resultSearchRepairEquipment}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Repair Equipment    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    ${LIMIT_50}    ${OFFSET_0}    null
	${dataSearchRepairEquipment}=    Set Variable    ${resultSearchRepairEquipment}[0]
	Log To Console    [dataSearchRepairEquipment] : ${dataSearchRepairEquipment}
	${rowcountSearchRepairEquipment}=    Set Variable    ${resultSearchRepairEquipment}[1]
	Log To Console    [rowcount SearchRepairEquipment] : ${rowcountSearchRepairEquipment}

	${checkNodata}=    Run Keyword If    '${rowcountSearchRepairEquipment}'=='0'    Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchRepairEquipment}'!='0'    Check Value Table Search Repair Equipment    ${DEFAULT_TH}     ${rowcountSearchRepairEquipment}    ${dataSearchRepairEquipment}

Verify Action : click 100 button
    Click Element Page    ${REPAIREQUIPMENTINFORMATION_BTN_100_LOCATOR}

	#================ Check Value Table ================
    ${resultSearchRepairEquipment}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Repair Equipment    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    ${LIMIT_100}    ${OFFSET_0}    null
	${dataSearchRepairEquipment}=    Set Variable    ${resultSearchRepairEquipment}[0]
	Log To Console    [dataSearchRepairEquipment] : ${dataSearchRepairEquipment}
	${rowcountSearchRepairEquipment}=    Set Variable    ${resultSearchRepairEquipment}[1]
	Log To Console    [rowcount SearchRepairEquipment] : ${rowcountSearchRepairEquipment}

	${checkNodata}=    Run Keyword If    '${rowcountSearchRepairEquipment}'=='0'    Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchRepairEquipment}'!='0'    Check Value Table Search Repair Equipment    ${DEFAULT_TH}     ${rowcountSearchRepairEquipment}    ${dataSearchRepairEquipment}

Verify Action : click 1000 button
    Click Element Page    ${REPAIREQUIPMENTINFORMATION_BTN_1000_LOCATOR}

	#================ Check Value Table ================
    ${resultSearchRepairEquipment}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Repair Equipment    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    ${LIMIT_1000}    ${OFFSET_0}    null
	${dataSearchRepairEquipment}=    Set Variable    ${resultSearchRepairEquipment}[0]
	Log To Console    [dataSearchRepairEquipment] : ${dataSearchRepairEquipment}
	${rowcountSearchRepairEquipment}=    Set Variable    ${resultSearchRepairEquipment}[1]
	Log To Console    [rowcount SearchRepairEquipment] : ${rowcountSearchRepairEquipment}

	${checkNodata}=    Run Keyword If    '${rowcountSearchRepairEquipment}'=='0'    Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchRepairEquipment}'!='0'    Check Value Table Search Repair Equipment    ${DEFAULT_TH}     ${rowcountSearchRepairEquipment}    ${dataSearchRepairEquipment}
    Sleep    2s

Verify Action : click confirm Enable button
    Click Change Status Disable To Enable
    Sleep    2s

Verify Action : click confirm Disable button
    Click Change Status Enable To Disable
    Sleep    2s

    #capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${REPAIREQUIPMENTINFORMATION_SEARCH_M33_1_1_1_000_SUCCESS_SCREENSHOT}

################### Generic Test Case Teardown ###################
	[Teardown]    Generic Test Case Teardown Repair Equipment Management 2    ${REPAIREQUIPMENTINFORMATION_DEVICENAMETH_VALUE1}    ${REPAIREQUIPMENTINFORMATION_DEVICENAMETH_VALUE2}
    #[Teardown]    Delete Test Data and Close Browser 2    ${REPAIREQUIPMENTINFORMATION_BTN_DELETE_LOCATOR}    ${ALERT_TITLE_DELETE_TH}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}
