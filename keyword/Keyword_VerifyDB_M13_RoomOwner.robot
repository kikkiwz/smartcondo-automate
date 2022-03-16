*** Keywords ***
# Request Verify DB Check Data Search MulctMethod
#     [Arguments]      ${type}    ${name}    ${status}    ${limit}    ${offset}    ${orderBy}
    
#     Log To Console    ${\n}=========== Start DB : [Search MulctMethod] =============== 
#     # ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_LISTALL}    SELECT * FROM mulct_method WHERE account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
#     # ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_SEAECHALL}    SELECT * FROM mulct_method WHERE name_th LIKE '%[name]%' AND  status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
#     # ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_NAME}    SELECT * FROM mulct_method WHERE name_th LIKE '%[name]%' AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
#     # ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_STATUS}    SELECT * FROM mulct_method WHERE status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
#     # ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_NAMESTATUS}    SELECT * FROM mulct_method WHERE name_th LIKE '%[name]%'AND status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]

#     ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_SEARCHLISTALL}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_LISTALL}
#     ...    '${type}'=='${MYSQL_TYPE_MULCTMETHOD_SEARCH_ALL}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_SEAECHALL}
#     ...    '${type}'=='${MYSQL_TYPE_MULCTMETHOD_SEARCH_NAME}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_NAME}
#     ...    '${type}'=='${MYSQL_TYPE_MULCTMETHOD_SEARCH_STATUS}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_STATUS}
#     ...    '${type}'=='${MYSQL_TYPE_MULCTMETHOD_SEARCH_NAMESTATUS}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_NAMESTATUS}
#     # Log To Console    [mulct_method : valueReplace] : ${valueReplace}
#     ${convertStrAccountId}=    Convert To String    ${accountId}

#     # Data
#     ${selectStatement}=    Replace String    ${valueReplace}    [accountId]    ${convertStrAccountId}
#     ${selectStatement}=    Replace String    ${selectStatement}    [name]    ${name}
#     ${selectStatement}=    Replace String    ${selectStatement}    [status]    ${status}
#     ${selectStatement}=    Replace String    ${selectStatement}    [limit]    ${limit}
#     ${selectStatement}=    Replace String    ${selectStatement}    [offset]    ${offset}
#     ${selectStatement}=    Replace String    ${selectStatement}    [orderBy]    ${orderBy}
#     # Log To Console    [mulct_method : resultQuery] : ${selectStatement}

#     # Rowcount
#     ${valueReplaceRowcount}=    Set Variable If    '${type}'=='${MYSQL_TYPE_SEARCHLISTALL}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_LISTALL_ROWCOUNT}
#     ...    '${type}'=='${MYSQL_TYPE_MULCTMETHOD_SEARCH_ALL}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_SEAECHALL_ROWCOUNT}
#     ...    '${type}'=='${MYSQL_TYPE_MULCTMETHOD_SEARCH_NAME}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_NAME_ROWCOUNT}
#     ...    '${type}'=='${MYSQL_TYPE_MULCTMETHOD_SEARCH_STATUS}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_STATUS_ROWCOUNT}
#     ...    '${type}'=='${MYSQL_TYPE_MULCTMETHOD_SEARCH_NAMESTATUS}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_NAMESTATUS_ROWCOUNT}

#     ${replaceRowcount}=    Replace String    ${valueReplaceRowcount}    [accountId]    ${convertStrAccountId}
#     ${replaceRowcount}=    Replace String    ${replaceRowcount}    [name]    ${name}
#     ${replaceRowcount}=    Replace String    ${replaceRowcount}    [status]    ${status}
#     ${selectStatementRowcount}=    Replace String    ${replaceRowcount}    [orderBy]    ${orderBy}

#     #[(), 0]
#     # queryResults,rowCount
#     @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatementRowcount}
#     Log To Console    [mulct_method] Request Verify DB Check Data Search MulctMethod : ${result}
#     ${dataResult}=    Set Variable    ${result}[0]
#     Log To Console    [result : mulct_method] : ${dataResult}
#     ${rowCount}=    Set Variable    ${result}[1]
#     Log To Console    [rowCount : mulct_method] : ${rowCount}
    
#     Log To Console    ${\n}=========== End DB : [Search MulctMethod] =============== 
#     [Return]    ${dataResult}    ${rowCount}

# Check Value Table Search MulctMethod
#     [Arguments]    ${type}    ${rowcountSearchMulctMethod}    ${dataSearchMulctMethod}

#     #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
#     ${setData}=    Run Keyword If    '${type}'=='${DEFAULT_TH}'    Set Data for check value table MulctMethod
#     ...    ELSE IF    '${type}'=='${DEFAULT_EN}'    Set Data for check value table MulctMethod EN

#     #valueTable
#     @{valArrDataTable}=    Create List    
#     FOR    ${i}    IN RANGE    ${rowcountSearchMulctMethod}
#     #  [((81, 7, None, 1, Decimal('3.00'), None, None, None, 0, None, 'รหัสรายได้', 'ชื่อรายได้ ภาษาไทย', 'ชื่อรายได้ ภาษาอังกฤษ', 'หมายเหตุ1', Decimal('1.00'), Decimal('2.00'), 7, 1, 1, datetime.datetime(2021, 11, 26, 14, 55, 10), '10', None, None, None, None, 1),), 1]
        
#         ${nameTh}=    Set Variable    ${dataSearchMulctMethod[${i}][6]}
#         Log To Console    dataSearchMulctMethod${dataSearchMulctMethod[${i}][7]}
#         ${remark}=    Set Variable If    '${dataSearchMulctMethod[${i}][7]}'=='${NONE}'    -
#         ...    '${dataSearchMulctMethod[${i}][7]}'!='${NONE}'    ${dataSearchMulctMethod[${i}][7]}

#         # UI mapping field status 0=ไม่ใช้งาน , 1 = ใช้งาน , 0=Inactive , 1 = Active
#         ${statusTH}=    Set Variable If    '${dataSearchMulctMethod[${i}][8]}'=='0'    ${DEFAULT_LBL_STATUS_INACTIVE_TH}
#         ...    '${dataSearchMulctMethod[${i}][8]}'=='1'    ${DEFAULT_LBL_STATUS_ACTIVE_TH}
#         ${statusEN}=    Set Variable If    '${dataSearchMulctMethod[${i}][8]}'=='0'    ${DEFAULT_LBL_STATUS_INACTIVE_LOW_EN}
#         ...    '${dataSearchMulctMethod[${i}][8]}'=='1'    ${DEFAULT_LBL_STATUS_ACTIVE_EN}
#         ${status}=    Set Variable If    '${type}'=='${DEFAULT_TH}'    ${statusTH}
#         ...    '${type}'=='${DEFAULT_EN}'    ${statusEN}

#         # Log To Console    [banknameTh] : ${banknameTh}
#         ${no}=    Convert To String    ${i+1}
#         ${data}=    Evaluate    {"no":"${no}","nameTh":"${nameTh}", "remark":"${remark}","status":"${status}"}
#         Append To List    ${valArrDataTable}    ${data} 
#         Log To Console    [MulctMethodData] : ${data}

#         # Wait Until Contains Element Text Should Be    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[${i+1}]/td[${numCol-5}]    ${valArrDataTable[${i}]['${fieldArrDataTable[${numCol-6}]}']}
#         # Wait Until Contains Element Text Should Be    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[${i+1}]/td[${numCol-4}]    ${valArrDataTable[${i}]['${fieldArrDataTable[${numCol-5}]}']}
#         # Wait Until Contains Element Text Should Be    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[${i+1}]/td[${numCol-3}]    ${valArrDataTable[${i}]['${fieldArrDataTable[${numCol-4}]}']}
#         # Wait Until Contains Element Text Should Be    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[${i+1}]/td[${numCol-2}]    ${valArrDataTable[${i}]['${fieldArrDataTable[${numCol-3}]}']}
#         # Wait Until Contains Element Text Should Be    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[${i+1}]/td[${numCol-1}]    ${valArrDataTable[${i}]['${fieldArrDataTable[${numCol-2}]}']}
#         # Wait Until Contains Element Text Should Be    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[${i+1}]/td[${numCol}]    ${valArrDataTable[${i}]['${fieldArrDataTable[${numCol-1}]}']}

#         # Log To Console    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[${i+1}]/td[${k-5}]${valArrDataTable[${i}]['${fieldArrDataTable[${num-6}]}']}
#         # Log To Console    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[${i+1}]/td[${k-4}]${valArrDataTable[${i}]['${fieldArrDataTable[${num-5}]}']}
#         # Log To Console    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[${i+1}]/td[${k-3}]${valArrDataTable[${i}]['${fieldArrDataTable[${num-4}]}']}
#         # Log To Console    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[${i+1}]/td[${k-2}]${valArrDataTable[${i}]['${fieldArrDataTable[${num-3}]}']}
#         # Log To Console    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[${i+1}]/td[${k-1}]${valArrDataTable[${i}]['${fieldArrDataTable[${num-2}]}']}
#         # Log To Console    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[${i+1}]/td[${k}]${valArrDataTable[${i}]['${fieldArrDataTable[${num-1}]}']}
        
#         Check Value Table    ${MULCTCODE_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${i}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
#         # Check Value Table    ${MULCTCODE_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${numCol}    ${i}    ${arrNumCol}    ${arrNumfield}    ${fieldArrDataTable}    ${valArrDataTable}
#     # Exit For Loop
#     END

Request Verify DB Check Data RoomOwner 
    [Arguments]      ${type}    ${roomId}    ${roomTranferId}    ${dataRoomOwner}
    # [Arguments]    ${type}    ${roomId}    ${roomTranferId}    ${tranferorType}    ${ownerType}    ${identificationNo}    ${title}    ${firstName}    ${lastName}    ${companyName}    ${nickname}    ${shortName}    ${birthDate}    ${identificationCreateDate}    ${identificationExpireDate}    ${phone}    ${fax}    ${email}    ${lineId}    ${taxId}    ${juristicId}    ${education}    ${occupation}    ${occupationOther}    ${salary}    ${address}    ${cartype}    ${carplateNumber}    ${tranferDate}    ${arrivalDate}    ${appointmentDate}    ${acceptDate}    ${warrantyEndDate}    ${manageType}    ${languageOfDocuments}    ${addressForInvoictingReceipt}    ${electricStartUnit}    ${waterStartUnit}
     
    Log To Console    typetypetype${type} 
    Log To Console    ${\n}=========== Start DB : [Create RoomOwner] =============== 
    
    # ${DB_SELECTSTATEMENT_ROOMS_ACCOUNTID_PROPERTY_BUILDING_ROOMNAME}    SELECT * FROM rooms WHERE account_id = [account_id] and property_id = [property_id] and building_id = [building_id] and room_no = '[room_no]' and deleted_at IS NULL
    # ${DB_SELECTSTATEMEN_ROOMTRANSFER_PROPERTY_BUILDING  _ROOMID}    SELECT * FROM room_transfer WHERE property_id = [property_id] and building_id = [building_id] and room_id = [room_id] and deleted_at IS NULL
    # ${DB_SELECTSTATEMENT_ROOMOWNER_ROOMID}    SELECT * FROM room_owner WHERE room_id = [room_id] and deleted_at IS NULL
    # ${DB_SELECTSTATEMENT_CARS_ROOMID}    SELECT * FROM cars WHERE room_id = [room_id] and deleted_at IS NULL
    # ${DB_SELECTSTATEMENT_CHECKROOMASSET}    SELECT * FROM check_room_asset WHERE room_transfer_id = [room_transfer_id] and deleted_at IS NULL
    # ${DB_SELECTSTATEMENT_BUILDINGS_NAME_PROPERTYID}    SELECT * FROM buildings WHERE (building_name_th LIKE '%[name]%' OR building_name_en LIKE '%[name]%') and property_id = [property_id] and deleted_at IS NULL
    # ${DB_SELECTSTATEMENT_PROPERTIES_NAME_ACCOUNTID}    SELECT * FROM properties WHERE (property_name_th LIKE '%[name]%' OR property_name_en LIKE '%[name]%') and account_id = [account_id] and deleted_at IS NULL

    ${roomId}=    Convert To String    ${roomId}
    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_ROOMOWNER_ROOMID}    [room_id]    ${roomId}
    Log To Console    [room_owner : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [room_owner] Request Verify DB Check Data RoomOwner : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : room_owner] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    # Log To Console    [rowCount : room_owner] : ${rowCount}
    @{valArrRoomOwnerId}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}

    # Log To Console    [result : room_owner] : ${dataResult}[${i}][0]
    ${id}=    Convert To String    ${dataResult}[${i}][0]
    Append To List    ${valArrRoomOwnerId}    ${id}        #Add data to array set at valArrData
    Set Global Variable    ${arrRoomOwnerId}    ${valArrRoomOwnerId}
    Log To Console    [arrRoomOwnerId] : ${arrRoomOwnerId}
    ${created_at}=    Convert To String    ${dataResult}[${i}][27]
    ${created_by}=    Convert To String    ${dataResult}[${i}][28]
    ${updated_at}=    Convert To String    ${dataResult}[${i}][29]
    ${updated_by}=    Convert To String    ${dataResult}[${i}][30]
    ${deleted_at}=    Convert To String    ${dataResult}[${i}][31]
    ${deleted_by}=    Convert To String    ${dataResult}[${i}][32]

    # ${roomTranferId}=    Convert To String    ${dataResult}[${i}][2]
    ${roomTranferId}=    Convert To String    ${roomTranferId}
    ${userImage}=    Convert To String    ${dataResult}[${i}][5]
    
    ${ownerType}=    Convert To String    ${dataRoomOwner[${i}]['ownerType']}
    ${tranferorType}=    Convert To String    ${dataRoomOwner[${i}]['tranferorType']}
    # Log To Console    dataRoomOwner${dataRoomOwner[${i}]['title']}
    ${title}=    Convert To String    ${dataRoomOwner[${i}]['title']}
    ${firstName}=    Convert To String    ${dataRoomOwner[${i}]['firstName']}
    ${lastName}=    Convert To String    ${dataRoomOwner[${i}]['lastName']}
    ${companyName}=    Set Variable If    '${ownerType}'=='1'        ${dataRoomOwner[${i}]['companyName']}
    ...    '${ownerType}'!='1'    ${dataResult}[${i}][9]
    ${companyName}=    Convert To String    ${dataRoomOwner[${i}]['companyName']}
    ${nickname}=    Convert To String    ${dataRoomOwner[${i}]['nickname']}
    ${shortName}=    Convert To String    ${dataRoomOwner[${i}]['shortName']}
    ${identificationNo}=    Convert To String    ${dataRoomOwner[${i}]['identificationNo']}
    
    ${birthDate}=    Convert To String    ${dataRoomOwner[${i}]['birthDate']}
    ${identificationCreateDate}=    Convert To String    ${dataRoomOwner[${i}]['identificationCreateDate']}
    ${identificationExpireDate}=    Convert To String    ${dataRoomOwner[${i}]['identificationExpireDate']}
    ${phone}=    Convert To String    ${dataRoomOwner[${i}]['phone']}
    ${fax}=    Convert To String    ${dataRoomOwner[${i}]['fax']}
    ${lineId}=    Convert To String    ${dataRoomOwner[${i}]['lineId']}
    ${email}=    Convert To String    ${dataRoomOwner[${i}]['email']}
    ${education}=    Convert To String    ${dataRoomOwner[${i}]['education']}
    ${occupation}=    Convert To String    ${dataRoomOwner[${i}]['occupation']}
    ${occupationOther}=    Convert To String    ${dataRoomOwner[${i}]['occupationOther']}
    ${salary}=    Convert To String    ${dataRoomOwner[${i}]['salary']}
    ${taxId}=    Convert To String    ${dataRoomOwner[${i}]['taxId']}
    ${juristicId}=    Convert To String    ${dataRoomOwner[${i}]['juristicId']}
    ${address}=    Convert To String    ${dataRoomOwner[${i}]['address']}

    # Log To Console    [result : created_at] : ${created_at}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # Log To Console    [result : updated_at] : ${updated_at}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    # ${dateUpdatedAt}=    Convert Format Date DB    ${updated_at}
    ${dateUpdatedAt}=    Run Keyword If    '${updated_at}'!='${NONE}'    Convert Format Date DB    ${updated_at}
    ...    ELSE IF    '${updated_at}'=='${NONE}'    Convert To String    ${NONE}
    # Log To Console    dateUpdatedAt : ${dateUpdatedAt}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${datebirthDate}=    Run Keyword If    '${birthDate}'!='${NONE}'    Convert Format Date DB No Have Second    ${birthDate}
    ...    ELSE IF    '${birthDate}'=='${NONE}'    Convert To String    ${NONE}
    # Log To Console    dateUpdatedAt : ${updated_at}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateIdentificationCreate}=    Run Keyword If    '${identificationCreateDate}'!='${NONE}'    Convert Format Date DB No Have Second    ${identificationCreateDate}
    ...    ELSE IF    '${identificationCreateDate}'=='${NONE}'    Convert To String    ${NONE}
    # Log To Console    dateUpdatedAt : ${updated_at}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateIdentificationExpire}=    Run Keyword If    '${identificationExpireDate}'!='${NONE}'    Convert Format Date DB No Have Second    ${identificationExpireDate}
    ...    ELSE IF    '${identificationExpireDate}'=='${NONE}'    Convert To String    ${NONE}


    # ((235, 7987, 230, 1, 2, None, 3, 'FirstName1', 'LastName1', None, 'Nickname1', None, '919191919', datetime.datetime(1991, 11, 30, 0, 0), datetime.datetime(2021, 12, 22, 0, 0), datetime.datetime(2024, 10, 6, 0, 0), '0919191919', None, 'email1@email1', 'lineid1', 6, 14, 'other1', 5, '115511551155', None, 'Address1', datetime.datetime(2022, 1, 5, 11, 46, 36), '10', datetime.datetime(2022, 1, 5, 15, 28, 46), '10', None, None),)
    # (([id], [roomId], [roomTranferId], [tranferorType], [ownerType], [userImage], [title], '[firstName]', '[lastName]', [companyName], '[nickname]', [shortName], '[identificationNo]', datetime.datetime([birthDate]), datetime.datetime([identificationCreate]), datetime.datetime([identificationExpire]), '[phone]', [fax], '[email]', '[lineId]', [education], [occupation], '[occupationOther]', [salary], '[taxId]', [juristicId], '[address]', datetime.datetime([created_at]), '[created_by]', [updated_by], [updated_at], [deleted_at], [deleted_by]),)

# ${DB_SELECTSTATEMENT_ROOMOWNER_CHECKCREATE_THAI_ALLFIELD_VALUE}    (([id], [roomId], [roomTranferId], [tranferorType], [ownerType], [userImage],
#  [title], '[firstName]', '[lastName]', [companyName], '[nickname]', [shortName], '[identificationNo]', 
#  datetime.datetime([birthDate]), datetime.datetime([identificationCreate]), datetime.datetime([identificationExpire]), '[phone]', 
#  [fax], '[email]', '[lineId]', [education], [occupation], '[occupationOther]', [salary], '[taxId]', [juristic], '[address]',
#   datetime.datetime([created_at]), '[created_by]', [updated_by], [updated_at], [deleted_at], [deleted_by]),)
    
    Log To Console    [typetypetype] : ${type}${dataResult}[${i}][8]
    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_CREATE_ALLFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_THAI_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_CREATE_FOREIGNERS_ALLFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_FOREIGNERS_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_CREATE_JURISTICPERSON_ALLFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_JURISTICPERSON_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_CREATE_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_REQUIREDFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_CREATE_FOREIGNERS_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_REQUIREDFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_CREATE_JURISTICPERSON_REQUIREDFIELD}'and'${ownerType}'=='${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}'    ${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_REQUIREDFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_CREATE_JURISTICPERSON_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_JURISTICPERSON_REQUIREDFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_EDIT_ALLFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_EDIT_THAI_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_EDIT_FOREIGNERS_ALLFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_EDIT_FOREIGNERS_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_EDIT_JURISTICPERSON_ALLFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_EDIT_JURISTICPERSON_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_EDIT_REQUIREDFIELD}'and'${updated_at}'=='${NONE}'    ${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_REQUIREDFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_EDIT_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_EDIT_REQUIREDFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_EDIT_FOREIGNERS_REQUIREDFIELD}'and'${updated_at}'=='${NONE}'    ${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_REQUIREDFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_EDIT_FOREIGNERS_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_EDIT_REQUIREDFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_EDIT_JURISTICPERSON_REQUIREDFIELD}'and'${ownerType}'=='${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}'    ${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_REQUIREDFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_EDIT_JURISTICPERSON_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_EDIT_JURISTICPERSON_REQUIREDFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_VIEW_ALLFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_THAI_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_VIEW_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_REQUIREDFIELD_VALUE}
    
    ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
    ${resultDB}=    Replace String    ${resultDB}    [roomId]    ${roomId}
    ${resultDB}=    Replace String    ${resultDB}    [roomTranferId]    ${roomTranferId}
    ${resultDB}=    Replace String    ${resultDB}    [tranferorType]    ${tranferorType}
    ${resultDB}=    Replace String    ${resultDB}    [ownerType]    ${ownerType}
    ${resultDB}=    Replace String    ${resultDB}    [userImage]    ${userImage}
    ${resultDB}=    Replace String    ${resultDB}    [title]    ${title}
    ${resultDB}=    Replace String    ${resultDB}    [firstName]    ${firstName}
    ${resultDB}=    Replace String    ${resultDB}    [lastName]    ${lastName}
    ${resultDB}=    Replace String    ${resultDB}    [companyName]    ${companyName}
    ${resultDB}=    Replace String    ${resultDB}    [nickname]    ${nickname}
    ${resultDB}=    Replace String    ${resultDB}    [shortName]    ${shortName}
    ${resultDB}=    Replace String    ${resultDB}    [identificationNo]    ${identificationNo}
    ${resultDB}=    Replace String    ${resultDB}    [birthDate]    ${datebirthDate}
    ${resultDB}=    Replace String    ${resultDB}    [identificationCreate]    ${dateIdentificationCreate}
    ${resultDB}=    Replace String    ${resultDB}    [identificationExpire]    ${dateIdentificationExpire}
    ${resultDB}=    Replace String    ${resultDB}    [phone]    ${phone}
    ${resultDB}=    Replace String    ${resultDB}    [fax]    ${fax}
    ${resultDB}=    Replace String    ${resultDB}    [lineId]    ${lineId}
    ${resultDB}=    Replace String    ${resultDB}    [email]    ${email}
    
    ${resultDB}=    Replace String    ${resultDB}    [education]    ${education}
    ${resultDB}=    Replace String    ${resultDB}    [occupation]    ${occupation}
    ${resultDB}=    Replace String    ${resultDB}    [occupationOther]    ${occupationOther}
    ${resultDB}=    Replace String    ${resultDB}    [salary]    ${salary}
    ${resultDB}=    Replace String    ${resultDB}    [taxId]    ${taxId}
    ${resultDB}=    Replace String    ${resultDB}    [juristicId]    ${juristicId}
    ${resultDB}=    Replace String    ${resultDB}    [address]    ${address}  
    ${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
    ${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${dateUpdatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}

    Log To Console    [resultDB] : ${resultDB}
    ${strResult}=    Convert To String    ${dataResult}[${i}]

    Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data RoomOwner${type}
    END
    Log To Console    ${\n}=========== End DB : [Create RoomOwner] =============== 

################################################################-- Request Verify DB Check Data ChangeOwner--################################################################
Request Verify DB Check Data ChangeOwner
    [Arguments]      ${type}    ${roomId}    ${roomTranferId}    ${dataRoomOwner}
    # [Arguments]    ${type}    ${roomId}    ${roomTranferId}    ${tranferorType}    ${ownerType}    ${identificationNo}    ${title}    ${firstName}    ${lastName}    ${companyName}    ${nickname}    ${shortName}    ${birthDate}    ${identificationCreateDate}    ${identificationExpireDate}    ${phone}    ${fax}    ${email}    ${lineId}    ${taxId}    ${juristicId}    ${education}    ${occupation}    ${occupationOther}    ${salary}    ${address}    ${cartype}    ${carplateNumber}    ${tranferDate}    ${arrivalDate}    ${appointmentDate}    ${acceptDate}    ${warrantyEndDate}    ${manageType}    ${languageOfDocuments}    ${addressForInvoictingReceipt}    ${electricStartUnit}    ${waterStartUnit}
     
    Log To Console    typetypetype${type} 
    Log To Console    ${\n}=========== Start DB : [ChangeOwner] =============== 

    # ${DB_SELECTSTATEMENT_ROOMOWNER_ROOMIDROOMTRANSFERID}    SELECT * FROM room_owner WHERE room_id = [room_id] and room_transfer_id = [room_transfer_id] and deleted_at IS NULL
    
    ${roomId}=    Convert To String    ${roomId}
    ${roomTranferId}=    Convert To String    ${roomTranferId}
    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_ROOMOWNER_ROOMIDROOMTRANSFERID}    [room_id]    ${roomId}
    ${selectStatement}=    Replace String    ${selectStatement}    [room_transfer_id]    ${roomTranferId}
    Log To Console    [room_owner : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [room_owner] Request Verify DB Check Data ChangeOwner : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : room_owner] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    # Log To Console    [rowCount : room_owner] : ${rowCount}
    @{valArrRoomOwnerId}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}

    # Log To Console    [result : room_owner] : ${dataResult}[${i}][0]
    ${id}=    Convert To String    ${dataResult}[${i}][0]
    Append To List    ${valArrRoomOwnerId}    ${id}        #Add data to array set at valArrData
    Set Global Variable    ${arrRoomOwnerId}    ${valArrRoomOwnerId}
    Log To Console    [arrRoomOwnerId] : ${arrRoomOwnerId}
    ${created_at}=    Convert To String    ${dataResult}[${i}][27]
    ${created_by}=    Convert To String    ${dataResult}[${i}][28]
    ${updated_at}=    Convert To String    ${dataResult}[${i}][29]
    ${updated_by}=    Convert To String    ${dataResult}[${i}][30]
    ${deleted_at}=    Convert To String    ${dataResult}[${i}][31]
    ${deleted_by}=    Convert To String    ${dataResult}[${i}][32]

    # ${roomTranferId}=    Convert To String    ${dataResult}[${i}][2]
    ${roomTranferId}=    Convert To String    ${roomTranferId}
    ${userImage}=    Convert To String    ${dataResult}[${i}][5]
    
    ${ownerType}=    Convert To String    ${dataRoomOwner[${i}]['ownerType']}
    ${tranferorType}=    Convert To String    ${dataRoomOwner[${i}]['tranferorType']}
    # Log To Console    dataRoomOwner${dataRoomOwner[${i}]['title']}
    ${title}=    Convert To String    ${dataRoomOwner[${i}]['title']}
    ${firstName}=    Convert To String    ${dataRoomOwner[${i}]['firstName']}
    ${lastName}=    Convert To String    ${dataRoomOwner[${i}]['lastName']}
    ${companyName}=    Set Variable If    '${ownerType}'=='1'        ${dataRoomOwner[${i}]['companyName']}
    ...    '${ownerType}'!='1'    ${dataResult}[${i}][9]
    ${companyName}=    Convert To String    ${dataRoomOwner[${i}]['companyName']}
    ${nickname}=    Convert To String    ${dataRoomOwner[${i}]['nickname']}
    ${shortName}=    Convert To String    ${dataRoomOwner[${i}]['shortName']}
    ${identificationNo}=    Convert To String    ${dataRoomOwner[${i}]['identificationNo']}
    
    ${birthDate}=    Convert To String    ${dataRoomOwner[${i}]['birthDate']}
    ${identificationCreateDate}=    Convert To String    ${dataRoomOwner[${i}]['identificationCreateDate']}
    ${identificationExpireDate}=    Convert To String    ${dataRoomOwner[${i}]['identificationExpireDate']}
    ${phone}=    Convert To String    ${dataRoomOwner[${i}]['phone']}
    ${fax}=    Convert To String    ${dataRoomOwner[${i}]['fax']}
    ${lineId}=    Convert To String    ${dataRoomOwner[${i}]['lineId']}
    ${email}=    Convert To String    ${dataRoomOwner[${i}]['email']}
    ${education}=    Convert To String    ${dataRoomOwner[${i}]['education']}
    ${occupation}=    Convert To String    ${dataRoomOwner[${i}]['occupation']}
    ${occupationOther}=    Convert To String    ${dataRoomOwner[${i}]['occupationOther']}
    ${salary}=    Convert To String    ${dataRoomOwner[${i}]['salary']}
    ${taxId}=    Convert To String    ${dataRoomOwner[${i}]['taxId']}
    ${juristicId}=    Convert To String    ${dataRoomOwner[${i}]['juristicId']}
    ${address}=    Convert To String    ${dataRoomOwner[${i}]['address']}

    # Log To Console    [result : created_at] : ${created_at}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # Log To Console    [result : updated_at] : ${updated_at}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    # ${dateUpdatedAt}=    Convert Format Date DB    ${updated_at}
    ${dateUpdatedAt}=    Run Keyword If    '${updated_at}'!='${NONE}'    Convert Format Date DB    ${updated_at}
    ...    ELSE IF    '${updated_at}'=='${NONE}'    Convert To String    ${NONE}
    # Log To Console    dateUpdatedAt : ${dateUpdatedAt}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${datebirthDate}=    Run Keyword If    '${birthDate}'!='${NONE}'    Convert Format Date DB No Have Second    ${birthDate}
    ...    ELSE IF    '${birthDate}'=='${NONE}'    Convert To String    ${NONE}
    # Log To Console    dateUpdatedAt : ${updated_at}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateIdentificationCreate}=    Run Keyword If    '${identificationCreateDate}'!='${NONE}'    Convert Format Date DB No Have Second    ${identificationCreateDate}
    ...    ELSE IF    '${identificationCreateDate}'=='${NONE}'    Convert To String    ${NONE}
    # Log To Console    dateUpdatedAt : ${updated_at}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateIdentificationExpire}=    Run Keyword If    '${identificationExpireDate}'!='${NONE}'    Convert Format Date DB No Have Second    ${identificationExpireDate}
    ...    ELSE IF    '${identificationExpireDate}'=='${NONE}'    Convert To String    ${NONE}


    # ((235, 7987, 230, 1, 2, None, 3, 'FirstName1', 'LastName1', None, 'Nickname1', None, '919191919', datetime.datetime(1991, 11, 30, 0, 0), datetime.datetime(2021, 12, 22, 0, 0), datetime.datetime(2024, 10, 6, 0, 0), '0919191919', None, 'email1@email1', 'lineid1', 6, 14, 'other1', 5, '115511551155', None, 'Address1', datetime.datetime(2022, 1, 5, 11, 46, 36), '10', datetime.datetime(2022, 1, 5, 15, 28, 46), '10', None, None),)
    # (([id], [roomId], [roomTranferId], [tranferorType], [ownerType], [userImage], [title], '[firstName]', '[lastName]', [companyName], '[nickname]', [shortName], '[identificationNo]', datetime.datetime([birthDate]), datetime.datetime([identificationCreate]), datetime.datetime([identificationExpire]), '[phone]', [fax], '[email]', '[lineId]', [education], [occupation], '[occupationOther]', [salary], '[taxId]', [juristicId], '[address]', datetime.datetime([created_at]), '[created_by]', [updated_by], [updated_at], [deleted_at], [deleted_by]),)

# ${DB_SELECTSTATEMENT_ROOMOWNER_CHECKCREATE_THAI_ALLFIELD_VALUE}    (([id], [roomId], [roomTranferId], [tranferorType], [ownerType], [userImage],
#  [title], '[firstName]', '[lastName]', [companyName], '[nickname]', [shortName], '[identificationNo]', 
#  datetime.datetime([birthDate]), datetime.datetime([identificationCreate]), datetime.datetime([identificationExpire]), '[phone]', 
#  [fax], '[email]', '[lineId]', [education], [occupation], '[occupationOther]', [salary], '[taxId]', [juristic], '[address]',
#   datetime.datetime([created_at]), '[created_by]', [updated_by], [updated_at], [deleted_at], [deleted_by]),)
    
    Log To Console    [typetypetype] : ${type}${dataResult}[${i}][8]
    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_CREATE_ALLFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_THAI_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_CREATE_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_REQUIREDFIELD_VALUE}
    
    ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
    ${resultDB}=    Replace String    ${resultDB}    [roomId]    ${roomId}
    ${resultDB}=    Replace String    ${resultDB}    [roomTranferId]    ${roomTranferId}
    ${resultDB}=    Replace String    ${resultDB}    [tranferorType]    ${tranferorType}
    ${resultDB}=    Replace String    ${resultDB}    [ownerType]    ${ownerType}
    ${resultDB}=    Replace String    ${resultDB}    [userImage]    ${userImage}
    ${resultDB}=    Replace String    ${resultDB}    [title]    ${title}
    ${resultDB}=    Replace String    ${resultDB}    [firstName]    ${firstName}
    ${resultDB}=    Replace String    ${resultDB}    [lastName]    ${lastName}
    ${resultDB}=    Replace String    ${resultDB}    [companyName]    ${companyName}
    ${resultDB}=    Replace String    ${resultDB}    [nickname]    ${nickname}
    ${resultDB}=    Replace String    ${resultDB}    [shortName]    ${shortName}
    ${resultDB}=    Replace String    ${resultDB}    [identificationNo]    ${identificationNo}
    ${resultDB}=    Replace String    ${resultDB}    [birthDate]    ${datebirthDate}
    ${resultDB}=    Replace String    ${resultDB}    [identificationCreate]    ${dateIdentificationCreate}
    ${resultDB}=    Replace String    ${resultDB}    [identificationExpire]    ${dateIdentificationExpire}
    ${resultDB}=    Replace String    ${resultDB}    [phone]    ${phone}
    ${resultDB}=    Replace String    ${resultDB}    [fax]    ${fax}
    ${resultDB}=    Replace String    ${resultDB}    [lineId]    ${lineId}
    ${resultDB}=    Replace String    ${resultDB}    [email]    ${email}
    
    ${resultDB}=    Replace String    ${resultDB}    [education]    ${education}
    ${resultDB}=    Replace String    ${resultDB}    [occupation]    ${occupation}
    ${resultDB}=    Replace String    ${resultDB}    [occupationOther]    ${occupationOther}
    ${resultDB}=    Replace String    ${resultDB}    [salary]    ${salary}
    ${resultDB}=    Replace String    ${resultDB}    [taxId]    ${taxId}
    ${resultDB}=    Replace String    ${resultDB}    [juristicId]    ${juristicId}
    ${resultDB}=    Replace String    ${resultDB}    [address]    ${address}  
    ${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
    ${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${dateUpdatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}

    Log To Console    [resultDB] : ${resultDB}
    ${strResult}=    Convert To String    ${dataResult}[${i}]

    Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data ChangeOwner${type}
    END
    Log To Console    ${\n}=========== End DB : [Create RoomOwner] =============== 

################################################################-- Request Verify DB Check Data Check Room Asset--################################################################
Request Verify DB Check Data Check Room Asset
    [Arguments]      ${type}    ${roomTransferId}    ${dataCheckRoomAsset}

    Log To Console    ${\n}=========== Start DB : [Request Verify DB Check Data Check Room Asset] =============== 
    #${DB_SELECTSTATEMENT_CHECKROOMASSET_ROOMTRANSFER}    SELECT * FROM check_room_asset WHERE room_transfer_id = [room_transfer_id] and deleted_at IS NULL

    ${roomTransferId}=    Convert To String    ${roomTransferId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKROOMASSET_ROOMTRANSFER}    [room_transfer_id]    ${roomTransferId}
    Log To Console    [check_room_asset : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    FOR    ${i}    IN RANGE    ${rowCount}  
    
    Log To Console    [result : check_room_asset] : ${dataResult}[${i}][0]
    ${id}=    Convert To String    ${dataResult}[${i}][0]
    Log To Console    [result : check_room_asset] : ${id}
    # Set Global Variable    ${accountUserId}    ${id}
    ${created_at}=    Convert To String    ${dataResult}[${i}][5]
    ${created_by}=    Convert To String    ${dataResult}[${i}][6]
    ${updated_at}=    Convert To String    ${dataResult}[${i}][7]
    # ${updated_by}=    Convert To String    ${dataResult}[${i}][8]
    ${updated_by}=    Run Keyword If    '${dataResult}[${i}][8]'!='${NONE}'    Convert To String    ${dataResult}[${i}][8]
    ...    ELSE IF    '${dataResult}[${i}][8]'=='${NONE}'    Convert To String    ${NONE}
    ${deleted_at}=    Convert To String    ${dataResult}[${i}][9]
    ${deleted_by}=    Convert To String    ${dataResult}[${i}][10]

    ${checkAssetId}=    Convert To String    ${dataResult}[${i}][2]
    ${check_status}=    Convert To String    ${dataCheckRoomAsset[${i}]['check_status']}
    ${remark}=    Convert To String    ${dataCheckRoomAsset[${i}]['remark']}
    ${remark}=    Set Variable If    '${remark}'=='${NONE}'    ${remark}
    ...    '${remark}'!='${NONE}'    '${remark}'
    # Log To Console    ${remark}
    # ${remark}=    Run Keyword If    '${remark}'=='${NONE}'    Convert To String    ${dataCheckRoomAsset[${i}]['remark']}
    # ...    '${remark}'!='${NONE}'    Set Variable    '${remark}'
    Log To Console    [result : check_room_asset] : ${checkAssetId}
    Log To Console    [result : check_room_asset] : ${check_status}
    Log To Console    [result : check_room_asset] : ${remark}
    # Log To Console    [result : created_at] : ${created_at}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # Log To Console    dateCreatedAt : ${dateCreatedAt}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateUpdatedAt}=    Run Keyword If    '${updated_at}'!='${NONE}'    Convert Format Date DB    ${updated_at}
    ...    ELSE IF    '${updated_at}'=='${NONE}'    Convert To String    ${NONE}
    # Log To Console    dateUpdatedAt : ${updated_at}

    # (232, 230, 79, 1, '[]]', datetime.datetime(2022, 1, 5, 11, 46, 36), '[created_by]', datetime.datetime(2022, 1, 6, 10, 30, 55), '10', None, None)
    # ${DB_SELECTSTATEMENT_CREATEROOMOWNER_CHECKROOMASSET_ALLFIELD_VALUE}    ([id], [roomTransferId], [checkAssetId], [check_status], '[remark]', datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by])
    # ${DB_SELECTSTATEMENT_UPDATEROOMOWNER_CHECKROOMASSET_ALLFIELD_VALUE}    ([id], [roomTransferId], [checkAssetId], [check_status], '[remark]', datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', [deleted_at], [deleted_by])
  
    
    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_CREATE_ALLFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_CHECKROOMASSET_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_CREATE_FOREIGNERS_ALLFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_CHECKROOMASSET_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_CREATE_JURISTICPERSON_ALLFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_CHECKROOMASSET_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_CREATE_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_CHECKROOMASSET_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_CREATE_FOREIGNERS_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_CHECKROOMASSET_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_CREATE_JURISTICPERSON_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_CHECKROOMASSET_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_EDIT_ALLFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_EDIT_CHECKROOMASSET_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_EDIT_FOREIGNERS_ALLFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_EDIT_CHECKROOMASSET_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_EDIT_JURISTICPERSON_ALLFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_EDIT_CHECKROOMASSET_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_EDIT_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_EDIT_CHECKROOMASSET_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_EDIT_FOREIGNERS_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_EDIT_CHECKROOMASSET_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_EDIT_JURISTICPERSON_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_EDIT_CHECKROOMASSET_ALLFIELD_VALUE}
    
    Log To Console    [result : valueReplace] : ${valueReplace}
    ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
    ${resultDB}=    Replace String    ${resultDB}    [roomTransferId]    ${roomTransferId}
    ${resultDB}=    Replace String    ${resultDB}    [checkAssetId]    ${checkAssetId}
    ${resultDB}=    Replace String    ${resultDB}    [check_status]    ${check_status}
    ${resultDB}=    Replace String    ${resultDB}    [remark]    ${remark}
    ${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
    ${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${dateUpdatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}
    # Log To Console    [resultDB] : ${resultDB}
    ${strResult}=    Convert To String    ${dataResult}[${i}]
    Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Check Room Asset
    # Log To Console    [strResult] : ${strResult}
    END

    Log To Console    ${\n}=========== End DB : [Request Verify DB Check Data Check Room Asset] =============== 


################################################################-- Request Verify DB Check Data Cars--################################################################
Request Verify DB Check Data Cars

    [Arguments]      ${type}    ${roomId}    ${roomTranferId}    ${roomOwnerId}    ${dataCars}

    Log To Console    ${\n}=========== Start DB : [Request Verify DB Check Data Cars] =============== 
    # ${DB_SELECTSTATEMENT_CARS_ROOMID}    SELECT * FROM cars WHERE room_id = [room_id] and deleted_at IS NULL

    ${roomId}=    Convert To String    ${roomId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CARS_ROOMID}    [room_id]    ${roomId}
    Log To Console    [cars : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [cars] Request Verify DB Check Data Cars : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : cars] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : cars] : ${rowCount}
    FOR    ${i}    IN RANGE    ${rowCount}  
    
    Log To Console    [result : cars] : ${dataResult}[${i}][0]
    ${id}=    Convert To String    ${dataResult}[${i}][0]
    # Set Global Variable    ${accountUserId}    ${id}
    ${created_at}=    Convert To String    ${dataResult}[${i}][7]
    ${created_by}=    Convert To String    ${dataResult}[${i}][8]
    ${updated_at}=    Convert To String    ${dataResult}[${i}][9]
    ${updated_by}=    Run Keyword If    '${dataResult}[${i}][10]'!='${NONE}'    Convert To String    '${dataResult}[${i}][10]'
    ...    ELSE IF    '${dataResult}[${i}][10]'=='${NONE}'    Convert To String    ${NONE}
    ${deleted_at}=    Convert To String    ${dataResult}[${i}][11]
    ${deleted_by}=    Convert To String    ${dataResult}[${i}][12]

    ${roomTranferId}=    Convert To String    ${roomTranferId}
    ${roomOwnerId}=    Convert To String    ${roomOwnerId}
    ${carType}=    Convert To String    ${dataCars[${i}]['carType']}
    ${carplateNumber}=    Convert To String    ${dataCars[${i}]['carplateNumber']}
    ${isCarSticker}=    Convert To String    ${dataCars[${i}]['isCarSticker']}

    # Log To Console    [result : created_at] : ${created_at}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    # Log To Console    dateCreatedAt : ${dateCreatedAt}
    # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateUpdatedAt}=    Run Keyword If    '${updated_at}'!='${NONE}'    Convert Format Date DB    ${updated_at}
    ...    ELSE IF    '${updated_at}'=='${NONE}'    Convert To String    ${NONE}
    # Log To Console    dateUpdatedAt : ${updated_at}
    
    # ((407, 7987, 229, 234, 1, 'Address1', 0, datetime.datetime(2022, 1, 4, 18, 30, 22), '10', None, None, None, None), 
    # (408, 7987, 230, 235, 1, 'Address1', 0, datetime.datetime(2022, 1, 5, 11, 46, 36), '10', datetime.datetime(2022, 1, 6, 10, 30, 55), '10', None, None))
    # ([id], [roomId], [roomTranferId], [roomOwnerId], [carType], '[carplateNumber]', [isCarSticker], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by])
    
    # ${DB_SELECTSTATEMENT_CREATEROOMOWNER_CAR_ALLFIELD_VALUE}    ([id], [roomId], [roomTranferId], [roomOwnerId], [carType], '[carplateNumber]', [isCarSticker], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by])
    # ${DB_SELECTSTATEMENT_UPDATEROOMOWNER_CAR_ALLFIELD_VALUE}    ([id], [roomId], [roomTranferId], [roomOwnerId], [carType], '[carplateNumber]', [isCarSticker], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', [deleted_at], [deleted_by])

    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_CREATE_ALLFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_CAR_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_CREATE_FOREIGNERS_ALLFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_CAR_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_CREATE_JURISTICPERSON_ALLFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_CAR_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_EDIT_ALLFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_EDIT_CAR_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_EDIT_FOREIGNERS_ALLFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_EDIT_CAR_ALLFIELD_VALUE}
    ...    '${type}'=='${MYSQL_TYPE_EDIT_JURISTICPERSON_ALLFIELD}'    ${DB_SELECTSTATEMENT_ROOMOWNER_EDIT_CAR_ALLFIELD_VALUE}
    
    ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
    ${resultDB}=    Replace String    ${resultDB}    [roomId]    ${roomId}
    ${resultDB}=    Replace String    ${resultDB}    [roomTranferId]    ${roomTranferId}
    ${resultDB}=    Replace String    ${resultDB}    [roomOwnerId]    ${roomOwnerId}
    ${resultDB}=    Replace String    ${resultDB}    [carType]    ${carType}
    ${resultDB}=    Replace String    ${resultDB}    [carplateNumber]    ${carplateNumber}
    ${resultDB}=    Replace String    ${resultDB}    [isCarSticker]    ${isCarSticker}
    ${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
    ${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${dateUpdatedAt}
    ${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
    ${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}
    Log To Console    [resultDB] : ${resultDB}
    ${strResult}=    Convert To String    ${dataResult[${i}]}
    Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Cars
    Log To Console    [strResult] : ${strResult}
    END

    Log To Console    ${\n}=========== End DB : [Request Verify DB Check Data Cars] =============== 



################################################################-- Request DB Data Rooms For Check Status--################################################################
Request DB Data Rooms For Check Status    

    [Arguments]      ${propertyId}    ${buildingId}    ${roomNo}

    Log To Console    ${\n}=========== Start DB : [Request Verify DB Check Data Cars] =============== 
    #${DB_SELECTSTATEMENT_ROOMS_ACCOUNTID_PROPERTY_BUILDING_ROOMNAME_STATUS}    SELECT status FROM rooms WHERE account_id = [account_id] and property_id = [property_id] and building_id = [building_id] and room_no = '[room_no]' and deleted_at IS NULL

    ${accountId}=    Convert To String    ${accountId}
    ${propertyId}=    Convert To String    ${propertyId}
    ${buildingId}=    Convert To String    ${buildingId}
    ${roomNo}=    Convert To String    ${roomNo}
    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_ROOMS_ACCOUNTID_PROPERTY_BUILDING_ROOMNAME_STATUS}    [account_id]    ${accountId}
    ${selectStatement}=    Replace String    ${selectStatement}    [property_id]    ${propertyId}
    ${selectStatement}=    Replace String    ${selectStatement}    [building_id]    ${buildingId}
    ${selectStatement}=    Replace String    ${selectStatement}    [room_no]    ${roomNo}
    Log To Console    [check_asset : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [cars] Request DB Data Rooms For Check Status : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : cars] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : cars] : ${rowCount}

    ${status}=    Convert To String    ${dataResult}[0][0]
    
    # ((2,),)
    # (([status],),)
    # ${DB_SELECTSTATEMENT_ROOMS_ACCOUNTID_PROPERTY_BUILDING_ROOMNAME_STATUS_VALUE}    (([status],),)
    
    ${resultDB}=    Replace String    ${DB_SELECTSTATEMENT_ROOMS_ACCOUNTID_PROPERTY_BUILDING_ROOMNAME_STATUS_VALUE}    [status]    ${status}
    Log To Console    [resultDB] : ${resultDB}
    
    ${strResult}=    Convert To String    ${dataResult}
    Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request DB Data Rooms For Check Status   
    Log To Console    [strResult] : ${strResult}

    Log To Console    ${\n}=========== End DB : [Request DB Data Rooms For Check Status] =============== 

################################################################-- Update tb rooms set status--################################################################
Update tb rooms set status

    [Arguments]    ${propertyId}    ${buildingId}    ${roomNo}    ${roomId}    ${fileName}
    Log To Console    ${\n}=========== Start DB : [Update tb rooms set status - rooms] =============== 
    #${DB_UPDATESTATEMENT_ROOMOWNER_ROOMS_STATUS}    UPDATE rooms SET status = [status] WHERE account_id = [account_id] and property_id = [property_id] and building_id = [building_id] and room_no = '[room_no]' and id = [room_id] and deleted_at IS NULL


    ${accountId}=    Convert To String    ${accountId}
    ${propertyId}=    Convert To String    ${propertyId}
    ${buildingId}=    Convert To String    ${buildingId}
    ${roomNo}=    Convert To String    ${roomNo}
    ${roomId}=    Convert To String    ${roomId}
    ${status}=    Convert To String    1
    ${selectStatement}=    Replace String    ${DB_UPDATESTATEMENT_ROOMOWNER_ROOMS_STATUS}    [status]    ${status}
    ${selectStatement}=    Replace String    ${selectStatement}    [account_id]    ${accountId}
    ${selectStatement}=    Replace String    ${selectStatement}    [property_id]    ${propertyId}
    ${selectStatement}=    Replace String    ${selectStatement}    [building_id]    ${buildingId}
    ${selectStatement}=    Replace String    ${selectStatement}    [room_no]    ${roomNo}
    ${selectStatement}=    Replace String    ${selectStatement}    [room_id]    ${roomId}
    Log To Console    [check_asset : resultQuery] : ${selectStatement}

    Create File    ./${fileName}    ${selectStatement}
    
    ${resultUserRole}=    Start Connect To MySql Execute Sql Script    ${fileName}
    Log To Console    [rooms] Update tb rooms set status : ${resultUserRole}
    Log To Console    [result : rooms] : ${resultUserRole}
    Remove File    ./${fileName}

    Log To Console    ${\n}=========== End DB : [Update tb rooms set status - rooms] =============== 


################################################################-- Update tb room_owner set delete_at--################################################################
Update tb room_owner set delete_at

    [Arguments]    ${roomId}    ${deleted_at}    ${fileName}
    Log To Console    ${\n}=========== Start DB : [Update tb room_owner set delete_at - room_owner] =============== 
    #${DB_UPDATESTATEMENT_ROOMOWNER_ROOMOWNER_DELETEDAT}    UPDATE room_owner SET deleted_at = [deleted_at] WHERE room_id = [room_id] and deleted_at IS NULL

    ${roomId}=    Convert To String    ${roomId}
    ${selectStatement}=    Replace String    ${DB_UPDATESTATEMENT_ROOMOWNER_ROOMOWNER_DELETEDAT}    [room_id]    ${roomId}
    ${selectStatement}=    Replace String    ${selectStatement}    [deleted_at]    ${deleted_at}
    Log To Console    [room_owner : resultQuery] : ${selectStatement}

    Create File    ./${fileName}    ${selectStatement}
    
    ${resultUserRole}=    Start Connect To MySql Execute Sql Script    ${fileName}
    Log To Console    [room_owner] Update tb room_owner set delete_at : ${resultUserRole}
    Log To Console    [result : room_owner] : ${resultUserRole}
    Remove File    ./${fileName}

    Log To Console    ${\n}=========== End DB : [Update tb room_owner set delete_at - room_owner] =============== 

################################################################-- Update tb room_transfer set delete_at--################################################################
Update tb room_transfer set delete_at

    [Arguments]    ${roomTransferId}    ${deleted_at}    ${fileName}
    Log To Console    ${\n}=========== Start DB : [Update tb room_transfer set delete_at - room_transfer] =============== 
    #${DB_UPDATESTATEMENT_ROOMOWNER_ROOMTRANSFER_DELETEDAT}    UPDATE room_transfer SET deleted_at = [deleted_at] WHERE  id = [room_transfer_id] and deleted_at IS NULL
    
    ${roomTransferId}=    Convert To String    ${roomTransferId}
    ${selectStatement}=    Replace String    ${DB_UPDATESTATEMENT_ROOMOWNER_ROOMTRANSFER_DELETEDAT}    [room_transfer_id]    ${roomTransferId}
    ${selectStatement}=    Replace String    ${selectStatement}    [deleted_at]    ${deleted_at}
    Log To Console    [room_transfer : resultQuery] : ${selectStatement}

    Create File    ./${fileName}    ${selectStatement}
    
    ${resultUserRole}=    Start Connect To MySql Execute Sql Script    ${fileName}
    Log To Console    [room_transfer] Update tb room_transfer set delete_at : ${resultUserRole}
    Log To Console    [result : room_transfer] : ${resultUserRole}
    Remove File    ./${fileName}

    Log To Console    ${\n}=========== End DB : [Update tb room_transfer set delete_at - room_transfer] =============== 
################################################################-- Update tb check_room_asset set delete_at--################################################################
Update tb check_room_asset set delete_at

    [Arguments]    ${roomTransferId}    ${deleted_at}    ${fileName}
    Log To Console    ${\n}=========== Start DB : [Update tb check_room_asset set delete_at - check_room_asset] =============== 
    #${DB_UPDATESTATEMENT_ROOMOWNER_CHECKROOMASSET_DELETEDAT}    UPDATE check_room_asset SET deleted_at = [deleted_at] WHERE room_transfer_id = [room_transfer_id] and deleted_at IS NULL
    
    ${roomTransferId}=    Convert To String    ${roomTransferId}
    ${selectStatement}=    Replace String    ${DB_UPDATESTATEMENT_ROOMOWNER_CHECKROOMASSET_DELETEDAT}    [room_transfer_id]    ${roomTransferId}
    ${selectStatement}=    Replace String    ${selectStatement}    [deleted_at]    ${deleted_at}
    Log To Console    [check_room_asset : resultQuery] : ${selectStatement}

    Create File    ./${fileName}    ${selectStatement}
    
    ${resultUserRole}=    Start Connect To MySql Execute Sql Script    ${fileName}
    Log To Console    [check_room_asset] Update tb check_room_asset set delete_at : ${resultUserRole}
    Log To Console    [result : check_room_asset] : ${resultUserRole}
    Remove File    ./${fileName}

    Log To Console    ${\n}=========== End DB : [Update tb check_room_asset set delete_at - check_room_asset] =============== 

################################################################-- Update tb cars set delete_at--################################################################
Update tb cars set delete_at

    [Arguments]    ${roomId}    ${deleted_at}    ${fileName}
    Log To Console    ${\n}=========== Start DB : [Update tb cars set delete_at - cars] =============== 
    #${DB_UPDATESTATEMENT_ROOMOWNER_CARS_DELETEDAT}    UPDATE cars SET SET deleted_at = [deleted_at] WHERE room_id = [room_id] and deleted_at IS NULL

    ${roomId}=    Convert To String    ${roomId}
    ${selectStatement}=    Replace String    ${DB_UPDATESTATEMENT_ROOMOWNER_CARS_DELETEDAT}    [room_id]    ${roomId}
    ${selectStatement}=    Replace String    ${selectStatement}    [deleted_at]    ${deleted_at}
    Log To Console    [cars : resultQuery] : ${selectStatement}

    Create File    ./${fileName}    ${selectStatement}
    
    ${resultUserRole}=    Start Connect To MySql Execute Sql Script    ${fileName}
    Log To Console    [cars] Update tb cars set delete_at : ${resultUserRole}
    Log To Console    [result : cars] : ${resultUserRole}
    Remove File    ./${fileName}

    Log To Console    ${\n}=========== End DB : [Update tb cars set delete_at - cars] =============== 
# ################################################################-- Update tb check_asset set delete_at RoomOwner--################################################################
Update tb check_asset set delete_at RoomOwner

    [Arguments]    ${checkAssetId}    ${deleted_at}    ${fileName}
    Log To Console    ${\n}=========== Start DB : [Update tb check_asset set delete_at RoomOwner - check_asset] =============== 
    #${DB_UPDATESTATEMENT_ROOMOWNER_CHECKASSET_DELETEDAT}    UPDATE check_asset SET deleted_at = [deleted_at] WHERE  id = [checkAssetId] and deleted_at IS NULL

    ${checkAssetId}=    Convert To String    ${checkAssetId}
    ${selectStatement}=    Replace String    ${DB_UPDATESTATEMENT_ROOMOWNER_CHECKASSET_DELETEDAT}    [checkAssetId]    ${checkAssetId}
    ${selectStatement}=    Replace String    ${selectStatement}    [deleted_at]    ${deleted_at}
    Log To Console    [check_asset : resultQuery] : ${selectStatement}

    Create File    ./${fileName}    ${selectStatement}
    
    ${resultUserRole}=    Start Connect To MySql Execute Sql Script    ${fileName}
    Log To Console    [check_asset] Update tb check_asset set delete_at RoomOwner : ${resultUserRole}
    Log To Console    [result : check_asset] : ${resultUserRole}
    Remove File    ./${fileName}

    Log To Console    ${\n}=========== End DB : [Update tb check_asset set delete_at RoomOwner - check_asset] =============== 
# Request Verify DB Check Data Edit MulctMethod
#     [Arguments]      ${type}    ${nameTh}   ${remark}    ${status}    ${adjustmentRate}    ${unitChange}    ${calculationMethodId}    ${timeUnit}
      
#     Log To Console    ${\n}=========== Start DB : [Edit MulctMethod] =============== 
#     # ${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKEDIT}    SELECT * FROM mulct_method WHERE id = [id] AND deleted_at IS NULL

#     ${convertStrMulctMethodId}=    Convert To String    ${MulctMethodId}

#     ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKEDIT}    [id]    ${convertStrMulctMethodId}
#     Log To Console    [mulct_method : resultQuery] : ${selectStatement}

#     #[(), 0]
#     # queryResults,rowCount
#     @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
#     # Log To Console    [mulct_method] Request Verify DB Check Data Edit MulctMethod : ${result}
#     ${dataResult}=    Set Variable    ${result}[0]
#     Log To Console    [result : mulct_method] : ${dataResult}
#     ${rowCount}=    Set Variable    ${result}[1]
#     # Log To Console    [rowCount : mulct_method] : ${rowCount}

#     Log To Console    [result : mulct_method] : ${dataResult}[0][0]
#     ${id}=    Convert To String    ${dataResult}[0][0]
#     ${created_at}=    Convert To String    ${dataResult}[0][10]
#     ${created_by}=    Convert To String    ${dataResult}[0][9]
#     ${updated_at}=    Convert To String    ${dataResult}[0][12]
#     ${updated_by}=    Convert To String    ${dataResult}[0][11]
#     ${deleted_at}=    Convert To String    ${dataResult}[0][13]
#     ${deleted_by}=    Convert To String    ${dataResult}[0][14]
#     ${accountId}=    Convert To String    ${accountId}
#     ${remark}=    Convert To String    ${remark}
#     ${status}=    Convert To String    ${status}
#     ${adjustmentRate}=    Convert To String    ${adjustmentRate}
#     ${unitChange}=    Convert To String    ${unitChange}
#     ${calculationMethodId}=    Convert To String    ${calculationMethodId}
#     ${timeUnit}=    Convert To String    ${timeUnit}

#     # Log To Console    [result : created_at] : ${created_at}
#     # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
#     ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
#     # # Log To Console    dateCreatedAt : ${dateCreatedAt}
#     # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
#     ${dateUpdatedAt}=    Convert Format Date DB    ${updated_at}
#     # Log To Console    dateUpdatedAt : ${updated_at}
    
#     # ((181, 7, None, 1, Decimal('3.00'), None, None, None, 0, None, '4321', 'ชื่อรายได้ ภาษาไทย2', 'ชื่อรายได้ ภาษาอังกฤษ', 'หมายเหตุ1', Decimal('3.00'), Decimal('2.00'), 7, 0, 2, datetime.datetime(2021, 11, 30, 14, 35, 11), '10', datetime.datetime(2021, 11, 30, 14, 35, 29), '10', None, None, 1),)
#     # (([id], [accountId], [mulct_code_id], [calculation_method_id], Decimal('[price_unit]'), [minimum_unit], [minimum_price], [calculation_date_from], [calculate_mulct_flag], [is_calculate_common_fee], '[incomecode]', '[nameTh]', [nameEn], '[remark]', Decimal('[vat_percent]'), Decimal('[tax_percent]'), [calculation_time], [status], [group_type_id], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', [deleted_at], [deleted_by], [index]),)
    
#     ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_EDIT_ALLFIELD}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKEDIT_ALLFIELD_VALUE}
#     ...    '${type}'=='${MYSQL_TYPE_EDIT_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKEDIT_REQUIREDFIELD_VALUE}
    
#     ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
#     ${resultDB}=    Replace String    ${resultDB}    [accountId]    ${accountId}
#     ${resultDB}=    Replace String    ${resultDB}    [adjustmentRate]    ${adjustmentRate}
#     ${resultDB}=    Replace String    ${resultDB}    [calculateMulctType]    ${unitChange}
#     ${resultDB}=    Replace String    ${resultDB}    [adjustmentRateType]    ${calculationMethodId}
#     ${resultDB}=    Replace String    ${resultDB}    [unitFromTo]    ${timeUnit}
#     ${resultDB}=    Replace String    ${resultDB}    [nameTh]    ${nameTh}
#     ${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
#     ${resultDB}=    Replace String    ${resultDB}    [remark]    ${remark}
#     ${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
#     ${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
#     ${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${dateUpdatedAt}
#     ${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
#     ${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
#     ${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}
#     # Log To Console    [resultDB] : ${resultDB}
#     ${strResult}=    Convert To String    ${dataResult}

#     Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Edit MulctMethod

#     Log To Console    ${\n}=========== End DB : [Edit MulctMethod] =============== 

# Request Verify DB Check Data View MulctMethod 
#     [Arguments]      ${type}    ${nameTh}   ${remark}    ${status}    ${adjustmentRate}    ${unitChange}    ${calculationMethodId}    ${timeUnit}
    
#     Log To Console    ${\n}=========== Start DB : [View MulctMethod] =============== 
#     # ${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKVIEW}    SELECT * FROM mulct_method WHERE id = [id] AND deleted_at IS NULL
#     # ${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKVIEW_ALLFIELD_VALUE}    ([id], [accountId], [mulctMethodId], '[mulctCode]', '[nameTh]', '[nameEn]', [status], Decimal('[vat]'), Decimal('[tax]'), '[remark]', [groupTypeId], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by])

#     ${convertStrMulctMethodId}=    Convert To String    ${MulctMethodId}

#     ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKVIEW}    [id]    ${convertStrMulctMethodId}
#     Log To Console    [mulct_method : resultQuery] : ${selectStatement}

#     #[(), 0]
#     # queryResults,rowCount
#     @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
#     # Log To Console    [mulct_method] Request Verify DB Check Data View MulctMethod : ${result}
#     ${dataResult}=    Set Variable    ${result}[0]
#     Log To Console    [result : mulct_method] : ${dataResult}
#     ${rowCount}=    Set Variable    ${result}[1]
#     # Log To Console    [rowCount : mulct_method] : ${rowCount}
    
#     ${id}=    Convert To String    ${dataResult}[0][0]
#     ${created_at}=    Convert To String    ${dataResult}[0][10]
#     ${created_by}=    Convert To String    ${dataResult}[0][9]
#     ${updated_at}=    Convert To String    ${dataResult}[0][12]
#     ${updated_by}=    Convert To String    ${dataResult}[0][11]
#     ${deleted_at}=    Convert To String    ${dataResult}[0][13]
#     ${deleted_by}=    Convert To String    ${dataResult}[0][14]
#     ${accountId}=    Convert To String    ${accountId}
#     ${remark}=    Convert To String    ${remark}
#     ${status}=    Convert To String    ${status}
#     ${adjustmentRate}=    Convert To String    ${adjustmentRate}
#     ${unitChange}=    Convert To String    ${unitChange}
#     ${calculationMethodId}=    Convert To String    ${calculationMethodId}
#     ${timeUnit}=    Convert To String    ${timeUnit}
    
#     # Log To Console    [result : created_at] : ${created_at}
#     # # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
#     ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
#     # Log To Console    dateCreatedAt : ${dateCreatedAt}
#     # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
#     ${dateUpdatedAt}=    Convert Format Date DB    ${updated_at}
#     # Log To Console    dateUpdatedAt : ${updated_at}
    
#     # ((497, 7, 1, 2, 2, 1, 'ชื่อวิธีคำนวณค่าปรับ', 'หมายเหตุ1', 1, '10', datetime.datetime(2021, 12, 9, 14, 10, 52), None, datetime.datetime(2021, 12, 9, 14, 10, 52), None, None),)
#     # (([id], [accountId], [adjustmentRate], [calculateMulctType], [adjustmentRateType], [unitFromTo], '[nameTh]', '[remark]', [status], '[created_by]', datetime.datetime([created_at]), [updated_by], [updated_at], [deleted_at], [deleted_by]),)
    
#     ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_VIEW_ALLFIELD}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKVIEW_ALLFIELD_VALUE} 
#     # # ...    '${type}'=='${MYSQL_TYPE_VIEW_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKCREATE_REQUIREDFIELD_VALUE}
    
#     FOR    ${i}    IN RANGE    ${rowCount}  
#     # Log To Console    [result : mulct_method] : ${dataResult}[0][0]
#     # ${property_id}=    Convert To String    ${property_id[${i}]}
#     # ${building_id}=    Convert To String    ${building_id[${i}]}
    
#         ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
#         ${resultDB}=    Replace String    ${resultDB}    [accountId]    ${accountId}
#         ${resultDB}=    Replace String    ${resultDB}    [adjustmentRate]    ${adjustmentRate}
#         ${resultDB}=    Replace String    ${resultDB}    [calculateMulctType]    ${unitChange}
#         ${resultDB}=    Replace String    ${resultDB}    [adjustmentRateType]    ${calculationMethodId}
#         ${resultDB}=    Replace String    ${resultDB}    [unitFromTo]    ${timeUnit}
#         ${resultDB}=    Replace String    ${resultDB}    [nameTh]    ${nameTh}
#         ${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
#         ${resultDB}=    Replace String    ${resultDB}    [remark]    ${remark}
#         ${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
#         ${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
#         ${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${dateUpdatedAt}
#         ${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
#         ${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
#         ${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}
#         # Log To Console    [resultDB] : ${resultDB}
#         ${strResult}=    Convert To String    ${dataResult[${i}]}
#     END
#     Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data View MulctMethod

#     Log To Console    ${\n}=========== End DB : [View MulctMethod] =============== 

# Request Verify DB Check Data Delete MulctMethod
#     [Arguments]      ${type}    ${nameTh}   ${remark}    ${status}    ${adjustmentRate}    ${unitChange}    ${calculationMethodId}    ${timeUnit}
    
#     Log To Console    ${\n}=========== Start DB : [Delete MulctMethod] =============== 
#     #${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKDELETE}    SELECT * FROM mulct_method WHERE id = [id]

#     ${convertStrMulctMethodId}=    Convert To String    ${MulctMethodId}

#     ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKDELETE}    [id]    ${convertStrMulctMethodId}
#     Log To Console    [mulct_method : resultQuery] : ${selectStatement}

#     #[(), 0]
#     # queryResults,rowCount
#     @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
#     # Log To Console    [mulct_method] Request Verify DB Check Data Delete MulctMethod : ${result}
#     ${dataResult}=    Set Variable    ${result}[0]
#     Log To Console    [result : mulct_method] : ${dataResult}
#     ${rowCount}=    Set Variable    ${result}[1]
#     # Log To Console    [rowCount : mulct_method] : ${rowCount}
 
#     Log To Console    [result : mulct_method] : ${dataResult}[0][0]
#     ${id}=    Convert To String    ${dataResult}[0][0]
#     ${created_at}=    Convert To String    ${dataResult}[0][10]
#     ${created_by}=    Convert To String    ${dataResult}[0][9]
#     ${updated_at}=    Convert To String    ${dataResult}[0][12]
#     ${updated_by}=    Convert To String    ${dataResult}[0][11]
#     ${deleted_at}=    Convert To String    ${dataResult}[0][13]
#     ${deleted_by}=    Convert To String    ${dataResult}[0][14]
#     ${accountId}=    Convert To String    ${accountId}
#     ${remark}=    Convert To String    ${remark}
#     ${status}=    Convert To String    ${status}
#     ${adjustmentRate}=    Convert To String    ${adjustmentRate}
#     ${unitChange}=    Convert To String    ${unitChange}
#     ${calculationMethodId}=    Convert To String    ${calculationMethodId}
#     ${timeUnit}=    Convert To String    ${timeUnit}

#     # Log To Console    [result : created_at] : ${created_at}
#     # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
#     ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
#     # Log To Console    dateCreatedAt : ${dateCreatedAt}
#     # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
#     ${dateUpdatedAt}=    Convert Format Date DB    ${updated_at}
#     # Log To Console    dateUpdatedAt : ${updated_at}
#     # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
#     ${dateDeletedAt}=    Convert Format Date DB    ${deleted_at}
#     # Log To Console    dateDeletedAt : ${dateDeletedAt}
    
#     # ((497, 7, 1, 2, 2, 1, 'ชื่อวิธีคำนวณค่าปรับ', 'หมายเหตุ1', 1, '10', datetime.datetime(2021, 12, 9, 14, 10, 52), None, datetime.datetime(2021, 12, 9, 14, 10, 52), None, None),)
#     # (([id], [accountId], [adjustmentRate], [calculateMulctType], [adjustmentRateType], [unitFromTo], '[nameTh]', '[remark]', [status], '[created_by]', datetime.datetime([created_at]), '[updated_by]', datetime.datetime([updated_at]), datetime.datetime([deleted_at]), '[deleted_by]'),)
    
#     ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_DELETE_ALLFIELD}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKDELETE_ALLFIELD_VALUE}
#     ...    '${type}'=='${MYSQL_TYPE_DELETE_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKDELETE_REQUIREDFIELD_VALUE}

#     ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
#     ${resultDB}=    Replace String    ${resultDB}    [accountId]    ${accountId}
#     ${resultDB}=    Replace String    ${resultDB}    [adjustmentRate]    ${adjustmentRate}
#     ${resultDB}=    Replace String    ${resultDB}    [calculateMulctType]    ${unitChange}
#     ${resultDB}=    Replace String    ${resultDB}    [adjustmentRateType]    ${calculationMethodId}
#     ${resultDB}=    Replace String    ${resultDB}    [unitFromTo]    ${timeUnit}
#     ${resultDB}=    Replace String    ${resultDB}    [nameTh]    ${nameTh}
#     ${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
#     ${resultDB}=    Replace String    ${resultDB}    [remark]    ${remark}     
#     ${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
#     ${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
#     ${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${dateUpdatedAt}
#     ${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
#     ${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${dateDeletedAt}
#     ${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}

#     # Log To Console    [resultDB] : ${resultDB}
#     ${strResult}=    Convert To String    ${dataResult}

#     Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Delete MulctMethod

#     Log To Console    ${\n}=========== End DB : [Delete MulctMethod] =============== 
# ################################################################-- Request Verify DB Check Data mulctCondition Account--################################################################
# Request Verify DB Check Data MulctCondition Account
#     # [Arguments]      ${type}    ${mulctMethodId}    ${dateFrom}    ${dateTo}    ${timePastDeadline}   ${dateToFlag}    ${total}
#     [Arguments]      ${type}    ${mulctMethodId}    ${dateFrom}    ${dateTo}    ${dataMulctCondition}

#     Log To Console    ${\n}=========== Start DB : [Request Verify DB Check Data MulctCondition Account] =============== 
#     # ${DB_SELECTSTATEMENT_MULCTCONDITION_WHEREACCOUNTIDMULCTCMETHODID}    SELECT * FROM mulct_condition WHERE account_id = [accountId] and mulct_method_id = "[mulctMethodId]" and deleted_at IS null

#     ${convertStrAccountId}=    Convert To String    ${accountId}

#     ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_MULCTCONDITION_WHEREACCOUNTIDMULCTCMETHODID}    [accountId]    ${convertStrAccountId}
#     ${selectStatement}=    Replace String    ${selectStatement}    [mulctMethodId]    ${mulctMethodId}
#     Log To Console    [mulct_condition : resultQuery] : ${selectStatement}

#     #[(), 0]
#     # queryResults,rowCount
#     @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
#     # Log To Console    [mulct_condition] Request Verify DB Check Data MulctCondition Account : ${result}
#     ${dataResult}=    Set Variable    ${result}[0]
#     Log To Console    [result : mulct_condition] : ${dataResult}
#     ${rowCount}=    Set Variable    ${result}[1]
#     Log To Console    [rowCount : mulct_condition] : ${rowCount}
#     FOR    ${i}    IN RANGE    ${rowCount}  
    
#     Log To Console    [result : mulct_condition] : ${dataResult}[${i}][0]
#     ${id}=    Convert To String    ${dataResult}[${i}][0]
#     # Set Global Variable    ${accountUserId}    ${id}
#     ${created_at}=    Convert To String    ${dataResult}[${i}][9]
#     ${created_by}=    Convert To String    ${dataResult}[${i}][8]
#     ${updated_at}=    Convert To String    ${dataResult}[${i}][11]
#     ${updated_by}=    Run Keyword If    '${dataResult}[${i}][10]'!='${NONE}'    Convert To String    '${dataResult}[${i}][10]'
#     ...    ELSE IF    '${dataResult}[${i}][10]'=='${NONE}'    Convert To String    ${NONE}
#     ${deleted_at}=    Convert To String    ${dataResult}[${i}][12]
#     ${deleted_by}=    Convert To String    ${dataResult}[${i}][13]
#     ${mulctMethodId}=    Convert To String    ${mulctMethodId}
#     ${dateFrom}=    Convert To String    ${dateFrom}
#     ${dateTo}=    Convert To String    ${dateTo}
#     ${timePastDeadline}=    Convert To String    ${dataMulctCondition[${i}]['timePastDeadline']}
#     ${dateToFlag}=    Convert To String    ${dataMulctCondition[${i}]['dateToFlag']}

#     ${total}=    Evaluate  "%.2f" % ${dataMulctCondition[${i}]['total']}
#     ${total}=    Convert To String    ${total}
    
#     # Log To Console    [result : created_at] : ${created_at}
#     # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
#     ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
#     # Log To Console    dateCreatedAt : ${dateCreatedAt}
#     # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
#     ${dateUpdatedAt}=    Convert Format Date DB    ${updated_at}
#     # Log To Console    dateUpdatedAt : ${updated_at}

#     # (1044, 7, 520, None, None, 9999, 1, Decimal('6.00'), '10', datetime.datetime(2021, 12, 9, 16, 18, 26), None, datetime.datetime(2021, 12, 9, 16, 18, 26), None, None)
#     # ([id], [accountId], [mulctMethodId], [dateFrom], [dateTo], [timePastDeadline], [dateToFlag], Decimal('[total]'), '[created_by]', datetime.datetime([created_at]), [updated_by], datetime.datetime([updated_at]), [deleted_at], [deleted_by])
    
#     ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_CREATE_ALLFIELD}'    ${DB_SELECTSTATEMENT_MULCTCONDITION_ACCOUNTID_ALLFIELD_ADD_VALUE}
#     ...    '${type}'=='${MYSQL_TYPE_EDIT_ALLFIELD}'    ${DB_SELECTSTATEMENT_MULCTCONDITION_ACCOUNTID_ALLFIELD_EDIT_VALUE}
    
#     ${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
#     ${resultDB}=    Replace String    ${resultDB}    [accountId]    ${convertStrAccountId}
#     ${resultDB}=    Replace String    ${resultDB}    [mulctMethodId]    ${mulctMethodId}
#     ${resultDB}=    Replace String    ${resultDB}    [dateFrom]    ${dateFrom}
#     ${resultDB}=    Replace String    ${resultDB}    [dateTo]    ${dateTo}
#     ${resultDB}=    Replace String    ${resultDB}    [timePastDeadline]    ${timePastDeadline}
#     ${resultDB}=    Replace String    ${resultDB}    [dateToFlag]    ${dateToFlag}
#     ${resultDB}=    Replace String    ${resultDB}    [total]    ${total}
#     ${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
#     ${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
#     ${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${dateUpdatedAt}
#     ${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
#     ${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
#     ${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}
#     Log To Console    [resultDB] : ${resultDB}
#     ${strResult}=    Convert To String    ${dataResult[${i}]}
#     Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data MulctCondition Account

#     END
#     Log To Console    [strResult] : ${strResult}
#     Log To Console    ${\n}=========== End DB : [Request Verify DB Check Data MulctCondition Account] =============== 

# ################################################################-- Update tb mulct_condition set delete_at--################################################################
# Update tb mulct_condition set delete_at

#     [Arguments]    ${account_id}    ${mulctMethodId}    ${deleted_at}    ${fileName}
#     Log To Console    ${\n}=========== Start DB : [Update tb mulct_condition set delete_at - mulct_condition] =============== 
#     #${DB_UPDATESTATEMENT_MULCTCONDITION_ACCOUNTID_DELETEDAT}    UPDATE mulct_condition SET deleted_at = [deleted_at] WHERE account_id = [account_id] and mulct_method_id = [mulct_method_id]

#     ${selectStatement}=    Replace String    ${DB_UPDATESTATEMENT_MULCTCONDITION_ACCOUNTID_DELETEDAT}    [account_id]    ${account_id}
#     ${selectStatement}=    Replace String    ${selectStatement}    [mulct_method_id]    ${mulctMethodId}
#     ${selectStatement}=    Replace String    ${selectStatement}    [deleted_at]    ${deleted_at}
#     Log To Console    [mulct_condition : resultQuery] : ${selectStatement}

#     Create File    ./${fileName}    ${selectStatement}
    
#     ${resultUserRole}=    Start Connect To MySql Execute Sql Script    ${fileName}
#     Log To Console    [mulct_condition] Update tb mulct_condition set delete_at : ${resultUserRole}
#     Log To Console    [result : mulct_condition] : ${resultUserRole}
#     Remove File    ./${fileName}

#     Log To Console    ${\n}=========== End DB : [Update tb mulct_condition set delete_at - mulct_condition] =============== 