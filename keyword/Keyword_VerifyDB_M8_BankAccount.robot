*** Keywords ***
Request Verify DB Check Data Search Bank Account
    [Arguments]      ${type}    ${bankAccountName}    ${bankAccountNumber}    ${status}    ${limit}    ${offset}    ${orderBy}
    
	Log To Console    ${\n}=========== Start DB : [Search Bank Account] =============== 
	# SELECT * FROM bank_account WHERE bank_account_Name=req.bankAccountName AND bank_account_number = req.bankAccountNumber AND status = req.status AND account_id = req.accountId AND deleted_at IS null orderby req.orderBy limit req.limit offset req.offset
	# ${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_LISTALL}    SELECT * FROM bank_account WHERE account_id = [accountId] AND deleted_at IS null order by [orderBy] limit [limit] offset [offset]
	# ${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_SEAECHALL}    SELECT * FROM bank_account WHERE bank_account_Name="[bankAccountName]" AND bank_account_number = "[bankAccountNumber]" AND status = [status] AND account_id = [accountId] AND deleted_at IS null order by [orderBy] limit [limit] offset [offset]
	# ${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_BANKACCOUNTNAME}    SELECT * FROM bank_account WHERE bank_account_Name="[bankAccountName]" AND account_id = [accountId] AND deleted_at IS null order by [orderBy] limit [limit] offset [offset]
	# ${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_BANKACCOUNTNUMBER}    SELECT * FROM bank_account WHERE bank_account_number = "[bankAccountNumber]" AND account_id = [accountId] AND deleted_at IS null order by [orderBy] limit [limit] offset [offset]
	# ${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_STATUS}    SELECT * FROM bank_account WHERE status = [status] AND account_id = [accountId] AND deleted_at IS null order by [orderBy] limit [limit] offset [offset]
	# ${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_BANKACCOUNTNAMEBANKACCOUNTNUMBER}    SELECT * FROM bank_account WHERE bank_account_Name="[bankAccountName]" AND bank_account_number = "[bankAccountNumber]" AND account_id = [accountId] AND deleted_at IS null order by [orderBy] limit [limit] offset [offset]
	# ${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_BANKACCOUNTNAMESTATUS}    SELECT * FROM bank_account WHERE bank_account_Name="[bankAccountName]" AND status = [status] AND account_id = [accountId] AND deleted_at IS null order by [orderBy] limit [limit] offset [offset] 
	# ${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_BANKACCOUNTNUMBERSTATUS}    SELECT * FROM bank_account WHERE bank_account_number = "[bankAccountNumber]" AND status = [status] AND account_id = [accountId] AND deleted_at IS null order by [orderBy] limit [limit] offset [offset]

    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_SEARCHLISTALL}'    ${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_LISTALL}
    ...    '${type}'=='${MYSQL_TYPE_BANKACCOUNT_SEARCH_ALL}'    ${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_SEAECHALL}
    ...    '${type}'=='${MYSQL_TYPE_BANKACCOUNT_SEARCH_BANKACCOUNTNAME}'    ${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_BANKACCOUNTNAME}
    ...    '${type}'=='${MYSQL_TYPE_BANKACCOUNT_SEARCH_BANKACCOUNTNUMBER}'    ${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_BANKACCOUNTNUMBER}
    ...    '${type}'=='${MYSQL_TYPE_BANKACCOUNT_SEARCH_STATUS}'    ${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_STATUS}
    ...    '${type}'=='${MYSQL_TYPE_BANKACCOUNT_SEARCH_BANKACCOUNTNAMEBANKACCOUNTNUMBER}'    ${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_BANKACCOUNTNAMEBANKACCOUNTNUMBER}
    ...    '${type}'=='${MYSQL_TYPE_BANKACCOUNT_SEARCH_BANKACCOUNTNAMESTATUS}'    ${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_BANKACCOUNTNAMESTATUS}
    ...    '${type}'=='${MYSQL_TYPE_BANKACCOUNT_SEARCH_BANKACCOUNTNUMBERSTATUS}'    ${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_BANKACCOUNTNUMBERSTATUS}
    
	${convertStrAccountId}=    Convert To String    ${accountId}

    # Data
	${selectStatement}=    Replace String    ${valueReplace}    [accountId]    ${convertStrAccountId}
	${selectStatement}=    Replace String    ${selectStatement}    [bankAccountName]    ${bankAccountName}
	${selectStatement}=    Replace String    ${selectStatement}    [bankAccountNumber]    ${bankAccountNumber}
	${selectStatement}=    Replace String    ${selectStatement}    [status]    ${status}
    ${selectStatement}=    Replace String    ${selectStatement}    [limit]    ${limit}
	${selectStatement}=    Replace String    ${selectStatement}    [offset]    ${offset}
	${selectStatement}=    Replace String    ${selectStatement}    [orderBy]    ${orderBy}
	Log To Console    [bank_account : resultQuery] : ${selectStatement}

    # Rowcount
    ${valueReplaceRowcount}=    Set Variable If    '${type}'=='${MYSQL_TYPE_SEARCHLISTALL}'    ${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_LISTALL_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_BANKACCOUNT_SEARCH_ALL}'    ${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_SEAECHALL_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_BANKACCOUNT_SEARCH_BANKACCOUNTNAME}'    ${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_BANKACCOUNTNAME_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_BANKACCOUNT_SEARCH_BANKACCOUNTNUMBER}'    ${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_BANKACCOUNTNUMBER_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_BANKACCOUNT_SEARCH_STATUS}'    ${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_STATUS_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_BANKACCOUNT_SEARCH_BANKACCOUNTNAMEBANKACCOUNTNUMBER}'    ${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_BANKACCOUNTNAMEBANKACCOUNTNUMBER_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_BANKACCOUNT_SEARCH_BANKACCOUNTNAMESTATUS}'    ${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_BANKACCOUNTNAMESTATUS_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_BANKACCOUNT_SEARCH_BANKACCOUNTNUMBERSTATUS}'    ${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_BANKACCOUNTNUMBERSTATUS_ROWCOUNT}
    
	${replaceRowcount}=    Replace String    ${valueReplaceRowcount}    [accountId]    ${convertStrAccountId}
	${replaceRowcount}=    Replace String    ${replaceRowcount}    [bankAccountName]    ${bankAccountName}
	${replaceRowcount}=    Replace String    ${replaceRowcount}    [bankAccountNumber]    ${bankAccountNumber}
	${replaceRowcount}=    Replace String    ${replaceRowcount}    [status]    ${status}
	${selectStatementRowcount}=    Replace String    ${replaceRowcount}    [orderBy]    ${orderBy}

	#[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatementRowcount}
	Log To Console    [bank_account] Request Verify DB Check Data Search Bank Account : ${result}
	${dataResult}=    Set Variable    ${result}[0]
	Log To Console    [result : bank_account] : ${dataResult}
	${rowCount}=    Set Variable    ${result}[1]
	Log To Console    [rowCount : bank_account] : ${rowCount}
    
	Log To Console    ${\n}=========== End DB : [Search Bank Account] =============== 
	[Return]    ${dataResult}    ${rowCount}

Check Value Table Search Bank Account 
    [Arguments]    ${type}    ${rowcountSearchBankAccount}    ${dataSearchBankAccount}

	#${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
	${setData}=    Run Keyword If    '${type}'=='${DEFAULT_TH}'    Set Data for check value table Bank Account Management
	...    ELSE IF    '${type}'=='${DEFAULT_EN}'    Set Data for check value table Bank Account Management EN

	#valueTable
	@{valArrDataTable}=    Create List	
	FOR    ${i}    IN RANGE    ${rowcountSearchBankAccount}
    #  [((9, 10, 1, None, '1111111111', 'เทสบัญชี', datetime.datetime(2021, 9, 21, 17, 8, 41), '10', None, None, None, None, 7, 1, 1, None),), 1]
    
        ${bankId}=    Set Variable    ${dataSearchBankAccount[${i}][1]}  
		${bankname}=    Value Bankname    ${bankId}
		${banknameTh}=    Set Variable    ${bankname}[0]
		${banknameEn}=    Set Variable    ${bankname}[1]

        # UI mapping field bankAccountType 1 = "เงินฝากออมทรัพย์" หรือ​ "Savings", 2= "เงินฝากกระแสรายวัน" หรือ "Current deposit" , 3 = "ฝากประจำ" หรือ "Fixed deposit"
        ${bankAccountTypeTH}=    Set Variable If    '${dataSearchBankAccount[${i}][2]}'=='1'    ${DEFAULT_LBL_BANKACCOUNTTYPE_SAVINGS_TH}
		...    '${dataSearchBankAccount[${i}][2]}'=='2'    ${DEFAULT_LBL_BANKACCOUNTTYPE_CURRENTDEPOSIT_TH}
		...    '${dataSearchBankAccount[${i}][2]}'=='3'    ${DEFAULT_LBL_BANKACCOUNTTYPE_FIXEDDEPOSIT_TH}

		${bankAccountTypeEN}=    Set Variable If    '${dataSearchBankAccount[${i}][2]}'=='1'    ${DEFAULT_LBL_BANKACCOUNTTYPE_SAVINGS_EN}
		...    '${dataSearchBankAccount[${i}][2]}'=='2'    ${DEFAULT_LBL_BANKACCOUNTTYPE_CURRENTDEPOSIT_EN}
		...    '${dataSearchBankAccount[${i}][2]}'=='3'    ${DEFAULT_LBL_BANKACCOUNTTYPE_FIXEDDEPOSIT_EN}

		${bankAccountType}=    Set Variable If    '${type}'=='${DEFAULT_TH}'    ${bankAccountTypeTH}
		...    '${type}'=='${DEFAULT_EN}'    ${bankAccountTypeEN}


        ${bankAccountName}=    Set Variable    ${dataSearchBankAccount[${i}][5]}
        ${bankAccountPromptPayNumber}=    Set Variable    ${dataSearchBankAccount[${i}][4]}
		# UI mapping field status 0=ไม่ใช้งาน , 1 = ใช้งาน , 0=Inactive , 1 = Active
		${statusTH}=    Set Variable If    '${dataSearchBankAccount[${i}][13]}'=='0'    ${DEFAULT_LBL_STATUS_INACTIVE_TH}
		...    '${dataSearchBankAccount[${i}][13]}'=='1'    ${DEFAULT_LBL_STATUS_ACTIVE_TH}
		${statusEN}=    Set Variable If    '${dataSearchBankAccount[${i}][13]}'=='0'    ${DEFAULT_LBL_STATUS_INACTIVE_EN}
		...    '${dataSearchBankAccount[${i}][13]}'=='1'    ${DEFAULT_LBL_STATUS_ACTIVE_EN}
		${status}=    Set Variable If    '${type}'=='${DEFAULT_TH}'    ${statusTH}
		...    '${type}'=='${DEFAULT_EN}'    ${statusEN}

        # Log To Console    [banknameTh] : ${banknameTh}
        ${no}=    Convert To String    ${i+1}
        ${data}=    Evaluate    {"no":"${no}", "banknameTh":"${banknameTh}", "banknameEn":"${banknameEn}", "bankAccountType":"${bankAccountType}", "bankAccountName":"${bankAccountName}","bankAccountPromptPayNumber":"${bankAccountPromptPayNumber}","status":"${status}"}
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
        
        Check Value Table    ${BANKACCOUNTINFORMATION_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${i}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
		# Check Value Table    ${BANKACCOUNTINFORMATION_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${numCol}    ${i}    ${arrNumCol}    ${arrNumfield}    ${fieldArrDataTable}    ${valArrDataTable}
	# Exit For Loop
	END


Request Verify DB Check Data Create Bank Account
    [Arguments]      ${type}    ${bankId}    ${branch}    ${bankAccountNameTypeId}    ${bankAccountName}    ${bankAccountNumber}    ${OperateType}    ${status}    ${remark}
    
	Log To Console    ${\n}=========== Start DB : [Create Bank Account] =============== 
	# ${DB_SELECTSTATEMENT_BANKACCOUNT_CHECKCREATE}    SELECT * FROM bank_account WHERE account_id = [accountId] AND deleted_at IS NULL

	${convertStrAccountId}=    Convert To String    ${accountId}

	${selectStatementBankAccount}=    Replace String    ${DB_SELECTSTATEMENT_BANKACCOUNT_CHECKCREATE}    [accountId]    ${convertStrAccountId}
	Log To Console    [bank_account : resultQuery] : ${selectStatementBankAccount}

	#[(), 0]
    # queryResults,rowCount
    @{resultBankAccount}=    Start Connect To MySql Query All List    ${selectStatementBankAccount}    ${selectStatementBankAccount}
	# Log To Console    [bank_account] Request Verify DB Check Data Create Bank Account : ${resultBankAccount}
	${dataResultBankAccount}=    Set Variable    ${resultBankAccount}[0]
	Log To Console    [result : bank_account] : ${dataResultBankAccount}
	${rowCountBankAccount}=    Set Variable    ${resultBankAccount}[1]
	# Log To Console    [rowCount : bank_account] : ${rowCountBankAccount}

    Log To Console    [result : bank_account] : ${dataResultBankAccount}[0][0]
    ${id}=    Convert To String    ${dataResultBankAccount}[0][0]
	Set Global Variable    ${bankAccountId}    ${id}
	${bankId}=    Convert To String    ${bankId}
	${created_at}=    Convert To String    ${dataResultBankAccount}[0][6]
	${created_by}=    Convert To String    ${dataResultBankAccount}[0][7]
	${updated_at}=    Convert To String    ${dataResultBankAccount}[0][8]
	${updated_by}=    Convert To String    ${dataResultBankAccount}[0][9]
	${deleted_at}=    Convert To String    ${dataResultBankAccount}[0][10]
	${deleted_by}=    Convert To String    ${dataResultBankAccount}[0][11]
	${accountId}=    Convert To String    ${accountId}
	${status}=    Convert To String    ${status}
	${OperateType}=    Convert To String    ${OperateType}
    # Log To Console    [result : created_at] : ${created_at}

	# 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # Log To Console    dateCreatedAt : ${dateCreatedAt}
	
	# ((52, 1, 3, 'สาขา1', '111111111112', 'บัญชี1', datetime.datetime(2021, 9, 28, 20, 1), '10', None, None, None, None, 7, 1, 3, 'หมายเหตุ1'),)
	# (([id], [bankId], [bankAccountNameTypeId], '[branch]', '[bankAccountNumber]', '[bankAccountName]', datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [account_id], [status], [operate_type], '[remark]'),)
	
	${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_CREATE_ALLFIELD}'    ${DB_SELECTSTATEMENT_BANKACCOUNT_CHECKCREATE_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_CREATE_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_BANKACCOUNT_CHECKCREATE_REQUIREDFIELD_VALUE}
    
	${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
	${resultDB}=    Replace String    ${resultDB}    [bankId]    ${bankId}
	${resultDB}=    Replace String    ${resultDB}    [bankAccountNameTypeId]    ${bankAccountNameTypeId}
	${resultDB}=    Replace String    ${resultDB}    [branch]    ${branch}
	${resultDB}=    Replace String    ${resultDB}    [bankAccountNumber]    ${bankAccountNumber}
	${resultDB}=    Replace String    ${resultDB}    [bankAccountName]    ${bankAccountName}
	${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
	${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
	${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${updated_at}
	${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
	${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
	${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}
	${resultDB}=    Replace String    ${resultDB}    [account_id]    ${accountId}
	${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
	${resultDB}=    Replace String    ${resultDB}    [operate_type]    ${OperateType}
	${resultDB}=    Replace String    ${resultDB}    [remark]    ${remark}
	# Log To Console    [resultDB] : ${resultDB}
	${strResult}=    Convert To String    ${dataResultBankAccount}

	Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Create Bank Account

	Log To Console    ${\n}=========== End DB : [Create Bank Account] =============== 

Request Verify DB Check Data Edit Bank Account
    [Arguments]      ${type}    ${bankId}    ${branch}    ${bankAccountNameTypeId}    ${bankAccountName}    ${bankAccountNumber}    ${OperateType}    ${status}    ${remark}
    
	Log To Console    ${\n}=========== Start DB : [Edit Bank Account] =============== 
	# ${DB_SELECTSTATEMENT_BANKACCOUNT_CHECKEDIT}    SELECT * FROM bank_account WHERE account_id = [accountId] AND deleted_at IS NULL

	${convertStrAccountId}=    Convert To String    ${accountId}

	${selectStatementBankAccount}=    Replace String    ${DB_SELECTSTATEMENT_BANKACCOUNT_CHECKEDIT}    [accountId]    ${convertStrAccountId}
	${selectStatementBankAccount}=    Replace String    ${selectStatementBankAccount}    [bankAccountId]    ${bankAccountId}
	Log To Console    [bank_account : resultQuery] : ${selectStatementBankAccount}

	#[(), 0]
    # queryResults,rowCount
    @{resultBankAccount}=    Start Connect To MySql Query All List    ${selectStatementBankAccount}    ${selectStatementBankAccount}
	# Log To Console    [bank_account] Request Verify DB Check Data Edit Bank Account : ${resultBankAccount}
	${dataResultBankAccount}=    Set Variable    ${resultBankAccount}[0]
	Log To Console    [result : bank_account] : ${dataResultBankAccount}
	${rowCountBankAccount}=    Set Variable    ${resultBankAccount}[1]
	# Log To Console    [rowCount : bank_account] : ${rowCountBankAccount}

    Log To Console    [result : bank_account] : ${dataResultBankAccount}[0][0]
    ${id}=    Convert To String    ${dataResultBankAccount}[0][0]
	${bankId}=    Convert To String    ${bankId}
	${created_at}=    Convert To String    ${dataResultBankAccount}[0][6]
	${created_by}=    Convert To String    ${dataResultBankAccount}[0][7]
	${updated_at}=    Convert To String    ${dataResultBankAccount}[0][8]
	${updated_by}=    Convert To String    ${dataResultBankAccount}[0][9]
	${deleted_at}=    Convert To String    ${dataResultBankAccount}[0][10]
	${deleted_by}=    Convert To String    ${dataResultBankAccount}[0][11]
	${accountId}=    Convert To String    ${accountId}
	${status}=    Convert To String    ${status}
	${OperateType}=    Convert To String    ${OperateType}
    # Log To Console    [result : created_at] : ${created_at}

	# 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # # Log To Console    dateCreatedAt : ${dateCreatedAt}
	# 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateUpdatedAt}=    Convert Format Date DB    ${updated_at}
	# Log To Console    dateUpdatedAt : ${updated_at}
	
	# ((52, 1, 3, 'สาขา1', '111111111112', 'บัญชี1', datetime.datetime(2021, 9, 28, 20, 1), '10', None, None, None, None, 7, 1, 3, 'หมายเหตุ1'),)
	# (([id], [bankId], [bankAccountNameTypeId], '[branch]', '[bankAccountNumber]', '[bankAccountName]', datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [account_id], [status], [operate_type], '[remark]'),)
	
	${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_EDIT_ALLFIELD}'    ${DB_SELECTSTATEMENT_BANKACCOUNT_CHECKEDIT_ALLFIELD_VALUE}
	...    '${type}'=='${MYSQL_TYPE_EDIT_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_BANKACCOUNT_CHECKEDIT_REQUIREDFIELD_VALUE}
    
	${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
	${resultDB}=    Replace String    ${resultDB}    [bankId]    ${bankId}
	${resultDB}=    Replace String    ${resultDB}    [bankAccountNameTypeId]    ${bankAccountNameTypeId}
	${resultDB}=    Replace String    ${resultDB}    [branch]    ${branch}
	${resultDB}=    Replace String    ${resultDB}    [bankAccountNumber]    ${bankAccountNumber}
	${resultDB}=    Replace String    ${resultDB}    [bankAccountName]    ${bankAccountName}
	${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
	${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
	${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${dateUpdatedAt}
	${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
	${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
	${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}
	${resultDB}=    Replace String    ${resultDB}    [account_id]    ${accountId}
	${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
	${resultDB}=    Replace String    ${resultDB}    [operate_type]    ${OperateType}
	${resultDB}=    Replace String    ${resultDB}    [remark]    ${remark}
	# Log To Console    [resultDB] : ${resultDB}
	${strResult}=    Convert To String    ${dataResultBankAccount}

	Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Edit Bank Account

	Log To Console    ${\n}=========== End DB : [Edit Bank Account] =============== 

Request Verify DB Check Data View Bank Account 
    [Arguments]      ${type}    ${bankId}    ${branch}    ${bankAccountNameTypeId}    ${bankAccountName}    ${bankAccountNumber}    ${OperateType}    ${status}    ${remark}    ${property_id}    ${building_id}
    
	Log To Console    ${\n}=========== Start DB : [View Bank Account] =============== 
	# ${DB_SELECTSTATEMENT_BANKACCOUNT_CHECKVIEW}    SELECT a.* , b.* FROM bank_account AS a LEFT JOIN bank_account_permission AS b ON(b.bank_account_id = [bankAccountId] AND b.deleted_at IS NULL) WHERE a.id = [bankAccountId] AND a.account_id = [accountId] AND a.deleted_at IS null
    # ${DB_SELECTSTATEMENT_BANKACCOUNT_CHECKVIEW_ALLFIELD_VALUE}    (([id], [bankId], [bankAccountNameTypeId], '[branch]', '[bankAccountNumber]', '[bankAccountName]', datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [account_id], [status], [operate_type], '[remark]', [id], [account_id], [bankaccount_id], [property_id], [building_id], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by]),)
 
	${convertStrAccountId}=    Convert To String    ${accountId}

	${selectStatementBankAccount}=    Replace String    ${DB_SELECTSTATEMENT_BANKACCOUNT_CHECKVIEW}    [accountId]    ${convertStrAccountId}
	${selectStatementBankAccount}=    Replace String    ${selectStatementBankAccount}    [bankAccountId]    ${bankAccountId}
	Log To Console    [bank_account : resultQuery] : ${selectStatementBankAccount}

	#[(), 0]
    # queryResults,rowCount
    @{resultBankAccount}=    Start Connect To MySql Query All List    ${selectStatementBankAccount}    ${selectStatementBankAccount}
	# Log To Console    [bank_account] Request Verify DB Check Data View Bank Account : ${resultBankAccount}
	${dataResultBankAccount}=    Set Variable    ${resultBankAccount}[0]
	Log To Console    [result : bank_account] : ${dataResultBankAccount}
	${rowCountBankAccount}=    Set Variable    ${resultBankAccount}[1]
	# Log To Console    [rowCount : bank_account] : ${rowCountBankAccount}
    
	${id}=    Convert To String    ${dataResultBankAccount}[0][0]
	${bankId}=    Convert To String    ${bankId}
	${created_at}=    Convert To String    ${dataResultBankAccount}[0][6]
	${created_by}=    Convert To String    ${dataResultBankAccount}[0][7]
	${updated_at}=    Convert To String    ${dataResultBankAccount}[0][8]
	${updated_by}=    Convert To String    ${dataResultBankAccount}[0][9]
	${deleted_at}=    Convert To String    ${dataResultBankAccount}[0][10]
	${deleted_by}=    Convert To String    ${dataResultBankAccount}[0][11]
	${deleted_by}=    Convert To String    ${dataResultBankAccount}[0][11]
	${bankAccountPermissionId}=    Convert To String    ${dataResultBankAccount}[0][16]
	${status}=    Convert To String    ${status}
	${OperateType}=    Convert To String    ${OperateType}
	
    # Log To Console    [result : created_at] : ${created_at}
	# # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # Log To Console    dateCreatedAt : ${dateCreatedAt}

	# # ((161, 1, 3, 'สาขา1', '111111111112', 'บัญชี1', datetime.datetime(2021, 9, 30, 15, 13, 37), '10', None, None, None, None, 7, 1, 3, 'หมายเหตุ1', 384, 7, 161, 8, 19, datetime.datetime(2021, 9, 30, 15, 13, 37), '10', None, None, None, None),)
	# # (([id], [bankId], [bankAccountNameTypeId], '[branch]', '[bankAccountNumber]', '[bankAccountName]', datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [account_id], [status], [operate_type], '[remark]', [id], [account_id], [bankaccount_id], [property_id], [building_id], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by]),)
	
    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_VIEW_ALLFIELD}'    ${DB_SELECTSTATEMENT_BANKACCOUNT_CHECKVIEW_ALLFIELD_VALUE} 
    # # ...    '${type}'=='${MYSQL_TYPE_VIEW_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_BANKACCOUNT_CHECKCREATE_REQUIREDFIELD_VALUE}
    
	Log To Console    dateCreatedAt : ${property_id}
    Log To Console    dateCreatedAt : ${property_id[0]}
	FOR    ${i}    IN RANGE    ${rowCountBankAccount}  
	# Log To Console    [result : bank_account] : ${dataResultBankAccount}[0][0]
    # ${property_id}=    Convert To String    ${property_id[${i}]}
	# ${building_id}=    Convert To String    ${building_id[${i}]}
	
        ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
        ${resultDB}=    Replace String    ${resultDB}    [bankId]    ${bankId}
        ${resultDB}=    Replace String    ${resultDB}    [bankAccountNameTypeId]    ${bankAccountNameTypeId}
        ${resultDB}=    Replace String    ${resultDB}    [branch]    ${branch}
        ${resultDB}=    Replace String    ${resultDB}    [bankAccountNumber]    ${bankAccountNumber}
        ${resultDB}=    Replace String    ${resultDB}    [bankAccountName]    ${bankAccountName}
        ${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
        ${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
        ${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${updated_at}
        ${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
        ${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
        ${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}
        ${resultDB}=    Replace String    ${resultDB}    [account_id]    ${convertStrAccountId}
        ${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
        ${resultDB}=    Replace String    ${resultDB}    [operate_type]    ${OperateType}
        ${resultDB}=    Replace String    ${resultDB}    [remark]    ${remark}
        ${resultDB}=    Replace String    ${resultDB}    [property_id]    ${property_id[${i}]}
        ${resultDB}=    Replace String    ${resultDB}    [building_id]    ${building_id[${i}]}
        # ${resultDB}=    Replace String    ${resultDB}    [bankaccount_id]    ${bankAccountId}
        ${resultDB}=    Replace String    ${resultDB}    [bank_account_permission_id]    ${bankAccountPermissionId}
        # Log To Console    [resultDB] : ${resultDB}
        ${strResult}=    Convert To String    ${dataResultBankAccount[${i}]}
    END
	Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data View Bank Account

	Log To Console    ${\n}=========== End DB : [View Bank Account] =============== 

Request Verify DB Check Data Delete Bank Account
    [Arguments]      ${type}    ${bankId}    ${branch}    ${bankAccountNameTypeId}    ${bankAccountName}    ${bankAccountNumber}    ${OperateType}    ${status}    ${remark}
    
	Log To Console    ${\n}=========== Start DB : [Delete Bank Account] =============== 
	#${DB_SELECTSTATEMENT_BANKACCOUNT_CHECKDELETE}    SELECT * FROM bank_account WHERE account_id = [accountId] and id = [bankAccountId] AND deleted_at NOT IS NULL                                                               # ((155, 1, 3, 'สาขา1', '111111111112', 'บัญชี1', datetime.datetime(2021, 9, 30, 14, 20, 55), '10', None, None, None, None, 7, 1, 3, 'หมายเหตุ1', 378, 7, 155, 8, 19, datetime.datetime(2021, 9, 30, 14, 20, 55), '10', None, None, None, None),)
	${convertStrAccountId}=    Convert To String    ${accountId}

	${selectStatementBankAccount}=    Replace String    ${DB_SELECTSTATEMENT_BANKACCOUNT_CHECKDELETE}    [accountId]    ${convertStrAccountId}
	${selectStatementBankAccount}=    Replace String    ${selectStatementBankAccount}    [bankAccountId]    ${bankAccountId}
	Log To Console    [bank_account : resultQuery] : ${selectStatementBankAccount}

	#[(), 0]
    # queryResults,rowCount
    @{resultBankAccount}=    Start Connect To MySql Query All List    ${selectStatementBankAccount}    ${selectStatementBankAccount}
	# Log To Console    [bank_account] Request Verify DB Check Data Delete Bank Account : ${resultBankAccount}
	${dataResultBankAccount}=    Set Variable    ${resultBankAccount}[0]
	Log To Console    [result : bank_account] : ${dataResultBankAccount}
	${rowCountBankAccount}=    Set Variable    ${resultBankAccount}[1]
	# Log To Console    [rowCount : bank_account] : ${rowCountBankAccount}

    Log To Console    [result : bank_account] : ${dataResultBankAccount}[0][0]
    ${id}=    Convert To String    ${dataResultBankAccount}[0][0]
	${bankId}=    Convert To String    ${bankId}
	${created_at}=    Convert To String    ${dataResultBankAccount}[0][6]
	${created_by}=    Convert To String    ${dataResultBankAccount}[0][7]
	${updated_at}=    Convert To String    ${dataResultBankAccount}[0][8]
	${updated_by}=    Convert To String    ${dataResultBankAccount}[0][9]
	${deleted_at}=    Convert To String    ${dataResultBankAccount}[0][10]
	${deleted_by}=    Convert To String    ${dataResultBankAccount}[0][11]
	${accountId}=    Convert To String    ${accountId}
	${status}=    Convert To String    ${status}
	${OperateType}=    Convert To String    ${OperateType}
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
	
	# ((52, 1, 3, 'สาขา1', '111111111112', 'บัญชี1', datetime.datetime(2021, 9, 28, 20, 1), '10', None, None, None, None, 7, 1, 3, 'หมายเหตุ1'),)
	# (([id], [bankId], [bankAccountNameTypeId], '[branch]', '[bankAccountNumber]', '[bankAccountName]', datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [account_id], [status], [operate_type], '[remark]'),)
	
	${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_DELETE_ALLFIELD}'    ${DB_SELECTSTATEMENT_BANKACCOUNT_CHECKDELETE_ALLFIELD_VALUE}
	...    '${type}'=='${MYSQL_TYPE_DELETE_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_BANKACCOUNT_CHECKDELETE_REQUIREDFIELD_VALUE}
    
	${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
	${resultDB}=    Replace String    ${resultDB}    [bankId]    ${bankId}
	${resultDB}=    Replace String    ${resultDB}    [bankAccountNameTypeId]    ${bankAccountNameTypeId}
	${resultDB}=    Replace String    ${resultDB}    [branch]    ${branch}
	${resultDB}=    Replace String    ${resultDB}    [bankAccountNumber]    ${bankAccountNumber}
	${resultDB}=    Replace String    ${resultDB}    [bankAccountName]    ${bankAccountName}
	${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
	${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
	${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${dateUpdatedAt}
	${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
	${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${dateDeletedAt}
	${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}
	${resultDB}=    Replace String    ${resultDB}    [account_id]    ${accountId}
	${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
	${resultDB}=    Replace String    ${resultDB}    [operate_type]    ${OperateType}
	${resultDB}=    Replace String    ${resultDB}    [remark]    ${remark}

	# Log To Console    [resultDB] : ${resultDB}
	${strResult}=    Convert To String    ${dataResultBankAccount}

	Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Delete Bank Account

	Log To Console    ${\n}=========== End DB : [Delete Bank Account] =============== 
