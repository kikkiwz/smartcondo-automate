*** Keywords ***
################################################################-- Set Data for check value table IncomeCode--################################################################
Set Data for check value table IncomeCode
    # Set field header table To Array
    ${numCol}=    Convert To Integer    ${INCOMECODE_SEARCH_NUMCOL}
    #Set field header table To Array
    @{fieldArrDataTable}=    Create List    
    Append To List    ${fieldArrDataTable}    @{INCOMECODE_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_TH}
    # Append To List    ${fieldArrDataTable}    incomeCode    incomeNameTh    paymentOrder    status
    #Set Num field To Array
    @{arrNumfield}=    Create List    
    Append To List    ${arrNumfield}    ${numCol-4}    ${numCol-3}    ${numCol-2}    ${numCol-1}
    #Set Num Col To Array
    @{arrNumCol}=    Create List    
    Append To List    ${arrNumCol}    ${numCol-3}    ${numCol-2}    ${numCol-1}    ${numCol}
    [Return]    ${numCol}    ${fieldArrDataTable}    ${arrNumfield}    ${arrNumCol}
    
Set Data for check value table IncomeCode EN
    #Set field header table To Array
    ${numCol}=    Convert To Integer    ${INCOMECODE_SEARCH_NUMCOL}
    #Set field header table To Array
    @{fieldArrDataTable}=    Create List    
    Append To List    ${fieldArrDataTable}    @{INCOMECODE_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_EN}
    # Append To List    ${fieldArrDataTable}    incomeCode    incomeNameEn    paymentOrder    status
    #Set Num field To Array
    @{arrNumfield}=    Create List    
    Append To List    ${arrNumfield}    ${numCol-4}    ${numCol-3}    ${numCol-2}    ${numCol-1}
    #Set Num Col To Array
    @{arrNumCol}=    Create List    
    Append To List    ${arrNumCol}    ${numCol-3}    ${numCol-2}    ${numCol-1}    ${numCol}
    [Return]    ${numCol}    ${fieldArrDataTable}    ${arrNumfield}    ${arrNumCol}
    
Check Value Table IncomeCode
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search IncomeCode    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_INCOMECODE_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    Set Global Variable    ${rowcountSearchIncomeCode}    ${resultSearch}[1]
    Log To Console    [rowcount SearchIncomeCode] : ${rowcountSearchIncomeCode}

    ${checkNodata}=    Run Keyword If    '${rowcountSearchIncomeCode}'=='0'    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchIncomeCode}'!='0'    Check Value Table Search IncomeCode    ${DEFAULT_TH}     ${rowcountSearchIncomeCode}    ${dataSearch}
    
    [Return]    ${rowcountSearchIncomeCode}

Check Value Table IncomeCode EN
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search IncomeCode    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_INCOMECODE_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    Set Global Variable    ${rowcountSearchIncomeCode}    ${resultSearch}[1]
    Log To Console    [rowcount SearchIncomeCode] : ${rowcountSearchIncomeCode}

    ${checkNodata}=    Run Keyword If    '${rowcountSearchIncomeCode}'=='0'    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchIncomeCode}'!='0'    Check Value Table Search IncomeCode    ${DEFAULT_EN}     ${rowcountSearchIncomeCode}    ${dataSearch}
    
    [Return]    ${rowcountSearchIncomeCode}
################################################################-- Create IncomeCode--################################################################
#====== Check DB ==========
#คิดตามจริง ,ไม่คิดค่าปรับ
Create IncomeCode input all field data 
    
    #========== Create MulctCode ====== 
    ${mulctConditionDetail}=    Set Variable    [{"timePastDeadline": 1, "dateToFlag": ${FALSE_LOWWER}, "total": 100 }, {"dateToFlag": ${TRUE_LOWWER}, "timePastDeadline": 9999, "total": 1}]
 
    #Create data MulctCode and MulctMethod receive mulctMethodId mulctCodeId Set Global   
    Run keyword And Continue On Failure    Request CreateData for MulctCode      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_MULCTMETHOD_STATUS_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATE_VALUE}    ${DATA_MULCTMETHOD_CALCULATEMULCTTYPE_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATETYPE_VALUE}    ${DATA_MULCTMETHOD_UNITFROMTO_VALUE}    ${mulctConditionDetail}    ${DATA_MULCTMETHOD_NAMETH_VALUE}    ${DATA_MULCTCODE_GROUPTYPEID_VALUE}    ${DATA_MULCTCODE_MULCTCODE_VALUE}    ${DATA_MULCTCODE_NAMEEN_VALUE}    ${DATA_MULCTCODE_NAMETH_VALUE}    ${DATA_MULCTCODE_REMARK_VALUE}    ${DATA_MULCTCODE_STATUS_VALUE}    ${DATA_MULCTCODE_TAX_VALUE}    ${DATA_MULCTCODE_VAT_VALUE}

    #Click Create IncomeCode
    Click Element Page    ${INCOMECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create IncomeCode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_TH} 

    #Incomecode NameTh *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODENAMETH_LOCATOR}    ${INCOMECODE_INCOMECODENAMETH_VALUE}
    #Incomecode NameEn
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODENAMEEN_LOCATOR}    ${INCOMECODE_INCOMECODENAMEEN_VALUE}
    #Incomecode *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODE_LOCATOR}    ${INCOMECODE_INCOMECODE_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_PRICEPERUNIT_LOCATOR}    ${INCOMECODE_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_VAT_LOCATOR}    ${INCOMECODE_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_TAX_LOCATOR}    ${INCOMECODE_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXTAREA_REMARK_LOCATOR}    ${INCOMECODE_REMARK_VALUE}

    #Status *
    Select Dropdown    ${INCOMECODE_ADD_DDL_STATUS_LOCATOR}    ${INCOMECODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${INCOMECODE_STATUS_TH_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${INCOMECODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${INCOMECODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${INCOMECODE_GROUPTYPE_TH_VALUE1}
    Sleep    0.5s
    
    #Calculation type (every specified month)
    Select Dropdown    ${INCOMECODE_ADD_DDL_CALCULATIONTYPE_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONTYPE_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONTYPE_CLASS_LOCATOR}    ${INCOMECODE_CALCULATIONTYPE_TH_VALUE}
    Sleep    0.5s

    #Calulation Method *
    Select Dropdown    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${INCOMECODE_CALCULATIONMETHOD_TH_VALUE1}
    Sleep    0.5s

    # #Mulctcode *
    # Select Dropdown    ${INCOMECODE_ADD_DDL_MULCTCODE_LOCATOR}    ${INCOMECODE_ADD_DDL_MULCTCODE_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_MULCTCODE_CLASS_LOCATOR}    ${INCOMECODE_MULCTCODE_TH_VALUE}
    # Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${INCOMECODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}
    
    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table IncomeCode

    ${data}=    Evaluate    {"incomeCode":"${INCOMECODE_INCOMECODE_VALUE}", "incomeNameTh":"${INCOMECODE_INCOMECODENAMETH_VALUE}", "incomeNameEn":"${INCOMECODE_INCOMECODENAMEEN_VALUE}", "paymentOrder":"1","status":"${INCOMECODE_STATUS_TH_VALUE1}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Log To Console    ${valArrDataTable}
    Check Value Table    ${INCOMECODE_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table IncomeCode

    # ================ Verify DB ================    
    Request Verify DB Check Data Create IncomeCode    ${MYSQL_TYPE_CREATE_ALLFIELD}    ${INCOMECODE_INCOMECODENAMETH_VALUE}    ${INCOMECODE_INCOMECODENAMEEN_VALUE}    ${INCOMECODE_INCOMECODE_VALUE}    ${INCOMECODE_VAT_VALUE}    ${INCOMECODE_TAX_VALUE}    ${INCOMECODE_REMARK_VALUE}    ${INCOMECODE_STATUSID_VALUE1}    ${INCOMECODE_GROUPTYPE_ID_VALUE1}    ${NONE}    ${INCOMECODE_CALCULATIONMETHOD_ID_VALUE1}    ${INCOMECODE_PRICEPERUNIT_VALUE}    ${NONE}    ${NONE}    ${DATA_MULCTCODE_INDEX_VALUE}

Create IncomeCode input require field data
    #========== Create MulctCode ====== 
    ${mulctConditionDetail}=    Set Variable    [{"timePastDeadline": 1, "dateToFlag": ${FALSE_LOWWER}, "total": 100 }, {"dateToFlag": ${TRUE_LOWWER}, "timePastDeadline": 9999, "total": 1}]
 
    #Create data MulctCode and MulctMethod receive mulctMethodId mulctCodeId Set Global   
    Run keyword And Continue On Failure    Request CreateData for MulctCode      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_MULCTMETHOD_STATUS_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATE_VALUE}    ${DATA_MULCTMETHOD_CALCULATEMULCTTYPE_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATETYPE_VALUE}    ${DATA_MULCTMETHOD_UNITFROMTO_VALUE}    ${mulctConditionDetail}    ${DATA_MULCTMETHOD_NAMETH_VALUE}    ${DATA_MULCTCODE_GROUPTYPEID_VALUE}    ${DATA_MULCTCODE_MULCTCODE_VALUE}    ${DATA_MULCTCODE_NAMEEN_VALUE}    ${DATA_MULCTCODE_NAMETH_VALUE}    ${DATA_MULCTCODE_REMARK_VALUE}    ${DATA_MULCTCODE_STATUS_VALUE}    ${DATA_MULCTCODE_TAX_VALUE}    ${DATA_MULCTCODE_VAT_VALUE}

    #Click Create IncomeCode
    Click Element Page    ${INCOMECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create IncomeCode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_TH} 

    #Incomecode NameTh *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODENAMETH_LOCATOR}    ${INCOMECODE_INCOMECODENAMETH2_VALUE}
    # #Incomecode NameEn
    # Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODENAMEEN_LOCATOR}    ${INCOMECODE_INCOMECODENAMEEN_VALUE}
    #Incomecode *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODE_LOCATOR}    ${INCOMECODE_INCOMECODE2_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_PRICEPERUNIT_LOCATOR}    ${INCOMECODE_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_VAT_LOCATOR}    ${INCOMECODE_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_TAX_LOCATOR}    ${INCOMECODE_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXTAREA_REMARK_LOCATOR}    ${INCOMECODE_REMARK_VALUE}

    #Status *
    Select Dropdown    ${INCOMECODE_ADD_DDL_STATUS_LOCATOR}    ${INCOMECODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${INCOMECODE_STATUS_TH_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${INCOMECODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${INCOMECODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${INCOMECODE_GROUPTYPE_TH_VALUE1}
    Sleep    0.5s

    #Calulation Method *
    Select Dropdown    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${INCOMECODE_CALCULATIONMETHOD_TH_VALUE1}
    Sleep    0.5s

    # #Mulctcode *
    # Select Dropdown    ${INCOMECODE_ADD_DDL_MULCTCODE_LOCATOR}    ${INCOMECODE_ADD_DDL_MULCTCODE_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_MULCTCODE_CLASS_LOCATOR}    ${INCOMECODE_MULCTCODE_TH_VALUE}
    # Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${INCOMECODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}
    
    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table IncomeCode

    ${data}=    Evaluate    {"incomeCode":"${INCOMECODE_INCOMECODE2_VALUE}", "incomeNameTh":"${INCOMECODE_INCOMECODENAMETH2_VALUE}", "incomeNameEn":"", "paymentOrder":"1","status":"${INCOMECODE_STATUS_TH_VALUE1}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Log To Console    ${valArrDataTable}
    Check Value Table    ${INCOMECODE_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table IncomeCode

    #================ Verify DB ================    
    Request Verify DB Check Data Create IncomeCode    ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${INCOMECODE_INCOMECODENAMETH2_VALUE}    ${INCOMECODE_INCOMECODENAMEEN_VALUE_NONE}    ${INCOMECODE_INCOMECODE2_VALUE}    ${INCOMECODE_VAT_VALUE}    ${INCOMECODE_TAX_VALUE}    ${INCOMECODE_REMARK_VALUE}    ${INCOMECODE_STATUSID_VALUE1}    ${INCOMECODE_GROUPTYPE_ID_VALUE1}    ${NONE}    ${INCOMECODE_CALCULATIONMETHOD_ID_VALUE1}    ${INCOMECODE_PRICEPERUNIT_VALUE}    ${NONE}    ${NONE}    ${DATA_MULCTCODE_INDEX_VALUE}

#====== No Check Table ==========
Create IncomeCode input all field data No Check Table 
    
    #========== Create MulctCode ====== 
    ${mulctConditionDetail}=    Set Variable    [{"timePastDeadline": 1, "dateToFlag": ${FALSE_LOWWER}, "total": 100 }, {"dateToFlag": ${TRUE_LOWWER}, "timePastDeadline": 9999, "total": 1}]
 
    #Create data MulctCode and MulctMethod receive mulctMethodId mulctCodeId Set Global   
    Run keyword And Continue On Failure    Request CreateData for MulctCode      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_MULCTMETHOD_STATUS_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATE_VALUE}    ${DATA_MULCTMETHOD_CALCULATEMULCTTYPE_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATETYPE_VALUE}    ${DATA_MULCTMETHOD_UNITFROMTO_VALUE}    ${mulctConditionDetail}    ${DATA_MULCTMETHOD_NAMETH_VALUE}    ${DATA_MULCTCODE_GROUPTYPEID_VALUE}    ${DATA_MULCTCODE_MULCTCODE_VALUE}    ${DATA_MULCTCODE_NAMEEN_VALUE}    ${DATA_MULCTCODE_NAMETH_VALUE}    ${DATA_MULCTCODE_REMARK_VALUE}    ${DATA_MULCTCODE_STATUS_VALUE}    ${DATA_MULCTCODE_TAX_VALUE}    ${DATA_MULCTCODE_VAT_VALUE}

    #Click Create IncomeCode
    Click Element Page    ${INCOMECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create IncomeCode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_TH} 

    #Incomecode NameTh *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODENAMETH_LOCATOR}    ${INCOMECODE_INCOMECODENAMETH_VALUE}
    #Incomecode NameEn
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODENAMEEN_LOCATOR}    ${INCOMECODE_INCOMECODENAMEEN_VALUE}
    #Incomecode *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODE_LOCATOR}    ${INCOMECODE_INCOMECODE_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_PRICEPERUNIT_LOCATOR}    ${INCOMECODE_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_VAT_LOCATOR}    ${INCOMECODE_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_TAX_LOCATOR}    ${INCOMECODE_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXTAREA_REMARK_LOCATOR}    ${INCOMECODE_REMARK_VALUE}

    #Status *
    Select Dropdown    ${INCOMECODE_ADD_DDL_STATUS_LOCATOR}    ${INCOMECODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${INCOMECODE_STATUS_TH_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${INCOMECODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${INCOMECODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${INCOMECODE_GROUPTYPE_TH_VALUE1}
    Sleep    0.5s
    
    #Calculation type (every specified month)
    Select Dropdown    ${INCOMECODE_ADD_DDL_CALCULATIONTYPE_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONTYPE_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONTYPE_CLASS_LOCATOR}    ${INCOMECODE_CALCULATIONTYPE_TH_VALUE}
    Sleep    0.5s

    #Calulation Method *
    Select Dropdown    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${INCOMECODE_CALCULATIONMETHOD_TH_VALUE1}
    Sleep    0.5s

    # #Mulctcode *
    # Select Dropdown    ${INCOMECODE_ADD_DDL_MULCTCODE_LOCATOR}    ${INCOMECODE_ADD_DDL_MULCTCODE_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_MULCTCODE_CLASS_LOCATOR}    ${INCOMECODE_MULCTCODE_TH_VALUE}
    # Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${INCOMECODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

Create IncomeCode input require field data No Check Table
#========== Create MulctMethod ======
    #========== Create MulctCode ====== 
    ${mulctConditionDetail}=    Set Variable    [{"timePastDeadline": 1, "dateToFlag": ${FALSE_LOWWER}, "total": 100 }, {"dateToFlag": ${TRUE_LOWWER}, "timePastDeadline": 9999, "total": 1}]
 
    #Create data MulctCode and MulctMethod receive mulctMethodId mulctCodeId Set Global   
    Run keyword And Continue On Failure    Request CreateData for MulctCode      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_MULCTMETHOD_STATUS_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATE_VALUE}    ${DATA_MULCTMETHOD_CALCULATEMULCTTYPE_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATETYPE_VALUE}    ${DATA_MULCTMETHOD_UNITFROMTO_VALUE}    ${mulctConditionDetail}    ${DATA_MULCTMETHOD_NAMETH_VALUE}    ${DATA_MULCTCODE_GROUPTYPEID_VALUE}    ${DATA_MULCTCODE_MULCTCODE_VALUE}    ${DATA_MULCTCODE_NAMEEN_VALUE}    ${DATA_MULCTCODE_NAMETH_VALUE}    ${DATA_MULCTCODE_REMARK_VALUE}    ${DATA_MULCTCODE_STATUS_VALUE}    ${DATA_MULCTCODE_TAX_VALUE}    ${DATA_MULCTCODE_VAT_VALUE}

    #Click Create IncomeCode
    Click Element Page    ${INCOMECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create IncomeCode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_TH} 

    #Incomecode NameTh *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODENAMETH_LOCATOR}    ${INCOMECODE_INCOMECODENAMETH2_VALUE}
    # #Incomecode NameEn
    # Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODENAMEEN_LOCATOR}    ${INCOMECODE_INCOMECODENAMEEN_VALUE}
    #Incomecode *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODE_LOCATOR}    ${INCOMECODE_INCOMECODE2_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_PRICEPERUNIT_LOCATOR}    ${INCOMECODE_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_VAT_LOCATOR}    ${INCOMECODE_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_TAX_LOCATOR}    ${INCOMECODE_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXTAREA_REMARK_LOCATOR}    ${INCOMECODE_REMARK_VALUE}

    #Status *
    Select Dropdown    ${INCOMECODE_ADD_DDL_STATUS_LOCATOR}    ${INCOMECODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${INCOMECODE_STATUS_TH_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${INCOMECODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${INCOMECODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${INCOMECODE_GROUPTYPE_TH_VALUE1}
    Sleep    0.5s

    #Calulation Method *
    Select Dropdown    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${INCOMECODE_CALCULATIONMETHOD_TH_VALUE1}
    Sleep    0.5s

    # #Mulctcode *
    # Select Dropdown    ${INCOMECODE_ADD_DDL_MULCTCODE_LOCATOR}    ${INCOMECODE_ADD_DDL_MULCTCODE_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_MULCTCODE_CLASS_LOCATOR}    ${INCOMECODE_MULCTCODE_TH_VALUE}
    # Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${INCOMECODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

Create IncomeCode input require field data No Check Table and No Create MulctMethod

    #Click Create IncomeCode
    Click Element Page    ${INCOMECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create IncomeCode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_TH} 

    #Incomecode NameTh *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODENAMETH_LOCATOR}    ${INCOMECODE_INCOMECODENAMETH2_VALUE}
    # #Incomecode NameEn
    # Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODENAMEEN_LOCATOR}    ${INCOMECODE_INCOMECODENAMEEN_VALUE}
    #Incomecode *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODE_LOCATOR}    ${INCOMECODE_INCOMECODE2_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_PRICEPERUNIT_LOCATOR}    ${INCOMECODE_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_VAT_LOCATOR}    ${INCOMECODE_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_TAX_LOCATOR}    ${INCOMECODE_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXTAREA_REMARK_LOCATOR}    ${INCOMECODE_REMARK_VALUE}

    #Status *
    Select Dropdown    ${INCOMECODE_ADD_DDL_STATUS_LOCATOR}    ${INCOMECODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${INCOMECODE_STATUS_TH_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${INCOMECODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${INCOMECODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${INCOMECODE_GROUPTYPE_TH_VALUE1}
    Sleep    0.5s

    #Calulation Method *
    Select Dropdown    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${INCOMECODE_CALCULATIONMETHOD_TH_VALUE1}
    Sleep    0.5s

    # #Mulctcode *
    # Select Dropdown    ${INCOMECODE_ADD_DDL_MULCTCODE_LOCATOR}    ${INCOMECODE_ADD_DDL_MULCTCODE_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_MULCTCODE_CLASS_LOCATOR}    ${INCOMECODE_MULCTCODE_TH_VALUE}
    # Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${INCOMECODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

################################################################################################################################
################################################################-- Edit IncomeCode --################################################################
Edit IncomeCode input all field data 
    #Click Edit IncomeCode
    Click Element Page    ${INCOMECODE_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit Incomecode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_EDITINCOMECODE_LOCATOR}    ${INCOMECODE_EDIT_LBL_EDITINCOMECODE_TH} 
    
    #Incomecode NameTh *
    Wait Until Contains Input Text    ${INCOMECODE_EDIT_TXT_INCOMECODENAMETH_LOCATOR}    ${INCOMECODE_INCOMECODENAMETH2_VALUE}
    #Incomecode NameEn
    Wait Until Contains Input Text    ${INCOMECODE_EDIT_TXT_INCOMECODENAMEEN_LOCATOR}    ${INCOMECODE_INCOMECODENAMEEN_VALUE}
    #Incomecode *
    Wait Until Contains Input Text    ${INCOMECODE_EDIT_TXT_INCOMECODE_LOCATOR}    ${INCOMECODE_INCOMECODE2_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${INCOMECODE_EDIT_INPUT_PRICEPERUNIT_LOCATOR}    ${INCOMECODE_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${INCOMECODE_EDIT_INPUT_VAT_LOCATOR}    ${INCOMECODE_VAT2_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${INCOMECODE_EDIT_INPUT_TAX_LOCATOR}    ${INCOMECODE_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${INCOMECODE_EDIT_TXTAREA_REMARK_LOCATOR}    ${INCOMECODE_REMARK_VALUE}

    #Status *
    Select Dropdown    ${INCOMECODE_EDIT_DDL_STATUS_LOCATOR}    ${INCOMECODE_EDIT_DDL_STATUS_LIST_LOCATOR}    ${INCOMECODE_EDIT_DDL_STATUS_CLASS_LOCATOR}    ${INCOMECODE_STATUS_TH_VALUE2}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${INCOMECODE_EDIT_DDL_GROUPTYPE_LOCATOR}    ${INCOMECODE_EDIT_DDL_GROUPTYPE_LIST_LOCATOR}    ${INCOMECODE_EDIT_DDL_GROUPTYPE_CLASS_LOCATOR}    ${INCOMECODE_GROUPTYPE_TH_VALUE2}
    Sleep    0.5s
    
    #Calculation type (every specified month)
    Select Dropdown    ${INCOMECODE_EDIT_DDL_CALCULATIONTYPE_LOCATOR}    ${INCOMECODE_EDIT_DDL_CALCULATIONTYPE_LIST_LOCATOR}    ${INCOMECODE_EDIT_DDL_CALCULATIONTYPE_CLASS_LOCATOR}    ${INCOMECODE_CALCULATIONTYPE_TH_VALUE}
    Sleep    0.5s

    #Calulation Method *
    Select Dropdown    ${INCOMECODE_EDIT_DDL_CALCULATIONMETHOD_LOCATOR}    ${INCOMECODE_EDIT_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${INCOMECODE_EDIT_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${INCOMECODE_CALCULATIONMETHOD_TH_VALUE1}
    Sleep    0.5s

    #Click Save button
    Click Element Page    ${INCOMECODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table IncomeCode

    ${data}=    Evaluate    {"incomeCode":"${INCOMECODE_INCOMECODE2_VALUE}", "incomeNameTh":"${INCOMECODE_INCOMECODENAMETH2_VALUE}", "incomeNameEn":"${INCOMECODE_INCOMECODENAMEEN_VALUE}", "paymentOrder":"1","status":"${INCOMECODE_STATUS_TH_VALUE2}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Check Value Table    ${INCOMECODE_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table IncomeCode

    #================ Verify DB ================    
    Request Verify DB Check Data Edit IncomeCode    ${MYSQL_TYPE_EDIT_ALLFIELD}    ${INCOMECODE_INCOMECODENAMETH2_VALUE}    ${INCOMECODE_INCOMECODENAMEEN_VALUE}    ${INCOMECODE_INCOMECODE2_VALUE}    ${INCOMECODE_VAT2_VALUE}    ${INCOMECODE_TAX_VALUE}    ${INCOMECODE_REMARK_VALUE}    ${INCOMECODE_STATUSID_VALUE2}    ${INCOMECODE_GROUPTYPEID_VALUE2}    ${NONE}    ${INCOMECODE_CALCULATIONMETHOD_ID_VALUE1}    ${INCOMECODE_PRICEPERUNIT_VALUE}    ${NONE}    ${NONE}    ${DATA_MULCTCODE_INDEX_VALUE}

################################################################################################################################
################################################################-- Edit IncomeCode Status Enable --################################################################
Edit IncomeCode input all field data Status Enable 
    #Click Edit IncomeCode
    Click Element Page    ${INCOMECODE_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit Incomecode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_EDITINCOMECODE_LOCATOR}    ${INCOMECODE_EDIT_LBL_EDITINCOMECODE_TH} 
    
    #Incomecode NameTh *
    Wait Until Contains Input Text    ${INCOMECODE_EDIT_TXT_INCOMECODENAMETH_LOCATOR}    ${INCOMECODE_INCOMECODENAMETH2_VALUE}
    #Incomecode NameEn
    Wait Until Contains Input Text    ${INCOMECODE_EDIT_TXT_INCOMECODENAMEEN_LOCATOR}    ${INCOMECODE_INCOMECODENAMEEN_VALUE}
    #Incomecode *
    Wait Until Contains Input Text    ${INCOMECODE_EDIT_TXT_INCOMECODE_LOCATOR}    ${INCOMECODE_INCOMECODE2_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${INCOMECODE_EDIT_INPUT_PRICEPERUNIT_LOCATOR}    ${INCOMECODE_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${INCOMECODE_EDIT_INPUT_VAT_LOCATOR}    ${INCOMECODE_VAT2_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${INCOMECODE_EDIT_INPUT_TAX_LOCATOR}    ${INCOMECODE_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${INCOMECODE_EDIT_TXTAREA_REMARK_LOCATOR}    ${INCOMECODE_REMARK_VALUE}

    #Status *
    Select Dropdown    ${INCOMECODE_EDIT_DDL_STATUS_LOCATOR}    ${INCOMECODE_EDIT_DDL_STATUS_LIST_LOCATOR}    ${INCOMECODE_EDIT_DDL_STATUS_CLASS_LOCATOR}    ${INCOMECODE_STATUS_TH_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${INCOMECODE_EDIT_DDL_GROUPTYPE_LOCATOR}    ${INCOMECODE_EDIT_DDL_GROUPTYPE_LIST_LOCATOR}    ${INCOMECODE_EDIT_DDL_GROUPTYPE_CLASS_LOCATOR}    ${INCOMECODE_GROUPTYPE_TH_VALUE2}
    Sleep    0.5s
    
    #Calculation type (every specified month)
    Select Dropdown    ${INCOMECODE_EDIT_DDL_CALCULATIONTYPE_LOCATOR}    ${INCOMECODE_EDIT_DDL_CALCULATIONTYPE_LIST_LOCATOR}    ${INCOMECODE_EDIT_DDL_CALCULATIONTYPE_CLASS_LOCATOR}    ${INCOMECODE_CALCULATIONTYPE_TH_VALUE}
    Sleep    0.5s

    #Calulation Method *
    Select Dropdown    ${INCOMECODE_EDIT_DDL_CALCULATIONMETHOD_LOCATOR}    ${INCOMECODE_EDIT_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${INCOMECODE_EDIT_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${INCOMECODE_CALCULATIONMETHOD_TH_VALUE1}
    Sleep    0.5s

    #Click Save button
    Click Element Page    ${INCOMECODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table IncomeCode

    ${data}=    Evaluate    {"incomeCode":"${INCOMECODE_INCOMECODE2_VALUE}", "incomeNameTh":"${INCOMECODE_INCOMECODENAMETH2_VALUE}", "incomeNameEn":"${INCOMECODE_INCOMECODENAMEEN_VALUE}", "paymentOrder":"1","status":"${INCOMECODE_STATUS_TH_VALUE1}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Check Value Table    ${INCOMECODE_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table IncomeCode

    #================ Verify DB ================    
    Request Verify DB Check Data Edit IncomeCode    ${MYSQL_TYPE_EDIT_ALLFIELD}    ${INCOMECODE_INCOMECODENAMETH2_VALUE}    ${INCOMECODE_INCOMECODENAMEEN_VALUE}    ${INCOMECODE_INCOMECODE2_VALUE}    ${INCOMECODE_VAT2_VALUE}    ${INCOMECODE_TAX_VALUE}    ${INCOMECODE_REMARK_VALUE}    ${INCOMECODE_STATUSID_VALUE1}    ${INCOMECODE_GROUPTYPEID_VALUE2}    ${NONE}    ${INCOMECODE_CALCULATIONMETHOD_ID_VALUE1}    ${INCOMECODE_PRICEPERUNIT_VALUE}    ${NONE}    ${NONE}    ${DATA_MULCTCODE_INDEX_VALUE}

################################################################################################################################
################################################################-- Create IncomeCode [EN]--################################################################
#====== Check DB ==========
#คิดตามจริง ,ไม่คิดค่าปรับ
Create IncomeCode input all field data EN
    
    #========== Create MulctCode ====== 
    ${mulctConditionDetail}=    Set Variable    [{"timePastDeadline": 1, "dateToFlag": ${FALSE_LOWWER}, "total": 100 }, {"dateToFlag": ${TRUE_LOWWER}, "timePastDeadline": 9999, "total": 1}]
 
    #Create data MulctCode and MulctMethod receive mulctMethodId mulctCodeId Set Global   
    Run keyword And Continue On Failure    Request CreateData for MulctCode      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_MULCTMETHOD_STATUS_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATE_VALUE}    ${DATA_MULCTMETHOD_CALCULATEMULCTTYPE_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATETYPE_VALUE}    ${DATA_MULCTMETHOD_UNITFROMTO_VALUE}    ${mulctConditionDetail}    ${DATA_MULCTMETHOD_NAMETH_VALUE}    ${DATA_MULCTCODE_GROUPTYPEID_VALUE}    ${DATA_MULCTCODE_MULCTCODE_VALUE}    ${DATA_MULCTCODE_NAMEEN_VALUE}    ${DATA_MULCTCODE_NAMETH_VALUE}    ${DATA_MULCTCODE_REMARK_VALUE}    ${DATA_MULCTCODE_STATUS_VALUE}    ${DATA_MULCTCODE_TAX_VALUE}    ${DATA_MULCTCODE_VAT_VALUE}

    #Click Create IncomeCode
    Click Element Page    ${INCOMECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create IncomeCode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_EN} 

    #Incomecode NameTh *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODENAMETH_LOCATOR}    ${INCOMECODE_INCOMECODENAMETH_VALUE}
    #Incomecode NameEn
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODENAMEEN_LOCATOR}    ${INCOMECODE_INCOMECODENAMEEN_VALUE}
    #Incomecode *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODE_LOCATOR}    ${INCOMECODE_INCOMECODE_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_PRICEPERUNIT_LOCATOR}    ${INCOMECODE_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_VAT_LOCATOR}    ${INCOMECODE_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_TAX_LOCATOR}    ${INCOMECODE_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXTAREA_REMARK_LOCATOR}    ${INCOMECODE_REMARK_VALUE}

    #Status *
    Select Dropdown    ${INCOMECODE_ADD_DDL_STATUS_LOCATOR}    ${INCOMECODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${INCOMECODE_STATUS_EN_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${INCOMECODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${INCOMECODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${INCOMECODE_GROUPTYPE_EN_VALUE1}
    Sleep    0.5s
    
    #Calculation type (every specified month)
    Select Dropdown    ${INCOMECODE_ADD_DDL_CALCULATIONTYPE_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONTYPE_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONTYPE_CLASS_LOCATOR}    ${INCOMECODE_CALCULATIONTYPE_EN_VALUE}
    Sleep    0.5s

    #Calulation Method *
    Select Dropdown    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${INCOMECODE_CALCULATIONMETHOD_EN_VALUE1}
    Sleep    0.5s

    # #Mulctcode *
    # Select Dropdown    ${INCOMECODE_ADD_DDL_MULCTCODE_LOCATOR}    ${INCOMECODE_ADD_DDL_MULCTCODE_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_MULCTCODE_CLASS_LOCATOR}    ${INCOMECODE_MULCTCODE_EN_VALUE}
    # Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${INCOMECODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}
    
    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table IncomeCode EN

    ${data}=    Evaluate    {"incomeCode":"${INCOMECODE_INCOMECODE_VALUE}", "incomeNameTh":"${INCOMECODE_INCOMECODENAMETH_VALUE}", "incomeNameEn":"${INCOMECODE_INCOMECODENAMEEN_VALUE}", "paymentOrder":"1","status":"${INCOMECODE_STATUS_EN_VALUE1}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Log To Console    ${valArrDataTable}
    Check Value Table    ${INCOMECODE_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table IncomeCode EN

    # ================ Verify DB ================    
    Request Verify DB Check Data Create IncomeCode    ${MYSQL_TYPE_CREATE_ALLFIELD}    ${INCOMECODE_INCOMECODENAMETH_VALUE}    ${INCOMECODE_INCOMECODENAMEEN_VALUE}    ${INCOMECODE_INCOMECODE_VALUE}    ${INCOMECODE_VAT_VALUE}    ${INCOMECODE_TAX_VALUE}    ${INCOMECODE_REMARK_VALUE}    ${INCOMECODE_STATUSID_VALUE1}    ${INCOMECODE_GROUPTYPE_ID_VALUE1}    ${NONE}    ${INCOMECODE_CALCULATIONMETHOD_ID_VALUE1}    ${INCOMECODE_PRICEPERUNIT_VALUE}    ${NONE}    ${NONE}    ${DATA_MULCTCODE_INDEX_VALUE}

Create IncomeCode input require field data EN
    #========== Create MulctCode ====== 
    ${mulctConditionDetail}=    Set Variable    [{"timePastDeadline": 1, "dateToFlag": ${FALSE_LOWWER}, "total": 100 }, {"dateToFlag": ${TRUE_LOWWER}, "timePastDeadline": 9999, "total": 1}]
 
    #Create data MulctCode and MulctMethod receive mulctMethodId mulctCodeId Set Global   
    Run keyword And Continue On Failure    Request CreateData for MulctCode      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_MULCTMETHOD_STATUS_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATE_VALUE}    ${DATA_MULCTMETHOD_CALCULATEMULCTTYPE_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATETYPE_VALUE}    ${DATA_MULCTMETHOD_UNITFROMTO_VALUE}    ${mulctConditionDetail}    ${DATA_MULCTMETHOD_NAMETH_VALUE}    ${DATA_MULCTCODE_GROUPTYPEID_VALUE}    ${DATA_MULCTCODE_MULCTCODE_VALUE}    ${DATA_MULCTCODE_NAMEEN_VALUE}    ${DATA_MULCTCODE_NAMETH_VALUE}    ${DATA_MULCTCODE_REMARK_VALUE}    ${DATA_MULCTCODE_STATUS_VALUE}    ${DATA_MULCTCODE_TAX_VALUE}    ${DATA_MULCTCODE_VAT_VALUE}

    #Click Create IncomeCode
    Click Element Page    ${INCOMECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create IncomeCode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_EN} 

    #Incomecode NameTh *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODENAMETH_LOCATOR}    ${INCOMECODE_INCOMECODENAMETH2_VALUE}
    # #Incomecode NameEn
    # Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODENAMEEN_LOCATOR}    ${INCOMECODE_INCOMECODENAMEEN_VALUE}
    #Incomecode *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODE_LOCATOR}    ${INCOMECODE_INCOMECODE2_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_PRICEPERUNIT_LOCATOR}    ${INCOMECODE_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_VAT_LOCATOR}    ${INCOMECODE_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_TAX_LOCATOR}    ${INCOMECODE_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXTAREA_REMARK_LOCATOR}    ${INCOMECODE_REMARK_VALUE}

    #Status *
    Select Dropdown    ${INCOMECODE_ADD_DDL_STATUS_LOCATOR}    ${INCOMECODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${INCOMECODE_STATUS_EN_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${INCOMECODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${INCOMECODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${INCOMECODE_GROUPTYPE_EN_VALUE1}
    Sleep    0.5s

    #Calulation Method *
    Select Dropdown    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${INCOMECODE_CALCULATIONMETHOD_EN_VALUE1}
    Sleep    0.5s

    # #Mulctcode *
    # Select Dropdown    ${INCOMECODE_ADD_DDL_MULCTCODE_LOCATOR}    ${INCOMECODE_ADD_DDL_MULCTCODE_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_MULCTCODE_CLASS_LOCATOR}    ${INCOMECODE_MULCTCODE_EN_VALUE}
    # Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${INCOMECODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}
    
    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table IncomeCode EN

    ${data}=    Evaluate    {"incomeCode":"${INCOMECODE_INCOMECODE2_VALUE}", "incomeNameTh":"${INCOMECODE_INCOMECODENAMETH2_VALUE}", "incomeNameEn":"${INCOMECODE_INCOMECODENAMETH2_VALUE}", "paymentOrder":"1","status":"${INCOMECODE_STATUS_EN_VALUE1}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Log To Console    ${valArrDataTable}
    Check Value Table    ${INCOMECODE_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table IncomeCode EN

    #================ Verify DB ================    
    Request Verify DB Check Data Create IncomeCode    ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${INCOMECODE_INCOMECODENAMETH2_VALUE}    ${INCOMECODE_INCOMECODENAMEEN_VALUE_NONE}    ${INCOMECODE_INCOMECODE2_VALUE}    ${INCOMECODE_VAT_VALUE}    ${INCOMECODE_TAX_VALUE}    ${INCOMECODE_REMARK_VALUE}    ${INCOMECODE_STATUSID_VALUE1}    ${INCOMECODE_GROUPTYPE_ID_VALUE1}    ${NONE}    ${INCOMECODE_CALCULATIONMETHOD_ID_VALUE1}    ${INCOMECODE_PRICEPERUNIT_VALUE}    ${NONE}    ${NONE}    ${DATA_MULCTCODE_INDEX_VALUE}

#====== No Check Table ==========
Create IncomeCode input all field data No Check Table EN
    
    #========== Create MulctCode ====== 
    ${mulctConditionDetail}=    Set Variable    [{"timePastDeadline": 1, "dateToFlag": ${FALSE_LOWWER}, "total": 100 }, {"dateToFlag": ${TRUE_LOWWER}, "timePastDeadline": 9999, "total": 1}]
 
    #Create data MulctCode and MulctMethod receive mulctMethodId mulctCodeId Set Global   
    Run keyword And Continue On Failure    Request CreateData for MulctCode      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_MULCTMETHOD_STATUS_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATE_VALUE}    ${DATA_MULCTMETHOD_CALCULATEMULCTTYPE_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATETYPE_VALUE}    ${DATA_MULCTMETHOD_UNITFROMTO_VALUE}    ${mulctConditionDetail}    ${DATA_MULCTMETHOD_NAMETH_VALUE}    ${DATA_MULCTCODE_GROUPTYPEID_VALUE}    ${DATA_MULCTCODE_MULCTCODE_VALUE}    ${DATA_MULCTCODE_NAMEEN_VALUE}    ${DATA_MULCTCODE_NAMETH_VALUE}    ${DATA_MULCTCODE_REMARK_VALUE}    ${DATA_MULCTCODE_STATUS_VALUE}    ${DATA_MULCTCODE_TAX_VALUE}    ${DATA_MULCTCODE_VAT_VALUE}

    #Click Create IncomeCode
    Click Element Page    ${INCOMECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create IncomeCode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_EN} 

    #Incomecode NameTh *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODENAMETH_LOCATOR}    ${INCOMECODE_INCOMECODENAMETH_VALUE}
    #Incomecode NameEn
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODENAMEEN_LOCATOR}    ${INCOMECODE_INCOMECODENAMEEN_VALUE}
    #Incomecode *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODE_LOCATOR}    ${INCOMECODE_INCOMECODE_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_PRICEPERUNIT_LOCATOR}    ${INCOMECODE_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_VAT_LOCATOR}    ${INCOMECODE_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_TAX_LOCATOR}    ${INCOMECODE_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXTAREA_REMARK_LOCATOR}    ${INCOMECODE_REMARK_VALUE}

    #Status *
    Select Dropdown    ${INCOMECODE_ADD_DDL_STATUS_LOCATOR}    ${INCOMECODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${INCOMECODE_STATUS_EN_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${INCOMECODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${INCOMECODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${INCOMECODE_GROUPTYPE_EN_VALUE1}
    Sleep    0.5s
    
    #Calculation type (every specified month)
    Select Dropdown    ${INCOMECODE_ADD_DDL_CALCULATIONTYPE_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONTYPE_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONTYPE_CLASS_LOCATOR}    ${INCOMECODE_CALCULATIONTYPE_EN_VALUE}
    Sleep    0.5s

    #Calulation Method *
    Select Dropdown    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${INCOMECODE_CALCULATIONMETHOD_EN_VALUE1}
    Sleep    0.5s

    # #Mulctcode *
    # Select Dropdown    ${INCOMECODE_ADD_DDL_MULCTCODE_LOCATOR}    ${INCOMECODE_ADD_DDL_MULCTCODE_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_MULCTCODE_CLASS_LOCATOR}    ${INCOMECODE_MULCTCODE_EN_VALUE}
    # Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${INCOMECODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

Create IncomeCode input require field data No Check Table EN
#========== Create MulctMethod ======
    #========== Create MulctCode ====== 
    ${mulctConditionDetail}=    Set Variable    [{"timePastDeadline": 1, "dateToFlag": ${FALSE_LOWWER}, "total": 100 }, {"dateToFlag": ${TRUE_LOWWER}, "timePastDeadline": 9999, "total": 1}]
 
    #Create data MulctCode and MulctMethod receive mulctMethodId mulctCodeId Set Global   
    Run keyword And Continue On Failure    Request CreateData for MulctCode      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_MULCTMETHOD_STATUS_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATE_VALUE}    ${DATA_MULCTMETHOD_CALCULATEMULCTTYPE_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATETYPE_VALUE}    ${DATA_MULCTMETHOD_UNITFROMTO_VALUE}    ${mulctConditionDetail}    ${DATA_MULCTMETHOD_NAMETH_VALUE}    ${DATA_MULCTCODE_GROUPTYPEID_VALUE}    ${DATA_MULCTCODE_MULCTCODE_VALUE}    ${DATA_MULCTCODE_NAMEEN_VALUE}    ${DATA_MULCTCODE_NAMETH_VALUE}    ${DATA_MULCTCODE_REMARK_VALUE}    ${DATA_MULCTCODE_STATUS_VALUE}    ${DATA_MULCTCODE_TAX_VALUE}    ${DATA_MULCTCODE_VAT_VALUE}

    #Click Create IncomeCode
    Click Element Page    ${INCOMECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create IncomeCode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_EN} 

    #Incomecode NameTh *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODENAMETH_LOCATOR}    ${INCOMECODE_INCOMECODENAMETH2_VALUE}
    # #Incomecode NameEn
    # Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODENAMEEN_LOCATOR}    ${INCOMECODE_INCOMECODENAMEEN_VALUE}
    #Incomecode *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODE_LOCATOR}    ${INCOMECODE_INCOMECODE2_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_PRICEPERUNIT_LOCATOR}    ${INCOMECODE_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_VAT_LOCATOR}    ${INCOMECODE_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_TAX_LOCATOR}    ${INCOMECODE_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXTAREA_REMARK_LOCATOR}    ${INCOMECODE_REMARK_VALUE}

    #Status *
    Select Dropdown    ${INCOMECODE_ADD_DDL_STATUS_LOCATOR}    ${INCOMECODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${INCOMECODE_STATUS_EN_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${INCOMECODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${INCOMECODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${INCOMECODE_GROUPTYPE_EN_VALUE1}
    Sleep    0.5s

    #Calulation Method *
    Select Dropdown    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${INCOMECODE_CALCULATIONMETHOD_EN_VALUE1}
    Sleep    0.5s

    # #Mulctcode *
    # Select Dropdown    ${INCOMECODE_ADD_DDL_MULCTCODE_LOCATOR}    ${INCOMECODE_ADD_DDL_MULCTCODE_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_MULCTCODE_CLASS_LOCATOR}    ${INCOMECODE_MULCTCODE_EN_VALUE}
    # Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${INCOMECODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

Create IncomeCode input require field data No Check Table and No Create MulctMethod EN

    #Click Create IncomeCode
    Click Element Page    ${INCOMECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create IncomeCode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_EN} 

    #Incomecode NameTh *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODENAMETH_LOCATOR}    ${INCOMECODE_INCOMECODENAMETH2_VALUE}
    # #Incomecode NameEn
    # Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODENAMEEN_LOCATOR}    ${INCOMECODE_INCOMECODENAMEEN_VALUE}
    #Incomecode *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXT_INCOMECODE_LOCATOR}    ${INCOMECODE_INCOMECODE2_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_PRICEPERUNIT_LOCATOR}    ${INCOMECODE_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_VAT_LOCATOR}    ${INCOMECODE_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${INCOMECODE_ADD_INPUT_TAX_LOCATOR}    ${INCOMECODE_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${INCOMECODE_ADD_TXTAREA_REMARK_LOCATOR}    ${INCOMECODE_REMARK_VALUE}

    #Status *
    Select Dropdown    ${INCOMECODE_ADD_DDL_STATUS_LOCATOR}    ${INCOMECODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${INCOMECODE_STATUS_EN_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${INCOMECODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${INCOMECODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${INCOMECODE_GROUPTYPE_EN_VALUE1}
    Sleep    0.5s

    #Calulation Method *
    Select Dropdown    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${INCOMECODE_CALCULATIONMETHOD_EN_VALUE1}
    Sleep    0.5s

    # #Mulctcode *
    # Select Dropdown    ${INCOMECODE_ADD_DDL_MULCTCODE_LOCATOR}    ${INCOMECODE_ADD_DDL_MULCTCODE_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_MULCTCODE_CLASS_LOCATOR}    ${INCOMECODE_MULCTCODE_EN_VALUE}
    # Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${INCOMECODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

################################################################################################################################
################################################################-- Edit IncomeCode --################################################################
Edit IncomeCode input all field data EN
    #Click Edit IncomeCode
    Click Element Page    ${INCOMECODE_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit Incomecode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_EDIT_LBL_EDITINCOMECODE_LOCATOR}    ${INCOMECODE_EDIT_LBL_EDITINCOMECODE_EN} 
    
    #Incomecode NameTh *
    Wait Until Contains Input Text    ${INCOMECODE_EDIT_TXT_INCOMECODENAMETH_LOCATOR}    ${INCOMECODE_INCOMECODENAMETH2_VALUE}
    #Incomecode NameEn
    Wait Until Contains Input Text    ${INCOMECODE_EDIT_TXT_INCOMECODENAMEEN_LOCATOR}    ${INCOMECODE_INCOMECODENAMEEN_VALUE}
    #Incomecode *
    Wait Until Contains Input Text    ${INCOMECODE_EDIT_TXT_INCOMECODE_LOCATOR}    ${INCOMECODE_INCOMECODE2_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${INCOMECODE_EDIT_INPUT_PRICEPERUNIT_LOCATOR}    ${INCOMECODE_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${INCOMECODE_EDIT_INPUT_VAT_LOCATOR}    ${INCOMECODE_VAT2_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${INCOMECODE_EDIT_INPUT_TAX_LOCATOR}    ${INCOMECODE_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${INCOMECODE_EDIT_TXTAREA_REMARK_LOCATOR}    ${INCOMECODE_REMARK_VALUE}

    #Status *
    Select Dropdown    ${INCOMECODE_EDIT_DDL_STATUS_LOCATOR}    ${INCOMECODE_EDIT_DDL_STATUS_LIST_LOCATOR}    ${INCOMECODE_EDIT_DDL_STATUS_CLASS_LOCATOR}    ${INCOMECODE_STATUS_EN_VALUE2}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${INCOMECODE_EDIT_DDL_GROUPTYPE_LOCATOR}    ${INCOMECODE_EDIT_DDL_GROUPTYPE_LIST_LOCATOR}    ${INCOMECODE_EDIT_DDL_GROUPTYPE_CLASS_LOCATOR}    ${INCOMECODE_GROUPTYPE_EN_VALUE2}
    Sleep    0.5s
    
    #Calculation type (every specified month)
    Select Dropdown    ${INCOMECODE_EDIT_DDL_CALCULATIONTYPE_LOCATOR}    ${INCOMECODE_EDIT_DDL_CALCULATIONTYPE_LIST_LOCATOR}    ${INCOMECODE_EDIT_DDL_CALCULATIONTYPE_CLASS_LOCATOR}    ${INCOMECODE_CALCULATIONTYPE_EN_VALUE}
    Sleep    0.5s

    #Calulation Method *
    Select Dropdown    ${INCOMECODE_EDIT_DDL_CALCULATIONMETHOD_LOCATOR}    ${INCOMECODE_EDIT_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${INCOMECODE_EDIT_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${INCOMECODE_CALCULATIONMETHOD_EN_VALUE1}
    Sleep    0.5s

    #Click Save button
    Click Element Page    ${INCOMECODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table IncomeCode EN

    ${data}=    Evaluate    {"incomeCode":"${INCOMECODE_INCOMECODE2_VALUE}", "incomeNameTh":"${INCOMECODE_INCOMECODENAMETH2_VALUE}", "incomeNameEn":"${INCOMECODE_INCOMECODENAMEEN_VALUE}", "paymentOrder":"1","status":"${INCOMECODE_STATUS_EN_VALUE2}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Check Value Table    ${INCOMECODE_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table IncomeCode EN

    #================ Verify DB ================    
    Request Verify DB Check Data Edit IncomeCode    ${MYSQL_TYPE_EDIT_ALLFIELD}    ${INCOMECODE_INCOMECODENAMETH2_VALUE}    ${INCOMECODE_INCOMECODENAMEEN_VALUE}    ${INCOMECODE_INCOMECODE2_VALUE}    ${INCOMECODE_VAT2_VALUE}    ${INCOMECODE_TAX_VALUE}    ${INCOMECODE_REMARK_VALUE}    ${INCOMECODE_STATUSID_VALUE2}    ${INCOMECODE_GROUPTYPEID_VALUE2}    ${NONE}    ${INCOMECODE_CALCULATIONMETHOD_ID_VALUE1}    ${INCOMECODE_PRICEPERUNIT_VALUE}    ${NONE}    ${NONE}    ${DATA_MULCTCODE_INDEX_VALUE}

################################################################-- Generic Test Case Teardown IncomeCode--################################################################
Generic Test Case Teardown IncomeCode    
    [Arguments]    ${value_delete}    ${mulctCodeId}    ${mulctMethodId}
    
    #Click delete button
    ${IncomeCode}=    Get Text String    ${INCOMECODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    IncomeCode${IncomeCode}

    #Click delete button
    Click Delete Data TH    ${INCOMECODE_BTN_DELETE_LOCATOR}    ${IncomeCode}

    #Delete MulctCode
    Request DeleteData for MulctCode     ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${mulctCodeId}    ${mulctMethodId}

    ################### Close Browser ###################
    Close Browser     

Generic Test Case Teardown IncomeCode2    
    [Arguments]    ${value_delete}    ${mulctCodeId}    ${mulctMethodId}

    #Click delete button
    ${IncomeCode}=    Get Text String    ${INCOMECODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    IncomeCode${IncomeCode}
    
    #Click delete button
    Click Delete Data TH    ${INCOMECODE_BTN_DELETE_LOCATOR}    ${IncomeCode}

    #Click delete button
    ${IncomeCode2}=    Get Text String    ${INCOMECODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}

    #Click delete button
    Click Delete Data TH    ${INCOMECODE_BTN_DELETE_LOCATOR}    ${IncomeCode2}

    #Delete MulctCode
    Request DeleteData for MulctCode     ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${mulctCodeId}    ${mulctMethodId}

    ################### Close Browser ###################
    Close Browser     

Generic Test Case Teardown IncomeCode3
    [Arguments]    ${incomeCodeId}
    #Delete IncomeCode
    Request DeleteData for IncomeCode     ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${incomeCodeId}

    ################### Close Browser ###################
    Close Browser    

Generic Test Case Teardown IncomeCode EN
    [Arguments]    ${value_delete}    ${mulctCodeId}    ${mulctMethodId}
    
    #Click delete button
    ${IncomeCode}=    Get Text String    ${INCOMECODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    IncomeCode${IncomeCode}

    #Click delete button
    Click Delete Data EN    ${INCOMECODE_BTN_DELETE_LOCATOR}    ${IncomeCode}

    #Delete MulctCode
    Request DeleteData for MulctCode     ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${mulctCodeId}    ${mulctMethodId}

    ################### Close Browser ###################
    Close Browser   

Generic Test Case Teardown IncomeCode2 EN
    [Arguments]    ${value_delete}    ${mulctCodeId}    ${mulctMethodId}

    #Click delete button
    ${IncomeCode}=    Get Text String    ${INCOMECODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    IncomeCode${IncomeCode}
    
    #Click delete button
    Click Delete Data EN    ${INCOMECODE_BTN_DELETE_LOCATOR}    ${IncomeCode}

    #Click delete button
    ${IncomeCode2}=    Get Text String    ${INCOMECODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}

    #Click delete button
    Click Delete Data EN    ${INCOMECODE_BTN_DELETE_LOCATOR}    ${IncomeCode2}

    #Delete MulctCode
    Request DeleteData for MulctCode     ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${mulctCodeId}    ${mulctMethodId}

    ################### Close Browser ###################
    Close Browser     
        
Generic Test Case Teardown IncomeCode mulctCode and mulctMethod
    [Arguments]    ${value_delete}    ${mulctCodeId}    ${mulctMethodId}    ${incomeCodeId}
    #Delete MulctCode
    Request DeleteData for MulctCode     ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${mulctCodeId}    ${mulctMethodId}    ${incomeCodeId}

    ################### Close Browser ###################
    Close Browser     

Generic Test Case Teardown IncomeCode not Close Browser
    [Arguments]    ${value_delete}    ${mulctCodeId}    ${mulctMethodId}
    
    #Click delete button
    ${IncomeCode}=    Get Text String    ${INCOMECODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    IncomeCode${IncomeCode}

    #Click delete button
    Click Delete Data TH    ${INCOMECODE_BTN_DELETE_LOCATOR}    ${IncomeCode}

    #Delete MulctCode
    Request DeleteData for MulctCode     ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${mulctCodeId}    ${mulctMethodId}

Generic Test Case Teardown IncomeCode not Close Browser EN
    [Arguments]    ${value_delete}    ${mulctCodeId}    ${mulctMethodId}
    
    #Click delete button
    ${IncomeCode}=    Get Text String    ${INCOMECODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    IncomeCode${IncomeCode}

    #Click delete button
    Click Delete Data EN    ${INCOMECODE_BTN_DELETE_LOCATOR}    ${IncomeCode}

    #Delete MulctCode
    Request DeleteData for MulctCode     ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${mulctCodeId}    ${mulctMethodId}


################################################################################################################################
    