*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [Search] MulctMethodManagement ###################
M12_1_1_1_000_MulctMethod_Success_Search_VerifyAction [Verify Action page "Search Mulct Method"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Mulct Method

    [Setup]    Open Browser To Login Page Super Admin
       
    Log To Console    ${\n}=========== [Search] MulctMethodManagement ===============     
    #========== Click Setting Menu MulctMethodManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_TH}    ${MENU_LBL_MASTERMANAGEMENT_MULCTMETHODMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_MULCTMETHODMANAGEMENT_TH}   ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_TH}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_LOCATOR}    ${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_TH}

    #========== Create Mulct Method ======
    Log To Console    ${\n}=========== [Create] MulctMethodManagement ===============
    
    #Create button
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_BTN_CREATE_LOCATOR}    ${MULCTMETHOD_BTN_CREATE_TH} 
    Wait Until Contains Element Should Be Enabled    ${MULCTMETHOD_BTN_CREATE_LOCATOR}
    #Create data
    Create MulctMethod input all field data 

    #Create button
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_BTN_CREATE_LOCATOR}    ${MULCTMETHOD_BTN_CREATE_TH} 
    Wait Until Contains Element Should Be Enabled    ${MULCTMETHOD_BTN_CREATE_LOCATOR}
    #Create data
    Create MulctMethod input require field data No Check Table

    Sleep    0.5
    
Verify API onload and mapping data

    #================ Check Value Table ================
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((81, 7, None, 1, Decimal('3.00'), None, None, None, 0, None, 'รหัสรายได้', 'ชื่อรายได้ ภาษาไทย', 'ชื่อรายได้ ภาษาอังกฤษ', 'หมายเหตุ1', Decimal('1.00'), Decimal('2.00'), 7, 1, 1, datetime.datetime(2021, 11, 26, 14, 55, 10), '10', None, None, None, None, 1),), 1]
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search MulctMethod    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchMulctMethod] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search MulctMethod    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
Verify Action : click search button [Search Mulct Method Name]

    #Mulct Method Name
    Wait Until Contains Input Text    ${MULCTMETHOD_SEARCH_INPUT_MULCTMETHODNAME_LOCATOR}    ${MULCTMETHOD_MULCTMETHODNAME_VALUE}
    #Click Search
    Click Element Page    ${MULCTMETHOD_SEARCH_BTN_SEARCH_LOCATOR}
    
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((81, 7, None, 1, Decimal('3.00'), None, None, None, 0, None, 'รหัสรายได้', 'ชื่อรายได้ ภาษาไทย', 'ชื่อรายได้ ภาษาอังกฤษ', 'หมายเหตุ1', Decimal('1.00'), Decimal('2.00'), 7, 1, 1, datetime.datetime(2021, 11, 26, 14, 55, 10), '10', None, None, None, None, 1),), 1]
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search MulctMethod    ${MYSQL_TYPE_MULCTMETHOD_SEARCH_NAME}    ${MULCTMETHOD_MULCTMETHODNAME_VALUE}    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchMulctMethod] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search MulctMethod    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
    #Click Clear
    Click Element Page    ${MULCTMETHOD_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Status]

    #Status
    Select Dropdown    ${MULCTMETHOD_SEARCH_DDL_STATUS_LOCATOR}    ${MULCTMETHOD_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${MULCTMETHOD_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${MULCTMETHOD_STATUS_TH_VALUE1}
    Sleep    0.5s
    #Click Search
    Click Element Page    ${MULCTMETHOD_SEARCH_BTN_SEARCH_LOCATOR}
    
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((81, 7, None, 1, Decimal('3.00'), None, None, None, 0, None, 'รหัสรายได้', 'ชื่อรายได้ ภาษาไทย', 'ชื่อรายได้ ภาษาอังกฤษ', 'หมายเหตุ1', Decimal('1.00'), Decimal('2.00'), 7, 1, 1, datetime.datetime(2021, 11, 26, 14, 55, 10), '10', None, None, None, None, 1),), 1]
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search MulctMethod    ${MYSQL_TYPE_MULCTMETHOD_SEARCH_STATUS}    null    ${MULCTMETHOD_STATUSID_VALUE1}    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchMulctMethod] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search MulctMethod    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
    #Click Clear
    Click Element Page    ${MULCTMETHOD_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Mulct Method Name and Status]
    #Mulct Method Name
    Wait Until Contains Input Text    ${MULCTMETHOD_SEARCH_INPUT_MULCTMETHODNAME_LOCATOR}    ${MULCTMETHOD_MULCTMETHODNAME_VALUE}
    #Status
    Select Dropdown    ${MULCTMETHOD_SEARCH_DDL_STATUS_LOCATOR}    ${MULCTMETHOD_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${MULCTMETHOD_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${MULCTMETHOD_STATUS_TH_VALUE1}
    Sleep    0.5s
    #Click Search
    Click Element Page    ${MULCTMETHOD_SEARCH_BTN_SEARCH_LOCATOR}
    
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((81, 7, None, 1, Decimal('3.00'), None, None, None, 0, None, 'รหัสรายได้', 'ชื่อรายได้ ภาษาไทย', 'ชื่อรายได้ ภาษาอังกฤษ', 'หมายเหตุ1', Decimal('1.00'), Decimal('2.00'), 7, 1, 1, datetime.datetime(2021, 11, 26, 14, 55, 10), '10', None, None, None, None, 1),), 1]
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search MulctMethod    ${MYSQL_TYPE_MULCTMETHOD_SEARCH_NAMESTATUS}    ${MULCTMETHOD_MULCTMETHODNAME_VALUE}    ${MULCTMETHOD_STATUSID_VALUE1}    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchMulctMethod] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search MulctMethod    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
    #Click Clear
    Click Element Page    ${MULCTMETHOD_SEARCH_BTN_CLEAR_LOCATOR}


Verify Action : click clear button

    #Click Clear
    Click Element Page    ${MULCTMETHOD_SEARCH_BTN_CLEAR_LOCATOR}

    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((81, 7, None, 1, Decimal('3.00'), None, None, None, 0, None, 'รหัสรายได้', 'ชื่อรายได้ ภาษาไทย', 'ชื่อรายได้ ภาษาอังกฤษ', 'หมายเหตุ1', Decimal('1.00'), Decimal('2.00'), 7, 1, 1, datetime.datetime(2021, 11, 26, 14, 55, 10), '10', None, None, None, None, 1),), 1]
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search MulctMethod    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchMulctMethod] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search MulctMethod    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
Verify Action : click create button

    #Click Create MulctMethod
    Click Element Page    ${MULCTMETHOD_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create MulctMethod
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_LOCATOR}    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_TH} 
    
    #Click Cancel button
    Click Element Page    ${MULCTMETHOD_ADDEDIT_BTN_CANCEL_LOCATOR}

Verify Action : click view button

    #Click MulctMethod Details
    Click Element Page    ${MULCTMETHOD_BTN_VIEW_LOCATOR}
    Sleep    0.5s
    
    #MulctMethod Details
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_VIEW_LBL_MULCTMETHODDETAILS_LOCATOR}    ${MULCTMETHOD_VIEW_LBL_MULCTMETHODDETAILS_TH} 
    
    #Click X button    
    Click Element Page    ${MULCTMETHOD_BTN_CLOSE_LOCATOR}

Verify Action : click edit button

    #Click Edit MulctMethod
    Click Element Page    ${MULCTMETHOD_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit MulctMethod
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_EDITMULCTMETHOD_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_EDITMULCTMETHOD_TH} 
    
    #Click Cancel button
    Click Element Page    ${MULCTMETHOD_ADDEDIT_BTN_CANCEL_LOCATOR}

Verify Action : click delete button

    ${MulctMethod}=    Get Text String    ${MULCTMETHOD_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}

    #Click delete button and Check Popup Delete 
    Check Popup Delete TH    ${MULCTMETHOD_BTN_DELETE_LOCATOR}    ${MulctMethod}

Verify Action : click 50 button

    #Click 50 button
    Click Element Page    ${MULCTMETHOD_BTN_50_LOCATOR}

    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search MulctMethod    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchMulctMethod] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search MulctMethod    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
Verify Action : click 100 button

    #Click 100 button
    Click Element Page    ${MULCTMETHOD_BTN_100_LOCATOR}

    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search MulctMethod    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchMulctMethod] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search MulctMethod    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
Verify Action : click 1000 button
    #Click 1000 button
    Click Element Page    ${MULCTMETHOD_BTN_1000_LOCATOR}

    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search MulctMethod    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchMulctMethod] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search MulctMethod    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${MULCTMETHOD_SEARCH_M12_1_1_1_000_SUCCESS_SCREENSHOT}

################### Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown MulctMethod2

