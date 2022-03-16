*** Keywords ***
Request Verify DB Check Data Search Repair Equipment
    [Arguments]      ${type}    ${deviceName}    ${status}    ${limit}    ${offset}    ${orderBy}
    
	Log To Console    ${\n}=========== Start DB : [Search Repair Equipment] =============== 
	#SELECT * FROM repair_equipment WHERE (equipment_name_th LIKE '%req.repairEquimentName%' OR equipment_name_en LIKE '%req.repairEquimentName%') AND status = req.status AND account_id = req.accountId AND deleted_at IS null orderby req.orderBy limit req.limit offset req.offset

    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_SEARCHLISTALL}'    ${DB_SELECTSTATEMENT_REPAIREQUIPMENT_SEARCH_LISTALL}
    ...    '${type}'=='${MYSQL_TYPE_REPAIREQUIPMENT_SEARCH_ALL}'    ${DB_SELECTSTATEMENT_REPAIREQUIPMENT_SEARCH_SEAECHALL}
    ...    '${type}'=='${MYSQL_TYPE_REPAIREQUIPMENT_SEARCH_DEVICENAME}'    ${DB_SELECTSTATEMENT_REPAIREQUIPMENT_SEARCH_DEVICENAME}
    ...    '${type}'=='${MYSQL_TYPE_REPAIREQUIPMENT_SEARCH_STATUS}'    ${DB_SELECTSTATEMENT_REPAIREQUIPMENT_SEARCH_STATUS}
    
	${convertStrAccountId}=    Convert To String    ${accountId}

    # Data
	${replaceAccountId}=    Replace String    ${valueReplace}    [accountId]    ${convertStrAccountId}
	${replaceDeviceTH}=    Replace String    ${replaceAccountId}    [repairEquimentName]    ${deviceName}
	${replaceDeviceEN}=    Replace String    ${replaceDeviceTH}    [repairEquimentName]    ${deviceName}
	${replaceStatus}=    Replace String    ${replaceDeviceEN}    [status]    ${status}
    ${replaceLimit}=    Replace String    ${replaceStatus}    [limit]    ${limit}
	${replaceOffset}=    Replace String    ${replaceLimit}    [offset]    ${offset}
	${selectStatementRepairEquipment}=    Replace String    ${replaceOffset}    [orderBy]    ${orderBy}
	Log To Console    [repair_equipment : resultQuery] : ${selectStatementRepairEquipment}

    # Rowcount
    ${valueReplaceRowcount}=    Set Variable If    '${type}'=='${MYSQL_TYPE_SEARCHLISTALL}'    ${DB_SELECTSTATEMENT_REPAIREQUIPMENT_SEARCH_LISTALL_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_REPAIREQUIPMENT_SEARCH_ALL}'    ${DB_SELECTSTATEMENT_REPAIREQUIPMENT_SEARCH_SEAECHALL_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_REPAIREQUIPMENT_SEARCH_DEVICENAME}'    ${DB_SELECTSTATEMENT_REPAIREQUIPMENT_SEARCH_DEVICENAME_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_REPAIREQUIPMENT_SEARCH_STATUS}'    ${DB_SELECTSTATEMENT_REPAIREQUIPMENT_SEARCH_STATUS_ROWCOUNT}
    
	${replaceRowcount}=    Replace String    ${valueReplaceRowcount}    [accountId]    ${convertStrAccountId}
	${replaceRowcount}=    Replace String    ${replaceRowcount}    [repairEquimentName]    ${deviceName}
	${replaceRowcount}=    Replace String    ${replaceRowcount}    [status]    ${status}
	${selectStatementRepairEquipmentRowcount}=    Replace String    ${replaceRowcount}    [orderBy]    ${orderBy}

	#[(), 0]
    # queryResults,rowCount
    @{resultRepairEquipment}=    Start Connect To MySql Query All List    ${selectStatementRepairEquipment}    ${selectStatementRepairEquipmentRowcount}
	Log To Console    [repair_equipment] Request Verify DB Check Data Login : ${resultRepairEquipment}
	${dataResultRepairEquipment}=    Set Variable    ${resultRepairEquipment}[0]
	Log To Console    [result : repair_equipment] : ${dataResultRepairEquipment}
	${rowCountRepairEquipment}=    Set Variable    ${resultRepairEquipment}[1]
	Log To Console    [rowCount : repair_equipment] : ${rowCountRepairEquipment}
    
	Log To Console    ${\n}=========== End DB : [Search Repair Equipment] =============== 
	[Return]    ${dataResultRepairEquipment}    ${rowCountRepairEquipment}

Check Value Table Search Repair Equipment
    [Arguments]    ${type}    ${rowcountSearchRepairEquipment}    ${dataSearchRepairEquipment}

	${setData}=    Run Keyword If    '${type}'=='${DEFAULT_TH}'    Set Data for check value table Repair Equipment Management
	...    ELSE IF    '${type}'=='${DEFAULT_EN}'    Set Data for check value table Repair Equipment Management EN

	#valueTable
	@{valArrDataTable}=    Create List	
	FOR    ${i}    IN RANGE    ${rowcountSearchRepairEquipment}
    #  ((55, 'อ่างล้างหน้า', 'Wash basin', 'อ่างล้างหน้าชำรุด', 1, datetime.datetime(2021, 10, 21, 20, 30, 3), '10', None, None, None, None, 7),)
    
        ${deviceNameTH}=    Set Variable    ${dataSearchRepairEquipment[${i}][1]}  
		${deviceNameEN}=    Set Variable    ${dataSearchRepairEquipment[${i}][2]}
		${remark}=    Set Variable    ${dataSearchRepairEquipment[${i}][3]}

        # UI mapping field status 0=ไม่ใช้งาน , 1 = ใช้งาน , 0=Inactive , 1 = Active
		${statusTH}=    Set Variable If    '${dataSearchRepairEquipment[${i}][4]}'=='0'    ${DEFAULT_LBL_STATUS_INACTIVE_TH}
		...    '${dataSearchRepairEquipment[${i}][4]}'=='1'    ${DEFAULT_LBL_STATUS_ACTIVE_TH}
		${statusEN}=    Set Variable If    '${dataSearchRepairEquipment[${i}][4]}'=='0'    ${DEFAULT_LBL_STATUS_INACTIVE_EN}
		...    '${dataSearchRepairEquipment[${i}][4]}'=='1'    ${DEFAULT_LBL_STATUS_ACTIVE_EN}
		${status}=    Set Variable If    '${type}'=='${DEFAULT_TH}'    ${statusTH}
		...    '${type}'=='${DEFAULT_EN}'    ${statusEN}

        ${no}=    Convert To String    ${i+1}
        ${data}=    Evaluate    {"no":"${no}", "deviceNameTH":"${deviceNameTH}", "deviceNameEN":"${deviceNameEN}", "remark":"${remark}", "status":"${status}"}
        Append To List    ${valArrDataTable}    ${data} 

        Check Value Table    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${i}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
	END


Request Verify DB Check Data Create Repair Equipment
    [Arguments]      ${type}    ${deviceNameTH}    ${deviceNameEN}    ${remark}    ${status}   
    
	Log To Console    ${\n}=========== Start DB : [Create Repair Equipment] =============== 
	# ${DB_SELECTSTATEMENT_CHECKCREATE_CHECKASSETMANAGEMENT}    SELECT * FROM check_asset WHERE account_id = [accountId] AND deleted_at IS NULL

	${convertStrAccountId}=    Convert To String    ${accountId}

	${selectStatementRepairEquipment}=    Replace String    ${DB_SELECTSTATEMENT_REPAIREQUIPMENT_CHECKCREATE}    [accountId]    ${convertStrAccountId}
	Log To Console    [Repair Equipment : resultQuery] : ${selectStatementRepairEquipment}

	#[(), 0]
    # queryResults,rowCount
    @{resultRepairEquipment}=    Start Connect To MySql Query All List    ${selectStatementRepairEquipment}    ${selectStatementRepairEquipment}
	Log To Console    [Repair Equipment] Request Verify DB Check Data Create Repair Equipment : ${resultRepairEquipment}
	${dataResultRepairEquipment}=    Set Variable    ${resultRepairEquipment}[0]
	Log To Console    [result : Repair Equipment] : ${dataResultRepairEquipment}
	${rowCountRepairEquipment}=    Set Variable    ${resultRepairEquipment}[1]
	Log To Console    [rowCount : Repair Equipment] : ${rowCountRepairEquipment}

    Log To Console    [result : Repair Equipment] : ${dataResultRepairEquipment}[0][0]
    ${id}=    Convert To String    ${dataResultRepairEquipment}[0][0]
	Log To Console    Check Id RepairEquipment : :${id}
	Set Global Variable    ${RepairEquipmentId}    ${id}
	Log To Console    RepairEquipment ID: :${RepairEquipmentId}    

	${accountId}=    Convert To String    ${accountId}
	${status}=    Convert To String    ${status}
	${remark}=    Convert To String    ${remark}
	${deviceNameTH}=    Convert To String    ${deviceNameTH}
	${deviceNameEN}=    Convert To String    ${deviceNameEN}
	${created_at}=    Convert To String    ${dataResultRepairEquipment}[0][5]
	${created_by}=    Convert To String    ${dataResultRepairEquipment}[0][6]
	${updated_at}=    Convert To String    ${dataResultRepairEquipment}[0][7]
	${updated_by}=    Convert To String    ${dataResultRepairEquipment}[0][8]
	${deleted_at}=    Convert To String    ${dataResultRepairEquipment}[0][9]
	${deleted_by}=    Convert To String    ${dataResultRepairEquipment}[0][10]

    # Log To Console    [result : created_at] : ${created_at}

	# # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # # Log To Console    dateCreatedAt : ${dateCreatedAt}
	
	# # ((172, 'อ่างล้างหน้า', 'Wash basin', 'อ่างล้างหน้าชำรุด', 1, datetime.datetime(2022, 2, 1, 14, 43, 33), '10', None, None, None, None, 7),)
	# # (([id], '[equipment_name_th]', '[equipment_name_en]', '[equipment_note]', [status], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [account_id]),)
	
	${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_CREATE_ALLFIELD}'    ${DB_SELECTSTATEMENT_REPAIREQUIPMENT_CHECKCREATE_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_CREATE_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_REPAIREQUIPMENT_CHECKCREATE_REQUIREDFIELD_VALUE}
    
	${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
	${resultDB}=    Replace String    ${resultDB}    [equipment_name_th]    ${deviceNameTH}
	${resultDB}=    Replace String    ${resultDB}    [equipment_name_en]    ${deviceNameEN}
	${resultDB}=    Replace String    ${resultDB}    [equipment_note]    ${remark}
	${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
	${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
	${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
	${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${updated_at}
	${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
	${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
	${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}
	${resultDB}=    Replace String    ${resultDB}    [account_id]    ${accountId}
	${strResult}=    Convert To String    ${dataResultRepairEquipment}
	Log To Console    [resultDB] : ${resultDB}

	Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Create RepairEquipment

	Log To Console    ${\n}=========== End DB : [Create RepairEquipment] ===============


Request Verify DB Check Data Edit Repair Equipment
    [Arguments]      ${type}    ${deviceNameTH}    ${deviceNameEN}    ${remark}    ${status}   
    
	Log To Console    ${\n}=========== Start DB : [Edit Repair Equipment] =============== 
	

	${convertStrAccountId}=    Convert To String    ${accountId}

	${selectStatementRepairEquipment}=    Replace String    ${DB_SELECTSTATEMENT_REPAIREQUIPMENT_CHECKEDIT}    [accountId]    ${convertStrAccountId}
	${selectStatementRepairEquipment}=    Replace String    ${selectStatementRepairEquipment}    [repairEquipmentId]    ${RepairEquipmentId}
	Log To Console    [Repair Equipment : resultQuery] : ${selectStatementRepairEquipment}

	#[(), 0]
    # queryResults,rowCount
    @{resultRepairEquipment}=    Start Connect To MySql Query All List    ${selectStatementRepairEquipment}    ${selectStatementRepairEquipment}
	Log To Console    [Repair Equipment] Request Verify DB Check Data Edit Repair Equipment : ${resultRepairEquipment}
	${dataResultRepairEquipment}=    Set Variable    ${resultRepairEquipment}[0]
	Log To Console    [result : Repair Equipment] : ${dataResultRepairEquipment}
	${rowCountRepairEquipment}=    Set Variable    ${resultRepairEquipment}[1]
	Log To Console    [rowCount : Repair Equipment] : ${rowCountRepairEquipment}

    Log To Console    [result : Repair Equipment] : ${dataResultRepairEquipment}[0][0]
    ${id}=    Convert To String    ${dataResultRepairEquipment}[0][0]
	Log To Console    Check Id RepairEquipment : :${id}
	# Set Global Variable    ${RepairEquipmentId}    ${id}
	# Log To Console    RepairEquipment ID: :${RepairEquipmentId}    

	${accountId}=    Convert To String    ${accountId}
	${status}=    Convert To String    ${status}
	${remark}=    Convert To String    ${remark}
	${deviceNameTH}=    Convert To String    ${deviceNameTH}
	${deviceNameEN}=    Convert To String    ${deviceNameEN}
	${created_at}=    Convert To String    ${dataResultRepairEquipment}[0][5]
	${created_by}=    Convert To String    ${dataResultRepairEquipment}[0][6]
	${updated_at}=    Convert To String    ${dataResultRepairEquipment}[0][7]
	${updated_by}=    Convert To String    ${dataResultRepairEquipment}[0][8]
	${deleted_at}=    Convert To String    ${dataResultRepairEquipment}[0][9]
	${deleted_by}=    Convert To String    ${dataResultRepairEquipment}[0][10]

    # Log To Console    [result : created_at] : ${created_at}

	# # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
	${dateUpdatedAt}=    Convert Format Date DB    ${updated_at}
    # # Log To Console    dateEditdAt : ${dateEditdAt}
	
	# # ((198, 'ก๊อกน้ำ', 'Hydrant', 'ก๊อกน้ำชำรุด', 1, datetime.datetime(2022, 2, 3, 15, 27, 45), '10', datetime.datetime(2022, 2, 3, 15, 27, 56), '10', None, None, 7),)
	# # (([id], '[equipment_name_th]', '[equipment_name_en]', '[equipment_note]', [status], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', [deleted_at], [deleted_by], [account_id]),)
	
	${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_EDIT_ALLFIELD}'    ${DB_SELECTSTATEMENT_REPAIREQUIPMENT_CHECKEDIT_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_EDIT_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_REPAIREQUIPMENT_CHECKEDIT_REQUIREDFIELD_VALUE}
    
	${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
	${resultDB}=    Replace String    ${resultDB}    [equipment_name_th]    ${deviceNameTH}
	${resultDB}=    Replace String    ${resultDB}    [equipment_name_en]    ${deviceNameEN}
	${resultDB}=    Replace String    ${resultDB}    [equipment_note]    ${remark}
	${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
	${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
	${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
	${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${dateUpdatedAt}
	${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
	${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
	${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}
	${resultDB}=    Replace String    ${resultDB}    [account_id]    ${accountId}
	${strResult}=    Convert To String    ${dataResultRepairEquipment}
	Log To Console    [resultDB] : ${resultDB}

	Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Edit RepairEquipment

	Log To Console    ${\n}=========== End DB : [Edit RepairEquipment] ===============


Request Verify DB Check Data Delete Repair Equipment
    [Arguments]      ${type}    ${deviceNameTH}    ${deviceNameEN}    ${remark}    ${status}   
    
	Log To Console    ${\n}=========== Start DB : [Delete Repair Equipment] =============== 
	# ${DB_SELECTSTATEMENT_REPAIREQUIPMENT_CHECKDELETE}    SELECT * FROM repair_equipment WHERE account_id = [accountId] AND id = [repairEquipmentId]

	${convertStrAccountId}=    Convert To String    ${accountId}

	${selectStatementRepairEquipment}=    Replace String    ${DB_SELECTSTATEMENT_REPAIREQUIPMENT_CHECKDELETE}    [accountId]    ${convertStrAccountId}
	${selectStatementRepairEquipment}=    Replace String    ${selectStatementRepairEquipment}    [repairEquipmentId]    ${RepairEquipmentId}
	Log To Console    [Repair Equipment : resultQuery] : ${selectStatementRepairEquipment}

	#[(), 0]
    # queryResults,rowCount
    @{resultRepairEquipment}=    Start Connect To MySql Query All List    ${selectStatementRepairEquipment}    ${selectStatementRepairEquipment}
	Log To Console    [Repair Equipment] Request Verify DB Check Data Delete Repair Equipment : ${resultRepairEquipment}
	${dataResultRepairEquipment}=    Set Variable    ${resultRepairEquipment}[0]
	Log To Console    [result : Repair Equipment] : ${dataResultRepairEquipment}
	${rowCountRepairEquipment}=    Set Variable    ${resultRepairEquipment}[1]
	Log To Console    [rowCount : Repair Equipment] : ${rowCountRepairEquipment}

    Log To Console    [result : Repair Equipment] : ${dataResultRepairEquipment}[0][0]
    ${id}=    Convert To String    ${dataResultRepairEquipment}[0][0]
	Log To Console    Check Id RepairEquipment : :${id}
	# # Set Global Variable    ${RepairEquipmentId}    ${id}
	# # Log To Console    RepairEquipment ID: :${RepairEquipmentId}    

	${accountId}=    Convert To String    ${accountId}
	${status}=    Convert To String    ${status}
	${remark}=    Convert To String    ${remark}
	${deviceNameTH}=    Convert To String    ${deviceNameTH}
	${deviceNameEN}=    Convert To String    ${deviceNameEN}
	${created_at}=    Convert To String    ${dataResultRepairEquipment}[0][5]
	${created_by}=    Convert To String    ${dataResultRepairEquipment}[0][6]
	${updated_at}=    Convert To String    ${dataResultRepairEquipment}[0][7]
	${updated_by}=    Convert To String    ${dataResultRepairEquipment}[0][8]
	${deleted_at}=    Convert To String    ${dataResultRepairEquipment}[0][9]
	${deleted_by}=    Convert To String    ${dataResultRepairEquipment}[0][10]

    # Log To Console    [result : created_at] : ${created_at}

	# # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
	${dateUpdatedAt}=    Convert Format Date DB    ${updated_at}
	${dateDeletedAt}=    Convert Format Date DB    ${deleted_at}
    # # Log To Console    dateEditdAt : ${dateEditdAt}
	
	# # ((247, 'อ่างล้างหน้า', 'Wash basin', 'อ่างล้างหน้าชำรุด', 1, datetime.datetime(2022, 2, 4, 19, 3, 19), '10', datetime.datetime(2022, 2, 4, 19, 3, 31), '10', datetime.datetime(2022, 2, 4, 19, 3, 31), '10', 7),)
	# # (([id], '[equipment_name_th]', '[equipment_name_en]', '[equipment_note]', [status], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', [deleted_at], [deleted_by], [account_id]),)
	
	${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_DELETE_ALLFIELD}'    ${DB_SELECTSTATEMENT_REPAIREQUIPMENT_CHECKDELETE_ALLFIELD_VALUE}

	${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
	${resultDB}=    Replace String    ${resultDB}    [equipment_name_th]    ${deviceNameTH}
	${resultDB}=    Replace String    ${resultDB}    [equipment_name_en]    ${deviceNameEN}
	${resultDB}=    Replace String    ${resultDB}    [equipment_note]    ${remark}
	${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
	${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
	${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
	${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${dateUpdatedAt}
	${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
	${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${dateDeletedAt}
	${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}
	${resultDB}=    Replace String    ${resultDB}    [account_id]    ${accountId}
	${strResult}=    Convert To String    ${dataResultRepairEquipment}
	Log To Console    [resultDB] : ${resultDB}

	Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Delete RepairEquipment

	Log To Console    ${\n}=========== End DB : [Delete RepairEquipment] ===============