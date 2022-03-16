*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [Search] MulctcodeManagement ###################
M10_1_1_1_001_MulctCode_Success_Search_VerifyAction [Verify Action page "Search Mulct Code"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Mulct Code

    [Setup]    Open Browser To Login Page Super Admin
       
    Log To Console    ${\n}=========== [Search] MulctcodeManagement ===============     
    #========== Click Setting Menu MulctcodeManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_TH}    ${MENU_LBL_MASTERMANAGEMENT_MULCTCODEMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_MULCTCODEMANAGEMENT_TH}   ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_HEADER_LOCATOR}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_HEADER_TH}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_LOCATOR}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_TH}

    #========== Create Mulct Code ======
    Log To Console    ${\n}=========== [Create] MulctcodeManagement ===============
    
    #Create button
    Wait Until Contains Element Text Should Be    ${MULCTCODE_BTN_CREATE_LOCATOR}    ${MULCTCODE_BTN_CREATE_TH} 
    Wait Until Contains Element Should Be Enabled    ${MULCTCODE_BTN_CREATE_LOCATOR}
    #Create data
    Create MulctCode input all field data 

    #Create button
    Wait Until Contains Element Text Should Be    ${MULCTCODE_BTN_CREATE_LOCATOR}    ${MULCTCODE_BTN_CREATE_TH} 
    Wait Until Contains Element Should Be Enabled    ${MULCTCODE_BTN_CREATE_LOCATOR}
    #Create data
    Create MulctCode input require field data No Check Table and No Create MulctMethod

    Sleep    0.5
    
Verify API onload and mapping data

    #================ Check Value Table ================
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search MulctCode    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchMulctCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search MulctCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
Verify Action : click search button [Search Mulct Code]

    #Mulct Code
    Wait Until Contains Input Text    ${MULCTCODE_SEARCH_INPUT_MULCTCODE_LOCATOR}    ${MULCTCODE_MULCTCODE_VALUE}
    #Click Search
    Click Element Page    ${MULCTCODE_SEARCH_BTN_SEARCH_LOCATOR}
    
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search MulctCode    ${MYSQL_TYPE_MULCTCODE_SEARCH_MULCTCODE}    ${MULCTCODE_MULCTCODE_VALUE}    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchMulctCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search MulctCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
    #Click Clear
    Click Element Page    ${MULCTCODE_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Mulct Name]

    #Mulct Name
    Wait Until Contains Input Text    ${MULCTCODE_SEARCH_INPUT_MULCTNAME_LOCATOR}    ${MULCTCODE_MULCTCODENAMETH_VALUE}
    #Click Search
    Click Element Page    ${MULCTCODE_SEARCH_BTN_SEARCH_LOCATOR}
    
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search MulctCode    ${MYSQL_TYPE_MULCTCODE_SEARCH_NAME}    null    ${MULCTCODE_MULCTCODENAMETH_VALUE}    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchMulctCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search MulctCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
    #Click Clear
    Click Element Page    ${MULCTCODE_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Status]

    #Status
    Select Dropdown    ${MULCTCODE_SEARCH_DDL_STATUS_LOCATOR}    ${MULCTCODE_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${MULCTCODE_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${MULCTCODE_STATUS_TH_VALUE1}
    Sleep    0.5s
    #Click Search
    Click Element Page    ${MULCTCODE_SEARCH_BTN_SEARCH_LOCATOR}
    
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search MulctCode    ${MYSQL_TYPE_MULCTCODE_SEARCH_STATUS}    null    null    ${MULCTCODE_STATUSID_VALUE1}    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchMulctCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search MulctCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
    #Click Clear
    Click Element Page    ${MULCTCODE_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Mulct Code and Mulct Name]

    #Mulct Code
    Wait Until Contains Input Text    ${MULCTCODE_SEARCH_INPUT_MULCTCODE_LOCATOR}    ${MULCTCODE_MULCTCODE_VALUE}
    #Mulct Name
    Wait Until Contains Input Text    ${MULCTCODE_SEARCH_INPUT_MULCTNAME_LOCATOR}    ${MULCTCODE_MULCTCODENAMETH_VALUE}
    #Click Search
    Click Element Page    ${MULCTCODE_SEARCH_BTN_SEARCH_LOCATOR}
    
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search MulctCode    ${MYSQL_TYPE_MULCTCODE_SEARCH_MULCTCODENAME}    ${MULCTCODE_MULCTCODE_VALUE}    ${MULCTCODE_MULCTCODENAMETH_VALUE}    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchMulctCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search MulctCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
    #Click Clear
    Click Element Page    ${MULCTCODE_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Mulct Code and Status]

    #Mulct Code
    Wait Until Contains Input Text    ${MULCTCODE_SEARCH_INPUT_MULCTCODE_LOCATOR}    ${MULCTCODE_MULCTCODE_VALUE}
    #Status
    Select Dropdown    ${MULCTCODE_SEARCH_DDL_STATUS_LOCATOR}    ${MULCTCODE_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${MULCTCODE_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${MULCTCODE_STATUS_TH_VALUE1}
    Sleep    0.5s
    #Click Search
    Click Element Page    ${MULCTCODE_SEARCH_BTN_SEARCH_LOCATOR}
    
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search MulctCode    ${MYSQL_TYPE_MULCTCODE_SEARCH_MULCTCODESTATUS}    ${MULCTCODE_MULCTCODE_VALUE}    null    ${MULCTCODE_STATUSID_VALUE1}    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchMulctCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search MulctCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
    #Click Clear
    Click Element Page    ${MULCTCODE_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Mulct Name and Status]
    #Mulct Name
    Wait Until Contains Input Text    ${MULCTCODE_SEARCH_INPUT_MULCTNAME_LOCATOR}    ${MULCTCODE_MULCTCODENAMETH_VALUE}
    #Status
    Select Dropdown    ${MULCTCODE_SEARCH_DDL_STATUS_LOCATOR}    ${MULCTCODE_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${MULCTCODE_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${MULCTCODE_STATUS_TH_VALUE1}
    Sleep    0.5s
    #Click Search
    Click Element Page    ${MULCTCODE_SEARCH_BTN_SEARCH_LOCATOR}
    
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search MulctCode    ${MYSQL_TYPE_MULCTCODE_SEARCH_NAMESTATUS}    null    ${MULCTCODE_MULCTCODENAMETH_VALUE}    ${MULCTCODE_STATUSID_VALUE1}    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchMulctCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search MulctCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
    #Click Clear
    Click Element Page    ${MULCTCODE_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Mulct Code and Mulct Name and Status]
    #Mulct Code
    Wait Until Contains Input Text    ${MULCTCODE_SEARCH_INPUT_MULCTCODE_LOCATOR}    ${MULCTCODE_MULCTCODE_VALUE}
    #Mulct Name
    Wait Until Contains Input Text    ${MULCTCODE_SEARCH_INPUT_MULCTNAME_LOCATOR}    ${MULCTCODE_MULCTCODENAMETH_VALUE}
    #Status
    Select Dropdown    ${MULCTCODE_SEARCH_DDL_STATUS_LOCATOR}    ${MULCTCODE_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${MULCTCODE_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${MULCTCODE_STATUS_TH_VALUE1}
    Sleep    0.5s
    #Click Search
    Click Element Page    ${MULCTCODE_SEARCH_BTN_SEARCH_LOCATOR}
    
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search MulctCode    ${MYSQL_TYPE_MULCTCODE_SEARCH_ALL}    ${MULCTCODE_MULCTCODE_VALUE}    ${MULCTCODE_MULCTCODENAMETH_VALUE}    ${MULCTCODE_STATUSID_VALUE1}    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchMulctCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search MulctCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
Verify Action : click clear button

    #Click Clear
    Click Element Page    ${MULCTCODE_SEARCH_BTN_CLEAR_LOCATOR}

    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search MulctCode    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchMulctCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search MulctCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
Verify Action : click create button

    #Click Create Mulctcode
    Click Element Page    ${MULCTCODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create Mulctcode
    Wait Until Contains Element Text Should Be    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_LOCATOR}    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_TH} 
    
    #Click Cancel button
    Click Element Page    ${MULCTCODE_ADDEDIT_BTN_CANCEL_LOCATOR}

Verify Action : click view button

    #Click Mulctcode Details
    Click Element Page    ${MULCTCODE_BTN_VIEW_LOCATOR}
    Sleep    0.5s
    
    #Mulctcode Details
    Wait Until Contains Element Text Should Be    ${MULCTCODE_VIEW_LBL_MULCTCODEDETAILS_LOCATOR}    ${MULCTCODE_VIEW_LBL_MULCTCODEDETAILS_TH} 
    
    #Click X button    
    Click Element Page    ${MULCTCODE_BTN_CLOSE_LOCATOR}

Verify Action : click edit button

    #Click Edit Mulctcode
    Click Element Page    ${MULCTCODE_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit Mulctcode
    Wait Until Contains Element Text Should Be    ${MULCTCODEEDIT_LBL_EDITMULCTCODE_LOCATOR}    ${MULCTCODEEDIT_LBL_EDITMULCTCODE_TH} 
    
    #Click Cancel button
    Click Element Page    ${MULCTCODE_ADDEDIT_BTN_CANCEL_LOCATOR}

Verify Action : click delete button

    ${MulctCode}=    Get Text String    ${MULCTCODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}

    #Click delete button and Check Popup Delete 
    Check Popup Delete TH    ${MULCTCODE_BTN_DELETE_LOCATOR}    ${MulctCode}

Verify Action : click 50 button

    #Click 50 button
    Click Element Page    ${MULCTCODE_BTN_50_LOCATOR}

    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search MulctCode    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchMulctCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search MulctCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
Verify Action : click 100 button

    #Click 100 button
    Click Element Page    ${MULCTCODE_BTN_100_LOCATOR}

    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search MulctCode    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchMulctCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search MulctCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
Verify Action : click 1000 button
    #Click 1000 button
    Click Element Page    ${MULCTCODE_BTN_1000_LOCATOR}

    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search MulctCode    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchMulctCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search MulctCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${MULCTCODE_SEARCH_M10_1_1_1_001_SUCCESS_SCREENSHOT}

################### Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown MulctCode2    ${MULCTCODE_MULCTMETHOD_NAMETH_VALUE}    ${mulctMethodId}

