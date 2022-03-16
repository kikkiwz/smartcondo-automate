*** Keywords ***
Request Verify DB Check Data Search MulctCode
    [Arguments]      ${type}    ${mulctcode}    ${name}    ${status}    ${limit}    ${offset}    ${orderBy}
    
    Log To Console    ${\n}=========== Start DB : [Search MulctCode] =============== 
    # ${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_LISTALL}    SELECT * FROM mulct_code WHERE account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
    # ${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_SEAECHALL}    SELECT * FROM mulct_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND mulctcode LIKE '%[mulctcode]%' AND status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
    # ${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_NAME}    SELECT * FROM mulct_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
    # ${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_MULCTCODE}    SELECT * FROM mulct_code WHERE mulctcode LIKE '%[mulctcode]%' AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
    # ${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_STATUS}    SELECT * FROM mulct_code WHER status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
    # ${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_MULCTCODENAME}    SELECT * FROM mulct_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND mulctcode LIKE '%[mulctcode]%' AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
    # ${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_MULCTCODESTATUS}    SELECT * FROM mulct_code WHERE mulctcode LIKE '%[mulctcode]%' AND status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
    # ${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_NAMESTATUS}    SELECT * FROM mulct_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]

    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_SEARCHLISTALL}'    ${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_LISTALL}
    ...    '${type}'=='${MYSQL_TYPE_MULCTCODE_SEARCH_ALL}'    ${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_SEAECHALL}
    ...    '${type}'=='${MYSQL_TYPE_MULCTCODE_SEARCH_NAME}'    ${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_NAME}
    ...    '${type}'=='${MYSQL_TYPE_MULCTCODE_SEARCH_MULCTCODE}'    ${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_MULCTCODE}
    ...    '${type}'=='${MYSQL_TYPE_MULCTCODE_SEARCH_STATUS}'    ${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_STATUS}
    ...    '${type}'=='${MYSQL_TYPE_MULCTCODE_SEARCH_MULCTCODENAME}'    ${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_MULCTCODENAME}
    ...    '${type}'=='${MYSQL_TYPE_MULCTCODE_SEARCH_MULCTCODESTATUS}'    ${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_MULCTCODESTATUS}
    ...    '${type}'=='${MYSQL_TYPE_MULCTCODE_SEARCH_NAMESTATUS}'    ${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_NAMESTATUS}

    
    ${convertStrAccountId}=    Convert To String    ${accountId}

    # Data
    ${selectStatement}=    Replace String    ${valueReplace}    [accountId]    ${convertStrAccountId}
    ${selectStatement}=    Replace String    ${selectStatement}    [name]    ${name}
    ${selectStatement}=    Replace String    ${selectStatement}    [mulctcode]    ${mulctcode}
    ${selectStatement}=    Replace String    ${selectStatement}    [status]    ${status}
    ${selectStatement}=    Replace String    ${selectStatement}    [limit]    ${limit}
    ${selectStatement}=    Replace String    ${selectStatement}    [offset]    ${offset}
    ${selectStatement}=    Replace String    ${selectStatement}    [orderBy]    ${orderBy}
    Log To Console    [mulct_code : resultQuery] : ${selectStatement}

    # Rowcount
    ${valueReplaceRowcount}=    Set Variable If    '${type}'=='${MYSQL_TYPE_SEARCHLISTALL}'    ${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_LISTALL_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_MULCTCODE_SEARCH_ALL}'    ${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_SEAECHALL_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_MULCTCODE_SEARCH_NAME}'    ${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_NAME_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_MULCTCODE_SEARCH_MULCTCODE}'    ${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_MULCTCODE_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_MULCTCODE_SEARCH_STATUS}'    ${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_STATUS_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_MULCTCODE_SEARCH_MULCTCODENAME}'    ${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_MULCTCODENAME_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_MULCTCODE_SEARCH_MULCTCODESTATUS}'    ${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_MULCTCODESTATUS_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_MULCTCODE_SEARCH_NAMESTATUS}'    ${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_NAMESTATUS_ROWCOUNT}

    
    ${replaceRowcount}=    Replace String    ${valueReplaceRowcount}    [accountId]    ${convertStrAccountId}
    ${replaceRowcount}=    Replace String    ${replaceRowcount}    [name]    ${name}
    ${replaceRowcount}=    Replace String    ${replaceRowcount}    [mulctcode]    ${mulctcode}
    ${replaceRowcount}=    Replace String    ${replaceRowcount}    [status]    ${status}
    ${selectStatementRowcount}=    Replace String    ${replaceRowcount}    [orderBy]    ${orderBy}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatementRowcount}
    Log To Console    [mulct_code] Request Verify DB Check Data Search MulctCode : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : mulct_code] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : mulct_code] : ${rowCount}
    
    Log To Console    ${\n}=========== End DB : [Search MulctCode] =============== 
    [Return]    ${dataResult}    ${rowCount}

Check Value Table Search MulctCode
    [Arguments]    ${type}    ${rowcountSearchMulctCode}    ${dataSearchMulctCode}

    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Run Keyword If    '${type}'=='${DEFAULT_TH}'    Set Data for check value table MulctCode
    ...    ELSE IF    '${type}'=='${DEFAULT_EN}'    Set Data for check value table MulctCode EN

    #valueTable
    @{valArrDataTable}=    Create List    
    FOR    ${i}    IN RANGE    ${rowcountSearchMulctCode}
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1]

        ${mulctCode}=    Set Variable    ${dataSearchMulctCode[${i}][3]}
        ${mulctNameTh}=    Set Variable    ${dataSearchMulctCode[${i}][4]}
        # ${mulctNameEn}=    Set Variable    ${dataSearchMulctCode[${i}][5]}
        ${mulctNameEn}=    Set Variable If    '${dataSearchMulctCode[${i}][5]}'=='${NONE}'    ${dataSearchMulctCode[${i}][4]}
        ...    ${dataSearchMulctCode[${i}][5]}
        
        # UI mapping field status 0=ไม่ใช้งาน , 1 = ใช้งาน , 0=Inactive , 1 = Active
        ${statusTH}=    Set Variable If    '${dataSearchMulctCode[${i}][6]}'=='0'    ${DEFAULT_LBL_STATUS_INACTIVE_TH}
        ...    '${dataSearchMulctCode[${i}][6]}'=='1'    ${DEFAULT_LBL_STATUS_ACTIVE_TH}
        ${statusEN}=    Set Variable If    '${dataSearchMulctCode[${i}][6]}'=='0'    ${DEFAULT_LBL_STATUS_INACTIVE_LOW_EN}
        ...    '${dataSearchMulctCode[${i}][6]}'=='1'    ${DEFAULT_LBL_STATUS_ACTIVE_EN}
        ${status}=    Set Variable If    '${type}'=='${DEFAULT_TH}'    ${statusTH}
        ...    '${type}'=='${DEFAULT_EN}'    ${statusEN}

        # Log To Console    [banknameTh] : ${banknameTh}
        ${no}=    Convert To String    ${i+1}
        ${data}=    Evaluate    {"no":"${no}", "mulctCode":"${mulctCode}", "mulctNameTh":"${mulctNameTh}", "mulctNameEn":"${mulctNameEn}","status":"${status}"}
        Append To List    ${valArrDataTable}    ${data} 

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

Request Verify DB Check Data Create MulctCode
    [Arguments]      ${type}    ${nameTh}    ${nameEn}    ${mulctCode}    ${vat}    ${tax}    ${remark}    ${status}    ${groupTypeId}    ${mulctMethodId}

    Log To Console    ${\n}=========== Start DB : [Create MulctCode] =============== 
    # ${DB_SELECTSTATEMENT_MULCTCODE_CHECKCREATE}    SELECT * FROM mulct_code WHERE name = "[name]" AND deleted_at IS NULL

    ${convertStrAccountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_MULCTCODE_CHECKCREATE}    [name]    ${nameTh}
    Log To Console    [mulct_code : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [mulct_code] Request Verify DB Check Data Create MulctCode : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : mulct_code] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    # Log To Console    [rowCount : mulct_code] : ${rowCount}

    # Log To Console    [result : mulct_code] : ${dataResult}[0][0]
    ${id}=    Convert To String    ${dataResult}[0][0]
    Set Global Variable    ${MulctCodeId}    ${id}
    ${created_at}=    Convert To String    ${dataResult}[0][11]
    ${created_by}=    Convert To String    ${dataResult}[0][12]
    ${updated_at}=    Convert To String    ${dataResult}[0][13]
    ${updated_by}=    Convert To String    ${dataResult}[0][14]
    ${deleted_at}=    Convert To String    ${dataResult}[0][15]
    ${deleted_by}=    Convert To String    ${dataResult}[0][16]
    ${accountId}=    Convert To String    ${accountId}
    ${status}=    Convert To String    ${status}
    ${groupTypeId}=    Convert To String    ${groupTypeId}
    ${mulctMethodId}=    Convert To String    ${mulctMethodId}
    # Log To Console    [result : created_at] : ${created_at}

    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # Log To Console    dateCreatedAt : ${dateCreatedAt}
    
    # ((23, 7, 39, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 18, 12, 38), '10', None, None, None, None),)
    # (([id], [accountId], [mulctMethodId], '[mulctCode]', '[nameTh]', '[nameEn]', [status], Decimal('[vat]'), Decimal('[tax]'), '[remark]', [groupTypeId], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by]),)
    
    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_CREATE_ALLFIELD}'    ${DB_SELECTSTATEMENT_MULCTCODE_CHECKCREATE_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_CREATE_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_MULCTCODE_CHECKCREATE_REQUIREDFIELD_VALUE}
    
    ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
    ${resultDB}=    Replace String    ${resultDB}    [accountId]    ${accountId}
    ${resultDB}=    Replace String    ${resultDB}    [mulctMethodId]    ${mulctMethodId}
    ${resultDB}=    Replace String    ${resultDB}    [mulctCode]    ${mulctCode}
    ${resultDB}=    Replace String    ${resultDB}    [nameTh]    ${nameTh}
    ${resultDB}=    Replace String    ${resultDB}    [nameEn]    ${nameEn}
    ${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
    ${resultDB}=    Replace String    ${resultDB}    [vat]    ${vat}
    ${resultDB}=    Replace String    ${resultDB}    [tax]    ${tax}
    ${resultDB}=    Replace String    ${resultDB}    [remark]    ${remark}
    ${resultDB}=    Replace String    ${resultDB}    [groupTypeId]    ${groupTypeId}

    ${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
    ${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${updated_at}
    ${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}

    # Log To Console    [resultDB] : ${resultDB}
    ${strResult}=    Convert To String    ${dataResult}

    Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Create MulctCode

    Log To Console    ${\n}=========== End DB : [Create MulctCode] =============== 

Request Verify DB Check Data Edit MulctCode
    [Arguments]      ${type}    ${nameTh}    ${nameEn}    ${mulctCode}    ${vat}    ${tax}    ${remark}    ${status}    ${groupTypeId}    ${mulctMethodId}
        
    Log To Console    ${\n}=========== Start DB : [Edit MulctCode] =============== 
    # ${DB_SELECTSTATEMENT_MULCTCODE_CHECKEDI T}    SELECT * FROM mulct_code WHERE id = [id] AND deleted_at IS NULL

    ${convertStrMulctCodeId}=    Convert To String    ${MulctCodeId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_MULCTCODE_CHECKEDIT}    [id]    ${convertStrMulctCodeId}
    Log To Console    [mulct_code : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [mulct_code] Request Verify DB Check Data Edit MulctCode : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : mulct_code] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    # Log To Console    [rowCount : mulct_code] : ${rowCount}

    Log To Console    [result : mulct_code] : ${dataResult}[0][0]
    ${id}=    Convert To String    ${dataResult}[0][0]
    ${created_at}=    Convert To String    ${dataResult}[0][11]
    ${created_by}=    Convert To String    ${dataResult}[0][12]
    ${updated_at}=    Convert To String    ${dataResult}[0][13]
    ${updated_by}=    Convert To String    ${dataResult}[0][14]
    ${deleted_at}=    Convert To String    ${dataResult}[0][15]
    ${deleted_by}=    Convert To String    ${dataResult}[0][16]
    ${accountId}=    Convert To String    ${accountId}
    ${status}=    Convert To String    ${status}
    ${groupTypeId}=    Convert To String    ${groupTypeId}
    ${mulctMethodId}=    Convert To String    ${mulctMethodId}
    # Log To Console    [result : created_at] : ${created_at}

    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # # Log To Console    dateCreatedAt : ${dateCreatedAt}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateUpdatedAt}=    Convert Format Date DB    ${updated_at}
    # Log To Console    dateUpdatedAt : ${updated_at}
    
    # ((52, 1, 3, 'สาขา1', '111111111112', 'บัญชี1', datetime.datetime(2021, 9, 28, 20, 1), '10', None, None, None, None, 7, 1, 3, 'หมายเหตุ1'),)
    # (([id], [bankId], [bankAccountNameTypeId], '[branch]', '[bankAccountNumber]', '[bankAccountName]', datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [account_id], [status], [operate_type], '[remark]'),)
    
    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_EDIT_ALLFIELD}'    ${DB_SELECTSTATEMENT_MULCTCODE_CHECKEDIT_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_EDIT_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_MULCTCODE_CHECKEDIT_REQUIREDFIELD_VALUE}
    
    ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
    ${resultDB}=    Replace String    ${resultDB}    [accountId]    ${accountId}
    ${resultDB}=    Replace String    ${resultDB}    [mulctMethodId]    ${mulctMethodId}
    ${resultDB}=    Replace String    ${resultDB}    [mulctCode]    ${mulctCode}
    ${resultDB}=    Replace String    ${resultDB}    [nameTh]    ${nameTh}
    ${resultDB}=    Replace String    ${resultDB}    [nameEn]    ${nameEn}
    ${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
    ${resultDB}=    Replace String    ${resultDB}    [vat]    ${vat}
    ${resultDB}=    Replace String    ${resultDB}    [tax]    ${tax}
    ${resultDB}=    Replace String    ${resultDB}    [remark]    ${remark}
    ${resultDB}=    Replace String    ${resultDB}    [groupTypeId]    ${groupTypeId}
    ${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
    ${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${dateUpdatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}
    # Log To Console    [resultDB] : ${resultDB}
    ${strResult}=    Convert To String    ${dataResult}

    Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Edit MulctCode

    Log To Console    ${\n}=========== End DB : [Edit MulctCode] =============== 

Request Verify DB Check Data View MulctCode 
    [Arguments]      ${type}    ${nameTh}    ${nameEn}    ${mulctCode}    ${vat}    ${tax}    ${remark}    ${status}    ${groupTypeId}    ${mulctMethodId}
     
    Log To Console    ${\n}=========== Start DB : [View MulctCode] =============== 
    # ${DB_SELECTSTATEMENT_MULCTCODE_CHECKVIEW}    SELECT * FROM mulct_code WHERE id = [id] AND deleted_at IS NULL
    # ${DB_SELECTSTATEMENT_MULCTCODE_CHECKVIEW_ALLFIELD_VALUE}    ([id], [accountId], [mulctMethodId], '[mulctCode]', '[nameTh]', '[nameEn]', [status], Decimal('[vat]'), Decimal('[tax]'), '[remark]', [groupTypeId], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by])

    ${convertStrMulctCodeId}=    Convert To String    ${MulctCodeId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_MULCTCODE_CHECKVIEW}    [id]    ${convertStrMulctCodeId}
    Log To Console    [mulct_code : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [mulct_code] Request Verify DB Check Data View MulctCode : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : mulct_code] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    # Log To Console    [rowCount : mulct_code] : ${rowCount}
    
    ${id}=    Convert To String    ${dataResult}[0][0]
    ${created_at}=    Convert To String    ${dataResult}[0][11]
    ${created_by}=    Convert To String    ${dataResult}[0][12]
    ${updated_at}=    Convert To String    ${dataResult}[0][13]
    ${updated_by}=    Convert To String    ${dataResult}[0][14]
    ${deleted_at}=    Convert To String    ${dataResult}[0][15]
    ${deleted_by}=    Convert To String    ${dataResult}[0][16]
    ${accountId}=    Convert To String    ${accountId}
    ${status}=    Convert To String    ${status}
    ${groupTypeId}=    Convert To String    ${groupTypeId}
    ${mulctMethodId}=    Convert To String    ${mulctMethodId}
    
    # Log To Console    [result : created_at] : ${created_at}
    # # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # Log To Console    dateCreatedAt : ${dateCreatedAt}

    # ((140, 7, 168, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 10, 17, 59, 13), '10', None, None, None, None),)
    # ([id], [accountId], [mulctMethodId], '[mulctCode]', '[nameTh]', '[nameEn]', [status], Decimal('[vat]'), Decimal('[tax]'), '[remark]', [groupTypeId], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by])
    
    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_VIEW_ALLFIELD}'    ${DB_SELECTSTATEMENT_MULCTCODE_CHECKVIEW_ALLFIELD_VALUE} 
    # # ...    '${type}'=='${MYSQL_TYPE_VIEW_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_MULCTCODE_CHECKCREATE_REQUIREDFIELD_VALUE}
    
    FOR    ${i}    IN RANGE    ${rowCount}  
    # Log To Console    [result : mulct_code] : ${dataResult}[0][0]
    # ${property_id}=    Convert To String    ${property_id[${i}]}
    # ${building_id}=    Convert To String    ${building_id[${i}]}
    
        ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
        ${resultDB}=    Replace String    ${resultDB}    [accountId]    ${accountId}
        ${resultDB}=    Replace String    ${resultDB}    [mulctMethodId]    ${mulctMethodId}
        ${resultDB}=    Replace String    ${resultDB}    [mulctCode]    ${mulctCode}
        ${resultDB}=    Replace String    ${resultDB}    [nameTh]    ${nameTh}
        ${resultDB}=    Replace String    ${resultDB}    [nameEn]    ${nameEn}
        ${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
        ${resultDB}=    Replace String    ${resultDB}    [vat]    ${vat}
        ${resultDB}=    Replace String    ${resultDB}    [tax]    ${tax}
        ${resultDB}=    Replace String    ${resultDB}    [remark]    ${remark}
        ${resultDB}=    Replace String    ${resultDB}    [groupTypeId]    ${groupTypeId}
        ${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
        ${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
        ${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${updated_at}
        ${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
        ${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
        ${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}
        # Log To Console    [resultDB] : ${resultDB}
        ${strResult}=    Convert To String    ${dataResult[${i}]}
    END
    Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data View MulctCode

    Log To Console    ${\n}=========== End DB : [View MulctCode] =============== 

Request Verify DB Check Data Delete MulctCode
    [Arguments]            ${type}    ${nameTh}    ${nameEn}    ${mulctCode}    ${vat}    ${tax}    ${remark}    ${status}    ${groupTypeId}    ${mulctMethodId}
    
    Log To Console    ${\n}=========== Start DB : [Delete MulctCode] =============== 
    #${DB_SELECTSTATEMENT_MULCTCODE_CHECKDELETE}    SELECT * FROM mulct_code WHERE id = [id]

    ${convertStrMulctCodeId}=    Convert To String    ${MulctCodeId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_MULCTCODE_CHECKDELETE}    [id]    ${convertStrMulctCodeId}
    Log To Console    [mulct_code : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [mulct_code] Request Verify DB Check Data Delete MulctCode : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : mulct_code] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    # Log To Console    [rowCount : mulct_code] : ${rowCount}
 
    Log To Console    [result : mulct_code] : ${dataResult}[0][0]
    ${id}=    Convert To String    ${dataResult}[0][0]
    ${created_at}=    Convert To String    ${dataResult}[0][11]
    ${created_by}=    Convert To String    ${dataResult}[0][12]
    ${updated_at}=    Convert To String    ${dataResult}[0][13]
    ${updated_by}=    Convert To String    ${dataResult}[0][14]
    ${deleted_at}=    Convert To String    ${dataResult}[0][15]
    ${deleted_by}=    Convert To String    ${dataResult}[0][16]
    ${accountId}=    Convert To String    ${accountId}
    ${status}=    Convert To String    ${status}
    ${groupTypeId}=    Convert To String    ${groupTypeId}
    ${mulctMethodId}=    Convert To String    ${mulctMethodId}

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
    
    # ((52, 1, 3, 'สาขา1', '111111111112', 'บัญชี1', datetime.datetime(2021, 9, 28, 20, 1), '10', None, None, None, None, 7, 1, 3, 'หมายเหตุ1'),)
    # (([id], [accountId], [mulctMethodId], '[mulctCode]', '[nameTh]', '[nameEn]', [status], Decimal('[vat]'), Decimal('[tax]'), '[remark]', [groupTypeId], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', datetime.datetime([deleted_at]), '[deleted_by]'),)

    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_DELETE_ALLFIELD}'    ${DB_SELECTSTATEMENT_MULCTCODE_CHECKDELETE_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_DELETE_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_MULCTCODE_CHECKDELETE_REQUIREDFIELD_VALUE}
    
    ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
    ${resultDB}=    Replace String    ${resultDB}    [accountId]    ${accountId}
    ${resultDB}=    Replace String    ${resultDB}    [mulctMethodId]    ${mulctMethodId}
    ${resultDB}=    Replace String    ${resultDB}    [mulctCode]    ${mulctCode}
    ${resultDB}=    Replace String    ${resultDB}    [nameTh]    ${nameTh}
    ${resultDB}=    Replace String    ${resultDB}    [nameEn]    ${nameEn}
    ${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
    ${resultDB}=    Replace String    ${resultDB}    [vat]    ${vat}
    ${resultDB}=    Replace String    ${resultDB}    [tax]    ${tax}
    ${resultDB}=    Replace String    ${resultDB}    [remark]    ${remark}
    ${resultDB}=    Replace String    ${resultDB}    [groupTypeId]    ${groupTypeId}
    ${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
    ${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${dateUpdatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${dateDeletedAt}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}

    # Log To Console    [resultDB] : ${resultDB}
    ${strResult}=    Convert To String    ${dataResult}

    Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Delete MulctCode

    Log To Console    ${\n}=========== End DB : [Delete MulctCode] =============== 
