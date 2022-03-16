*** Keywords ***
Request Verify DB Check Data Search Check User Account
    [Arguments]      ${type}    ${limit}    ${offset}    ${orderBy}
	Log    ${accountId} 
	Log    ${userId} 
	Log    ${roleType}

	#search properties id
	${query}=    Set Variable    select * from properties p inner join buildings b WHERE p.account_id = ${accountId} and p.id = b.property_id
	${path}=    Set Variable    ${EXECDIR}/sql/useraccount_search_property.sql    
	Create File    ${path}    ${query}
	${response}=    Start Connect To MySql Query All List    ${query}    ${EMPTY}
	Log    ${response}
	${legth}=    Get Length    ${response}
	${property_list}=    Create List
	FOR    ${i}    IN RANGE    ${legth}
	    ${property}=    Set Variable    ${response[0][${i}][0]}
	    Log    ${property}
		Append To List    ${property_list}    ${property}
	END 
    ${propertyId}=    Convert To String    ${property_list}
	Log    ${propertyId}
    ${propertyId_lass}=    Remove String    ${propertyId}    [    ]
	${userId_lass}=    Convert To String    ${userId}
	Log To Console    ${\n}=========== Start DB : [Search User Account] =============== 
    ${valueReplace}=    Set Variable If    '${type}'=='${MYSQL_TYPE_CHECKUSERACCOUNT_SEARCH_ALL}'    ${DB_CHECKUSERACCOUNT_SEARCH_LISTALL}
	...    '${type}'=='${MYSQL_TYPE_USERACCOUNT_SEARCH_FIRSTNAME}'    ${DB_SELECTSTATEMENT_CHECKCREATE_CHECKUSERACCOUNT_SEARCHFIRSTNAME}
	...    '${type}'=='${MYSQL_TYPE_USERACCOUNT_SEARCH_LASTNAME}'    ${DB_SELECTSTATEMENT_CHECKCREATE_CHECKUSERACCOUNT_SEARCHLASTNAME}
	...    '${type}'=='${MYSQL_TYPE_USERACCOUNT_SEARCH_EMAIL}'    ${DB_SELECTSTATEMENT_CHECKCREATE_CHECKUSERACCOUNT_SEARCHLASTNAME}
	...    '${type}'=='${MYSQL_TYPE_USERACCOUNT_SEARCH_ROLENAME_EN}' or '${type}'=='${MYSQL_TYPE_USERACCOUNT_SEARCH_ROLENAME_TH}'    ${DB_SELECTSTATEMENT_CHECKCREATE_CHECKUSERACCOUNT_SEARCHROLENAME}
	...    '${type}'=='${MYSQL_TYPE_USERACCOUNT_SEARCH_PROPERTIES_EN}' or '${type}'=='${MYSQL_TYPE_USERACCOUNT_SEARCH_PROPERTIES_TH}'    ${DB_SELECTSTATEMENT_CHECKCREATE_CHECKUSERACCOUNT_SEARCHPROPERTIES}
	...    '${type}'=='${MYSQL_TYPE_USERACCOUNT_SEARCH_FIRSTNAME_NOTFOUND}'    ${DB_SELECTSTATEMENT_CHECKCREATE_CHECKUSERACCOUNT_SEARCHFIRSTNAME_NOTFOUND}
	...    '${type}'=='${MYSQL_TYPE_CHECKUSERACCOUNT_SEARCH_ALL_NO_LIMIT}'    ${DB_CHECKUSERACCOUNT_SEARCH_LISTALL_NO_LIMIT}


    ${properties_value}=    Set Variable If    '${type}'=='${MYSQL_TYPE_USERACCOUNT_SEARCH_PROPERTIES_EN}'    ${USERACCOUNT_SEARCH_EN_PROPERTYMANAGER_VALUE2}
    ...    '${type}'=='${MYSQL_TYPE_USERACCOUNT_SEARCH_PROPERTIES_TH}'    ${USERACCOUNT_SEARCH_TH_PROPERTYMANAGER_VALUE2}    
	...    none

	Log    ${type}
	${role_name_value}=    Set Variable If    '${type}'=='${MYSQL_TYPE_USERACCOUNT_SEARCH_ROLENAME_EN}'    ${USERACCOUNT_ROLE_EN_VALUE1}
    ...    '${type}'=='${MYSQL_TYPE_USERACCOUNT_SEARCH_ROLENAME_TH}'    ${USERACCOUNT_ROLE_TH_VALUE1}
	...    none

	#account,property,id
	${convertStrAccountId}=    Convert To String    ${accountId}

	${replaceAccountId}=    Replace String    ${valueReplace}    [accountId]    ${convertStrAccountId}
	${replaceProperty}=    Replace String    ${replaceAccountId}    [properties_permission]    ${propertyId_lass}
	${replaceId}=    Replace String    ${replaceProperty}    [id]    ${userId_lass}
	${replaceFirstname}=    Replace String    ${replaceId}    [first_name]    ${first_name_value}
	${replaceFirstname_notfound}=    Replace String    ${replaceFirstname}    [first_name_notfound]    ${USERACCOUNT_ADDEDIT_TXT_FIRSTNAME_VALUE_NOTFOUND}
	${replaceLastname}=    Replace String    ${replaceFirstname_notfound}    [last_name]    ${last_name_value}
	${replaceEmail}=    Replace String    ${replaceLastname}    [email]    ${email_value}
	${replaceRoleName}=    Replace String    ${replaceEmail}    [role_name]    ${role_name_value}
	${replaceProperty}=    Replace String    ${replaceRoleName}    [property_name]    ${properties_value}
    ${replaceLimit}=    Replace String    ${replaceProperty}    [limit]    ${limit}
	${replaceOffset}=    Replace String    ${replaceLimit}    [offset]    ${offset}
	${selectUserAccount}=    Replace String    ${replaceOffset}    [orderBy]    ${orderBy}
	Log    ${selectUserAccount}


	${valueReplaceRowcount}=    Set Variable If    '${type}'=='${MYSQL_TYPE_CHECKUSERACCOUNT_SEARCH_ALL}'    ${DB_CHECKUSERACCOUNT_SEARCH_LISTALL_ROWCOUNT}
	...    '${type}'=='${MYSQL_TYPE_USERACCOUNT_SEARCH_FIRSTNAME}'    ${DB_CHECKUSERACCOUNT_SEARCH_LISTALL_ROWCOUNT}
	...    '${type}'=='${MYSQL_TYPE_USERACCOUNT_SEARCH_LASTNAME}'    ${DB_SELECTSTATEMENT_CHECKCREATE_CHECKUSERACCOUNT_SEARCHLASTNAME_ROWCOUNT}
	...    '${type}'=='${MYSQL_TYPE_USERACCOUNT_SEARCH_EMAIL}'    ${DB_SELECTSTATEMENT_CHECKCREATE_CHECKUSERACCOUNT_SEARCHLASTNAME_ROWCOUNT}
	...    '${type}'=='${MYSQL_TYPE_USERACCOUNT_SEARCH_ROLENAME_EN}' or '${type}'=='${MYSQL_TYPE_USERACCOUNT_SEARCH_ROLENAME_TH}'    ${DB_SELECTSTATEMENT_CHECKCREATE_CHECKUSERACCOUNT_SEARCHROLENAME_ROWCOUNT}
	...    '${type}'=='${MYSQL_TYPE_USERACCOUNT_SEARCH_PROPERTIES_EN}' or '${type}'=='${MYSQL_TYPE_USERACCOUNT_SEARCH_PROPERTIES_TH}'    ${DB_SELECTSTATEMENT_CHECKCREATE_CHECKUSERACCOUNT_SEARCHPROPERTIES_ROWCOUNT}
	...    '${type}'=='${MYSQL_TYPE_USERACCOUNT_SEARCH_FIRSTNAME_NOTFOUND}'    ${DB_SELECTSTATEMENT_CHECKCREATE_CHECKUSERACCOUNT_SEARCHFIRSTNAME_NOTFOUND_ROWCOUNT}

	${replaceAccountId}=    Replace String    ${valueReplaceRowcount}    [accountId]    ${convertStrAccountId}
	${replaceProperty}=    Replace String    ${replaceAccountId}    [properties_permission]    ${propertyId_lass}
	${replaceId}=    Replace String    ${replaceProperty}    [id]    ${userId_lass}
	${replaceFirstname}=    Replace String    ${replaceId}    [first_name]    ${first_name_value}
	${replaceFirstname_notfound}=    Replace String    ${replaceFirstname}    [first_name_notfound]    ${USERACCOUNT_ADDEDIT_TXT_FIRSTNAME_VALUE_NOTFOUND}
	${replaceLastname}=    Replace String    ${replaceFirstname_notfound}    [last_name]    ${last_name_value}
	${replaceEmail}=    Replace String    ${replaceLastname}    [email]    ${email_value}
	${replaceRoleName}=    Replace String    ${replaceEmail}    [role_name]    ${role_name_value}
	${replaceProperty}=    Replace String    ${replaceRoleName}    [property_name]    ${properties_value}
	${selectUserAccountRowcount}=    Replace String    ${replaceProperty}    [orderBy]    ${orderBy}
	Log    ${selectUserAccountRowcount}

	#[(), 0]
    # queryResults,rowCount
    @{resultUserAccount}=    Start Connect To MySql Query All List    ${selectUserAccount}    ${selectUserAccountRowcount}
	Log To Console    [user_account] Request Verify DB Check Data Login : ${resultUserAccount}

	${dataResultUserAccount}=    Set Variable    ${resultUserAccount[0]}
	Log To Console    [search : user_account] : ${dataResultUserAccount}
	${rowCountUserAccount}=    Set Variable    ${resultUserAccount}[1]
	Log To Console    [rowCount : user_account] : ${rowCountUserAccount}
	Log To Console    ${\n}=========== End DB : [Search Check Asset Management] =============== 
	[Return]    ${dataResultUserAccount}    ${rowCountUserAccount}

Check Data Search RowCount User Account
	Log    ${accountId} 
	Log    ${userId} 
	Log    ${roleType}

	#search properties id
	${query}=    Set Variable    select * from properties p inner join buildings b WHERE p.account_id = ${accountId} and p.id = b.property_id
	${path}=    Set Variable    ${EXECDIR}/sql/useraccount_search_property.sql    
	Create File    ${path}    ${query}
	${response}=    Start Connect To MySql Query All List    ${query}    ${EMPTY}
	Log    ${response}
	${legth}=    Get Length    ${response}
	${property_list}=    Create List
	FOR    ${i}    IN RANGE    ${legth}
	    ${property}=    Set Variable    ${response[0][${i}][0]}
	    Log    ${property}
		Append To List    ${property_list}    ${property}
	END 
    ${propertyId}=    Convert To String    ${property_list}
	Log    ${propertyId}
    ${propertyId_lass}=    Remove String    ${propertyId}    [    ]
	${userId_lass}=    Convert To String    ${userId}
	Log To Console    ${\n}=========== Start DB : [Search User Account] =============== 
	#account,property,id
	${convertStrAccountId}=    Convert To String    ${accountId}
	${replaceAccountId}=    Replace String    ${DB_CHECKUSERACCOUNT_SEARCH_LISTALL_ROWCOUNT1}    [accountId]    ${convertStrAccountId}
	${selectUserAccountRowcount}=    Replace String    ${replaceAccountId}    [properties_permission]    ${propertyId_lass}
	Log    ${selectUserAccountRowcount}

	#[(), 0]
    # queryResults,rowCount
	${query}=    Set Variable    ${selectUserAccountRowcount}
	${path}=    Set Variable    ${EXECDIR}/sql/useraccount_search_rowcount.sql    
	Create File    ${path}    ${query}
	${rowcount}=    Start Connect To MySql Query All List    ${query}    ${EMPTY}
	Log    ${rowcount[0][0][0]}
	[Return]    ${rowcount[0][0][0]}

Check Value Table Search User
    [Arguments]    ${type}    ${rowcountSearchUserAccount}    ${dataSearchUserAccount}
	Log    ${rowcountSearchUserAccount}
	Log To Console     TEST :::${dataSearchUserAccount}

	#${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}

	${setData}=    Run Keyword If    '${type}'=='${DEFAULT_TH}'    Set Data for check value table User TH
	...    ELSE IF    '${type}'=='${DEFAULT_EN}'    Set Data for check value table User EN
    Log    ${setData}
	
	#valueTable
	@{valArrDataTable}=    Create List	
	FOR    ${i}    IN RANGE    ${rowcountSearchUserAccount}   
		#((174, 1, 'Nzg2MQ==', 0, None, 3, 'ทดสอบชื่อ', 'ทดสอบนามสกุล', None, None, None, '4111846627861', None, '0921111111', None, 'Test@mail.com', None, None, None, None, 0, None, datetime.datetime(2021, 11, 2, 11, 2, 16), '10', None, None, None, None, 'robot1', 163, 'นางสาว', 'Miss', 7, 164, 8), (190, 1, 'MTExMQ==', 0, None, 1, 'Test', 'Test', None, None, None, '1111111111111', None, '0811111111', None, 'abc@gmail.com', None, None, None, None, 0, None, datetime.datetime(2021, 11, 3, 15, 28, 16), '10', None, None, None, None, 'robot1', 163, 'นาย', 'Mr.', 7, 180, 8), (191, 1, 'MjIyMg==', 0, None, 1, 'xxxx', 'xxx', None, None, None, '222222222222', None, '0925977346', None, 'xxx@gmail.com', None, None, None, None, 0, None, datetime.datetime(2021, 11, 3, 15, 56, 21), '10', None, None, None, None, 'robot1', 163, 'นาย', 'Mr.', 7, 181, 8), (195, 1, 'NDM5NA==', 0, None, 1, 'FirstName_98654', 'LastName_98654', None, None, None, '7522909664394', None, '0892425233', None, '40375130@gmail.com', None, None, None, None, 0, None, datetime.datetime(2021, 11, 10, 18, 4, 46), '10', None, None, None, None, 'robot1', 163, 'นาย', 'Mr.', 7, 185, 8), (196, 1, 'ODU2Ng==', 0, None, 1, 'FirstName_75102', 'LastName_75102', None, None, None, '9579289198566', None, '0807189573', None, '49814820@gmail.com', None, None, None, None, 0, None, datetime.datetime(2021, 11, 11, 10, 13, 42), '10', None, None, None, None, 'robot1', 163, 'นาย', 'Mr.', 7, 186, 8), (197, 1, 'NzU0Ng==', 0, None, 1, 'FirstName_26930', 'LastName_26930', None, None, None, '9696788177546', None, '0800796133', None, 'Automate_294@gmail.com', None, None, None, None, 0, None, datetime.datetime(2021, 11, 11, 10, 31, 20), '10', None, None, None, None, 'robot1', 163, 'นาย', 'Mr.', 7, 187, 8), (198, 1, 'MTU1Ng==', 0, None, 1, 'FirstName_89726', 'LastName_89726', None, None, None, '6216409681556', None, '0830575175', None, 'Automate_191@gmail.com', None, None, None, None, 0, None, datetime.datetime(2021, 11, 11, 10, 40, 38), '10', None, None, None, None, 'robot1', 163, 'นาย', 'Mr.', 7, 188, 8), (199, 1, 'ODkyMQ==', 0, None, 1, 'FirstName_06732', 'LastName_06732', None, None, None, '2537668078921', None, '0817753509', None, 'Automate_391@gmail.com', None, None, None, None, 0, None, datetime.datetime(2021, 11, 11, 10, 42, 2), '10', None, None, None, None, 'robot1', 163, 'นาย', 'Mr.', 7, 189, 8), (200, 1, 'MDgzOQ==', 0, None, 1, 'FirstName_15003', 'LastName_15003', None, None, None, '5025987800839', None, '0850112097', None, 'Automate_322@gmail.com', None, None, None, None, 0, None, datetime.datetime(2021, 11, 11, 11, 22, 7), '10', None, None, None, None, 'robot1', 163, 'นาย', 'Mr.', 7, 190, 8))
		${first_nameEN}=    Set Variable    ${dataSearchUserAccount[${i}][6]}
		${last_nameEN}=    Set Variable    ${dataSearchUserAccount[${i}][7]}
		${email}=    Set Variable    ${dataSearchUserAccount[${i}][15]}
		${License}=    Set Variable    ${role}
        ${no}=    Convert To String    ${i+1}
		${title_id}=    Set Variable    ${dataSearchUserAccount[${i}][5]}
        ${titleName}=    Get Title Name    ${type}    ${title_id}

        ${dataEN}=    Evaluate    {"No":"${no}", "First name - Last name":"${titleName}${first_nameEN} ${last_nameEN}", "E-mail":"${email}", "License":"${License}"}        #Add data to array set at valArrData
		Log To Console    Data : : : : ${dataEN}

        ${dataTH}=    Evaluate    {"ลำดับ":"${no}", "ชื่อ - นามสกุล":"${titleName}${first_nameEN} ${last_nameEN}", "อีเมล":"${email}", "สิทธิ์":"${License}"}        #Add data to array set at valArrData
		Log To Console    Data : : : : ${dataTH}

	    ${data}=    Set Variable If    '${type}'=='${DEFAULT_TH}'    ${dataTH}
	    ...    ${dataEN}    

        Append To List    ${valArrDataTable}    ${data} 
        Log List    ${valArrDataTable}
	    ${locator_table}=    Set Variable If    '${type}'=='${DEFAULT_TH}'    ${USERACCOUNT_SEARCH_LBL_RESULT_DATA_LOCATOR_TH}
	    ...    ${USERACCOUNT_SEARCH_LBL_RESULT_DATA_LOCATOR_EN}  

        Check Value Table    ${locator_table}    ${setData}[0]    ${i}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}

	# Exit For Loop
	END

Check Value Table Search User Case Require Field
    [Arguments]    ${type}    ${rowcountSearchUserAccount}    ${dataSearchUserAccount}
	Log    ${rowcountSearchUserAccount}
	Log To Console     TEST :::${dataSearchUserAccount}

	#${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}

	${setData}=    Run Keyword If    '${type}'=='${DEFAULT_TH}'    Set Data for check value table User TH
	...    ELSE IF    '${type}'=='${DEFAULT_EN}'    Set Data for check value table User EN
    Log    ${setData}
	
	#valueTable
	@{valArrDataTable}=    Create List	
	FOR    ${i}    IN RANGE    ${rowcountSearchUserAccount}   
		#((174, 1, 'Nzg2MQ==', 0, None, 3, 'ทดสอบชื่อ', 'ทดสอบนามสกุล', None, None, None, '4111846627861', None, '0921111111', None, 'Test@mail.com', None, None, None, None, 0, None, datetime.datetime(2021, 11, 2, 11, 2, 16), '10', None, None, None, None, 'robot1', 163, 'นางสาว', 'Miss', 7, 164, 8), (190, 1, 'MTExMQ==', 0, None, 1, 'Test', 'Test', None, None, None, '1111111111111', None, '0811111111', None, 'abc@gmail.com', None, None, None, None, 0, None, datetime.datetime(2021, 11, 3, 15, 28, 16), '10', None, None, None, None, 'robot1', 163, 'นาย', 'Mr.', 7, 180, 8), (191, 1, 'MjIyMg==', 0, None, 1, 'xxxx', 'xxx', None, None, None, '222222222222', None, '0925977346', None, 'xxx@gmail.com', None, None, None, None, 0, None, datetime.datetime(2021, 11, 3, 15, 56, 21), '10', None, None, None, None, 'robot1', 163, 'นาย', 'Mr.', 7, 181, 8), (195, 1, 'NDM5NA==', 0, None, 1, 'FirstName_98654', 'LastName_98654', None, None, None, '7522909664394', None, '0892425233', None, '40375130@gmail.com', None, None, None, None, 0, None, datetime.datetime(2021, 11, 10, 18, 4, 46), '10', None, None, None, None, 'robot1', 163, 'นาย', 'Mr.', 7, 185, 8), (196, 1, 'ODU2Ng==', 0, None, 1, 'FirstName_75102', 'LastName_75102', None, None, None, '9579289198566', None, '0807189573', None, '49814820@gmail.com', None, None, None, None, 0, None, datetime.datetime(2021, 11, 11, 10, 13, 42), '10', None, None, None, None, 'robot1', 163, 'นาย', 'Mr.', 7, 186, 8), (197, 1, 'NzU0Ng==', 0, None, 1, 'FirstName_26930', 'LastName_26930', None, None, None, '9696788177546', None, '0800796133', None, 'Automate_294@gmail.com', None, None, None, None, 0, None, datetime.datetime(2021, 11, 11, 10, 31, 20), '10', None, None, None, None, 'robot1', 163, 'นาย', 'Mr.', 7, 187, 8), (198, 1, 'MTU1Ng==', 0, None, 1, 'FirstName_89726', 'LastName_89726', None, None, None, '6216409681556', None, '0830575175', None, 'Automate_191@gmail.com', None, None, None, None, 0, None, datetime.datetime(2021, 11, 11, 10, 40, 38), '10', None, None, None, None, 'robot1', 163, 'นาย', 'Mr.', 7, 188, 8), (199, 1, 'ODkyMQ==', 0, None, 1, 'FirstName_06732', 'LastName_06732', None, None, None, '2537668078921', None, '0817753509', None, 'Automate_391@gmail.com', None, None, None, None, 0, None, datetime.datetime(2021, 11, 11, 10, 42, 2), '10', None, None, None, None, 'robot1', 163, 'นาย', 'Mr.', 7, 189, 8), (200, 1, 'MDgzOQ==', 0, None, 1, 'FirstName_15003', 'LastName_15003', None, None, None, '5025987800839', None, '0850112097', None, 'Automate_322@gmail.com', None, None, None, None, 0, None, datetime.datetime(2021, 11, 11, 11, 22, 7), '10', None, None, None, None, 'robot1', 163, 'นาย', 'Mr.', 7, 190, 8))
		${first_nameEN}=    Set Variable    ${dataSearchUserAccount[${i}][6]}
		${email}=    Set Variable    ${dataSearchUserAccount[${i}][15]}
		${License}=    Set Variable    ${USERACCOUNT_ROLE_EN_VALUE1}
        ${no}=    Convert To String    ${i+1}

        ${dataEN}=    Evaluate    {"No":"${no}", "First name - Last name":"${first_nameEN}", "E-mail":" ", "License":"${License}"}        #Add data to array set at valArrData
		Log To Console    Data : : : : ${dataEN}

	    ${data}=    Set Variable If    '${type}'=='${DEFAULT_TH}'    ${dataTH}
	    ...    ${dataEN}    

        Append To List    ${valArrDataTable}    ${data} 
        Log List    ${valArrDataTable}
        Check Value Table    ${USERACCOUNT_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${i}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
	# Exit For Loop
	END

Get Title Name
    [Arguments]    ${type}    ${title_id}
	#search title name
	${query}=    Set Variable    select name_th,name_en from title WHERE id = ${title_id}
	${path}=    Set Variable    ${EXECDIR}/sql/useraccount_search_title.sql    
	Create File    ${path}    ${query}
	${response}=    Start Connect To MySql Query All List    ${query}    ${EMPTY}
	Log    ${response}
	Log    ${response}[0][0][0]
	Log    ${response}[0][0][1]
	${titleName}=    Set Variable If    '${type}'=='${DEFAULT_TH}'    ${response}[0][0][0]
	...    '${type}'=='${DEFAULT_EN}'    ${response}[0][0][1]
    Log    ${titleName}
    [Return]    ${titleName}


Update tb users set delete_at
    [Arguments]    ${userId}    ${deleted_at}    ${namefile}
	Log To Console    ${\n}=========== Start DB : [Update tb users set delete_at - user_account] =============== 
	${replaceUserId}=    Replace String    ${DB_UPDATEUSERACCOUNT_USERS_DELETEDATA}    [first_name]    ${first_name_value}
	${selectUserAccount}=    Replace String    ${replaceUserId}    [deleted_at]    ${deleted_at}
	Log To Console    [user_account : resultReplace] : ${selectUserAccount}

    Create File    ./${namefile}	${selectUserAccount}
    ${resultUserAccount}=    Start Connect To MySql Execute Sql Script    ${namefile}
	Log To Console    [user_account] Update tb user_account set delete_at : ${resultUserAccount}
	Log    ${resultUserAccount}
	Remove File    ./${namefile}

	Log To Console    ${\n}=========== End DB : [Update tb user_account set delete_at - user_account] =============== 


Request Verify DB Check Data Delete User Account
    [Arguments]      ${type}    ${limit}    ${offset}    ${orderBy}
	Log    ${accountId} 
	Log    ${userId} 
	Log    ${roleType}

	#search properties id
	${query}=    Set Variable    select * from properties p inner join buildings b WHERE p.account_id = ${accountId} and p.id = b.property_id
	${path}=    Set Variable    ${EXECDIR}/sql/useraccount_search_property.sql    
	Create File    ${path}    ${query}
	${response}=    Start Connect To MySql Query All List    ${query}    ${EMPTY}
	Log    ${response}
	${legth}=    Get Length    ${response}
	${property_list}=    Create List
	FOR    ${i}    IN RANGE    ${legth}
	    ${property}=    Set Variable    ${response[0][${i}][0]}
	    Log    ${property}
		Append To List    ${property_list}    ${property}
	END 
    ${propertyId}=    Convert To String    ${property_list}
	Log    ${propertyId}
    ${propertyId_lass}=    Remove String    ${propertyId}    [    ]
	${userId_lass}=    Convert To String    ${userId}   

	Log To Console    ${\n}=========== Start DB : [Delete User Account] =============== 
	#account,property,id
	${convertStrAccountId}=    Convert To String    ${accountId}

	${replaceAccountId}=    Replace String    ${DB_CHECKAFTERDELETEACCOUNT_USERS_SEARCHFIRSTNAME}    [accountId]    ${convertStrAccountId}
	${replaceProperty}=    Replace String    ${replaceAccountId}    [properties_permission]    ${propertyId_lass}
	${replaceId}=    Replace String    ${replaceProperty}    [id]    ${userId_lass}
	${selectUserAccount}=    Replace String    ${replaceId}    [first_name]    ${first_name_value}
	Log    ${selectUserAccount}


	${replaceAccountId}=    Replace String    ${DB_CHECKAFTERDELETEACCOUNT_USERS_SEARCHFIRSTNAME_ROWCOUNT}    [accountId]    ${convertStrAccountId}
	${replaceProperty}=    Replace String    ${replaceAccountId}    [properties_permission]    ${propertyId_lass}
	${replaceId}=    Replace String    ${replaceProperty}    [id]    ${userId_lass}
	${selectUserAccountRowcount}=    Replace String    ${replaceId}    [first_name]    ${first_name_value}
	Log    ${selectUserAccountRowcount}

    #[(), 0]
    # queryResults,rowCount
    @{resultUserAccount}=    Start Connect To MySql Query All List    ${selectUserAccount}    ${selectUserAccountRowcount}
	Log To Console    [user_account] Request Verify DB Check Data Login : ${resultUserAccount}
	#${legth_search}=    Get Length    ${resultUserAccount}
	#${dataResultUserAccount_List}=    Create List
	#FOR    ${j}    IN RANGE    ${legth_search}
	#    ${dataResultUserAccount}=    Set Variable    ${resultUserAccount[0][${j}][0]}
	#    Log    ${dataResultUserAccount}
	#	Append To List    ${dataResultUserAccount_List}    ${dataResultUserAccount}
	#END 
	${dataResultUserAccount}=    Set Variable    ${resultUserAccount}[0]
	${rowCountUserAccount}=    Set Variable    ${resultUserAccount}[1]

    Log    [result : user_account] : ${dataResultUserAccount}[0][0]



Request Verify API On Load Create User Account API Search Role
	Log    ${accountId} 
	Log    ${userId} 
	Log    ${roleType}
	Log To Console    ==== Check API On Load : Role ====
	#search role id
	${query}=    Set Variable    select * from role WHERE account_id = ${accountId} and role_name != "Admin" 
	${path}=    Set Variable    ${EXECDIR}/sql/useraccount_search_role.sql    
	Create File    ${path}    ${query}
	${response}=    Start Connect To MySql Query All List    ${query}    ${EMPTY}
	Log    ${response}
	Log To Console    ==== Role Respone : ${response} ====
	${legth}=    Set Variable    ${response[1]}
	${roleDB_list}=    Create List
	FOR    ${i}    IN RANGE    ${legth}
	    ${role}=    Set Variable    ${response[0][${i}][2]}
	    Log    ${role}
		Append To List    ${roleDB_list}    ${role}
	END 
	Log List    ${roleDB_list}
	${legth_roleDB_list}=    Get Length    ${roleDB_list}
	${legth_row}=    Evaluate    ${legth_roleDB_list}+1
	#get value in dropdown and compare text between db with gui
	${j}=    Set Variable    1
	${x}=    Set Variable    0
	sleep    1s
	Click Button Page    ${USERACCOUNT_ADDEDIT_TXT_ROLE_LOCATOR} 
	FOR    ${j}    IN RANGE    1    ${legth_row}
	    Log    ${j}
	    Log    ${x}
	    Log    ${roleDB_list}[${x}]
		${result}=    Wait Until Contains Element Text Should Be    xpath=/html/body/div[2]/div/div/div/div[1]/div/div/div[2]/div[${j}]/div    ${roleDB_list}[${x}]
	    Log    ${result}
	    ${x}=    Evaluate    ${x}+1
	END 
	Click Button Page    ${USERACCOUNT_ADDEDIT_TXT_ROLE_LOCATOR} 


Request Verify API On Load Create User Account API Search Prefix
    [Arguments]      ${lang} 
	Log To Console    ==== Check API On Load : Prefix ====
	#search role id
	${query}=    Set Variable    select name_th ,name_en from title 
	${path}=    Set Variable    ${EXECDIR}/sql/useraccount_search_role.sql    
	Create File    ${path}    ${query}
	${response_prefix}=    Start Connect To MySql Query All List    ${query}    ${EMPTY}
	Log    ${response_prefix}
	Log To Console    ==== Prefix Respone : ${response_prefix} ====
	${legth}=    Set Variable    ${response_prefix[1]}
	${prefixDB_list}=    Create List
	FOR    ${i}    IN RANGE    ${legth}
	    ${prefix}=    Set Variable If    '${lang}'=='EN'    ${response_prefix[0][${i}][1]}
	    ...    '${lang}'=='TH'    ${response_prefix[0][${i}][0]}
	    Log    ${prefix}
		Append To List    ${prefixDB_list}    ${prefix}
	END 
	Log List    ${prefixDB_list}
	${legth_prefixDB_list}=    Get Length    ${prefixDB_list}
	${legth_prefix}=    Evaluate    ${legth_prefixDB_list}+1
	#get value in dropdown and compare text between db with gui
	${j}=    Set Variable    1
	${x}=    Set Variable    0
	sleep    1s
	Click Button Page    ${USERACCOUNT_ADDEDIT_TXT_PREFIX_LOCATOR} 
	FOR    ${j}    IN RANGE    1    ${legth_prefix}
	    Log    ${j}
	    Log    ${x}
	    Log    ${prefixDB_list}[${x}]
		${result}=    Wait Until Contains Element Text Should Be    xpath=/html/body/div[2]/div/div/div/div[1]/div/div/div[2]/div[${j}]/div    ${prefixDB_list}[${x}]
	    Log    ${result}
	    ${x}=    Evaluate    ${x}+1
	END
	Click Button Page    ${USERACCOUNT_ADDEDIT_TXT_PREFIX_LOCATOR} 


Request Verify API On Load Create User Account API Search Property
    [Arguments]      ${lang} 
	Log To Console    ==== Check API On Load : Property ====
	#search role id
	${query}=    Set Variable    select property_name_th,property_name_en from properties WHERE account_id = ${accountId}
	${path}=    Set Variable    ${EXECDIR}/sql/useraccount_search_role.sql    
	Create File    ${path}    ${query}
	${response}=    Start Connect To MySql Query All List    ${query}    ${EMPTY}
	Log    ${response}
	Log To Console    ==== Prefix Respone : ${response} ====
	${legth}=    Set Variable    ${response[1]}
	${propertyDB_list}=    Create List
	FOR    ${i}    IN RANGE    ${legth}
	    ${property}=    Set Variable If    '${lang}'=='EN'    ${response[0][${i}][1]}
	    ...    '${lang}'=='TH'    ${response[0][${i}][0]}
	    Log    ${property}
		Append To List    ${propertyDB_list}    ${property}
	END 
	Log List    ${propertyDB_list}
	${legth_propertyDB_list}=    Get Length    ${propertyDB_list}
	${legth_property}=    Evaluate    ${legth_propertyDB_list}+1
	#get value in dropdown and compare text between db with gui
	${j}=    Set Variable    1
	${x}=    Set Variable    0
	sleep    1s
	FOR    ${j}    IN RANGE    1    ${legth_property}
	    Log    ${j}
	    Log    ${x}
	    Log    ${propertyDB_list}[${x}]
		${result}=    Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_PROPERTYNAME_LOCATOR}${j}1    ${propertyDB_list}[${x}]
	    Log    ${result}
	    ${x}=    Evaluate    ${x}+1
	END

#============= User Information ====================
Update Terms and conditions
    [Arguments]      ${identification_no_str} 
	${query}=    Set Variable    UPDATE users SET pdpa_flag = 1 WHERE identification_no ="${identification_no_str}" 
	${path}=    Set Variable    ${EXECDIR}/sql/useraccount_update_pspa.sql    
	Create File    ${path}    ${query}
	${response}=    Start Connect To MySql Execute Sql Script    ${path}
	Log    ${response}

Request Verify API On Load User Information API Search Prefix
    [Arguments]      ${lang} 
	Log To Console    ==== Check API On Load : Prefix ====
	#search role id
	${query}=    Set Variable    select name_th ,name_en from title 
	${path}=    Set Variable    ${EXECDIR}/sql/useraccount_search_role.sql    
	Create File    ${path}    ${query}
	${response_prefix}=    Start Connect To MySql Query All List    ${query}    ${EMPTY}
	Log    ${response_prefix}
	Log To Console    ==== Prefix Respone : ${response_prefix} ====
	${legth}=    Set Variable    ${response_prefix[1]}
	${prefixDB_list}=    Create List
	FOR    ${i}    IN RANGE    ${legth}
	    ${prefix}=    Set Variable If    '${lang}'=='EN'    ${response_prefix[0][${i}][1]}
	    ...    '${lang}'=='TH'    ${response_prefix[0][${i}][0]}
	    Log    ${prefix}
		Append To List    ${prefixDB_list}    ${prefix}
	END 
	Log List    ${prefixDB_list}
	${legth_prefixDB_list}=    Get Length    ${prefixDB_list}
	${legth_prefix}=    Evaluate    ${legth_prefixDB_list}+1
	#get value in dropdown and compare text between db with gui
	${j}=    Set Variable    1
	${x}=    Set Variable    0
	sleep    1s
	Click Button Page    ${USERACCOUNT_ADDEDIT_TXT_PREFIX_LOCATOR} 
	FOR    ${j}    IN RANGE    1    ${legth_prefix}
	    Log    ${j}
	    Log    ${x}
	    Log    ${prefixDB_list}[${x}]
		${result}=    Wait Until Contains Element Text Should Be    xpath=/html/body/div[2]/div/div/div/div[1]/div/div/div[2]/div[${j}]/div    ${prefixDB_list}[${x}]
	    Log    ${result}
	    ${x}=    Evaluate    ${x}+1
	END
	Click Button Page    ${USERACCOUNT_ADDEDIT_TXT_PREFIX_LOCATOR} 


Check Value Table Search User After Edit User Information
    [Arguments]    ${type}    ${rowcountSearchUserAccount}    ${dataSearchUserAccount}
	Log    ${rowcountSearchUserAccount}
	Log To Console     TEST :::${dataSearchUserAccount}

	#${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}

	${setData}=    Run Keyword If    '${type}'=='${DEFAULT_TH}'    Set Data for check value table User TH
	...    ELSE IF    '${type}'=='${DEFAULT_EN}'    Set Data for check value table User EN
    Log    ${setData}
	
	#valueTable
	@{valArrDataTable}=    Create List	
	FOR    ${i}    IN RANGE    ${rowcountSearchUserAccount}   
		#((174, 1, 'Nzg2MQ==', 0, None, 3, 'ทดสอบชื่อ', 'ทดสอบนามสกุล', None, None, None, '4111846627861', None, '0921111111', None, 'Test@mail.com', None, None, None, None, 0, None, datetime.datetime(2021, 11, 2, 11, 2, 16), '10', None, None, None, None, 'robot1', 163, 'นางสาว', 'Miss', 7, 164, 8), (190, 1, 'MTExMQ==', 0, None, 1, 'Test', 'Test', None, None, None, '1111111111111', None, '0811111111', None, 'abc@gmail.com', None, None, None, None, 0, None, datetime.datetime(2021, 11, 3, 15, 28, 16), '10', None, None, None, None, 'robot1', 163, 'นาย', 'Mr.', 7, 180, 8), (191, 1, 'MjIyMg==', 0, None, 1, 'xxxx', 'xxx', None, None, None, '222222222222', None, '0925977346', None, 'xxx@gmail.com', None, None, None, None, 0, None, datetime.datetime(2021, 11, 3, 15, 56, 21), '10', None, None, None, None, 'robot1', 163, 'นาย', 'Mr.', 7, 181, 8), (195, 1, 'NDM5NA==', 0, None, 1, 'FirstName_98654', 'LastName_98654', None, None, None, '7522909664394', None, '0892425233', None, '40375130@gmail.com', None, None, None, None, 0, None, datetime.datetime(2021, 11, 10, 18, 4, 46), '10', None, None, None, None, 'robot1', 163, 'นาย', 'Mr.', 7, 185, 8), (196, 1, 'ODU2Ng==', 0, None, 1, 'FirstName_75102', 'LastName_75102', None, None, None, '9579289198566', None, '0807189573', None, '49814820@gmail.com', None, None, None, None, 0, None, datetime.datetime(2021, 11, 11, 10, 13, 42), '10', None, None, None, None, 'robot1', 163, 'นาย', 'Mr.', 7, 186, 8), (197, 1, 'NzU0Ng==', 0, None, 1, 'FirstName_26930', 'LastName_26930', None, None, None, '9696788177546', None, '0800796133', None, 'Automate_294@gmail.com', None, None, None, None, 0, None, datetime.datetime(2021, 11, 11, 10, 31, 20), '10', None, None, None, None, 'robot1', 163, 'นาย', 'Mr.', 7, 187, 8), (198, 1, 'MTU1Ng==', 0, None, 1, 'FirstName_89726', 'LastName_89726', None, None, None, '6216409681556', None, '0830575175', None, 'Automate_191@gmail.com', None, None, None, None, 0, None, datetime.datetime(2021, 11, 11, 10, 40, 38), '10', None, None, None, None, 'robot1', 163, 'นาย', 'Mr.', 7, 188, 8), (199, 1, 'ODkyMQ==', 0, None, 1, 'FirstName_06732', 'LastName_06732', None, None, None, '2537668078921', None, '0817753509', None, 'Automate_391@gmail.com', None, None, None, None, 0, None, datetime.datetime(2021, 11, 11, 10, 42, 2), '10', None, None, None, None, 'robot1', 163, 'นาย', 'Mr.', 7, 189, 8), (200, 1, 'MDgzOQ==', 0, None, 1, 'FirstName_15003', 'LastName_15003', None, None, None, '5025987800839', None, '0850112097', None, 'Automate_322@gmail.com', None, None, None, None, 0, None, datetime.datetime(2021, 11, 11, 11, 22, 7), '10', None, None, None, None, 'robot1', 163, 'นาย', 'Mr.', 7, 190, 8))
		${first_nameEN}=    Set Variable    ${dataSearchUserAccount[${i}][6]}
		${last_nameEN}=    Set Variable    ${dataSearchUserAccount[${i}][7]}
		${email}=    Set Variable    ${dataSearchUserAccount[${i}][15]}
		${License}=    Set Variable    ${role}
        ${no}=    Convert To String    ${i+1}
		${title_id}=    Set Variable    ${dataSearchUserAccount[${i}][5]}
        ${titleName}=    Get Title Name    ${type}    ${title_id}

        ${dataEN}=    Evaluate    {"No":"${no}", "First name - Last name":"${titleName}${first_nameEN} ${last_nameEN}", "E-mail":"${email}", "License":"${License}"}        #Add data to array set at valArrData
		Log To Console    Data : : : : ${dataEN}

        ${dataTH}=    Evaluate    {"ลำดับ":"${no}", "ชื่อ - นามสกุล":"${titleName}${first_nameEN} ${last_nameEN}", "อีเมล":"${email}", "สิทธิ์":"${License}"}        #Add data to array set at valArrData
		Log To Console    Data : : : : ${dataTH}
		
	    ${data}=    Set Variable If    '${type}'=='${DEFAULT_TH}'    ${dataTH}
	    ...    ${dataEN}    

        Append To List    ${valArrDataTable}    ${data} 
        Log List    ${valArrDataTable}
        Check Value Table    ${USERINFO_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${i}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
	# Exit For Loop
	END

Request Verify API On Load User Information API Search Prefix After Edit User Information
    [Arguments]      ${lang} 
	Log To Console    ==== Check API On Load : Prefix ====
	#search role id
	${query}=    Set Variable    select name_th ,name_en from title 
	${path}=    Set Variable    ${EXECDIR}/sql/useraccount_search_role.sql    
	Create File    ${path}    ${query}
	${response_prefix}=    Start Connect To MySql Query All List    ${query}    ${EMPTY}
	Log    ${response_prefix}
	Log To Console    ==== Prefix Respone : ${response_prefix} ====
	${legth}=    Set Variable    ${response_prefix[1]}
	${prefixDB_list}=    Create List
	FOR    ${i}    IN RANGE    ${legth}
	    ${prefix}=    Set Variable If    '${lang}'=='EN'    ${response_prefix[0][${i}][1]}
	    ...    '${lang}'=='TH'    ${response_prefix[0][${i}][0]}
	    Log    ${prefix}
		Append To List    ${prefixDB_list}    ${prefix}
	END 
	Log List    ${prefixDB_list}
	${legth_prefixDB_list}=    Get Length    ${prefixDB_list}
	${legth_prefix}=    Evaluate    ${legth_prefixDB_list}+1
	#get value in dropdown and compare text between db with gui
	${j}=    Set Variable    1
	${x}=    Set Variable    0
	sleep    1s
	Click Button Page    ${USERACCOUNT_ADDEDIT_TXT_PREFIX_LOCATOR} 
	FOR    ${j}    IN RANGE    1    ${legth_prefix}
	    Log    ${j}
	    Log    ${x}
	    Log    ${prefixDB_list}[${x}]
		${locator}=    Set Variable    xpath=/html/body/div[2]/div/div/div/div[1]/div/div/div[2]/div[${j}]
	    ${result}=    Run keyword And Return status    Selenium2Library.Element Should Be Visible    ${locator}    
        Run keyword if    '${result}'='False'    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
		${result}=    Wait Until Contains Element Text Should Be    ${locator}    ${prefixDB_list}[${x}]
	    Log    ${result}
	    ${x}=    Evaluate    ${x}+1
	END
	Click Button Page    ${USERACCOUNT_ADDEDIT_TXT_PREFIX_LOCATOR} 