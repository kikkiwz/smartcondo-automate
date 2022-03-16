*** Keywords ***
################################################################-- Set Data for check value table BuildingManagement--################################################################
Set Data for check value table BuildingManagement
    # Set field header table To Array
    ${numCol}=    Convert To Integer    ${BUILDINGMANAGEMENT_SEARCH_NUMCOL}
    #Set field header table To Array
    @{fieldArrDataTable}=    Create List    
    Append To List    ${fieldArrDataTable}    @{BUILDINGMANAGEMENT_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_TH}
    # Append To List    ${fieldArrDataTable}    no    buildingNameTh    phoneNumber
    #Set Num field To Array
    @{arrNumfield}=    Create List    
    Append To List    ${arrNumfield}    ${numCol-3}    ${numCol-2}    ${numCol-1}
    #Set Num Col To Array
    @{arrNumCol}=    Create List    
    Append To List    ${arrNumCol}    ${numCol-2}    ${numCol-1}    ${numCol}
    [Return]    ${numCol}    ${fieldArrDataTable}    ${arrNumfield}    ${arrNumCol}
    
Set Data for check value table BuildingManagement EN
    #Set field header table To Array
    ${numCol}=    Convert To Integer    ${BUILDINGMANAGEMENT_SEARCH_NUMCOL}
    #Set field header table To Array
    @{fieldArrDataTable}=    Create List    
    Append To List    ${fieldArrDataTable}    @{BUILDINGMANAGEMENT_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_EN}
    # Append To List    ${fieldArrDataTable}    no    buildingNameEn    phoneNumber
    #Set Num field To Array
    @{arrNumfield}=    Create List    
    Append To List    ${arrNumfield}    ${numCol-3}    ${numCol-2}    ${numCol-1}
    #Set Num Col To Array
    @{arrNumCol}=    Create List    
    Append To List    ${arrNumCol}    ${numCol-2}    ${numCol-1}    ${numCol}
    [Return]    ${numCol}    ${fieldArrDataTable}    ${arrNumfield}    ${arrNumCol}
    
Check Value Table BuildingManagement
    [Arguments]    ${propertyId}

    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((43, 9, 'test', None, '', None, datetime.datetime(2022, 2, 2, 11, 18, 53), '10', None, None, None, None, 7)), 1]
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search BuildingManagement    ${MYSQL_TYPE_SEARCHLISTALL}    ${propertyId}    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BUILDINGS_FIELD_BUILDINGNAMETH} ${ORDERBY_ASC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    Set Global Variable    ${rowcountSearchBuildingManagement}    ${resultSearch}[1]
    Log To Console    [rowcount SearchBuildingManagement] : ${rowcountSearchBuildingManagement}

    ${checkNodata}=    Run Keyword If    '${rowcountSearchBuildingManagement}'=='0'    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchBuildingManagement}'!='0'    Check Value Table Search BuildingManagement    ${DEFAULT_TH}     ${rowcountSearchBuildingManagement}    ${dataSearch}
    
    [Return]    ${rowcountSearchBuildingManagement}

Check Value Table BuildingManagement EN
    [Arguments]    ${propertyId}

    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((43, 9, 'test', None, '', None, datetime.datetime(2022, 2, 2, 11, 18, 53), '10', None, None, None, None, 7)), 1]
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search BuildingManagement    ${MYSQL_TYPE_SEARCHLISTALL}    ${propertyId}    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_BUILDINGS_FIELD_BUILDINGNAMEEN} ${ORDERBY_ASC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    Set Global Variable    ${rowcountSearchBuildingManagement}    ${resultSearch}[1]
    Log To Console    [rowcount SearchBuildingManagement] : ${rowcountSearchBuildingManagement}

    ${checkNodata}=    Run Keyword If    '${rowcountSearchBuildingManagement}'=='0'    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchBuildingManagement}'!='0'    Check Value Table Search BuildingManagement    ${DEFAULT_EN}     ${rowcountSearchBuildingManagement}    ${dataSearch}
    
    [Return]    ${rowcountSearchBuildingManagement}
################################################################-- Create BuildingManagement--################################################################
#====== Check DB ==========
#คิดตามจริง ,ไม่คิดค่าปรับ
Create BuildingManagement input all field data 
    
    #========== Create MulctCode ====== 
    ${mulctConditionDetail}=    Set Variable    [{"timePastDeadline": 1, "dateToFlag": ${FALSE_LOWWER}, "total": 100 }, {"dateToFlag": ${TRUE_LOWWER}, "timePastDeadline": 9999, "total": 1}]
 
    #Create data MulctCode and MulctMethod receive mulctMethodId mulctCodeId Set Global   
    Run keyword And Continue On Failure    Request CreateData for MulctCode      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_MULCTMETHOD_STATUS_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATE_VALUE}    ${DATA_MULCTMETHOD_CALCULATEMULCTTYPE_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATETYPE_VALUE}    ${DATA_MULCTMETHOD_UNITFROMTO_VALUE}    ${mulctConditionDetail}    ${DATA_MULCTMETHOD_NAMETH_VALUE}    ${DATA_MULCTCODE_GROUPTYPEID_VALUE}    ${DATA_MULCTCODE_MULCTCODE_VALUE}    ${DATA_MULCTCODE_NAMEEN_VALUE}    ${DATA_MULCTCODE_NAMETH_VALUE}    ${DATA_MULCTCODE_REMARK_VALUE}    ${DATA_MULCTCODE_STATUS_VALUE}    ${DATA_MULCTCODE_TAX_VALUE}    ${DATA_MULCTCODE_VAT_VALUE}

    #Click Create BuildingManagement
    Click Element Page    ${BUILDINGMANAGEMENT_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create BuildingManagement
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_LBL_CREATEINCOMECODE_TH} 

    #Incomecode NameTh *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODENAMETH_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODENAMETH_VALUE}
    #Incomecode NameEn
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODENAMEEN_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODENAMEEN_VALUE}
    #Incomecode *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODE_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODE_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_PRICEPERUNIT_LOCATOR}    ${BUILDINGMANAGEMENT_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_VAT_LOCATOR}    ${BUILDINGMANAGEMENT_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_TAX_LOCATOR}    ${BUILDINGMANAGEMENT_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXTAREA_REMARK_LOCATOR}    ${BUILDINGMANAGEMENT_REMARK_VALUE}

    #Status *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_STATUS_TH_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_GROUPTYPE_TH_VALUE1}
    Sleep    0.5s
    
    #Calculation type (every specified month)
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONTYPE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONTYPE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONTYPE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_CALCULATIONTYPE_TH_VALUE}
    Sleep    0.5s

    #Calulation Method *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_CALCULATIONMETHOD_TH_VALUE1}
    Sleep    0.5s

    # #Mulctcode *
    # Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_MULCTCODE_TH_VALUE}
    # Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${BUILDINGMANAGEMENT_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}
    
    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table BuildingManagement

    ${data}=    Evaluate    {"incomeCode":"${BUILDINGMANAGEMENT_INCOMECODE_VALUE}", "incomeNameTh":"${BUILDINGMANAGEMENT_INCOMECODENAMETH_VALUE}", "incomeNameEn":"${BUILDINGMANAGEMENT_INCOMECODENAMEEN_VALUE}", "paymentOrder":"1","status":"${BUILDINGMANAGEMENT_STATUS_TH_VALUE1}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Log To Console    ${valArrDataTable}
    Check Value Table    ${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table BuildingManagement

    # ================ Verify DB ================    
    Request Verify DB Check Data Create BuildingManagement    ${MYSQL_TYPE_CREATE_ALLFIELD}    ${BUILDINGMANAGEMENT_INCOMECODENAMETH_VALUE}    ${BUILDINGMANAGEMENT_INCOMECODENAMEEN_VALUE}    ${BUILDINGMANAGEMENT_INCOMECODE_VALUE}    ${BUILDINGMANAGEMENT_VAT_VALUE}    ${BUILDINGMANAGEMENT_TAX_VALUE}    ${BUILDINGMANAGEMENT_REMARK_VALUE}    ${BUILDINGMANAGEMENT_STATUSID_VALUE1}    ${BUILDINGMANAGEMENT_GROUPTYPE_ID_VALUE1}    ${NONE}    ${BUILDINGMANAGEMENT_CALCULATIONMETHOD_ID_VALUE1}    ${BUILDINGMANAGEMENT_PRICEPERUNIT_VALUE}    ${NONE}    ${NONE}    ${DATA_MULCTCODE_INDEX_VALUE}

Create BuildingManagement input require field data
    
    #Click Create BuildingManagement
    Click Element Page    ${BUILDINGMANAGEMENT_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create BuildingManagement
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_LBL_CREATEINCOMECODE_TH} 

    #Incomecode NameTh *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODENAMETH_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODENAMETH2_VALUE}
    # #Incomecode NameEn
    # Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODENAMEEN_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODENAMEEN_VALUE}
    #Incomecode *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODE_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODE2_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_PRICEPERUNIT_LOCATOR}    ${BUILDINGMANAGEMENT_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_VAT_LOCATOR}    ${BUILDINGMANAGEMENT_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_TAX_LOCATOR}    ${BUILDINGMANAGEMENT_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXTAREA_REMARK_LOCATOR}    ${BUILDINGMANAGEMENT_REMARK_VALUE}

    #Status *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_STATUS_TH_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_GROUPTYPE_TH_VALUE1}
    Sleep    0.5s

    #Calulation Method *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_CALCULATIONMETHOD_TH_VALUE1}
    Sleep    0.5s

    # #Mulctcode *
    # Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_MULCTCODE_TH_VALUE}
    # Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${BUILDINGMANAGEMENT_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}
    
    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table BuildingManagement

    ${data}=    Evaluate    {"incomeCode":"${BUILDINGMANAGEMENT_INCOMECODE2_VALUE}", "incomeNameTh":"${BUILDINGMANAGEMENT_INCOMECODENAMETH2_VALUE}", "incomeNameEn":"", "paymentOrder":"1","status":"${BUILDINGMANAGEMENT_STATUS_TH_VALUE1}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Log To Console    ${valArrDataTable}
    Check Value Table    ${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table BuildingManagement

    #================ Verify DB ================    
    Request Verify DB Check Data Create BuildingManagement    ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${BUILDINGMANAGEMENT_INCOMECODENAMETH2_VALUE}    ${BUILDINGMANAGEMENT_INCOMECODENAMEEN_VALUE_NONE}    ${BUILDINGMANAGEMENT_INCOMECODE2_VALUE}    ${BUILDINGMANAGEMENT_VAT_VALUE}    ${BUILDINGMANAGEMENT_TAX_VALUE}    ${BUILDINGMANAGEMENT_REMARK_VALUE}    ${BUILDINGMANAGEMENT_STATUSID_VALUE1}    ${BUILDINGMANAGEMENT_GROUPTYPE_ID_VALUE1}    ${NONE}    ${BUILDINGMANAGEMENT_CALCULATIONMETHOD_ID_VALUE1}    ${BUILDINGMANAGEMENT_PRICEPERUNIT_VALUE}    ${NONE}    ${NONE}    ${DATA_MULCTCODE_INDEX_VALUE}

#====== No Check Table ==========
Create BuildingManagement input all field data No Check Table 
    
    #========== Create MulctCode ====== 
    ${mulctConditionDetail}=    Set Variable    [{"timePastDeadline": 1, "dateToFlag": ${FALSE_LOWWER}, "total": 100 }, {"dateToFlag": ${TRUE_LOWWER}, "timePastDeadline": 9999, "total": 1}]
 
    #Create data MulctCode and MulctMethod receive mulctMethodId mulctCodeId Set Global   
    Run keyword And Continue On Failure    Request CreateData for MulctCode      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_MULCTMETHOD_STATUS_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATE_VALUE}    ${DATA_MULCTMETHOD_CALCULATEMULCTTYPE_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATETYPE_VALUE}    ${DATA_MULCTMETHOD_UNITFROMTO_VALUE}    ${mulctConditionDetail}    ${DATA_MULCTMETHOD_NAMETH_VALUE}    ${DATA_MULCTCODE_GROUPTYPEID_VALUE}    ${DATA_MULCTCODE_MULCTCODE_VALUE}    ${DATA_MULCTCODE_NAMEEN_VALUE}    ${DATA_MULCTCODE_NAMETH_VALUE}    ${DATA_MULCTCODE_REMARK_VALUE}    ${DATA_MULCTCODE_STATUS_VALUE}    ${DATA_MULCTCODE_TAX_VALUE}    ${DATA_MULCTCODE_VAT_VALUE}

    #Click Create BuildingManagement
    Click Element Page    ${BUILDINGMANAGEMENT_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create BuildingManagement
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_LBL_CREATEINCOMECODE_TH} 

    #Incomecode NameTh *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODENAMETH_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODENAMETH_VALUE}
    #Incomecode NameEn
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODENAMEEN_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODENAMEEN_VALUE}
    #Incomecode *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODE_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODE_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_PRICEPERUNIT_LOCATOR}    ${BUILDINGMANAGEMENT_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_VAT_LOCATOR}    ${BUILDINGMANAGEMENT_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_TAX_LOCATOR}    ${BUILDINGMANAGEMENT_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXTAREA_REMARK_LOCATOR}    ${BUILDINGMANAGEMENT_REMARK_VALUE}

    #Status *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_STATUS_TH_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_GROUPTYPE_TH_VALUE1}
    Sleep    0.5s
    
    #Calculation type (every specified month)
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONTYPE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONTYPE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONTYPE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_CALCULATIONTYPE_TH_VALUE}
    Sleep    0.5s

    #Calulation Method *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_CALCULATIONMETHOD_TH_VALUE1}
    Sleep    0.5s

    # #Mulctcode *
    # Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_MULCTCODE_TH_VALUE}
    # Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${BUILDINGMANAGEMENT_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

Create BuildingManagement input require field data No Check Table
#========== Create MulctMethod ======
    #========== Create MulctCode ====== 
    ${mulctConditionDetail}=    Set Variable    [{"timePastDeadline": 1, "dateToFlag": ${FALSE_LOWWER}, "total": 100 }, {"dateToFlag": ${TRUE_LOWWER}, "timePastDeadline": 9999, "total": 1}]
 
    #Create data MulctCode and MulctMethod receive mulctMethodId mulctCodeId Set Global   
    Run keyword And Continue On Failure    Request CreateData for MulctCode      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_MULCTMETHOD_STATUS_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATE_VALUE}    ${DATA_MULCTMETHOD_CALCULATEMULCTTYPE_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATETYPE_VALUE}    ${DATA_MULCTMETHOD_UNITFROMTO_VALUE}    ${mulctConditionDetail}    ${DATA_MULCTMETHOD_NAMETH_VALUE}    ${DATA_MULCTCODE_GROUPTYPEID_VALUE}    ${DATA_MULCTCODE_MULCTCODE_VALUE}    ${DATA_MULCTCODE_NAMEEN_VALUE}    ${DATA_MULCTCODE_NAMETH_VALUE}    ${DATA_MULCTCODE_REMARK_VALUE}    ${DATA_MULCTCODE_STATUS_VALUE}    ${DATA_MULCTCODE_TAX_VALUE}    ${DATA_MULCTCODE_VAT_VALUE}

    #Click Create BuildingManagement
    Click Element Page    ${BUILDINGMANAGEMENT_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create BuildingManagement
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_LBL_CREATEINCOMECODE_TH} 

    #Incomecode NameTh *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODENAMETH_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODENAMETH2_VALUE}
    # #Incomecode NameEn
    # Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODENAMEEN_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODENAMEEN_VALUE}
    #Incomecode *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODE_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODE2_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_PRICEPERUNIT_LOCATOR}    ${BUILDINGMANAGEMENT_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_VAT_LOCATOR}    ${BUILDINGMANAGEMENT_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_TAX_LOCATOR}    ${BUILDINGMANAGEMENT_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXTAREA_REMARK_LOCATOR}    ${BUILDINGMANAGEMENT_REMARK_VALUE}

    #Status *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_STATUS_TH_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_GROUPTYPE_TH_VALUE1}
    Sleep    0.5s

    #Calulation Method *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_CALCULATIONMETHOD_TH_VALUE1}
    Sleep    0.5s

    # #Mulctcode *
    # Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_MULCTCODE_TH_VALUE}
    # Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${BUILDINGMANAGEMENT_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

Create BuildingManagement input require field data No Check Table and No Create MulctMethod

    #Click Create BuildingManagement
    Click Element Page    ${BUILDINGMANAGEMENT_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create BuildingManagement
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_LBL_CREATEINCOMECODE_TH} 

    #Incomecode NameTh *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODENAMETH_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODENAMETH2_VALUE}
    # #Incomecode NameEn
    # Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODENAMEEN_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODENAMEEN_VALUE}
    #Incomecode *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODE_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODE2_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_PRICEPERUNIT_LOCATOR}    ${BUILDINGMANAGEMENT_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_VAT_LOCATOR}    ${BUILDINGMANAGEMENT_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_TAX_LOCATOR}    ${BUILDINGMANAGEMENT_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXTAREA_REMARK_LOCATOR}    ${BUILDINGMANAGEMENT_REMARK_VALUE}

    #Status *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_STATUS_TH_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_GROUPTYPE_TH_VALUE1}
    Sleep    0.5s

    #Calulation Method *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_CALCULATIONMETHOD_TH_VALUE1}
    Sleep    0.5s

    # #Mulctcode *
    # Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_MULCTCODE_TH_VALUE}
    # Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${BUILDINGMANAGEMENT_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

################################################################################################################################
################################################################-- Edit BuildingManagement --################################################################
Edit BuildingManagement input all field data 
    #Click Edit BuildingManagement
    Click Element Page    ${BUILDINGMANAGEMENT_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit Incomecode
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_EDIT_LBL_EDITINCOMECODE_LOCATOR}    ${BUILDINGMANAGEMENT_EDIT_LBL_EDITINCOMECODE_TH} 
    
    #Incomecode NameTh *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_EDIT_TXT_INCOMECODENAMETH_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODENAMETH2_VALUE}
    #Incomecode NameEn
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_EDIT_TXT_INCOMECODENAMEEN_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODENAMEEN_VALUE}
    #Incomecode *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_EDIT_TXT_INCOMECODE_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODE2_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_EDIT_INPUT_PRICEPERUNIT_LOCATOR}    ${BUILDINGMANAGEMENT_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_EDIT_INPUT_VAT_LOCATOR}    ${BUILDINGMANAGEMENT_VAT2_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_EDIT_INPUT_TAX_LOCATOR}    ${BUILDINGMANAGEMENT_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_EDIT_TXTAREA_REMARK_LOCATOR}    ${BUILDINGMANAGEMENT_REMARK_VALUE}

    #Status *
    Select Dropdown    ${BUILDINGMANAGEMENT_EDIT_DDL_STATUS_LOCATOR}    ${BUILDINGMANAGEMENT_EDIT_DDL_STATUS_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_EDIT_DDL_STATUS_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_STATUS_TH_VALUE2}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${BUILDINGMANAGEMENT_EDIT_DDL_GROUPTYPE_LOCATOR}    ${BUILDINGMANAGEMENT_EDIT_DDL_GROUPTYPE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_EDIT_DDL_GROUPTYPE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_GROUPTYPE_TH_VALUE2}
    Sleep    0.5s
    
    #Calculation type (every specified month)
    Select Dropdown    ${BUILDINGMANAGEMENT_EDIT_DDL_CALCULATIONTYPE_LOCATOR}    ${BUILDINGMANAGEMENT_EDIT_DDL_CALCULATIONTYPE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_EDIT_DDL_CALCULATIONTYPE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_CALCULATIONTYPE_TH_VALUE}
    Sleep    0.5s

    #Calulation Method *
    Select Dropdown    ${BUILDINGMANAGEMENT_EDIT_DDL_CALCULATIONMETHOD_LOCATOR}    ${BUILDINGMANAGEMENT_EDIT_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_EDIT_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_CALCULATIONMETHOD_TH_VALUE1}
    Sleep    0.5s

    #Click Save button
    Click Element Page    ${BUILDINGMANAGEMENT_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table BuildingManagement

    ${data}=    Evaluate    {"incomeCode":"${BUILDINGMANAGEMENT_INCOMECODE2_VALUE}", "incomeNameTh":"${BUILDINGMANAGEMENT_INCOMECODENAMETH2_VALUE}", "incomeNameEn":"${BUILDINGMANAGEMENT_INCOMECODENAMEEN_VALUE}", "paymentOrder":"1","status":"${BUILDINGMANAGEMENT_STATUS_TH_VALUE2}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Check Value Table    ${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table BuildingManagement

    #================ Verify DB ================    
    Request Verify DB Check Data Edit BuildingManagement    ${MYSQL_TYPE_EDIT_ALLFIELD}    ${BUILDINGMANAGEMENT_INCOMECODENAMETH2_VALUE}    ${BUILDINGMANAGEMENT_INCOMECODENAMEEN_VALUE}    ${BUILDINGMANAGEMENT_INCOMECODE2_VALUE}    ${BUILDINGMANAGEMENT_VAT2_VALUE}    ${BUILDINGMANAGEMENT_TAX_VALUE}    ${BUILDINGMANAGEMENT_REMARK_VALUE}    ${BUILDINGMANAGEMENT_STATUSID_VALUE2}    ${BUILDINGMANAGEMENT_GROUPTYPEID_VALUE2}    ${NONE}    ${BUILDINGMANAGEMENT_CALCULATIONMETHOD_ID_VALUE1}    ${BUILDINGMANAGEMENT_PRICEPERUNIT_VALUE}    ${NONE}    ${NONE}    ${DATA_MULCTCODE_INDEX_VALUE}

################################################################################################################################
################################################################-- Edit BuildingManagement Status Enable --################################################################
Edit BuildingManagement input all field data Status Enable 
    #Click Edit BuildingManagement
    Click Element Page    ${BUILDINGMANAGEMENT_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit Incomecode
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_EDIT_LBL_EDITINCOMECODE_LOCATOR}    ${BUILDINGMANAGEMENT_EDIT_LBL_EDITINCOMECODE_TH} 
    
    #Incomecode NameTh *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_EDIT_TXT_INCOMECODENAMETH_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODENAMETH2_VALUE}
    #Incomecode NameEn
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_EDIT_TXT_INCOMECODENAMEEN_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODENAMEEN_VALUE}
    #Incomecode *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_EDIT_TXT_INCOMECODE_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODE2_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_EDIT_INPUT_PRICEPERUNIT_LOCATOR}    ${BUILDINGMANAGEMENT_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_EDIT_INPUT_VAT_LOCATOR}    ${BUILDINGMANAGEMENT_VAT2_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_EDIT_INPUT_TAX_LOCATOR}    ${BUILDINGMANAGEMENT_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_EDIT_TXTAREA_REMARK_LOCATOR}    ${BUILDINGMANAGEMENT_REMARK_VALUE}

    #Status *
    Select Dropdown    ${BUILDINGMANAGEMENT_EDIT_DDL_STATUS_LOCATOR}    ${BUILDINGMANAGEMENT_EDIT_DDL_STATUS_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_EDIT_DDL_STATUS_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_STATUS_TH_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${BUILDINGMANAGEMENT_EDIT_DDL_GROUPTYPE_LOCATOR}    ${BUILDINGMANAGEMENT_EDIT_DDL_GROUPTYPE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_EDIT_DDL_GROUPTYPE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_GROUPTYPE_TH_VALUE2}
    Sleep    0.5s
    
    #Calculation type (every specified month)
    Select Dropdown    ${BUILDINGMANAGEMENT_EDIT_DDL_CALCULATIONTYPE_LOCATOR}    ${BUILDINGMANAGEMENT_EDIT_DDL_CALCULATIONTYPE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_EDIT_DDL_CALCULATIONTYPE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_CALCULATIONTYPE_TH_VALUE}
    Sleep    0.5s

    #Calulation Method *
    Select Dropdown    ${BUILDINGMANAGEMENT_EDIT_DDL_CALCULATIONMETHOD_LOCATOR}    ${BUILDINGMANAGEMENT_EDIT_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_EDIT_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_CALCULATIONMETHOD_TH_VALUE1}
    Sleep    0.5s

    #Click Save button
    Click Element Page    ${BUILDINGMANAGEMENT_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table BuildingManagement

    ${data}=    Evaluate    {"incomeCode":"${BUILDINGMANAGEMENT_INCOMECODE2_VALUE}", "incomeNameTh":"${BUILDINGMANAGEMENT_INCOMECODENAMETH2_VALUE}", "incomeNameEn":"${BUILDINGMANAGEMENT_INCOMECODENAMEEN_VALUE}", "paymentOrder":"1","status":"${BUILDINGMANAGEMENT_STATUS_TH_VALUE1}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Check Value Table    ${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table BuildingManagement

    #================ Verify DB ================    
    Request Verify DB Check Data Edit BuildingManagement    ${MYSQL_TYPE_EDIT_ALLFIELD}    ${BUILDINGMANAGEMENT_INCOMECODENAMETH2_VALUE}    ${BUILDINGMANAGEMENT_INCOMECODENAMEEN_VALUE}    ${BUILDINGMANAGEMENT_INCOMECODE2_VALUE}    ${BUILDINGMANAGEMENT_VAT2_VALUE}    ${BUILDINGMANAGEMENT_TAX_VALUE}    ${BUILDINGMANAGEMENT_REMARK_VALUE}    ${BUILDINGMANAGEMENT_STATUSID_VALUE1}    ${BUILDINGMANAGEMENT_GROUPTYPEID_VALUE2}    ${NONE}    ${BUILDINGMANAGEMENT_CALCULATIONMETHOD_ID_VALUE1}    ${BUILDINGMANAGEMENT_PRICEPERUNIT_VALUE}    ${NONE}    ${NONE}    ${DATA_MULCTCODE_INDEX_VALUE}

################################################################################################################################
################################################################-- Create BuildingManagement [EN]--################################################################
#====== Check DB ==========
#คิดตามจริง ,ไม่คิดค่าปรับ
Create BuildingManagement input all field data EN
    
    #========== Create MulctCode ====== 
    ${mulctConditionDetail}=    Set Variable    [{"timePastDeadline": 1, "dateToFlag": ${FALSE_LOWWER}, "total": 100 }, {"dateToFlag": ${TRUE_LOWWER}, "timePastDeadline": 9999, "total": 1}]
 
    #Create data MulctCode and MulctMethod receive mulctMethodId mulctCodeId Set Global   
    Run keyword And Continue On Failure    Request CreateData for MulctCode      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_MULCTMETHOD_STATUS_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATE_VALUE}    ${DATA_MULCTMETHOD_CALCULATEMULCTTYPE_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATETYPE_VALUE}    ${DATA_MULCTMETHOD_UNITFROMTO_VALUE}    ${mulctConditionDetail}    ${DATA_MULCTMETHOD_NAMETH_VALUE}    ${DATA_MULCTCODE_GROUPTYPEID_VALUE}    ${DATA_MULCTCODE_MULCTCODE_VALUE}    ${DATA_MULCTCODE_NAMEEN_VALUE}    ${DATA_MULCTCODE_NAMETH_VALUE}    ${DATA_MULCTCODE_REMARK_VALUE}    ${DATA_MULCTCODE_STATUS_VALUE}    ${DATA_MULCTCODE_TAX_VALUE}    ${DATA_MULCTCODE_VAT_VALUE}

    #Click Create BuildingManagement
    Click Element Page    ${BUILDINGMANAGEMENT_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create BuildingManagement
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_LBL_CREATEINCOMECODE_EN} 

    #Incomecode NameTh *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODENAMETH_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODENAMETH_VALUE}
    #Incomecode NameEn
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODENAMEEN_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODENAMEEN_VALUE}
    #Incomecode *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODE_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODE_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_PRICEPERUNIT_LOCATOR}    ${BUILDINGMANAGEMENT_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_VAT_LOCATOR}    ${BUILDINGMANAGEMENT_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_TAX_LOCATOR}    ${BUILDINGMANAGEMENT_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXTAREA_REMARK_LOCATOR}    ${BUILDINGMANAGEMENT_REMARK_VALUE}

    #Status *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_STATUS_EN_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_GROUPTYPE_EN_VALUE1}
    Sleep    0.5s
    
    #Calculation type (every specified month)
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONTYPE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONTYPE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONTYPE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_CALCULATIONTYPE_EN_VALUE}
    Sleep    0.5s

    #Calulation Method *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_CALCULATIONMETHOD_EN_VALUE1}
    Sleep    0.5s

    # #Mulctcode *
    # Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_MULCTCODE_EN_VALUE}
    # Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${BUILDINGMANAGEMENT_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}
    
    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table BuildingManagement EN

    ${data}=    Evaluate    {"incomeCode":"${BUILDINGMANAGEMENT_INCOMECODE_VALUE}", "incomeNameTh":"${BUILDINGMANAGEMENT_INCOMECODENAMETH_VALUE}", "incomeNameEn":"${BUILDINGMANAGEMENT_INCOMECODENAMEEN_VALUE}", "paymentOrder":"1","status":"${BUILDINGMANAGEMENT_STATUS_EN_VALUE1}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Log To Console    ${valArrDataTable}
    Check Value Table    ${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table BuildingManagement EN

    # ================ Verify DB ================    
    Request Verify DB Check Data Create BuildingManagement    ${MYSQL_TYPE_CREATE_ALLFIELD}    ${BUILDINGMANAGEMENT_INCOMECODENAMETH_VALUE}    ${BUILDINGMANAGEMENT_INCOMECODENAMEEN_VALUE}    ${BUILDINGMANAGEMENT_INCOMECODE_VALUE}    ${BUILDINGMANAGEMENT_VAT_VALUE}    ${BUILDINGMANAGEMENT_TAX_VALUE}    ${BUILDINGMANAGEMENT_REMARK_VALUE}    ${BUILDINGMANAGEMENT_STATUSID_VALUE1}    ${BUILDINGMANAGEMENT_GROUPTYPE_ID_VALUE1}    ${NONE}    ${BUILDINGMANAGEMENT_CALCULATIONMETHOD_ID_VALUE1}    ${BUILDINGMANAGEMENT_PRICEPERUNIT_VALUE}    ${NONE}    ${NONE}    ${DATA_MULCTCODE_INDEX_VALUE}

Create BuildingManagement input require field data EN
    #========== Create MulctCode ====== 
    ${mulctConditionDetail}=    Set Variable    [{"timePastDeadline": 1, "dateToFlag": ${FALSE_LOWWER}, "total": 100 }, {"dateToFlag": ${TRUE_LOWWER}, "timePastDeadline": 9999, "total": 1}]
 
    #Create data MulctCode and MulctMethod receive mulctMethodId mulctCodeId Set Global   
    Run keyword And Continue On Failure    Request CreateData for MulctCode      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_MULCTMETHOD_STATUS_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATE_VALUE}    ${DATA_MULCTMETHOD_CALCULATEMULCTTYPE_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATETYPE_VALUE}    ${DATA_MULCTMETHOD_UNITFROMTO_VALUE}    ${mulctConditionDetail}    ${DATA_MULCTMETHOD_NAMETH_VALUE}    ${DATA_MULCTCODE_GROUPTYPEID_VALUE}    ${DATA_MULCTCODE_MULCTCODE_VALUE}    ${DATA_MULCTCODE_NAMEEN_VALUE}    ${DATA_MULCTCODE_NAMETH_VALUE}    ${DATA_MULCTCODE_REMARK_VALUE}    ${DATA_MULCTCODE_STATUS_VALUE}    ${DATA_MULCTCODE_TAX_VALUE}    ${DATA_MULCTCODE_VAT_VALUE}

    #Click Create BuildingManagement
    Click Element Page    ${BUILDINGMANAGEMENT_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create BuildingManagement
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_LBL_CREATEINCOMECODE_EN} 

    #Incomecode NameTh *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODENAMETH_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODENAMETH2_VALUE}
    # #Incomecode NameEn
    # Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODENAMEEN_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODENAMEEN_VALUE}
    #Incomecode *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODE_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODE2_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_PRICEPERUNIT_LOCATOR}    ${BUILDINGMANAGEMENT_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_VAT_LOCATOR}    ${BUILDINGMANAGEMENT_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_TAX_LOCATOR}    ${BUILDINGMANAGEMENT_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXTAREA_REMARK_LOCATOR}    ${BUILDINGMANAGEMENT_REMARK_VALUE}

    #Status *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_STATUS_EN_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_GROUPTYPE_EN_VALUE1}
    Sleep    0.5s

    #Calulation Method *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_CALCULATIONMETHOD_EN_VALUE1}
    Sleep    0.5s

    # #Mulctcode *
    # Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_MULCTCODE_EN_VALUE}
    # Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${BUILDINGMANAGEMENT_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}
    
    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table BuildingManagement EN

    ${data}=    Evaluate    {"incomeCode":"${BUILDINGMANAGEMENT_INCOMECODE2_VALUE}", "incomeNameTh":"${BUILDINGMANAGEMENT_INCOMECODENAMETH2_VALUE}", "incomeNameEn":"${BUILDINGMANAGEMENT_INCOMECODENAMETH2_VALUE}", "paymentOrder":"1","status":"${BUILDINGMANAGEMENT_STATUS_EN_VALUE1}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Log To Console    ${valArrDataTable}
    Check Value Table    ${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table BuildingManagement EN

    #================ Verify DB ================    
    Request Verify DB Check Data Create BuildingManagement    ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${BUILDINGMANAGEMENT_INCOMECODENAMETH2_VALUE}    ${BUILDINGMANAGEMENT_INCOMECODENAMEEN_VALUE_NONE}    ${BUILDINGMANAGEMENT_INCOMECODE2_VALUE}    ${BUILDINGMANAGEMENT_VAT_VALUE}    ${BUILDINGMANAGEMENT_TAX_VALUE}    ${BUILDINGMANAGEMENT_REMARK_VALUE}    ${BUILDINGMANAGEMENT_STATUSID_VALUE1}    ${BUILDINGMANAGEMENT_GROUPTYPE_ID_VALUE1}    ${NONE}    ${BUILDINGMANAGEMENT_CALCULATIONMETHOD_ID_VALUE1}    ${BUILDINGMANAGEMENT_PRICEPERUNIT_VALUE}    ${NONE}    ${NONE}    ${DATA_MULCTCODE_INDEX_VALUE}

#====== No Check Table ==========
Create BuildingManagement input all field data No Check Table EN
    
    #========== Create MulctCode ====== 
    ${mulctConditionDetail}=    Set Variable    [{"timePastDeadline": 1, "dateToFlag": ${FALSE_LOWWER}, "total": 100 }, {"dateToFlag": ${TRUE_LOWWER}, "timePastDeadline": 9999, "total": 1}]
 
    #Create data MulctCode and MulctMethod receive mulctMethodId mulctCodeId Set Global   
    Run keyword And Continue On Failure    Request CreateData for MulctCode      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_MULCTMETHOD_STATUS_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATE_VALUE}    ${DATA_MULCTMETHOD_CALCULATEMULCTTYPE_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATETYPE_VALUE}    ${DATA_MULCTMETHOD_UNITFROMTO_VALUE}    ${mulctConditionDetail}    ${DATA_MULCTMETHOD_NAMETH_VALUE}    ${DATA_MULCTCODE_GROUPTYPEID_VALUE}    ${DATA_MULCTCODE_MULCTCODE_VALUE}    ${DATA_MULCTCODE_NAMEEN_VALUE}    ${DATA_MULCTCODE_NAMETH_VALUE}    ${DATA_MULCTCODE_REMARK_VALUE}    ${DATA_MULCTCODE_STATUS_VALUE}    ${DATA_MULCTCODE_TAX_VALUE}    ${DATA_MULCTCODE_VAT_VALUE}

    #Click Create BuildingManagement
    Click Element Page    ${BUILDINGMANAGEMENT_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create BuildingManagement
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_LBL_CREATEINCOMECODE_EN} 

    #Incomecode NameTh *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODENAMETH_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODENAMETH_VALUE}
    #Incomecode NameEn
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODENAMEEN_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODENAMEEN_VALUE}
    #Incomecode *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODE_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODE_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_PRICEPERUNIT_LOCATOR}    ${BUILDINGMANAGEMENT_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_VAT_LOCATOR}    ${BUILDINGMANAGEMENT_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_TAX_LOCATOR}    ${BUILDINGMANAGEMENT_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXTAREA_REMARK_LOCATOR}    ${BUILDINGMANAGEMENT_REMARK_VALUE}

    #Status *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_STATUS_EN_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_GROUPTYPE_EN_VALUE1}
    Sleep    0.5s
    
    #Calculation type (every specified month)
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONTYPE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONTYPE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONTYPE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_CALCULATIONTYPE_EN_VALUE}
    Sleep    0.5s

    #Calulation Method *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_CALCULATIONMETHOD_EN_VALUE1}
    Sleep    0.5s

    # #Mulctcode *
    # Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_MULCTCODE_EN_VALUE}
    # Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${BUILDINGMANAGEMENT_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

Create BuildingManagement input require field data No Check Table EN
#========== Create MulctMethod ======
    #========== Create MulctCode ====== 
    ${mulctConditionDetail}=    Set Variable    [{"timePastDeadline": 1, "dateToFlag": ${FALSE_LOWWER}, "total": 100 }, {"dateToFlag": ${TRUE_LOWWER}, "timePastDeadline": 9999, "total": 1}]
 
    #Create data MulctCode and MulctMethod receive mulctMethodId mulctCodeId Set Global   
    Run keyword And Continue On Failure    Request CreateData for MulctCode      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_MULCTMETHOD_STATUS_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATE_VALUE}    ${DATA_MULCTMETHOD_CALCULATEMULCTTYPE_VALUE}    ${DATA_MULCTMETHOD_ADJUSTMENTRATETYPE_VALUE}    ${DATA_MULCTMETHOD_UNITFROMTO_VALUE}    ${mulctConditionDetail}    ${DATA_MULCTMETHOD_NAMETH_VALUE}    ${DATA_MULCTCODE_GROUPTYPEID_VALUE}    ${DATA_MULCTCODE_MULCTCODE_VALUE}    ${DATA_MULCTCODE_NAMEEN_VALUE}    ${DATA_MULCTCODE_NAMETH_VALUE}    ${DATA_MULCTCODE_REMARK_VALUE}    ${DATA_MULCTCODE_STATUS_VALUE}    ${DATA_MULCTCODE_TAX_VALUE}    ${DATA_MULCTCODE_VAT_VALUE}

    #Click Create BuildingManagement
    Click Element Page    ${BUILDINGMANAGEMENT_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create BuildingManagement
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_LBL_CREATEINCOMECODE_EN} 

    #Incomecode NameTh *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODENAMETH_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODENAMETH2_VALUE}
    # #Incomecode NameEn
    # Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODENAMEEN_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODENAMEEN_VALUE}
    #Incomecode *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODE_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODE2_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_PRICEPERUNIT_LOCATOR}    ${BUILDINGMANAGEMENT_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_VAT_LOCATOR}    ${BUILDINGMANAGEMENT_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_TAX_LOCATOR}    ${BUILDINGMANAGEMENT_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXTAREA_REMARK_LOCATOR}    ${BUILDINGMANAGEMENT_REMARK_VALUE}

    #Status *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_STATUS_EN_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_GROUPTYPE_EN_VALUE1}
    Sleep    0.5s

    #Calulation Method *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_CALCULATIONMETHOD_EN_VALUE1}
    Sleep    0.5s

    # #Mulctcode *
    # Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_MULCTCODE_EN_VALUE}
    # Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${BUILDINGMANAGEMENT_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

Create BuildingManagement input require field data No Check Table and No Create MulctMethod EN

    #Click Create BuildingManagement
    Click Element Page    ${BUILDINGMANAGEMENT_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create BuildingManagement
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_LBL_CREATEINCOMECODE_EN} 

    #Incomecode NameTh *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODENAMETH_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODENAMETH2_VALUE}
    # #Incomecode NameEn
    # Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODENAMEEN_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODENAMEEN_VALUE}
    #Incomecode *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXT_INCOMECODE_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODE2_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_PRICEPERUNIT_LOCATOR}    ${BUILDINGMANAGEMENT_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_VAT_LOCATOR}    ${BUILDINGMANAGEMENT_VAT_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_INPUT_TAX_LOCATOR}    ${BUILDINGMANAGEMENT_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_ADD_TXTAREA_REMARK_LOCATOR}    ${BUILDINGMANAGEMENT_REMARK_VALUE}

    #Status *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_STATUS_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_STATUS_EN_VALUE1}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_GROUPTYPE_EN_VALUE1}
    Sleep    0.5s

    #Calulation Method *
    Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_CALCULATIONMETHOD_EN_VALUE1}
    Sleep    0.5s

    # #Mulctcode *
    # Select Dropdown    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_ADD_DDL_MULCTCODE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_MULCTCODE_EN_VALUE}
    # Sleep    0.5s
    
    #Click Save button
    Click Element Page    ${BUILDINGMANAGEMENT_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

################################################################################################################################
################################################################-- Edit BuildingManagement --################################################################
Edit BuildingManagement input all field data EN
    #Click Edit BuildingManagement
    Click Element Page    ${BUILDINGMANAGEMENT_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit Incomecode
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_EDIT_LBL_EDITINCOMECODE_LOCATOR}    ${BUILDINGMANAGEMENT_EDIT_LBL_EDITINCOMECODE_EN} 
    
    #Incomecode NameTh *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_EDIT_TXT_INCOMECODENAMETH_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODENAMETH2_VALUE}
    #Incomecode NameEn
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_EDIT_TXT_INCOMECODENAMEEN_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODENAMEEN_VALUE}
    #Incomecode *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_EDIT_TXT_INCOMECODE_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODE2_VALUE}
    #Price Per Unit *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_EDIT_INPUT_PRICEPERUNIT_LOCATOR}    ${BUILDINGMANAGEMENT_PRICEPERUNIT_VALUE}
    #Vat.(%) *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_EDIT_INPUT_VAT_LOCATOR}    ${BUILDINGMANAGEMENT_VAT2_VALUE}
    #Tax.(%) *
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_EDIT_INPUT_TAX_LOCATOR}    ${BUILDINGMANAGEMENT_TAX_VALUE}
    #Remark
    Wait Until Contains Input Text    ${BUILDINGMANAGEMENT_EDIT_TXTAREA_REMARK_LOCATOR}    ${BUILDINGMANAGEMENT_REMARK_VALUE}

    #Status *
    Select Dropdown    ${BUILDINGMANAGEMENT_EDIT_DDL_STATUS_LOCATOR}    ${BUILDINGMANAGEMENT_EDIT_DDL_STATUS_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_EDIT_DDL_STATUS_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_STATUS_EN_VALUE2}
    Sleep    0.5s
    
    #Group Type *
    Select Dropdown    ${BUILDINGMANAGEMENT_EDIT_DDL_GROUPTYPE_LOCATOR}    ${BUILDINGMANAGEMENT_EDIT_DDL_GROUPTYPE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_EDIT_DDL_GROUPTYPE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_GROUPTYPE_EN_VALUE2}
    Sleep    0.5s
    
    #Calculation type (every specified month)
    Select Dropdown    ${BUILDINGMANAGEMENT_EDIT_DDL_CALCULATIONTYPE_LOCATOR}    ${BUILDINGMANAGEMENT_EDIT_DDL_CALCULATIONTYPE_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_EDIT_DDL_CALCULATIONTYPE_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_CALCULATIONTYPE_EN_VALUE}
    Sleep    0.5s

    #Calulation Method *
    Select Dropdown    ${BUILDINGMANAGEMENT_EDIT_DDL_CALCULATIONMETHOD_LOCATOR}    ${BUILDINGMANAGEMENT_EDIT_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    ${BUILDINGMANAGEMENT_EDIT_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    ${BUILDINGMANAGEMENT_CALCULATIONMETHOD_EN_VALUE1}
    Sleep    0.5s

    #Click Save button
    Click Element Page    ${BUILDINGMANAGEMENT_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table BuildingManagement EN

    ${data}=    Evaluate    {"incomeCode":"${BUILDINGMANAGEMENT_INCOMECODE2_VALUE}", "incomeNameTh":"${BUILDINGMANAGEMENT_INCOMECODENAMETH2_VALUE}", "incomeNameEn":"${BUILDINGMANAGEMENT_INCOMECODENAMEEN_VALUE}", "paymentOrder":"1","status":"${BUILDINGMANAGEMENT_STATUS_EN_VALUE2}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Check Value Table    ${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table BuildingManagement EN

    #================ Verify DB ================    
    Request Verify DB Check Data Edit BuildingManagement    ${MYSQL_TYPE_EDIT_ALLFIELD}    ${BUILDINGMANAGEMENT_INCOMECODENAMETH2_VALUE}    ${BUILDINGMANAGEMENT_INCOMECODENAMEEN_VALUE}    ${BUILDINGMANAGEMENT_INCOMECODE2_VALUE}    ${BUILDINGMANAGEMENT_VAT2_VALUE}    ${BUILDINGMANAGEMENT_TAX_VALUE}    ${BUILDINGMANAGEMENT_REMARK_VALUE}    ${BUILDINGMANAGEMENT_STATUSID_VALUE2}    ${BUILDINGMANAGEMENT_GROUPTYPEID_VALUE2}    ${NONE}    ${BUILDINGMANAGEMENT_CALCULATIONMETHOD_ID_VALUE1}    ${BUILDINGMANAGEMENT_PRICEPERUNIT_VALUE}    ${NONE}    ${NONE}    ${DATA_MULCTCODE_INDEX_VALUE}

################################################################-- Generic Test Case Teardown BuildingManagement--################################################################
Generic Test Case Teardown BuildingManagement    
    [Arguments]    ${value_delete}    ${mulctCodeId}    ${mulctMethodId}
    
    #Click delete button
    ${BuildingManagement}=    Get Text String    ${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    BuildingManagement${BuildingManagement}

    #Click delete button
    Click Delete Data TH    ${BUILDINGMANAGEMENT_BTN_DELETE_LOCATOR}    ${BuildingManagement}

    #Delete MulctCode
    Request DeleteData for MulctCode     ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${mulctCodeId}    ${mulctMethodId}

    ################### Close Browser ###################
    Close Browser     

Generic Test Case Teardown BuildingManagement2    
    [Arguments]    ${value_delete}    ${mulctCodeId}    ${mulctMethodId}

    #Click delete button
    ${BuildingManagement}=    Get Text String    ${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    BuildingManagement${BuildingManagement}
    
    #Click delete button
    Click Delete Data TH    ${BUILDINGMANAGEMENT_BTN_DELETE_LOCATOR}    ${BuildingManagement}

    #Click delete button
    ${BuildingManagement2}=    Get Text String    ${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}

    #Click delete button
    Click Delete Data TH    ${BUILDINGMANAGEMENT_BTN_DELETE_LOCATOR}    ${BuildingManagement2}

    #Delete MulctCode
    Request DeleteData for MulctCode     ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${mulctCodeId}    ${mulctMethodId}

    ################### Close Browser ###################
    Close Browser     

Generic Test Case Teardown BuildingManagement3
    [Arguments]    ${incomeCodeId}
    #Delete BuildingManagement
    Request DeleteData for BuildingManagement     ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${incomeCodeId}

    ################### Close Browser ###################
    Close Browser    

Generic Test Case Teardown BuildingManagement EN
    [Arguments]    ${value_delete}    ${mulctCodeId}    ${mulctMethodId}
    
    #Click delete button
    ${BuildingManagement}=    Get Text String    ${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    BuildingManagement${BuildingManagement}

    #Click delete button
    Click Delete Data EN    ${BUILDINGMANAGEMENT_BTN_DELETE_LOCATOR}    ${BuildingManagement}

    #Delete MulctCode
    Request DeleteData for MulctCode     ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${mulctCodeId}    ${mulctMethodId}

    ################### Close Browser ###################
    Close Browser   

Generic Test Case Teardown BuildingManagement2 EN
    [Arguments]    ${value_delete}    ${mulctCodeId}    ${mulctMethodId}

    #Click delete button
    ${BuildingManagement}=    Get Text String    ${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    BuildingManagement${BuildingManagement}
    
    #Click delete button
    Click Delete Data EN    ${BUILDINGMANAGEMENT_BTN_DELETE_LOCATOR}    ${BuildingManagement}

    #Click delete button
    ${BuildingManagement2}=    Get Text String    ${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}

    #Click delete button
    Click Delete Data EN    ${BUILDINGMANAGEMENT_BTN_DELETE_LOCATOR}    ${BuildingManagement2}

    #Delete MulctCode
    Request DeleteData for MulctCode     ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${mulctCodeId}    ${mulctMethodId}

    ################### Close Browser ###################
    Close Browser     
        
Generic Test Case Teardown BuildingManagement mulctCode and mulctMethod
    [Arguments]    ${value_delete}    ${mulctCodeId}    ${mulctMethodId}    ${incomeCodeId}
    #Delete MulctCode
    Request DeleteData for MulctCode     ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${mulctCodeId}    ${mulctMethodId}    ${incomeCodeId}

    ################### Close Browser ###################
    Close Browser     

Generic Test Case Teardown BuildingManagement not Close Browser
    [Arguments]    ${value_delete}    ${mulctCodeId}    ${mulctMethodId}
    
    #Click delete button
    ${BuildingManagement}=    Get Text String    ${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    BuildingManagement${BuildingManagement}

    #Click delete button
    Click Delete Data TH    ${BUILDINGMANAGEMENT_BTN_DELETE_LOCATOR}    ${BuildingManagement}

    #Delete MulctCode
    Request DeleteData for MulctCode     ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${mulctCodeId}    ${mulctMethodId}

Generic Test Case Teardown BuildingManagement not Close Browser EN
    [Arguments]    ${value_delete}    ${mulctCodeId}    ${mulctMethodId}
    
    #Click delete button
    ${BuildingManagement}=    Get Text String    ${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    BuildingManagement${BuildingManagement}

    #Click delete button
    Click Delete Data EN    ${BUILDINGMANAGEMENT_BTN_DELETE_LOCATOR}    ${BuildingManagement}

    #Delete MulctCode
    Request DeleteData for MulctCode     ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${mulctCodeId}    ${mulctMethodId}


################################################################################################################################
    