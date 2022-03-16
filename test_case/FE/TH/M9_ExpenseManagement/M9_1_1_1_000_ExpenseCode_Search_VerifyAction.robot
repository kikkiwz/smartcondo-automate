*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [Search] ExpenseCodeManagement ###################
M9_1_1_1_000_ExpenseCode_Search_VerifyAction [Verify Action page "Search Expense Code"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Expense Code

    [Setup]    Open Browser To Login Page Super Admin
       
    Log To Console    ${\n}=========== [Search] ExpenseCodeManagement ===============     
    #========== Click Setting Menu ExpenseCodeManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_TH}    ${MENU_LBL_MASTERMANAGEMENT_EXPENSEMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_EXPENSEMANAGEMENT_TH}   ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_HEADER_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_HEADER_TH}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_LOCATOR}    ${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_TH}

    #========== Create Expense Code ======
    Log To Console    ${\n}=========== [Create] ExpenseCodeManagement ===============
    
    #Create button
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_BTN_CREATE_LOCATOR}    ${EXPENSECODE_BTN_CREATE_TH} 
    Wait Until Contains Element Should Be Enabled    ${EXPENSECODE_BTN_CREATE_LOCATOR}
    #Create data
    Create ExpenseCode input all field data 

    #Create button
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_BTN_CREATE_LOCATOR}    ${EXPENSECODE_BTN_CREATE_TH} 
    Wait Until Contains Element Should Be Enabled    ${EXPENSECODE_BTN_CREATE_LOCATOR}
    #Create data
    Create ExpenseCode input require field data No Check Table

    Sleep    0.5
    
Verify API onload and mapping data

    #================ Check Value Table ================
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search ExpenseCode    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchExpenseCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search ExpenseCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
Verify Action : click search button [Search Expense Code]

    #Expense Code
    Wait Until Contains Input Text    ${EXPENSECODE_SEARCH_INPUT_EXPENSECODE_LOCATOR}    ${EXPENSECODE_EXPENSECODE_VALUE}
    #Click Search
    Click Element Page    ${EXPENSECODE_SEARCH_BTN_SEARCH_LOCATOR}
    
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search ExpenseCode    ${MYSQL_TYPE_EXPENSECODE_SEARCH_EXPENSECODE}    ${EXPENSECODE_EXPENSECODE_VALUE}    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchExpenseCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search ExpenseCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
    #Click Clear
    Click Element Page    ${EXPENSECODE_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Mulct Name]

    #Mulct Name
    Wait Until Contains Input Text    ${EXPENSECODE_SEARCH_INPUT_EXPENSECODENAME_LOCATOR}    ${EXPENSECODE_EXPENSECODENAMETH_VALUE}
    #Click Search
    Click Element Page    ${EXPENSECODE_SEARCH_BTN_SEARCH_LOCATOR}
    
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search ExpenseCode    ${MYSQL_TYPE_EXPENSECODE_SEARCH_NAME}    null    ${EXPENSECODE_EXPENSECODENAMETH_VALUE}    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchExpenseCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search ExpenseCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
    #Click Clear
    Click Element Page    ${EXPENSECODE_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Status]

    #Status
    Select Dropdown    ${EXPENSECODE_SEARCH_DDL_STATUS_LOCATOR}    ${EXPENSECODE_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${EXPENSECODE_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${EXPENSECODE_STATUS_TH_VALUE1}
    Sleep    0.5s
    #Click Search
    Click Element Page    ${EXPENSECODE_SEARCH_BTN_SEARCH_LOCATOR}
    
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search ExpenseCode    ${MYSQL_TYPE_EXPENSECODE_SEARCH_STATUS}    null    null    ${EXPENSECODE_STATUSID_VALUE1}    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchExpenseCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search ExpenseCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
    #Click Clear
    Click Element Page    ${EXPENSECODE_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Expense Code and Mulct Name]

    #Expense Code
    Wait Until Contains Input Text    ${EXPENSECODE_SEARCH_INPUT_EXPENSECODE_LOCATOR}    ${EXPENSECODE_EXPENSECODE_VALUE}
    #Mulct Name
    Wait Until Contains Input Text    ${EXPENSECODE_SEARCH_INPUT_EXPENSECODENAME_LOCATOR}    ${EXPENSECODE_EXPENSECODENAMETH_VALUE}
    #Click Search
    Click Element Page    ${EXPENSECODE_SEARCH_BTN_SEARCH_LOCATOR}
    
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search ExpenseCode    ${MYSQL_TYPE_EXPENSECODE_SEARCH_EXPENSECODENAME}    ${EXPENSECODE_EXPENSECODE_VALUE}    ${EXPENSECODE_EXPENSECODENAMETH_VALUE}    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchExpenseCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search ExpenseCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
    #Click Clear
    Click Element Page    ${EXPENSECODE_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Expense Code and Status]

    #Expense Code
    Wait Until Contains Input Text    ${EXPENSECODE_SEARCH_INPUT_EXPENSECODE_LOCATOR}    ${EXPENSECODE_EXPENSECODE_VALUE}
    #Status
    Select Dropdown    ${EXPENSECODE_SEARCH_DDL_STATUS_LOCATOR}    ${EXPENSECODE_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${EXPENSECODE_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${EXPENSECODE_STATUS_TH_VALUE1}
    Sleep    0.5s
    #Click Search
    Click Element Page    ${EXPENSECODE_SEARCH_BTN_SEARCH_LOCATOR}
    
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search ExpenseCode    ${MYSQL_TYPE_EXPENSECODE_SEARCH_EXPENSECODESTATUS}    ${EXPENSECODE_EXPENSECODE_VALUE}    null    ${EXPENSECODE_STATUSID_VALUE1}    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchExpenseCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search ExpenseCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
    #Click Clear
    Click Element Page    ${EXPENSECODE_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Mulct Name and Status]
    #Mulct Name
    Wait Until Contains Input Text    ${EXPENSECODE_SEARCH_INPUT_EXPENSECODENAME_LOCATOR}    ${EXPENSECODE_EXPENSECODENAMETH_VALUE}
    #Status
    Select Dropdown    ${EXPENSECODE_SEARCH_DDL_STATUS_LOCATOR}    ${EXPENSECODE_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${EXPENSECODE_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${EXPENSECODE_STATUS_TH_VALUE1}
    Sleep    0.5s
    #Click Search
    Click Element Page    ${EXPENSECODE_SEARCH_BTN_SEARCH_LOCATOR}
    
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search ExpenseCode    ${MYSQL_TYPE_EXPENSECODE_SEARCH_NAMESTATUS}    null    ${EXPENSECODE_EXPENSECODENAMETH_VALUE}    ${EXPENSECODE_STATUSID_VALUE1}    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchExpenseCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search ExpenseCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
    #Click Clear
    Click Element Page    ${EXPENSECODE_SEARCH_BTN_CLEAR_LOCATOR}

Verify Action : click search button [Search Expense Code and Mulct Name and Status]
    #Expense Code
    Wait Until Contains Input Text    ${EXPENSECODE_SEARCH_INPUT_EXPENSECODE_LOCATOR}    ${EXPENSECODE_EXPENSECODE_VALUE}
    #Mulct Name
    Wait Until Contains Input Text    ${EXPENSECODE_SEARCH_INPUT_EXPENSECODENAME_LOCATOR}    ${EXPENSECODE_EXPENSECODENAMETH_VALUE}
    #Status
    Select Dropdown    ${EXPENSECODE_SEARCH_DDL_STATUS_LOCATOR}    ${EXPENSECODE_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${EXPENSECODE_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${EXPENSECODE_STATUS_TH_VALUE1}
    Sleep    0.5s
    #Click Search
    Click Element Page    ${EXPENSECODE_SEARCH_BTN_SEARCH_LOCATOR}
    
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search ExpenseCode    ${MYSQL_TYPE_EXPENSECODE_SEARCH_ALL}    ${EXPENSECODE_EXPENSECODE_VALUE}    ${EXPENSECODE_EXPENSECODENAMETH_VALUE}    ${EXPENSECODE_STATUSID_VALUE1}    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchExpenseCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search ExpenseCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
Verify Action : click clear button

    #Click Clear
    Click Element Page    ${EXPENSECODE_SEARCH_BTN_CLEAR_LOCATOR}

    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search ExpenseCode    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchExpenseCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search ExpenseCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
Verify Action : click create button

    #Click Create Mulctcode
    Click Element Page    ${EXPENSECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create Mulctcode
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_LOCATOR}    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_TH} 
    
    #Click Cancel button
    Click Element Page    ${EXPENSECODE_ADDEDIT_BTN_CANCEL_LOCATOR}

Verify Action : click view button

    #Click Mulctcode Details
    Click Element Page    ${EXPENSECODE_BTN_VIEW_LOCATOR}
    Sleep    0.5s
    
    #Mulctcode Details
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_VIEW_LBL_EXPENSECODEDETAILS_LOCATOR}    ${EXPENSECODE_VIEW_LBL_EXPENSECODEDETAILS_TH} 
    
    #Click X button    
    Click Element Page    ${EXPENSECODE_BTN_CLOSE_LOCATOR}

Verify Action : click edit button

    #Click Edit Mulctcode
    Click Element Page    ${EXPENSECODE_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit Mulctcode
    Wait Until Contains Element Text Should Be    ${EXPENSECODEEDIT_LBL_EDITEXPENSECODE_LOCATOR}    ${EXPENSECODEEDIT_LBL_EDITEXPENSECODE_TH} 
    
    #Click Cancel button
    Click Element Page    ${EXPENSECODE_ADDEDIT_BTN_CANCEL_LOCATOR}

Verify Action : click delete button

    ${ExpenseCode}=    Get Text String    ${EXPENSECODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}

    #Click delete button and Check Popup Delete 
    Check Popup Delete TH    ${EXPENSECODE_BTN_DELETE_LOCATOR}    ${ExpenseCode}

Verify Action : click 50 button

    #Click 50 button
    Click Element Page    ${EXPENSECODE_BTN_50_LOCATOR}

    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search ExpenseCode    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchExpenseCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search ExpenseCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
Verify Action : click 100 button

    #Click 100 button
    Click Element Page    ${EXPENSECODE_BTN_100_LOCATOR}

    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search ExpenseCode    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchExpenseCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search ExpenseCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
Verify Action : click 1000 button
    #Click 1000 button
    Click Element Page    ${EXPENSECODE_BTN_1000_LOCATOR}

    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search ExpenseCode    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BANKACCOUNT_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    ${rowcountSearch}=    Set Variable    ${resultSearch}[1]
    Log To Console    [rowcount SearchExpenseCode] : ${rowcountSearch}

    ${checkNodata}=    Run Keyword If    '${rowcountSearch}'=='0'    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearch}'!='0'    Check Value Table Search ExpenseCode    ${DEFAULT_TH}     ${rowcountSearch}    ${dataSearch}
    
    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${EXPENSECODE_SEARCH_M9_1_1_1_000_SUCCESS_SCREENSHOT}

################### Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown ExpenseCode2

