*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [Search] IncomecodeManagement ###################
M11_1_1_1_000_IncomeCode_Success_Search_VerifyAction [Verify Action page "Search Income Code"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Income Code

    [Setup]    Open Browser To Login Page Super Admin
       
    Log To Console    ${\n}=========== [Search] IncomecodeManagement ===============     
    #========== Click Setting Menu IncomecodeManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_TH}    ${MENU_LBL_MASTERMANAGEMENT_INCOMECODEMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_INCOMECODEMANAGEMENT_TH}   ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_HEADER_LOCATOR}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_HEADER_TH}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_LOCATOR}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_TH}

    #========== Create Income Code ======
    Log To Console    ${\n}=========== [Create] IncomecodeManagement ===============
    
    #Create button
    Wait Until Contains Element Text Should Be    ${INCOMECODE_BTN_CREATE_LOCATOR}    ${INCOMECODE_BTN_CREATE_TH} 
    Wait Until Contains Element Should Be Enabled    ${INCOMECODE_BTN_CREATE_LOCATOR}
    #Create data
    Create IncomeCode input all field data 

    #Create button
    Wait Until Contains Element Text Should Be    ${INCOMECODE_BTN_CREATE_LOCATOR}    ${INCOMECODE_BTN_CREATE_TH} 
    Wait Until Contains Element Should Be Enabled    ${INCOMECODE_BTN_CREATE_LOCATOR}
    #Create data
    Create IncomeCode input require field data No Check Table and No Create MulctMethod

    Sleep    0.5
    
Verify API onload and mapping data

    #================ Check Value Table ================
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((81, 7, None, 1, Decimal('3.00'), None, None, None, 0, None, 'รหัสรายได้', 'ชื่อรายได้ ภาษาไทย', 'ชื่อรายได้ ภาษาอังกฤษ', 'หมายเหตุ1', Decimal('1.00'), Decimal('2.00'), 7, 1, 1, datetime.datetime(2021, 11, 26, 14, 55, 10), '10', None, None, None, None, 1),), 1]
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search IncomeCode    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchIncomeCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search IncomeCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
Verify Action : click search button [Search Income Code]

    #Income Code
    Wait Until Contains Input Text    ${INCOMECODE_SEARCH_INPUT_INCOMECODE_LOCATOR}    ${INCOMECODE_INCOMECODE_VALUE}
    #Click Search
    Click Element Page    ${INCOMECODE_SEARCH_BTN_SEARCH_LOCATOR}
    
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((81, 7, None, 1, Decimal('3.00'), None, None, None, 0, None, 'รหัสรายได้', 'ชื่อรายได้ ภาษาไทย', 'ชื่อรายได้ ภาษาอังกฤษ', 'หมายเหตุ1', Decimal('1.00'), Decimal('2.00'), 7, 1, 1, datetime.datetime(2021, 11, 26, 14, 55, 10), '10', None, None, None, None, 1),), 1]
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search IncomeCode    ${MYSQL_TYPE_INCOMECODE_SEARCH_INCOMECODE}    ${INCOMECODE_INCOMECODE_VALUE}    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchIncomeCode] : ${rowcountSearch}

    ${d}=    Selenium2Library.Get Text    ${INCOMECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}
    Log To Console    GetText${d}
    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search IncomeCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
    #Click Clear
    Click Element Page    ${INCOMECODE_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Income Name]

    #Income Name
    Wait Until Contains Input Text    ${INCOMECODE_SEARCH_INPUT_INCOMENAME_LOCATOR}    ${INCOMECODE_INCOMECODENAMETH_VALUE}
    #Click Search
    Click Element Page    ${INCOMECODE_SEARCH_BTN_SEARCH_LOCATOR}
    
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((81, 7, None, 1, Decimal('3.00'), None, None, None, 0, None, 'รหัสรายได้', 'ชื่อรายได้ ภาษาไทย', 'ชื่อรายได้ ภาษาอังกฤษ', 'หมายเหตุ1', Decimal('1.00'), Decimal('2.00'), 7, 1, 1, datetime.datetime(2021, 11, 26, 14, 55, 10), '10', None, None, None, None, 1),), 1]
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search IncomeCode    ${MYSQL_TYPE_MULCTCODE_SEARCH_NAME}    null    ${INCOMECODE_INCOMECODENAMETH_VALUE}    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchIncomeCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search IncomeCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
    #Click Clear
    Click Element Page    ${INCOMECODE_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Status]

    #Status
    Select Dropdown    ${INCOMECODE_SEARCH_DDL_STATUS_LOCATOR}    ${INCOMECODE_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${INCOMECODE_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${INCOMECODE_STATUS_TH_VALUE1}
    Sleep    0.5s
    #Click Search
    Click Element Page    ${INCOMECODE_SEARCH_BTN_SEARCH_LOCATOR}
    
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((81, 7, None, 1, Decimal('3.00'), None, None, None, 0, None, 'รหัสรายได้', 'ชื่อรายได้ ภาษาไทย', 'ชื่อรายได้ ภาษาอังกฤษ', 'หมายเหตุ1', Decimal('1.00'), Decimal('2.00'), 7, 1, 1, datetime.datetime(2021, 11, 26, 14, 55, 10), '10', None, None, None, None, 1),), 1]
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search IncomeCode    ${MYSQL_TYPE_MULCTCODE_SEARCH_STATUS}    null    null    ${INCOMECODE_STATUSID_VALUE1}    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchIncomeCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search IncomeCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
    #Click Clear
    Click Element Page    ${INCOMECODE_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Income Code and Income Name]

    #Income Code
    Wait Until Contains Input Text    ${INCOMECODE_SEARCH_INPUT_INCOMECODE_LOCATOR}    ${INCOMECODE_INCOMECODE_VALUE}
    #Income Name
    Wait Until Contains Input Text    ${INCOMECODE_SEARCH_INPUT_INCOMENAME_LOCATOR}    ${INCOMECODE_INCOMECODENAMETH_VALUE}
    #Click Search
    Click Element Page    ${INCOMECODE_SEARCH_BTN_SEARCH_LOCATOR}
    
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((81, 7, None, 1, Decimal('3.00'), None, None, None, 0, None, 'รหัสรายได้', 'ชื่อรายได้ ภาษาไทย', 'ชื่อรายได้ ภาษาอังกฤษ', 'หมายเหตุ1', Decimal('1.00'), Decimal('2.00'), 7, 1, 1, datetime.datetime(2021, 11, 26, 14, 55, 10), '10', None, None, None, None, 1),), 1]
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search IncomeCode    ${MYSQL_TYPE_INCOMECODE_SEARCH_INCOMECODENAME}    ${INCOMECODE_INCOMECODE_VALUE}    ${INCOMECODE_INCOMECODENAMETH_VALUE}    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchIncomeCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search IncomeCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
    #Click Clear
    Click Element Page    ${INCOMECODE_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Income Code and Status]

    #Income Code
    Wait Until Contains Input Text    ${INCOMECODE_SEARCH_INPUT_INCOMECODE_LOCATOR}    ${INCOMECODE_INCOMECODE_VALUE}
    #Status
    Select Dropdown    ${INCOMECODE_SEARCH_DDL_STATUS_LOCATOR}    ${INCOMECODE_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${INCOMECODE_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${INCOMECODE_STATUS_TH_VALUE1}
    Sleep    0.5s
    #Click Search
    Click Element Page    ${INCOMECODE_SEARCH_BTN_SEARCH_LOCATOR}
    
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((81, 7, None, 1, Decimal('3.00'), None, None, None, 0, None, 'รหัสรายได้', 'ชื่อรายได้ ภาษาไทย', 'ชื่อรายได้ ภาษาอังกฤษ', 'หมายเหตุ1', Decimal('1.00'), Decimal('2.00'), 7, 1, 1, datetime.datetime(2021, 11, 26, 14, 55, 10), '10', None, None, None, None, 1),), 1]
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search IncomeCode    ${MYSQL_TYPE_INCOMECODE_SEARCH_INCOMECODESTATUS}    ${INCOMECODE_INCOMECODE_VALUE}    null    ${INCOMECODE_STATUSID_VALUE1}    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchIncomeCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search IncomeCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
    #Click Clear
    Click Element Page    ${INCOMECODE_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Income Name and Status]
    #Income Name
    Wait Until Contains Input Text    ${INCOMECODE_SEARCH_INPUT_INCOMENAME_LOCATOR}    ${INCOMECODE_INCOMECODENAMETH_VALUE}
    #Status
    Select Dropdown    ${INCOMECODE_SEARCH_DDL_STATUS_LOCATOR}    ${INCOMECODE_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${INCOMECODE_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${INCOMECODE_STATUS_TH_VALUE1}
    Sleep    0.5s
    #Click Search
    Click Element Page    ${INCOMECODE_SEARCH_BTN_SEARCH_LOCATOR}
    
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((81, 7, None, 1, Decimal('3.00'), None, None, None, 0, None, 'รหัสรายได้', 'ชื่อรายได้ ภาษาไทย', 'ชื่อรายได้ ภาษาอังกฤษ', 'หมายเหตุ1', Decimal('1.00'), Decimal('2.00'), 7, 1, 1, datetime.datetime(2021, 11, 26, 14, 55, 10), '10', None, None, None, None, 1),), 1]
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search IncomeCode    ${MYSQL_TYPE_MULCTCODE_SEARCH_NAMESTATUS}    null    ${INCOMECODE_INCOMECODENAMETH_VALUE}    ${INCOMECODE_STATUSID_VALUE1}    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchIncomeCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search IncomeCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
    #Click Clear
    Click Element Page    ${INCOMECODE_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Income Code and Income Name and Status]
    #Income Code
    Wait Until Contains Input Text    ${INCOMECODE_SEARCH_INPUT_INCOMECODE_LOCATOR}    ${INCOMECODE_INCOMECODE_VALUE}
    #Income Name
    Wait Until Contains Input Text    ${INCOMECODE_SEARCH_INPUT_INCOMENAME_LOCATOR}    ${INCOMECODE_INCOMECODENAMETH_VALUE}
    #Status
    Select Dropdown    ${INCOMECODE_SEARCH_DDL_STATUS_LOCATOR}    ${INCOMECODE_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${INCOMECODE_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${INCOMECODE_STATUS_TH_VALUE1}
    Sleep    0.5s
    #Click Search
    Click Element Page    ${INCOMECODE_SEARCH_BTN_SEARCH_LOCATOR}
    
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((81, 7, None, 1, Decimal('3.00'), None, None, None, 0, None, 'รหัสรายได้', 'ชื่อรายได้ ภาษาไทย', 'ชื่อรายได้ ภาษาอังกฤษ', 'หมายเหตุ1', Decimal('1.00'), Decimal('2.00'), 7, 1, 1, datetime.datetime(2021, 11, 26, 14, 55, 10), '10', None, None, None, None, 1),), 1]
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search IncomeCode    ${MYSQL_TYPE_MULCTCODE_SEARCH_ALL}    ${INCOMECODE_INCOMECODE_VALUE}    ${INCOMECODE_INCOMECODENAMETH_VALUE}    ${INCOMECODE_STATUSID_VALUE1}    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchIncomeCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search IncomeCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
Verify Action : click clear button

    #Click Clear
    Click Element Page    ${INCOMECODE_SEARCH_BTN_CLEAR_LOCATOR}

    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((81, 7, None, 1, Decimal('3.00'), None, None, None, 0, None, 'รหัสรายได้', 'ชื่อรายได้ ภาษาไทย', 'ชื่อรายได้ ภาษาอังกฤษ', 'หมายเหตุ1', Decimal('1.00'), Decimal('2.00'), 7, 1, 1, datetime.datetime(2021, 11, 26, 14, 55, 10), '10', None, None, None, None, 1),), 1]
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search IncomeCode    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchIncomeCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search IncomeCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
Verify Action : click create button

    #Click Create IncomeCode
    Click Element Page    ${INCOMECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create IncomeCode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_TH} 
    
    #Click Cancel button
    Click Element Page    ${INCOMECODE_ADDEDIT_BTN_CANCEL_LOCATOR}

Verify Action : click view button

    #Click IncomeCode Details
    Click Element Page    ${INCOMECODE_BTN_VIEW_LOCATOR}
    Sleep    0.5s
    
    #IncomeCode Details
    Wait Until Contains Element Text Should Be    ${INCOMECODE_VIEW_LBL_INCOMECODEDETAILS_LOCATOR}    ${INCOMECODE_VIEW_LBL_INCOMECODEDETAILS_TH} 
    
    #Click X button    
    Click Element Page    ${INCOMECODE_BTN_CLOSE_LOCATOR}

Verify Action : click edit button

    #Click Edit IncomeCode
    Click Element Page    ${INCOMECODE_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit IncomeCode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_EDITINCOMECODE_LOCATOR}    ${INCOMECODE_EDIT_LBL_EDITINCOMECODE_TH} 
    
    #Click Cancel button
    Click Element Page    ${INCOMECODE_ADDEDIT_BTN_CANCEL_LOCATOR}

Verify Action : click delete button

    ${IncomeCode}=    Get Text String    ${INCOMECODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}

    #Click delete button and Check Popup Delete 
    Check Popup Delete TH    ${INCOMECODE_BTN_DELETE_LOCATOR}    ${IncomeCode}

Verify Action : click 50 button

    #Click 50 button
    Click Element Page    ${INCOMECODE_BTN_50_LOCATOR}

    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search IncomeCode    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchIncomeCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search IncomeCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
Verify Action : click 100 button

    #Click 100 button
    Click Element Page    ${INCOMECODE_BTN_100_LOCATOR}

    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search IncomeCode    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchIncomeCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search IncomeCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
Verify Action : click 1000 button
    #Click 1000 button
    Click Element Page    ${INCOMECODE_BTN_1000_LOCATOR}

    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search IncomeCode    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchIncomeCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search IncomeCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${INCOMECODE_SEARCH_M11_1_1_1_000_SUCCESS_SCREENSHOT}

################### Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown IncomeCode2    ${DATA_MULCTMETHOD_NAMETH_VALUE}    ${mulctCodeId}    ${mulctMethodId}

