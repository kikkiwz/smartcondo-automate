*** Keywords ***
################################################################-- Set Data for check value table MulctCode--################################################################
Set Data for check value table MulctCode
    # Set field header table To Array
    ${numCol}=    Convert To Integer    ${MULCTCODE_SEARCH_NUMCOL}
    #Set field header table To Array
    @{fieldArrDataTable}=    Create List    
    Append To List    ${fieldArrDataTable}    @{MULCTCODE_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_TH}
    # Append To List    ${fieldArrDataTable}    no    mulctCode    mulctNameTh    status
    #Set Num field To Array
    @{arrNumfield}=    Create List    
    Append To List    ${arrNumfield}    ${numCol-4}    ${numCol-3}    ${numCol-2}    ${numCol-1}
    #Set Num Col To Array
    @{arrNumCol}=    Create List    
    Append To List    ${arrNumCol}    ${numCol-3}    ${numCol-2}    ${numCol-1}    ${numCol}
    [Return]    ${numCol}    ${fieldArrDataTable}    ${arrNumfield}    ${arrNumCol}
    
Set Data for check value table MulctCode EN
    #Set field header table To Array
    ${numCol}=    Convert To Integer    ${MULCTCODE_SEARCH_NUMCOL}
    #Set field header table To Array
    @{fieldArrDataTable}=    Create List    
    Append To List    ${fieldArrDataTable}    @{MULCTCODE_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_EN}
    # Append To List    ${fieldArrDataTable}    no    mulctCode    mulctNameEn    status
    #Set Num field To Array
    @{arrNumfield}=    Create List    
    Append To List    ${arrNumfield}    ${numCol-4}    ${numCol-3}    ${numCol-2}    ${numCol-1}
    #Set Num Col To Array
    @{arrNumCol}=    Create List    
    Append To List    ${arrNumCol}    ${numCol-3}    ${numCol-2}    ${numCol-1}    ${numCol}
    [Return]    ${numCol}    ${fieldArrDataTable}    ${arrNumfield}    ${arrNumCol}
    
Check Value Table MulctCode
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search MulctCode    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_MULCTCODE_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    Set Global Variable    ${rowcountSearchMulctCode}    ${resultSearch}[1]
    Log To Console    [rowcount SearchMulctCode] : ${rowcountSearchMulctCode}

    ${checkNodata}=    Run Keyword If    '${rowcountSearchMulctCode}'=='0'    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchMulctCode}'!='0'    Check Value Table Search MulctCode    ${DEFAULT_TH}     ${rowcountSearchMulctCode}    ${dataSearch}
    
    [Return]    ${rowcountSearchMulctCode}

Check Value Table MulctCode EN
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search MulctCode    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_MULCTCODE_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    Set Global Variable    ${rowcountSearchMulctCode}    ${resultSearch}[1]
    Log To Console    [rowcount SearchMulctCode] : ${rowcountSearchMulctCode}

    ${checkNodata}=    Run Keyword If    '${rowcountSearchMulctCode}'=='0'    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchMulctCode}'!='0'    Check Value Table Search MulctCode    ${DEFAULT_EN}     ${rowcountSearchMulctCode}    ${dataSearch}
    
    [Return]    ${rowcountSearchMulctCode}
################################################################-- Create MulctCode--################################################################
#====== Check DB ==========
Create MulctCode input all field data 
    
    #========== Create MulctMethod ======
    ${mulctConditionDetail}=    Set Variable    [{"timePastDeadline": 1, "dateToFlag": ${FALSE_LOWWER}, "total": 100 }, {"dateToFlag": ${TRUE_LOWWER}, "timePastDeadline": 9999, "total": 1}]
    #Create data MulctMethod receive mulctMethodId Set Global
    Run keyword And Continue On Failure    Request CreateData for MulctMethod      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_MULCTMETHOD_STATUS_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATE_VALUE}    ${DATA_MULCTMETHOD_CALCULATEMULCTTYPE_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATETYPE_VALUE}    ${DATA_MULCTMETHOD_UNITFROMTO_VALUE}    ${mulctConditionDetail}    ${DATA_MULCTMETHOD_NAMETH_VALUE}

    #Click Create Mulctcode
    Click Element Page    ${MULCTCODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create Mulctcode
    Wait Until Contains Element Text Should Be    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_LOCATOR}    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_TH} 

    #Mulctcode NameTh *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_TXT_MULCTCODENAMETH_LOCATOR}    ${MULCTCODE_MULCTCODENAMETH_VALUE}
    #Mulctcode NameEn
    Wait Until Contains Input Text    ${MULCTCODE_ADD_TXT_MULCTCODENAMEEN_LOCATOR}    ${MULCTCODE_MULCTCODENAMEEN_VALUE}
    #Mulctcode *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_TXT_MULCTCODE_LOCATOR}    ${MULCTCODE_MULCTCODE_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_INPUT_VAT_LOCATOR}    ${MULCTCODE_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_INPUT_TAX_LOCATOR}    ${MULCTCODE_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${MULCTCODE_ADD_TXTAREA_REMARK_LOCATOR}    ${MULCTCODE_REMARK_VALUE}

    #Status *
    Select Dropdown    ${MULCTCODE_ADD_DDL_STATUS_LOCATOR}    ${MULCTCODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${MULCTCODE_STATUS_TH_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${MULCTCODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${MULCTCODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${MULCTCODE_GROUPTYPE_TH_VALUE1}
    Sleep    0.5s
    
    #Mulct Method *
    Select Dropdown    ${MULCTCODE_ADD_DDL_MULCTMETHOD_LOCATOR}    ${MULCTCODE_ADD_DDL_MULCTMETHOD_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_MULCTMETHOD_CLASS_LOCATOR}    ${MULCTCODE_MULCTMETHOD_TH_VALUE}
    Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${MULCTCODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}
    
    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table MulctCode

    ${data}=    Evaluate    {"no":"1", "mulctCode":"${MULCTCODE_MULCTCODE_VALUE}", "mulctNameTh":"${MULCTCODE_MULCTCODENAMETH_VALUE}", "mulctNameEn":"${MULCTCODE_MULCTCODENAMEEN_VALUE}","status":"${MULCTCODE_STATUS_TH_VALUE1}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Check Value Table    ${MULCTCODE_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table MulctCode

    #================ Verify DB ================    
    Request Verify DB Check Data Create MulctCode    ${MYSQL_TYPE_CREATE_ALLFIELD}    ${MULCTCODE_MULCTCODENAMETH_VALUE}    ${MULCTCODE_MULCTCODENAMEEN_VALUE}    ${MULCTCODE_MULCTCODE_VALUE}    ${MULCTCODE_VAT_VALUE}    ${MULCTCODE_TAX_VALUE}    ${MULCTCODE_REMARK_VALUE}    ${MULCTCODE_STATUSID_VALUE1}    ${MULCTCODE_GROUPTYPEID_VALUE1}    ${mulctMethodId}
    
Create MulctCode input require field data
    #========== Create MulctMethod ======
    ${mulctConditionDetail}=    Set Variable    [{"timePastDeadline": 1, "dateToFlag": ${FALSE_LOWWER}, "total": 100 }, {"dateToFlag": ${TRUE_LOWWER}, "timePastDeadline": 9999, "total": 1}]
    #Create data MulctMethod receive mulctMethodId Set Global
    Run keyword And Continue On Failure    Request CreateData for MulctMethod      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_MULCTMETHOD_STATUS_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATE_VALUE}    ${DATA_MULCTMETHOD_CALCULATEMULCTTYPE_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATETYPE_VALUE}    ${DATA_MULCTMETHOD_UNITFROMTO_VALUE}    ${mulctConditionDetail}    ${DATA_MULCTMETHOD_NAMETH_VALUE}

    #Click Create Mulctcode
    Click Element Page    ${MULCTCODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create Mulctcode
    Wait Until Contains Element Text Should Be    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_LOCATOR}    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_TH} 

    #Mulctcode NameTh *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_TXT_MULCTCODENAMETH_LOCATOR}    ${MULCTCODE_MULCTCODENAMETH2_VALUE}
    #Mulctcode *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_TXT_MULCTCODE_LOCATOR}    ${MULCTCODE_MULCTCODE2_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_INPUT_VAT_LOCATOR}    ${MULCTCODE_VAT2_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_INPUT_TAX_LOCATOR}    ${MULCTCODE_TAX2_VALUE}

    #Status *
    Select Dropdown    ${MULCTCODE_ADD_DDL_STATUS_LOCATOR}    ${MULCTCODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${MULCTCODE_STATUS_TH_VALUE2}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${MULCTCODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${MULCTCODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${MULCTCODE_GROUPTYPE_TH_VALUE2}
    Sleep    0.5s
    
    #Mulct Method *
    Select Dropdown    ${MULCTCODE_ADD_DDL_MULCTMETHOD_LOCATOR}    ${MULCTCODE_ADD_DDL_MULCTMETHOD_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_MULCTMETHOD_CLASS_LOCATOR}    ${MULCTCODE_MULCTMETHOD_TH_VALUE}
    Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${MULCTCODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}
    
    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table MulctCode

    ${data}=    Evaluate    {"no":"1", "mulctCode":"${MULCTCODE_MULCTCODE2_VALUE}", "mulctNameTh":"${MULCTCODE_MULCTCODENAMETH2_VALUE}", "mulctNameEn":"","status":"${MULCTCODE_STATUS_TH_VALUE2}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Check Value Table    ${MULCTCODE_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table MulctCode

    #================ Verify DB ================    
    Request Verify DB Check Data Create MulctCode    ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${MULCTCODE_MULCTCODENAMETH2_VALUE}    ${MULCTCODE_MULCTCODENAMEEN_VALUE_NONE}    ${MULCTCODE_MULCTCODE2_VALUE}    ${MULCTCODE_VAT2_VALUE}    ${MULCTCODE_TAX2_VALUE}    ${MULCTCODE_REMARK_VALUE_NONE}    ${MULCTCODE_STATUSID_VALUE2}    ${MULCTCODE_GROUPTYPEID_VALUE2}    ${mulctMethodId}
    
#====== No Check Table ==========
Create MulctCode input all field data No Check Table 
    
    #========== Create MulctMethod ======
    ${mulctConditionDetail}=    Set Variable    [{"timePastDeadline": 1, "dateToFlag": ${FALSE_LOWWER}, "total": 100 }, {"dateToFlag": ${TRUE_LOWWER}, "timePastDeadline": 9999, "total": 1}]
    #Create data MulctMethod receive mulctMethodId Set Global
    Run keyword And Continue On Failure    Request CreateData for MulctMethod      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_MULCTMETHOD_STATUS_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATE_VALUE}    ${DATA_MULCTMETHOD_CALCULATEMULCTTYPE_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATETYPE_VALUE}    ${DATA_MULCTMETHOD_UNITFROMTO_VALUE}    ${mulctConditionDetail}    ${DATA_MULCTMETHOD_NAMETH_VALUE}

    #Click Create Mulctcode
    Click Element Page    ${MULCTCODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create Mulctcode
    Wait Until Contains Element Text Should Be    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_LOCATOR}    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_TH} 

    #Mulctcode NameTh *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_TXT_MULCTCODENAMETH_LOCATOR}    ${MULCTCODE_MULCTCODENAMETH_VALUE}
    #Mulctcode NameEn
    Wait Until Contains Input Text    ${MULCTCODE_ADD_TXT_MULCTCODENAMEEN_LOCATOR}    ${MULCTCODE_MULCTCODENAMEEN_VALUE}
    #Mulctcode *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_TXT_MULCTCODE_LOCATOR}    ${MULCTCODE_MULCTCODE_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_INPUT_VAT_LOCATOR}    ${MULCTCODE_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_INPUT_TAX_LOCATOR}    ${MULCTCODE_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${MULCTCODE_ADD_TXTAREA_REMARK_LOCATOR}    ${MULCTCODE_REMARK_VALUE}

    #Status *
    Select Dropdown    ${MULCTCODE_ADD_DDL_STATUS_LOCATOR}    ${MULCTCODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${MULCTCODE_STATUS_TH_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${MULCTCODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${MULCTCODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${MULCTCODE_GROUPTYPE_TH_VALUE1}
    Sleep    0.5s
    
    #Mulct Method *
    Select Dropdown    ${MULCTCODE_ADD_DDL_MULCTMETHOD_LOCATOR}    ${MULCTCODE_ADD_DDL_MULCTMETHOD_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_MULCTMETHOD_CLASS_LOCATOR}    ${MULCTCODE_MULCTMETHOD_TH_VALUE}
    Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${MULCTCODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

Create MulctCode input require field data No Check Table
#========== Create MulctMethod ======
    ${mulctConditionDetail}=    Set Variable    [{"timePastDeadline": 1, "dateToFlag": ${FALSE_LOWWER}, "total": 100 }, {"dateToFlag": ${TRUE_LOWWER}, "timePastDeadline": 9999, "total": 1}]
    #Create data MulctMethod receive mulctMethodId Set Global
    Run keyword And Continue On Failure    Request CreateData for MulctMethod      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_MULCTMETHOD_STATUS_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATE_VALUE}    ${DATA_MULCTMETHOD_CALCULATEMULCTTYPE_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATETYPE_VALUE}    ${DATA_MULCTMETHOD_UNITFROMTO_VALUE}    ${mulctConditionDetail}    ${DATA_MULCTMETHOD_NAMETH_VALUE}

    #Click Create Mulctcode
    Click Element Page    ${MULCTCODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s

    #Create Mulctcode
    Wait Until Contains Element Text Should Be    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_LOCATOR}    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_TH} 

    #Mulctcode NameTh *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_TXT_MULCTCODENAMETH_LOCATOR}    ${MULCTCODE_MULCTCODENAMETH2_VALUE}
    #Mulctcode *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_TXT_MULCTCODE_LOCATOR}    ${MULCTCODE_MULCTCODE2_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_INPUT_VAT_LOCATOR}    ${MULCTCODE_VAT2_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_INPUT_TAX_LOCATOR}    ${MULCTCODE_TAX2_VALUE}

    #Status *
    Select Dropdown    ${MULCTCODE_ADD_DDL_STATUS_LOCATOR}    ${MULCTCODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${MULCTCODE_STATUS_TH_VALUE2}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${MULCTCODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${MULCTCODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${MULCTCODE_GROUPTYPE_TH_VALUE2}
    Sleep    0.5s
    
    #Mulct Method *
    Select Dropdown    ${MULCTCODE_ADD_DDL_MULCTMETHOD_LOCATOR}    ${MULCTCODE_ADD_DDL_MULCTMETHOD_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_MULCTMETHOD_CLASS_LOCATOR}    ${MULCTCODE_MULCTMETHOD_TH_VALUE}
    Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${MULCTCODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

Create MulctCode input require field data No Check Table and No Create MulctMethod

    #Click Create Mulctcode
    Click Element Page    ${MULCTCODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create Mulctcode
    Wait Until Contains Element Text Should Be    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_LOCATOR}    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_TH} 

    #Mulctcode NameTh *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_TXT_MULCTCODENAMETH_LOCATOR}    ${MULCTCODE_MULCTCODENAMETH2_VALUE}
    #Mulctcode *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_TXT_MULCTCODE_LOCATOR}    ${MULCTCODE_MULCTCODE2_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_INPUT_VAT_LOCATOR}    ${MULCTCODE_VAT2_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_INPUT_TAX_LOCATOR}    ${MULCTCODE_TAX2_VALUE}

    #Status *
    Select Dropdown    ${MULCTCODE_ADD_DDL_STATUS_LOCATOR}    ${MULCTCODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${MULCTCODE_STATUS_TH_VALUE2}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${MULCTCODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${MULCTCODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${MULCTCODE_GROUPTYPE_TH_VALUE2}
    Sleep    0.5s
    
    #Mulct Method *
    Select Dropdown    ${MULCTCODE_ADD_DDL_MULCTMETHOD_LOCATOR}    ${MULCTCODE_ADD_DDL_MULCTMETHOD_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_MULCTMETHOD_CLASS_LOCATOR}    ${MULCTCODE_MULCTMETHOD_TH_VALUE}
    Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${MULCTCODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

################################################################################################################################
################################################################-- Edit MulctCode --################################################################
Edit MulctCode input all field data 
    #Click Edit MulctCode
    Click Element Page    ${MULCTCODE_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit Mulctcode
    Wait Until Contains Element Text Should Be    ${MULCTCODE_EDIT_LBL_EDITMULCTCODE_LOCATOR}    ${MULCTCODE_EDIT_LBL_EDITMULCTCODE_TH} 

    #Mulctcode NameTh *
    Wait Until Contains Input Text    ${MULCTCODE_EDIT_TXT_MULCTCODENAMETH_LOCATOR}    ${MULCTCODE_MULCTCODENAMETH_VALUE}
    #Mulctcode NameEn
    Wait Until Contains Input Text    ${MULCTCODE_EDIT_TXT_MULCTCODENAMEEN_LOCATOR}    ${MULCTCODE_MULCTCODENAMEEN_VALUE}
    #Mulctcode *
    Wait Until Contains Input Text    ${MULCTCODE_EDIT_TXT_MULCTCODE_LOCATOR}    ${MULCTCODE_MULCTCODE_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${MULCTCODE_EDIT_INPUT_VAT_LOCATOR}    ${MULCTCODE_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${MULCTCODE_EDIT_INPUT_TAX_LOCATOR}    ${MULCTCODE_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${MULCTCODE_EDIT_TXTAREA_REMARK_LOCATOR}    ${MULCTCODE_REMARK_VALUE}

    #Status *
    Select Dropdown    ${MULCTCODE_EDIT_DDL_STATUS_LOCATOR}    ${MULCTCODE_EDIT_DDL_STATUS_LIST_LOCATOR}    ${MULCTCODE_EDIT_DDL_STATUS_CLASS_LOCATOR}    ${MULCTCODE_STATUS_TH_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${MULCTCODE_EDIT_DDL_GROUPTYPE_LOCATOR}    ${MULCTCODE_EDIT_DDL_GROUPTYPE_LIST_LOCATOR}    ${MULCTCODE_EDIT_DDL_GROUPTYPE_CLASS_LOCATOR}    ${MULCTCODE_GROUPTYPE_TH_VALUE1}
    Sleep    0.5s
    
    #Mulct Method *
    Select Dropdown    ${MULCTCODE_EDIT_DDL_MULCTMETHOD_LOCATOR}    ${MULCTCODE_EDIT_DDL_MULCTMETHOD_LIST_LOCATOR}    ${MULCTCODE_EDIT_DDL_MULCTMETHOD_CLASS_LOCATOR}    ${MULCTCODE_MULCTMETHOD_TH_VALUE}
    Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${MULCTCODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table MulctCode

    ${data}=    Evaluate    {"no":"1", "mulctCode":"${MULCTCODE_MULCTCODE_VALUE}", "mulctNameTh":"${MULCTCODE_MULCTCODENAMETH_VALUE}", "mulctNameEn":"${MULCTCODE_MULCTCODENAMEEN_VALUE}","status":"${MULCTCODE_STATUS_TH_VALUE1}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Check Value Table    ${MULCTCODE_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table MulctCode

    #================ Verify DB ================    
    Request Verify DB Check Data Edit MulctCode    ${MYSQL_TYPE_EDIT_ALLFIELD}    ${MULCTCODE_MULCTCODENAMETH_VALUE}    ${MULCTCODE_MULCTCODENAMEEN_VALUE}    ${MULCTCODE_MULCTCODE_VALUE}    ${MULCTCODE_VAT_VALUE}    ${MULCTCODE_TAX_VALUE}    ${MULCTCODE_REMARK_VALUE}    ${MULCTCODE_STATUSID_VALUE1}    ${MULCTCODE_GROUPTYPEID_VALUE1}    ${mulctMethodId}
    
################################################################################################################################
# ################################################################-- Create MulctCode [EN]--################################################################
#====== Check DB ==========
Create MulctCode input all field data EN
    
    #========== Create MulctMethod ======
    ${mulctConditionDetail}=    Set Variable    [{"timePastDeadline": 1, "dateToFlag": ${FALSE_LOWWER}, "total": 100 }, {"dateToFlag": ${TRUE_LOWWER}, "timePastDeadline": 9999, "total": 1}]
    #Create data MulctMethod receive mulctMethodId Set Global
    Run keyword And Continue On Failure    Request CreateData for MulctMethod      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_MULCTMETHOD_STATUS_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATE_VALUE}    ${DATA_MULCTMETHOD_CALCULATEMULCTTYPE_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATETYPE_VALUE}    ${DATA_MULCTMETHOD_UNITFROMTO_VALUE}    ${mulctConditionDetail}    ${DATA_MULCTMETHOD_NAMETH_VALUE}

    #Click Create Mulctcode
    Click Element Page    ${MULCTCODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create Mulctcode
    Wait Until Contains Element Text Should Be    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_LOCATOR}    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_EN} 

    #Mulctcode NameTh *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_TXT_MULCTCODENAMETH_LOCATOR}    ${MULCTCODE_MULCTCODENAMETH_VALUE}
    #Mulctcode NameEn
    Wait Until Contains Input Text    ${MULCTCODE_ADD_TXT_MULCTCODENAMEEN_LOCATOR}    ${MULCTCODE_MULCTCODENAMEEN_VALUE}
    #Mulctcode *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_TXT_MULCTCODE_LOCATOR}    ${MULCTCODE_MULCTCODE_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_INPUT_VAT_LOCATOR}    ${MULCTCODE_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_INPUT_TAX_LOCATOR}    ${MULCTCODE_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${MULCTCODE_ADD_TXTAREA_REMARK_LOCATOR}    ${MULCTCODE_REMARK_VALUE}

    #Status *
    Select Dropdown    ${MULCTCODE_ADD_DDL_STATUS_LOCATOR}    ${MULCTCODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${MULCTCODE_STATUS_EN_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${MULCTCODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${MULCTCODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${MULCTCODE_GROUPTYPE_EN_VALUE1}
    Sleep    0.5s
    
    #Mulct Method *
    Select Dropdown    ${MULCTCODE_ADD_DDL_MULCTMETHOD_LOCATOR}    ${MULCTCODE_ADD_DDL_MULCTMETHOD_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_MULCTMETHOD_CLASS_LOCATOR}    ${MULCTCODE_MULCTMETHOD_EN_VALUE}
    Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${MULCTCODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}
    
    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table MulctCode EN

    ${data}=    Evaluate    {"no":"1", "mulctCode":"${MULCTCODE_MULCTCODE_VALUE}", "mulctNameTh":"${MULCTCODE_MULCTCODENAMETH_VALUE}", "mulctNameEn":"${MULCTCODE_MULCTCODENAMEEN_VALUE}","status":"${MULCTCODE_STATUS_EN_VALUE1}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Check Value Table    ${MULCTCODE_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table MulctCode EN

    #================ Verify DB ================    
    Request Verify DB Check Data Create MulctCode    ${MYSQL_TYPE_CREATE_ALLFIELD}    ${MULCTCODE_MULCTCODENAMETH_VALUE}    ${MULCTCODE_MULCTCODENAMEEN_VALUE}    ${MULCTCODE_MULCTCODE_VALUE}    ${MULCTCODE_VAT_VALUE}    ${MULCTCODE_TAX_VALUE}    ${MULCTCODE_REMARK_VALUE}    ${MULCTCODE_STATUSID_VALUE1}    ${MULCTCODE_GROUPTYPEID_VALUE1}    ${mulctMethodId}
    
Create MulctCode input require field data EN
    #========== Create MulctMethod ======
    ${mulctConditionDetail}=    Set Variable    [{"timePastDeadline": 1, "dateToFlag": ${FALSE_LOWWER}, "total": 100 }, {"dateToFlag": ${TRUE_LOWWER}, "timePastDeadline": 9999, "total": 1}]
    #Create data MulctMethod receive mulctMethodId Set Global
    Run keyword And Continue On Failure    Request CreateData for MulctMethod      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_MULCTMETHOD_STATUS_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATE_VALUE}    ${DATA_MULCTMETHOD_CALCULATEMULCTTYPE_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATETYPE_VALUE}    ${DATA_MULCTMETHOD_UNITFROMTO_VALUE}    ${mulctConditionDetail}    ${DATA_MULCTMETHOD_NAMETH_VALUE}

    #Click Create Mulctcode
    Click Element Page    ${MULCTCODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create Mulctcode
    Wait Until Contains Element Text Should Be    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_LOCATOR}    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_EN} 

    #Mulctcode NameTh *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_TXT_MULCTCODENAMETH_LOCATOR}    ${MULCTCODE_MULCTCODENAMETH2_VALUE}
    #Mulctcode *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_TXT_MULCTCODE_LOCATOR}    ${MULCTCODE_MULCTCODE2_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_INPUT_VAT_LOCATOR}    ${MULCTCODE_VAT2_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_INPUT_TAX_LOCATOR}    ${MULCTCODE_TAX2_VALUE}

    #Status *
    Select Dropdown    ${MULCTCODE_ADD_DDL_STATUS_LOCATOR}    ${MULCTCODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${MULCTCODE_STATUS_EN_VALUE2}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${MULCTCODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${MULCTCODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${MULCTCODE_GROUPTYPE_EN_VALUE2}
    Sleep    0.5s
    
    #Mulct Method *
    Select Dropdown    ${MULCTCODE_ADD_DDL_MULCTMETHOD_LOCATOR}    ${MULCTCODE_ADD_DDL_MULCTMETHOD_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_MULCTMETHOD_CLASS_LOCATOR}    ${MULCTCODE_MULCTMETHOD_EN_VALUE}
    Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${MULCTCODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}
    
    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table MulctCode EN

    ${data}=    Evaluate    {"no":"1", "mulctCode":"${MULCTCODE_MULCTCODE2_VALUE}", "mulctNameTh":"${MULCTCODE_MULCTCODENAMETH2_VALUE}", "mulctNameEn":"${MULCTCODE_MULCTCODENAMETH2_VALUE}","status":"${MULCTCODE_STATUS_EN_VALUE2}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Check Value Table    ${MULCTCODE_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table MulctCode EN

    #================ Verify DB ================    
    Request Verify DB Check Data Create MulctCode    ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${MULCTCODE_MULCTCODENAMETH2_VALUE}    ${MULCTCODE_MULCTCODENAMEEN_VALUE_NONE}    ${MULCTCODE_MULCTCODE2_VALUE}    ${MULCTCODE_VAT2_VALUE}    ${MULCTCODE_TAX2_VALUE}    ${MULCTCODE_REMARK_VALUE_NONE}    ${MULCTCODE_STATUSID_VALUE2}    ${MULCTCODE_GROUPTYPEID_VALUE2}    ${mulctMethodId}
    
#====== No Check Table ==========
Create MulctCode input all field data No Check Table EN
    
    #========== Create MulctMethod ======
    ${mulctConditionDetail}=    Set Variable    [{"timePastDeadline": 1, "dateToFlag": ${FALSE_LOWWER}, "total": 100 }, {"dateToFlag": ${TRUE_LOWWER}, "timePastDeadline": 9999, "total": 1}]
    #Create data MulctMethod receive mulctMethodId Set Global
    Run keyword And Continue On Failure    Request CreateData for MulctMethod      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_MULCTMETHOD_STATUS_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATE_VALUE}    ${DATA_MULCTMETHOD_CALCULATEMULCTTYPE_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATETYPE_VALUE}    ${DATA_MULCTMETHOD_UNITFROMTO_VALUE}    ${mulctConditionDetail}    ${DATA_MULCTMETHOD_NAMETH_VALUE}

    #Click Create Mulctcode
    Click Element Page    ${MULCTCODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create Mulctcode
    Wait Until Contains Element Text Should Be    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_LOCATOR}    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_EN} 

    #Mulctcode NameTh *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_TXT_MULCTCODENAMETH_LOCATOR}    ${MULCTCODE_MULCTCODENAMETH_VALUE}
    #Mulctcode NameEn
    Wait Until Contains Input Text    ${MULCTCODE_ADD_TXT_MULCTCODENAMEEN_LOCATOR}    ${MULCTCODE_MULCTCODENAMEEN_VALUE}
    #Mulctcode *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_TXT_MULCTCODE_LOCATOR}    ${MULCTCODE_MULCTCODE_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_INPUT_VAT_LOCATOR}    ${MULCTCODE_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_INPUT_TAX_LOCATOR}    ${MULCTCODE_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${MULCTCODE_ADD_TXTAREA_REMARK_LOCATOR}    ${MULCTCODE_REMARK_VALUE}

    #Status *
    Select Dropdown    ${MULCTCODE_ADD_DDL_STATUS_LOCATOR}    ${MULCTCODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${MULCTCODE_STATUS_EN_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${MULCTCODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${MULCTCODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${MULCTCODE_GROUPTYPE_EN_VALUE1}
    Sleep    0.5s
    
    #Mulct Method *
    Select Dropdown    ${MULCTCODE_ADD_DDL_MULCTMETHOD_LOCATOR}    ${MULCTCODE_ADD_DDL_MULCTMETHOD_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_MULCTMETHOD_CLASS_LOCATOR}    ${MULCTCODE_MULCTMETHOD_EN_VALUE}
    Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${MULCTCODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

Create MulctCode input require field data No Check Table EN
#========== Create MulctMethod ======
    ${mulctConditionDetail}=    Set Variable    [{"timePastDeadline": 1, "dateToFlag": ${FALSE_LOWWER}, "total": 100 }, {"dateToFlag": ${TRUE_LOWWER}, "timePastDeadline": 9999, "total": 1}]
    #Create data MulctMethod receive mulctMethodId Set Global
    Run keyword And Continue On Failure    Request CreateData for MulctMethod      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_MULCTMETHOD_STATUS_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATE_VALUE}    ${DATA_MULCTMETHOD_CALCULATEMULCTTYPE_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATETYPE_VALUE}    ${DATA_MULCTMETHOD_UNITFROMTO_VALUE}    ${mulctConditionDetail}    ${DATA_MULCTMETHOD_NAMETH_VALUE}

    #Click Create Mulctcode
    Click Element Page    ${MULCTCODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s

    #Create Mulctcode
    Wait Until Contains Element Text Should Be    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_LOCATOR}    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_EN} 

    #Mulctcode NameTh *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_TXT_MULCTCODENAMETH_LOCATOR}    ${MULCTCODE_MULCTCODENAMETH2_VALUE}
    #Mulctcode *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_TXT_MULCTCODE_LOCATOR}    ${MULCTCODE_MULCTCODE2_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_INPUT_VAT_LOCATOR}    ${MULCTCODE_VAT2_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_INPUT_TAX_LOCATOR}    ${MULCTCODE_TAX2_VALUE}

    #Status *
    Select Dropdown    ${MULCTCODE_ADD_DDL_STATUS_LOCATOR}    ${MULCTCODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${MULCTCODE_STATUS_EN_VALUE2}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${MULCTCODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${MULCTCODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${MULCTCODE_GROUPTYPE_EN_VALUE2}
    Sleep    0.5s
    
    #Mulct Method *
    Select Dropdown    ${MULCTCODE_ADD_DDL_MULCTMETHOD_LOCATOR}    ${MULCTCODE_ADD_DDL_MULCTMETHOD_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_MULCTMETHOD_CLASS_LOCATOR}    ${MULCTCODE_MULCTMETHOD_EN_VALUE}
    Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${MULCTCODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

Create MulctCode input require field data No Check Table and No Create MulctMethod EN

    #Click Create Mulctcode
    Click Element Page    ${MULCTCODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create Mulctcode
    Wait Until Contains Element Text Should Be    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_LOCATOR}    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_EN} 

    #Mulctcode NameTh *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_TXT_MULCTCODENAMETH_LOCATOR}    ${MULCTCODE_MULCTCODENAMETH2_VALUE}
    #Mulctcode *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_TXT_MULCTCODE_LOCATOR}    ${MULCTCODE_MULCTCODE2_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_INPUT_VAT_LOCATOR}    ${MULCTCODE_VAT2_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${MULCTCODE_ADD_INPUT_TAX_LOCATOR}    ${MULCTCODE_TAX2_VALUE}

    #Status *
    Select Dropdown    ${MULCTCODE_ADD_DDL_STATUS_LOCATOR}    ${MULCTCODE_ADD_DDL_STATUS_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_STATUS_CLASS_LOCATOR}    ${MULCTCODE_STATUS_EN_VALUE2}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${MULCTCODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${MULCTCODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${MULCTCODE_GROUPTYPE_EN_VALUE2}
    Sleep    0.5s
    
    #Mulct Method *
    Select Dropdown    ${MULCTCODE_ADD_DDL_MULCTMETHOD_LOCATOR}    ${MULCTCODE_ADD_DDL_MULCTMETHOD_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_MULCTMETHOD_CLASS_LOCATOR}    ${MULCTCODE_MULCTMETHOD_EN_VALUE}
    Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${MULCTCODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

################################################################################################################################
################################################################-- Edit MulctCode --################################################################
Edit MulctCode input all field data EN
    #Click Edit MulctCode
    Click Element Page    ${MULCTCODE_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit Mulctcode
    Wait Until Contains Element Text Should Be    ${MULCTCODE_EDIT_LBL_EDITMULCTCODE_LOCATOR}    ${MULCTCODE_EDIT_LBL_EDITMULCTCODE_EN} 

    #Mulctcode NameTh *
    Wait Until Contains Input Text    ${MULCTCODE_EDIT_TXT_MULCTCODENAMETH_LOCATOR}    ${MULCTCODE_MULCTCODENAMETH_VALUE}
    #Mulctcode NameEn
    Wait Until Contains Input Text    ${MULCTCODE_EDIT_TXT_MULCTCODENAMEEN_LOCATOR}    ${MULCTCODE_MULCTCODENAMEEN_VALUE}
    #Mulctcode *
    Wait Until Contains Input Text    ${MULCTCODE_EDIT_TXT_MULCTCODE_LOCATOR}    ${MULCTCODE_MULCTCODE_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${MULCTCODE_EDIT_INPUT_VAT_LOCATOR}    ${MULCTCODE_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${MULCTCODE_EDIT_INPUT_TAX_LOCATOR}    ${MULCTCODE_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${MULCTCODE_EDIT_TXTAREA_REMARK_LOCATOR}    ${MULCTCODE_REMARK_VALUE}

    #Status *
    Select Dropdown    ${MULCTCODE_EDIT_DDL_STATUS_LOCATOR}    ${MULCTCODE_EDIT_DDL_STATUS_LIST_LOCATOR}    ${MULCTCODE_EDIT_DDL_STATUS_CLASS_LOCATOR}    ${MULCTCODE_STATUS_EN_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${MULCTCODE_EDIT_DDL_GROUPTYPE_LOCATOR}    ${MULCTCODE_EDIT_DDL_GROUPTYPE_LIST_LOCATOR}    ${MULCTCODE_EDIT_DDL_GROUPTYPE_CLASS_LOCATOR}    ${MULCTCODE_GROUPTYPE_EN_VALUE1}
    Sleep    0.5s
    
    #Mulct Method *
    Select Dropdown    ${MULCTCODE_EDIT_DDL_MULCTMETHOD_LOCATOR}    ${MULCTCODE_EDIT_DDL_MULCTMETHOD_LIST_LOCATOR}    ${MULCTCODE_EDIT_DDL_MULCTMETHOD_CLASS_LOCATOR}    ${MULCTCODE_MULCTMETHOD_EN_VALUE}
    Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${MULCTCODE_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table MulctCode EN

    ${data}=    Evaluate    {"no":"1", "mulctCode":"${MULCTCODE_MULCTCODE_VALUE}", "mulctNameTh":"${MULCTCODE_MULCTCODENAMETH_VALUE}", "mulctNameEn":"${MULCTCODE_MULCTCODENAMEEN_VALUE}","status":"${MULCTCODE_STATUS_EN_VALUE1}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Check Value Table    ${MULCTCODE_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table MulctCode EN

    #================ Verify DB ================    
    Request Verify DB Check Data Edit MulctCode    ${MYSQL_TYPE_EDIT_ALLFIELD}    ${MULCTCODE_MULCTCODENAMETH_VALUE}    ${MULCTCODE_MULCTCODENAMEEN_VALUE}    ${MULCTCODE_MULCTCODE_VALUE}    ${MULCTCODE_VAT_VALUE}    ${MULCTCODE_TAX_VALUE}    ${MULCTCODE_REMARK_VALUE}    ${MULCTCODE_STATUSID_VALUE1}    ${MULCTCODE_GROUPTYPEID_VALUE1}    ${mulctMethodId}
    
################################################################-- Generic Test Case Teardown MulctCode--################################################################
Generic Test Case Teardown MulctCode    
    [Arguments]    ${value_delete}    ${mulctMethodId}
    
    #Click delete button
    ${MulctCode}=    Get Text String    ${MULCTCODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    MulctCode${MulctCode}

    #Click delete button
    Click Delete Data TH    ${MULCTCODE_BTN_DELETE_LOCATOR}    ${MulctCode}

    #Delete MulctMethod
    Request DeleteData for MulctMethod     ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${mulctMethodId}

    ################### Close Browser ###################
    Close Browser     

Generic Test Case Teardown MulctCode2    
    [Arguments]    ${value_delete}    ${mulctMethodId}

    #Click delete button
    ${MulctCode}=    Get Text String    ${MULCTCODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    MulctCode${MulctCode}
    
    #Click delete button
    Click Delete Data TH    ${MULCTCODE_BTN_DELETE_LOCATOR}    ${MulctCode}

    #Click delete button
    ${MulctCode2}=    Get Text String    ${MULCTCODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}

    #Click delete button
    Click Delete Data TH    ${MULCTCODE_BTN_DELETE_LOCATOR}    ${MulctCode2}

    #Delete MulctMethod
    Request DeleteData for MulctMethod     ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${mulctMethodId}

    ################### Close Browser ###################
    Close Browser     
Generic Test Case Teardown MulctCode EN
    [Arguments]    ${value_delete}    ${mulctMethodId}
    
    #Click delete button
    ${MulctCode}=    Get Text String    ${MULCTCODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    MulctCode${MulctCode}

    #Click delete button
    Click Delete Data Confirm EN     ${MULCTCODE_BTN_DELETE_LOCATOR}    ${MulctCode}

    #Delete MulctMethod
    Request DeleteData for MulctMethod     ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${mulctMethodId}

    ################### Close Browser ###################
    Close Browser     

Generic Test Case Teardown MulctCode2 EN
    [Arguments]    ${value_delete}    ${mulctMethodId}

    #Click delete button
    ${MulctCode}=    Get Text String    ${MULCTCODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    MulctCode${MulctCode}
    
    #Click delete button
    Click Delete Data Confirm EN     ${MULCTCODE_BTN_DELETE_LOCATOR}    ${MulctCode}

    #Click delete button
    ${MulctCode2}=    Get Text String    ${MULCTCODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}

    #Click delete button
    Click Delete Data Confirm EN     ${MULCTCODE_BTN_DELETE_LOCATOR}    ${MulctCode2}

    #Delete MulctMethod
    Request DeleteData for MulctMethod     ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${mulctMethodId}

    ################### Close Browser ###################
    Close Browser     
################################################################################################################################
    