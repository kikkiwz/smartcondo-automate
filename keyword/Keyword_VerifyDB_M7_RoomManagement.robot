*** Keywords ***
Request Verify DB Check Data Search Check Room Management
    [Arguments]      ${type}    ${account_Id}    ${property_id}    ${building_id}    ${idRoom}    ${orderBy}

	Log To Console    ${\n}=========== Start DB : [Search Check Room Management] =============== 
	
    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_SEARCHALL}'    ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_ROOMLISTALL}
	...    '${type}'=='${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_STATUS}'    ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_ROOMLISTTRANFER_STATUS2}
	...    '${type}'=='${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_DETAILROOM}'    ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_ROOMDETAIL}
	...    '${type}'=='${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_INCOMEDETAIL}'    ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_INCOMEDETAIL}    
	...    '${type}'=='${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_INCOMEDETAILADMIN}'    ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_INCOMEDETAILADMIN}
	...    '${type}'=='${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_SEARCHROOMLIST_SCUSER}'    ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_ROOMLISTSCUSER}

    
	${convertStrAccountId}=    Convert To String    ${accountId}


	${convertStrAccountId}=    Convert To String    ${account_Id}
	${selectStatementRoomManagement}=    Replace String    ${valueReplace}    [account_id]    ${convertStrAccountId}
	${selectStatementRoomManagement}=    Replace String    ${selectStatementRoomManagement}    [property_id]    ${property_id}
	${selectStatementRoomManagement}=    Replace String    ${selectStatementRoomManagement}    [building_id]    ${building_id}
	${selectStatementRoomManagement}=    Replace String    ${selectStatementRoomManagement}    [room_id]    ${idRoom}
	${selectStatementRoomManagement}=    Replace String    ${selectStatementRoomManagement}    [orderBy]    ${orderBy}    
	Log To Console    [resultQuery] : ${selectStatementRoomManagement}


	# #[(), 0]
    # # queryResults,rowCount
    @{resultRoomManagement}=    Start Connect To MySql Query All List    ${selectStatementRoomManagement}    ${selectStatementRoomManagement}
	# Log To Console    [result] Request Verify DB Check Data Login : ${resultRoomManagement}
	${dataResultRoomManagement}=    Set Variable    ${resultRoomManagement}[0]
	# Log To Console    [result : Room Management] : ${dataResultRoomManagement}
	${rowCountRoomManagement}=    Set Variable    ${resultRoomManagement}[1]
	# Log To Console    [rowCount : Room Management] : ${rowCountRoomManagement}
    
	Log To Console    ${\n}=========== End DB : [Search Check Room Management] =============== 
	[Return]    ${dataResultRoomManagement}    ${rowCountRoomManagement}






# Request Verify DB Check Data Search Check Room Management
#     [Arguments]      ${type}    ${account_Id}    ${property_id}    ${building_id}    ${orderBy}
#     # ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_SEARCHALL}'    ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_ROOMLISTALL}
# 	# ...    '${type}'=='${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_STATUS}'    ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_ROOMLISTTRANFER_STATUS2}
# 	# ...    '${type}'=='${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_DETAILROOM}'    ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_ROOMDETAIL}
# 	# ...    '${type}'=='${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_INCOMEDETAIL}'    ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_INCOMEDETAIL}    
# 	# ...    '${type}'=='${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_SEARCHROOMLIST_SCUSER}'    ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_ROOMLISTSCUSER}
# 	# ${convertStrAccountId}=    Convert To String    ${accountId}
# 	# ${replaceAccountId}=    Replace String    ${valueReplace}    [account_id]    ${convertStrAccountId}
# 	# ${replaceRoomId}=    Replace String    ${replaceAccountId}    [room_id]    ${idRoom}
# 	# ${selectStatementRoomManagement}=    Replace String    ${replaceRoomId}    [orderBy]    ${orderBy}
# 	# Log To Console    [resultQuery] : ${selectStatementRoomManagement}

# 	Log To Console    ${\n}=========== Start DB : [Search Check Room Management Sc User] =============== 

# 	${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_SEARCHROOMLIST_SCUSER}'    ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_ROOMLISTSCUSER}
# 	# ...    '${type}'=='${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_STATUS}'    ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_ROOMLISTTRANFER_STATUS2}
# 	# ...    '${type}'=='${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_DETAILROOM}'    ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_ROOMDETAIL}
# 	 ...    '${type}'=='${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_INCOMEDETAIL}'    ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_INCOMEDETAIL}    
# 	# ...    '${type}'=='${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_SEARCHROOMLIST_SCUSER}'    ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_ROOMLISTSCUSER}
# 	${convertStrAccountId}=    Convert To String    ${account_Id}
# 	${selectStatementRoomManagement}=    Replace String    ${valueReplace}    [account_id]    ${convertStrAccountId}
# 	${selectStatementRoomManagement}=    Replace String    ${selectStatementRoomManagement}    [property_id]    ${property_id}
# 	${selectStatementRoomManagement}=    Replace String    ${selectStatementRoomManagement}    [building_id]    ${building_id}
# 	${selectStatementRoomManagement}=    Replace String    ${selectStatementRoomManagement}    [orderBy]    ${orderBy}    
# 	${selectStatementRoomManagement}=    Replace String    ${selectStatementRoomManagement}    [room_id]    ${idRoom}
# 	Log To Console    [resultQuery] : ${selectStatementRoomManagement}


# 	# #[(), 0]
#     # # queryResults,rowCount
#     @{resultRoomManagement}=    Start Connect To MySql Query All List    ${selectStatementRoomManagement}    ${selectStatementRoomManagement}
# 	# Log To Console    [result] Request Verify DB Check Data Login : ${resultRoomManagement}
# 	${dataResultRoomManagement}=    Set Variable    ${resultRoomManagement}[0]
# 	# Log To Console    [result : Room Management] : ${dataResultRoomManagement}
# 	${rowCountRoomManagement}=    Set Variable    ${resultRoomManagement}[1]
# 	# Log To Console    [rowCount : Room Management] : ${rowCountRoomManagement}
    
# 	Log To Console    ${\n}=========== End DB : [Search Check Room Management] =============== 
# 	[Return]    ${dataResultRoomManagement}    ${rowCountRoomManagement}






Check Value RoomList
	[Arguments]    ${type}    ${rowcountSearchRoomManagement}    ${dataSearchRoomManagement}

	FOR    ${i}    IN RANGE    ${rowcountSearchRoomManagement}

	${GetNameRoom}=    Set Variable    ${dataSearchRoomManagement}[${i}][5]    
	${GetFloor}=    Set Variable    ${dataSearchRoomManagement}[${i}][4]
	${GetFloor}=    Convert To String    ${GetFloor}

	${ReplaceLocatorNameRoom}=    Replace String    ${ROOMMANAGEMENT_SEARCH_LBL_NAMEROOM_LOCATOR}    [number]    ${GetNameRoom}  
	${ReplaceLocatorFloor}=    Replace String    ${ROOMMANAGEMENT_SEARCH_LBL_NUMBERFLOOR_LOCATOR}    [number]    ${GetFloor}
 
	Wait Until Contains Element Text Should Be    ${ReplaceLocatorNameRoom}    ${GetNameRoom} 
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_FLOOR_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_FLOOR_TH}
	Wait Until Contains Element Text Should Be    ${ReplaceLocatorFloor}    ${GetFloor} 
	
	END

Check Value RoomList EN
	[Arguments]    ${type}    ${rowcountSearchRoomManagement}    ${dataSearchRoomManagement}

	FOR    ${i}    IN RANGE    ${rowcountSearchRoomManagement}

	${GetNameRoom}=    Set Variable    ${dataSearchRoomManagement}[${i}][5]    
	${GetFloor}=    Set Variable    ${dataSearchRoomManagement}[${i}][4]
	${GetFloor}=    Convert To String    ${GetFloor}

	${ReplaceLocatorNameRoom}=    Replace String    ${ROOMMANAGEMENT_SEARCH_LBL_NAMEROOM_LOCATOR}    [number]    ${GetNameRoom}  
	${ReplaceLocatorFloor}=    Replace String    ${ROOMMANAGEMENT_SEARCH_LBL_NUMBERFLOOR_LOCATOR}    [number]    ${GetFloor}
 
	Wait Until Contains Element Text Should Be    ${ReplaceLocatorNameRoom}    ${GetNameRoom} 
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_FLOOR_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_FLOOR_EN}
	Wait Until Contains Element Text Should Be    ${ReplaceLocatorFloor}    ${GetFloor} 
	
	END


Check Value RoomList Admin
	[Arguments]    ${type}    ${rowcountSearchRoomManagement}    ${dataSearchRoomManagement}

	FOR    ${i}    IN RANGE    ${rowcountSearchRoomManagement}

	${GetNameRoom}=    Set Variable    ${dataSearchRoomManagement}[${i}][5]  
	# Log To Console    GetNameRoom:: ${GetNameRoom}      
	${GetFloor}=    Set Variable    ${dataSearchRoomManagement}[${i}][4]
	# Log To Console    GetFloor:: ${GetFloor}
	${GetFloor}=    Convert To String    ${GetFloor}

	${ReplaceLocatorNameRoom}=    Replace String    ${ROOMMANAGEMENT_SEARCHADMIN_LBL_NAMEROOM_LOCATOR}    [number]    ${GetNameRoom}
	# Log To Console    ReplaceLocatorNameRoom:: ${ReplaceLocatorNameRoom}  
	${ReplaceLocatorFloor}=    Replace String    ${ROOMMANAGEMENT_SEARCHADMIN_LBL_NUMBERFLOOR_LOCATOR}    [number]    ${GetFloor}
	# Log To Console    ReplaceLocatorFloor:: ${ReplaceLocatorFloor}
 

	Wait Until Contains Element Text Should Be    ${ReplaceLocatorNameRoom}    ${GetNameRoom} 
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCHADMIN_LBL_FLOOR_LOCATOR}    ${ROOMMANAGEMENT_SEARCHADMIN_LBL_FLOOR_TH}
	Wait Until Contains Element Text Should Be    ${ReplaceLocatorFloor}    ${GetFloor} 
	
	END

Check Value RoomList Admin EN
	[Arguments]    ${type}    ${rowcountSearchRoomManagement}    ${dataSearchRoomManagement}

	FOR    ${i}    IN RANGE    ${rowcountSearchRoomManagement}

	${GetNameRoom}=    Set Variable    ${dataSearchRoomManagement}[${i}][5]  
	# Log To Console    GetNameRoom:: ${GetNameRoom}      
	${GetFloor}=    Set Variable    ${dataSearchRoomManagement}[${i}][4]
	# Log To Console    GetFloor:: ${GetFloor}
	${GetFloor}=    Convert To String    ${GetFloor}

	${ReplaceLocatorNameRoom}=    Replace String    ${ROOMMANAGEMENT_SEARCHADMIN_LBL_NAMEROOM_LOCATOR}    [number]    ${GetNameRoom}
	# Log To Console    ReplaceLocatorNameRoom:: ${ReplaceLocatorNameRoom}  
	${ReplaceLocatorFloor}=    Replace String    ${ROOMMANAGEMENT_SEARCHADMIN_LBL_NUMBERFLOOR_LOCATOR}    [number]    ${GetFloor}
	# Log To Console    ReplaceLocatorFloor:: ${ReplaceLocatorFloor}
 

	Wait Until Contains Element Text Should Be    ${ReplaceLocatorNameRoom}    ${GetNameRoom} 
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCHADMIN_LBL_FLOOR_LOCATOR}    ${ROOMMANAGEMENT_SEARCHADMIN_LBL_FLOOR_EN}
	Wait Until Contains Element Text Should Be    ${ReplaceLocatorFloor}    ${GetFloor} 
	
	END


Check Value Table View Income Detail 
    [Arguments]    ${type}    ${rowcountGetIncomeDetail}    ${dataSearchGetIncomeDetail}

	#${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
	${setData}=    Run Keyword If    '${type}'=='${DEFAULT_TH}'    Set Data for check value table View Income Detail
	...    ELSE IF    '${type}'=='${DEFAULT_EN}'    Set Data for check value table View Income Detail

	# valueTable
	@{valArrDataTable}=    Create List	
	FOR    ${i}    IN RANGE    ${rowcountGetIncomeDetail}   
		#(163, 7, 'robot1'))

        ${IncomeCode}=    Set Variable If    '${type}'=='${DEFAULT_TH}'    ${dataSearchGetIncomeDetail[${i}][11]}
		...    '${type}'=='${DEFAULT_EN}'    ${dataSearchGetIncomeDetail[${i}][11]}
		${IncomeName}=    Set Variable If    '${type}'=='${DEFAULT_TH}'    ${dataSearchGetIncomeDetail[${i}][13]}
		...    '${type}'=='${DEFAULT_EN}'    ${dataSearchGetIncomeDetail[${i}][13]}
		Log To Console    IncomeName::${IncomeName}    
	
        ${data}=    Evaluate    {"Incomecode":"${IncomeCode}", "Incomename":"${IncomeName}"}        #Add data to array set at valArrData
		Log To Console    Data : : : : ${data}
        Append To List    ${valArrDataTable}    ${data} 
        
        Check Value Table    ${ROOMMANAGEMENT_VIEW_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${i}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
	# Exit For Loop
	END

Check Value Table Income Detail 
    [Arguments]    ${type}    ${rowcountGetIncomeDetail}    ${dataSearchGetIncomeDetail}

	#${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
	${setData}=    Run Keyword If    '${type}'=='${DEFAULT_TH}'    Set Data for check value table View Income Detail
	...    ELSE IF    '${type}'=='${DEFAULT_EN}'    Set Data for check value table View Income Detail

	# valueTable
	@{valArrDataTable}=    Create List	
	FOR    ${i}    IN RANGE    ${rowcountGetIncomeDetail}   
		#(163, 7, 'robot1'))

        ${IncomeCode}=    Set Variable If    '${type}'=='${DEFAULT_TH}'    ${dataSearchGetIncomeDetail[${i}][13]}
		 ...    '${type}'=='${DEFAULT_EN}'    ${dataSearchGetIncomeDetail[${i}][13]}
		${IncomeName}=    Set Variable If    '${type}'=='${DEFAULT_TH}'    ${dataSearchGetIncomeDetail[${i}][11]}
		 ...    '${type}'=='${DEFAULT_EN}'    ${dataSearchGetIncomeDetail[${i}][11]}
		Log To Console    IncomeName::${IncomeName}    
	
        ${data}=    Evaluate    {"Incomecode":"${IncomeCode}", "Incomename":"${IncomeName}"}        #Add data to array set at valArrData
		Log To Console    Data : : : : ${data}
        Append To List    ${valArrDataTable}    ${data} 
        
        Check Value Table    ${ROOMMANAGEMENT_VIEW_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${i}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
	# Exit For Loop
	END


Request DB Data Account All
    
    Log To Console    ${\n}=========== Start DB : [Accounts] =============== 
    # ${DB_SELECTSTATEMENT_ACCOUNTS}    SELECT * FROM Accounts

    #[(), 0]
    # queryResults,rowCount
    @{resultAccounts}=    Start Connect To MySql Query All List    ${DB_SELECTSTATEMENT_ACCOUNTS}    ${DB_SELECTSTATEMENT_ACCOUNTS}
    # Log To Console    [Account] Request DB Data Accounts All : ${resultAccounts}
    ${dataResultAccounts}=    Set Variable    ${resultAccounts}[0]
    # Log To Console    [result : Account] : ${dataResultAccounts}
    ${rowCountAccounts}=    Set Variable    ${resultAccounts}[1]
    # Log To Console    [rowCount : Account] : ${rowCountAccounts}

    # Accounts
    @{valArrDataAccounts}=    Create List
    @{valArrDataAccountsName}=    Create List
    FOR    ${i}    IN RANGE    ${rowCountAccounts}

        ${data}=    Evaluate    {"AccountId":"${dataResultAccounts}[${i}][0]", "name": "${dataResultAccounts}[${i}][1]"}
        Append To List    ${valArrDataAccounts}    ${data}        #Add data to array set at valArrData
        Append To List    ${valArrDataAccountsName}    ${dataResultAccounts}[${i}][1]        #Add data to array set at valArrData
    # Exit For Loop
    END
    #menu
    # Log To Console    [Accounts] : ${valArrDataAccounts}
    Set Global Variable    ${Accounts}    ${valArrDataAccounts}
    Log    Accounts All : ${Accounts}
    
    Log To Console    ${\n}=========== End DB : [Account] =============== 
    [Return]    ${valArrDataAccounts}    ${rowCountAccounts}    ${valArrDataAccountsName}    



Request Verify DB Check Data Create Room
    [Arguments]      ${type}    ${accountId}    ${room_no}    ${property_id}    ${building_id}    ${orderBy}    
    
	Log To Console    ${\n}=========== Start DB : [Create Room] =============== 
	# ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_CHECKCREATE}    SELECT *FROM rooms WHERE account_id = [account_id] and room_no = '[room_no]' and property_id = [property_id] and building_id = [building_id] and deleted_at IS null and deleted_by IS null order by [orderBy]

	# ${convertStrAccountId}=    Convert To String    ${accountId}
  
	${selectStatementCreateRoom}=    Replace String    ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_CHECKCREATE}    [account_id]    ${accountId}
	${selectStatementCreateRoom}=    Replace String    ${selectStatementCreateRoom}    [room_no]    ${room_no}
	${selectStatementCreateRoom}=    Replace String    ${selectStatementCreateRoom}    [property_id]    ${property_id}
	${selectStatementCreateRoom}=    Replace String    ${selectStatementCreateRoom}    [building_id]    ${building_id}
	${selectStatementCreateRoom}=    Replace String    ${selectStatementCreateRoom}    [orderBy]    ${orderBy}
	Log To Console    [Create Room : resultQuery] : ${selectStatementCreateRoom}

	#[(), 0]
    # queryResults,rowCount
    @{resultCreateRoom}=    Start Connect To MySql Query All List    ${selectStatementCreateRoom}    ${selectStatementCreateRoom}
	Log To Console    [Create Room] Request Verify DB Check Data Create Room : ${resultCreateRoom}
	${dataResultCreateRoom}=    Set Variable    ${resultCreateRoom}[0]
	Log To Console    [result : Create Room] : ${dataResultCreateRoom}
	${rowCountCreateRoom}=    Set Variable    ${resultCreateRoom}[1]
	Log To Console    [rowCount : Create Room] : ${rowCountCreateRoom}

    Log To Console    [result : Create Room] : ${dataResultCreateRoom}[0][0]
    ${id}=    Convert To String    ${dataResultCreateRoom}[0][0]
	Set Global Variable    ${idRoom}    ${id}
	Set Global Variable    ${roomNo}    ${dataResultCreateRoom}[0][5]
	${account_Id}=    Convert To String    ${accountId}
	${property_id}=    Convert To String    ${dataResultCreateRoom}[0][2]
	${building_id}=    Convert To String    ${dataResultCreateRoom}[0][3]
	${floor}=    Convert To String    ${dataResultCreateRoom}[0][4]
	${room_no}=    Convert To String    ${dataResultCreateRoom}[0][5]
	${house_no}=    Convert To String    ${dataResultCreateRoom}[0][6]
	${status}=    Convert To String    ${dataResultCreateRoom}[0][8]
	${area}=    Convert To String    ${dataResultCreateRoom}[0][9]
	${water_meter_no}=    Convert To String    ${dataResultCreateRoom}[0][11]
	${eletric_meter_no}=    Convert To String    ${dataResultCreateRoom}[0][12]
	${water_meter_limit_unit}=    Convert To String    ${dataResultCreateRoom}[0][13]
	${electric_meter_limit_unit}=    Convert To String    ${dataResultCreateRoom}[0][14]
	${created_at}=    Convert To String    ${dataResultCreateRoom}[0][15]
	${created_by}=    Convert To String    ${dataResultCreateRoom}[0][16]
    # Log To Console    [result : created_at] : ${created_at}

	Log To Console    [account_Id] : ${account_Id}
	Log To Console    [property_id] : ${property_id}
	Log To Console    [building_id] : ${building_id}
	Log To Console    [floor] : ${floor}
	Log To Console    [room_no] : ${room_no}
	Log To Console    [house_no] : ${house_no}
	Log To Console    [status] : ${status}
	Log To Console    [area] : ${area}
	Log To Console    [water_meter_no] : ${water_meter_no}
	Log To Console    [eletric_meter_no] : ${eletric_meter_no}
	Log To Console    [water_meter_limit_unit] : ${water_meter_limit_unit}
	Log To Console    [electric_meter_limit_unit] : ${electric_meter_limit_unit}
	Log To Console    [created_at] : ${created_at}
	Log To Console    [created_by] : ${created_by}



	# # 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${dateCreatedAt}=    Convert Format Date DB    ${created_at}
    Log To Console    dateCreatedAt : ${dateCreatedAt}
	
	# ((15471, 7, 8, 19, 1, '888', '78', None, 1, Decimal('123.00'), None, '88', '88', Decimal('9999.99'), Decimal('9999.99'), datetime.datetime(2021, 12, 27, 13, 47, 16), '1', datetime.datetime(2021, 12, 27, 13, 47, 52), '1', None, None),)
	# (([id], [account_Id], [property_id], [building_id], [floor], '[room_no]', '[house_no]', None, [status], Decimal('[area]'), None, '[water_meter_no]', '[eletric_meter_no]', Decimal('[water_meter_limit_unit]'), Decimal('[electric_meter_limit_unit]'), datetime.datetime([created_at]), '[created_by]', None, None, None, None),)
	
	${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_CREATE_ALLFIELD}'    ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_CHECKCREATE_ALLFIELD_VALUE}
	...    '${type}'=='${MYSQL_TYPE_CREATE_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_CHECKCREATE_REQUIREDFIELD_VALUE}    
   
	${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
	${resultDB}=    Replace String    ${resultDB}    [account_Id]    ${account_Id}
	${resultDB}=    Replace String    ${resultDB}    [property_id]    ${property_id}
	${resultDB}=    Replace String    ${resultDB}    [building_id]    ${building_id}
	${resultDB}=    Replace String    ${resultDB}    [floor]    ${floor}
	${resultDB}=    Replace String    ${resultDB}    [room_no]    ${room_no}
	${resultDB}=    Replace String    ${resultDB}    [house_no]    ${house_no}
	${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
	${resultDB}=    Replace String    ${resultDB}    [area]    ${area}
	${resultDB}=    Replace String    ${resultDB}    [water_meter_no]    ${water_meter_no}
	${resultDB}=    Replace String    ${resultDB}    [eletric_meter_no]    ${eletric_meter_no}
	${resultDB}=    Replace String    ${resultDB}    [water_meter_limit_unit]    ${water_meter_limit_unit}
	${resultDB}=    Replace String    ${resultDB}    [electric_meter_limit_unit]    ${electric_meter_limit_unit}
	${resultDB}=    Replace String    ${resultDB}    [created_at]    ${dateCreatedAt}
	${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}

	Log To Console    [resultDB] : ${resultDB}
	${strResult}=    Convert To String    ${dataResultCreateRoom}

	Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Create Room

	Log To Console    ${\n}=========== End DB : [Create Room] =============== 



Request Verify DB Check Data Edit Room
    [Arguments]      ${type}    ${accountId}
    
	Log To Console    ${\n}=========== Start DB : [Edit Room] =============== 
	# ${${DB_SELECTSTATEMENT_ROOMMANAGEMENT_CHECKEDIT}}    SELECT * from rooms WHERE id = [id] AND deleted_at IS NULL

	# ${convertStrAccountId}=    Convert To String    ${accountId}
  
	${selectStatementEditRoom}=    Replace String    ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_CHECKEDIT}    [id]    ${idRoom}
	Log To Console    [Edit Room : resultQuery] : ${selectStatementEditRoom}


	#[(), 0]
    # queryResults,rowCount
    @{resultEditRoom}=    Start Connect To MySql Query All List    ${selectStatementEditRoom}    ${selectStatementEditRoom}
	Log To Console    [Edit Room] Request Verify DB Check Data Edit Room : ${resultEditRoom}
	${dataResultEditRoom}=    Set Variable    ${resultEditRoom}[0]
	Log To Console    [result : Edit Room] : ${dataResultEditRoom}
	${rowCountEditRoom}=    Set Variable    ${resultEditRoom}[1]
	Log To Console    [rowCount : Edit Room] : ${rowCountEditRoom}

    Log To Console    [result : Edit Room] : ${dataResultEditRoom}[0][0]
    ${id}=    Convert To String    ${dataResultEditRoom}[0][0]  
	${account_Id}=    Convert To String    ${accountId}
	${property_id}=    Convert To String    ${dataResultEditRoom}[0][2]
	${building_id}=    Convert To String    ${dataResultEditRoom}[0][3]
	${floor}=    Convert To String    ${dataResultEditRoom}[0][4]
	${room_no}=    Convert To String    ${dataResultEditRoom}[0][5]
	${house_no}=    Convert To String    ${dataResultEditRoom}[0][6]
	${status}=    Convert To String    ${dataResultEditRoom}[0][8]
	${area}=    Convert To String    ${dataResultEditRoom}[0][9]
	${water_meter_no}=    Convert To String    ${dataResultEditRoom}[0][11]
	${eletric_meter_no}=    Convert To String    ${dataResultEditRoom}[0][12]
	${water_meter_limit_unit}=    Convert To String    ${dataResultEditRoom}[0][13]
	${electric_meter_limit_unit}=    Convert To String    ${dataResultEditRoom}[0][14]
	${created_at}=    Convert To String    ${dataResultEditRoom}[0][15]
	${created_by}=    Convert To String    ${dataResultEditRoom}[0][16]
	${updated_at}=    Convert To String    ${dataResultEditRoom}[0][17]
	${updated_by}=    Convert To String    ${dataResultEditRoom}[0][18]

	Set Global Variable    ${idRoom}    ${id}
	Set Global Variable    ${roomNo_edit}    ${room_no}
	Log To Console    roomNo_edit: ${roomNo_edit}  
    # Log To Console    [result : created_at] : ${created_at}

	Log To Console    [account_Id] : ${account_Id}
	Log To Console    [property_id] : ${property_id}
	Log To Console    [building_id] : ${building_id}
	Log To Console    [floor] : ${floor}
	Log To Console    [room_no] : ${room_no}
	Log To Console    [house_no] : ${house_no}
	Log To Console    [status] : ${status}
	Log To Console    [area] : ${area}
	Log To Console    [water_meter_no] : ${water_meter_no}
	Log To Console    [eletric_meter_no] : ${eletric_meter_no}
	Log To Console    [water_meter_limit_unit] : ${water_meter_limit_unit}
	Log To Console    [electric_meter_limit_unit] : ${electric_meter_limit_unit}
	Log To Console    [created_at] : ${created_at}
	Log To Console    [created_by] : ${created_by}
	Log To Console    [updated_at] : ${updated_at}
	Log To Console    [updated_by] : ${updated_by}


	# 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${created_at}=    Convert Format Date DB    ${created_at}
    Log To Console    created_at : ${created_at}
	${updated_at}=    Convert Format Date DB    ${updated_at}
	
	# ((15411, 7, 8, 19, 1, '999', '94', None, 1, Decimal('100.00'), None, '99', '99', Decimal('999.99'), Decimal('999.99'), datetime.datetime(2021, 12, 20, 17, 8, 34), '1', None, None, None, None),)
	# (([id], [account_Id], [property_id], [building_id], [floor], '[room_no]', '[house_no]', None, [status], Decimal('[area]'), None, '[water_meter_no]', '[eletric_meter_no]', Decimal('[water_meter_limit_unit]'), Decimal('[electric_meter_limit_unit]'), datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', None, None),)
	
	${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_EDIT_ALLFIELD}'    ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_CHECKEDIT_ALLFIELD_VALUE}
	...    '${type}'=='${MYSQL_TYPE_EDIT_REQUIREDFIELD}'    ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_CHECKEDIT_REQUIREDFIELD_VALUE}    
   
	${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
	${resultDB}=    Replace String    ${resultDB}    [account_Id]    ${account_Id}
	${resultDB}=    Replace String    ${resultDB}    [property_id]    ${property_id}
	${resultDB}=    Replace String    ${resultDB}    [building_id]    ${building_id}
	${resultDB}=    Replace String    ${resultDB}    [floor]    ${floor}
	${resultDB}=    Replace String    ${resultDB}    [room_no]    ${room_no}
	${resultDB}=    Replace String    ${resultDB}    [house_no]    ${house_no}
	${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
	${resultDB}=    Replace String    ${resultDB}    [area]    ${area}
	${resultDB}=    Replace String    ${resultDB}    [water_meter_no]    ${water_meter_no}
	${resultDB}=    Replace String    ${resultDB}    [eletric_meter_no]    ${eletric_meter_no}
	${resultDB}=    Replace String    ${resultDB}    [water_meter_limit_unit]    ${water_meter_limit_unit}
	${resultDB}=    Replace String    ${resultDB}    [electric_meter_limit_unit]    ${electric_meter_limit_unit}
	${resultDB}=    Replace String    ${resultDB}    [created_at]    ${created_at}
	${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
	${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${updated_at}
	${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}

	Log To Console    [resultDB] : ${resultDB}
	${strResult}=    Convert To String    ${dataResultEditRoom}

	Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Edit Room

	Log To Console    ${\n}=========== End DB : [Edit Room] =============== 


Request Verify DB Check Data Delete Room
	[Arguments]      ${type}    ${accountId}
    
	Log To Console    ${\n}=========== Start DB : [Delete Room] =============== 
	# ${${DB_SELECTSTATEMENT_ROOMMANAGEMENT_CHECKEDIT}}    SELECT * from rooms WHERE id = [id] AND deleted_at IS NULL

	# ${convertStrAccountId}=    Convert To String    ${accountId}
  
	${selectStatementDeleteRoom}=    Replace String    ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_CHECKDELETE}    [id]    ${idRoom}
	Log To Console    [Delete Room : resultQuery] : ${selectStatementDeleteRoom}


	#[(), 0]
    # queryResults,rowCount
    @{resultDeleteRoom}=    Start Connect To MySql Query All List    ${selectStatementDeleteRoom}    ${selectStatementDeleteRoom}
	Log To Console    [Delete Room] Request Verify DB Check Data Delete Room : ${resultDeleteRoom}
	${dataResultDeleteRoom}=    Set Variable    ${resultDeleteRoom}[0]
	Log To Console    [result : Delete Room] : ${dataResultDeleteRoom}
	${rowCountDeleteRoom}=    Set Variable    ${resultDeleteRoom}[1]
	Log To Console    [rowCount : Delete Room] : ${rowCountDeleteRoom}

	Log To Console    [result : Delete Room] : ${dataResultDeleteRoom}[0][0]
    ${id}=    Convert To String    ${dataResultDeleteRoom}[0][0]  
	${account_Id}=    Convert To String    ${accountId}
	${property_id}=    Convert To String    ${dataResultDeleteRoom}[0][2]
	${building_id}=    Convert To String    ${dataResultDeleteRoom}[0][3]
	${floor}=    Convert To String    ${dataResultDeleteRoom}[0][4]
	${room_no}=    Convert To String    ${dataResultDeleteRoom}[0][5]
	${house_no}=    Convert To String    ${dataResultDeleteRoom}[0][6]
	${status}=    Convert To String    ${dataResultDeleteRoom}[0][8]
	${area}=    Convert To String    ${dataResultDeleteRoom}[0][9]
	${water_meter_no}=    Convert To String    ${dataResultDeleteRoom}[0][11]
	${eletric_meter_no}=    Convert To String    ${dataResultDeleteRoom}[0][12]
	${water_meter_limit_unit}=    Convert To String    ${dataResultDeleteRoom}[0][13]
	${electric_meter_limit_unit}=    Convert To String    ${dataResultDeleteRoom}[0][14]
	${created_at}=    Convert To String    ${dataResultDeleteRoom}[0][15]
	${created_by}=    Convert To String    ${dataResultDeleteRoom}[0][16]
	${updated_at}=    Convert To String    ${dataResultDeleteRoom}[0][17]
	${updated_by}=    Convert To String    ${dataResultDeleteRoom}[0][18]
	${deleted_at}=    Convert To String    ${dataResultDeleteRoom}[0][19]
	${deleted_by}=    Convert To String    ${dataResultDeleteRoom}[0][20]

	Set Global Variable    ${idRoom}    ${id}
	Set Global Variable    ${roomNo_edit}    ${room_no}
	Log To Console    roomNo_edit: ${roomNo_edit}  
    # Log To Console    [result : created_at] : ${created_at}


	# 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${created_at}=    Convert Format Date DB    ${created_at}

	${updated_at}=    Convert Format Date DB    ${updated_at}

	${deleted_at}=    Convert Format Date DB    ${deleted_at}
	
	# ((15411, 7, 8, 19, 1, '999', '94', None, 1, Decimal('100.00'), None, '99', '99', Decimal('999.99'), Decimal('999.99'), datetime.datetime(2021, 12, 20, 17, 8, 34), '1', None, None, None, None),)
	# (([id], [account_Id], [property_id], [building_id], [floor], '[room_no]', '[house_no]', None, [status], Decimal('[area]'), None, '[water_meter_no]', '[eletric_meter_no]', Decimal('[water_meter_limit_unit]'), Decimal('[electric_meter_limit_unit]'), datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', None, None),)
	
	${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_DELETE_ALLFIELD}'    ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_CHECKDELETE_VALUE}
	 
   
	${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
	${resultDB}=    Replace String    ${resultDB}    [account_Id]    ${account_Id}
	${resultDB}=    Replace String    ${resultDB}    [property_id]    ${property_id}
	${resultDB}=    Replace String    ${resultDB}    [building_id]    ${building_id}
	${resultDB}=    Replace String    ${resultDB}    [floor]    ${floor}
	${resultDB}=    Replace String    ${resultDB}    [room_no]    ${room_no}
	${resultDB}=    Replace String    ${resultDB}    [house_no]    ${house_no}
	${resultDB}=    Replace String    ${resultDB}    [status]    ${status}
	${resultDB}=    Replace String    ${resultDB}    [area]    ${area}
	${resultDB}=    Replace String    ${resultDB}    [water_meter_no]    ${water_meter_no}
	${resultDB}=    Replace String    ${resultDB}    [eletric_meter_no]    ${eletric_meter_no}
	${resultDB}=    Replace String    ${resultDB}    [water_meter_limit_unit]    ${water_meter_limit_unit}
	${resultDB}=    Replace String    ${resultDB}    [electric_meter_limit_unit]    ${electric_meter_limit_unit}
	${resultDB}=    Replace String    ${resultDB}    [created_at]    ${created_at}
	${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
	${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${updated_at}
	${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
	${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
	${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}

	Log To Console    [resultDB] : ${resultDB}
	${strResult}=    Convert To String    ${dataResultDeleteRoom}

	Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Delete Room

	Log To Console    ${\n}=========== End DB : [Delete Room] ===============




Request Verify DB Check Data Delete Income
	[Arguments]      ${type}
    
	Log To Console    ${\n}=========== Start DB : [Delete Income] =============== 
	# ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_CHECKDELETEROOMINCOME}    SELECT * FROM room_income WHERE id = [id]

	
	${selectStatementDeleteIncome}=    Replace String    ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_CHECKDELETEINCOME}    [id]    ${idRoom}
	Log To Console    [Delete Income : resultQuery] : ${selectStatementDeleteIncome}


	#[(), 0]
    # queryResults,rowCount
    @{resultDeleteIncome}=    Start Connect To MySql Query All List    ${selectStatementDeleteIncome}    ${selectStatementDeleteIncome}
	Log To Console    [Delete Income] Request Verify DB Check Data Delete Income : ${resultDeleteIncome}
	${dataResultDeleteIncome}=    Set Variable    ${resultDeleteIncome}[0]
	Log To Console    [result : Delete Income] : ${dataResultDeleteIncome}
	${rowCountDeleteIncome}=    Set Variable    ${resultDeleteIncome}[1]
	Log To Console    [rowCount : Delete Income] : ${rowCountDeleteIncome}

	# Log To Console    [result : Delete Income] : ${dataResultDeleteIncome}[0][0]
    ${id}=    Convert To String    ${dataResultDeleteIncome}[0][0]  
	${account_Id}=    Convert To String    ${dataResultDeleteIncome}[0][1]
	${room_id}=    Convert To String    ${dataResultDeleteIncome}[0][2]
	${income_code_id}=    Convert To String    ${dataResultDeleteIncome}[0][3]
	${group_type_id}=    Convert To String    ${dataResultDeleteIncome}[0][4]
	${created_at}=    Convert To String    ${dataResultDeleteIncome}[0][5]
	${created_by}=    Convert To String    ${dataResultDeleteIncome}[0][6]
	${updated_at}=    Convert To String    ${dataResultDeleteIncome}[0][7]
	${updated_by}=    Convert To String    ${dataResultDeleteIncome}[0][8]
	${deleted_at}=    Convert To String    ${dataResultDeleteIncome}[0][9]
	${deleted_by}=    Convert To String    ${dataResultDeleteIncome}[0][10]


	# 2021-07-22 13:34:00.630000 -> 2021, 7, 22, 13, 34, 0, 630000
    ${created_at}=    Convert Format Date DB    ${created_at}

	${updated_at}=    Convert Format Date DB    ${updated_at}

	${deleted_at}=    Convert Format Date DB    ${deleted_at}
	
	# ((15575, 2, 514, 4, 1, datetime.datetime(2021, 8, 31, 10, 56, 53), '2', None, None, None, None),)
	# (([id], [account_Id], [room_id], [income_code_id], [group_type_id], datetime.datetime([created_at]), '[created_by]', None, None, None, None),)
	
	${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_DELETE}'    ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_CHECKDELETEINCOME_VALUE}
	 
   
	${resultDB}=    Replace String    ${valueReplace}    [id]    ${id}
	${resultDB}=    Replace String    ${resultDB}    [account_Id]    ${account_Id}
	${resultDB}=    Replace String    ${resultDB}    [room_id]    ${room_id}
	${resultDB}=    Replace String    ${resultDB}    [income_code_id]    ${income_code_id}
	${resultDB}=    Replace String    ${resultDB}    [group_type_id]    ${group_type_id}
	${resultDB}=    Replace String    ${resultDB}    [created_at]    ${created_at}
	${resultDB}=    Replace String    ${resultDB}    [created_by]    ${created_by}
	${resultDB}=    Replace String    ${resultDB}    [updated_at]    ${updated_at}
	${resultDB}=    Replace String    ${resultDB}    [updated_by]    ${updated_by}
	${resultDB}=    Replace String    ${resultDB}    [deleted_at]    ${deleted_at}
	${resultDB}=    Replace String    ${resultDB}    [deleted_by]    ${deleted_by}


	Log To Console    [resultDB] : ${resultDB}
	${strResult}=    Convert To String    ${dataResultDeleteIncome}

	Run Keyword And Continue On Failure    Should Be Equal    ${strResult}    ${resultDB}    error=Request Verify DB Check Data Delete Income

	Log To Console    ${\n}=========== End DB : [Delete Income] ===============