*** Keywords ***
Request Verify DB Check Data Search MulctMethod
    [Arguments]      ${type}    ${name}    ${status}    ${limit}    ${offset}    ${orderBy}
    
    Log To Console    ${\n}=========== Start DB : [Search MulctMethod] =============== 
    # ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_LISTALL}    SELECT * FROM mulct_method WHERE account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
    # ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_SEAECHALL}    SELECT * FROM mulct_method WHERE name_th LIKE '%[name]%' AND  status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
    # ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_NAME}    SELECT * FROM mulct_method WHERE name_th LIKE '%[name]%' AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
    # ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_STATUS}    SELECT * FROM mulct_method WHERE status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
    # ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_NAMESTATUS}    SELECT * FROM mulct_method WHERE name_th LIKE '%[name]%'AND status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]

    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_SEARCHLISTALL}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_LISTALL}
    ...    '${type}'=='${MYSQL_TYPE_MULCTMETHOD_SEARCH_ALL}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_SEAECHALL}
    ...    '${type}'=='${MYSQL_TYPE_MULCTMETHOD_SEARCH_NAME}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_NAME}
    ...    '${type}'=='${MYSQL_TYPE_MULCTMETHOD_SEARCH_STATUS}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_STATUS}
    ...    '${type}'=='${MYSQL_TYPE_MULCTMETHOD_SEARCH_NAMESTATUS}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_NAMESTATUS}
    # Log To Console    [mulct_method : valueReplace] : ${valueReplace}
    ${convertStrAccountId}=    Convert To String    ${accountId}

    # Data
    ${selectStatement}=    Replace String    ${valueReplace}    [accountId]    ${convertStrAccountId}
    ${selectStatement}=    Replace String    ${selectStatement}    [name]    ${name}
    ${selectStatement}=    Replace String    ${selectStatement}    [status]    ${status}
    ${selectStatement}=    Replace String    ${selectStatement}    [limit]    ${limit}
    ${selectStatement}=    Replace String    ${selectStatement}    [offset]    ${offset}
    ${selectStatement}=    Replace String    ${selectStatement}    [orderBy]    ${orderBy}
    # Log To Console    [mulct_method : resultQuery] : ${selectStatement}

    # Rowcount
    ${valueReplaceRowcount}=    Set Variable If    '${type}'=='${MYSQL_TYPE_SEARCHLISTALL}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_LISTALL_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_MULCTMETHOD_SEARCH_ALL}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_SEAECHALL_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_MULCTMETHOD_SEARCH_NAME}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_NAME_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_MULCTMETHOD_SEARCH_STATUS}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_STATUS_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_MULCTMETHOD_SEARCH_NAMESTATUS}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_NAMESTATUS_ROWCOUNT}

    ${replaceRowcount}=    Replace String    ${valueReplaceRowcount}    [accountId]    ${convertStrAccountId}
    ${replaceRowcount}=    Replace String    ${replaceRowcount}    [name]    ${name}
    ${replaceRowcount}=    Replace String    ${replaceRowcount}    [status]    ${status}
    ${selectStatementRowcount}=    Replace String    ${replaceRowcount}    [orderBy]    ${orderBy}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatementRowcount}
    Log To Console    [mulct_method] Request Verify DB Check Data Search MulctMethod : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : mulct_method] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : mulct_method] : ${rowCount}
    
    Log To Console    ${\n}=========== End DB : [Search MulctMethod] =============== 
    [Return]    ${dataResult}    ${rowCount}

Check Value Table Search MulctMethod
    [Arguments]    ${type}    ${rowcountSearchMulctMethod}    ${dataSearchMulctMethod}

    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Run Keyword If    '${type}'=='${DEFAULT_TH}'    Set Data for check value table MulctMethod
    ...    ELSE IF    '${type}'=='${DEFAULT_EN}'    Set Data for check value table MulctMethod EN

    #valueTable
    @{valArrDataTable}=    Create List    
    FOR    ${i}    IN RANGE    ${rowcountSearchMulctMethod}
    #  [((81, 7, None, 1, Decimal('3.00'), None, None, None, 0, None, 'รหัสรายได้', 'ชื่อรายได้ ภาษาไทย', 'ชื่อรายได้ ภาษาอังกฤษ', 'หมายเหตุ1', Decimal('1.00'), Decimal('2.00'), 7, 1, 1, datetime.datetime(2021, 11, 26, 14, 55, 10), '10', None, None, None, None, 1),), 1]
        
        ${nameTh}=    Set Variable    ${dataSearchMulctMethod[${i}][6]}
        Log To Console    dataSearchMulctMethod${dataSearchMulctMethod[${i}][7]}
        ${remark}=    Set Variable If    '${dataSearchMulctMethod[${i}][7]}'=='${NONE}'    -
        ...    '${dataSearchMulctMethod[${i}][7]}'!='${NONE}'    ${dataSearchMulctMethod[${i}][7]}

        # UI mapping field status 0=ไม่ใช้งาน , 1 = ใช้งาน , 0=Inactive , 1 = Active
        ${statusTH}=    Set Variable If    '${dataSearchMulctMethod[${i}][8]}'=='0'    ${DEFAULT_LBL_STATUS_INACTIVE_TH}
        ...    '${dataSearchMulctMethod[${i}][8]}'=='1'    ${DEFAULT_LBL_STATUS_ACTIVE_TH}
        ${statusEN}=    Set Variable If    '${dataSearchMulctMethod[${i}][8]}'=='0'    ${DEFAULT_LBL_STATUS_INACTIVE_LOW_EN}
        ...    '${dataSearchMulctMethod[${i}][8]}'=='1'    ${DEFAULT_LBL_STATUS_ACTIVE_EN}
        ${status}=    Set Variable If    '${type}'=='${DEFAULT_TH}'    ${statusTH}
        ...    '${type}'=='${DEFAULT_EN}'    ${statusEN}

        # Log To Console    [banknameTh] : ${banknameTh}
        ${no}=    Convert To String    ${i+1}
        ${data}=    Evaluate    {"no":"${no}","nameTh":"${nameTh}", "remark":"${remark}","status":"${status}"}
        Append To List    ${valArrDataTable}    ${data} 
        Log To Console    [MulctMethodData] : ${data}

        # Wait Until Contains Element Text Should Be    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[${i+1}]/td[${numCol-5}]    ${valArrDataTable[${i}]['${fieldArrDataTable[${numCol-6}]}']}
        # Wait Until Contains Element Text Should Be    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[${i+1}]/td[${numCol-4}]    ${valArrDataTable[${i}]['${fieldArrDataTable[${numCol-5}]}']}
        # Wait Until Contains Element Text Should Be    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[${i+1}]/td[${numCol-3}]    ${valArrDataTable[${i}]['${fieldArrDataTable[${numCol-4}]}']}
        # Wait Until Contains Element Text Should Be    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[${i+1}]/td[${numCol-2}]    ${valArrDataTable[${i}]['${fieldArrDataTable[${numCol-3}]}']}
        # Wait Until Contains Element Text Should Be    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[${i+1}]/td[${numCol-1}]    ${valArrDataTable[${i}]['${fieldArrDataTable[${numCol-2}]}']}
        # Wait Until Contains Element Text Should Be    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[${i+1}]/td[${numCol}]    ${valArrDataTable[${i}]['${fieldArrDataTable[${numCol-1}]}']}

        # Log To Console    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[${i+1}]/td[${k-5}]${valArrDataTable[${i}]['${fieldArrDataTable[${num-6}]}']}
        # Log To Console    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[${i+1}]/td[${k-4}]${valArrDataTable[${i}]['${fieldArrDataTable[${num-5}]}']}
        # Log To Console    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[${i+1}]/td[${k-3}]${valArrDataTable[${i}]['${fieldArrDataTable[${num-4}]}']}
        # Log To Console    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[${i+1}]/td[${k-2}]${valArrDataTable[${i}]['${fieldArrDataTable[${num-3}]}']}
        # Log To Console    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[${i+1}]/td[${k-1}]${valArrDataTable[${i}]['${fieldArrDataTable[${num-2}]}']}
        # Log To Console    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[${i+1}]/td[${k}]${valArrDataTable[${i}]['${fieldArrDataTable[${num-1}]}']}
        
        Check Value Table    ${MULCTCODE_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${i}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
        # Check Value Table    ${MULCTCODE_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${numCol}    ${i}    ${arrNumCol}    ${arrNumfield}    ${fieldArrDataTable}    ${valArrDataTable}
    # Exit For Loop
    END

Request Verify DB Check Data Create MulctMethod
    [Arguments]      ${type}    ${nameTh}   ${remark}    ${status}    ${adjustmentRate}    ${unitChange}    ${calculationMethodId}    ${timeUnit}
  
    Log To Console    ${\n}=========== Start DB : [Create MulctMethod] =============== 
    #${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKCREATE}    SELECT * FROM mulct_method WHERE name_th LIKE '%[name]%' AND deleted_at IS NULL

    ${convertStrAccountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKCREATE}    [name]    ${nameTh}
    Log To Console    [mulct_method : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [mulct_method] Request Verify DB Check Data Create MulctMethod : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : mulct_method] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    # Log To Console    [rowCount : mulct_method] : ${rowCount}

    # Log To Console    [result : mulct_method] : ${dataResult}[0][0]
    ${id}=    Convert To String    ${dataResult}[0][0]
    Set Global Variable    ${mulctMethodId}    ${id}
    ${created_at}=    Convert To String    ${dataResult}[0][10]
    ${created_by}=    Convert To String    ${dataResult}[0][9]
    ${updated_at}=    Convert To String    ${dataResult}[0][12]
    ${updated_by}=    Convert To String    ${dataResult}[0][11]
    ${deleted_at}=    Convert To String    ${dataResult}[0][13]
    ${deleted_by}=    Convert To String    ${dataResult}[0][14]
    ${accountId}=    Convert To String    ${accountId}
    ${remark}=    Convert To String    ${remark}
    ${status}=    Convert To String    ${status}
    ${adjustmentRate}=    Convert To String    ${adjustmentRate}
    ${unitChange}=    Convert To String    ${unitChange}
    ${calculationMethodId}=    Convert To String    ${calculationMethodId}
    ${timeUnit}=    Convert To String    ${timeUnit}
    
    # Log To Console    [result : created_at] : ${created_at}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # Log To Console    dateCreatedAt : ${dateCreatedAt}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateUpdatedAt}=    Convert Format Date DB    ${updated_at}
    # Log To Console    dateUpdatedAt : ${updated_at}
    
    # ((497, 7, 1, 2, 2, 1, 'ชื่อวิธีคำนวณค่าปรับ', 'หมายเหตุ1', 1, '10', datetime.datetime(2021, 12, 9, 14, 10, 52), None, datetime.datetime(2021, 12, 9, 14, 10, 52), None, None),)
    # (([id], [accountId], [adjustmentRate], [calculateMulctType], [adjustmentRateType], [unitFromTo], '[nameTh]', '[remark]', [status], '[created_by]', datetime.datetime([created_at]), [updated_by], [updated_at], [deleted_at], [deleted_by]),)
    
    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_CREATE_ALLFIELD}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKCREATE_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_CREATE_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKCREATE_REQUIREDFIELD_VALUE}
    
    ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
    ${resultDB}=    Replace String    ${resultDB}    [accountId]    ${accountId}
    ${resultDB}=    Replace String    ${resultDB}    [adjustmentRate]    ${adjustmentRate}
    ${resultDB}=    Replace String    ${resultDB}    [calculateMulctType]    ${unitChange}
    ${resultDB}=    Replace String    ${resultDB}    [adjustmentRateType]    ${calculationMethodId}
    ${resultDB}=    Replace String    ${resultDB}    [unitFromTo]    ${timeUnit}
    ${resultDB}=    Replace String    ${resultDB}    [nameTh]    ${nameTh}
    ${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
    ${resultDB}=    Replace String    ${resultDB}    [remark]    ${remark}
    ${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
    ${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${dateUpdatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}

    Log To Console    [resultDB] : ${resultDB}
    ${strResult}=    Convert To String    ${dataResult}

    Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Create MulctMethod

    Log To Console    ${\n}=========== End DB : [Create MulctMethod] =============== 

Request Verify DB Check Data Edit MulctMethod
    [Arguments]      ${type}    ${nameTh}   ${remark}    ${status}    ${adjustmentRate}    ${unitChange}    ${calculationMethodId}    ${timeUnit}
      
    Log To Console    ${\n}=========== Start DB : [Edit MulctMethod] =============== 
    # ${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKEDIT}    SELECT * FROM mulct_method WHERE id = [id] AND deleted_at IS NULL

    ${convertStrMulctMethodId}=    Convert To String    ${MulctMethodId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKEDIT}    [id]    ${convertStrMulctMethodId}
    Log To Console    [mulct_method : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [mulct_method] Request Verify DB Check Data Edit MulctMethod : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : mulct_method] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    # Log To Console    [rowCount : mulct_method] : ${rowCount}

    Log To Console    [result : mulct_method] : ${dataResult}[0][0]
    ${id}=    Convert To String    ${dataResult}[0][0]
    ${created_at}=    Convert To String    ${dataResult}[0][10]
    ${created_by}=    Convert To String    ${dataResult}[0][9]
    ${updated_at}=    Convert To String    ${dataResult}[0][12]
    ${updated_by}=    Convert To String    ${dataResult}[0][11]
    ${deleted_at}=    Convert To String    ${dataResult}[0][13]
    ${deleted_by}=    Convert To String    ${dataResult}[0][14]
    ${accountId}=    Convert To String    ${accountId}
    ${remark}=    Convert To String    ${remark}
    ${status}=    Convert To String    ${status}
    ${adjustmentRate}=    Convert To String    ${adjustmentRate}
    ${unitChange}=    Convert To String    ${unitChange}
    ${calculationMethodId}=    Convert To String    ${calculationMethodId}
    ${timeUnit}=    Convert To String    ${timeUnit}

    # Log To Console    [result : created_at] : ${created_at}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # # Log To Console    dateCreatedAt : ${dateCreatedAt}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateUpdatedAt}=    Convert Format Date DB    ${updated_at}
    # Log To Console    dateUpdatedAt : ${updated_at}
    
    # ((181, 7, None, 1, Decimal('3.00'), None, None, None, 0, None, '4321', 'ชื่อรายได้ ภาษาไทย2', 'ชื่อรายได้ ภาษาอังกฤษ', 'หมายเหตุ1', Decimal('3.00'), Decimal('2.00'), 7, 0, 2, datetime.datetime(2021, 11, 30, 14, 35, 11), '10', datetime.datetime(2021, 11, 30, 14, 35, 29), '10', None, None, 1),)
    # (([id], [accountId], [mulct_code_id], [calculation_method_id], Decimal('[price_unit]'), [minimum_unit], [minimum_price], [calculation_date_from], [calculate_mulct_flag], [is_calculate_common_fee], '[incomecode]', '[nameTh]', [nameEn], '[remark]', Decimal('[vat_percent]'), Decimal('[tax_percent]'), [calculation_time], [status], [group_type_id], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', [deleted_at], [deleted_by], [index]),)
    
    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_EDIT_ALLFIELD}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKEDIT_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_EDIT_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKEDIT_REQUIREDFIELD_VALUE}
    
    ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
    ${resultDB}=    Replace String    ${resultDB}    [accountId]    ${accountId}
    ${resultDB}=    Replace String    ${resultDB}    [adjustmentRate]    ${adjustmentRate}
    ${resultDB}=    Replace String    ${resultDB}    [calculateMulctType]    ${unitChange}
    ${resultDB}=    Replace String    ${resultDB}    [adjustmentRateType]    ${calculationMethodId}
    ${resultDB}=    Replace String    ${resultDB}    [unitFromTo]    ${timeUnit}
    ${resultDB}=    Replace String    ${resultDB}    [nameTh]    ${nameTh}
    ${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
    ${resultDB}=    Replace String    ${resultDB}    [remark]    ${remark}
    ${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
    ${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${dateUpdatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}
    # Log To Console    [resultDB] : ${resultDB}
    ${strResult}=    Convert To String    ${dataResult}

    Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Edit MulctMethod

    Log To Console    ${\n}=========== End DB : [Edit MulctMethod] =============== 

Request Verify DB Check Data View MulctMethod 
    [Arguments]      ${type}    ${nameTh}   ${remark}    ${status}    ${adjustmentRate}    ${unitChange}    ${calculationMethodId}    ${timeUnit}
    
    Log To Console    ${\n}=========== Start DB : [View MulctMethod] =============== 
    # ${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKVIEW}    SELECT * FROM mulct_method WHERE id = [id] AND deleted_at IS NULL
    # ${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKVIEW_ALLFIELD_VALUE}    ([id], [accountId], [mulctMethodId], '[mulctCode]', '[nameTh]', '[nameEn]', [status], Decimal('[vat]'), Decimal('[tax]'), '[remark]', [groupTypeId], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by])

    ${convertStrMulctMethodId}=    Convert To String    ${MulctMethodId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKVIEW}    [id]    ${convertStrMulctMethodId}
    Log To Console    [mulct_method : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [mulct_method] Request Verify DB Check Data View MulctMethod : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : mulct_method] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    # Log To Console    [rowCount : mulct_method] : ${rowCount}
    
    ${id}=    Convert To String    ${dataResult}[0][0]
    ${created_at}=    Convert To String    ${dataResult}[0][10]
    ${created_by}=    Convert To String    ${dataResult}[0][9]
    ${updated_at}=    Convert To String    ${dataResult}[0][12]
    ${updated_by}=    Convert To String    ${dataResult}[0][11]
    ${deleted_at}=    Convert To String    ${dataResult}[0][13]
    ${deleted_by}=    Convert To String    ${dataResult}[0][14]
    ${accountId}=    Convert To String    ${accountId}
    ${remark}=    Convert To String    ${remark}
    ${status}=    Convert To String    ${status}
    ${adjustmentRate}=    Convert To String    ${adjustmentRate}
    ${unitChange}=    Convert To String    ${unitChange}
    ${calculationMethodId}=    Convert To String    ${calculationMethodId}
    ${timeUnit}=    Convert To String    ${timeUnit}
    
    # Log To Console    [result : created_at] : ${created_at}
    # # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # Log To Console    dateCreatedAt : ${dateCreatedAt}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateUpdatedAt}=    Convert Format Date DB    ${updated_at}
    # Log To Console    dateUpdatedAt : ${updated_at}
    
    # ((497, 7, 1, 2, 2, 1, 'ชื่อวิธีคำนวณค่าปรับ', 'หมายเหตุ1', 1, '10', datetime.datetime(2021, 12, 9, 14, 10, 52), None, datetime.datetime(2021, 12, 9, 14, 10, 52), None, None),)
    # (([id], [accountId], [adjustmentRate], [calculateMulctType], [adjustmentRateType], [unitFromTo], '[nameTh]', '[remark]', [status], '[created_by]', datetime.datetime([created_at]), [updated_by], [updated_at], [deleted_at], [deleted_by]),)
    
    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_VIEW_ALLFIELD}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKVIEW_ALLFIELD_VALUE} 
    # # ...    '${type}'=='${MYSQL_TYPE_VIEW_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKCREATE_REQUIREDFIELD_VALUE}
    
    FOR    ${i}    IN RANGE    ${rowCount}  
    # Log To Console    [result : mulct_method] : ${dataResult}[0][0]
    # ${property_id}=    Convert To String    ${property_id[${i}]}
    # ${building_id}=    Convert To String    ${building_id[${i}]}
    
        ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
        ${resultDB}=    Replace String    ${resultDB}    [accountId]    ${accountId}
        ${resultDB}=    Replace String    ${resultDB}    [adjustmentRate]    ${adjustmentRate}
        ${resultDB}=    Replace String    ${resultDB}    [calculateMulctType]    ${unitChange}
        ${resultDB}=    Replace String    ${resultDB}    [adjustmentRateType]    ${calculationMethodId}
        ${resultDB}=    Replace String    ${resultDB}    [unitFromTo]    ${timeUnit}
        ${resultDB}=    Replace String    ${resultDB}    [nameTh]    ${nameTh}
        ${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
        ${resultDB}=    Replace String    ${resultDB}    [remark]    ${remark}
        ${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
        ${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
        ${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${dateUpdatedAt}
        ${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
        ${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
        ${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}
        # Log To Console    [resultDB] : ${resultDB}
        ${strResult}=    Convert To String    ${dataResult[${i}]}
    END
    Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data View MulctMethod

    Log To Console    ${\n}=========== End DB : [View MulctMethod] =============== 

Request Verify DB Check Data Delete MulctMethod
    [Arguments]      ${type}    ${nameTh}   ${remark}    ${status}    ${adjustmentRate}    ${unitChange}    ${calculationMethodId}    ${timeUnit}
    
    Log To Console    ${\n}=========== Start DB : [Delete MulctMethod] =============== 
    #${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKDELETE}    SELECT * FROM mulct_method WHERE id = [id]

    ${convertStrMulctMethodId}=    Convert To String    ${MulctMethodId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKDELETE}    [id]    ${convertStrMulctMethodId}
    Log To Console    [mulct_method : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [mulct_method] Request Verify DB Check Data Delete MulctMethod : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : mulct_method] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    # Log To Console    [rowCount : mulct_method] : ${rowCount}
 
    Log To Console    [result : mulct_method] : ${dataResult}[0][0]
    ${id}=    Convert To String    ${dataResult}[0][0]
    ${created_at}=    Convert To String    ${dataResult}[0][10]
    ${created_by}=    Convert To String    ${dataResult}[0][9]
    ${updated_at}=    Convert To String    ${dataResult}[0][12]
    ${updated_by}=    Convert To String    ${dataResult}[0][11]
    ${deleted_at}=    Convert To String    ${dataResult}[0][13]
    ${deleted_by}=    Convert To String    ${dataResult}[0][14]
    ${accountId}=    Convert To String    ${accountId}
    ${remark}=    Convert To String    ${remark}
    ${status}=    Convert To String    ${status}
    ${adjustmentRate}=    Convert To String    ${adjustmentRate}
    ${unitChange}=    Convert To String    ${unitChange}
    ${calculationMethodId}=    Convert To String    ${calculationMethodId}
    ${timeUnit}=    Convert To String    ${timeUnit}

    # Log To Console    [result : created_at] : ${created_at}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # Log To Console    dateCreatedAt : ${dateCreatedAt}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateUpdatedAt}=    Convert Format Date DB    ${updated_at}
    # Log To Console    dateUpdatedAt : ${updated_at}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateDeletedAt}=    Convert Format Date DB    ${deleted_at}
    # Log To Console    dateDeletedAt : ${dateDeletedAt}
    
    # ((497, 7, 1, 2, 2, 1, 'ชื่อวิธีคำนวณค่าปรับ', 'หมายเหตุ1', 1, '10', datetime.datetime(2021, 12, 9, 14, 10, 52), None, datetime.datetime(2021, 12, 9, 14, 10, 52), None, None),)
    # (([id], [accountId], [adjustmentRate], [calculateMulctType], [adjustmentRateType], [unitFromTo], '[nameTh]', '[remark]', [status], '[created_by]', datetime.datetime([created_at]), '[updated_by]', datetime.datetime([updated_at]), datetime.datetime([deleted_at]), '[deleted_by]'),)
    
    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_DELETE_ALLFIELD}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKDELETE_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_DELETE_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKDELETE_REQUIREDFIELD_VALUE}

    ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
    ${resultDB}=    Replace String    ${resultDB}    [accountId]    ${accountId}
    ${resultDB}=    Replace String    ${resultDB}    [adjustmentRate]    ${adjustmentRate}
    ${resultDB}=    Replace String    ${resultDB}    [calculateMulctType]    ${unitChange}
    ${resultDB}=    Replace String    ${resultDB}    [adjustmentRateType]    ${calculationMethodId}
    ${resultDB}=    Replace String    ${resultDB}    [unitFromTo]    ${timeUnit}
    ${resultDB}=    Replace String    ${resultDB}    [nameTh]    ${nameTh}
    ${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
    ${resultDB}=    Replace String    ${resultDB}    [remark]    ${remark}     
    ${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
    ${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${dateUpdatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${dateDeletedAt}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}

    # Log To Console    [resultDB] : ${resultDB}
    ${strResult}=    Convert To String    ${dataResult}

    Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Delete MulctMethod

    Log To Console    ${\n}=========== End DB : [Delete MulctMethod] =============== 
################################################################-- Request Verify DB Check Data mulctCondition Account--################################################################
Request Verify DB Check Data MulctCondition Account
    # [Arguments]      ${type}    ${mulctMethodId}    ${dateFrom}    ${dateTo}    ${timePastDeadline}   ${dateToFlag}    ${total}
    [Arguments]      ${type}    ${mulctMethodId}    ${dateFrom}    ${dateTo}    ${dataMulctCondition}

    Log To Console    ${\n}=========== Start DB : [Request Verify DB Check Data MulctCondition Account] =============== 
    # ${DB_SELECTSTATEMENT_MULCTCONDITION_WHEREACCOUNTIDMULCTCMETHODID}    SELECT * FROM mulct_condition WHERE account_id = [accountId] and mulct_method_id = "[mulctMethodId]" and deleted_at IS null

    ${convertStrAccountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_MULCTCONDITION_WHEREACCOUNTIDMULCTCMETHODID}    [accountId]    ${convertStrAccountId}
    ${selectStatement}=    Replace String    ${selectStatement}    [mulctMethodId]    ${mulctMethodId}
    Log To Console    [mulct_condition : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [mulct_condition] Request Verify DB Check Data MulctCondition Account : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : mulct_condition] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : mulct_condition] : ${rowCount}
    FOR    ${i}    IN RANGE    ${rowCount}  
    
    Log To Console    [result : mulct_condition] : ${dataResult}[${i}][0]
    ${id}=    Convert To String    ${dataResult}[${i}][0]
    # Set Global Variable    ${accountUserId}    ${id}
    ${created_at}=    Convert To String    ${dataResult}[${i}][9]
    ${created_by}=    Convert To String    ${dataResult}[${i}][8]
    ${updated_at}=    Convert To String    ${dataResult}[${i}][11]
    ${updated_by}=    Run Keyword If    '${dataResult}[${i}][10]'!='${NONE}'    Convert To String    '${dataResult}[${i}][10]'
    ...    ELSE IF    '${dataResult}[${i}][10]'=='${NONE}'    Convert To String    ${NONE}
    ${deleted_at}=    Convert To String    ${dataResult}[${i}][12]
    ${deleted_by}=    Convert To String    ${dataResult}[${i}][13]
    ${mulctMethodId}=    Convert To String    ${mulctMethodId}
    ${dateFrom}=    Convert To String    ${dateFrom}
    ${dateTo}=    Convert To String    ${dateTo}
    ${timePastDeadline}=    Convert To String    ${dataMulctCondition[${i}]['timePastDeadline']}
    ${dateToFlag}=    Convert To String    ${dataMulctCondition[${i}]['dateToFlag']}

    ${total}=    Evaluate  "%.2f" % ${dataMulctCondition[${i}]['total']}
    ${total}=    Convert To String    ${total}
    
    # Log To Console    [result : created_at] : ${created_at}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # Log To Console    dateCreatedAt : ${dateCreatedAt}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateUpdatedAt}=    Convert Format Date DB    ${updated_at}
    # Log To Console    dateUpdatedAt : ${updated_at}

    # (1044, 7, 520, None, None, 9999, 1, Decimal('6.00'), '10', datetime.datetime(2021, 12, 9, 16, 18, 26), None, datetime.datetime(2021, 12, 9, 16, 18, 26), None, None)
    # ([id], [accountId], [mulctMethodId], [dateFrom], [dateTo], [timePastDeadline], [dateToFlag], Decimal('[total]'), '[created_by]', datetime.datetime([created_at]), [updated_by], datetime.datetime([updated_at]), [deleted_at], [deleted_by])
    
    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_CREATE_ALLFIELD}'    ${DB_SELECTSTATEMENT_MULCTCONDITION_ACCOUNTID_ALLFIELD_ADD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_EDIT_ALLFIELD}'    ${DB_SELECTSTATEMENT_MULCTCONDITION_ACCOUNTID_ALLFIELD_EDIT_VALUE}
    
    ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
    ${resultDB}=    Replace String    ${resultDB}    [accountId]    ${convertStrAccountId}
    ${resultDB}=    Replace String    ${resultDB}    [mulctMethodId]    ${mulctMethodId}
    ${resultDB}=    Replace String    ${resultDB}    [dateFrom]    ${dateFrom}
    ${resultDB}=    Replace String    ${resultDB}    [dateTo]    ${dateTo}
    ${resultDB}=    Replace String    ${resultDB}    [timePastDeadline]    ${timePastDeadline}
    ${resultDB}=    Replace String    ${resultDB}    [dateToFlag]    ${dateToFlag}
    ${resultDB}=    Replace String    ${resultDB}    [total]    ${total}
    ${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
    ${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${dateUpdatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}
    Log To Console    [resultDB] : ${resultDB}
    ${strResult}=    Convert To String    ${dataResult[${i}]}
    Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data MulctCondition Account

    END
    Log To Console    [strResult] : ${strResult}
    Log To Console    ${\n}=========== End DB : [Request Verify DB Check Data MulctCondition Account] =============== 

################################################################-- Update tb mulct_condition set delete_at--################################################################
Update tb mulct_condition set delete_at

    [Arguments]    ${account_id}    ${mulctMethodId}    ${deleted_at}    ${namefile}
    Log To Console    ${\n}=========== Start DB : [Update tb mulct_condition set delete_at - mulct_condition] =============== 
    #${DB_UPDATESTATEMENT_MULCTCONDITION_ACCOUNTID_DELETEDAT}    UPDATE mulct_condition SET deleted_at = [deleted_at] WHERE account_id = [account_id] and mulct_method_id = [mulct_method_id]

    ${selectStatement}=    Replace String    ${DB_UPDATESTATEMENT_MULCTCONDITION_ACCOUNTID_DELETEDAT}    [account_id]    ${account_id}
    ${selectStatement}=    Replace String    ${selectStatement}    [mulct_method_id]    ${mulctMethodId}
    ${selectStatement}=    Replace String    ${selectStatement}    [deleted_at]    ${deleted_at}
    Log To Console    [mulct_condition : resultQuery] : ${selectStatement}

    Create File    ./${namefile}    ${selectStatement}
    
    ${resultUserRole}=    Start Connect To MySql Execute Sql Script    ${namefile}
    Log To Console    [mulct_condition] Update tb mulct_condition set delete_at : ${resultUserRole}
    Log To Console    [result : mulct_condition] : ${resultUserRole}
    Remove File    ./${namefile}

    Log To Console    ${\n}=========== End DB : [Update tb mulct_condition set delete_at - mulct_condition] =============== 