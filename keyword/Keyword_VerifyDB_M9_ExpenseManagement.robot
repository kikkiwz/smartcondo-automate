*** Keywords ***
Request Verify DB Check Data Search ExpenseCode
    [Arguments]      ${type}    ${expensecode}    ${name}    ${status}    ${limit}    ${offset}    ${orderBy}
    
    Log To Console    ${\n}=========== Start DB : [Search ExpenseCode] =============== 
    # ${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_LISTALL}    SELECT * FROM expense_code WHERE account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
    # ${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_SEAECHALL}    SELECT * FROM expense_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND mulctcode LIKE '%[expensecode]%' AND status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
    # ${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_NAME}    SELECT * FROM expense_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
    # ${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_EXPENSECODE}    SELECT * FROM expense_code WHERE mulctcode LIKE '%[expensecode]%' AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
    # ${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_STATUS}    SELECT * FROM expense_code WHERE status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
    # ${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_EXPENSECODENAME}    SELECT * FROM expense_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND mulctcode LIKE '%[expensecode]%' AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
    # ${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_EXPENSECODESTATUS}    SELECT * FROM expense_code WHERE mulctcode LIKE '%[expensecode]%' AND status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
    # ${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_NAMESTATUS}    SELECT * FROM expense_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]

    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_SEARCHLISTALL}'    ${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_LISTALL}
    ...    '${type}'=='${MYSQL_TYPE_EXPENSECODE_SEARCH_ALL}'    ${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_SEAECHALL}
    ...    '${type}'=='${MYSQL_TYPE_EXPENSECODE_SEARCH_NAME}'    ${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_NAME}
    ...    '${type}'=='${MYSQL_TYPE_EXPENSECODE_SEARCH_EXPENSECODE}'    ${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_EXPENSECODE}
    ...    '${type}'=='${MYSQL_TYPE_EXPENSECODE_SEARCH_STATUS}'    ${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_STATUS}
    ...    '${type}'=='${MYSQL_TYPE_EXPENSECODE_SEARCH_EXPENSECODENAME}'    ${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_EXPENSECODENAME}
    ...    '${type}'=='${MYSQL_TYPE_EXPENSECODE_SEARCH_EXPENSECODESTATUS}'    ${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_EXPENSECODESTATUS}
    ...    '${type}'=='${MYSQL_TYPE_EXPENSECODE_SEARCH_NAMESTATUS}'    ${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_NAMESTATUS}

    ${convertStrAccountId}=    Convert To String    ${accountId}

    # Data
    ${selectStatement}=    Replace String    ${valueReplace}    [accountId]    ${convertStrAccountId}
    ${selectStatement}=    Replace String    ${selectStatement}    [name]    ${name}
    ${selectStatement}=    Replace String    ${selectStatement}    [expensecode]    ${expensecode}
    ${selectStatement}=    Replace String    ${selectStatement}    [status]    ${status}
    ${selectStatement}=    Replace String    ${selectStatement}    [limit]    ${limit}
    ${selectStatement}=    Replace String    ${selectStatement}    [offset]    ${offset}
    ${selectStatement}=    Replace String    ${selectStatement}    [orderBy]    ${orderBy}
    Log To Console    [expense_code : resultQuery] : ${selectStatement}

    # Rowcount
    ${valueReplaceRowcount}=    Set Variable If    '${type}'=='${MYSQL_TYPE_SEARCHLISTALL}'    ${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_LISTALL_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_EXPENSECODE_SEARCH_ALL}'    ${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_SEAECHALL_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_EXPENSECODE_SEARCH_NAME}'    ${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_NAME_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_EXPENSECODE_SEARCH_EXPENSECODE}'    ${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_EXPENSECODE_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_EXPENSECODE_SEARCH_STATUS}'    ${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_STATUS_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_EXPENSECODE_SEARCH_EXPENSECODENAME}'    ${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_EXPENSECODENAME_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_EXPENSECODE_SEARCH_EXPENSECODESTATUS}'    ${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_EXPENSECODESTATUS_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_EXPENSECODE_SEARCH_NAMESTATUS}'    ${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_NAMESTATUS_ROWCOUNT}

    
    ${replaceRowcount}=    Replace String    ${valueReplaceRowcount}    [accountId]    ${convertStrAccountId}
    ${replaceRowcount}=    Replace String    ${replaceRowcount}    [name]    ${name}
    ${replaceRowcount}=    Replace String    ${replaceRowcount}    [expensecode]    ${expensecode}
    ${replaceRowcount}=    Replace String    ${replaceRowcount}    [status]    ${status}
    ${selectStatementRowcount}=    Replace String    ${replaceRowcount}    [orderBy]    ${orderBy}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatementRowcount}
    Log To Console    [expense_code] Request Verify DB Check Data Search ExpenseCode : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : expense_code] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : expense_code] : ${rowCount}
    
    Log To Console    ${\n}=========== End DB : [Search ExpenseCode] =============== 
    [Return]    ${dataResult}    ${rowCount}

Check Value Table Search ExpenseCode
    [Arguments]    ${type}    ${rowcountSearchExpenseCode}    ${dataSearchExpenseCode}

    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Run Keyword If    '${type}'=='${DEFAULT_TH}'    Set Data for check value table ExpenseCode
    ...    ELSE IF    '${type}'=='${DEFAULT_EN}'    Set Data for check value table ExpenseCode EN

    #valueTable
    @{valArrDataTable}=    Create List    
    FOR    ${i}    IN RANGE    ${rowcountSearchExpenseCode}
    #  [((19, 7, 'รหัสค่าใช้จ่าย2', 'ชื่อค่าใช้จ่าย ภาษาไทย2', None, Decimal('3.00'), Decimal('4.00'), None, 0, 2, Decimal('3.00'), datetime.datetime(2021, 12, 2, 17, 30, 31), '10', None, None, None, None),), 1]

        ${expenseCode}=    Set Variable    ${dataSearchExpenseCode[${i}][2]}
        ${expenseCodeNameTh}=    Set Variable    ${dataSearchExpenseCode[${i}][3]}
        # ${expenseCodeNameEn}=    Set Variable    ${dataSearchExpenseCode[${i}][5]}
        ${expenseCodeNameEn}=    Set Variable If    '${dataSearchExpenseCode[${i}][4]}'=='${NONE}'    ${dataSearchExpenseCode[${i}][3]}
        ...    ${dataSearchExpenseCode[${i}][4]}
        
        # UI mapping field status 0=ไม่ใช้งาน , 1 = ใช้งาน , 0=Inactive , 1 = Active
        ${statusTH}=    Set Variable If    '${dataSearchExpenseCode[${i}][8]}'=='0'    ${DEFAULT_LBL_STATUS_INACTIVE_TH}
        ...    '${dataSearchExpenseCode[${i}][8]}'=='1'    ${DEFAULT_LBL_STATUS_ACTIVE_TH}
        ${statusEN}=    Set Variable If    '${dataSearchExpenseCode[${i}][8]}'=='0'    ${DEFAULT_LBL_STATUS_INACTIVE_LOW_EN}
        ...    '${dataSearchExpenseCode[${i}][8]}'=='1'    ${DEFAULT_LBL_STATUS_ACTIVE_EN}
        ${status}=    Set Variable If    '${type}'=='${DEFAULT_TH}'    ${statusTH}
        ...    '${type}'=='${DEFAULT_EN}'    ${statusEN}

        ${no}=    Convert To String    ${i+1}
        ${data}=    Evaluate    {"no":"${no}", "expenseCode":"${expenseCode}", "expenseCodeNameTh":"${expenseCodeNameTh}", "expenseCodeNameEn":"${expenseCodeNameEn}","status":"${status}"}
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
        
        Check Value Table    ${EXPENSECODE_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${i}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
        # Check Value Table    ${EXPENSECODE_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${numCol}    ${i}    ${arrNumCol}    ${arrNumfield}    ${fieldArrDataTable}    ${valArrDataTable}
    # Exit For Loop
    END

Request Verify DB Check Data Create ExpenseCode
    [Arguments]      ${type}    ${nameTh}    ${nameEn}    ${expenseCode}    ${priceUnit}    ${vat}    ${tax}    ${remark}    ${status}    ${groupTypeId}

    Log To Console    ${\n}=========== Start DB : [Create ExpenseCode] =============== 
    # ${DB_SELECTSTATEMENT_EXPENSECODE_CHECKCREATE}    SELECT * FROM expense_code WHERE name = "[name]" AND deleted_at IS NULL

    ${convertStrAccountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_EXPENSECODE_CHECKCREATE}    [name]    ${nameTh}
    Log To Console    [expense_code : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [expense_code] Request Verify DB Check Data Create ExpenseCode : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : expense_code] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    # Log To Console    [rowCount : expense_code] : ${rowCount}

    # Log To Console    [result : expense_code] : ${dataResult}[0][0]
    ${id}=    Convert To String    ${dataResult}[0][0]
    Set Global Variable    ${ExpenseCodeId}    ${id}
    ${created_at}=    Convert To String    ${dataResult}[0][11]
    ${created_by}=    Convert To String    ${dataResult}[0][12]
    ${updated_at}=    Convert To String    ${dataResult}[0][13]
    ${updated_by}=    Convert To String    ${dataResult}[0][14]
    ${deleted_at}=    Convert To String    ${dataResult}[0][15]
    ${deleted_by}=    Convert To String    ${dataResult}[0][16]
    ${accountId}=    Convert To String    ${accountId}
    ${status}=    Convert To String    ${status}
    ${groupTypeId}=    Convert To String    ${groupTypeId}
    ${priceUnit}=    Convert To String    ${priceUnit}
    ${vat}=    Convert To String    ${vat}
    ${tax}=    Convert To String    ${tax}
    # Log To Console    [result : created_at] : ${created_at}

    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # Log To Console    dateCreatedAt : ${dateCreatedAt}
    
    # ((22, 7, 'รหัสค่าใช้จ่าย2', 'ชื่อค่าใช้จ่าย ภาษาไทย2', None, Decimal('3.00'), Decimal('4.00'), None, 0, 2, Decimal('5.00'), datetime.datetime(2021, 12, 2, 17, 38, 56), '10', None, None, None, None),)
    # (([id], [accountId], '[expenseCode]', '[nameTh]', '[nameEn]', Decimal('[vat]'), Decimal('[tax]'), '[remark]', [status], [groupTypeId], Decimal('[price_unit]'), datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by]),)
    
    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_CREATE_ALLFIELD}'    ${DB_SELECTSTATEMENT_EXPENSECODE_CHECKCREATE_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_CREATE_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_EXPENSECODE_CHECKCREATE_REQUIREDFIELD_VALUE}
    
    ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
    ${resultDB}=    Replace String    ${resultDB}    [accountId]    ${accountId}
    ${resultDB}=    Replace String    ${resultDB}    [expenseCode]    ${expenseCode}
    ${resultDB}=    Replace String    ${resultDB}    [nameTh]    ${nameTh}
    ${resultDB}=    Replace String    ${resultDB}    [nameEn]    ${nameEn}
    ${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
    ${resultDB}=    Replace String    ${resultDB}    [price_unit]    ${priceUnit}
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

    Log To Console    resultDBresultDBresultDB[resultDB] : ${resultDB}
    ${strResult}=    Convert To String    ${dataResult}

    Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Create ExpenseCode

    Log To Console    ${\n}=========== End DB : [Create ExpenseCode] =============== 

Request Verify DB Check Data Edit ExpenseCode
    [Arguments]      ${type}    ${nameTh}    ${nameEn}    ${expenseCode}    ${priceUnit}    ${vat}    ${tax}    ${remark}    ${status}    ${groupTypeId}
        
    Log To Console    ${\n}=========== Start DB : [Edit ExpenseCode] =============== 
    # ${DB_SELECTSTATEMENT_EXPENSECODE_CHECKEDI T}    SELECT * FROM expense_code WHERE id = [id] AND deleted_at IS NULL

    ${convertStrExpenseCodeId}=    Convert To String    ${ExpenseCodeId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_EXPENSECODE_CHECKEDIT}    [id]    ${convertStrExpenseCodeId}
    Log To Console    [expense_code : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [expense_code] Request Verify DB Check Data Edit ExpenseCode : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : expense_code] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    # Log To Console    [rowCount : expense_code] : ${rowCount}

    Log To Console    [result : expense_code] : ${dataResult}[0][0]
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
    ${priceUnit}=    Convert To String    ${priceUnit}
    ${vat}=    Convert To String    ${vat}
    ${tax}=    Convert To String    ${tax}
    # Log To Console    [result : created_at] : ${created_at}

    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # # Log To Console    dateCreatedAt : ${dateCreatedAt}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateUpdatedAt}=    Convert Format Date DB    ${updated_at}
    # Log To Console    dateUpdatedAt : ${updated_at}
    
    # ((52, 1, 3, 'สาขา1', '111111111112', 'บัญชี1', datetime.datetime(2021, 9, 28, 20, 1), '10', None, None, None, None, 7, 1, 3, 'หมายเหตุ1'),)
    # (([id], [bankId], [bankAccountNameTypeId], '[branch]', '[bankAccountNumber]', '[bankAccountName]', datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [account_id], [status], [operate_type], '[remark]'),)
    
    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_EDIT_ALLFIELD}'    ${DB_SELECTSTATEMENT_EXPENSECODE_CHECKEDIT_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_EDIT_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_EXPENSECODE_CHECKEDIT_REQUIREDFIELD_VALUE}
    
    ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
    ${resultDB}=    Replace String    ${resultDB}    [accountId]    ${accountId}
    ${resultDB}=    Replace String    ${resultDB}    [expenseCode]    ${expenseCode}
    ${resultDB}=    Replace String    ${resultDB}    [nameTh]    ${nameTh}
    ${resultDB}=    Replace String    ${resultDB}    [nameEn]    ${nameEn}
    ${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
    ${resultDB}=    Replace String    ${resultDB}    [price_unit]    ${priceUnit}
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

    Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Edit ExpenseCode

    Log To Console    ${\n}=========== End DB : [Edit ExpenseCode] =============== 

Request Verify DB Check Data View ExpenseCode 
    [Arguments]      ${type}    ${nameTh}    ${nameEn}    ${expenseCode}    ${priceUnit}    ${vat}    ${tax}    ${remark}    ${status}    ${groupTypeId}
    Log To Console    ${\n}=========== Start DB : [View ExpenseCode] =============== 
    # ${DB_SELECTSTATEMENT_EXPENSECODE_CHECKVIEW}    SELECT * FROM expense_code WHERE id = [id] AND deleted_at IS NULL
    # ${DB_SELECTSTATEMENT_EXPENSECODE_CHECKVIEW_ALLFIELD_VALUE}    ([id], [accountId], [mulctMethodId], '[expenseCode]', '[nameTh]', '[nameEn]', [status], Decimal('[vat]'), Decimal('[tax]'), '[remark]', [groupTypeId], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by])

    ${convertStrExpenseCodeId}=    Convert To String    ${ExpenseCodeId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_EXPENSECODE_CHECKVIEW}    [id]    ${convertStrExpenseCodeId}
    Log To Console    [expense_code : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [expense_code] Request Verify DB Check Data View ExpenseCode : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : expense_code] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    # Log To Console    [rowCount : expense_code] : ${rowCount}
    
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
    ${priceUnit}=    Convert To String    ${priceUnit}
    ${vat}=    Convert To String    ${vat}
    ${tax}=    Convert To String    ${tax}
    
    # Log To Console    [result : created_at] : ${created_at}
    # # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # Log To Console    dateCreatedAt : ${dateCreatedAt}

    # ((140, 7, 168, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 10, 17, 59, 13), '10', None, None, None, None),)
    # ([id], [accountId], [mulctMethodId], '[expenseCode]', '[nameTh]', '[nameEn]', [status], Decimal('[vat]'), Decimal('[tax]'), '[remark]', [groupTypeId], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by])
    
    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_VIEW_ALLFIELD}'    ${DB_SELECTSTATEMENT_EXPENSECODE_CHECKVIEW_ALLFIELD_VALUE} 
    # # ...    '${type}'=='${MYSQL_TYPE_VIEW_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_EXPENSECODE_CHECKCREATE_REQUIREDFIELD_VALUE}
    
    FOR    ${i}    IN RANGE    ${rowCount}  
    # Log To Console    [result : expense_code] : ${dataResult}[0][0]
    # ${property_id}=    Convert To String    ${property_id[${i}]}
    # ${building_id}=    Convert To String    ${building_id[${i}]}
    
        ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
        ${resultDB}=    Replace String    ${resultDB}    [accountId]    ${accountId}
        ${resultDB}=    Replace String    ${resultDB}    [expenseCode]    ${expenseCode}
        ${resultDB}=    Replace String    ${resultDB}    [nameTh]    ${nameTh}
        ${resultDB}=    Replace String    ${resultDB}    [nameEn]    ${nameEn}
        ${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
        ${resultDB}=    Replace String    ${resultDB}    [price_unit]    ${priceUnit}
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
    Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data View ExpenseCode

    Log To Console    ${\n}=========== End DB : [View ExpenseCode] =============== 

Request Verify DB Check Data Delete ExpenseCode
    [Arguments]            ${type}    ${nameTh}    ${nameEn}    ${expenseCode}    ${priceUnit}    ${vat}    ${tax}    ${remark}    ${status}    ${groupTypeId}
    
    Log To Console    ${\n}=========== Start DB : [Delete ExpenseCode] =============== 
    #${DB_SELECTSTATEMENT_EXPENSECODE_CHECKDELETE}    SELECT * FROM expense_code WHERE id = [id]

    ${convertStrExpenseCodeId}=    Convert To String    ${ExpenseCodeId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_EXPENSECODE_CHECKDELETE}    [id]    ${convertStrExpenseCodeId}
    Log To Console    [expense_code : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [expense_code] Request Verify DB Check Data Delete ExpenseCode : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : expense_code] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    # Log To Console    [rowCount : expense_code] : ${rowCount}
 
    Log To Console    [result : expense_code] : ${dataResult}[0][0]
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
    ${priceUnit}=    Convert To String    ${priceUnit}
    ${vat}=    Convert To String    ${vat}
    ${tax}=    Convert To String    ${tax}

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
    # (([id], [accountId], [mulctMethodId], '[expenseCode]', '[nameTh]', '[nameEn]', [status], Decimal('[vat]'), Decimal('[tax]'), '[remark]', [groupTypeId], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', datetime.datetime([deleted_at]), '[deleted_by]'),)

    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_DELETE_ALLFIELD}'    ${DB_SELECTSTATEMENT_EXPENSECODE_CHECKDELETE_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_DELETE_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_EXPENSECODE_CHECKDELETE_REQUIREDFIELD_VALUE}
    
    ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
    ${resultDB}=    Replace String    ${resultDB}    [accountId]    ${accountId}
    ${resultDB}=    Replace String    ${resultDB}    [expenseCode]    ${expenseCode}
    ${resultDB}=    Replace String    ${resultDB}    [nameTh]    ${nameTh}
    ${resultDB}=    Replace String    ${resultDB}    [nameEn]    ${nameEn}
    ${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
    ${resultDB}=    Replace String    ${resultDB}    [price_unit]    ${priceUnit}
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

    Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Delete ExpenseCode

    Log To Console    ${\n}=========== End DB : [Delete ExpenseCode] =============== 
