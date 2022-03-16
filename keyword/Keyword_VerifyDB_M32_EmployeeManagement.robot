*** Keywords ***
Request Verify DB Check Data Search Employee Management
    [Arguments]      ${type}    ${limit}    ${offset}
    
	Log To Console    ${\n}=========== Start DB : [Search Employee Management] =============== 
	# ${DB_SELECTSTATEMENT_SEARCHEMPLOYEEMANAGEMENT_LISTALL}    SELECT * FROM bank_account WHERE bank_account_number = [bankAccountNumber] AND status = [status] AND account_id = [accountId] AND deleted_at IS null order by [orderBy] limit [limit] offset [offset]
    # ${DB_SELECTSTATEMENT_SEARCHEMPLOYEEMANAGEMENT_LISTALL_ROWCOUNT}    SELECT * FROM bank_account WHERE bank_account_number = [bankAccountNumber] AND status = [status] AND account_id = [accountId] AND deleted_at IS null order by [orderBy]

    # Data
    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_SEARCHLISTALL}'    ${DB_SELECTSTATEMENT_SEARCHEMPLOYEEMANAGEMENT_LISTALL}
    # ...    '${type}'=='${MYSQL_TYPE_BANKACCOUNT_SEARCH_ALL}'    ${DB_SELECTSTATEMENT_SEARCHBANKACCOUNT_SEAECHALL}
	${convertStrAccountId}=    Convert To String    ${accountId}

	${selectStatement}=    Replace String    ${valueReplace}    [accountId]    ${convertStrAccountId}
    ${selectStatement}=    Replace String    ${selectStatement}    [limit]    ${limit}
	${selectStatement}=    Replace String    ${replaceLimit}    [offset]    ${offset}
	Log To Console    [User_account : resultQuery] : ${selectStatement}

    # Rowcount
    ${valueReplaceRowcount}=    Set Variable If    '${type}'=='${MYSQL_TYPE_SEARCHLISTALL}'    ${DB_SELECTSTATEMENT_SEARCHBANKACCOUNT_BANKACCOUNTNUMBERSTATUS_ROWCOUNT}
    
	${replaceRowcount}=    Replace String    ${valueReplaceRowcount}    [accountId]    ${convertStrAccountId}
    ${replaceRowcount}=    Replace String    ${replaceRowcount}    [limit]    ${limit}
	${selectStatementRowcount}=    Replace String    ${replaceRowcount}    [offset]    ${offset}

	#[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatementRowcount}
	Log To Console    [EmployeeManagement] Request Verify DB Check Data Search Employee Management : ${result}
	${dataResult}=    Set Variable    ${result}[0]
	Log To Console    [result : EmployeeManagement] : ${dataResult}
	${rowCount}=    Set Variable    ${result}[1]
	Log To Console    [rowCount : EmployeeManagement] : ${rowCount}
    
	Log To Console    ${\n}=========== End DB : [Search Employee Management] =============== 
	[Return]    ${result}    ${rowCount}


Check Value Table Search Employee Management 
    [Arguments]    ${rowCountEmployeeManagement}    ${dataSearchEmployeeManagement}

	Log To Console     TEST :::${dataSearchEmployeeManagement}

	${setData}=    Set Data for Check Value Table EmployeeManagement
	
	#valueTable
	@{valArrDataTable}=    Create List	
	FOR    ${i}    IN RANGE    ${rowcountSearchEmployeeManagement}   
	#[((16, 1, 'สวีดัส', 'สวัสดี', 1, '1150111219', datetime.datetime(2021, 9, 28, 10, 13, 51), '10', None, None, None, None, 7),), 1]
        # ${employeeId}=    Set Variable    ${dataSearchEmployeeManagement[${i}][1]}
		# Log To Console     employeeId::::${employeeId}   
		# ${bankname}=    Value Bankname    ${bankId}
		# ${banknameTh}=    Set Variable    ${bankname}[0]

		Log To Console    EmployeeType::1111111111${dataSearchEmployeeManagement[${i}][4]}    

        # UI mapping field EmployeeType 1 = "พนักงานทำความสะอาด" หรือ​ "Cleaning staff", 2= "พนักงานซ่อมแซม" หรือ "Repair staff" , 3 = "พนักงานทำความสะอาดและซ่อมแซม" หรือ "Cleaning and Repair staff"
        ${EmployeeType}=    Set Variable If    '${dataSearchEmployeeManagement[${i}][4]}'=='1'    ${DEFAULT_LBL_EMPLOYEETYPE_SAVINGS_TH}
		...    '${dataSearchEmployeeManagement[${i}][4]}'=='2'    ${DEFAULT_LBL_EMPLOYEETYPE_CURRENTDEPOSIT_TH}
		...    '${dataSearchEmployeeManagement[${i}][4]}'=='3'    ${DEFAULT_LBL_EMPLOYEETYPE_FIXEDDEPOSIT_TH}

		Log To Console    EmployeeType::${EmployeeType}    

        ${EmployeeManagementName}=    Set Variable    ${dataSearchEmployeeManagement[${i}][2]}
		${EmployeeManagementSurName}=    Set Variable    ${dataSearchEmployeeManagement[${i}][3]}
		${Titel}=    Set Variable If    '${dataSearchEmployeeManagement[${i}][1]}'=='1'    ${DEFAULT_LBL_EMPLOYEETITEL_MR_TH} 
		...    '${dataSearchEmployeeManagement[${i}][1]}'!='1'    ${EMPTY}
		Log To Console    Titellllllllllll::${Titel}
        ${EmployeeManagementPhoneNumber}=    Set Variable    ${dataSearchEmployeeManagement[${i}][5]}

        ${no}=    Convert To String    ${i+1}
        ${data}=    Evaluate    {"no":"${no}", "employeetype":"${EmployeeType}", "namesurname":"${Titel}${EmployeeManagementName} ${EmployeeManagementSurName}", "phonenumber":"${EmployeeManagementPhoneNumber}"}        #Add data to array set at valArrData
		Log To Console    Data : : : : ${data}
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
        
        Check Value Table    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${i}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
	# Exit For Loop
	END







Request Verify DB Check Data Create EmployeeManagement
    [Arguments]      ${type}    ${employeetype}    ${prefix}    ${name}    ${surname}    ${phonenumber}
    
	Log To Console    ${\n}=========== Start DB : [Create EmployeeManagement] =============== 
	# ${DB_SELECTSTATEMENT_CHECKCREATEEDIT}    SELECT * FROM employee WHERE account_id = [accountId] AND deleted_at IS NULL

	${convertStrAccountId}=    Convert To String    ${accountId}

	${selectStatementEmployeeManagement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKCREATE_EMPLOYEEMANAGEMENT}    [accountId]    ${convertStrAccountId}
	Log To Console    [employee : resultQuery] : ${selectStatementEmployeeManagement}

	#[(), 0]
    # queryResults,rowCount
    @{resultEmployeeManagement}=    Start Connect To MySql Query All List    ${selectStatementEmployeeManagement}    ${selectStatementEmployeeManagement}
	Log To Console    [employee] Request Verify DB Check Data Create Bank Account : ${resultEmployeeManagement}
	${dataResultEmployeeManagement}=    Set Variable    ${resultEmployeeManagement}[0]
	Log To Console    [result : employee] : ${dataResultEmployeeManagement}
	${rowCountEmployeeManagement}=    Set Variable    ${resultEmployeeManagement}[1]
	Log To Console    [rowCount : employee] : ${rowCountEmployeeManagement}

    Log To Console    [result : employee] : ${dataResultEmployeeManagement}[0][0]
    ${id}=    Convert To String    ${dataResultEmployeeManagement}[0][0]
	Set Global Variable    ${idEmployeeManagement}    ${id}
	${prefix}=    Convert To String    ${prefix}
	${created_at}=    Convert To String    ${dataResultEmployeeManagement}[0][6]
	${created_by}=    Convert To String    ${dataResultEmployeeManagement}[0][7]
	${updated_at}=    Convert To String    ${dataResultEmployeeManagement}[0][8]
	${updated_by}=    Convert To String    ${dataResultEmployeeManagement}[0][9]
	${deleted_at}=    Convert To String    ${dataResultEmployeeManagement}[0][10]
	${deleted_by}=    Convert To String    ${dataResultEmployeeManagement}[0][11]
	${accountId}=    Convert To String    ${accountId}
    # Log To Console    [result : created_at] : ${created_at}

	# 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # Log To Console    dateCreatedAt : ${dateCreatedAt}
	
	# ((34, 1, 'Johnson', 'Pluto', 1, '0998887456', datetime.datetime(2021, 9, 30, 15, 32, 42), '10', None, None, None, None, 7),)
	# (([id], [titel_id], [firstname], '[lastname]', '[employeetype]', '[phone_number]', datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [account_id]),)
	
	${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_CREATE_ALLFIELD}'    ${DB_SELECTSTATEMENT_CHECKCREATE_ALLFIELD_EMPLOYEEMANAGEMENT_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_CREATE_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_CHECKCREATE_REQUIREFIELD_EMPLOYEEMANAGEMENT_VALUE}
    
	${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
	${resultDB}=    Replace String    ${resultDB}    [titel_id]    ${prefix}
	${resultDB}=    Replace String    ${resultDB}    [firstname]    ${name}
	${resultDB}=    Replace String    ${resultDB}    [lastname]    ${surname}
	${resultDB}=    Replace String    ${resultDB}    [employeetype]    ${employeetype}
	${resultDB}=    Replace String    ${resultDB}    [phone_number]    ${phonenumber}
	${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
	${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
	${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${updated_at}
	${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
	${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
	${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}
	${resultDB}=    Replace String    ${resultDB}    [account_id]    ${accountId}
	Log To Console    [resultDB] : ${resultDB}
	${strResult}=    Convert To String    ${dataResultEmployeeManagement}

	Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Create EmployeeManagement

	Log To Console    ${\n}=========== End DB : [Create EmployeeManagement] =============== 










Request Verify DB Check Data Edit EmployeeManagement
    [Arguments]      ${type}    ${employeetype}    ${prefix}    ${name}    ${surname}    ${phonenumber}
    
	Log To Console    ${\n}=========== Start DB : [Edit EmployeeManagement] =============== 
	# ${DB_SELECTSTATEMENT_CHECKEDIT_EMPLOYEEMANAGEMENT}    SELECT * FROM employee WHERE account_id = [accountId] AND id = [idEmployeeManagement] AND deleted_at IS NULL

	${convertStrAccountId}=    Convert To String    ${accountId}

	${selectStatementEmployeeManagement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKEDIT_EMPLOYEEMANAGEMENT}    [accountId]    ${convertStrAccountId}
	${selectStatementEmployeeManagement}=    Replace String    ${selectStatementEmployeeManagement}    [idEmployeeManagement]    ${idEmployeeManagement}
	Log To Console    [employee : resultQuery] : ${selectStatementEmployeeManagement}

	#[(), 0]
    # queryResults,rowCount
    @{resultEmployeeManagement}=    Start Connect To MySql Query All List    ${selectStatementEmployeeManagement}    ${selectStatementEmployeeManagement}
	Log To Console    [employee] Request Verify DB Check Data Edit EmployeeManagement : ${resultEmployeeManagement}
	${dataResultEmployeeManagement}=    Set Variable    ${resultEmployeeManagement}[0]
	Log To Console    [result : employee] : ${dataResultEmployeeManagement}
	${rowCountEmployeeManagement}=    Set Variable    ${resultEmployeeManagement}[1]
	Log To Console    [rowCount : employee] : ${rowCountEmployeeManagement}

    Log To Console    [result : employee] : ${dataResultEmployeeManagement}[0][0]
    ${id}=    Convert To String    ${dataResultEmployeeManagement}[0][0]
	${prefix}=    Convert To String    ${prefix}
	${created_at}=    Convert To String    ${dataResultEmployeeManagement}[0][6]
	${created_by}=    Convert To String    ${dataResultEmployeeManagement}[0][7]
	${updated_at}=    Convert To String    ${dataResultEmployeeManagement}[0][8]
	${updated_by}=    Convert To String    ${dataResultEmployeeManagement}[0][9]
	${deleted_at}=    Convert To String    ${dataResultEmployeeManagement}[0][10]
	${deleted_by}=    Convert To String    ${dataResultEmployeeManagement}[0][11]
	${accountId}=    Convert To String    ${accountId}
    # Log To Console    [result : created_at] : ${created_at}

	# 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # Log To Console    dateCreatedAt : ${dateCreatedAt}
	${dateUpdatedAt}=    Convert Format Date DB    ${updated_at}
	
	# ((34, 1, 'Johnson', 'Pluto', 1, '0998887456', datetime.datetime(2021, 9, 30, 15, 32, 42), '10', None, None, None, None, 7),)
	# (([id], [titel_id], [firstname], '[lastname]', '[employeetype]', '[phone_number]', datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [account_id]),)
	
	${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_EDIT_ALLFIELD}'    ${DB_SELECTSTATEMENT_CHECKEDIT_ALLFIELD_EMPLOYEEMANAGEMENT_VALUE}
    # ...    '${type}'=='${MYSQL_TYPE_CREATE_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_CHECKCREATE_REQUIREFIELD_EMPLOYEEMANAGEMENT_VALUE}
    
	${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
	${resultDB}=    Replace String    ${resultDB}    [titel_id]    ${prefix}
	${resultDB}=    Replace String    ${resultDB}    [firstname]    ${name}
	${resultDB}=    Replace String    ${resultDB}    [lastname]    ${surname}
	${resultDB}=    Replace String    ${resultDB}    [employeetype]    ${employeetype}
	${resultDB}=    Replace String    ${resultDB}    [phone_number]    ${phonenumber}
	${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
	${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
	${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${dateUpdatedAt}
	${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
	${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
	${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}
	${resultDB}=    Replace String    ${resultDB}    [account_id]    ${accountId}
	# Log To Console    [resultDB] : ${resultDB}
	${strResult}=    Convert To String    ${dataResultEmployeeManagement}

	Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Edit EmployeeManagement

	Log To Console    ${\n}=========== End DB : [Create EmployeeManagement] =============== 



Request Verify DB Check Data View EmployeeManagement
    [Arguments]      ${type}    ${employeetype}    ${prefix}    ${name}    ${surname}    ${phonenumber}    ${property_id}    ${building_id}
    
	Log To Console    ${\n}=========== Start DB : [View EmployeeManagement] =============== 
	#${DB_SELECTSTATEMENT_CHECKVIEW_EMPLOYEEMANAGEMENT}    SELECT e.id as employeeId , e.title_id , e.first_name , e.last_name , t.id as titleId ,e.employee_type , e.phone_number , t.name_th as titleTh , t.name_en as titleEn , ep.* FROM employee as e LEFT JOIN title as t ON (e.title_id = t.id) JOIN employee_property as ep ON (ep.employee_id = e.id) JOIN properties as p ON (ep.property_id = p.id) JOIN buildings as b ON (ep.building_id = b.id) WHERE e.deleted_at IS NULL AND e.account_id = [account_id] AND ep.employee_id = [employee_id]

	${convertStrAccountId}=    Convert To String    ${accountId}

	${selectStatementEmployeeManagement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKVIEW_EMPLOYEEMANAGEMENT}    [accountid]    ${convertStrAccountId}
	${selectStatementEmployeeManagement}=    Replace String    ${selectStatementEmployeeManagement}    [employeeid]    ${idEmployeeManagement}
	Log To Console    [employee : resultQuery] : ${selectStatementEmployeeManagement}

	#[(), 0]
    # queryResults,rowCount
    @{resultEmployeeManagement}=    Start Connect To MySql Query All List    ${selectStatementEmployeeManagement}    ${selectStatementEmployeeManagement}
	Log To Console    [employee] Request Verify DB Check Data View EmployeeManagement : ${resultEmployeeManagement}
	${dataResultEmployeeManagement}=    Set Variable    ${resultEmployeeManagement}[0]
	Log To Console    [result : employee] : ${dataResultEmployeeManagement}
	${rowCountEmployeeManagement}=    Set Variable    ${resultEmployeeManagement}[1]
	Log To Console    [rowCount : employee] : ${rowCountEmployeeManagement}
    Log To Console    [result : employee] : ${dataResultEmployeeManagement}[0][0]



    ${employeeid}=    Convert To String    ${dataResultEmployeeManagement}[0][0]
	Log To Console    employeeid::${employeeid}
	${prefix}=    Convert To String    ${prefix}
	# ${property_id}=    Convert To String    ${property_id}
	# ${building_id}=    Convert To String    ${building_id}
	${title_Th}=    Convert To String    ${dataResultEmployeeManagement}[0][7]
	${title_En}=    Convert To String    ${dataResultEmployeeManagement}[0][8]
	${id}=    Convert To String    ${dataResultEmployeeManagement}[0][9]
	${created_at}=    Convert To String    ${dataResultEmployeeManagement}[0][13]
    Log To Console    [result : created_at] : ${created_at}
	${created_by}=    Convert To String    ${dataResultEmployeeManagement}[0][14]
	${updated_at}=    Convert To String    ${dataResultEmployeeManagement}[0][15]
	${updated_by}=    Convert To String    ${dataResultEmployeeManagement}[0][16]
	${deleted_at}=    Convert To String    ${dataResultEmployeeManagement}[0][17]
	${deleted_by}=    Convert To String    ${dataResultEmployeeManagement}[0][18]
	${accountId}=    Convert To String    ${accountId}

	# 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    Log To Console    dateCreatedAt : ${dateCreatedAt}
	# ${dateUpdatedAt}=    Convert Format Date DB    ${updated_at}
	
	# ((132, 1, 'Johnson', 'Pluto', 1, 1, '0998887456', 'นาย', 'Mr.', 314, 132, 8, 19, datetime.datetime(2021, 10, 6, 13, 48, 51), '10', None, None, None, None, 7),)
	# (([employeeId], [titel_id], '[first_name]', '[last_name]', [titel_id], [employee_type], '[phone_number]', '[titleTh]', '[titleEn]', [id], [employee_id], [property_id], [building_id], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [account_id]),)
	
	${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_VIEW_ALLFIELD}'    ${DB_SELECTSTATEMENT_CHECKVIEW_ALLFIELD_EMPLOYEEMANAGEMENT_VALUE}
    # ...    '${type}'=='${MYSQL_TYPE_CREATE_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_CHECKCREATE_REQUIREFIELD_EMPLOYEEMANAGEMENT_VALUE}
	Log To Console    property_id 1: ${property_id}[0]
    Log To Console    building_id 1: ${building_id}[0]
	Log To Console    rowCountEmployeeManagement : ${rowCountEmployeeManagement}

	FOR    ${i}    IN RANGE    ${rowCountEmployeeManagement}  

	${resultDB}=    Replace String    ${valueReplace}    [employeeId]    ${employeeid}
	${resultDB}=    Replace String    ${resultDB}    [titel_id]    ${prefix}
	${resultDB}=    Replace String    ${resultDB}    [first_name]    ${name}
	${resultDB}=    Replace String    ${resultDB}    [last_name]    ${surname}
	${resultDB}=    Replace String    ${resultDB}    [titel_id]    ${prefix}
	${resultDB}=    Replace String    ${resultDB}    [employee_type]    ${employeetype}
	${resultDB}=    Replace String    ${resultDB}    [phone_number]    ${phonenumber}
	${resultDB}=    Replace String    ${resultDB}    [titleTh]    ${title_Th}
	${resultDB}=    Replace String    ${resultDB}    [titleEn]    ${title_En}
	${resultDB}=    Replace String    ${resultDB}    [id]    ${id}
	${resultDB}=    Replace String    ${resultDB}    [employee_id]    ${employeeid}
	${resultDB}=    Replace String    ${resultDB}    [property_id]    ${property_id}[${i}]
	${resultDB}=    Replace String    ${resultDB}    [building_id]    ${building_id}[${i}]
	${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
	${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
	${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${updated_at}
	${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
	${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
	${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}
	${resultDB}=    Replace String    ${resultDB}    [account_id]    ${accountId}
	Log To Console    [resultDB] : ${resultDB}
	${strResult}=    Convert To String    ${dataResultEmployeeManagement}
	END
	Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data View EmployeeManagement

	Log To Console    ${\n}=========== End DB : [View EmployeeManagement] =============== 



Request Verify DB Check Data Delete EmployeeManagement
    [Arguments]      ${type}    ${employeetype}    ${prefix}    ${name}    ${surname}    ${phonenumber}    ${property_id}    ${building_id}
    
	Log To Console    ${\n}=========== Start DB : [View EmployeeManagement] =============== 
	#${DB_SELECTSTATEMENT_CHECKDELETE_EMPLOYEEMANAGEMENT}    SELECT e.id as employeeId , e.title_id , e.first_name , e.last_name ,e.employee_type , e.phone_number , ep.* FROM employee as e LEFT JOIN employee_property as ep ON (ep.employee_id = e.id) WHERE e.account_id = [accountid] AND ep.employee_id = [employeeid]

	${convertStrAccountId}=    Convert To String    ${accountId}

	${selectStatementEmployeeManagement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKDELETE_EMPLOYEEMANAGEMENT}    [accountid]    ${convertStrAccountId}
	${selectStatementEmployeeManagement}=    Replace String    ${selectStatementEmployeeManagement}    [employeeid]    ${idEmployeeManagement}
	Log To Console    [employee : resultQuery] : ${selectStatementEmployeeManagement}

	#[(), 0]
    # queryResults,rowCount
    @{resultEmployeeManagement}=    Start Connect To MySql Query All List    ${selectStatementEmployeeManagement}    ${selectStatementEmployeeManagement}
	Log To Console    [employee] Request Verify DB Check Data delete EmployeeManagement : ${resultEmployeeManagement}
	${dataResultEmployeeManagement}=    Set Variable    ${resultEmployeeManagement}[0]
	Log To Console    [result : employee] : ${dataResultEmployeeManagement}
	${rowCountEmployeeManagement}=    Set Variable    ${resultEmployeeManagement}[1]
	Log To Console    [rowCount : employee] : ${rowCountEmployeeManagement}
    Log To Console    [result : employee] : ${dataResultEmployeeManagement}[0][0]



    ${employeeid}=    Convert To String    ${dataResultEmployeeManagement}[0][0]
	Log To Console    employeeid::${employeeid}
	${prefix}=    Convert To String    ${prefix}
	# ${property_id}=    Convert To String    ${property_id}
	# ${building_id}=    Convert To String    ${building_id}
	${id}=    Convert To String    ${dataResultEmployeeManagement}[0][6]
	${created_at}=    Convert To String    ${dataResultEmployeeManagement}[0][10]
    Log To Console    [result : created_at] : ${created_at}
	${created_by}=    Convert To String    ${dataResultEmployeeManagement}[0][11]
	${updated_at}=    Convert To String    ${dataResultEmployeeManagement}[0][12]
	${updated_by}=    Convert To String    ${dataResultEmployeeManagement}[0][13]
	${deleted_at}=    Convert To String    ${dataResultEmployeeManagement}[0][14]
	${deleted_by}=    Convert To String    ${dataResultEmployeeManagement}[0][15]
	${accountId}=    Convert To String    ${accountId}

	# 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # # Log To Console    dateCreatedAt : ${dateCreatedAt}
	# 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateUpdatedAt}=    Convert Format Date DB    ${updated_at}
	# Log To Console    dateUpdatedAt : ${updated_at}
	# 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateDeletedAt}=    Convert Format Date DB    ${deleted_at}
	# Log To Console    dateDeletedAt : ${dateDeletedAt}
	
	# ((132, 1, 'Johnson', 'Pluto', 1, 1, '0998887456', 'นาย', 'Mr.', 314, 132, 8, 19, datetime.datetime(2021, 10, 6, 13, 48, 51), '10', None, None, None, None, 7),)
	# (([employeeId], [titel_id], '[first_name]', '[last_name]', [employee_type], '[phone_number]', [id], [employee_id], [property_id], [building_id], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', datetime.datetime([deleted_at]), '[deleted_by]', [account_id]),)
	
	${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_DELETE_ALLFIELD}'    ${DB_SELECTSTATEMENT_CHECKDELETE_EMPLOYEEMANAGEMENT_ALLFIELD_VALUE}
    # ...    '${type}'=='${MYSQL_TYPE_CREATE_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_CHECKCREATE_REQUIREFIELD_EMPLOYEEMANAGEMENT_VALUE}
	Log To Console    property_id 1: ${property_id}[0]
    Log To Console    building_id 1: ${building_id}[0]
	Log To Console    rowCountEmployeeManagement : ${rowCountEmployeeManagement}

	FOR    ${i}    IN RANGE    ${rowCountEmployeeManagement}  

	${resultDB}=    Replace String    ${valueReplace}    [employeeId]    ${employeeid}
	${resultDB}=    Replace String    ${resultDB}    [titel_id]    ${prefix}
	${resultDB}=    Replace String    ${resultDB}    [first_name]    ${name}
	${resultDB}=    Replace String    ${resultDB}    [last_name]    ${surname}
	${resultDB}=    Replace String    ${resultDB}    [employee_type]    ${employeetype}
	${resultDB}=    Replace String    ${resultDB}    [phone_number]    ${phonenumber}
	${resultDB}=    Replace String    ${resultDB}    [id]    ${id}
	${resultDB}=    Replace String    ${resultDB}    [employee_id]    ${employeeid}
	${resultDB}=    Replace String    ${resultDB}    [property_id]    ${property_id}[${i}]
	${resultDB}=    Replace String    ${resultDB}    [building_id]    ${building_id}[${i}]
	${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
	${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
	${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${dateUpdatedAt}
	${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
	${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${dateDeletedAt}
	${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}
	${resultDB}=    Replace String    ${resultDB}    [account_id]    ${accountId}
	Log To Console    [resultDB] : ${resultDB}
	${strResult}=    Convert To String    ${dataResultEmployeeManagement}
	END
	Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Delete EmployeeManagement

	Log To Console    ${\n}=========== End DB : [Delete EmployeeManagement] =============== 