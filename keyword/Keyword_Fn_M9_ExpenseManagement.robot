*** Keywords ***
################################################################-- Set Data for check value table ExpenseCode--################################################################
Set Data for check value table ExpenseCode
    # Set field header table To Array
    ${numCol}=    Convert To Integer    ${EXPENSECODE_SEARCH_NUMCOL}
    #Set field header table To Array
    @{fieldArrDataTable}=    Create List    
    Append To List    ${fieldArrDataTable}    @{EXPENSECODE_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_TH}
    # Append To List    ${fieldArrDataTable}    no    expenseCode    expenseCodeNameTh    status
    #Set Num field To Array
    @{arrNumfield}=    Create List    
    Append To List    ${arrNumfield}    ${numCol-4}    ${numCol-3}    ${numCol-2}    ${numCol-1}
    #Set Num Col To Array
    @{arrNumCol}=    Create List    
    Append To List    ${arrNumCol}    ${numCol-3}    ${numCol-2}    ${numCol-1}    ${numCol}
    [Return]    ${numCol}    ${fieldArrDataTable}    ${arrNumfield}    ${arrNumCol}
    
Set Data for check value table ExpenseCode EN
    #Set field header table To Array
    ${numCol}=    Convert To Integer    ${EXPENSECODE_SEARCH_NUMCOL}
    #Set field header table To Array
    @{fieldArrDataTable}=    Create List    
    Append To List    ${fieldArrDataTable}    @{EXPENSECODE_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_EN}
    # Append To List    ${fieldArrDataTable}    no    expenseCode    expenseCodeNameEn    status
    #Set Num field To Array
    @{arrNumfield}=    Create List    
    Append To List    ${arrNumfield}    ${numCol-4}    ${numCol-3}    ${numCol-2}    ${numCol-1}
    #Set Num Col To Array
    @{arrNumCol}=    Create List    
    Append To List    ${arrNumCol}    ${numCol-3}    ${numCol-2}    ${numCol-1}    ${numCol}
    [Return]    ${numCol}    ${fieldArrDataTable}    ${arrNumfield}    ${arrNumCol}
    
Check Value Table ExpenseCode
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search ExpenseCode    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_EXPENSECODE_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    Set Global Variable    ${rowcountSearchExpenseCode}    ${resultSearch}[1]
    Log To Console    [rowcount SearchExpenseCode] : ${rowcountSearchExpenseCode}

    ${checkNodata}=    Run Keyword If    '${rowcountSearchExpenseCode}'=='0'    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchExpenseCode}'!='0'    Check Value Table Search ExpenseCode    ${DEFAULT_TH}     ${rowcountSearchExpenseCode}    ${dataSearch}
    
    [Return]    ${rowcountSearchExpenseCode}

Check Value Table ExpenseCode EN
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search ExpenseCode    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_EXPENSECODE_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    Set Global Variable    ${rowcountSearchExpenseCode}    ${resultSearch}[1]
    Log To Console    [rowcount SearchExpenseCode] : ${rowcountSearchExpenseCode}

    ${checkNodata}=    Run Keyword If    '${rowcountSearchExpenseCode}'=='0'    Wait Until Contains Element Text Should Be    ${EXPENSECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchExpenseCode}'!='0'    Check Value Table Search ExpenseCode    ${DEFAULT_EN}     ${rowcountSearchExpenseCode}    ${dataSearch}
    
    [Return]    ${rowcountSearchExpenseCode}
################################################################-- Create ExpenseCode--################################################################
#====== Check DB ==========
Create ExpenseCode input all field data 
    
    #Click Create ExpenseCode
    Click Element Page    ${EXPENSECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create ExpenseCode
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_LOCATOR}    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_TH} 

    #ExpenseCode NameTh *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_TXT_EXPENSECODENAMETH_LOCATOR}    ${EXPENSECODE_EXPENSECODENAMETH_VALUE}
    #ExpenseCode NameEn 
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_TXT_EXPENSECODENAMEEN_LOCATOR}    ${EXPENSECODE_EXPENSECODENAMEEN_VALUE}
    #ExpenseCode *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_TXT_EXPENSECODE_LOCATOR}    ${EXPENSECODE_EXPENSECODE_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_INPUT_PRICEPERUNIT_LOCATOR}    ${EXPENSECODE_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_INPUT_VAT_LOCATOR}    ${EXPENSECODE_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_INPUT_TAX_LOCATOR}    ${EXPENSECODE_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_TXTAREA_REMARK_LOCATOR}    ${EXPENSECODE_REMARK_VALUE}

    #Status *
    Select Dropdown    ${EXPENSECODE_ADD_DDL_STATUS_LOCATOR}    ${EXPENSECODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${EXPENSECODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${EXPENSECODE_STATUS_TH_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${EXPENSECODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${EXPENSECODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${EXPENSECODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${EXPENSECODE_GROUPTYPE_TH_VALUE1}
    Sleep    0.5s
   
    #Click Save button
    Click Element Page    ${EXPENSECODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}
    
    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table ExpenseCode

    ${data}=    Evaluate    {"no":"1", "expenseCode":"${EXPENSECODE_EXPENSECODE_VALUE}", "expenseCodeNameTh":"${EXPENSECODE_EXPENSECODENAMETH_VALUE}", "expenseCodeNameEn":"${EXPENSECODE_EXPENSECODENAMEEN_VALUE}","status":"${EXPENSECODE_STATUS_TH_VALUE1}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Check Value Table    ${EXPENSECODE_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table ExpenseCode

    #================ Verify DB ================    
    Request Verify DB Check Data Create ExpenseCode    ${MYSQL_TYPE_CREATE_ALLFIELD}    ${EXPENSECODE_EXPENSECODENAMETH_VALUE}    ${EXPENSECODE_EXPENSECODENAMEEN_VALUE}    ${EXPENSECODE_EXPENSECODE_VALUE}    ${EXPENSECODE_PRICEPERUNIT_VALUE}    ${EXPENSECODE_VAT_VALUE}    ${EXPENSECODE_TAX_VALUE}    ${EXPENSECODE_REMARK_VALUE}    ${EXPENSECODE_STATUSID_VALUE1}    ${EXPENSECODE_GROUPTYPEID_VALUE1}
    
Create ExpenseCode input require field data
    
    #Click Create ExpenseCode
    Click Element Page    ${EXPENSECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create ExpenseCode
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_LOCATOR}    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_TH} 

    #ExpenseCode NameTh *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_TXT_EXPENSECODENAMETH_LOCATOR}    ${EXPENSECODE_EXPENSECODENAMETH2_VALUE}
    #ExpenseCode *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_TXT_EXPENSECODE_LOCATOR}    ${EXPENSECODE_EXPENSECODE2_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_INPUT_PRICEPERUNIT_LOCATOR}    ${EXPENSECODE_PRICEPERUNIT2_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_INPUT_VAT_LOCATOR}    ${EXPENSECODE_VAT2_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_INPUT_TAX_LOCATOR}    ${EXPENSECODE_TAX2_VALUE}

    #Status *
    Select Dropdown    ${EXPENSECODE_ADD_DDL_STATUS_LOCATOR}    ${EXPENSECODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${EXPENSECODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${EXPENSECODE_STATUS_TH_VALUE2}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${EXPENSECODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${EXPENSECODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${EXPENSECODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${EXPENSECODE_GROUPTYPE_TH_VALUE2}
    Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${EXPENSECODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}
    
    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table ExpenseCode

    ${data}=    Evaluate    {"no":"1", "expenseCode":"${EXPENSECODE_EXPENSECODE2_VALUE}", "expenseCodeNameTh":"${EXPENSECODE_EXPENSECODENAMETH2_VALUE}", "expenseCodeNameEn":"","status":"${EXPENSECODE_STATUS_TH_VALUE2}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Check Value Table    ${EXPENSECODE_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table ExpenseCode

    #================ Verify DB ================    
    Request Verify DB Check Data Create ExpenseCode    ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${EXPENSECODE_EXPENSECODENAMETH2_VALUE}    ${EXPENSECODE_EXPENSECODENAMEEN_VALUE_NONE}    ${EXPENSECODE_EXPENSECODE2_VALUE}    ${EXPENSECODE_PRICEPERUNIT2_VALUE}    ${EXPENSECODE_VAT2_VALUE}    ${EXPENSECODE_TAX2_VALUE}    ${EXPENSECODE_REMARK_VALUE_NONE}    ${EXPENSECODE_STATUSID_VALUE2}    ${EXPENSECODE_GROUPTYPEID_VALUE2}
    
#====== No Check Table ==========
Create ExpenseCode input all field data No Check Table 
    
    #Click Create ExpenseCode
    Click Element Page    ${EXPENSECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create ExpenseCode
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_LOCATOR}    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_TH} 

    #ExpenseCode NameTh *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_TXT_EXPENSECODENAMETH_LOCATOR}    ${EXPENSECODE_EXPENSECODENAMETH_VALUE}
    #ExpenseCode NameEn
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_TXT_EXPENSECODENAMEEN_LOCATOR}    ${EXPENSECODE_EXPENSECODENAMEEN_VALUE}
    #ExpenseCode *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_TXT_EXPENSECODE_LOCATOR}    ${EXPENSECODE_EXPENSECODE_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_INPUT_PRICEPERUNIT_LOCATOR}    ${EXPENSECODE_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_INPUT_VAT_LOCATOR}    ${EXPENSECODE_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_INPUT_TAX_LOCATOR}    ${EXPENSECODE_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_TXTAREA_REMARK_LOCATOR}    ${EXPENSECODE_REMARK_VALUE}

    #Status *
    Select Dropdown    ${EXPENSECODE_ADD_DDL_STATUS_LOCATOR}    ${EXPENSECODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${EXPENSECODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${EXPENSECODE_STATUS_TH_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${EXPENSECODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${EXPENSECODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${EXPENSECODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${EXPENSECODE_GROUPTYPE_TH_VALUE1}
    Sleep    0.5s
   
    #Click Save button
    Click Element Page    ${EXPENSECODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

Create ExpenseCode input require field data No Check Table
#========== Create MulctMethod ======
    
    #Click Create ExpenseCode
    Click Element Page    ${EXPENSECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s

    #Create ExpenseCode
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_LOCATOR}    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_TH} 

    #ExpenseCode NameTh *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_TXT_EXPENSECODENAMETH_LOCATOR}    ${EXPENSECODE_EXPENSECODENAMETH2_VALUE}
    #ExpenseCode *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_TXT_EXPENSECODE_LOCATOR}    ${EXPENSECODE_EXPENSECODE2_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_INPUT_PRICEPERUNIT_LOCATOR}    ${EXPENSECODE_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_INPUT_VAT_LOCATOR}    ${EXPENSECODE_VAT2_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_INPUT_TAX_LOCATOR}    ${EXPENSECODE_TAX2_VALUE}

    #Status *
    Select Dropdown    ${EXPENSECODE_ADD_DDL_STATUS_LOCATOR}    ${EXPENSECODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${EXPENSECODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${EXPENSECODE_STATUS_TH_VALUE2}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${EXPENSECODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${EXPENSECODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${EXPENSECODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${EXPENSECODE_GROUPTYPE_TH_VALUE2}
    Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${EXPENSECODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

################################################################################################################################
################################################################-- Edit ExpenseCode --################################################################
Edit ExpenseCode input all field data 
    #Click Edit ExpenseCode
    Click Element Page    ${EXPENSECODE_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit ExpenseCode
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_EDIT_LBL_EDITEXPENSECODE_LOCATOR}    ${EXPENSECODE_EDIT_LBL_EDITEXPENSECODE_TH} 

    #ExpenseCode NameTh *
    Wait Until Contains Input Text    ${EXPENSECODE_EDIT_TXT_EXPENSECODENAMETH_LOCATOR}    ${EXPENSECODE_EXPENSECODENAMETH_VALUE}
    #ExpenseCode NameEn
    Wait Until Contains Input Text    ${EXPENSECODE_EDIT_TXT_EXPENSECODENAMEEN_LOCATOR}    ${EXPENSECODE_EXPENSECODENAMEEN_VALUE}
    #ExpenseCode *
    Wait Until Contains Input Text    ${EXPENSECODE_EDIT_TXT_EXPENSECODE_LOCATOR}    ${EXPENSECODE_EXPENSECODE_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${EXPENSECODE_EDIT_INPUT_PRICEPERUNIT_LOCATOR}    ${EXPENSECODE_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${EXPENSECODE_EDIT_INPUT_VAT_LOCATOR}    ${EXPENSECODE_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${EXPENSECODE_EDIT_INPUT_TAX_LOCATOR}    ${EXPENSECODE_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${EXPENSECODE_EDIT_TXTAREA_REMARK_LOCATOR}    ${EXPENSECODE_REMARK_VALUE}

    #Status *
    Select Dropdown    ${EXPENSECODE_EDIT_DDL_STATUS_LOCATOR}    ${EXPENSECODE_EDIT_DDL_STATUS_LIST_LOCATOR}    ${EXPENSECODE_EDIT_DDL_STATUS_CLASS_LOCATOR}    ${EXPENSECODE_STATUS_TH_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${EXPENSECODE_EDIT_DDL_GROUPTYPE_LOCATOR}    ${EXPENSECODE_EDIT_DDL_GROUPTYPE_LIST_LOCATOR}    ${EXPENSECODE_EDIT_DDL_GROUPTYPE_CLASS_LOCATOR}    ${EXPENSECODE_GROUPTYPE_TH_VALUE1}
    Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${EXPENSECODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table ExpenseCode

    ${data}=    Evaluate    {"no":"1", "expenseCode":"${EXPENSECODE_EXPENSECODE_VALUE}", "expenseCodeNameTh":"${EXPENSECODE_EXPENSECODENAMETH_VALUE}", "expenseCodeNameEn":"${EXPENSECODE_EXPENSECODENAMEEN_VALUE}","status":"${EXPENSECODE_STATUS_TH_VALUE1}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Check Value Table    ${EXPENSECODE_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table ExpenseCode

    #================ Verify DB ================    
    Request Verify DB Check Data Edit ExpenseCode    ${MYSQL_TYPE_EDIT_ALLFIELD}    ${EXPENSECODE_EXPENSECODENAMETH_VALUE}    ${EXPENSECODE_EXPENSECODENAMEEN_VALUE}    ${EXPENSECODE_EXPENSECODE_VALUE}    ${EXPENSECODE_PRICEPERUNIT_VALUE}    ${EXPENSECODE_VAT_VALUE}    ${EXPENSECODE_TAX_VALUE}    ${EXPENSECODE_REMARK_VALUE}    ${EXPENSECODE_STATUSID_VALUE1}    ${EXPENSECODE_GROUPTYPEID_VALUE1}
    
################################################################################################################################
################################################################-- Create ExpenseCode [EN]--################################################################
#====== Check DB ==========
Create ExpenseCode input all field data EN
    
    #Click Create ExpenseCode
    Click Element Page    ${EXPENSECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create ExpenseCode
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_LOCATOR}    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_EN} 

    #ExpenseCode NameTh *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_TXT_EXPENSECODENAMETH_LOCATOR}    ${EXPENSECODE_EXPENSECODENAMETH_VALUE}
    #ExpenseCode NameEn 
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_TXT_EXPENSECODENAMEEN_LOCATOR}    ${EXPENSECODE_EXPENSECODENAMEEN_VALUE}
    #ExpenseCode *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_TXT_EXPENSECODE_LOCATOR}    ${EXPENSECODE_EXPENSECODE_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_INPUT_PRICEPERUNIT_LOCATOR}    ${EXPENSECODE_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_INPUT_VAT_LOCATOR}    ${EXPENSECODE_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_INPUT_TAX_LOCATOR}    ${EXPENSECODE_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_TXTAREA_REMARK_LOCATOR}    ${EXPENSECODE_REMARK_VALUE}

    #Status *
    Select Dropdown    ${EXPENSECODE_ADD_DDL_STATUS_LOCATOR}    ${EXPENSECODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${EXPENSECODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${EXPENSECODE_STATUS_EN_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${EXPENSECODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${EXPENSECODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${EXPENSECODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${EXPENSECODE_GROUPTYPE_EN_VALUE1}
    Sleep    0.5s
   
    #Click Save button
    Click Element Page    ${EXPENSECODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}
    
    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table ExpenseCode EN

    ${data}=    Evaluate    {"no":"1", "expenseCode":"${EXPENSECODE_EXPENSECODE_VALUE}", "expenseCodeNameTh":"${EXPENSECODE_EXPENSECODENAMETH_VALUE}", "expenseCodeNameEn":"${EXPENSECODE_EXPENSECODENAMEEN_VALUE}","status":"${EXPENSECODE_STATUS_EN_VALUE1}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Check Value Table    ${EXPENSECODE_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table ExpenseCode EN

    #================ Verify DB ================    
    Request Verify DB Check Data Create ExpenseCode    ${MYSQL_TYPE_CREATE_ALLFIELD}    ${EXPENSECODE_EXPENSECODENAMETH_VALUE}    ${EXPENSECODE_EXPENSECODENAMEEN_VALUE}    ${EXPENSECODE_EXPENSECODE_VALUE}    ${EXPENSECODE_PRICEPERUNIT_VALUE}    ${EXPENSECODE_VAT_VALUE}    ${EXPENSECODE_TAX_VALUE}    ${EXPENSECODE_REMARK_VALUE}    ${EXPENSECODE_STATUSID_VALUE1}    ${EXPENSECODE_GROUPTYPEID_VALUE1}
    
Create ExpenseCode input require field data EN
    
    #Click Create ExpenseCode
    Click Element Page    ${EXPENSECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create ExpenseCode
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_LOCATOR}    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_EN} 

    #ExpenseCode NameTh *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_TXT_EXPENSECODENAMETH_LOCATOR}    ${EXPENSECODE_EXPENSECODENAMETH2_VALUE}
    #ExpenseCode *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_TXT_EXPENSECODE_LOCATOR}    ${EXPENSECODE_EXPENSECODE2_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_INPUT_PRICEPERUNIT_LOCATOR}    ${EXPENSECODE_PRICEPERUNIT2_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_INPUT_VAT_LOCATOR}    ${EXPENSECODE_VAT2_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_INPUT_TAX_LOCATOR}    ${EXPENSECODE_TAX2_VALUE}

    #Status *
    Select Dropdown    ${EXPENSECODE_ADD_DDL_STATUS_LOCATOR}    ${EXPENSECODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${EXPENSECODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${EXPENSECODE_STATUS_EN_VALUE2}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${EXPENSECODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${EXPENSECODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${EXPENSECODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${EXPENSECODE_GROUPTYPE_EN_VALUE2}
    Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${EXPENSECODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}
    
    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table ExpenseCode EN

    ${data}=    Evaluate    {"no":"1", "expenseCode":"${EXPENSECODE_EXPENSECODE2_VALUE}", "expenseCodeNameTh":"${EXPENSECODE_EXPENSECODENAMETH2_VALUE}", "expenseCodeNameEn":"${EXPENSECODE_EXPENSECODENAMETH2_VALUE}","status":"${EXPENSECODE_STATUS_EN_VALUE2}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Check Value Table    ${EXPENSECODE_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table ExpenseCode EN

    #================ Verify DB ================    
    Request Verify DB Check Data Create ExpenseCode    ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${EXPENSECODE_EXPENSECODENAMETH2_VALUE}    ${EXPENSECODE_EXPENSECODENAMEEN_VALUE_NONE}    ${EXPENSECODE_EXPENSECODE2_VALUE}    ${EXPENSECODE_PRICEPERUNIT2_VALUE}    ${EXPENSECODE_VAT2_VALUE}    ${EXPENSECODE_TAX2_VALUE}    ${EXPENSECODE_REMARK_VALUE_NONE}    ${EXPENSECODE_STATUSID_VALUE2}    ${EXPENSECODE_GROUPTYPEID_VALUE2}
    
#====== No Check Table ==========
Create ExpenseCode input all field data No Check Table EN
    
    #Click Create ExpenseCode
    Click Element Page    ${EXPENSECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create ExpenseCode
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_LOCATOR}    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_EN} 

    #ExpenseCode NameTh *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_TXT_EXPENSECODENAMETH_LOCATOR}    ${EXPENSECODE_EXPENSECODENAMETH_VALUE}
    #ExpenseCode NameEn
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_TXT_EXPENSECODENAMEEN_LOCATOR}    ${EXPENSECODE_EXPENSECODENAMEEN_VALUE}
    #ExpenseCode *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_TXT_EXPENSECODE_LOCATOR}    ${EXPENSECODE_EXPENSECODE_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_INPUT_PRICEPERUNIT_LOCATOR}    ${EXPENSECODE_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_INPUT_VAT_LOCATOR}    ${EXPENSECODE_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_INPUT_TAX_LOCATOR}    ${EXPENSECODE_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_TXTAREA_REMARK_LOCATOR}    ${EXPENSECODE_REMARK_VALUE}

    #Status *
    Select Dropdown    ${EXPENSECODE_ADD_DDL_STATUS_LOCATOR}    ${EXPENSECODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${EXPENSECODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${EXPENSECODE_STATUS_EN_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${EXPENSECODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${EXPENSECODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${EXPENSECODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${EXPENSECODE_GROUPTYPE_EN_VALUE1}
    Sleep    0.5s
   
    #Click Save button
    Click Element Page    ${EXPENSECODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

Create ExpenseCode input require field data No Check Table EN
#========== Create MulctMethod ======
    
    #Click Create ExpenseCode
    Click Element Page    ${EXPENSECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s

    #Create ExpenseCode
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_LOCATOR}    ${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_EN} 

    #ExpenseCode NameTh *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_TXT_EXPENSECODENAMETH_LOCATOR}    ${EXPENSECODE_EXPENSECODENAMETH2_VALUE}
    #ExpenseCode *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_TXT_EXPENSECODE_LOCATOR}    ${EXPENSECODE_EXPENSECODE2_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_INPUT_PRICEPERUNIT_LOCATOR}    ${EXPENSECODE_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_INPUT_VAT_LOCATOR}    ${EXPENSECODE_VAT2_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${EXPENSECODE_ADD_INPUT_TAX_LOCATOR}    ${EXPENSECODE_TAX2_VALUE}

    #Status *
    Select Dropdown    ${EXPENSECODE_ADD_DDL_STATUS_LOCATOR}    ${EXPENSECODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${EXPENSECODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${EXPENSECODE_STATUS_EN_VALUE2}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${EXPENSECODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${EXPENSECODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${EXPENSECODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${EXPENSECODE_GROUPTYPE_EN_VALUE2}
    Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${EXPENSECODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

################################################################################################################################
################################################################-- Edit ExpenseCode --################################################################
Edit ExpenseCode input all field data EN
    #Click Edit ExpenseCode
    Click Element Page    ${EXPENSECODE_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit ExpenseCode
    Wait Until Contains Element Text Should Be    ${EXPENSECODE_EDIT_LBL_EDITEXPENSECODE_LOCATOR}    ${EXPENSECODE_EDIT_LBL_EDITEXPENSECODE_EN} 

    #ExpenseCode NameTh *
    Wait Until Contains Input Text    ${EXPENSECODE_EDIT_TXT_EXPENSECODENAMETH_LOCATOR}    ${EXPENSECODE_EXPENSECODENAMETH_VALUE}
    #ExpenseCode NameEn
    Wait Until Contains Input Text    ${EXPENSECODE_EDIT_TXT_EXPENSECODENAMEEN_LOCATOR}    ${EXPENSECODE_EXPENSECODENAMEEN_VALUE}
    #ExpenseCode *
    Wait Until Contains Input Text    ${EXPENSECODE_EDIT_TXT_EXPENSECODE_LOCATOR}    ${EXPENSECODE_EXPENSECODE_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${EXPENSECODE_EDIT_INPUT_PRICEPERUNIT_LOCATOR}    ${EXPENSECODE_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${EXPENSECODE_EDIT_INPUT_VAT_LOCATOR}    ${EXPENSECODE_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${EXPENSECODE_EDIT_INPUT_TAX_LOCATOR}    ${EXPENSECODE_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${EXPENSECODE_EDIT_TXTAREA_REMARK_LOCATOR}    ${EXPENSECODE_REMARK_VALUE}

    #Status *
    Select Dropdown    ${EXPENSECODE_EDIT_DDL_STATUS_LOCATOR}    ${EXPENSECODE_EDIT_DDL_STATUS_LIST_LOCATOR}    ${EXPENSECODE_EDIT_DDL_STATUS_CLASS_LOCATOR}    ${EXPENSECODE_STATUS_EN_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${EXPENSECODE_EDIT_DDL_GROUPTYPE_LOCATOR}    ${EXPENSECODE_EDIT_DDL_GROUPTYPE_LIST_LOCATOR}    ${EXPENSECODE_EDIT_DDL_GROUPTYPE_CLASS_LOCATOR}    ${EXPENSECODE_GROUPTYPE_EN_VALUE1}
    Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${EXPENSECODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table ExpenseCode EN

    ${data}=    Evaluate    {"no":"1", "expenseCode":"${EXPENSECODE_EXPENSECODE_VALUE}", "expenseCodeNameTh":"${EXPENSECODE_EXPENSECODENAMETH_VALUE}", "expenseCodeNameEn":"${EXPENSECODE_EXPENSECODENAMEEN_VALUE}","status":"${EXPENSECODE_STATUS_EN_VALUE1}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Check Value Table    ${EXPENSECODE_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table ExpenseCode EN

    #================ Verify DB ================    
    Request Verify DB Check Data Edit ExpenseCode    ${MYSQL_TYPE_EDIT_ALLFIELD}    ${EXPENSECODE_EXPENSECODENAMETH_VALUE}    ${EXPENSECODE_EXPENSECODENAMEEN_VALUE}    ${EXPENSECODE_EXPENSECODE_VALUE}    ${EXPENSECODE_PRICEPERUNIT_VALUE}    ${EXPENSECODE_VAT_VALUE}    ${EXPENSECODE_TAX_VALUE}    ${EXPENSECODE_REMARK_VALUE}    ${EXPENSECODE_STATUSID_VALUE1}    ${EXPENSECODE_GROUPTYPEID_VALUE1}
    
################################################################-- Generic Test Case Teardown ExpenseCode--################################################################
Generic Test Case Teardown ExpenseCode    
    
    #Click delete button
    ${ExpenseCode}=    Get Text String    ${EXPENSECODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    ExpenseCode${ExpenseCode}

    #Click delete button
    Click Delete Data TH    ${EXPENSECODE_BTN_DELETE_LOCATOR}    ${ExpenseCode}

    ################### Close Browser ###################
    Close Browser     

Generic Test Case Teardown ExpenseCode2    

    #Click delete button
    ${ExpenseCode}=    Get Text String    ${EXPENSECODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    ExpenseCode${ExpenseCode}
    
    #Click delete button
    Click Delete Data TH    ${EXPENSECODE_BTN_DELETE_LOCATOR}    ${ExpenseCode}

    #Click delete button
    ${ExpenseCode2}=    Get Text String    ${EXPENSECODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}

    #Click delete button
    Click Delete Data TH    ${EXPENSECODE_BTN_DELETE_LOCATOR}    ${ExpenseCode2}

    ################### Close Browser ###################
    Close Browser     
Generic Test Case Teardown ExpenseCode EN
    
    #Click delete button
    ${ExpenseCode}=    Get Text String    ${EXPENSECODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    ExpenseCode${ExpenseCode}

    #Click delete button
    Click Delete Data EN    ${EXPENSECODE_BTN_DELETE_LOCATOR}    ${ExpenseCode}

    ################### Close Browser ###################
    Close Browser     

Generic Test Case Teardown ExpenseCode2 EN

    #Click delete button
    ${ExpenseCode}=    Get Text String    ${EXPENSECODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    ExpenseCode${ExpenseCode}
    
    #Click delete button
    Click Delete Data EN    ${EXPENSECODE_BTN_DELETE_LOCATOR}    ${ExpenseCode}

    #Click delete button
    ${ExpenseCode2}=    Get Text String    ${EXPENSECODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}

    #Click delete button
    Click Delete Data EN    ${EXPENSECODE_BTN_DELETE_LOCATOR}    ${ExpenseCode2}

    ################### Close Browser ###################
    Close Browser     
################################################################################################################################
    