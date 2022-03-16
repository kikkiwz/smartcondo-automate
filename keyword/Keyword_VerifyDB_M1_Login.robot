*** Keywords ***
################################################################-- Generic Test Case Teardown Login--################################################################
Request Verify DB Check Data Login
    [Arguments]    ${username}    ${password}

	Log To Console    ${\n}=========== Start DB : [Login] =============== 
	#-------------------------------------- users--------------------------------------------------#
    # SELECT * FROM users a WHERE (a.phone = ${id} OR a.identification_no = ${id} OR a.tax_id = ${taxId}) AND (a.password = ${password})
    # ${DB_SELECTSTATEMENT_USERS}    SELECT * FROM users a WHERE (a.phone = [username] OR a.identification_no = [username] OR a.tax_id = [username]) AND (a.password = [password])
	
	${strUsername} =	Convert To Upper Case	${username}
	# ${convertPasswordBase64}=    Evaluate    base64.b64decode('${password}').decode('utf-8')  modules=base64
	${encodePasswordBase64}=    Evaluate    base64.b64encode(bytes('${password}', 'utf-8'))
	# Log To Console    encodePasswordBase64 : ${encodePasswordBase64}
	${convertStrPassword}=    Convert To String    ${encodePasswordBase64}
	# Log To Console    encodePasswordBase64 : ${convertStrPassword}

	${replaceUsername}=    Replace String    ${DB_SELECTSTATEMENT_USERS}    [username]    ${strUsername}
	${selectStatementUsers}=    Replace String    ${replaceUsername}    [password]    ${convertStrPassword}
	Log To Console    [users : resultQuery] : ${selectStatementUsers}

	#[((10, 1, 'NDI3NQ==', 1, None, None, 'condosupport', None, None, None, None, 'Admin0007', None, '0820394275', None, None, None, '0820394275', None, None, 0, None, datetime.datetime(2021, 9, 6, 8, 45, 49), '1', datetime.datetime(2021, 9, 6, 8, 48, 54), '1', None, None),), 1]
    # queryResults,rowCount
    ${resultUsers}=    Start Connect To MySql Query All List    ${selectStatementUsers}    ${selectStatementUsers}
	Log To Console    [users] Request Verify DB Check Data Login : ${resultUsers}
	${dataResultUsers}=    Set Variable    ${resultUsers}[0]
	Log To Console    [result : users] : ${dataResultUsers}
	${rowCountUsers}=    Set Variable    ${resultUsers}[1]
	Log To Console    [rowCount : users] : ${rowCountUsers}
	
	#userId
	${userId}=    Set Variable    ${dataResultUsers[0][0]}
	Set Global Variable    ${userId}    ${dataResultUsers[0][0]}
	Log To Console    [userId] : ${userId}
	#firstName
	${firstName}=    Set Variable    ${dataResultUsers[0][6]}
	Set Global Variable    ${firstName}    ${dataResultUsers[0][6]}
	Log To Console    [firstName] : ${firstName}
	#lastName
	${lastName}=    Set Variable    ${dataResultUsers[0][7]}
	Set Global Variable    ${lastName}    ${dataResultUsers[0][7]}
	Log To Console    [lastName] : ${lastName}

    #-------------------------------------- user_role--------------------------------------------------#
	# SELECT * FROM user_role a WHERE a.deleted_at IS NULL AND a.user_id = ${resUser.id}
    # ${DB_SELECTSTATEMENT_USERROLE}    SELECT * FROM user_role a WHERE a.deleted_at IS NULL AND a.user_id = [userId]
	${convertStrUserId}=    Convert To String    ${userId}
	${selectStatementUserRole}=    Replace String    ${DB_SELECTSTATEMENT_USERROLE}    [userId]    ${convertStrUserId}
	Log To Console    [user_role : resultQuery] : ${selectStatementUserRole}
	#[((10, 7, 10, 9, None, datetime.datetime(2021, 9, 6, 8, 45, 49), '1', None, None, None, None),), 1]
    # queryResults,rowCount
    @{resultUserRole}=    Start Connect To MySql Query All List    ${selectStatementUserRole}    ${selectStatementUserRole}
	Log To Console    [user_role] Request Verify DB Check Data Login : ${resultUserRole}
	${dataResultUserRole}=    Set Variable    ${resultUserRole}[0]
	Log To Console    [result : user_role] : ${dataResultUserRole}
	${rowCountUserRole}=    Set Variable    ${resultUserRole}[1]
	Log To Console    [rowCount : user_role] : ${rowCountUserRole}

    #-------------------------------------- role_menu--------------------------------------------------#
	# SELECT rm.*, r.role_name , m.menu_name FROM role_menu rm LEFT JOIN menu m ON m.id = rm.menu_id LEFT JOIN `role` r ON r.id = rm.role_id LEFT JOIN user_role ur ON ur.role_type = r.id WHERE ur.user_id = ${resUser.id} ORDER BY r.role_name, m.menu_name		
    # ${DB_SELECTSTATEMENT_ROLE_MENU}    SELECT rm.*, r.role_name , m.menu_name FROM role_menu rm LEFT JOIN menu m ON m.id = rm.menu_id LEFT JOIN `role` r ON r.id = rm.role_id LEFT JOIN user_role ur ON ur.role_type = r.id WHERE ur.user_id = [userId] ORDER BY r.role_name, m.menu_name		
    ${selectStatementRoleMenu}=    Replace String    ${DB_SELECTSTATEMENT_ROLE_MENU}    [userId]    ${convertStrUserId}
	Log To Console    [role_menu : resultQuery] : ${selectStatementRoleMenu}
	#[((543, 7, 9, 27, 'view,create,edit,delete', 'Admin', 'Annouce'), (536, 7, 9, 20, 'view,create,edit,delete', 'Admin', 'Annouce Management'), (533, 7, 9, 17, 'view,create,edit,delete', 'Admin', 'Approve Management'), (529, 7, 9, 10, 'view,create,edit,delete', 'Admin', 'Bank Account Management'), (527, 7, 9, 8, 'view,create,edit,delete', 'Admin', 'Building Management'), (530, 7, 9, 11, 'view,create,edit,delete', 'Admin', 'Check Asset Management'), (546, 7, 9, 30, 'view,create,edit,delete', 'Admin', 'Check Parcel Information'), (540, 7, 9, 24, 'view,create,edit,delete', 'Admin', 'Connect Room'), (547, 7, 9, 31, 'view,create,edit,delete', 'Admin', 'Create Package'), (534, 7, 9, 18, 'view,create,edit,delete', 'Admin', 'Employee Management'), (524, 7, 9, 5, 'view,create,edit,delete', 'Admin', 'ExpenseCode Management'), (522, 7, 9, 3, 'view,create,edit,delete', 'Admin', 'Incomecode Management'), (532, 7, 9, 16, 'view,create,edit,delete', 'Admin', 'Invoice Management'), (525, 7, 9, 6, 'view,create,edit,delete', 'Admin', 'Mulct Method Management'), (523, 7, 9, 4, 'view,create,edit,delete', 'Admin', 'MulctCode Mangement'), (545, 7, 9, 29, 'view,create,edit,delete', 'Admin', 'Notice'), (538, 7, 9, 22, 'view,create,edit,delete', 'Admin', 'Notice Management'), (544, 7, 9, 28, 'view,create,edit,delete', 'Admin', 'Package'), (537, 7, 9, 21, 'view,create,edit,delete', 'Admin', 'Package Management'), (541, 7, 9, 25, 'view,create,edit,delete', 'Admin', 'Profile'), (539, 7, 9, 23, 'view,create,edit,delete', 'Admin', 'Register'), (535, 7, 9, 19, 'view,create,edit,delete', 'Admin', 'Repair Equipment Management'), (548, 7, 9, 1, 'view,create,edit,delete', 'Admin', 'Role Management'), (542, 7, 9, 26, 'view,create,edit,delete', 'Admin', 'Room Detail'), (528, 7, 9, 9, 'view,create,edit,delete', 'Admin', 'Room Management'), (531, 7, 9, 12, 'view,create,edit,delete', 'Admin', 'Room Owner Management'), (526, 7, 9, 7, 'view,create,edit,delete', 'Admin', 'Save Meter'), (549, 7, 9, 2, 'view,create,edit,delete', 'Admin', 'User Account')), 28]
    # queryResults,rowCount
    @{resultRoleMenu}=    Start Connect To MySql Query All List    ${selectStatementRoleMenu}    ${selectStatementRoleMenu}
	Log To Console    [role_menu] Request Verify DB Check Data Login : ${resultRoleMenu}
	${dataResultRoleMenu}=    Set Variable    ${resultRoleMenu}[0]
	Log To Console    [result : role_menu] : ${dataResultRoleMenu}
	${rowCountRoleMenu}=    Set Variable    ${resultRoleMenu}[1]
	Log To Console    [rowCount : role_menu] : ${rowCountRoleMenu}

    #accountId
	${accountId}=    Set Variable    ${dataResultRoleMenu}[0][1]
	Set Global Variable    ${accountId}    ${dataResultRoleMenu}[0][1]
	Log To Console    [accountId] : ${accountId}
	#roleType
	${roleType}=    Set Variable    ${dataResultRoleMenu}[0][2]
	Set Global Variable    ${roleType}    ${dataResultRoleMenu}[0][2]
	Log To Console    [roleType] : ${roleType}
	#roleName
	${roleName}=    Set Variable    ${dataResultRoleMenu}[0][5]
	Set Global Variable    ${roleName}    ${dataResultRoleMenu}[0][5]
	Log To Console    [roleName] : ${roleName}

	# role
    @{valArrDataMenu}=    Create List
	FOR    ${i}    IN RANGE    ${rowCountRoleMenu}

        ${data}=    Evaluate    {"action":"${dataResultRoleMenu}[${i}][4]", "menuId": "${dataResultRoleMenu}[${i}][3]", "menuName": "${dataResultRoleMenu}[${i}][6]"}
        Append To List    ${valArrDataMenu}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
	END
	#menu
	Log To Console    [Menu] : ${valArrDataMenu}
	Set Global Variable    ${menu}    ${valArrDataMenu}

	Log To Console    ${\n}=========== End DB : [Login] =============== 

	[Return]    ${userId}    ${firstName}    ${lastName}    ${accountId}    ${roleType}    ${roleName}    ${valArrDataMenu}

################################################################-- Update tb users set papd flag--################################################################
Update tb users set papd flag

    [Arguments]    ${userId}    ${pdpa_flag}    ${namefile}
	Log To Console    ${\n}=========== Start DB : [Update tb users set papd flag - users] =============== 
	#${DB_UPDATESTATEMENT_USERS_USERID_PDPAFLAG}    UPDATE users SET pdpa_flag = [pdpa_flag] WHERE WHERE id = [userId]

	${selectStatementUsers}=    Replace String    ${DB_UPDATESTATEMENT_USERS_USERID_PDPAFLAG}    [userId]    ${userId}
	${selectStatementUsers}=    Replace String    ${selectStatementUsers}    [pdpa_flag]    ${pdpa_flag}
	Log To Console    [users : resultQuery] : ${selectStatementUsers}

    Create File    ./${namefile}	${selectStatementUsers}
	#[(), 0]
    # queryResults,rowCount
    @{resultUsers}=    Start Connect To MySql Execute Sql Script    ${namefile}
	Log To Console    [users] Update TB Users Set papd flag : ${resultUsers}
	# ${dataResultUsers}=    Set Variable    ${resultUsers}
	Log To Console    [result : users] : ${resultUsers}
	Remove File    ./${namefile}

	Log To Console    ${\n}=========== End DB : [Update tb users set papd flag - users] =============== 

################################################################-- Request Verify DB Check login rowCount--################################################################
Request Verify DB Check login rowCount
    [Arguments]    ${username}    ${password}    ${num}

	Log To Console    ${\n}=========== Start DB : [Login rowCount - users] =============== 
	#-------------------------------------- users--------------------------------------------------#
    # SELECT * FROM users a WHERE (a.phone = ${id} OR a.identification_no = ${id} OR a.tax_id = ${taxId}) AND (a.password = ${password})
    # ${DB_SELECTSTATEMENT_USERS}    SELECT * FROM users a WHERE (a.phone = [username] OR a.identification_no = [username] OR a.tax_id = [username]) AND (a.password = [password])
	
	${strUsername} =	Convert To Upper Case	${username}
	# ${convertPasswordBase64}=    Evaluate    base64.b64decode('${password}').decode('utf-8')  modules=base64
	${encodePasswordBase64}=    Evaluate    base64.b64encode(bytes('${password}', 'utf-8'))
	# Log To Console    encodePasswordBase64 : ${encodePasswordBase64}
	${convertStrPassword}=    Convert To String    ${encodePasswordBase64}
	# Log To Console    encodePasswordBase64 : ${convertStrPassword}

	${replaceUsername}=    Replace String    ${DB_SELECTSTATEMENT_USERS}    [username]    ${strUsername}
	${selectStatementUsers}=    Replace String    ${replaceUsername}    [password]    ${convertStrPassword}
	Log To Console    [users : resultQuery] : ${selectStatementUsers}

	#[(), 0]
    # rowCount
    ${rowCountUsers}=    Start Connect To MySql Row Count Query    ${selectStatementUsers}
	Log To Console    [rowCount : users] : ${rowCountUsers}
    ${convertNum}=    Convert To Integer    ${num}
    Should Be Equal    ${rowCountUsers}    ${convertNum}
	Log To Console    ${\n}=========== End DB : [Login rowCount - users] =============== 

################################################################-- Update tb user_role set delete_at--################################################################
Update tb user_role set delete_at

    [Arguments]    ${userId}    ${deleted_at}    ${namefile}
	Log To Console    ${\n}=========== Start DB : [Update tb user_role set delete_at - user_role] =============== 
	#${DB_UPDATESTATEMENT_USERROLE_USERID_DELETEDAT}    UPDATE user_role SET deleted_at = [deleted_at] WHERE user_Id = [userId]

	${selectStatementUserRole}=    Replace String    ${DB_UPDATESTATEMENT_USERROLE_USERID_DELETEDAT}    [userId]    ${userId}
	${selectStatementUserRole}=    Replace String    ${selectStatementUserRole}    [deleted_at]    ${deleted_at}
	Log To Console    [user_role : resultQuery] : ${selectStatementUserRole}

    Create File    ./${namefile}	${selectStatementUserRole}
	
    ${resultUserRole}=    Start Connect To MySql Execute Sql Script    ${namefile}
	Log To Console    [user_role] Update tb user_role set delete_at : ${resultUserRole}
	Log To Console    [result : user_role] : ${resultUserRole}
	Remove File    ./${namefile}

	Log To Console    ${\n}=========== End DB : [Update tb user_role set delete_at - user_role] =============== 

################################################################-- Update tb accounts set delete_at--################################################################
Update tb accounts set delete_at

    [Arguments]    ${userId}    ${deleted_at}    ${namefile}
	Log To Console    ${\n}=========== Start DB : [Update tb accounts set delete_at - accounts] =============== 
	#${DB_UPDATESTATEMENT_ACCOUNTS_ID_DELETEDAT}    UPDATE accounts SET deleted_at = [deleted_at] WHERE id = [id]

	${selectStatementAccounts}=    Replace String    ${DB_UPDATESTATEMENT_ACCOUNTS_ID_DELETEDAT}    [id]    ${userId}
	${selectStatementAccounts}=    Replace String    ${selectStatementAccounts}    [deleted_at]    ${deleted_at}
	Log To Console    [accounts : resultQuery] : ${selectStatementAccounts}

    Create File    ./${namefile}	${selectStatementAccounts}

    ${resultUserRole}=    Start Connect To MySql Execute Sql Script    ${namefile}
	Log To Console    [user_role] Update tb accounts set delete_at : ${resultUserRole}
	Log To Console    [result : user_role] : ${resultUserRole}
	Remove File    ./${namefile}

	Log To Console    ${\n}=========== End DB : [Update tb accounts set delete_at - accounts] =============== 

################################################################-- Update tb accounts set expire_date--################################################################
Update tb accounts set expire_date

    [Arguments]    ${userId}    ${expire_date}    ${namefile}
	Log To Console    ${\n}=========== Start DB : [Update tb accounts set expire_date - accounts] =============== 
	#${DB_UPDATESTATEMENT_ACCOUNTS_ID_EXPIREDATE}    UPDATE accounts SET expire_date = [expire_date] WHERE id = [id]

	${selectStatementAccounts}=    Replace String    ${DB_UPDATESTATEMENT_ACCOUNTS_ID_EXPIREDATE}    [id]    ${userId}
	${selectStatementAccounts}=    Replace String    ${selectStatementAccounts}    [expire_date]    ${expire_date}
	Log To Console    [accounts : resultQuery] : ${selectStatementAccounts}

    Create File    ./${namefile}	${selectStatementAccounts}

    ${resultUserRole}=    Start Connect To MySql Execute Sql Script    ${namefile}
	Log To Console    [user_role] Update tb accounts set expire_date : ${resultUserRole}
	Log To Console    [result : user_role] : ${resultUserRole}
	Remove File    ./${namefile}

	Log To Console    ${\n}=========== End DB : [Update tb accounts set expire_date - accounts] =============== 

################################################################-- Request select password tb users--################################################################
Request select password tb users
    [Arguments]    ${userId}
	Log To Console    ${\n}=========== Start DB : [Request select password tb users - users] =============== 
	#${DB_SELECTSTATEMENT_USERS_USERID}    SELECT password FROM users WHERE id = [userId]

	${selectStatementUsers}=    Replace String    ${DB_SELECTSTATEMENT_USERS_USERID_PASSWORD}    [userId]    ${userId}
	# Log To Console    [users : resultQuery] : ${selectStatementUsers}

	#[(), 0]
    # queryResults,rowCount
    @{resultUsers}=    Start Connect To MySql Query All List    ${selectStatementUsers}    ${selectStatementUsers}
	# Log To Console    [users] Request select password tb users : ${resultBankAccount}
	${dataResultUsers}=    Set Variable    ${resultUsers}[0]
	# Log To Console    [result : users] : ${dataResultUsers}
	${rowCountUsers}=    Set Variable    ${resultUsers}[1]
	# Log To Console    [rowCount : users] : ${rowCountUsers}

    ${password}=    Set Variable    ${dataResultUsers}[0][0]
	# Log To Console    [result : users] : ${password}

	${decodePassword}=    Evaluate    base64.b64decode('${password}').decode('utf-8')  modules=base64
    # Log To Console    decodePassword${decodePassword}
	Log To Console    ${\n}=========== End DB : [Request select password tb users - users] =============== 
    [Return]    ${dataResultUsers}    ${decodePassword}

################################################################-- Request Verify DB Check Forget Password Phone rowCount--################################################################
Request Verify DB Check Forget Password Phone rowCount
    [Arguments]    ${phone}    ${num}
	Log To Console    ${\n}=========== Start DB : [Forget Password Phone - users] =============== 
	#${DB_SELECTSTATEMENT_USERS_PHONE}    SELECT * FROM users WHERE phone = [phone]

	${selectStatementUsers}=    Replace String    ${DB_SELECTSTATEMENT_USERS_PHONE}    [phone]    ${phone}
	# Log To Console    [users : resultQuery] : ${selectStatementUsers}

	#[(), 0]
    # rowCount
    ${rowCountUsers}=    Start Connect To MySql Row Count Query    ${selectStatementUsers}
	Log To Console    [rowCount : users] : ${rowCountUsers}
    ${convertNum}=    Convert To Integer    ${num}
    Should Be Equal    ${rowCountUsers}    ${convertNum}
	Log To Console    ${\n}=========== End DB : [Forget Password Phone - users] =============== 


