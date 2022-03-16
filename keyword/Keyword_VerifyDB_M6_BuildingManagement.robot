*** Keywords ***
Request Verify DB Check Data Search BuildingManagement
    [Arguments]      ${type}    ${propertyId}    ${name}    ${limit}    ${offset}    ${orderBy}
    
    Log To Console    ${\n}=========== Start DB : [Search BuildingManagement] =============== 
    # ${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_SEARCH_LISTALL}    SELECT * FROM buildings WHERE property_id = [propertyId] and account_id = [accountId] AND deleted_at IS NULL order by [orderBy] limit [limit] offset [offset]
    # ${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_SEARCH_NAME}    SELECT * FROM buildings WHERE (building_name_th LIKE '%[name]%' OR building_name_en LIKE '%[name]%') AND property_id = [propertyId] and account_id = [accountId] AND deleted_at IS NULL order by [orderBy] limit [limit] offset [offset]
   
    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_SEARCHLISTALL}'    ${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_SEARCH_LISTALL}
    ...    '${type}'=='${MYSQL_TYPE_BUILDINGMANAGEMENT_SEARCH_NAME}'    ${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_SEARCH_NAME}

    ${convertStrAccountId}=    Convert To String    ${accountId}
    ${convertStrPropertyId}=    Convert To String    ${propertyId}

    # Data
    ${selectStatement}=    Replace String    ${valueReplace}    [accountId]    ${convertStrAccountId}
    ${selectStatement}=    Replace String    ${selectStatement}    [propertyId]    ${convertStrPropertyId}
    ${selectStatement}=    Replace String    ${selectStatement}    [name]    ${name}
    ${selectStatement}=    Replace String    ${selectStatement}    [limit]    ${limit}
    ${selectStatement}=    Replace String    ${selectStatement}    [offset]    ${offset}
    ${selectStatement}=    Replace String    ${selectStatement}    [orderBy]    ${orderBy}
    Log To Console    [income_code : resultQuery] : ${selectStatement}

    # Rowcount
    ${valueReplaceRowcount}=    Set Variable If    '${type}'=='${MYSQL_TYPE_SEARCHLISTALL}'    ${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_SEARCH_LISTALL_ROWCOUNT}
    ...    '${type}'=='${MYSQL_TYPE_BUILDINGMANAGEMENT_SEARCH_NAME}'    ${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_SEARCH_NAME_ROWCOUNT}

    ${replaceRowcount}=    Replace String    ${valueReplaceRowcount}    [accountId]    ${convertStrAccountId}
    ${replaceRowcount}=    Replace String    ${replaceRowcount}    [propertyId]    ${convertStrPropertyId}
    ${replaceRowcount}=    Replace String    ${replaceRowcount}    [name]    ${name}
    ${selectStatementRowcount}=    Replace String    ${replaceRowcount}    [orderBy]    ${orderBy}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatementRowcount}
    Log To Console    [income_code] Request Verify DB Check Data Search BuildingManagement : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : income_code] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : income_code] : ${rowCount}
    
    Log To Console    ${\n}=========== End DB : [Search BuildingManagement] =============== 
    [Return]    ${dataResult}    ${rowCount}

Check Value Table Search BuildingManagement
    [Arguments]    ${type}    ${rowcountSearchBuildingManagement}    ${dataSearchBuildingManagement}

    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Run Keyword If    '${type}'=='${DEFAULT_TH}'    Set Data for check value table BuildingManagement
    ...    ELSE IF    '${type}'=='${DEFAULT_EN}'    Set Data for check value table BuildingManagement EN

    #valueTable
    @{valArrDataTable}=    Create List    
    FOR    ${i}    IN RANGE    ${rowcountSearchBuildingManagement}
    #  [((39, 9, 'SmartRmsCondo A', 'SmartRmsCondo A', None, None, datetime.datetime(2021, 9, 6, 8, 56, 31), '10', None, None, None, None, 7),), 1]

        
        ${buildingNameTh}=    Set Variable    ${dataSearchBuildingManagement[${i}][2]}
        ${buildingNameEn}=    Set Variable If    '${dataSearchBuildingManagement[${i}][3]}'=='${NONE}'    ${dataSearchBuildingManagement[${i}][2]}
        ...    ${dataSearchBuildingManagement[${i}][3]}
        # ${phone}=    Convert To String    ${dataSearchBuildingManagement[${i}][4]}
        ${phone}=    Set Variable If    '${dataSearchBuildingManagement[${i}][4]}'==''    ${NONE}
        ...    ${dataSearchBuildingManagement[${i}][4]}
        Log To Console    [phone] : ${phone}${dataSearchBuildingManagement[${i}][4]}
        ${remark}=    Set Variable    ${dataSearchBuildingManagement[${i}][5]}
        
        # Log To Console    [banknameTh] : ${banknameTh}
        ${no}=    Convert To String    ${i+1}
        ${data}=    Evaluate    {"no":"${no}", "buildingNameTh":"${buildingNameTh}", "buildingNameEn":"${buildingNameEn}","phone":"${phone}"}
        Append To List    ${valArrDataTable}    ${data} 
        Log To Console    [valArrDataTable] : ${data}

        Check Value Table    ${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${i}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    # Exit For Loop
    END

Request Verify DB Check Data Create BuildingManagement
    [Arguments]      ${type}    ${nameTh}    ${nameEn}    ${incomecode}    ${vat}    ${tax}    ${remark}    ${status}    ${groupTypeId}    ${mulctCodeId}    ${calculationMethodId}    ${priceUnit}    ${minimumUnit}    ${minimumPrice}    ${index}
  
    Log To Console    ${\n}=========== Start DB : [Create BuildingManagement] =============== 
    # ${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_CHECKCREATE}    SELECT * FROM income_code WHERE name = "[name]" AND deleted_at IS NULL

    ${convertStrAccountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_CHECKCREATE}    [name]    ${nameTh}
    Log To Console    [income_code : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [income_code] Request Verify DB Check Data Create BuildingManagement : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : income_code] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    # Log To Console    [rowCount : income_code] : ${rowCount}

    # Log To Console    [result : income_code] : ${dataResult}[0][0]
    ${id}=    Convert To String    ${dataResult}[0][0]
    Set Global Variable    ${incomeCodeId}    ${id}
    ${created_at}=    Convert To String    ${dataResult}[0][19]
    ${created_by}=    Convert To String    ${dataResult}[0][20]
    ${updated_at}=    Convert To String    ${dataResult}[0][21]
    ${updated_by}=    Convert To String    ${dataResult}[0][22]
    ${deleted_at}=    Convert To String    ${dataResult}[0][23]
    ${deleted_by}=    Convert To String    ${dataResult}[0][24]
    ${accountId}=    Convert To String    ${accountId}
    ${mulctCodeId}=    Convert To String    ${mulctCodeId}
    ${status}=    Convert To String    ${status}
    ${groupTypeId}=    Convert To String    ${groupTypeId}
    ${incomecode}=    Convert To String    ${incomecode}
    ${vat}=    Convert To String    ${vat}
    ${tax}=    Convert To String    ${tax}
    ${calculationMethodId}=    Convert To String    ${calculationMethodId}
    ${priceUnit}=    Convert To String    ${priceUnit}
    ${minimumUnit}=    Convert To String    ${minimumUnit}
    ${minimumPrice}=    Convert To String    ${minimumPrice}
    ${calculationDateFrom}=    Convert To String    ${dataResult}[0][7]
    ${groupcalculateMulctFlagTypeId}=    Convert To String    ${dataResult}[0][8]
    ${isCalculateCommonFee}=    Convert To String    ${dataResult}[0][9]
    ${calculationTime}=    Convert To String    ${dataResult}[0][16]
    ${index}=    Convert To String    ${index}
    # Log To Console    [result : created_at] : ${created_at}

    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # Log To Console    dateCreatedAt : ${dateCreatedAt}
    
    # ((54, 7, None, 1, Decimal('3.00'), None, None, None, 0, None, 'รหัสรายได้', 'ชื่อรายได้ ภาษาไทย', 'ชื่อรายได้ ภาษาอังกฤษ', 'หมายเหตุ1', Decimal('1.00'), Decimal('2.00'), 7, 1, 1, datetime.datetime(2021, 11, 25, 17, 49, 18), '10', None, None, None, None, 1),)
    # (([id], [accountId], [mulct_code_id], [calculation_method_id], Decimal('[price_unit]'), [minimum_unit], [minimum_price], [calculation_date_from], [calculate_mulct_flag], [is_calculate_common_fee], '[incomecode]', '[nameTh]', '[nameEn]', '[remark]', Decimal('[vat_percent]'), Decimal('[tax_percent]'), [calculation_time], [status], [group_type_id], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [index]),)
    
    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_CREATE_ALLFIELD}'    ${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_CHECKCREATE_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_CREATE_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_CHECKCREATE_REQUIREDFIELD_VALUE}
    
    ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
    ${resultDB}=    Replace String    ${resultDB}    [accountId]    ${accountId}
    ${resultDB}=    Replace String    ${resultDB}    [mulct_code_id]    ${mulctCodeId}
    ${resultDB}=    Replace String    ${resultDB}    [incomecode]    ${incomecode}
    ${resultDB}=    Replace String    ${resultDB}    [nameTh]    ${nameTh}
    ${resultDB}=    Replace String    ${resultDB}    [nameEn]    ${nameEn}
    ${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
    ${resultDB}=    Replace String    ${resultDB}    [vat_percent]    ${vat}
    ${resultDB}=    Replace String    ${resultDB}    [tax_percent]    ${tax}
    ${resultDB}=    Replace String    ${resultDB}    [remark]    ${remark}
    ${resultDB}=    Replace String    ${resultDB}    [calculation_method_id]    ${calculationMethodId}
    ${resultDB}=    Replace String    ${resultDB}    [price_unit]    ${priceUnit}
    ${resultDB}=    Replace String    ${resultDB}    [minimum_unit]    ${minimumUnit}
    ${resultDB}=    Replace String    ${resultDB}    [minimum_price]    ${minimumPrice}
    ${resultDB}=    Replace String    ${resultDB}    [calculation_date_from]    ${calculationDateFrom}
    ${resultDB}=    Replace String    ${resultDB}    [calculate_mulct_flag]    ${groupcalculateMulctFlagTypeId}
    ${resultDB}=    Replace String    ${resultDB}    [is_calculate_common_fee]    ${isCalculateCommonFee}
    ${resultDB}=    Replace String    ${resultDB}    [calculation_time]    ${calculationTime}
    ${resultDB}=    Replace String    ${resultDB}    [group_type_id]    ${groupTypeId}
    ${resultDB}=    Replace String    ${resultDB}    [index]    ${index}
    ${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
    ${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${updated_at}
    ${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}

    Log To Console    [resultDB] : ${resultDB}
    ${strResult}=    Convert To String    ${dataResult}

    Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Create BuildingManagement

    Log To Console    ${\n}=========== End DB : [Create BuildingManagement] =============== 

Request Verify DB Check Data Edit BuildingManagement
    [Arguments]      ${type}    ${nameTh}    ${nameEn}    ${incomecode}    ${vat}    ${tax}    ${remark}    ${status}    ${groupTypeId}    ${mulctCodeId}    ${calculationMethodId}    ${priceUnit}    ${minimumUnit}    ${minimumPrice}    ${index}
      
    Log To Console    ${\n}=========== Start DB : [Edit BuildingManagement] =============== 
    # ${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_CHECKEDI T}    SELECT * FROM income_code WHERE id = [id] AND deleted_at IS NULL

    ${convertStrBuildingManagementId}=    Convert To String    ${BuildingManagementId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_CHECKEDIT}    [id]    ${convertStrBuildingManagementId}
    Log To Console    [income_code : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [income_code] Request Verify DB Check Data Edit BuildingManagement : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : income_code] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    # Log To Console    [rowCount : income_code] : ${rowCount}

    Log To Console    [result : income_code] : ${dataResult}[0][0]
    ${id}=    Convert To String    ${dataResult}[0][0]
    ${created_at}=    Convert To String    ${dataResult}[0][19]
    ${created_by}=    Convert To String    ${dataResult}[0][20]
    ${updated_at}=    Convert To String    ${dataResult}[0][21]
    ${updated_by}=    Convert To String    ${dataResult}[0][22]
    ${deleted_at}=    Convert To String    ${dataResult}[0][23]
    ${deleted_by}=    Convert To String    ${dataResult}[0][24]
    ${accountId}=    Convert To String    ${accountId}
    ${mulctCodeId}=    Convert To String    ${mulctCodeId}
    ${status}=    Convert To String    ${status}
    ${groupTypeId}=    Convert To String    ${groupTypeId}
    ${incomecode}=    Convert To String    ${incomecode}
    ${vat}=    Convert To String    ${vat}
    ${tax}=    Convert To String    ${tax}
    ${calculationMethodId}=    Convert To String    ${calculationMethodId}
    ${priceUnit}=    Convert To String    ${priceUnit}
    ${minimumUnit}=    Convert To String    ${minimumUnit}
    ${minimumPrice}=    Convert To String    ${minimumPrice}
    ${calculationDateFrom}=    Convert To String    ${dataResult}[0][7]
    ${groupcalculateMulctFlagTypeId}=    Convert To String    ${dataResult}[0][8]
    ${isCalculateCommonFee}=    Convert To String    ${dataResult}[0][9]
    ${calculationTime}=    Convert To String    ${dataResult}[0][16]
    ${index}=    Convert To String    ${index}
    # Log To Console    [result : created_at] : ${created_at}

    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # # Log To Console    dateCreatedAt : ${dateCreatedAt}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateUpdatedAt}=    Convert Format Date DB    ${updated_at}
    # Log To Console    dateUpdatedAt : ${updated_at}
    
    # ((181, 7, None, 1, Decimal('3.00'), None, None, None, 0, None, '4321', 'ชื่อรายได้ ภาษาไทย2', 'ชื่อรายได้ ภาษาอังกฤษ', 'หมายเหตุ1', Decimal('3.00'), Decimal('2.00'), 7, 0, 2, datetime.datetime(2021, 11, 30, 14, 35, 11), '10', datetime.datetime(2021, 11, 30, 14, 35, 29), '10', None, None, 1),)
    # (([id], [accountId], [mulct_code_id], [calculation_method_id], Decimal('[price_unit]'), [minimum_unit], [minimum_price], [calculation_date_from], [calculate_mulct_flag], [is_calculate_common_fee], '[incomecode]', '[nameTh]', [nameEn], '[remark]', Decimal('[vat_percent]'), Decimal('[tax_percent]'), [calculation_time], [status], [group_type_id], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', [deleted_at], [deleted_by], [index]),)
    
    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_EDIT_ALLFIELD}'    ${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_CHECKEDIT_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_EDIT_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_CHECKEDIT_REQUIREDFIELD_VALUE}
    
    ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
    ${resultDB}=    Replace String    ${resultDB}    [accountId]    ${accountId}
    ${resultDB}=    Replace String    ${resultDB}    [mulct_code_id]    ${mulctCodeId}
    ${resultDB}=    Replace String    ${resultDB}    [incomecode]    ${incomecode}
    ${resultDB}=    Replace String    ${resultDB}    [nameTh]    ${nameTh}
    ${resultDB}=    Replace String    ${resultDB}    [nameEn]    ${nameEn}
    ${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
    ${resultDB}=    Replace String    ${resultDB}    [vat_percent]    ${vat}
    ${resultDB}=    Replace String    ${resultDB}    [tax_percent]    ${tax}
    ${resultDB}=    Replace String    ${resultDB}    [remark]    ${remark}
    ${resultDB}=    Replace String    ${resultDB}    [calculation_method_id]    ${calculationMethodId}
    ${resultDB}=    Replace String    ${resultDB}    [price_unit]    ${priceUnit}
    ${resultDB}=    Replace String    ${resultDB}    [minimum_unit]    ${minimumUnit}
    ${resultDB}=    Replace String    ${resultDB}    [minimum_price]    ${minimumPrice}
    ${resultDB}=    Replace String    ${resultDB}    [calculation_date_from]    ${calculationDateFrom}
    ${resultDB}=    Replace String    ${resultDB}    [calculate_mulct_flag]    ${groupcalculateMulctFlagTypeId}
    ${resultDB}=    Replace String    ${resultDB}    [is_calculate_common_fee]    ${isCalculateCommonFee}
    ${resultDB}=    Replace String    ${resultDB}    [calculation_time]    ${calculationTime}
    ${resultDB}=    Replace String    ${resultDB}    [group_type_id]    ${groupTypeId}
    ${resultDB}=    Replace String    ${resultDB}    [index]    ${index}
    ${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
    ${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${dateUpdatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}
    # Log To Console    [resultDB] : ${resultDB}
    ${strResult}=    Convert To String    ${dataResult}

    Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Edit BuildingManagement

    Log To Console    ${\n}=========== End DB : [Edit BuildingManagement] =============== 

Request Verify DB Check Data View BuildingManagement 
    [Arguments]      ${type}    ${nameTh}    ${nameEn}    ${incomecode}    ${vat}    ${tax}    ${remark}    ${status}    ${groupTypeId}    ${mulctCodeId}    ${calculationMethodId}    ${priceUnit}    ${minimumUnit}    ${minimumPrice}    ${index}
    
    Log To Console    ${\n}=========== Start DB : [View BuildingManagement] =============== 
    # ${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_CHECKVIEW}    SELECT * FROM income_code WHERE id = [id] AND deleted_at IS NULL
    # ${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_CHECKVIEW_ALLFIELD_VALUE}    ([id], [accountId], [mulctMethodId], '[mulctCode]', '[nameTh]', '[nameEn]', [status], Decimal('[vat]'), Decimal('[tax]'), '[remark]', [groupTypeId], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by])

    ${convertStrBuildingManagementId}=    Convert To String    ${BuildingManagementId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_CHECKVIEW}    [id]    ${convertStrBuildingManagementId}
    Log To Console    [income_code : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [income_code] Request Verify DB Check Data View BuildingManagement : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : income_code] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    # Log To Console    [rowCount : income_code] : ${rowCount}
    
    ${id}=    Convert To String    ${dataResult}[0][0]
    ${created_at}=    Convert To String    ${dataResult}[0][19]
    ${created_by}=    Convert To String    ${dataResult}[0][20]
    ${updated_at}=    Convert To String    ${dataResult}[0][21]
    ${updated_by}=    Convert To String    ${dataResult}[0][22]
    ${deleted_at}=    Convert To String    ${dataResult}[0][23]
    ${deleted_by}=    Convert To String    ${dataResult}[0][24]
    ${accountId}=    Convert To String    ${accountId}
    ${mulctCodeId}=    Convert To String    ${mulctCodeId}
    ${status}=    Convert To String    ${status}
    ${groupTypeId}=    Convert To String    ${groupTypeId}
    ${incomecode}=    Convert To String    ${incomecode}
    ${vat}=    Convert To String    ${vat}
    ${tax}=    Convert To String    ${tax}
    ${calculationMethodId}=    Convert To String    ${calculationMethodId}
    ${priceUnit}=    Convert To String    ${priceUnit}
    ${minimumUnit}=    Convert To String    ${minimumUnit}
    ${minimumPrice}=    Convert To String    ${minimumPrice}
    ${calculationDateFrom}=    Convert To String    ${dataResult}[0][7]
    ${groupcalculateMulctFlagTypeId}=    Convert To String    ${dataResult}[0][8]
    ${isCalculateCommonFee}=    Convert To String    ${dataResult}[0][9]
    ${calculationTime}=    Convert To String    ${dataResult}[0][16]
    ${index}=    Convert To String    ${index}
    
    # Log To Console    [result : created_at] : ${created_at}
    # # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # Log To Console    dateCreatedAt : ${dateCreatedAt}

    # ((140, 7, 168, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 10, 17, 59, 13), '10', None, None, None, None),)
    # ([id], [accountId], [mulctMethodId], '[mulctCode]', '[nameTh]', '[nameEn]', [status], Decimal('[vat]'), Decimal('[tax]'), '[remark]', [groupTypeId], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by])
    
    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_VIEW_ALLFIELD}'    ${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_CHECKVIEW_ALLFIELD_VALUE} 
    # # ...    '${type}'=='${MYSQL_TYPE_VIEW_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_CHECKCREATE_REQUIREDFIELD_VALUE}
    
    FOR    ${i}    IN RANGE    ${rowCount}  
    # Log To Console    [result : income_code] : ${dataResult}[0][0]
    # ${property_id}=    Convert To String    ${property_id[${i}]}
    # ${building_id}=    Convert To String    ${building_id[${i}]}
    
        ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
        ${resultDB}=    Replace String    ${resultDB}    [accountId]    ${accountId}
        ${resultDB}=    Replace String    ${resultDB}    [mulct_code_id]    ${mulctCodeId}
        ${resultDB}=    Replace String    ${resultDB}    [incomecode]    ${incomecode}
        ${resultDB}=    Replace String    ${resultDB}    [nameTh]    ${nameTh}
        ${resultDB}=    Replace String    ${resultDB}    [nameEn]    ${nameEn}
        ${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
        ${resultDB}=    Replace String    ${resultDB}    [vat_percent]    ${vat}
        ${resultDB}=    Replace String    ${resultDB}    [tax_percent]    ${tax}
        ${resultDB}=    Replace String    ${resultDB}    [remark]    ${remark}
        ${resultDB}=    Replace String    ${resultDB}    [calculation_method_id]    ${calculationMethodId}
        ${resultDB}=    Replace String    ${resultDB}    [price_unit]    ${priceUnit}
        ${resultDB}=    Replace String    ${resultDB}    [minimum_unit]    ${minimumUnit}
        ${resultDB}=    Replace String    ${resultDB}    [minimum_price]    ${minimumPrice}
        ${resultDB}=    Replace String    ${resultDB}    [calculation_date_from]    ${calculationDateFrom}
        ${resultDB}=    Replace String    ${resultDB}    [calculate_mulct_flag]    ${groupcalculateMulctFlagTypeId}
        ${resultDB}=    Replace String    ${resultDB}    [is_calculate_common_fee]    ${isCalculateCommonFee}
        ${resultDB}=    Replace String    ${resultDB}    [calculation_time]    ${calculationTime}
        ${resultDB}=    Replace String    ${resultDB}    [group_type_id]    ${groupTypeId}
        ${resultDB}=    Replace String    ${resultDB}    [index]    ${index}
        ${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
        ${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
        ${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${updated_at}
        ${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
        ${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
        ${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}
        # Log To Console    [resultDB] : ${resultDB}
        ${strResult}=    Convert To String    ${dataResult[${i}]}
    END
    Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data View BuildingManagement

    Log To Console    ${\n}=========== End DB : [View BuildingManagement] =============== 

Request Verify DB Check Data Delete BuildingManagement
    [Arguments]      ${type}    ${nameTh}    ${nameEn}    ${incomecode}    ${vat}    ${tax}    ${remark}    ${status}    ${groupTypeId}    ${mulctCodeId}    ${calculationMethodId}    ${priceUnit}    ${minimumUnit}    ${minimumPrice}    ${index}
    
    Log To Console    ${\n}=========== Start DB : [Delete BuildingManagement] =============== 
    #${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_CHECKDELETE}    SELECT * FROM income_code WHERE id = [id]

    ${convertStrBuildingManagementId}=    Convert To String    ${BuildingManagementId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_CHECKDELETE}    [id]    ${convertStrBuildingManagementId}
    Log To Console    [income_code : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [income_code] Request Verify DB Check Data Delete BuildingManagement : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : income_code] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    # Log To Console    [rowCount : income_code] : ${rowCount}
 
    Log To Console    [result : income_code] : ${dataResult}[0][0]
    ${id}=    Convert To String    ${dataResult}[0][0]
    ${created_at}=    Convert To String    ${dataResult}[0][19]
    ${created_by}=    Convert To String    ${dataResult}[0][20]
    ${updated_at}=    Convert To String    ${dataResult}[0][21]
    ${updated_by}=    Convert To String    ${dataResult}[0][22]
    ${deleted_at}=    Convert To String    ${dataResult}[0][23]
    ${deleted_by}=    Convert To String    ${dataResult}[0][24]
    ${accountId}=    Convert To String    ${accountId}
    ${mulctCodeId}=    Convert To String    ${mulctCodeId}
    ${status}=    Convert To String    ${status}
    ${groupTypeId}=    Convert To String    ${groupTypeId}
    ${incomecode}=    Convert To String    ${incomecode}
    ${vat}=    Convert To String    ${vat}
    ${tax}=    Convert To String    ${tax}
    ${calculationMethodId}=    Convert To String    ${calculationMethodId}
    ${priceUnit}=    Convert To String    ${priceUnit}
    ${minimumUnit}=    Convert To String    ${minimumUnit}
    ${minimumPrice}=    Convert To String    ${minimumPrice}
    ${calculationDateFrom}=    Convert To String    ${dataResult}[0][7]
    ${groupcalculateMulctFlagTypeId}=    Convert To String    ${dataResult}[0][8]
    ${isCalculateCommonFee}=    Convert To String    ${dataResult}[0][9]
    ${calculationTime}=    Convert To String    ${dataResult}[0][16]
    ${index}=    Convert To String    ${index}

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

    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_DELETE_ALLFIELD}'    ${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_CHECKDELETE_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_DELETE_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_CHECKDELETE_REQUIREDFIELD_VALUE}
    
    ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
    ${resultDB}=    Replace String    ${resultDB}    [accountId]    ${accountId}
    ${resultDB}=    Replace String    ${resultDB}    [mulct_code_id]    ${mulctCodeId}
    ${resultDB}=    Replace String    ${resultDB}    [incomecode]    ${incomecode}
    ${resultDB}=    Replace String    ${resultDB}    [nameTh]    ${nameTh}
    ${resultDB}=    Replace String    ${resultDB}    [nameEn]    ${nameEn}
    ${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
    ${resultDB}=    Replace String    ${resultDB}    [vat_percent]    ${vat}
    ${resultDB}=    Replace String    ${resultDB}    [tax_percent]    ${tax}
    ${resultDB}=    Replace String    ${resultDB}    [remark]    ${remark}
    ${resultDB}=    Replace String    ${resultDB}    [calculation_method_id]    ${calculationMethodId}
    ${resultDB}=    Replace String    ${resultDB}    [price_unit]    ${priceUnit}
    ${resultDB}=    Replace String    ${resultDB}    [minimum_unit]    ${minimumUnit}
    ${resultDB}=    Replace String    ${resultDB}    [minimum_price]    ${minimumPrice}
    ${resultDB}=    Replace String    ${resultDB}    [calculation_date_from]    ${calculationDateFrom}
    ${resultDB}=    Replace String    ${resultDB}    [calculate_mulct_flag]    ${groupcalculateMulctFlagTypeId}
    ${resultDB}=    Replace String    ${resultDB}    [is_calculate_common_fee]    ${isCalculateCommonFee}
    ${resultDB}=    Replace String    ${resultDB}    [calculation_time]    ${calculationTime}
    ${resultDB}=    Replace String    ${resultDB}    [group_type_id]    ${groupTypeId}
    ${resultDB}=    Replace String    ${resultDB}    [index]    ${index}
    ${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
    ${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${dateUpdatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${dateDeletedAt}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}

    # Log To Console    [resultDB] : ${resultDB}
    ${strResult}=    Convert To String    ${dataResult}

    Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Delete BuildingManagement

    Log To Console    ${\n}=========== End DB : [Delete BuildingManagement] =============== 
