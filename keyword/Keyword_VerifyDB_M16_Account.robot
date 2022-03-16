*** Keywords ***
Request Verify DB Check Data Search Account
    [Arguments]      ${type}    ${startDate}    ${expireDate}    ${dataSearch}    ${limit}    ${offset}    ${orderBy}
    
    Log To Console    ${\n}=========== Start DB : [Search Account] =============== 
    # SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE a.deleted_at is null AND r.role_name = "Admin" order by created_at desc limit 20 offset 0
    # ${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_LISTALL}    SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE a.deleted_at is null AND r.role_name = "Admin" order by [orderBy] limit [limit] offset [offset]
    # ${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_SEAECHALL}    SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE (a.start_date = "[start_date]" OR a.expire_date = "[expire_date]" OR a.name LIKE '%[dataSearch]%' OR u.identification_no LIKE '%[dataSearch]%' OR u.phone LIKE '%[dataSearch]%') AND a.deleted_at is null AND r.role_name = "Admin" order by [orderBy] limit [limit] offset [offset]
    # ${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_STARTDATE}    SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE a.start_date = "[start_date]" AND a.deleted_at is null AND r.role_name = "Admin" order by [orderBy] limit [limit] offset [offset]
    # ${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_EXPIREDATE}    SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE a.expire_date = "[expire_date]" AND a.deleted_at is null AND r.role_name = "Admin" order by [orderBy] limit [limit] offset [offset]
    # ${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_DATASEARCH}    SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE (a.name LIKE '%[dataSearch]%' OR u.identification_no LIKE '%[dataSearch]%' OR u.phone LIKE '%[dataSearch]%') AND a.deleted_at is null AND r.role_name = "Admin" order by [orderBy] limit [limit] offset [offset]
    # ${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_STARTEXPIREDATE}    SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE a.start_date = "[start_date]" AND a.expire_date = "[expire_date]" AND a.deleted_at is null AND r.role_name = "Admin" order by [orderBy] limit [limit] offset [offset]
    # ${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_STARTDATEDATASEARCH}    SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE (a.start_date = "[start_date]" OR a.name LIKE '%[dataSearch]%' OR u.identification_no LIKE '%[dataSearch]%' OR u.phone LIKE '%[dataSearch]%') AND a.deleted_at is null AND r.role_name = "Admin" order by [orderBy] limit [limit] offset [offset]
    # ${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_EXPIREDATEDATASEARCH}    SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE (a.expire_date = "[expire_date]" OR a.name LIKE '%[dataSearch]%' OR u.identification_no LIKE '%[dataSearch]%' OR u.phone LIKE '%[dataSearch]%') AND a.deleted_at is null AND r.role_name = "Admin" order by [orderBy] limit [limit] offset [offset]

    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_SEARCHLISTALL}'    ${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_LISTALL}
    ...    '${type}'=='${MYSQL_TYPE_ACCOUNT_SEARCH_ALL}'    ${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_SEAECHALL}
    ...    '${type}'=='${MYSQL_TYPE_ACCOUNT_SEARCH_STARTDATE}'    ${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_STARTDATE}
    ...    '${type}'=='${MYSQL_TYPE_ACCOUNT_SEARCH_EXPIREDATE}'    ${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_EXPIREDATE}
    ...    '${type}'=='${MYSQL_TYPE_ACCOUNT_SEARCH_DATASEARCH}'    ${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_DATASEARCH}
    ...    '${type}'=='${MYSQL_TYPE_ACCOUNT_SEARCH_STARTEXPIREDATE}'    ${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_STARTEXPIREDATE}
    ...    '${type}'=='${MYSQL_TYPE_ACCOUNT_SEARCH_STARTDATEDATASEARCH}'    ${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_STARTDATEDATASEARCH}
    ...    '${type}'=='${MYSQL_TYPE_ACCOUNT_SEARCH_EXPIREDATEDATASEARCH}'    ${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_EXPIREDATEDATASEARCH}
    
    # Data
    ${selectStatement}=    Replace String    ${valueReplace}    [start_date]    ${startDate}
    ${selectStatement}=    Replace String    ${selectStatement}    [expire_date]    ${expireDate}
    ${selectStatement}=    Replace String    ${selectStatement}    [dataSearch]    ${dataSearch}
    ${selectStatement}=    Replace String    ${selectStatement}    [limit]    ${limit}
    ${selectStatement}=    Replace String    ${selectStatement}    [offset]    ${offset}
    ${selectStatement}=    Replace String    ${selectStatement}    [orderBy]    ${orderBy}
    Log To Console    [accounts : resultQuery] : ${selectStatement}

    # Rowcount
    ${valueReplaceRowcount}=    Set Variable If    '${type}'=='${MYSQL_TYPE_SEARCHLISTALL}'    ${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_LISTALL_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_ACCOUNT_SEARCH_ALL}'    ${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_SEAECHALL_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_ACCOUNT_SEARCH_STARTDATE}'    ${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_STARTDATE_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_ACCOUNT_SEARCH_EXPIREDATE}'    ${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_EXPIREDATE_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_ACCOUNT_SEARCH_DATASEARCH}'    ${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_DATASEARCH_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_ACCOUNT_SEARCH_STARTEXPIREDATE}'    ${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_STARTEXPIREDATE_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_ACCOUNT_SEARCH_STARTDATEDATASEARCH}'    ${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_STARTDATEDATASEARCH_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_ACCOUNT_SEARCH_EXPIREDATEDATASEARCH}'    ${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_EXPIREDATEDATASEARCH_ROWCOUNT}

    ${replaceRowcount}=    Replace String    ${valueReplaceRowcount}    [start_date]    ${startDate}
    ${replaceRowcount}=    Replace String    ${replaceRowcount}    [expire_date]    ${expireDate}
    ${replaceRowcount}=    Replace String    ${replaceRowcount}    [dataSearch]    ${dataSearch}
    ${replaceRowcount}=    Replace String    ${replaceRowcount}    [limit]    ${limit}
    ${replaceRowcount}=    Replace String    ${replaceRowcount}    [offset]    ${offset}
    ${selectStatementRowcount}=    Replace String    ${replaceRowcount}    [orderBy]    ${orderBy}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatementRowcount}
    Log To Console    [accounts] Request Verify DB Check Data Search Account : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : accounts] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : accounts] : ${rowCount}
    
    Log To Console    ${\n}=========== End DB : [Search Account] =============== 
    [Return]    ${dataResult}    ${rowCount}

Check Value Table Search Account 
    [Arguments]    ${type}    ${rowcountSearchAccount}    ${dataSearchAccount}

    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Run Keyword If    '${type}'=='${DEFAULT_TH}'    Set Data for check value table Account
    ...    ELSE IF    '${type}'=='${DEFAULT_EN}'    Set Data for check value table Account EN

    #valueTable
    @{valArrDataTable}=    Create List    
    FOR    ${i}    IN RANGE    ${rowcountSearchAccount}
        #  [((15, 'test', 1, datetime.datetime(2021, 9, 30, 0, 0), None, datetime.datetime(2021, 10, 14, 17, 57, 35), '1', None, None, None, None, 33, 'Admin0015', '11111', '0811111111', 15, 33),), 1] 
    
        ${name}=    Replace String    ${dataSearchAccount[${i}][1]}    ${SPACE}    ${EMPTY}
        ${maximumRoom}=    Set Variable    ${dataSearchAccount[${i}][2]}
        ${startDate}=    Set Variable    ${dataSearchAccount[${i}][3]}
        ${expireDate}=    Set Variable    ${dataSearchAccount[${i}][4]}
        ${identificationNo}=    Set Variable    ${dataSearchAccount[${i}][12]}
        ${phone}=    Set Variable    ${dataSearchAccount[${i}][14]}
        Log To Console    expireDate : ${expireDate}
        # 2021-07-22 13:34:00.630000 -> 22/07/2021
        ${dateStartDate}=    Convert Format Date To Format    ${startDate}    ${YYYYMMDD_-}    ${DDMMYYYY_/}
        # Log To Console    dateStartDate : ${dateStartDate}
        # 2021-07-22 13:34:00.630000 -> 22/07/2021
        ${dateExpireDate}=    run keyword If    '${expireDate}'!='${NONE}'    Convert Format Date To Format    ${expireDate}    ${YYYYMMDD_-}    ${DDMMYYYY_/}
        ...    ELSE IF    '${expireDate}'=='${NONE}'    Set Variable    ${EMPTY}
        Log To Console    dateExpireDate : ${dateExpireDate}
        
        ${no}=    Convert To String    ${i+1}
        ${data}=    Evaluate    {"no":"${no}", "identificationNo":"${identificationNo}", "name":"${name}", "phone":"${phone}", "maximumRoom":"${maximumRoom}", "startDate":"${dateStartDate}", "expireDate":"${dateExpireDate}"}
        Append To List    ${valArrDataTable}    ${data} 
        Log To Console    ${data}

        Check Value Table    ${ACCOUNT_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${i}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
        # Check Value Table    ${ACCOUNT_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${numCol}    ${i}    ${arrNumCol}    ${arrNumfield}    ${fieldArrDataTable}    ${valArrDataTable}
    # Exit For Loop
    END

Request Verify DB Check Data Create Account
    [Arguments]      ${type}    ${identificationNo}    ${name}    ${maximumRoom}    ${phone}    ${taxId}   ${startDate}    ${expireDate}
    
    Log To Console    ${\n}=========== Start DB : [Create Bank Account] =============== 
    #${DB_SELECTSTATEMENT_ACCOUNT_CHECKCREATE}    SELECT * FROM accounts WHERE name = "[name]" AND deleted_at IS NULL

    ${selectStatementAccount}=    Replace String    ${DB_SELECTSTATEMENT_ACCOUNT_CHECKCREATE}    [name]    ${name}
    Log To Console    [accounts : resultQuery] : ${selectStatementAccount}

    #[(), 0]
    # queryResults,rowCount
    @{resultAccount}=    Start Connect To MySql Query All List    ${selectStatementAccount}    ${selectStatementAccount}
    # Log To Console    [accounts] Request Verify DB Check Data Create Account : ${resultAccount}
    ${dataResultAccount}=    Set Variable    ${resultAccount}[0]
    Log To Console    [result : accounts] : ${dataResultAccount}
    ${rowCountAccount}=    Set Variable    ${resultAccount}[1]
    # Log To Console    [rowCount : accounts] : ${rowCountAccount}

    Log To Console    [result : accounts] : ${dataResultAccount}[0][0]
    ${id}=    Convert To String    ${dataResultAccount}[0][0]
    Set Global Variable    ${accountUserId}    ${id}
    ${created_at}=    Convert To String    ${dataResultAccount}[0][5]
    ${created_by}=    Convert To String    ${dataResultAccount}[0][6]
    ${updated_at}=    Convert To String    ${dataResultAccount}[0][7]
    ${updated_by}=    Convert To String    ${dataResultAccount}[0][8]
    ${deleted_at}=    Convert To String    ${dataResultAccount}[0][9]
    ${deleted_by}=    Convert To String    ${dataResultAccount}[0][10]
    ${phone}=    Convert To String    ${phone}
    ${maximumRoom}=    Convert To String    ${maximumRoom}
    ${taxId}=    Convert To String    ${taxId}
    # Log To Console    [result : created_at] : ${created_at}

    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # Log To Console    dateCreatedAt : ${dateCreatedAt}
    ${dateStartDate}=    Convert Format Date DB No Have Second    ${startDate}
    Log To Console    dateStartDate : ${dateStartDate}

    Log To Console    expireDate : ${expireDate}
    ${dateExpireDate}=    run keyword If    '${expireDate}'!='${NONE}'    Convert Format Date DB No Have Second    ${expireDate}
    ...    ELSE IF    '${expireDate}'=='${NONE}'    Convert To String    ${NONE}
    Log To Console    dateExpireDate : ${dateExpireDate}
    
    # ((21, 'NameAccount', 1, datetime.datetime(2021, 10, 22, 0, 0), datetime.datetime(2021, 10, 30, 0, 0), datetime.datetime(2021, 10, 22, 13, 55, 34), '1', None, None, None, None),)
    # (([id], '[name]', [maximumRoom], datetime.datetime([startDate]), datetime.datetime([expireDate]), datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by]),)
    
    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_CREATE_ALLFIELD}'    ${DB_SELECTSTATEMENT_ACCOUNT_CHECKCREATE_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_CREATE_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_ACCOUNT_CHECKCREATE_REQUIREDFIELD_VALUE}

    ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
    ${resultDB}=    Replace String    ${resultDB}    [name]    ${name}
    ${resultDB}=    Replace String    ${resultDB}    [maximumRoom]    ${maximumRoom}
    ${resultDB}=    Replace String    ${resultDB}    [startDate]    ${dateStartDate}
    ${resultDB}=    Replace String    ${resultDB}    [expireDate]    ${dateExpireDate}
    ${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
    ${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${updated_at}
    ${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}

    # Log To Console    [resultDB] : ${resultDB}
    ${strResult}=    Convert To String    ${dataResultAccount}

    Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Create Account

    Log To Console    ${\n}=========== End DB : [Create Account] =============== 

Request Verify DB Check Data Edit Account
    [Arguments]      ${type}    ${identificationNo}    ${name}    ${maximumRoom}    ${phone}    ${taxId}   ${startDate}    ${expireDate}
    
    Log To Console    ${\n}=========== Start DB : [Edit Account] =============== 
    # ${DB_SELECTSTATEMENT_ACCOUNT_CHECKEDIT}    SELECT * FROM accounts WHERE account_id = [id] AND deleted_at IS NULL

    ${convertStrId}=    Convert To String    ${accountUserId}

    ${selectStatementAccount}=    Replace String    ${DB_SELECTSTATEMENT_ACCOUNT_CHECKEDIT}    [id]    ${convertStrId}
    Log To Console    [accounts : resultQuery] : ${selectStatementAccount}

    #[(), 0]
    # queryResults,rowCount
    @{resultAccount}=    Start Connect To MySql Query All List    ${selectStatementAccount}    ${selectStatementAccount}
    # Log To Console    [accounts] Request Verify DB Check Data Edit Account : ${resultAccount}
    ${dataResultAccount}=    Set Variable    ${resultAccount}[0]
    Log To Console    [result : accounts] : ${dataResultAccount}
    ${rowCountAccount}=    Set Variable    ${resultAccount}[1]
    # Log To Console    [rowCount : accounts] : ${rowCountAccount}

    # Log To Console    [result : accounts] : ${dataResultAccount}[0][0]
    ${id}=    Convert To String    ${dataResultAccount}[0][0]
    ${created_at}=    Convert To String    ${dataResultAccount}[0][5]
    ${created_by}=    Convert To String    ${dataResultAccount}[0][6]
    ${updated_at}=    Convert To String    ${dataResultAccount}[0][7]
    ${updated_by}=    Convert To String    ${dataResultAccount}[0][8]
    ${deleted_at}=    Convert To String    ${dataResultAccount}[0][9]
    ${deleted_by}=    Convert To String    ${dataResultAccount}[0][10]
    ${phone}=    Convert To String    ${phone}
    ${maximumRoom}=    Convert To String    ${maximumRoom}
    ${taxId}=    Convert To String    ${taxId}
    # Log To Console    [result : created_at] : ${created_at}

    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # # Log To Console    dateCreatedAt : ${dateCreatedAt}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateUpdatedAt}=    Convert Format Date DB    ${updated_at}
    # Log To Console    dateUpdatedAt : ${updated_at}

    ${dateStartDate}=    Convert Format Date DB No Have Second    ${startDate}
    Log To Console    dateStartDate : ${dateStartDate}

    Log To Console    expireDate : ${expireDate}
    ${dateExpireDate}=    run keyword If    '${expireDate}'!='${NONE}'    Convert Format Date DB No Have Second    ${expireDate}
    ...    ELSE IF    '${expireDate}'=='${NONE}'    Convert To String    ${NONE}
    Log To Console    dateExpireDate : ${dateExpireDate}
    
    # ((21, 'NameAccount', 1, datetime.datetime(2021, 10, 22, 0, 0), datetime.datetime(2021, 10, 30, 0, 0), datetime.datetime(2021, 10, 22, 13, 55, 34), '1', None, None, None, None),)
    # (([id], '[name]', [maximumRoom], datetime.datetime([startDate]), datetime.datetime([expireDate]), datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), [updated_by], [deleted_at], [deleted_by]),)

    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_EDIT_ALLFIELD}'    ${DB_SELECTSTATEMENT_ACCOUNT_CHECKEDIT_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_EDIT_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_ACCOUNT_CHECKEDIT_REQUIREDFIELD_VALUE}
    
    ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
    ${resultDB}=    Replace String    ${resultDB}    [name]    ${name}
    ${resultDB}=    Replace String    ${resultDB}    [maximumRoom]    ${maximumRoom}
    ${resultDB}=    Replace String    ${resultDB}    [startDate]    ${dateStartDate}
    ${resultDB}=    Replace String    ${resultDB}    [expireDate]    ${dateExpireDate}
    ${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
    ${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${dateUpdatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}
    # Log To Console    [resultDB] : ${resultDB}
    ${strResult}=    Convert To String    ${dataResultAccount}

    Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Edit Account

    Log To Console    ${\n}=========== End DB : [Edit Account] =============== 

Request Verify DB Check Data View Account 
    [Arguments]      ${type}    ${identificationNo}    ${name}    ${maximumRoom}    ${phone}    ${taxId}   ${startDate}    ${expireDate}
    
    Log To Console    ${\n}=========== Start DB : [View Bank Account] =============== 
    # ${DB_SELECTSTATEMENT_ACCOUNT_CHECKVIEW}    SELECT a.* , b.* FROM accounts AS a LEFT JOIN accounts_permission AS b ON(b.accounts_id = [bankAccountId] AND b.deleted_at IS NULL) WHERE a.id = [bankAccountId] AND a.account_id = [accountId] AND a.deleted_at IS null
    # ${DB_SELECTSTATEMENT_ACCOUNT_CHECKVIEW_ALLFIELD_VALUE}    (([id], [bankId], [bankAccountNameTypeId], '[branch]', '[bankAccountNumber]', '[bankAccountName]', datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [account_id], [status], [operate_type], '[remark]', [id], [account_id], [bankaccount_id], [property_id], [building_id], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by]),)
 
    ${convertStrId}=    Convert To String    ${accountUserId}

    ${selectStatementAccount}=    Replace String    ${DB_SELECTSTATEMENT_ACCOUNT_CHECKVIEW}    [id]    ${convertStrId}
    Log To Console    [accounts : resultQuery] : ${selectStatementAccount}

    #[(), 0]
    # queryResults,rowCount
    @{resultAccount}=    Start Connect To MySql Query All List    ${selectStatementAccount}    ${selectStatementAccount}
    # Log To Console    [accounts] Request Verify DB Check Data Create Bank Account : ${resultAccount}
    ${dataResultAccount}=    Set Variable    ${resultAccount}[0]
    Log To Console    [result : accounts] : ${dataResultAccount}
    ${rowCountAccount}=    Set Variable    ${resultAccount}[1]
    # Log To Console    [rowCount : accounts] : ${rowCountAccount}
    
    ${id}=    Convert To String    ${dataResultAccount}[0][0]
    ${created_at}=    Convert To String    ${dataResultAccount}[0][5]
    ${created_by}=    Convert To String    ${dataResultAccount}[0][6]
    ${updated_at}=    Convert To String    ${dataResultAccount}[0][7]
    ${updated_by}=    Convert To String    ${dataResultAccount}[0][8]
    ${deleted_at}=    Convert To String    ${dataResultAccount}[0][9]
    ${deleted_by}=    Convert To String    ${dataResultAccount}[0][10]
    ${phone}=    Convert To String    ${phone}
    ${maximumRoom}=    Convert To String    ${maximumRoom}
    ${taxId}=    Convert To String    ${taxId}
    
    # Log To Console    [result : created_at] : ${created_at}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # Log To Console    dateCreatedAt : ${dateCreatedAt}

    ${dateStartDate}=    Convert Format Date DB No Have Second    ${startDate}
    Log To Console    dateStartDate : ${dateStartDate}

    Log To Console    expireDate : ${expireDate}
    ${dateExpireDate}=    run keyword If    '${expireDate}'!='${NONE}'    Convert Format Date DB No Have Second    ${expireDate}
    ...    ELSE IF    '${expireDate}'=='${NONE}'    Convert To String    ${NONE}
    Log To Console    dateExpireDate : ${dateExpireDate}

    #((111, 'NameAccount', 1, datetime.datetime(2021, 10, 22, 0, 0), datetime.datetime(2021, 10, 30, 0, 0), datetime.datetime(2021, 10, 29, 17, 20, 10), '1', None, None, None, None),)
    #(([id], '[name]', [maximumRoom], datetime.datetime([startDate]), datetime.datetime([expireDate]), datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by]),)
    
    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_VIEW_ALLFIELD}'    ${DB_SELECTSTATEMENT_ACCOUNT_CHECKVIEW_ALLFIELD_VALUE} 
    
    FOR    ${i}    IN RANGE    ${rowCountAccount}  
    # Log To Console    [result : accounts] : ${dataResultAccount}[0][0]

        ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
        ${resultDB}=    Replace String    ${resultDB}    [name]    ${name}
        ${resultDB}=    Replace String    ${resultDB}    [maximumRoom]    ${maximumRoom}
        ${resultDB}=    Replace String    ${resultDB}    [startDate]    ${dateStartDate}
        ${resultDB}=    Replace String    ${resultDB}    [expireDate]    ${dateExpireDate}
        ${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
        ${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
        ${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${updated_at}
        ${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
        ${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
        ${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}
        # Log To Console    [resultDB] : ${resultDB}
        ${strResult}=    Convert To String    ${dataResultAccount[${i}]}

    END
    Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data View Bank Account

    Log To Console    ${\n}=========== End DB : [View Account] =============== 

Request Verify DB Check Data Delete Account
    [Arguments]      ${type}    ${identificationNo}    ${name}    ${maximumRoom}    ${phone}    ${taxId}   ${startDate}    ${expireDate}
    
    Log To Console    ${\n}=========== Start DB : [Delete Account] =============== 
    #${DB_SELECTSTATEMENT_ACCOUNT_CHECKDELETE}    SELECT * FROM accounts WHERE id = [id]
    ${convertStrId}=    Convert To String    ${accountUserId}

    ${selectStatementAccount}=    Replace String    ${DB_SELECTSTATEMENT_ACCOUNT_CHECKDELETE}    [id]    ${convertStrId}
    Log To Console    [accounts : resultQuery] : ${selectStatementAccount}

    #[(), 0]
    # queryResults,rowCount
    @{resultAccount}=    Start Connect To MySql Query All List    ${selectStatementAccount}    ${selectStatementAccount}
    # Log To Console    [accounts] Request Verify DB Check Data Delete Account : ${resultAccount}
    ${dataResultAccount}=    Set Variable    ${resultAccount}[0]
    Log To Console    [result : accounts] : ${dataResultAccount}
    ${rowCountAccount}=    Set Variable    ${resultAccount}[1]
    # Log To Console    [rowCount : accounts] : ${rowCountAccount}

    # Log To Console    [result : accounts] : ${dataResultAccount}[0][0]
    ${id}=    Convert To String    ${dataResultAccount}[0][0]
    ${created_at}=    Convert To String    ${dataResultAccount}[0][5]
    ${created_by}=    Convert To String    ${dataResultAccount}[0][6]
    ${updated_at}=    Convert To String    ${dataResultAccount}[0][7]
    ${updated_by}=    Convert To String    ${dataResultAccount}[0][8]
    ${deleted_at}=    Convert To String    ${dataResultAccount}[0][9]
    ${deleted_by}=    Convert To String    ${dataResultAccount}[0][10]
    ${phone}=    Convert To String    ${phone}
    ${maximumRoom}=    Convert To String    ${maximumRoom}
    ${taxId}=    Convert To String    ${taxId}
    # Log To Console    [result : created_at] : ${created_at}

    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # # Log To Console    dateCreatedAt : ${dateCreatedAt}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateUpdatedAt}=    Convert Format Date DB    ${updated_at}
    # Log To Console    dateUpdatedAt : ${updated_at}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateDeletedAt}=    Convert Format Date DB    ${deleted_at}
    # Log To Console    dateDeletedAt : ${dateDeletedAt}

    ${dateStartDate}=    Convert Format Date DB No Have Second    ${startDate}
    Log To Console    dateStartDate : ${dateStartDate}

    Log To Console    expireDate : ${expireDate}
    ${dateExpireDate}=    run keyword If    '${expireDate}'!='${NONE}'    Convert Format Date DB No Have Second    ${expireDate}
    ...    ELSE IF    '${expireDate}'=='${NONE}'    Convert To String    ${NONE}
    Log To Console    dateExpireDate : ${dateExpireDate}
    # Log To Console    [result : created_at] : ${created_at}

    # ((52, 1, 3, 'สาขา1', '111111111112', 'บัญชี1', datetime.datetime(2021, 9, 28, 20, 1), '10', None, None, None, None, 7, 1, 3, 'หมายเหตุ1'),)
    # (([id], [bankId], [bankAccountNameTypeId], '[branch]', '[bankAccountNumber]', '[bankAccountName]', datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [account_id], [status], [operate_type], '[remark]'),)
    
    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_DELETE_ALLFIELD}'    ${DB_SELECTSTATEMENT_ACCOUNT_CHECKDELETE_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_DELETE_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_ACCOUNT_CHECKDELETE_REQUIREDFIELD_VALUE}
    
    ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
    ${resultDB}=    Replace String    ${resultDB}    [name]    ${name}
    ${resultDB}=    Replace String    ${resultDB}    [maximumRoom]    ${maximumRoom}
    ${resultDB}=    Replace String    ${resultDB}    [startDate]    ${dateStartDate}
    ${resultDB}=    Replace String    ${resultDB}    [expireDate]    ${dateExpireDate}
    ${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
    ${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${dateUpdatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${dateDeletedAt}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}

    Log To Console    [resultDB] : ${resultDB}
    ${strResult}=    Convert To String    ${dataResultAccount}

    Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Delete Account

    Log To Console    ${\n}=========== End DB : [Delete Account] =============== 

################################################################-- Request Verify DB Check Data Properties Account--################################################################
Request Verify DB Check Data Properties Account
    [Arguments]      ${type}    ${nameTh}    ${nameEn}    ${shortName}    ${taxId}    ${mobile}   ${address}    ${roomAmount}    ${shopAmount}    ${parkingAmount}    ${proprietaryRatio}    ${area}    ${juristicId}    ${registartionDate}    ${waterelecAverage}    ${deadline}    ${billPaymentStatus}    ${billPaymentBank}    ${billerName}    ${billerNameBillerIDTQRCChannel}    ${billerIDOtherBankChannel}    ${billerIDQRTag30Channel}

    Log To Console    ${\n}=========== Start DB : [Request Verify DB Check Data Properties Account] =============== 
    # ${DB_SELECTSTATEMENT_PROPERTIES_WHEREACCOUNTIDNAMETH}    SELECT * FROM properties WHERE account_id = [accountId] and property_name_th = "[property_name_th]" and deleted_at IS null

    ${convertStrAccountUserId}=    Convert To String    ${accountUserId}
    # ${convertStrAccountUserId}=    Convert To String    247

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_PROPERTIES_WHEREACCOUNTIDNAMETH}    [accountId]    ${convertStrAccountUserId}
    ${selectStatement}=    Replace String    ${selectStatement}    [property_name_th]    ${nameTh}
    Log To Console    [properties : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [properties] Request Verify DB Check Data Properties Account : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : properties] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    # Log To Console    [rowCount : properties] : ${rowCount}

    Log To Console    [result : properties] : ${dataResult}[0][0]
    ${id}=    Convert To String    ${dataResult}[0][0]
    # Set Global Variable    ${accountUserId}    ${id}
    ${created_at}=    Convert To String    ${dataResult}[0][7]
    ${created_by}=    Convert To String    ${dataResult}[0][8]
    ${updated_at}=    Convert To String    ${dataResult}[0][9]
    ${updated_by}=    Convert To String    ${dataResult}[0][10]
    ${deleted_at}=    Convert To String    ${dataResult}[0][11]
    ${deleted_by}=    Convert To String    ${dataResult}[0][12]
    ${branchNo}=    Convert To String    ${dataResult}[0][3]
    ${status}=    Convert To String    1
    ${taxId}=    Convert To String    ${taxId}
    ${address}=    Convert To String    ${address}
    ${mobile}=    Convert To String    ${mobile}
    ${roomAmount}=    Convert To String    ${roomAmount}
    ${shopAmount}=    Convert To String    ${shopAmount}

    # ${parkingAmount}=    Evaluate  "%.2f" % ${parkingAmount}
    ${parkingAmount}=    Convert To String    ${parkingAmount}

    ${area}=    Evaluate  "%.2f" % ${area}
    ${area}=    Convert To String    ${area}

    ${juristicId}=    Convert To String    ${juristicId}
    
    ${waterelecAverage}=    Evaluate  "%.2f" % ${waterelecAverage}
    ${waterelecAverage}=    Convert To String      ${waterelecAverage}
    
    ${deadline}=    Convert To String    ${deadline}

    ${proprietaryRatio}=    Evaluate  "%.1f" % ${proprietaryRatio}
    ${proprietaryRatio}=    Convert To String    ${proprietaryRatio}
    
    # Log To Console    [result : created_at] : ${created_at}

    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # Log To Console    dateCreatedAt : ${dateCreatedAt}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateUpdatedAt}=    Run Keyword If    '${type}'=='${MYSQL_TYPE_EDIT}'    Convert Format Date DB    ${updated_at}
    ...    ELSE    Convert To String    ${updated_at}
    # Log To Console    dateUpdatedAt : ${updated_at}
    ${dateRegistartionDate}=    Convert Format Date DB No Have Second    ${registartionDate}
    Log To Console    dateRegistartionDate : ${dateRegistartionDate}

    # ((417, 'ชื่อโครงการ1', 'nameProperty1', '000001', 'ที่อยู่', '0812345671,0812345672,0812345673,0812345674,0812345675,0812345676,0812345677,0812345678,0812345679,0812345680', 1, datetime.datetime(2021, 11, 19, 17, 36, 54), '1', None, None, None, None, 1, 2, 'Biller Name', 'Biller ID (TQRC Channel)', 'Biller ID (Other Bank Channel)', 'Biller ID (QR Tag30 Channel)', 247, '1234567890125', 'Property1', 3, 1, 100, Decimal('200.00'), '654321', datetime.datetime(2021, 10, 27, 0, 0), Decimal('10000.00'), 2, Decimal('0.0'))
    # (([id], '[nameTh]', '[nameEn]', '[branchNo]', '[address]', '[phone]', [status], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [bill_payment_status], [bill_payment_bank], '[bill_payment_biller_name]', '[bill_id_TQRC]', '[bill_id_other_bank]', '[bill_id_tax30]', [accountId], '[tax_id]', '[property_short_name]', [room_amount], [shop_amount], [parking_amount], Decimal('[area]'), '[juristic_id]', datetime.datetime([registration_date]), Decimal('[water_electricity_average]'), [dead_line], Decimal('[proprietary_ratio]'))

    # BillPaymentStatus "0: ไม่ใช้งาน 1:ใช้งาน"
    ${valueBillPaymentStatus}=    Set Variable If    '${billPaymentStatus}'=='${DEFAULT_LBL_BILLPAYMENTSTATUS_INACTIVE}'    ${DEFAULT_LBL_BILLPAYMENTSTATUS_INACTIVE_VALUE}
	...    '${billPaymentStatus}'=='${DEFAULT_LBL_BILLPAYMENTSTATUS_ACTIVE}'    ${DEFAULT_LBL_BILLPAYMENTSTATUS_ACTIVE_VALUE}
    Log To Console    valueBillPaymentStatus : ${valueBillPaymentStatus}

    Log To Console    billPaymentBank : ${billPaymentBank}
    Log To Console    DEFAULT_LBL_BILLPAYMENTBANK_SCB : ${DEFAULT_LBL_BILLPAYMENTBANK_SCB}
    #BillPaymentBank    "1 = ธนาคารยูโอบี (UOB) 2 = ธนาคารไทยพาณิชย์ (SCB)"
    ${valueBillPaymentBank}=    Set Variable If    '${billPaymentBank}'=='${DEFAULT_LBL_BILLPAYMENTBANK_UOB}'    ${DEFAULT_LBL_BILLPAYMENTBANK_UOB_VALUE}
	...    '${billPaymentBank}'=='${DEFAULT_LBL_BILLPAYMENTBANK_SCB}'    ${DEFAULT_LBL_BILLPAYMENTBANK_SCB_VALUE}
	Log To Console    valueBillPaymentBank : ${valueBillPaymentBank}

    ${valueDeadline}=    Set Variable If    '${deadline}'>'31'    31
	...    '${deadline}'<='31'    ${deadline}
    ${valueDeadline}=    Convert To String      ${valueDeadline}

    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_CREATE}'    ${DB_SELECTSTATEMENT_ACCOUNT_CHECKEDIT_PROPERTIES}
    ...    '${type}'=='${MYSQL_TYPE_EDIT}'    ${DB_SELECTSTATEMENT_ACCOUNT_CHECKEDIT_PROPERTIES_EDIT}
    
    FOR    ${i}    IN RANGE    ${rowCount}  
    ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
    ${resultDB}=    Replace String    ${resultDB}    [nameTh]    ${nameTh}
    ${resultDB}=    Replace String    ${resultDB}    [nameEn]    ${nameEn}
    ${resultDB}=    Replace String    ${resultDB}    [branchNo]    ${branchNo}
    ${resultDB}=    Replace String    ${resultDB}    [address]    ${address}
    ${resultDB}=    Replace String    ${resultDB}    [phone]    ${mobile}
    ${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
    ${resultDB}=    Replace String    ${resultDB}    [bill_payment_status]    ${valueBillPaymentStatus}
    ${resultDB}=    Replace String    ${resultDB}    [bill_payment_bank]    ${valueBillPaymentBank}
    ${resultDB}=    Replace String    ${resultDB}    [bill_payment_biller_name]    ${billerName}
    ${resultDB}=    Replace String    ${resultDB}    [bill_id_TQRC]    ${billerNameBillerIDTQRCChannel}
    ${resultDB}=    Replace String    ${resultDB}    [bill_id_other_bank]    ${billerIDOtherBankChannel}
    ${resultDB}=    Replace String    ${resultDB}    [bill_id_tax30]    ${billerIDQRTag30Channel}
    ${resultDB}=    Replace String    ${resultDB}    [accountId]    ${convertStrAccountUserId}
    ${resultDB}=    Replace String    ${resultDB}    [tax_id]    ${tax_id}
    ${resultDB}=    Replace String    ${resultDB}    [property_short_name]    ${shortName}
    ${resultDB}=    Replace String    ${resultDB}    [room_amount]    ${roomAmount}
    ${resultDB}=    Replace String    ${resultDB}    [shop_amount]    ${shopAmount}
    ${resultDB}=    Replace String    ${resultDB}    [parking_amount]    ${parkingAmount}
    ${resultDB}=    Replace String    ${resultDB}    [area]    ${area}
    ${resultDB}=    Replace String    ${resultDB}    [juristic_id]    ${juristicId}
    ${resultDB}=    Replace String    ${resultDB}    [registration_date]    ${dateRegistartionDate}
    ${resultDB}=    Replace String    ${resultDB}    [water_electricity_average]    ${waterelecAverage}
    ${resultDB}=    Replace String    ${resultDB}    [dead_line]    ${valueDeadline}
    ${resultDB}=    Replace String    ${resultDB}    [proprietary_ratio]    ${proprietaryRatio}
    ${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
    ${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${dateUpdatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}

    # Log To Console    [resultDB] : ${resultDB}
    ${strResult}=    Convert To String    ${dataResult[${i}]}
    
    END
    Log To Console    [strResult] : ${strResult}

    Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Properties Account

    Log To Console    ${\n}=========== End DB : [Request Verify DB Check Data Properties Account] =============== 

################################################################-- Update tb properties set delete_at--################################################################
Update tb properties set delete_at

    [Arguments]    ${account_id}    ${deleted_at}    ${namefile}
	Log To Console    ${\n}=========== Start DB : [Update tb properties set delete_at - properties] =============== 
	#${DB_UPDATESTATEMENT_PROPERTIES_ACCOUNTID_DELETEDAT}    UPDATE properties SET deleted_at = [deleted_at] WHERE account_id = [account_id]

	${selectStatement}=    Replace String    ${DB_UPDATESTATEMENT_PROPERTIES_ACCOUNTID_DELETEDAT}    [account_id]    ${account_id}
	${selectStatement}=    Replace String    ${selectStatement}    [deleted_at]    ${deleted_at}
	Log To Console    [properties : resultQuery] : ${selectStatement}

    Create File    ./${namefile}	${selectStatement}
	
    ${resultUserRole}=    Start Connect To MySql Execute Sql Script    ${namefile}
	Log To Console    [properties] Update tb properties set delete_at : ${resultUserRole}
	Log To Console    [result : properties] : ${resultUserRole}
	Remove File    ./${namefile}

	Log To Console    ${\n}=========== End DB : [Update tb properties set delete_at - properties] =============== 
