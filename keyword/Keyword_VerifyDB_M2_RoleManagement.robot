*** Keywords ***
Request Verify DB Check Data Search Role Management
    [Arguments]      ${type}    ${roleName}    ${limit}    ${offset}    ${orderBy}


	Log To Console    ${\n}=========== Start DB : [Search Role Management] =============== 
	
    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_ROLEMANAGEMENT_SEARCH_ALL}'    ${DB_SELECTSTATEMENT_ROLEMANAGEMENT_SEARCH_LISTALL}
	...    '${type}'=='${MYSQL_TYPE_ROLEMANAGEMENT_SEARCH_ROLENAME}'    ${DB_SELECTSTATEMENT_ROLEMANAGEMENT_SEARCH_ROLENAME}


	${convertStrAccountId}=    Convert To String    ${accountId}

	${replaceAccountId}=    Replace String    ${valueReplace}    [accountId]    ${convertStrAccountId}
	${replaceRoleName}=    Replace String    ${replaceAccountId}    [roleName]    ${roleName}
    ${replaceLimit}=    Replace String    ${replaceRoleName}    [limit]    ${limit}
	${replaceOffset}=    Replace String    ${replaceLimit}    [offset]    ${offset}
	${selectStatementRoleManagement}=    Replace String    ${replaceOffset}    [orderBy]    ${orderBy}
	Log To Console    [check_asset : resultQuery] : ${selectStatementRoleManagement}


	${valueReplaceRowcount}=    Set Variable If    '${type}'=='${MYSQL_TYPE_ROLEMANAGEMENT_SEARCH_ALL}'    ${DB_SELECTSTATEMENT_ROLEMANAGEMENT_SEARCH_LISTALL_ROWCOUNT}
	...    '${type}'=='${MYSQL_TYPE_ROLEMANAGEMENT_SEARCH_ROLENAME}'    ${DB_SELECTSTATEMENT_ROLEMANAGEMENT_SEARCH_ROLENAME_ROWCOUNT}



	${replaceRowcount}=    Replace String    ${valueReplaceRowcount}    [accountId]    ${convertStrAccountId}
	${replaceRowcount}=    Replace String    ${replaceRowcount}    [role_name]    ${roleName}
	${selectStatementRoleManagementRowcount}=    Replace String    ${replaceRowcount}    [orderBy]    ${orderBy}
	Log To Console    [check_asset : resultQuery] : ${selectStatementRoleManagementRowcount}

	#[(), 0]
    # queryResults,rowCount
    @{resultRoleManagement}=    Start Connect To MySql Query All List    ${selectStatementRoleManagement}    ${selectStatementRoleManagementRowcount}
	Log To Console    [check_asset] Request Verify DB Check Data Login : ${resultRoleManagement}
	${dataResultRoleManagement}=    Set Variable    ${resultRoleManagement}[0]
	Log To Console    [result : check_asset] : ${dataResultRoleManagement}
	${rowCountRoleManagement}=    Set Variable    ${resultRoleManagement}[1]
	Log To Console    [rowCount : check_asset] : ${rowCountRoleManagement}
    
	Log To Console    ${\n}=========== End DB : [Search Role Management] =============== 
	[Return]    ${dataResultRoleManagement}    ${rowCountRoleManagement}





Check Value Table Role Management 
    [Arguments]    ${type}    ${rowcountSearchRoleManagement}    ${dataSearchRoleManagement}

	Log To Console     TEST :::${dataSearchRoleManagement}
    Log To Console     TEST Route :::${rowcountSearchRoleManagement}

	#${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
	${setData}=    Run Keyword If    '${type}'=='${DEFAULT_TH}'    Set Data for check value table Role Management
	...    ELSE IF    '${type}'=='${DEFAULT_EN}'    Set Data for check value table Role Management
    Log To Console    setData::${setData} 

	# valueTable
	@{valArrDataTable}=    Create List	
	FOR    ${i}    IN RANGE    ${rowcountSearchRoleManagement}   
		#(163, 7, 'robot1'))

        ${RoleManagementName}=    Set Variable If    '${type}'=='${DEFAULT_TH}'    ${dataSearchRoleManagement[${i}][2]}
		...    '${type}'=='${DEFAULT_EN}'    ${dataSearchRoleManagement[${i}][2]}
		Log To Console    RoleManagementName::${RoleManagementName}    
	
        ${no}=    Convert To String    ${i+1}
        ${data}=    Evaluate    {"no":"${no}", "rolename":"${RoleManagementName}"}        #Add data to array set at valArrData
		Log To Console    Data : : : : ${data}
        Append To List    ${valArrDataTable}    ${data} 
        
        Check Value Table    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${i}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
	# Exit For Loop
	END




Request Verify DB Check Data Create Role Management
    [Arguments]      ${type}    ${rolename}       
    
	Log To Console    ${\n}=========== Start DB : [Create Role Management] =============== 
	
	${convertStrAccountId}=    Convert To String    ${accountId}

	${selectStatementRoleManagement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKCREATE_ROLEMANAGEMENT}    [accountId]    ${convertStrAccountId}
	${selectStatementRoleManagement}=    Replace String    ${selectStatementRoleManagement}    [role_name]    ${rolename}
	Log To Console    [check_role : resultQuery] : ${selectStatementRoleManagement}

	#[(), 0]
    # queryResults,rowCount
    @{resultRoleManagement}=    Start Connect To MySql Query All List    ${selectStatementRoleManagement}    ${selectStatementRoleManagement}
	Log To Console    [check_role] Request Verify DB Check Data Create Role Management : ${resultRoleManagement}
	${dataResultRoleManagement}=    Set Variable    ${resultRoleManagement}[0]
	Log To Console    [result : check_role] : ${dataResultRoleManagement}
	${rowCountRoleManagement}=    Set Variable    ${resultRoleManagement}[1]
	Log To Console    [rowCount : check_role] : ${rowCountRoleManagement}

    Log To Console    [result : check_role] : ${dataResultRoleManagement}[0][0]
    ${id}=    Convert To String    ${dataResultRoleManagement}[0][0]
	Log To Console    Check Id RoleManagement : :${id}
	Set Global Variable    ${RoleManagementId}    ${id}
	Log To Console    RoleManagement ID: :${RoleManagementId}    


	${accountId}=    Convert To String    ${accountId}
	${rolename}=    Convert To String    ${rolename}
    # Log To Console    [result : created_at] : ${created_at}

	
	# ((203, 7, 'TestUser'),)
	# (([id], [account_id], '[role_name]'),)
	
	${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_CREATE_ALLFIELD}'    ${DB_SELECTSTATEMENT_CHECKCREATE_ALLFIELD_ROLEMANAGEMENT_VALUE}
    # ...    '${type}'=='${MYSQL_TYPE_CREATE_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_CHECKCREATE_REQUIREFIELD_CHECKASSETMANAGEMENT_VALUE}
    
	${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
	${resultDB}=    Replace String    ${resultDB}    [account_id]    ${accountId}
	${resultDB}=    Replace String    ${resultDB}    [role_name]    ${rolename}
	${strResult}=    Convert To String    ${dataResultRoleManagement}
	Log To Console    [resultDB] : ${resultDB}

	Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Create RoleManagement

	Log To Console    ${\n}=========== End DB : [Create RoleManagement] =============== 





Request Verify DB Check Data Edit Role Management
    [Arguments]      ${type}    ${rolename}       
    
	Log To Console    ${\n}=========== Start DB : [Edit Role Management] =============== 
	#Search data ที่ create
	${convertStrAccountId}=    Convert To String    ${accountId}
	${selectStatementRoleManagement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKCREATE_ROLEMANAGEMENT}    [accountId]    ${convertStrAccountId}
	${selectStatementRoleManagement}=    Replace String    ${selectStatementRoleManagement}    [role_name]    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}
	Log To Console    [check_role : resultQuery] : ${selectStatementRoleManagement}
	#[(), 0]
    # queryResults,rowCount
    @{resultRoleManagement}=    Start Connect To MySql Query All List    ${selectStatementRoleManagement}    ${selectStatementRoleManagement}
	Log To Console    [check_role] Request Verify DB Check Data Create Role Management : ${resultRoleManagement}
	${dataResultRoleManagement}=    Set Variable    ${resultRoleManagement}[0]
	Log To Console    [result : check_role] : ${dataResultRoleManagement}
	${rowCountRoleManagement}=    Set Variable    ${resultRoleManagement}[1]
	Log To Console    [rowCount : check_role] : ${rowCountRoleManagement}
	${id}=    Set Variable    ${dataResultRoleManagement}[0][0]   
	Log To Console    id : : : ${id}
	${convertStrRoleId}=    Convert To String    ${id}
	${convertStrAccountId}=    Convert To String    ${accountId}
	${convertStrRolename}=    Convert To String    ${rolename}

	# SELECT r.* ,rm.action FROM `role` as r LEFT JOIN role_menu as rm ON r.account_id = rm.account_id WHERE rm.role_id = [role_id] AND role_name = '[role_name]'

	${selectStatementRoleManagement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKEDIT_ROLEMANAGEMENT}    [role_id]    ${convertStrRoleId}
	${selectStatementRoleManagement}=    Replace String    ${selectStatementRoleManagement}    [role_name]    ${convertStrRolename}
	Log To Console    [check_role : resultQuery] : ${selectStatementRoleManagement}

	#[(), 0]
    # queryResults,rowCount
    @{resultRoleManagement}=    Start Connect To MySql Query All List    ${selectStatementRoleManagement}    ${selectStatementRoleManagement}
	# Log To Console    [check_role] Request Verify DB Check Data Edit Role Management : ${resultRoleManagement}
	${dataResultRoleManagement}=    Set Variable    ${resultRoleManagement}[0]
	Log To Console    [result : check_role] : ${dataResultRoleManagement}
	${rowCountRoleManagement}=    Set Variable    ${resultRoleManagement}[1]
	# Log To Console    [rowCount : check_role] : ${rowCountRoleManagement}
	
	

	${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_EDIT_ALLFIELD}'    ${DB_SELECTSTATEMENT_CHECKEDIT_ALLFIELD_ROLEMANAGEMENT_VALUE}
  



	${id}=    Convert To String    ${dataResultRoleManagement}[0][0]
	${account_id}=    Convert To String    ${dataResultRoleManagement}[0][1]
	${rolename}=    Convert To String    ${dataResultRoleManagement}[0][2]    
	${TextAction}=    Convert To String    ${dataResultRoleManagement}[0][3]

	${id2}=    Convert To String    ${dataResultRoleManagement}[1][0]
	${account_id2}=    Convert To String    ${dataResultRoleManagement}[1][1]
	${rolename2}=    Convert To String    ${dataResultRoleManagement}[1][2]    
	${TextAction2}=    Convert To String    ${dataResultRoleManagement}[1][3]


	${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
	${resultDB}=    Replace String    ${resultDB}    [account_id]    ${account_id}
	${resultDB}=    Replace String    ${resultDB}    [role_name]    ${rolename}
	${resultDB}=    Replace String    ${resultDB}    [action]    ${TextAction}
	${resultDB}=    Replace String    ${resultDB}    [id2]    ${id2}
	${resultDB}=    Replace String    ${resultDB}    [account_id2]    ${account_id2}
	${resultDB}=    Replace String    ${resultDB}    [role_name2]    ${rolename2}
	${resultDB}=    Replace String    ${resultDB}    [action2]    ${TextAction2}
	Log To Console    [resultDB] : ${resultDB}
	${strResult}=    Convert To String    ${dataResultRoleManagement}

	Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Edit RoleManagement
	Log To Console    ${\n}=========== End DB : [Edit RoleManagement] =============== 



Request Verify DB Check Data View Role Management
    [Arguments]      ${type}    ${rolename}       
    
	Log To Console    ${\n}=========== Start DB : [View Role Management] =============== 
	#Search data ที่ create
	${convertStrAccountId}=    Convert To String    ${accountId}
	${selectStatementRoleManagement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKCREATE_ROLEMANAGEMENT}    [accountId]    ${convertStrAccountId}
	${selectStatementRoleManagement}=    Replace String    ${selectStatementRoleManagement}    [role_name]    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}
	Log To Console    [check_role : resultQuery] : ${selectStatementRoleManagement}
	#[(), 0]
    # queryResults,rowCount
    @{resultRoleManagement}=    Start Connect To MySql Query All List    ${selectStatementRoleManagement}    ${selectStatementRoleManagement}
	Log To Console    [check_role] Request Verify DB Check Data Create Role Management : ${resultRoleManagement}
	${dataResultRoleManagement}=    Set Variable    ${resultRoleManagement}[0]
	Log To Console    [result : check_role] : ${dataResultRoleManagement}
	${rowCountRoleManagement}=    Set Variable    ${resultRoleManagement}[1]
	Log To Console    [rowCount : check_role] : ${rowCountRoleManagement}
	${id}=    Set Variable    ${dataResultRoleManagement}[0][0]   
	Log To Console    id : : : ${id}
	${convertStrRoleId}=    Convert To String    ${id}
	${convertStrAccountId}=    Convert To String    ${accountId}
	${convertStrRolename}=    Convert To String    ${rolename}

	# SELECT r.* ,rm.action FROM `role` as r LEFT JOIN role_menu as rm ON r.account_id = rm.account_id WHERE rm.role_id = [role_id] AND role_name = '[role_name]'

	${selectStatementRoleManagement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKVIEW_ROLEMANAGEMENT}    [role_id]    ${convertStrRoleId}
	${selectStatementRoleManagement}=    Replace String    ${selectStatementRoleManagement}    [role_name]    ${convertStrRolename}
	Log To Console    [check_role : resultQuery] : ${selectStatementRoleManagement}

	#[(), 0]
    # queryResults,rowCount
    @{resultRoleManagement}=    Start Connect To MySql Query All List    ${selectStatementRoleManagement}    ${selectStatementRoleManagement}
	# Log To Console    [check_role] Request Verify DB Check Data Edit Role Management : ${resultRoleManagement}
	${dataResultRoleManagement}=    Set Variable    ${resultRoleManagement}[0]
	Log To Console    [result : check_role] : ${dataResultRoleManagement}
	${rowCountRoleManagement}=    Set Variable    ${resultRoleManagement}[1]
	# Log To Console    [rowCount : check_role] : ${rowCountRoleManagement}
	
	

	${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_VIEW_ALLFIELD}'    ${DB_SELECTSTATEMENT_CHECKVIEW_ALLFIELD_ROLEMANAGEMENT_VALUE}


	${id}=    Convert To String    ${dataResultRoleManagement}[0][0]
	${account_id}=    Convert To String    ${dataResultRoleManagement}[0][1]
	${rolename}=    Convert To String    ${dataResultRoleManagement}[0][2]    
	${TextAction}=    Convert To String    ${dataResultRoleManagement}[0][3]

	


	${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
	${resultDB}=    Replace String    ${resultDB}    [account_id]    ${account_id}
	${resultDB}=    Replace String    ${resultDB}    [role_name]    ${rolename}
	${resultDB}=    Replace String    ${resultDB}    [action]    ${TextAction}
	Log To Console    [resultDB] : ${resultDB}
	${strResult}=    Convert To String    ${dataResultRoleManagement}

	Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data View RoleManagement
	Log To Console    ${\n}=========== End DB : [View RoleManagement] =============== 


Request Verify DB Check Data Delete Role Management
    [Arguments]      ${type}    ${rolename}       
    
	Log To Console    ${\n}=========== Start DB : [Delete Role Management] =============== 
	${convertStrAccountId}=    Convert To String    ${accountId}

	${selectStatementRoleManagement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKDELETE_ROLEMANAGEMENT}    [accountId]    ${convertStrAccountId}
	${selectStatementRoleManagement}=    Replace String    ${selectStatementRoleManagement}    [role_name]    ${rolename}
	Log To Console    [check_role : resultQuery] : ${selectStatementRoleManagement}

	#[(), 0]
    # queryResults,rowCount
    @{resultRoleManagement}=    Start Connect To MySql Query All List    ${selectStatementRoleManagement}    ${selectStatementRoleManagement}
	Log To Console    [check_role] Request Verify DB Check Data Delete Role Management : ${resultRoleManagement}
	${dataResultRoleManagement}=    Set Variable    ${resultRoleManagement}[0]
	Log To Console    [result : check_role] : ${dataResultRoleManagement}
	${rowCountRoleManagement}=    Set Variable    ${resultRoleManagement}[1]
	Log To Console    [rowCount : check_role] : ${rowCountRoleManagement}

	${resultDB}=    Convert To String    ()
	${strResult}=    Convert To String    ${dataResultRoleManagement}
	

	Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Delete RoleManagement

	Log To Console    ${\n}=========== End DB : [Delete RoleManagement] =============== 