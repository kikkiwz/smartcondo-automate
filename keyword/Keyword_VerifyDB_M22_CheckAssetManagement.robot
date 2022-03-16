*** Keywords ***
Request Verify DB Check Data Search Check Asset Management
    [Arguments]      ${type}    ${status}    ${nameAsset}    ${limit}    ${offset}    ${orderBy}


	Log To Console    ${\n}=========== Start DB : [Search Check Asset Management] =============== 
	
    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_CHECKASSETMANAGEMENT_SEARCH_ALL}'    ${DB_SELECTSTATEMENT_CHECKASSETMANAGEMENT_SEARCH_LISTALL}
	...    '${type}'=='${MYSQL_TYPE_CHECKASSETMANAGEMENT_SEARCH_STATUS}'    ${DB_SELECTSTATEMENT_CHECKASSETMANAGEMENT_SEARCH_STATUS}
	...    '${type}'=='${MYSQL_TYPE_CHECKASSETMANAGEMENT_SEARCH_ASSETNAMESTATUS}'    ${DB_SELECTSTATEMENT_CHECKASSETMANAGEMENT_SEARCH_STATUSANDASSETNAME}
	...    '${type}'=='${MYSQL_TYPE_CHECKASSETMANAGEMENT_SEARCH_ASSETNAMESTATUS_EN}'    ${DB_SELECTSTATEMENT_CHECKASSETMANAGEMENT_SEARCH_STATUSANDASSETNAME_EN}

    
	${convertStrAccountId}=    Convert To String    ${accountId}

	${replaceAccountId}=    Replace String    ${valueReplace}    [accountId]    ${convertStrAccountId}
	${replaceNameAsset}=    Replace String    ${replaceAccountId}    [assetname]    ${nameAsset}
	${replaceStatus}=    Replace String    ${replaceNameAsset}    [status]    ${status}
    ${replaceLimit}=    Replace String    ${replaceStatus}    [limit]    ${limit}
	${replaceOffset}=    Replace String    ${replaceLimit}    [offset]    ${offset}
	${selectStatementAssetManagement}=    Replace String    ${replaceOffset}    [orderBy]    ${orderBy}
	Log To Console    [check_asset : resultQuery] : ${selectStatementAssetManagement}


	${valueReplaceRowcount}=    Set Variable If    '${type}'=='${MYSQL_TYPE_CHECKASSETMANAGEMENT_SEARCH_ALL}'    ${DB_SELECTSTATEMENT_CHECKASSETMANAGEMENT_SEARCH_LISTALL_ROWCOUNT}
	...    '${type}'=='${MYSQL_TYPE_CHECKASSETMANAGEMENT_SEARCH_STATUS}'    ${DB_SELECTSTATEMENT_CHECKASSETMANAGEMENT_SEARCH_STATUS_ROWCOUNT}
	...    '${type}'=='${MYSQL_TYPE_CHECKASSETMANAGEMENT_SEARCH_ASSETNAMESTATUS}'    ${DB_SELECTSTATEMENT_CHECKASSETMANAGEMENT_SEARCH_STATUSANDASSETNAME_ROWCOUNT}
	...    '${type}'=='${MYSQL_TYPE_CHECKASSETMANAGEMENT_SEARCH_ASSETNAMESTATUS_EN}'    ${DB_SELECTSTATEMENT_CHECKASSETMANAGEMENT_SEARCH_STATUSANDASSETNAME_ROWCOUNT_EN}


	${replaceRowcount}=    Replace String    ${valueReplaceRowcount}    [accountId]    ${convertStrAccountId}
	${replaceRowcount}=    Replace String    ${replaceRowcount}    [assetname]    ${nameAsset}
	${replaceRowcount}=    Replace String    ${replaceRowcount}    [status]    ${status}
	${selectStatementAssetManagementRowcount}=    Replace String    ${replaceRowcount}    [orderBy]    ${orderBy}
	Log To Console    [check_asset : resultQuery] : ${selectStatementAssetManagementRowcount}

	#[(), 0]
    # queryResults,rowCount
    @{resultAssetManagement}=    Start Connect To MySql Query All List    ${selectStatementAssetManagement}    ${selectStatementAssetManagementRowcount}
	Log To Console    [check_asset] Request Verify DB Check Data Login : ${resultAssetManagement}
	${dataResultAssetManagement}=    Set Variable    ${resultAssetManagement}[0]
	Log To Console    [result : check_asset] : ${dataResultAssetManagement}
	${rowCountAssetManagement}=    Set Variable    ${resultAssetManagement}[1]
	Log To Console    [rowCount : check_asset] : ${rowCountAssetManagement}
    
	Log To Console    ${\n}=========== End DB : [Search Check Asset Management] =============== 
	[Return]    ${dataResultAssetManagement}    ${rowCountAssetManagement}





Check Value Table Check Asset Management 
    [Arguments]    ${type}    ${rowcountSearchAssetManagement}    ${dataSearchAssetManagement}

	Log To Console     TEST :::${dataSearchAssetManagement}

	#${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}

	${setData}=    Run Keyword If    '${type}'=='${DEFAULT_TH}'    Set Data for check value table Check Asset Management
	...    ELSE IF    '${type}'=='${DEFAULT_EN}'    Set Data for check value table Check Asset Management EN

	
	#valueTable
	@{valArrDataTable}=    Create List	
	FOR    ${i}    IN RANGE    ${rowcountSearchAssetManagement}   
		#((11, 7, 'เทส', 'test', 'remark', 1, datetime.datetime(2021, 10, 15, 18, 1, 4), '10', datetime.datetime(2021, 10, 18, 13, 21, 6), '10', None, None),)
        # UI mapping field Status 1 = "ใช้งาน" หรือ​ "Active", 0= "ไม่ใช้งาน" หรือ "Inactive"
		${statusTH}=    Set Variable If    '${dataSearchAssetManagement[${i}][5]}'=='0'    ${DEFAULT_LBL_STATUS_INACTIVE_TH}
		...    '${dataSearchAssetManagement[${i}][5]}'=='1'    ${DEFAULT_LBL_STATUS_ACTIVE_TH}
		${statusEN}=    Set Variable If    '${dataSearchAssetManagement[${i}][5]}'=='0'    ${DEFAULT_LBL_STATUS_INACTIVE_EN}
		...    '${dataSearchAssetManagement[${i}][5]}'=='1'    ${DEFAULT_LBL_STATUS_ACTIVE_EN}
		${status}=    Set Variable If    '${type}'=='${DEFAULT_TH}'    ${statusTH}
		...    '${type}'=='${DEFAULT_EN}'    ${statusEN}

        ${AssetManagementName}=    Set Variable If    '${type}'=='${DEFAULT_TH}'    ${dataSearchAssetManagement[${i}][2]}
		...    '${type}'=='${DEFAULT_EN}'    ${dataSearchAssetManagement[${i}][3]}
		Log To Console    AssetManagementName::${AssetManagementName}    
		${Remark}=    Set Variable    ${dataSearchAssetManagement[${i}][4]}


        ${no}=    Convert To String    ${i+1}
        ${data}=    Evaluate    {"no":"${no}", "assetname":"${AssetManagementName}", "remark":"${Remark}", "status":"${status}"}        #Add data to array set at valArrData
		Log To Console    Data : : : : ${data}
        Append To List    ${valArrDataTable}    ${data} 
        
        Check Value Table    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${i}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
	# Exit For Loop
	END




Request Verify DB Check Data Create Asset Management
    [Arguments]      ${type}    ${assetnameth}    ${assetnameen}    ${remark}    ${status}   
    
	Log To Console    ${\n}=========== Start DB : [Create Asset Management] =============== 
	# ${DB_SELECTSTATEMENT_CHECKCREATE_CHECKASSETMANAGEMENT}    SELECT * FROM check_asset WHERE account_id = [accountId] AND deleted_at IS NULL

	${convertStrAccountId}=    Convert To String    ${accountId}

	${selectStatementAssetManagement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKCREATE_CHECKASSETMANAGEMENT}    [accountId]    ${convertStrAccountId}
	Log To Console    [check_asset : resultQuery] : ${selectStatementAssetManagement}

	#[(), 0]
    # queryResults,rowCount
    @{resultAssetManagement}=    Start Connect To MySql Query All List    ${selectStatementAssetManagement}    ${selectStatementAssetManagement}
	Log To Console    [check_asset] Request Verify DB Check Data Create Asset Management : ${resultAssetManagement}
	${dataResultAssetManagement}=    Set Variable    ${resultAssetManagement}[0]
	Log To Console    [result : check_asset] : ${dataResultAssetManagement}
	${rowCountAssetManagement}=    Set Variable    ${resultAssetManagement}[1]
	Log To Console    [rowCount : check_asset] : ${rowCountAssetManagement}

    Log To Console    [result : check_asset] : ${dataResultAssetManagement}[0][0]
    ${id}=    Convert To String    ${dataResultAssetManagement}[0][0]
	Log To Console    Check Id AssetManagement : :${id}
	Set Global Variable    ${AssetManagementId}    ${id}
	Log To Console    AssetManagement ID: :${AssetManagementId}    

	Log To Console    Test Index 1 :${dataResultAssetManagement}[0][1]   
	Log To Console    Test Index 2 :${dataResultAssetManagement}[0][2] 
	Log To Console    Test Index 3 :${dataResultAssetManagement}[0][3] 
	Log To Console    Test Index 4 :${dataResultAssetManagement}[0][4] 
	Log To Console    Test Index 5 :${dataResultAssetManagement}[0][5] 
	Log To Console    Test Index 6 :${dataResultAssetManagement}[0][6]
	Log To Console    Test Index 7 :${dataResultAssetManagement}[0][7]
	Log To Console    Test Index 8 :${dataResultAssetManagement}[0][8]
	Log To Console    Test Index 9 :${dataResultAssetManagement}[0][9]
	Log To Console    Test Index 10 :${dataResultAssetManagement}[0][10]
	Log To Console    Test Index 11 :${dataResultAssetManagement}[0][11]  
  


	${created_at}=    Convert To String    ${dataResultAssetManagement}[0][6]
	${created_by}=    Convert To String    ${dataResultAssetManagement}[0][7]
	${updated_at}=    Convert To String    ${dataResultAssetManagement}[0][8]
	${updated_by}=    Convert To String    ${dataResultAssetManagement}[0][9]
	${deleted_at}=    Convert To String    ${dataResultAssetManagement}[0][10]
	${deleted_by}=    Convert To String    ${dataResultAssetManagement}[0][11]
	${accountId}=    Convert To String    ${accountId}
	${status}=    Convert To String    ${status}
	${remark}=    Convert To String    ${remark}
	${assetnameen}=    Convert To String    ${assetnameen}
    # Log To Console    [result : created_at] : ${created_at}

	# 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # Log To Console    dateCreatedAt : ${dateCreatedAt}
	
	# ((26, 7, 'อย่างสีเหลือง', 'Yellow', 'หมายเหตุ และ อื่นๆ', 1, datetime.datetime(2021, 10, 21, 17, 23, 31), '10', None, None, None, None),)
	# (([id], [account_id], '[name_th]', '[name_en]', '[remark]', [status], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by]),)
	
	${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_CREATE_ALLFIELD}'    ${DB_SELECTSTATEMENT_CHECKCREATE_ALLFIELD_CHECKASSETMANAGEMENT_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_CREATE_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_CHECKCREATE_REQUIREFIELD_CHECKASSETMANAGEMENT_VALUE}
    
	${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
	${resultDB}=    Replace String    ${resultDB}    [account_id]    ${accountId}
	${resultDB}=    Replace String    ${resultDB}    [name_th]    ${assetnameth}
	${resultDB}=    Replace String    ${resultDB}    [name_en]    ${assetnameen}
	${resultDB}=    Replace String    ${resultDB}    [remark]    ${remark}
	${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
	${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
	${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
	${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${updated_at}
	${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
	${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
	${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}
	${strResult}=    Convert To String    ${dataResultAssetManagement}
	Log To Console    [resultDB] : ${resultDB}

	Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Create AssetManagement

	Log To Console    ${\n}=========== End DB : [Create AssetManagement] =============== 



Request Verify DB Check Data Edit Asset Management
    [Arguments]      ${type}    ${assetnameth}    ${assetnameen}    ${remark}    ${status}   
    
	Log To Console    ${\n}=========== Start DB : [Create Asset Management] =============== 
	# ${DB_SELECTSTATEMENT_CHECKCREATE_CHECKASSETMANAGEMENT}    SELECT * FROM check_asset WHERE account_id = [accountId] AND deleted_at IS NULL

	${convertStrAccountId}=    Convert To String    ${accountId}

	${selectStatementAssetManagement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKEDIT_CHECKASSETMANAGEMENT}    [accountId]    ${convertStrAccountId}
	${selectStatementAssetManagement}=    Replace String    ${selectStatementAssetManagement}    [idAssetManagement]    ${AssetManagementId}
	Log To Console    [check_asset : resultQuery] : ${selectStatementAssetManagement}

	#[(), 0]
    # queryResults,rowCount
    @{resultAssetManagement}=    Start Connect To MySql Query All List    ${selectStatementAssetManagement}    ${selectStatementAssetManagement}
	Log To Console    [check_asset] Request Verify DB Check Data Create Asset Management : ${resultAssetManagement}
	${dataResultAssetManagement}=    Set Variable    ${resultAssetManagement}[0]
	Log To Console    [result : check_asset] : ${dataResultAssetManagement}
	${rowCountAssetManagement}=    Set Variable    ${resultAssetManagement}[1]
	Log To Console    [rowCount : check_asset] : ${rowCountAssetManagement}

    Log To Console    [result : check_asset] : ${dataResultAssetManagement}[0][0]
    ${id}=    Convert To String    ${dataResultAssetManagement}[0][0]
	Log To Console    Check Id AssetManagement : :${id}
  


	${created_at}=    Convert To String    ${dataResultAssetManagement}[0][6]
	${created_by}=    Convert To String    ${dataResultAssetManagement}[0][7]
	${updated_at}=    Convert To String    ${dataResultAssetManagement}[0][8]
	${updated_by}=    Convert To String    ${dataResultAssetManagement}[0][9]
	${deleted_at}=    Convert To String    ${dataResultAssetManagement}[0][10]
	${deleted_by}=    Convert To String    ${dataResultAssetManagement}[0][11]
	${accountId}=    Convert To String    ${accountId}
	${status}=    Convert To String    ${status}
	${remark}=    Convert To String    ${remark}
	${assetnameen}=    Convert To String    ${assetnameen}
    # Log To Console    [result : created_at] : ${created_at}

	# 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
	${dateUpdatedAt}=    Convert Format Date DB    ${updated_at}
    # Log To Console    dateCreatedAt : ${dateCreatedAt}
	
	# ((50, 7, 'เทสดูสิ', None, None, 1, datetime.datetime(2021, 10, 28, 15, 45, 19), '10', datetime.datetime(2021, 10, 28, 15, 45, 26), '10', None, None),)
	# (([id], [account_id], '[name_th]', '[name_en]', '[remark]', [status], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by]),)
	
	${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_EDIT_ALLFIELD}'    ${DB_SELECTSTATEMENT_CHECKEDIT_ALLFIELD_CHECKASSETMANAGEMENT_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_EDIT_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_CHECKEDIT_REQUIREFIELD_CHECKASSETMANAGEMENT_VALUE}
    
	${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
	${resultDB}=    Replace String    ${resultDB}    [account_id]    ${accountId}
	${resultDB}=    Replace String    ${resultDB}    [name_th]    ${assetnameth}
	${resultDB}=    Replace String    ${resultDB}    [name_en]    ${assetnameen}
	${resultDB}=    Replace String    ${resultDB}    [remark]    ${remark}
	${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
	${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
	${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
	${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${dateUpdatedAt}
	${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
	${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
	${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}
	${strResult}=    Convert To String    ${dataResultAssetManagement}
	Log To Console    [resultDB] : ${resultDB}

	Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Create AssetManagement

	Log To Console    ${\n}=========== End DB : [Create AssetManagement] =============== 

	



################################################################-- Update tb check_asset set delete_at--################################################################
Update tb check_asset set delete_at

    [Arguments]    ${AssetManagementId}    ${deleted_at}    ${namefile}
	Log To Console    ${\n}=========== Start DB : [Update tb check_asset set delete_at - check_asset] =============== 
	#${DB_UPDATESTATEMENT_USERROLE_USERID_DELETEDAT}    UPDATE check_asset SET deleted_at = [deleted_at] WHERE user_Id = [userId]

	${selectStatementCheckAsset}=    Replace String    ${DB_UPDATESTATEMENT_CHECKASSET_DELETEDAT}    [AssetManagementId]    ${AssetManagementId}
	${selectStatementCheckAsset}=    Replace String    ${selectStatementCheckAsset}    [deleted_at]    ${deleted_at}
	Log To Console    [check_asset : resultQuery] : ${selectStatementCheckAsset}

    Create File    ./${namefile}	${selectStatementCheckAsset}
	
    ${resultCheckAsset}=    Start Connect To MySql Execute Sql Script    ${namefile}
	Log To Console    [check_asset] Update tb check_asset set delete_at : ${resultCheckAsset}
	Log To Console    [result : check_asset] : ${resultCheckAsset}
	Remove File    ./${namefile}

	Log To Console    ${\n}=========== End DB : [Update tb check_asset set delete_at - check_asset] =============== 