*** Variables ***
#Product
# ${CONNECT_TO_MYSQL_DBAPIMODULENAME}    pymysql
# ${CONNECT_TO_MYSQL_DBNAME}    db_smartrms_condo_robot
# ${CONNECT_TO_MYSQL_DBUSERNAME}    smartrmscondo
# ${CONNECT_TO_MYSQL_DBPASSWORD}    smartrmscondo
# ${CONNECT_TO_MYSQL_DBHOST}    10.1.2.191
# ${CONNECT_TO_MYSQL_DBPOST}    8002

#Automate
# Connect To Database    dbapiModuleName=pymysql      dbName=db_smartrms_condo_robot     dbUsername=smartrmscondo    dbPassword=smartrmscondo    dbHost=10.1.2.191    dbPort=8002
# ${CONNECT_TO_MYSQL_DBAPIMODULENAME}    pymysql
# ${CONNECT_TO_MYSQL_DBNAME}    db_smartrms_condo_robot
# ${CONNECT_TO_MYSQL_DBUSERNAME}    smartrmscondo
# ${CONNECT_TO_MYSQL_DBPASSWORD}    smartrmscondo
# ${CONNECT_TO_MYSQL_DBHOST}    10.1.2.191
# ${CONNECT_TO_MYSQL_DBPOST}    8002

${CONNECT_TO_MYSQL_DBAPIMODULENAME}    pymysql
${CONNECT_TO_MYSQL_DBNAME}    db_smartrms_condo_robot
${CONNECT_TO_MYSQL_DBUSERNAME}    smartcondoDev
${CONNECT_TO_MYSQL_DBPASSWORD}    isylzjko
${CONNECT_TO_MYSQL_DBHOST}    202.162.79.200
${CONNECT_TO_MYSQL_DBPOST}    3306

#----------------------------------------------------------------------------------------#
${MYSQL_TYPE_QUERYALLLIST}    QueryAllList
${MYSQL_TYPE_ROWCOUNTQUERY}    RowCountQuery 
${MYSQL_TYPE_EXECUTESQLSTRING}    ExecuteSqlStringSanstran
${MYSQL_TYPE_SEARCHLISTALL}    SearchListAll
${MYSQL_TYPE_CREATE}    Create
${MYSQL_TYPE_EDIT}    Edit
${MYSQL_TYPE_DELETE}    Delete
${MYSQL_TYPE_VIEW}    View

${MYSQL_TYPE_CREATE_ALLFIELD}    create_allfield
${MYSQL_TYPE_CREATE_REQUIREDFIELD}    create_requiredfield
${MYSQL_TYPE_CREATE_FOREIGNERS_ALLFIELD}    create_foreigners_allfield
${MYSQL_TYPE_CREATE_FOREIGNERS_REQUIREDFIELD}    create_foreigners_requiredfield
${MYSQL_TYPE_CREATE_JURISTICPERSON_ALLFIELD}    create_jurisiticperson_allfield
${MYSQL_TYPE_CREATE_JURISTICPERSON_REQUIREDFIELD}    create_jurisiticperson_requiredfield
${MYSQL_TYPE_EDIT_ALLFIELD}    edit_allfield
${MYSQL_TYPE_EDIT_REQUIREDFIELD}    edit_requiredfield
${MYSQL_TYPE_EDIT_FOREIGNERS_ALLFIELD}    edit_foreigners_allfield
${MYSQL_TYPE_EDIT_FOREIGNERS_REQUIREDFIELD}    edit_foreigners_requiredfield
${MYSQL_TYPE_EDIT_JURISTICPERSON_ALLFIELD}    edit_jurisiticperson_allfield
${MYSQL_TYPE_EDIT_JURISTICPERSON_REQUIREDFIELD}    edit_jurisiticperson_requiredfield
${MYSQL_TYPE_VIEW_ALLFIELD}    view_allfield
${MYSQL_TYPE_VIEW_REQUIREDFIELD}    view_requiredfield
${MYSQL_TYPE_DELETE_ALLFIELD}    delete_allfield
${MYSQL_TYPE_DELETE_REQUIREDFIELD}    delete_requiredfield

#-------------------------------------- Table account--------------------------------------------------#
${DB_TB_ACCOUNTS}    accounts
${DB_TB_ACCOUNTS_FIELD_STARTDATE}    start_date
${DB_TB_ACCOUNTS_FIELD_EXPIREDATE}    expire_date
${DB_TB_ACCOUNTS_FIELD_NAME}    name
${DB_TB_ACCOUNTS_FIELD_CREATEDAT}    created_at
${DB_TB_ACCOUNTS_FIELD_DELETEDAT}    deleted_at
#-------------------------------------- Table users--------------------------------------------------#
${DB_TB_USERS}    users
${DB_TB_USERS_FIELD_IDENTIFICATIONNO}    identification_no
${DB_TB_USERS_FIELD_PHONE}    phone
${DB_TB_USERS_FIELD_CREATEDAT}    created_at
${DB_TB_USERS_FIELD_DELETEDAT}    deleted_at
#-------------------------------------- Table bank_account--------------------------------------------------#
${DB_TB_BANKACCOUNT}    bank_account
${DB_TB_BANKACCOUNT_FIELD_BANKACCOUNTNAME}    bank_account_Name
${DB_TB_BANKACCOUNT_FIELD_BANKACCOUNTNUMBER}    bank_account_number
${DB_TB_BANKACCOUNT_FIELD_STATUS}    status
${DB_TB_BANKACCOUNT_FIELD_ACCOUNTID}    account_id
${DB_TB_BANKACCOUNT_FIELD_DELETEDAT}    deleted_at
#-------------------------------------- Table banks--------------------------------------------------#
${DB_TB_BANKS}    banks
${DB_TB_BANKS_FIELD_BANKNAMETH}    bank_name_th
${DB_TB_BANKS_FIELD_BANKNAMEEN}    bank_name_en
#-------------------------------------- Table properties--------------------------------------------------#
${DB_TB_PROPERTIES}    properties
${DB_TB_PROPERTIES_FIELD_PROPERTYNAMETH}    property_name_th
${DB_TB_PROPERTIES_FIELD_PROPERTYNAMEEN}    property_name_en     
${DB_TB_PROPERTIES_FIELD_STATUS}    status
${DB_TB_PROPERTIES_FIELD_ACCOUNTID}    account_id
#-------------------------------------- Table properties--------------------------------------------------#
${DB_TB_PROPERTIES}    properties
${DB_TB_PROPERTIES_FIELD_PROPERTYNAMETH}    property_name_th
${DB_TB_PROPERTIES_FIELD_PROPERTYNAMEEN}    property_name_en     
${DB_TB_PROPERTIES_FIELD_STATUS}    status
${DB_TB_PROPERTIES_FIELD_ACCOUNTID}    account_id
#-------------------------------------- Table buildings--------------------------------------------------#
${DB_TB_BUILDINGS}    buildings
${DB_TB_BUILDINGS_FIELD_PROPRETYID}    property_id
${DB_TB_BUILDINGS_FIELD_BUILDINGNAMETH}    building_name_th
${DB_TB_BUILDINGS_FIELD_BUILDINGNAMEEN}    building_name_en     
${DB_TB_BUILDINGS_FIELD_ACCOUNTID}    account_id
${DB_TB_BUILDINGS_FIELD_DELETEDAT}    deleted_at
#-------------------------------------- Table group_menu--------------------------------------------------#
${DB_TB_GROUPMENU}    group_menu
${DB_TB_GROUPMENU_FIELD_ID}   id
${DB_TB_GROUPMENU_FIELD_NAME}    name
${DB_TB_GROUPMENU_FIELD_MENUID}    menu_id  
#-------------------------------------- Table menu--------------------------------------------------#
${DB_TB_MENU}    menu
${DB_TB_MENU_FIELD_ID}   id
${DB_TB_MENU_FIELD_MENUNAME}    menu_name     
#-------------------------------------- Table mulct_code--------------------------------------------------#
${DB_TB_MULCTCODE}    mulct_code
${DB_TB_MULCTCODE_FIELD_MULCTCODE}    mulctcode
${DB_TB_MULCTCODE_FIELD_NAMETH}    name_th
${DB_TB_MULCTCODE_FIELD_NAMEEN}    name_en
${DB_TB_MULCTCODE_FIELD_STATUS}    status
${DB_TB_MULCTCODE_FIELD_ACCOUNTID}    account_id
${DB_TB_MULCTCODE_FIELD_DELETEDAT}    deleted_at
#-------------------------------------- Table income_code--------------------------------------------------#
${DB_TB_INCOMECODE}    income_code
${DB_TB_INCOMECODE_FIELD_INCOMECODE}    mulctcode
${DB_TB_INCOMECODE_FIELD_NAMETH}    name_th
${DB_TB_INCOMECODE_FIELD_NAMEEN}    name_en
${DB_TB_INCOMECODE_FIELD_STATUS}    status
${DB_TB_INCOMECODE_FIELD_ACCOUNTID}    account_id
${DB_TB_INCOMECODE_FIELD_DELETEDAT}    deleted_at
#-------------------------------------- Table expense_code--------------------------------------------------#
${DB_TB_EXPENSECODE}    expense_code
${DB_TB_EXPENSECODE_FIELD_EXPENSECODE}    expensecode
${DB_TB_EXPENSECODE_FIELD_NAMETH}    name_th
${DB_TB_EXPENSECODE_FIELD_NAMEEN}    name_en
${DB_TB_EXPENSECODE_FIELD_STATUS}    status
${DB_TB_EXPENSECODE_FIELD_ACCOUNTID}    account_id
${DB_TB_EXPENSECODE_FIELD_DELETEDAT}    deleted_at
#-------------------------------------- Table check_asset--------------------------------------------------#
${DB_TB_CHECKASSET}    check_asset
${DB_TB_CHECKASSET_FIELD_NAMETH}    name_th
${DB_TB_CHECKASSET_FIELD_NAMEEN}    name_en
#-------------------------------------- Table occupation--------------------------------------------------#
${DB_TB_OCCUPATION}    occupation
${DB_TB_OCCUPATION_FIELD_NAMETH}    name_th
${DB_TB_OCCUPATION_FIELD_NAMEEN}    name_en
#-------------------------------------- Table rooms--------------------------------------------------#
${DB_TB_ROOMS}    rooms
${DB_TB_ROOMS_FIELD_ROOMNO}    room_no
#-------------------------------------- Table room_owner--------------------------------------------------#
${DB_TB_ROOMOWNER}    room_owner
${DB_TB_ROOMOWNER_FIELD_FIRSTNAME}    first_name
${DB_TB_ROOMOWNER_FIELD_LASTNAME}    last_name
#-------------------------------------- Table room_transfer--------------------------------------------------#
${DB_TB_ROOMTRANFER}    room_transfer
${DB_TB_ROOMTRANFER_FIELD_DATEOFTRANFER}    date_of_tranfer
${DB_TB_ROOMTRANFER_FIELD_DATEOFARRIVAL}    date_of_arrival
#-------------------------------------- selectStatement DDL --------------------------------------------------#
${DB_SELECTSTATEMENT_BANKS}    SELECT * FROM banks
${DB_SELECTSTATEMENT_TITLES}    SELECT * FROM title
${DB_SELECTSTATEMENT_PROPERTIES}    SELECT * FROM properties
${DB_SELECTSTATEMENT_BUILDINGS}    SELECT * FROM buildings
${DB_SELECTSTATEMENT_PROPERTIES_WHEREACCOUNTID}    SELECT * FROM properties WHERE account_id = [accountId] and deleted_at IS null
${DB_SELECTSTATEMENT_BUILDINGS_WHEREACCOUNTID}    SELECT * FROM buildings WHERE account_id = [accountId] and deleted_at IS null
${DB_SELECTSTATEMENT_PROPERTIES_WHEREACCOUNTIDNAMETH}    SELECT * FROM properties WHERE account_id = [accountId] and property_name_th = "[property_name_th]" and deleted_at IS null
${DB_SELECTSTATEMENT_SEARCHDDLPROPERTY}    SELECT a.* , b.* FROM properties AS a LEFT JOIN  buildings AS b ON (b.property_id = a.id AND b.deleted_at is null ) WHERE a.deleted_at is null AND a.account_id = [accountId]
${DB_SELECTSTATEMENT_GROUPMENU}    SELECT * FROM group_menu
${DB_SELECTSTATEMENT_MENU}    SELECT * FROM menu
${DB_SELECTSTATEMENT_ACCOUNTS}    SELECT * FROM accounts where deleted_at IS null and deleted_by IS null
${DB_SELECTSTATEMENT_GROUPTYPE}    SELECT * FROM group_type
${DB_SELECTSTATEMENT_CALCULATIONMETHOD}    SELECT * FROM calculation_method
${DB_SELECTSTATEMENT_OCCUPATION}    SELECT * FROM occupation

${DB_SELECTSTATEMENT_MULCTMETHOD_WHEREACCOUNTID}    SELECT * FROM mulct_method WHERE account_Id = [accountId] and deleted_at IS null
${DB_SELECTSTATEMENT_MULCTMETHOD_WHERENAMETH}    SELECT * FROM mulct_method WHERE name_Th = "[nameTh]" and deleted_at IS null
${DB_SELECTSTATEMENT_MULCTCODE_WHEREACCOUNTID}    SELECT * FROM mulct_code WHERE account_Id = [accountId] and deleted_at IS null
${DB_SELECTSTATEMENT_MULCTCODE_WHERENAMETH}    SELECT * FROM mulct_code WHERE name_Th = "[nameTh]" and deleted_at IS null
${DB_SELECTSTATEMENT_EXPENSECODE_WHEREACCOUNTID}    SELECT * FROM expense_code WHERE account_Id = [accountId] and deleted_at IS null
${DB_SELECTSTATEMENT_EXPENSECODE_WHERENAMETH}    SELECT * FROM expense_code WHERE name_Th = "[nameTh]" and deleted_at IS null
${DB_SELECTSTATEMENT_MENU_NOSELECTSCUSER}    SELECT * FROM menu WHERE id NOT IN (13,14,15,23,24,26,27,28,29,30,31,50) 
${DB_SELECTSTATEMENT_MULCTCONDITION_WHEREACCOUNTIDMULCTCMETHODID}    SELECT * FROM mulct_condition WHERE account_id = [accountId] and mulct_method_id = "[mulctMethodId]" and deleted_at IS null
${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
${DB_SELECTSTATEMENT_CHECKASSET_WHERENAMETH}    SELECT * FROM check_asset WHERE name_Th = "[nameTh]" and deleted_at IS null
${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTIDDELETEAT}    SELECT * FROM check_asset WHERE account_id = [accountId] and deleted_at IS null
${DB_SELECTSTATEMENT_INCOMECODE_WHERENAMETH}    SELECT * FROM income_code WHERE name_Th = "[nameTh]" and deleted_at IS null


############################################################################## selectStatement Login #####################################################################################
# SELECT * FROM users a WHERE (a.phone = ${id} OR a.identification_no = ${id} OR a.tax_id = ${taxId}) AND (a.password = ${password})
${DB_SELECTSTATEMENT_USERS}    SELECT * FROM users a WHERE (a.phone = '[username]' OR a.identification_no = '[username]' OR a .tax_id = '[username]') AND (a.password = '[password]')
${DB_SELECTSTATEMENT_USERS_USERID_PASSWORD}    SELECT password FROM users WHERE id = [userId]
${DB_SELECTSTATEMENT_USERS_USERID_PDPAFLAG}    SELECT pdpa_flag FROM users WHERE id = [userId]
${DB_SELECTSTATEMENT_USERS_PHONE}    SELECT * FROM users WHERE phone = [phone]
${DB_UPDATESTATEMENT_USERS_USERID_PDPAFLAG}    UPDATE users SET pdpa_flag = [pdpa_flag] WHERE id = [userId]
# SELECT * FROM user_role a WHERE a.deleted_at IS NULL AND a.user_id = ${resUser.id}
${DB_SELECTSTATEMENT_USERROLE}    SELECT * FROM user_role a WHERE a.deleted_at IS NULL AND a.user_id = [userId]
${DB_UPDATESTATEMENT_USERROLE_USERID_DELETEDAT}    UPDATE user_role SET deleted_at = [deleted_at] WHERE user_Id = [userId]
# SELECT rm.*, r.role_name , m.menu_name FROM role_menu rm LEFT JOIN menu m ON m.id = rm.menu_id LEFT JOIN `role` r ON r.id = rm.role_id LEFT JOIN user_role ur ON ur.role_type = r.id WHERE ur.user_id = ${resUser.id} ORDER BY r.role_name, m.menu_name		
${DB_SELECTSTATEMENT_ROLE_MENU}    SELECT rm.*, r.role_name, m.menu_name FROM role_menu rm LEFT JOIN menu m ON m.id = rm.menu_id LEFT JOIN role r ON r.id = rm.role_id LEFT JOIN user_role ur ON ur.role_type = r.id WHERE ur.user_id = '[userId]' ORDER BY r.role_name, m.menu_name		
#accounts
${DB_UPDATESTATEMENT_ACCOUNTS_ID_DELETEDAT}    UPDATE accounts SET deleted_at = [deleted_at] WHERE id = [id]
${DB_UPDATESTATEMENT_ACCOUNTS_ID_EXPIREDATE}    UPDATE accounts SET expire_date = [expire_date] WHERE id = [id]
############################################################################## selectStatement account #####################################################################################
# type
${MYSQL_TYPE_ACCOUNT_SEARCH_ALL}    SearchAll
${MYSQL_TYPE_ACCOUNT_SEARCH_STARTDATE}    startDate
${MYSQL_TYPE_ACCOUNT_SEARCH_EXPIREDATE}    expireDate
${MYSQL_TYPE_ACCOUNT_SEARCH_DATASEARCH}    dataSearch
${MYSQL_TYPE_ACCOUNT_SEARCH_STARTEXPIREDATE}    startDateExpireDate
${MYSQL_TYPE_ACCOUNT_SEARCH_STARTDATEDATASEARCH}    startDateDataSearch
${MYSQL_TYPE_ACCOUNT_SEARCH_EXPIREDATEDATASEARCH}    expireDateDataSearch

# SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE a.deleted_at is null AND r.role_name = "Admin" order by created_at desc limit 20 offset 0
${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_LISTALL}    SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE a.deleted_at is null AND r.role_name = "Admin" order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_SEAECHALL}    SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE (a.start_date = "[start_date]" OR a.expire_date = "[expire_date]" OR a.name LIKE '%[dataSearch]%' OR u.identification_no LIKE '%[dataSearch]%' OR u.phone LIKE '%[dataSearch]%') AND a.deleted_at is null AND r.role_name = "Admin" order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_STARTDATE}    SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE a.start_date = "[start_date]" AND a.deleted_at is null AND r.role_name = "Admin" order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_EXPIREDATE}    SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE a.expire_date = "[expire_date]" AND a.deleted_at is null AND r.role_name = "Admin" order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_DATASEARCH}    SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE (a.name LIKE '%[dataSearch]%' OR u.identification_no LIKE '%[dataSearch]%' OR u.phone LIKE '%[dataSearch]%') AND a.deleted_at is null AND r.role_name = "Admin" order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_STARTEXPIREDATE}    SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE a.start_date = "[start_date]" AND a.expire_date = "[expire_date]" AND a.deleted_at is null AND r.role_name = "Admin" order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_STARTDATEDATASEARCH}    SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE (a.start_date = "[start_date]" OR a.name LIKE '%[dataSearch]%' OR u.identification_no LIKE '%[dataSearch]%' OR u.phone LIKE '%[dataSearch]%') AND a.deleted_at is null AND r.role_name = "Admin" order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_EXPIREDATEDATASEARCH}    SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE (a.expire_date = "[expire_date]" OR a.name LIKE '%[dataSearch]%' OR u.identification_no LIKE '%[dataSearch]%' OR u.phone LIKE '%[dataSearch]%') AND a.deleted_at is null AND r.role_name = "Admin" order by [orderBy] limit [limit] offset [offset]

${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_LISTALL_ROWCOUNT}    SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE a.deleted_at is null AND r.role_name = "Admin" order by [orderBy]
${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_SEAECHALL_ROWCOUNT}    SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE (a.start_date = "[start_date]" OR a.expire_date = "[expire_date]" OR a.name LIKE '%[datasearch]%' OR u.identification_no LIKE '%[dataSearch]%' OR u.phone LIKE '%[dataSearch]%') AND a.deleted_at is null AND r.role_name = "Admin" order by [orderBy]
${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_STARTDATE_ROWCOUNT}    SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE a.start_date = "[start_date]" AND a.deleted_at is null AND r.role_name = "Admin" order by [orderBy]
${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_EXPIREDATE_ROWCOUNT}    SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE a.expire_date = "[expire_date]" AND a.deleted_at is null AND r.role_name = "Admin" order by [orderBy]
${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_DATASEARCH_ROWCOUNT}    SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE (a.name LIKE '%[dataSearch]%' OR u.identification_no LIKE '%[dataSearch]%' OR u.phone LIKE '%[dataSearch]%') AND a.deleted_at is null AND r.role_name = "Admin" order by [orderBy]
${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_STARTEXPIREDATE_ROWCOUNT}    SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE a.start_date = "[start_date]" AND a.expire_date = "[expire_date]" AND a.deleted_at is null AND r.role_name = "Admin" order by [orderBy]
${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_STARTDATEDATASEARCH_ROWCOUNT}    SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE (a.start_date = "[start_date]" OR a.name LIKE '%[dataSearch]%' OR u.identification_no LIKE '%[dataSearch]%' OR u.phone LIKE '%[dataSearch]%') AND a.deleted_at is null AND r.role_name = "Admin" order by [orderBy]
${DB_SELECTSTATEMENT_ACCOUNT_SEARCH_EXPIREDATEDATASEARCH_ROWCOUNT}    SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE (a.expire_date = "[expire_date]" OR a.name LIKE '%[dataSearch]%' OR u.identification_no LIKE '%[dataSearch]%' OR u.phone LIKE '%[dataSearch]%') AND a.deleted_at is null AND r.role_name = "Admin" order by [orderBy]

${DB_SELECTSTATEMENT_ACCOUNT_CHECKCREATE}    SELECT * FROM accounts WHERE name = "[name]" AND deleted_at IS NULL
${DB_SELECTSTATEMENT_ACCOUNT_CHECKCREATE_ALLFIELD_VALUE}    (([id], '[name]', [maximumRoom], datetime.datetime([startDate]), datetime.datetime([expireDate]), datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by]),)
${DB_SELECTSTATEMENT_ACCOUNT_CHECKCREATE_REQUIREDFIELD_VALUE}    (([id], '[name]', [maximumRoom], datetime.datetime([startDate]), [expireDate], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by]),)
${DB_SELECTSTATEMENT_ACCOUNT_CHECKEDIT}    SELECT * FROM accounts WHERE id = [id] AND deleted_at IS NULL
${DB_SELECTSTATEMENT_ACCOUNT_CHECKEDIT_ALLFIELD_VALUE}    (([id], '[name]', [maximumRoom], datetime.datetime([startDate]), datetime.datetime([expireDate]), datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', [deleted_at], [deleted_by]),)
${DB_SELECTSTATEMENT_ACCOUNT_CHECKEDIT_REQUIREDFIELD_VALUE}    (([id], '[name]', [maximumRoom], datetime.datetime([startDate]), [expireDate], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', [deleted_at], [deleted_by]),)
${DB_SELECTSTATEMENT_ACCOUNT_CHECKVIEW}    SELECT * FROM accounts WHERE id = [id] AND deleted_at IS NULL
${DB_SELECTSTATEMENT_ACCOUNT_CHECKVIEW_ALLFIELD_VALUE}    ([id], '[name]', [maximumRoom], datetime.datetime([startDate]), datetime.datetime([expireDate]), datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by])
# ${DB_SELECTSTATEMENT_ACCOUNT_CHECKVIEW_ALLFIELD_VALUE}    (([id], '[name]', [maximumRoom], datetime.datetime([startDate]), [expireDate], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by]),)
${DB_SELECTSTATEMENT_ACCOUNT_CHECKDELETE}    SELECT * FROM accounts WHERE id = [id]
${DB_SELECTSTATEMENT_ACCOUNT_CHECKDELETE_ALLFIELD_VALUE}    (([id], '[name]', [maximumRoom], datetime.datetime([startDate]), datetime.datetime([expireDate]), datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', datetime.datetime([deleted_at]), '[deleted_by]'),)
${DB_SELECTSTATEMENT_ACCOUNT_CHECKDELETE_REQUIREDFIELD_VALUE}    (([id], '[name]', [maximumRoom], datetime.datetime([startDate]), [expireDate], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', datetime.datetime([deleted_at]), '[deleted_by]'),)

${DB_UPDATESTATEMENT_PROPERTIES_ACCOUNTID_DELETEDAT}    UPDATE properties SET deleted_at = [deleted_at] WHERE account_id = [account_id]

# ${DB_SELECTSTATEMENT_ACCOUNT_CHECKEDIT_PROPERTIES}    ([id], '[nameTh]', '[nameEn]', '[branchNo]', '[address]', '[phone]', [status], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [bill_payment_status], [bill_payment_bank], '[bill_payment_biller_name]', '[bill_id_TQRC]', '[bill_id_other_bank]', '[bill_id_tax30]', [accountId], '[tax_id]', '[property_short_name]', [room_amount], [shop_amount], [parking_amount], Decimal('[area]'), '[juristic_id]', datetime.datetime([registration_date]), Decimal('[water_electricity_average]'), [dead_line], Decimal('[proprietary_ratio]'))
${DB_SELECTSTATEMENT_ACCOUNT_CHECKEDIT_PROPERTIES}    ([id], '[nameTh]', '[nameEn]', '[branchNo]', '[address]', '[phone]', [status], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [bill_payment_status], [bill_payment_bank], '[bill_payment_biller_name]', '[bill_id_TQRC]', '[bill_id_other_bank]', '[bill_id_tax30]', [accountId], '[tax_id]', '[property_short_name]', [room_amount], [shop_amount], [parking_amount], Decimal('[area]'), '[juristic_id]', datetime.datetime([registration_date]), Decimal('[water_electricity_average]'), [dead_line], Decimal('[proprietary_ratio]'))
${DB_SELECTSTATEMENT_ACCOUNT_CHECKEDIT_PROPERTIES_EDIT}    ([id], '[nameTh]', '[nameEn]', '[branchNo]', '[address]', '[phone]', [status], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', [deleted_at], [deleted_by], [bill_payment_status], [bill_payment_bank], '[bill_payment_biller_name]', '[bill_id_TQRC]', '[bill_id_other_bank]', '[bill_id_tax30]', [accountId], '[tax_id]', '[property_short_name]', [room_amount], [shop_amount], [parking_amount], Decimal('[area]'), '[juristic_id]', datetime.datetime([registration_date]), Decimal('[water_electricity_average]'), [dead_line], Decimal('[proprietary_ratio]'))

############################################################################## Start [MenuMaster Management] #####################################################################################
#----------------------------------------------- [selectStatement IncomeCode] -----------------------------------------------#
# type
${MYSQL_TYPE_INCOMECODE_SEARCH_ALL}    SearchAll
${MYSQL_TYPE_INCOMECODE_SEARCH_INCOMECODE}    incomecode
${MYSQL_TYPE_INCOMECODE_SEARCH_NAME}    mulctName
${MYSQL_TYPE_INCOMECODE_SEARCH_STATUS}    status
${MYSQL_TYPE_INCOMECODE_SEARCH_INCOMECODENAME}    mulctCodeAndmulctName
${MYSQL_TYPE_INCOMECODE_SEARCH_INCOMECODESTATUS}    mulctCodeAndStatus
${MYSQL_TYPE_INCOMECODE_SEARCH_NAMESTATUS}    mulctNameAndStatus

# SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE a.deleted_at is null AND r.role_name = "Admin" order by created_at desc limit 20 offset 0
${DB_SELECTSTATEMENT_INCOMECODE_SEARCH_LISTALL}    SELECT * FROM income_code WHERE account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_INCOMECODE_SEARCH_SEAECHALL}    SELECT * FROM income_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND incomecode LIKE '%[income_code]%' AND status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_INCOMECODE_SEARCH_NAME}    SELECT * FROM income_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_INCOMECODE_SEARCH_INCOMECODE}    SELECT * FROM income_code WHERE incomecode LIKE '%[income_code]%' AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_INCOMECODE_SEARCH_STATUS}    SELECT * FROM income_code WHERE status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_INCOMECODE_SEARCH_INCOMECODENAME}    SELECT * FROM income_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND incomecode LIKE '%[income_code]%' AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_INCOMECODE_SEARCH_INCOMECODESTATUS}    SELECT * FROM income_code WHERE incomecode LIKE '%[income_code]%' AND status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_INCOMECODE_SEARCH_NAMESTATUS}    SELECT * FROM income_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]

${DB_SELECTSTATEMENT_INCOMECODE_SEARCH_LISTALL_ROWCOUNT}    SELECT * FROM income_code WHERE account_Id = [accountId] AND deleted_at is null order by [orderBy]
${DB_SELECTSTATEMENT_INCOMECODE_SEARCH_SEAECHALL_ROWCOUNT}    SELECT * FROM income_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND incomecode LIKE '%[income_code]%' AND status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy]
${DB_SELECTSTATEMENT_INCOMECODE_SEARCH_NAME_ROWCOUNT}    SELECT * FROM income_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND account_Id = [accountId] AND deleted_at is null order by [orderBy]
${DB_SELECTSTATEMENT_INCOMECODE_SEARCH_INCOMECODE_ROWCOUNT}    SELECT * FROM income_code WHERE incomecode LIKE '%[income_code]%' AND account_Id = [accountId] AND deleted_at is null order by [orderBy]
${DB_SELECTSTATEMENT_INCOMECODE_SEARCH_STATUS_ROWCOUNT}    SELECT * FROM income_code WHERE status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy]
${DB_SELECTSTATEMENT_INCOMECODE_SEARCH_INCOMECODENAME_ROWCOUNT}    SELECT * FROM income_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND incomecode LIKE '%[income_code]%' AND account_Id = [accountId] AND deleted_at is null order by [orderBy]
${DB_SELECTSTATEMENT_INCOMECODE_SEARCH_INCOMECODESTATUS_ROWCOUNT}    SELECT * FROM income_code WHERE incomecode LIKE '%[income_code]%' AND status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy]
${DB_SELECTSTATEMENT_INCOMECODE_SEARCH_NAMESTATUS_ROWCOUNT}    SELECT * FROM income_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy]

${DB_SELECTSTATEMENT_INCOMECODE_CHECKCREATE}    SELECT * FROM income_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND deleted_at IS NULL
${DB_SELECTSTATEMENT_INCOMECODE_CHECKCREATE_ALLFIELD_VALUE}    (([id], [accountId], [mulct_code_id], [calculation_method_id], Decimal('[price_unit]'), [minimum_unit], [minimum_price], [calculation_date_from], [calculate_mulct_flag], [is_calculate_common_fee], '[incomecode]', '[nameTh]', '[nameEn]', '[remark]', Decimal('[vat_percent]'), Decimal('[tax_percent]'), [calculation_time], [status], [group_type_id], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [index]),)
${DB_SELECTSTATEMENT_INCOMECODE_CHECKCREATE_REQUIREDFIELD_VALUE}    (([id], [accountId], [mulct_code_id], [calculation_method_id], Decimal('[price_unit]'), [minimum_unit], [minimum_price], [calculation_date_from], [calculate_mulct_flag], [is_calculate_common_fee], '[incomecode]', '[nameTh]', [nameEn], '[remark]', Decimal('[vat_percent]'), Decimal('[tax_percent]'), [calculation_time], [status], [group_type_id], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [index]),)
${DB_SELECTSTATEMENT_INCOMECODE_CHECKEDIT}    SELECT * FROM income_code WHERE id = [id] AND deleted_at IS NULL
${DB_SELECTSTATEMENT_INCOMECODE_CHECKEDIT_ALLFIELD_VALUE}    (([id], [accountId], [mulct_code_id], [calculation_method_id], Decimal('[price_unit]'), [minimum_unit], [minimum_price], [calculation_date_from], [calculate_mulct_flag], [is_calculate_common_fee], '[incomecode]', '[nameTh]', '[nameEn]', '[remark]', Decimal('[vat_percent]'), Decimal('[tax_percent]'), [calculation_time], [status], [group_type_id], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', [deleted_at], [deleted_by], [index]),)
${DB_SELECTSTATEMENT_INCOMECODE_CHECKEDIT_REQUIREDFIELD_VALUE}    (([id], [accountId], [mulct_code_id], [calculation_method_id], Decimal('[price_unit]'), [minimum_unit], [minimum_price], [calculation_date_from], [calculate_mulct_flag], [is_calculate_common_fee], '[incomecode]', '[nameTh]', [nameEn], '[remark]', Decimal('[vat_percent]'), Decimal('[tax_percent]'), [calculation_time], [status], [group_type_id], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', [deleted_at], [deleted_by], [index]),)
${DB_SELECTSTATEMENT_INCOMECODE_CHECKVIEW}    SELECT * FROM income_code WHERE id = [id] AND deleted_at IS NULL
${DB_SELECTSTATEMENT_INCOMECODE_CHECKVIEW_ALLFIELD_VALUE}    ([id], [accountId], [mulct_code_id], [calculation_method_id], Decimal('[price_unit]'), [minimum_unit], [minimum_price], [calculation_date_from], [calculate_mulct_flag], [is_calculate_common_fee], '[incomecode]', '[nameTh]', '[nameEn]', '[remark]', Decimal('[vat_percent]'), Decimal('[tax_percent]'), [calculation_time], [status], [group_type_id], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [index])
# ${DB_SELECTSTATEMENT_INCOMECODE_CHECKVIEW_ALLFIELD_VALUE}    ([id], [accountId], [mulct_code_id], [calculation_method_id], Decimal('[price_unit]'), [minimum_unit], [minimum_price], [calculation_date_from], [calculate_mulct_flag], [is_calculate_common_fee], '[incomecode]', '[nameTh]', [nameEn], '[remark]', Decimal('[vat_percent]'), Decimal('[tax_percent]'), [calculation_time], [status], [group_type_id], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [index])
${DB_SELECTSTATEMENT_INCOMECODE_CHECKDELETE}    SELECT * FROM income_code WHERE id = [id]
${DB_SELECTSTATEMENT_INCOMECODE_CHECKDELETE_ALLFIELD_VALUE}    (([id], [accountId], [mulct_code_id], [calculation_method_id], Decimal('[price_unit]'), [minimum_unit], [minimum_price], [calculation_date_from], [calculate_mulct_flag], [is_calculate_common_fee], '[incomecode]', '[nameTh]', '[nameEn]', '[remark]', Decimal('[vat_percent]'), Decimal('[tax_percent]'), [calculation_time], [status], [group_type_id], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', datetime.datetime([deleted_at]), '[deleted_by]', [index]),)
${DB_SELECTSTATEMENT_INCOMECODE_CHECKDELETE_REQUIREDFIELD_VALUE}    (([id], [accountId], [mulct_code_id], [calculation_method_id], Decimal('[price_unit]'), [minimum_unit], [minimum_price], [calculation_date_from], [calculate_mulct_flag], [is_calculate_common_fee], '[incomecode]', '[nameTh]', [nameEn], '[remark]', Decimal('[vat_percent]'), Decimal('[tax_percent]'), [calculation_time], [status], [group_type_id], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', datetime.datetime([deleted_at]), '[deleted_by]', [index]),)

#----------------------------------------------- selectStatement MulctCode -----------------------------------------------#
# type
${MYSQL_TYPE_MULCTCODE_SEARCH_ALL}    SearchAll
${MYSQL_TYPE_MULCTCODE_SEARCH_MULCTCODE}    mulctCode
${MYSQL_TYPE_MULCTCODE_SEARCH_NAME}    mulctName
${MYSQL_TYPE_MULCTCODE_SEARCH_STATUS}    status
${MYSQL_TYPE_MULCTCODE_SEARCH_MULCTCODENAME}    mulctCodeAndmulctName
${MYSQL_TYPE_MULCTCODE_SEARCH_MULCTCODESTATUS}    mulctCodeAndStatus
${MYSQL_TYPE_MULCTCODE_SEARCH_NAMESTATUS}    mulctNameAndStatus

# SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE a.deleted_at is null AND r.role_name = "Admin" order by created_at desc limit 20 offset 0
${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_LISTALL}    SELECT * FROM mulct_code WHERE account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_SEAECHALL}    SELECT * FROM mulct_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND mulctcode LIKE '%[mulctcode]%' AND status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_NAME}    SELECT * FROM mulct_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_MULCTCODE}    SELECT * FROM mulct_code WHERE mulctcode LIKE '%[mulctcode]%' AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_STATUS}    SELECT * FROM mulct_code WHERE status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_MULCTCODENAME}    SELECT * FROM mulct_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND mulctcode LIKE '%[mulctcode]%' AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_MULCTCODESTATUS}    SELECT * FROM mulct_code WHERE mulctcode LIKE '%[mulctcode]%' AND status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_NAMESTATUS}    SELECT * FROM mulct_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]

${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_LISTALL_ROWCOUNT}    SELECT * FROM mulct_code WHERE account_Id = [accountId] AND deleted_at is null order by [orderBy]
${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_SEAECHALL_ROWCOUNT}    SELECT * FROM mulct_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND mulctcode LIKE '%[mulctcode]%' AND status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy]
${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_NAME_ROWCOUNT}    SELECT * FROM mulct_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND account_Id = [accountId] AND deleted_at is null order by [orderBy]
${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_MULCTCODE_ROWCOUNT}    SELECT * FROM mulct_code WHERE mulctcode LIKE '%[mulctcode]%' AND account_Id = [accountId] AND deleted_at is null order by [orderBy]
${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_STATUS_ROWCOUNT}    SELECT * FROM mulct_code WHERE status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy]
${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_MULCTCODENAME_ROWCOUNT}    SELECT * FROM mulct_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND mulctcode LIKE '%[mulctcode]%' AND account_Id = [accountId] AND deleted_at is null order by [orderBy]
${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_MULCTCODESTATUS_ROWCOUNT}    SELECT * FROM mulct_code WHERE mulctcode LIKE '%[mulctcode]%' AND status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy]
${DB_SELECTSTATEMENT_MULCTCODE_SEARCH_NAMESTATUS_ROWCOUNT}    SELECT * FROM mulct_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy]

${DB_SELECTSTATEMENT_MULCTCODE_CHECKCREATE}    SELECT * FROM mulct_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND deleted_at IS NULL
${DB_SELECTSTATEMENT_MULCTCODE_CHECKCREATE_ALLFIELD_VALUE}    (([id], [accountId], [mulctMethodId], '[mulctCode]', '[nameTh]', '[nameEn]', [status], Decimal('[vat]'), Decimal('[tax]'), '[remark]', [groupTypeId], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by]),)
${DB_SELECTSTATEMENT_MULCTCODE_CHECKCREATE_REQUIREDFIELD_VALUE}    (([id], [accountId], [mulctMethodId], '[mulctCode]', '[nameTh]', [nameEn], [status], Decimal('[vat]'), Decimal('[tax]'), [remark], [groupTypeId], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by]),)
${DB_SELECTSTATEMENT_MULCTCODE_CHECKEDIT}    SELECT * FROM mulct_code WHERE id = [id] AND deleted_at IS NULL
${DB_SELECTSTATEMENT_MULCTCODE_CHECKEDIT_ALLFIELD_VALUE}    (([id], [accountId], [mulctMethodId], '[mulctCode]', '[nameTh]', '[nameEn]', [status], Decimal('[vat]'), Decimal('[tax]'), '[remark]', [groupTypeId], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', [deleted_at], [deleted_by]),)
${DB_SELECTSTATEMENT_MULCTCODE_CHECKEDIT_REQUIREDFIELD_VALUE}    (([id], [accountId], [mulctMethodId], '[mulctCode]', '[nameTh]', '[nameEn]', [status], Decimal('[vat]'), Decimal('[tax]'), '[remark]', [groupTypeId], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', [deleted_at], [deleted_by]),)
${DB_SELECTSTATEMENT_MULCTCODE_CHECKVIEW}    SELECT * FROM mulct_code WHERE id = [id] AND deleted_at IS NULL
${DB_SELECTSTATEMENT_MULCTCODE_CHECKVIEW_ALLFIELD_VALUE}    ([id], [accountId], [mulctMethodId], '[mulctCode]', '[nameTh]', '[nameEn]', [status], Decimal('[vat]'), Decimal('[tax]'), '[remark]', [groupTypeId], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by])
# ${DB_SELECTSTATEMENT_MULCTCODE_CHECKVIEW_ALLFIELD_VALUE}    ([id], [accountId], [mulctMethodId], '[mulctCode]', '[nameTh]', '[nameEn]', [status], Decimal('[vat]'), Decimal('[tax]'), '[remark]', [groupTypeId], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by])
${DB_SELECTSTATEMENT_MULCTCODE_CHECKDELETE}    SELECT * FROM mulct_code WHERE id = [id]
${DB_SELECTSTATEMENT_MULCTCODE_CHECKDELETE_ALLFIELD_VALUE}    (([id], [accountId], [mulctMethodId], '[mulctCode]', '[nameTh]', '[nameEn]', [status], Decimal('[vat]'), Decimal('[tax]'), '[remark]', [groupTypeId], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', datetime.datetime([deleted_at]), '[deleted_by]'),)
${DB_SELECTSTATEMENT_MULCTCODE_CHECKDELETE_REQUIREDFIELD_VALUE}    (([id], [accountId], [mulctMethodId], '[mulctCode]', '[nameTh]', '[nameEn]', [status], Decimal('[vat]'), Decimal('[tax]'), '[remark]', [groupTypeId], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', datetime.datetime([deleted_at]), '[deleted_by]'),)

#----------------------------------------------- selectStatement Expensecode -----------------------------------------------#
# type
${MYSQL_TYPE_EXPENSECODE_SEARCH_ALL}    SearchAll
${MYSQL_TYPE_EXPENSECODE_SEARCH_EXPENSECODE}    expenseCode
${MYSQL_TYPE_EXPENSECODE_SEARCH_NAME}    expenseName
${MYSQL_TYPE_EXPENSECODE_SEARCH_STATUS}    status
${MYSQL_TYPE_EXPENSECODE_SEARCH_EXPENSECODENAME}    expenseCodeAndmulctName
${MYSQL_TYPE_EXPENSECODE_SEARCH_EXPENSECODESTATUS}    expenseCodeAndStatus
${MYSQL_TYPE_EXPENSECODE_SEARCH_NAMESTATUS}    expenseNameAndStatus

# SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE a.deleted_at is null AND r.role_name = "Admin" order by created_at desc limit 20 offset 0
${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_LISTALL}    SELECT * FROM expense_code WHERE account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_SEAECHALL}    SELECT * FROM expense_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND expensecode LIKE '%[expensecode]%' AND status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_NAME}    SELECT * FROM expense_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_EXPENSECODE}    SELECT * FROM expense_code WHERE expensecode LIKE '%[expensecode]%' AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_STATUS}    SELECT * FROM expense_code WHERE status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_EXPENSECODENAME}    SELECT * FROM expense_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND expensecode LIKE '%[expensecode]%' AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_EXPENSECODESTATUS}    SELECT * FROM expense_code WHERE expensecode LIKE '%[expensecode]%' AND status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_NAMESTATUS}    SELECT * FROM expense_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]

${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_LISTALL_ROWCOUNT}    SELECT * FROM expense_code WHERE account_Id = [accountId] AND deleted_at is null order by [orderBy]
${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_SEAECHALL_ROWCOUNT}    SELECT * FROM expense_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND expensecode LIKE '%[expensecode]%' AND status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy]
${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_NAME_ROWCOUNT}    SELECT * FROM expense_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND account_Id = [accountId] AND deleted_at is null order by [orderBy]
${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_EXPENSECODE_ROWCOUNT}    SELECT * FROM expense_code WHERE expensecode LIKE '%[expensecode]%' AND account_Id = [accountId] AND deleted_at is null order by [orderBy]
${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_STATUS_ROWCOUNT}    SELECT * FROM expense_code WHERE status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy]
${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_EXPENSECODENAME_ROWCOUNT}    SELECT * FROM expense_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND expensecode LIKE '%[expensecode]%' AND account_Id = [accountId] AND deleted_at is null order by [orderBy]
${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_EXPENSECODESTATUS_ROWCOUNT}    SELECT * FROM expense_code WHERE expensecode LIKE  '%[expensecode]%' AND status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy]
${DB_SELECTSTATEMENT_EXPENSECODE_SEARCH_NAMESTATUS_ROWCOUNT}    SELECT * FROM expense_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy]

${DB_SELECTSTATEMENT_EXPENSECODE_CHECKCREATE}    SELECT * FROM expense_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND deleted_at IS NULL
${DB_SELECTSTATEMENT_EXPENSECODE_CHECKCREATE_ALLFIELD_VALUE}    (([id], [accountId], '[expenseCode]', '[nameTh]', '[nameEn]', Decimal('[vat]'), Decimal('[tax]'), '[remark]', [status], [groupTypeId], Decimal('[price_unit]'), datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by]),)
${DB_SELECTSTATEMENT_EXPENSECODE_CHECKCREATE_REQUIREDFIELD_VALUE}    (([id], [accountId], '[expenseCode]', '[nameTh]', [nameEn], Decimal('[vat]'), Decimal('[tax]'), [remark], [status], [groupTypeId], Decimal('[price_unit]'), datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by]),)
${DB_SELECTSTATEMENT_EXPENSECODE_CHECKEDIT}    SELECT * FROM expense_code WHERE id = [id] AND deleted_at IS NULL
${DB_SELECTSTATEMENT_EXPENSECODE_CHECKEDIT_ALLFIELD_VALUE}    (([id], [accountId], '[expenseCode]', '[nameTh]', '[nameEn]', Decimal('[vat]'), Decimal('[tax]'), '[remark]', [status], [groupTypeId], Decimal('[price_unit]'), datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', [deleted_at], [deleted_by]),)
${DB_SELECTSTATEMENT_EXPENSECODE_CHECKEDIT_REQUIREDFIELD_VALUE}    (([id], [accountId], '[expenseCode]', '[nameTh]', [nameEn], Decimal('[vat]'), Decimal('[tax]'), [remark], [status], [groupTypeId], Decimal('[price_unit]'), datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', [deleted_at], [deleted_by]),)
${DB_SELECTSTATEMENT_EXPENSECODE_CHECKVIEW}    SELECT * FROM expense_code WHERE id = [id] AND deleted_at IS NULL
${DB_SELECTSTATEMENT_EXPENSECODE_CHECKVIEW_ALLFIELD_VALUE}    ([id], [accountId], '[expenseCode]', '[nameTh]', '[nameEn]', Decimal('[vat]'), Decimal('[tax]'), '[remark]', [status], [groupTypeId], Decimal('[price_unit]'), datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by])
# ${DB_SELECTSTATEMENT_EXPENSECODE_CHECKVIEW_ALLFIELD_VALUE}    (([id], [accountId], '[expenseCode]', '[nameTh]', '[nameEn]', Decimal('[vat]'), Decimal('[tax]'), '[remark]', [status], [groupTypeId], Decimal('[price_unit]'), datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by])
${DB_SELECTSTATEMENT_EXPENSECODE_CHECKDELETE}    SELECT * FROM expense_code WHERE id = [id]
${DB_SELECTSTATEMENT_EXPENSECODE_CHECKDELETE_ALLFIELD_VALUE}    (([id], [accountId], '[expenseCode]', '[nameTh]', '[nameEn]', Decimal('[vat]'), Decimal('[tax]'), '[remark]', [status], [groupTypeId], Decimal('[price_unit]'), datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', datetime.datetime([deleted_at]), '[deleted_by]'),)
${DB_SELECTSTATEMENT_EXPENSECODE_CHECKDELETE_REQUIREDFIELD_VALUE}    (([id], [accountId], '[expenseCode]', '[nameTh]', [nameEn], Decimal('[vat]'), Decimal('[tax]'), [remark], [status], [groupTypeId], Decimal('[price_unit]'), datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', datetime.datetime([deleted_at]), '[deleted_by]'),)

#----------------------------------------------- selectStatement MulctMethod -----------------------------------------------#
# type
${MYSQL_TYPE_MULCTMETHOD_SEARCH_ALL}    SearchAll
${MYSQL_TYPE_MULCTMETHOD_SEARCH_NAME}    name_th
${MYSQL_TYPE_MULCTMETHOD_SEARCH_STATUS}    status
${MYSQL_TYPE_MULCTMETHOD_SEARCH_NAMESTATUS}    mulctNameAndStatus

# SELECT a.*, u.id as userId, u.identification_no,u.tax_id,u.phone,ur.account_id,ur.user_id FROM accounts a LEFT JOIN user_role ur ON ur.account_id = a.id LEFT JOIN users u ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id WHERE a.deleted_at is null AND r.role_name = "Admin" order by created_at desc limit 20 offset 0
${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_LISTALL}    SELECT * FROM mulct_method WHERE account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_SEAECHALL}    SELECT * FROM mulct_method WHERE name_th LIKE '%[name]%' AND  status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_NAME}    SELECT * FROM mulct_method WHERE name_th LIKE '%[name]%' AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_STATUS}    SELECT * FROM mulct_method WHERE status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_NAMESTATUS}    SELECT * FROM mulct_method WHERE name_th LIKE '%[name]%'AND status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy] limit [limit] offset [offset]

${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_LISTALL_ROWCOUNT}    SELECT * FROM mulct_method WHERE account_Id = [accountId] AND deleted_at is null order by [orderBy]
${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_SEAECHALL_ROWCOUNT}    SELECT * FROM mulct_method WHERE name_th LIKE '%[name]%' AND status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy]
${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_NAME_ROWCOUNT}    SELECT * FROM mulct_method WHERE name_th LIKE '%[name]%' AND account_Id = [accountId] AND deleted_at is null order by [orderBy]
${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_STATUS_ROWCOUNT}    SELECT * FROM mulct_method WHERE status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy]
${DB_SELECTSTATEMENT_MULCTMETHOD_SEARCH_NAMESTATUS_ROWCOUNT}    SELECT * FROM mulct_method WHERE name_th LIKE '%[name]%' AND status = [status] AND account_Id = [accountId] AND deleted_at is null order by [orderBy]

${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKCREATE}    SELECT * FROM mulct_method WHERE name_th LIKE '%[name]%' AND deleted_at IS NULL
${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKCREATE_ALLFIELD_VALUE}    (([id], [accountId], [adjustmentRate], [calculateMulctType], [adjustmentRateType], [unitFromTo], '[nameTh]', '[remark]', [status], '[created_by]', datetime.datetime([created_at]), [updated_by], datetime.datetime([updated_at]), [deleted_at], [deleted_by]),)
${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKCREATE_REQUIREDFIELD_VALUE}    (([id], [accountId], [adjustmentRate], [calculateMulctType], [adjustmentRateType], [unitFromTo], '[nameTh]', [remark], [status], '[created_by]', datetime.datetime([created_at]), [updated_by], datetime.datetime([updated_at]), [deleted_at], [deleted_by]),)
${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKEDIT}    SELECT * FROM mulct_method WHERE id = [id] AND deleted_at IS NULL
${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKEDIT_ALLFIELD_VALUE}    (([id], [accountId], [adjustmentRate], [calculateMulctType], [adjustmentRateType], [unitFromTo], '[nameTh]', '[remark]', [status], '[created_by]', datetime.datetime([created_at]), '[updated_by]', datetime.datetime([updated_at]), [deleted_at], [deleted_by]),)
${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKEDIT_REQUIREDFIELD_VALUE}    (([id], [accountId], [adjustmentRate], [calculateMulctType], [adjustmentRateType], [unitFromTo], '[nameTh]', [remark], [status], '[created_by]', datetime.datetime([created_at]), '[updated_by]', datetime.datetime([updated_at]), [deleted_at], [deleted_by]),)
${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKVIEW}    SELECT * FROM mulct_method WHERE id = [id] AND deleted_at IS NULL
${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKVIEW_ALLFIELD_VALUE}    ([id], [accountId], [adjustmentRate], [calculateMulctType], [adjustmentRateType], [unitFromTo], '[nameTh]', '[remark]', [status], '[created_by]', datetime.datetime([created_at]), [updated_by], datetime.datetime([updated_at]), [deleted_at], [deleted_by])
# ${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKVIEW_ALLFIELD_VALUE}    ([id], [accountId], [adjustmentRate], [calculateMulctType], [adjustmentRateType], [unitFromTo], '[nameTh]', [remark], [status], '[created_by]', datetime.datetime([created_at]), [updated_by], datetime.datetime([updated_at]), [deleted_at], [deleted_by])
${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKDELETE}    SELECT * FROM mulct_method WHERE id = [id]
${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKDELETE_ALLFIELD_VALUE}    (([id], [accountId], [adjustmentRate], [calculateMulctType], [adjustmentRateType], [unitFromTo], '[nameTh]', '[remark]', [status], '[created_by]', datetime.datetime([created_at]), '[updated_by]', datetime.datetime([updated_at]), datetime.datetime([deleted_at]), '[deleted_by]'),)
${DB_SELECTSTATEMENT_MULCTMETHOD_CHECKDELETE_REQUIREDFIELD_VALUE}    (([id], [accountId], [adjustmentRate], [calculateMulctType], [adjustmentRateType], [unitFromTo], '[nameTh]', [remark], [status], '[created_by]', datetime.datetime([created_at]), '[updated_by]', datetime.datetime([updated_at]), datetime.datetime([deleted_at]), '[deleted_by]'),)

${DB_UPDATESTATEMENT_MULCTCONDITION_ACCOUNTID_DELETEDAT}    UPDATE mulct_condition SET deleted_at = [deleted_at] WHERE account_id = [account_id] and mulct_method_id = [mulct_method_id]
${DB_SELECTSTATEMENT_MULCTCONDITION_ACCOUNTID_ALLFIELD_ADD_VALUE}    ([id], [accountId], [mulctMethodId], [dateFrom], [dateTo], [timePastDeadline], [dateToFlag], Decimal('[total]'), '[created_by]', datetime.datetime([created_at]), [updated_by], datetime.datetime([updated_at]), [deleted_at], [deleted_by])
${DB_SELECTSTATEMENT_MULCTCONDITION_ACCOUNTID_ALLFIELD_EDIT_VALUE}    ([id], [accountId], [mulctMethodId], [dateFrom], [dateTo], [timePastDeadline], [dateToFlag], Decimal('[total]'), '[created_by]', datetime.datetime([created_at]), [updated_by], datetime.datetime([updated_at]), [deleted_at], [deleted_by])

###################################################################################################################################################################

############################################################################## Start [Setting] #####################################################################################
#----------------------------------------------- selectStatement bankaccount -----------------------------------------------#
# type
${MYSQL_TYPE_BANKACCOUNT_SEARCH_ALL}    SearchAll
${MYSQL_TYPE_BANKACCOUNT_SEARCH_BANKACCOUNTNAME}    bankAccountName
${MYSQL_TYPE_BANKACCOUNT_SEARCH_BANKACCOUNTNUMBER}    bankAccountNumber
${MYSQL_TYPE_BANKACCOUNT_SEARCH_STATUS}    status
${MYSQL_TYPE_BANKACCOUNT_SEARCH_BANKACCOUNTNAMEBANKACCOUNTNUMBER}    bankAccountNameAndNumber
${MYSQL_TYPE_BANKACCOUNT_SEARCH_BANKACCOUNTNAMESTATUS}    bankAccountNameAndStatus
${MYSQL_TYPE_BANKACCOUNT_SEARCH_BANKACCOUNTNUMBERSTATUS}    bankAccountNumberAndStatus

# SELECT * FROM bank_account WHERE bank_account_Name=req.bankAccountName AND bank_account_number = req.bankAccountNumber AND status = req.status AND account_id = req.accountId AND deleted_at IS null orderby req.orderBy limit req.limit offset req.offset
${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_LISTALL}    SELECT * FROM bank_account WHERE account_id = [accountId] AND deleted_at IS null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_SEAECHALL}    SELECT * FROM bank_account WHERE bank_account_Name="[bankAccountName]" AND bank_account_number = "[bankAccountNumber]" AND status = [status] AND account_id = [accountId] AND deleted_at IS null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_BANKACCOUNTNAME}    SELECT * FROM bank_account WHERE bank_account_Name="[bankAccountName]" AND account_id = [accountId] AND deleted_at IS null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_BANKACCOUNTNUMBER}    SELECT * FROM bank_account WHERE bank_account_number = "[bankAccountNumber]" AND account_id = [accountId] AND deleted_at IS null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_STATUS}    SELECT * FROM bank_account WHERE status = [status] AND account_id = [accountId] AND deleted_at IS null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_BANKACCOUNTNAMEBANKACCOUNTNUMBER}    SELECT * FROM bank_account WHERE bank_account_Name="[bankAccountName]" AND bank_account_number = "[bankAccountNumber]" AND account_id = [accountId] AND deleted_at IS null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_BANKACCOUNTNAMESTATUS}    SELECT * FROM bank_account WHERE bank_account_Name="[bankAccountName]" AND status = [status] AND account_id = [accountId] AND deleted_at IS null order by [orderBy] limit [limit] offset [offset] 
${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_BANKACCOUNTNUMBERSTATUS}    SELECT * FROM bank_account WHERE bank_account_number = "[bankAccountNumber]" AND status = [status] AND account_id = [accountId] AND deleted_at IS null order by [orderBy] limit [limit] offset [offset]

${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_LISTALL_ROWCOUNT}    SELECT * FROM bank_account WHERE account_id = [accountId] AND deleted_at IS null order by [orderBy]
${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_SEAECHALL_ROWCOUNT}    SELECT * FROM bank_account WHERE bank_account_Name="[bankAccountName]" AND bank_account_number = "[bankAccountNumber]" AND status = [status] AND account_id = [accountId] AND deleted_at IS null order by [orderBy]
${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_BANKACCOUNTNAME_ROWCOUNT}    SELECT * FROM bank_account WHERE bank_account_Name="[bankAccountName]" AND account_id = [accountId] AND deleted_at IS null order by [orderBy]
${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_BANKACCOUNTNUMBER_ROWCOUNT}    SELECT * FROM bank_account WHERE bank_account_number = "[bankAccountNumber]" AND account_id = [accountId] AND deleted_at IS null order by [orderBy]
${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_STATUS_ROWCOUNT}    SELECT * FROM bank_account WHERE status = [status] AND account_id = [accountId] AND deleted_at IS null order by [orderBy]
${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_BANKACCOUNTNAMEBANKACCOUNTNUMBER_ROWCOUNT}    SELECT * FROM bank_account WHERE bank_account_Name="[bankAccountName]" AND bank_account_number = "[bankAccountNumber]" AND account_id = [accountId] AND deleted_at IS null order by [orderBy]
${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_BANKACCOUNTNAMESTATUS_ROWCOUNT}    SELECT * FROM bank_account WHERE bank_account_Name="[bankAccountName]" AND status = [status] AND account_id = [accountId] AND deleted_at IS null order by [orderBy]
${DB_SELECTSTATEMENT_BANKACCOUNT_SEARCH_BANKACCOUNTNUMBERSTATUS_ROWCOUNT}    SELECT * FROM bank_account WHERE bank_account_number = "[bankAccountNumber]" AND status = [status] AND account_id = [accountId] AND deleted_at IS null order by [orderBy]

${DB_SELECTSTATEMENT_BANKACCOUNT_CHECKCREATE}    SELECT * FROM bank_account WHERE account_id = [accountId] AND deleted_at IS NULL
${DB_SELECTSTATEMENT_BANKACCOUNT_CHECKCREATE_ALLFIELD_VALUE}    (([id], [bankId], [bankAccountNameTypeId], '[branch]', '[bankAccountNumber]', '[bankAccountName]', datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [account_id], [status], [operate_type], '[remark]'),)
${DB_SELECTSTATEMENT_BANKACCOUNT_CHECKCREATE_REQUIREDFIELD_VALUE}    (([id], [bankId], [bankAccountNameTypeId], None, '[bankAccountNumber]', '[bankAccountName]', datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [account_id], [status], [operate_type], None),)
${DB_SELECTSTATEMENT_BANKACCOUNT_CHECKEDIT}    SELECT * FROM bank_account WHERE account_id = [accountId] AND id = [bankAccountId] AND deleted_at IS NULL
${DB_SELECTSTATEMENT_BANKACCOUNT_CHECKEDIT_ALLFIELD_VALUE}    (([id], [bankId], [bankAccountNameTypeId], '[branch]', '[bankAccountNumber]', '[bankAccountName]', datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', [deleted_at], [deleted_by], [account_id], [status], [operate_type], '[remark]'),)
${DB_SELECTSTATEMENT_BANKACCOUNT_CHECKEDIT_REQUIREDFIELD_VALUE}    (([id], [bankId], [bankAccountNameTypeId], None, '[bankAccountNumber]', '[bankAccountName]', datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', [deleted_at], [deleted_by], [account_id], [status], [operate_type], None),)
${DB_SELECTSTATEMENT_BANKACCOUNT_CHECKVIEW}    SELECT a.* , b.* FROM bank_account AS a LEFT JOIN bank_account_permission AS b ON(b.bank_account_id = [bankAccountId] AND b.deleted_at IS NULL) WHERE a.id = [bankAccountId] AND a.account_id = [accountId] AND a.deleted_at IS null ORDER BY b.property_id ASC
${DB_SELECTSTATEMENT_BANKACCOUNT_CHECKVIEW_ALLFIELD_VALUE}    ([id], [bankId], [bankAccountNameTypeId], '[branch]', '[bankAccountNumber]', '[bankAccountName]', datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [account_id], [status], [operate_type], '[remark]', [bank_account_permission_id], [account_id], [id], [property_id], [building_id], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by])
# ${DB_SELECTSTATEMENT_BANKACCOUNT_CHECKVIEW_ALLFIELD_VALUE}    (([id], [bankId], [bankAccountNameTypeId], '[branch]', '[bankAccountNumber]', '[bankAccountName]', datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [account_id], [status], [operate_type], '[remark]', [bank_account_permission_id], [account_id], [id], [property_id], [building_id], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by]),)
${DB_SELECTSTATEMENT_BANKACCOUNT_CHECKDELETE}    SELECT * FROM bank_account WHERE account_id = [accountId] AND id = [bankAccountId]
${DB_SELECTSTATEMENT_BANKACCOUNT_CHECKDELETE_ALLFIELD_VALUE}    (([id], [bankId], [bankAccountNameTypeId], '[branch]', '[bankAccountNumber]', '[bankAccountName]', datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', datetime.datetime([deleted_at]), '[deleted_by]', [account_id], [status], [operate_type], '[remark]'),)
${DB_SELECTSTATEMENT_BANKACCOUNT_CHECKDELETE_REQUIREDFIELD_VALUE}    (([id], [bankId], [bankAccountNameTypeId], None, '[bankAccountNumber]', '[bankAccountName]', datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', datetime.datetime([deleted_at]), '[deleted_by]', [account_id], [status], [operate_type], None),)

#----------------------------------------------- selectStatement User Account -----------------------------------------------#
####################### Table Asset Management#######################
${DB_TB_USERACCOUNT_ORDERBY_CREATEAT_AND_UPDATEAT_DESC}    u.created_at desc, u.updated_by desc
${MYSQL_TYPE_CHECKUSERACCOUNT_SEARCH_ALL}    SearchAll
${MYSQL_TYPE_CHECKUSERACCOUNT_SEARCH_ALL_NO_LIMIT}    SearchAllNoLIMIT

${MYSQL_TYPE_USERACCOUNT_SEARCH_FIRSTNAME}    first_name
${MYSQL_TYPE_USERACCOUNT_SEARCH_FIRSTNAME_NOTFOUND}    first_name_notfound
${MYSQL_TYPE_USERACCOUNT_SEARCH_LASTNAME}    last_name
${MYSQL_TYPE_USERACCOUNT_SEARCH_EMAIL}    email
${MYSQL_TYPE_USERACCOUNT_SEARCH_ROLENAME_EN}    role_nameEN
${MYSQL_TYPE_USERACCOUNT_SEARCH_ROLENAME_TH}    role_nameTH
${MYSQL_TYPE_USERACCOUNT_SEARCH_PROPERTIES_EN}    propertyEN
${MYSQL_TYPE_USERACCOUNT_SEARCH_PROPERTIES_TH}    propertyTH

${DB_CHECKUSERACCOUNT_SEARCH_LISTALL_NO_LIMIT}    SELECT u.*, r.role_name, r.id as role_id, t.name_th as title_name_th, t.name_en as title_name_en, ur.account_id,ur.id as user_role_id,urp.properties_id FROM users u LEFT JOIN user_role ur ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id  LEFT JOIN title t ON t.id = u.title_id LEFT JOIN user_role_properties urp ON ur.id = urp.user_role_id WHERE ur.account_id = [accountId] and u.deleted_at IS NULL and ur.role_type != 2 and properties_id IN ([properties_permission]) order by [orderBy]
${DB_CHECKUSERACCOUNT_SEARCH_LISTALL}    SELECT u.*, r.role_name, r.id as role_id, t.name_th as title_name_th, t.name_en as title_name_en, ur.account_id,ur.id as user_role_id,urp.properties_id FROM users u LEFT JOIN user_role ur ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id  LEFT JOIN title t ON t.id = u.title_id LEFT JOIN user_role_properties urp ON ur.id = urp.user_role_id WHERE ur.account_id = [accountId] and u.deleted_at IS NULL and ur.role_type != 2 and properties_id IN ([properties_permission]) order by [orderBy] limit [limit] offset [offset]
${DB_CHECKUSERACCOUNT_SEARCH_LISTALL_ROWCOUNT}    SELECT * FROM users u LEFT JOIN user_role ur ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id  LEFT JOIN title t ON t.id = u.title_id LEFT JOIN user_role_properties urp ON ur.id = urp.user_role_id WHERE ur.account_id = [accountId] and u.deleted_at IS NULL and ur.role_type != 2 and properties_id IN ([properties_permission]) order by [orderBy]
${DB_CHECKUSERACCOUNT_SEARCH_LISTALL_ROWCOUNT1}    SELECT COUNT(*) FROM users u LEFT JOIN user_role ur ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id  LEFT JOIN title t ON t.id = u.title_id LEFT JOIN user_role_properties urp ON ur.id = urp.user_role_id WHERE ur.account_id = [accountId] and u.deleted_at IS NULL and ur.role_type != 2 and properties_id IN ([properties_permission])
${DB_SELECTSTATEMENT_CHECKCREATE_CHECKUSERACCOUNT_SEARCHFIRSTNAME}    SELECT u.*, r.role_name, r.id as role_id, t.name_th as title_name_th, t.name_en as title_name_en, ur.account_id,ur.id as user_role_id,urp.properties_id FROM users u LEFT JOIN user_role ur ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id  LEFT JOIN title t ON t.id = u.title_id LEFT JOIN user_role_properties urp ON ur.id = urp.user_role_id WHERE ur.account_id = 7 and u.deleted_at IS NULL and ur.role_type != 2 and properties_id IN ([properties_permission]) and u.first_name = "[first_name]" order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_CHECKCREATE_CHECKUSERACCOUNT_SEARCHFIRSTNAME_ROWCOUNT}    SELECT * FROM users u LEFT JOIN user_role ur ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id  LEFT JOIN title t ON t.id = u.title_id LEFT JOIN user_role_properties urp ON ur.id = urp.user_role_id WHERE ur.account_id = 7 and u.deleted_at IS NULL and ur.role_type != 2 and properties_id IN ([properties_permission]) and u.first_name = "[first_name]" order by [orderBy]
${DB_SELECTSTATEMENT_CHECKCREATE_CHECKUSERACCOUNT_SEARCHLASTNAME}    SELECT u.*, r.role_name, r.id as role_id, t.name_th as title_name_th, t.name_en as title_name_en, ur.account_id,ur.id as user_role_id,urp.properties_id FROM users u LEFT JOIN user_role ur ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id  LEFT JOIN title t ON t.id = u.title_id LEFT JOIN user_role_properties urp ON ur.id = urp.user_role_id WHERE ur.account_id = 7 and u.deleted_at IS NULL and ur.role_type != 2 and properties_id IN ([properties_permission]) and u.last_name = "[last_name]" order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_CHECKCREATE_CHECKUSERACCOUNT_SEARCHLASTNAME_ROWCOUNT}    SELECT * FROM users u LEFT JOIN user_role ur ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id  LEFT JOIN title t ON t.id = u.title_id LEFT JOIN user_role_properties urp ON ur.id = urp.user_role_id WHERE ur.account_id = 7 and u.deleted_at IS NULL and ur.role_type != 2 and properties_id IN ([properties_permission]) and u.last_name = "[last_name]" order by [orderBy]
${DB_SELECTSTATEMENT_CHECKCREATE_CHECKUSERACCOUNT_SEARCHEMAIL}    SELECT u.*, r.role_name, r.id as role_id, t.name_th as title_name_th, t.name_en as title_name_en, ur.account_id,ur.id as user_role_id,urp.properties_id FROM users u LEFT JOIN user_role ur ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id  LEFT JOIN title t ON t.id = u.title_id LEFT JOIN user_role_properties urp ON ur.id = urp.user_role_id WHERE ur.account_id = 7 and u.deleted_at IS NULL and ur.role_type != 2 and properties_id IN ([properties_permission]) and u.email = "[email]" order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_CHECKCREATE_CHECKUSERACCOUNT_SEARCHEMAIL_ROWCOUNT}    SELECT * FROM users u LEFT JOIN user_role ur ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id  LEFT JOIN title t ON t.id = u.title_id LEFT JOIN user_role_properties urp ON ur.id = urp.user_role_id WHERE ur.account_id = 7 and u.deleted_at IS NULL and ur.role_type != 2 and properties_id IN ([properties_permission]) and u.email = "[email]" order by [orderBy]
${DB_SELECTSTATEMENT_CHECKCREATE_CHECKUSERACCOUNT_SEARCHROLENAME}    SELECT u.*, r.role_name, r.id as role_id, t.name_th as title_name_th, t.name_en as title_name_en, ur.account_id,ur.id as user_role_id,urp.properties_id FROM users u LEFT JOIN user_role ur ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id  LEFT JOIN title t ON t.id = u.title_id LEFT JOIN user_role_properties urp ON ur.id = urp.user_role_id WHERE ur.account_id = 7 and u.deleted_at IS NULL and ur.role_type != 2 and properties_id IN ([properties_permission]) and r.role_name = "[role_name]" order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_CHECKCREATE_CHECKUSERACCOUNT_SEARCHROLENAME_ROWCOUNT}    SELECT * FROM users u LEFT JOIN user_role ur ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id  LEFT JOIN title t ON t.id = u.title_id LEFT JOIN user_role_properties urp ON ur.id = urp.user_role_id WHERE ur.account_id = 7 and u.deleted_at IS NULL and ur.role_type != 2 and properties_id IN ([properties_permission]) and r.role_name = "[role_name]" order by [orderBy]
${DB_SELECTSTATEMENT_CHECKCREATE_CHECKUSERACCOUNT_SEARCHPROPERTIES}    SELECT u.*, r.role_name, r.id as role_id, t.name_th as title_name_th, t.name_en as title_name_en, ur.account_id,ur.id as user_role_id,urp.properties_id FROM users u LEFT JOIN user_role ur ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id  LEFT JOIN title t ON t.id = u.title_id LEFT JOIN user_role_properties urp ON ur.id = urp.user_role_id LEFT JOIN properties p ON urp.properties_id = p.id WHERE ur.account_id = 7 and u.deleted_at IS NULL and ur.role_type != 2 and (p.property_name_en = "[property_name]" or p.property_name_th = "[property_name]") order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_CHECKCREATE_CHECKUSERACCOUNT_SEARCHPROPERTIES_ROWCOUNT}    SELECT * FROM users u LEFT JOIN user_role ur ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id  LEFT JOIN title t ON t.id = u.title_id LEFT JOIN user_role_properties urp ON ur.id = urp.user_role_id LEFT JOIN properties p ON urp.properties_id = p.id WHERE ur.account_id = 7 and u.deleted_at IS NULL and ur.role_type != 2 and (p.property_name_en = "[property_name]" or p.property_name_th = "[property_name]") order by [orderBy]
${DB_SELECTSTATEMENT_CHECKCREATE_CHECKUSERACCOUNT_SEARCHFIRSTNAME_NOTFOUND}    SELECT u.*, r.role_name, r.id as role_id, t.name_th as title_name_th, t.name_en as title_name_en, ur.account_id,ur.id as user_role_id,urp.properties_id FROM users u LEFT JOIN user_role ur ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id  LEFT JOIN title t ON t.id = u.title_id LEFT JOIN user_role_properties urp ON ur.id = urp.user_role_id WHERE ur.account_id = 7 and u.deleted_at IS NULL and ur.role_type != 2 and properties_id IN ([properties_permission]) and u.first_name = "[first_name_notfound]" order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_CHECKCREATE_CHECKUSERACCOUNT_SEARCHFIRSTNAME_NOTFOUND_ROWCOUNT}    SELECT * FROM users u LEFT JOIN user_role ur ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id  LEFT JOIN title t ON t.id = u.title_id LEFT JOIN user_role_properties urp ON ur.id = urp.user_role_id WHERE ur.account_id = 7 and u.deleted_at IS NULL and ur.role_type != 2 and properties_id IN ([properties_permission]) and u.first_name = "[first_name_notfound]" order by [orderBy]

${DB_UPDATEUSERACCOUNT_USERS_DELETEDATA}    UPDATE users SET deleted_at = [deleted_at] WHERE first_name = "[first_name]"
${DB_CHECKAFTERDELETEACCOUNT_USERS_SEARCHFIRSTNAME}    SELECT u.*, r.role_name, r.id as role_id, t.name_th as title_name_th, t.name_en as title_name_en, ur.account_id,ur.id as user_role_id,urp.properties_id FROM users u LEFT JOIN user_role ur ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id  LEFT JOIN title t ON t.id = u.title_id LEFT JOIN user_role_properties urp ON ur.id = urp.user_role_id WHERE ur.account_id = 7 and u.deleted_at IS NULL and ur.role_type != 2 and properties_id IN ([properties_permission]) and u.first_name = "[first_name]" 
${DB_CHECKAFTERDELETEACCOUNT_USERS_SEARCHFIRSTNAME_ROWCOUNT}    SELECT * FROM users u LEFT JOIN user_role ur ON u.id = ur.user_id LEFT JOIN role r ON ur.role_type = r.id  LEFT JOIN title t ON t.id = u.title_id LEFT JOIN user_role_properties urp ON ur.id = urp.user_role_id WHERE ur.account_id = 7 and u.deleted_at IS NULL and ur.role_type != 2 and properties_id IN ([properties_permission]) and u.first_name = "[first_name]"

#----------------------------------------------- selectStatement Role Management -----------------------------------------------#
####################### selectStatement Role Management  #######################
####################### Table Role Management#######################
${DB_TB_ROLEMANAGEMENT_FIELD_ROLENAME}    role_name
${MYSQL_TYPE_ROLEMANAGEMENT_SEARCH_ALL}    SearchAll
${MYSQL_TYPE_ROLEMANAGEMENT_SEARCH_ROLENAME}    RoleName

# ${DB_SELECTSTATEMENT_ROLEMANAGEMENT_SEARCH_LISTALL}    SELECT * FROM role WHERE account_id = [accountId] order by [orderBy] limit [limit] offset [offset] 
${DB_SELECTSTATEMENT_ROLEMANAGEMENT_SEARCH_LISTALL}    SELECT * FROM role WHERE role_name != 'Admin' AND account_id = [accountId] order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_ROLEMANAGEMENT_SEARCH_ROLENAME}    SELECT * FROM role WHERE role_name = '[roleName]' AND account_id = [accountId] order by [orderBy] limit [limit] offset [offset]

${DB_SELECTSTATEMENT_ROLEMANAGEMENT_SEARCH_LISTALL_ROWCOUNT}    SELECT * FROM role WHERE role_name != 'Admin' AND account_id = [accountId] order by [orderBy]  
${DB_SELECTSTATEMENT_ROLEMANAGEMENT_SEARCH_ROLENAME_ROWCOUNT}    SELECT * FROM role WHERE role_name = '[roleName]' AND account_id = [accountId] order by [orderBy]
                                                  
${DB_SELECTSTATEMENT_CHECKCREATE_ROLEMANAGEMENT}    SELECT * FROM role WHERE account_id = [accountId] AND role_name = '[role_name]'
${DB_SELECTSTATEMENT_CHECKCREATE_ALLFIELD_ROLEMANAGEMENT_VALUE}    (([id], [account_id], '[role_name]'),)
${DB_SELECTSTATEMENT_CHECKCREATE_REQUIREFIELD_ROLEMANAGEMENT_VALUE}    ((203, 7, 'TestUser'),)
${DB_SELECTSTATEMENT_CHECKEDIT_ROLEMANAGEMENT}    SELECT r.* ,rm.action FROM `role` as r LEFT JOIN role_menu as rm ON r.account_id = rm.account_id WHERE rm.role_id = [role_id] AND role_name = '[role_name]'
${DB_SELECTSTATEMENT_CHECKEDIT_ALLFIELD_ROLEMANAGEMENT_VALUE}    (([id], [account_id], '[role_name]', '[action]'), ([id2], [account_id2], '[role_name2]', '[action2]'))
${DB_SELECTSTATEMENT_CHECKVIEW_ROLEMANAGEMENT}    SELECT r.* ,rm.action FROM `role` as r LEFT JOIN role_menu as rm ON r.account_id = rm.account_id WHERE rm.role_id = [role_id] AND role_name = '[role_name]'
${DB_SELECTSTATEMENT_CHECKVIEW_ALLFIELD_ROLEMANAGEMENT_VALUE}    (([id], [account_id], '[role_name]', '[action]'),)
${DB_SELECTSTATEMENT_CHECKDELETE_ROLEMANAGEMENT}    SELECT * FROM role WHERE role_name = '[role_name]' AND account_id = [accountId]

#----------------------------------------------- selectStatement Check Asset Management -----------------------------------------------#
####################### selectStatement Check Asset Management  #######################
####################### Table Asset Management #######################
${DB_TB_CHECKASSETMANAGEMENT_FIELD_STATUS}    status

${MYSQL_TYPE_CHECKASSETMANAGEMENT_SEARCH_ALL}    SearchAll
${MYSQL_TYPE_USERACCOUNT_SEARCH_FIRSTNAME}    first_name
${MYSQL_TYPE_USERACCOUNT_SEARCH_LASTNAME}    last_name
${MYSQL_TYPE_USERACCOUNT_SEARCH_EMAIL}    email
${MYSQL_TYPE_USERACCOUNT_SEARCH_ROLENAME_EN}    role_nameEN
${MYSQL_TYPE_USERACCOUNT_SEARCH_ROLENAME_TH}    role_nameTH
${MYSQL_TYPE_USERACCOUNT_SEARCH_PROPERTIES_EN}    propertyEN
${MYSQL_TYPE_USERACCOUNT_SEARCH_PROPERTIES_TH}    propertyTH

${DB_SELECTSTATEMENT_CHECKASSETMANAGEMENT_SEARCH_LISTALL}    SELECT * FROM check_asset WHERE account_id = [accountId] AND deleted_at IS null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_CHECKASSETMANAGEMENT_SEARCH_STATUS}    SELECT * FROM check_asset WHERE status = [status] AND account_id = [accountId] AND deleted_at IS null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_CHECKASSETMANAGEMENT_SEARCH_STATUSANDASSETNAME}    SELECT * FROM check_asset WHERE name_th = '[assetname]' AND status = [status] AND account_id = [accountId] AND deleted_at IS null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_CHECKASSETMANAGEMENT_SEARCH_STATUSANDASSETNAME_EN}    SELECT * FROM check_asset WHERE name_en = '[assetname]' AND status = [status] AND account_id = [accountId] AND deleted_at IS null order by [orderBy] limit [limit] offset [offset]

${DB_SELECTSTATEMENT_CHECKASSETMANAGEMENT_SEARCH_LISTALL_ROWCOUNT}    SELECT * FROM check_asset WHERE account_id = [accountId] AND deleted_at IS null order by [orderBy]
${DB_SELECTSTATEMENT_CHECKASSETMANAGEMENT_SEARCH_STATUS_ROWCOUNT}    SELECT * FROM check_asset WHERE status = [status] AND account_id = [accountId] AND deleted_at IS null order by [orderBy]
${DB_SELECTSTATEMENT_CHECKASSETMANAGEMENT_SEARCH_STATUSANDASSETNAME_ROWCOUNT}    SELECT * FROM check_asset WHERE name_th = '[assetname]' AND status = [status] AND account_id = [accountId] AND deleted_at IS null order by [orderBy]
${DB_SELECTSTATEMENT_CHECKASSETMANAGEMENT_SEARCH_STATUSANDASSETNAME_ROWCOUNT_EN}    SELECT * FROM check_asset WHERE name_en = '[assetname]' AND status = [status] AND account_id = [accountId] AND deleted_at IS null order by [orderBy]

${DB_SELECTSTATEMENT_CHECKCREATE_CHECKASSETMANAGEMENT}    SELECT * FROM check_asset WHERE account_id = [accountId] AND deleted_at IS NULL
${DB_SELECTSTATEMENT_CHECKCREATE_ALLFIELD_CHECKASSETMANAGEMENT_VALUE}    (([id], [account_id], '[name_th]', '[name_en]', '[remark]', [status], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by]),)
${DB_SELECTSTATEMENT_CHECKCREATE_REQUIREFIELD_CHECKASSETMANAGEMENT_VALUE}    (([id], [account_id], '[name_th]', [name_en], [remark], [status], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by]),)
${DB_SELECTSTATEMENT_CHECKEDIT_CHECKASSETMANAGEMENT}    SELECT * FROM check_asset WHERE account_id = [accountId] AND id = [idAssetManagement] AND deleted_at IS NULL
${DB_SELECTSTATEMENT_CHECKEDIT_ALLFIELD_CHECKASSETMANAGEMENT_VALUE}    (([id], [account_id], '[name_th]', '[name_en]', '[remark]', [status], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', [deleted_at], [deleted_by]),)
${DB_UPDATESTATEMENT_CHECKASSET_DELETEDAT}    UPDATE check_asset SET deleted_at = [deleted_at] WHERE id = [AssetManagementId]

#----------------------------------------------- selectStatement Employee Management -----------------------------------------------#
${DB_SELECTSTATEMENT_SEARCHEMPLOYEEMANAGEMENT_LISTALL}    SELECT * FROM employee WHERE account_id = [accountId] AND deleted_at IS null limit [limit] offset [offset]
${DB_SELECTSTATEMENT_SEARCHEMPLOYEEMANAGEMENT_LISTALL_ROWCOUNT}    SELECT * FROM employee WHERE account_id = [accountId] AND deleted_at IS null

${DB_SELECTSTATEMENT_CHECKCREATE_EMPLOYEEMANAGEMENT}    SELECT * FROM employee WHERE account_id = [accountId] AND deleted_at IS NULL
${DB_SELECTSTATEMENT_CHECKCREATE_ALLFIELD_EMPLOYEEMANAGEMENT_VALUE}    (([id], [titel_id], '[firstname]', '[lastname]', [employeetype], '[phone_number]', datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [account_id]),)
${DB_SELECTSTATEMENT_CHECKCREATE_REQUIREFIELD_EMPLOYEEMANAGEMENT_VALUE}    (([id], None, '[firstname]', '[lastname]', [employeetype], '[phone_number]', datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [account_id]),)
${DB_SELECTSTATEMENT_CHECKEDIT_EMPLOYEEMANAGEMENT}    SELECT * FROM employee WHERE account_id = [accountId] AND id = [idEmployeeManagement] AND deleted_at IS NULL
${DB_SELECTSTATEMENT_CHECKEDIT_ALLFIELD_EMPLOYEEMANAGEMENT_VALUE}    (([id], [titel_id], '[firstname]', '[lastname]', [employeetype], '[phone_number]', datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', [deleted_at], [deleted_by], [account_id]),)                                                                  
${DB_SELECTSTATEMENT_CHECKEDIT_REQUIREFIELD_EMPLOYEEMANAGEMENT_VALUE}    (([id], None, '[firstname]', '[lastname]', [employeetype], '[phone_number]', datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [account_id]),)
${DB_SELECTSTATEMENT_CHECKVIEW_EMPLOYEEMANAGEMENT}    SELECT e.id as employeeId , e.title_id , e.first_name , e.last_name , t.id as titleId ,e.employee_type , e.phone_number , t.name_th as titleTh , t.name_en as titleEn , ep.* FROM employee as e LEFT JOIN title as t ON (e.title_id = t.id) JOIN employee_property as ep ON (ep.employee_id = e.id) JOIN properties as p ON (ep.property_id = p.id) JOIN buildings as b ON (ep.building_id = b.id) WHERE e.deleted_at IS NULL AND e.account_id = [accountid] AND ep.employee_id = [employeeid]
${DB_SELECTSTATEMENT_CHECKVIEW_ALLFIELD_EMPLOYEEMANAGEMENT_VALUE}    (([employeeId], [titel_id], '[first_name]', '[last_name]', [titel_id], [employee_type], '[phone_number]', '[titleTh]', '[titleEn]', [id], [employee_id], [property_id], [building_id], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [account_id]),)                                                                  
${DB_SELECTSTATEMENT_CHECKDELETE_EMPLOYEEMANAGEMENT}    SELECT e.id as employeeId , e.title_id , e.first_name , e.last_name ,e.employee_type , e.phone_number , ep.* FROM employee as e LEFT JOIN employee_property as ep ON (ep.employee_id = e.id) WHERE e.account_id = [accountid] AND ep.employee_id = [employeeid]
${DB_SELECTSTATEMENT_CHECKDELETE_EMPLOYEEMANAGEMENT_ALLFIELD_VALUE}    (([employeeId], [titel_id], '[first_name]', '[last_name]', [employee_type], '[phone_number]', [id], [employee_id], [property_id], [building_id], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', datetime.datetime([deleted_at]), '[deleted_by]', [account_id]),)
# ${DB_SELECTSTATEMENT_CHECKDELETE_EMPLOYEEMANAGEMENT_REQUIREDFIELD_VALUE}    (([id], [bankId], [bankAccountNameTypeId], None, '[bankAccountNumber]', '[bankAccountName]', datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', datetime.datetime([deleted_at]), '[deleted_by]', [account_id], [status], [operate_type], None),)

#-------------------------------------- Table Repair Equipment Management --------------------------------------------------#
${DB_TB_REPAIREQUIPMENT}    repair_equipment
${DB_TB_REPAIREQUIPMENT_FIELD_EQUIPMENTNAMETH}    equipment_name_th
${DB_TB_REPAIREQUIPMENT_FIELD_EQUIPMENTNAMEEN}    equipment_name_en
${DB_TB_REPAIREQUIPMENT_FIELD_STATUS}    status
${DB_TB_REPAIREQUIPMENT_FIELD_ACCOUNTID}    account_id
${DB_TB_REPAIREQUIPMENT_FIELD_DELETEDAT}    deleted_at

####################### selectStatement repair equipment #######################
# type
${MYSQL_TYPE_REPAIREQUIPMENT_SEARCH_ALL}    SearchAll
${MYSQL_TYPE_REPAIREQUIPMENT_SEARCH_DEVICENAME}    repairEquimentName
${MYSQL_TYPE_REPAIREQUIPMENT_SEARCH_STATUS}    status

# SELECT * FROM repair_equipment WHERE (equipment_name_th LIKE '%req.repairEquimentName%' OR equipment_name_en LIKE '%req.repairEquimentName%') AND status = req.status AND account_id = req.accountId AND deleted_at IS null orderby req.orderBy limit req.limit offset req.offset
#Search Repair Equipment
${DB_SELECTSTATEMENT_REPAIREQUIPMENT_SEARCH_LISTALL}    SELECT * FROM repair_equipment WHERE account_id = [accountId] AND deleted_at IS null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_REPAIREQUIPMENT_SEARCH_SEAECHALL}    SELECT * FROM repair_equipment WHERE (equipment_name_th LIKE '%[repairEquimentName]%' OR equipment_name_en LIKE '%[repairEquimentName]%') AND status = [status] AND account_id = [accountId] AND deleted_at IS null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_REPAIREQUIPMENT_SEARCH_DEVICENAME}    SELECT * FROM repair_equipment WHERE (equipment_name_th LIKE '%[repairEquimentName]%' OR equipment_name_en LIKE '%[repairEquimentName]%') AND account_id = [accountId] AND deleted_at IS null order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_REPAIREQUIPMENT_SEARCH_STATUS}    SELECT * FROM repair_equipment WHERE status = [status] AND account_id = [accountId] AND deleted_at IS null order by [orderBy] limit [limit] offset [offset]

${DB_SELECTSTATEMENT_REPAIREQUIPMENT_SEARCH_LISTALL_ROWCOUNT}    SELECT * FROM repair_equipment WHERE account_id = [accountId] AND deleted_at IS null order by [orderBy]
${DB_SELECTSTATEMENT_REPAIREQUIPMENT_SEARCH_SEAECHALL_ROWCOUNT}    SELECT * FROM repair_equipment WHERE (equipment_name_th LIKE '%[repairEquimentName]%' OR equipment_name_en LIKE '%[repairEquimentName]%') AND status = [status] AND account_id = [accountId] AND deleted_at IS null order by [orderBy]
${DB_SELECTSTATEMENT_REPAIREQUIPMENT_SEARCH_DEVICENAME_ROWCOUNT}    SELECT * FROM repair_equipment WHERE (equipment_name_th LIKE '%[repairEquimentName]%' OR equipment_name_en LIKE '%[repairEquimentName]%') AND account_id = [accountId] AND deleted_at IS null order by [orderBy]
${DB_SELECTSTATEMENT_REPAIREQUIPMENT_SEARCH_STATUS_ROWCOUNT}    SELECT * FROM repair_equipment WHERE status = [status] AND account_id = [accountId] AND deleted_at IS null order by [orderBy]

#Check data Repair Equipment
${DB_SELECTSTATEMENT_REPAIREQUIPMENT_CHECKCREATE}    SELECT * FROM repair_equipment WHERE account_id = [accountId] AND deleted_at IS NULL
${DB_SELECTSTATEMENT_REPAIREQUIPMENT_CHECKCREATE_ALLFIELD_VALUE}    (([id], '[equipment_name_th]', '[equipment_name_en]', '[equipment_note]', [status], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [account_id]),)
${DB_SELECTSTATEMENT_REPAIREQUIPMENT_CHECKCREATE_REQUIREDFIELD_VALUE}    (([id], '[equipment_name_th]', None, None, [status], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [account_id]),)

${DB_SELECTSTATEMENT_REPAIREQUIPMENT_CHECKEDIT}    SELECT * FROM repair_equipment WHERE account_id = [accountId] AND id = [repairEquipmentId] AND deleted_at IS NULL
${DB_SELECTSTATEMENT_REPAIREQUIPMENT_CHECKEDIT_ALLFIELD_VALUE}    (([id], '[equipment_name_th]', '[equipment_name_en]', '[equipment_note]', [status], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', [deleted_at], [deleted_by], [account_id]),)
${DB_SELECTSTATEMENT_REPAIREQUIPMENT_CHECKEDIT_REQUIREDFIELD_VALUE}    (([id], '[equipment_name_th]', None, None, [status], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', [deleted_at], [deleted_by], [account_id]),)

${DB_SELECTSTATEMENT_REPAIREQUIPMENT_CHECKDELETE}    SELECT * FROM repair_equipment WHERE account_id = [accountId] AND id = [repairEquipmentId]
${DB_SELECTSTATEMENT_REPAIREQUIPMENT_CHECKDELETE_ALLFIELD_VALUE}    (([id], '[equipment_name_th]', '[equipment_name_en]', '[equipment_note]', [status], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', datetime.datetime([deleted_at]), '[deleted_by]', [account_id]),)
${DB_SELECTSTATEMENT_REPAIREQUIPMENT_CHECKDELETE_REQUIREDFIELD_VALUE}    (([id], '[equipment_name_th]', None, None, [status], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', datetime.datetime([deleted_at]), '[deleted_by]', [account_id]),)
###################################################################################################################################################################

############################################################################## CHECK ROOM MANAGEMENT #####################################################################################
# Search data For Get Count All Room
${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_GETCOUNTROOMLISTALL}    SELECT COUNT(id) FROM rooms WHERE account_id = [account_id] and property_id = [property_id] and building_id = [building_id] and deleted_at IS null and deleted_by IS null order by floor,room_no asc ;

#Search data For Get Count Empty Room
${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_GETCOUNTEMPTYROOM}    SELECT COUNT(id) FROM rooms WHERE account_id = [account_id] and status = 1 and deleted_at IS null and deleted_by IS null

#Search data For Get Count Tranfer Room
${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_GETCOUNTTRANFERROOM}    SELECT COUNT(id) FROM rooms WHERE account_id = [account_id] and status = 2 and deleted_at IS null and deleted_by IS null

#Search data For Get Count All
# ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_GETLISTROOMDETAILS}    SELECT COUNT(id) FROM rooms where account_id = 7 and property_id = 8 and building_id = 19 and deleted_at IS null and deleted_by IS null order by floor,room_no asc ;

# ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_GETLISTROOMDETAILS}    SELECT *FROM rooms WHERE account_id = [account_id] property_id = [property_id] and building_id = [building_id] and status = [status] and deleted_at IS null and deleted_by IS null order by floor,room_no asc; 


# ${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_LISTROOMDETAILS_EMPTYROOM}    SELECT *FROM rooms WHERE account_id = [account_id] property_id = [property_id] and building_id = [building_id] and status = [status] and account_id = [account_id] and deleted_at IS null and deleted_by IS null order by floor,room_no asc; 

#type for serach
${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_SEARCHALL}    SearchAll
${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_STATUS}    status
${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_DETAILROOM}    DetailRoom
${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_INCOMEDETAIL}    IncomeDetail
${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_INCOMEDETAILADMIN}    IncomeDetailAdmin
${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_SEARCHROOMLIST_SCUSER}    SearchRoomListScUser


#Ordey by
${DB_TB_CHECKROOMMANAGEMENT_ORDERBY_FLOOR_AND_ROOMNO_ASC}    floor,room_no asc

${DB_TB_CHECKROOMMANAGEMENT_FIELD_STATUS}    status
${DB_TB_CHECKROOMMANAGEMENT_FIELD_FLOOR}    floor
${DB_TB_CHECKROOMMANAGEMENT_FIELD_ROOMNO}    room_no

#Search Room All
${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_ROOMLISTALL}    SELECT * FROM rooms WHERE account_id = [account_id] and property_id = [property_id] and building_id = [building_id] and deleted_at IS null and deleted_by IS null order by [orderBy] 
#Search Room Tranfered
${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_ROOMLISTTRANFER_STATUS2}    SELECT *FROM rooms WHERE account_id = [account_id] and status = 2 and deleted_at IS null and deleted_by IS null order by [orderBy]
#Search Room Detail
${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_ROOMDETAIL}    SELECT * FROM rooms WHERE id = 7983

#Search Get Income Detail
${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_INCOMEDETAIL}    SELECT rc.* , ic.name_th , ic.name_en , ic.incomecode , ic.group_type_id , ic.id as incomecodeId FROM income_code as ic JOIN room_income as rc ON (rc.income_code_id = ic.id) WHERE rc.room_id = 7985 AND rc.deleted_by IS NULL AND rc.deleted_at IS NULL order by rc.created_at desc ;

#Search Get Income Detail Admin
${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_INCOMEDETAILADMIN}    SELECT rc.* , ic.name_th , ic.name_en , ic.incomecode , ic.group_type_id , ic.id as incomecodeId FROM income_code as ic JOIN room_income as rc ON (rc.income_code_id = ic.id) WHERE rc.room_id = [room_id] AND rc.deleted_by IS NULL AND rc.deleted_at IS NULL order by rc.created_at desc ;
                                            

#Search Room Sc User
${DB_SELECTSTATEMENT_ROOMMANAGEMENT_SEARCH_ROOMLISTSCUSER}    select *from rooms where account_id = [account_id] and property_id = [property_id] and building_id = [building_id] and deleted_at IS null and deleted_by IS null order by [orderBy]

#Create Room Sc User
${DB_SELECTSTATEMENT_ROOMMANAGEMENT_CHECKCREATE}    SELECT *FROM rooms WHERE account_id = [account_id] and room_no = '[room_no]' and property_id = [property_id] and building_id = [building_id] and deleted_at IS null and deleted_by IS null order by [orderBy]
${DB_SELECTSTATEMENT_ROOMMANAGEMENT_CHECKCREATE_ALLFIELD_VALUE}    (([id], [account_Id], [property_id], [building_id], [floor], '[room_no]', '[house_no]', None, [status], Decimal('[area]'), None, '[water_meter_no]', '[eletric_meter_no]', Decimal('[water_meter_limit_unit]'), Decimal('[electric_meter_limit_unit]'), datetime.datetime([created_at]), '[created_by]', None, None, None, None),)
${DB_SELECTSTATEMENT_ROOMMANAGEMENT_CHECKCREATE_REQUIREDFIELD_VALUE}    (([id], [account_Id], [property_id], [building_id], [floor], '[room_no]', None, None, [status], None, None, '[water_meter_no]', '[eletric_meter_no]', Decimal('[water_meter_limit_unit]'), Decimal('[electric_meter_limit_unit]'), datetime.datetime([created_at]), '[created_by]', None, None, None, None),)

#Edit Room Sc User
${DB_SELECTSTATEMENT_ROOMMANAGEMENT_CHECKEDIT}    SELECT * FROM rooms WHERE id = [id] AND deleted_at IS NULL
${DB_SELECTSTATEMENT_ROOMMANAGEMENT_CHECKEDIT_ALLFIELD_VALUE}    (([id], [account_Id], [property_id], [building_id], [floor], '[room_no]', '[house_no]', None, [status], Decimal('[area]'), None, '[water_meter_no]', '[eletric_meter_no]', Decimal('[water_meter_limit_unit]'), Decimal('[electric_meter_limit_unit]'), datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', None, None),)
${DB_SELECTSTATEMENT_ROOMMANAGEMENT_CHECKEDIT_REQUIREDFIELD_VALUE}    (([id], [account_Id], [property_id], [building_id], [floor], '[room_no]', None, None, [status], None, None, '[water_meter_no]', '[eletric_meter_no]', Decimal('[water_meter_limit_unit]'), Decimal('[electric_meter_limit_unit]'), datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', None, None),)

#Delete Room Sc User
${DB_SELECTSTATEMENT_ROOMMANAGEMENT_CHECKDELETE}    SELECT * FROM rooms WHERE id = [id]
${DB_SELECTSTATEMENT_ROOMMANAGEMENT_CHECKDELETE_VALUE}    (([id], [account_Id], [property_id], [building_id], [floor], '[room_no]', '[house_no]', None, [status], Decimal('[area]'), None, '[water_meter_no]', '[eletric_meter_no]', Decimal('[water_meter_limit_unit]'), Decimal('[electric_meter_limit_unit]'), datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', datetime.datetime([deleted_at]), '[deleted_by]'),)

#Delete Room_income Sc User
${DB_SELECTSTATEMENT_ROOMMANAGEMENT_CHECKDELETEINCOME}    SELECT * FROM room_income WHERE room_id = [id]
${DB_SELECTSTATEMENT_ROOMMANAGEMENT_CHECKDELETEINCOME_VALUE}    (([id], [account_Id], [room_id], [income_code_id], [group_type_id], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', datetime.datetime([deleted_at]), '[deleted_by]'),)
                                                                


###################################################################################################################################################################
############################################################################## Start [RoomOwner] #####################################################################################
#----------------------------------------------- selectStatement Create RoomOwner -----------------------------------------------#
# room_id
${DB_SELECTSTATEMENT_ROOMS_ACCOUNTID_PROPERTY_BUILDING_ROOMNAME}    SELECT * FROM rooms WHERE account_id = [account_id] and property_id = [property_id] and building_id = [building_id] and room_no = '[room_no]' and deleted_at IS NULL
# rooms status=2
${DB_SELECTSTATEMENT_ROOMS_ACCOUNTID_PROPERTY_BUILDING_ROOMNAME_STATUS}    SELECT status FROM rooms WHERE account_id = [account_id] and property_id = [property_id] and building_id = [building_id] and room_no = '[room_no]' and deleted_at IS NULL
${DB_SELECTSTATEMENT_ROOMS_ACCOUNTID_PROPERTY_BUILDING_ROOMNAME_STATUS_VALUE}    (([status],),)
# room_transfer
${DB_SELECTSTATEMEN_ROOMTRANSFER_PROPERTY_BUILDING_ROOMID}    SELECT * FROM room_transfer WHERE property_id = [property_id] and building_id = [building_id] and room_id = [room_id] and deleted_at IS NULL
${DB_SELECTSTATEMEN_CHECKASSET_NAME_ACCOUNTID}    SELECT * FROM check_asset WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') and account_id = [account_id]] and deleted_at IS NULL

${DB_SELECTSTATEMENT_ROOMOWNER_ROOMID}    SELECT * FROM room_owner WHERE room_id = [room_id] and deleted_at IS NULL
${DB_SELECTSTATEMENT_ROOMOWNER_ROOMIDROOMTRANSFERID}    SELECT * FROM room_owner WHERE room_id = [room_id] and room_transfer_id = [room_transfer_id] and deleted_at IS NULL
${DB_SELECTSTATEMENT_CARS_ROOMID}    SELECT * FROM cars WHERE room_id = [room_id] and deleted_at IS NULL
${DB_SELECTSTATEMENT_CHECKROOMASSET_ROOMTRANSFER}    SELECT * FROM check_room_asset WHERE room_transfer_id = [room_transfer_id] and deleted_at IS NULL

# all field
${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_THAI_ALLFIELD_VALUE}    ([id], [roomId], [roomTranferId], [tranferorType], [ownerType], [userImage], [title], '[firstName]', '[lastName]', [companyName], '[nickname]', [shortName], '[identificationNo]', datetime.datetime([birthDate]), datetime.datetime([identificationCreate]), datetime.datetime([identificationExpire]), '[phone]', [fax], '[email]', '[lineId]', [education], [occupation], '[occupationOther]', [salary], '[taxId]', [juristicId], '[address]', datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by])
${DB_SELECTSTATEMENT_ROOMOWNER_EDIT_THAI_ALLFIELD_VALUE}    ([id], [roomId], [roomTranferId], [tranferorType], [ownerType], [userImage], [title], '[firstName]', '[lastName]', [companyName], '[nickname]', [shortName], '[identificationNo]', datetime.datetime([birthDate]), datetime.datetime([identificationCreate]), datetime.datetime([identificationExpire]), '[phone]', [fax], '[email]', '[lineId]', [education], [occupation], '[occupationOther]', [salary], '[taxId]', [juristicId], '[address]', datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', [deleted_at], [deleted_by])
${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_FOREIGNERS_ALLFIELD_VALUE}    ([id], [roomId], [roomTranferId], [tranferorType], [ownerType], [userImage], [title], '[firstName]', '[lastName]', [companyName], '[nickname]', [shortName], '[identificationNo]', datetime.datetime([birthDate]), datetime.datetime([identificationCreate]), datetime.datetime([identificationExpire]), '[phone]', [fax], '[email]', '[lineId]', [education], [occupation], '[occupationOther]', [salary], [taxId], [juristicId], '[address]', datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by])
${DB_SELECTSTATEMENT_ROOMOWNER_EDIT_FOREIGNERS_ALLFIELD_VALUE}    ([id], [roomId], [roomTranferId], [tranferorType], [ownerType], [userImage], [title], '[firstName]', '[lastName]', [companyName], '[nickname]', [shortName], '[identificationNo]', datetime.datetime([birthDate]), datetime.datetime([identificationCreate]), datetime.datetime([identificationExpire]), '[phone]', [fax], '[email]', '[lineId]', [education], [occupation], '[occupationOther]', [salary], [taxId], [juristicId], '[address]', datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', [deleted_at], [deleted_by])
${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_JURISTICPERSON_ALLFIELD_VALUE}    ([id], [roomId], [roomTranferId], [tranferorType], [ownerType], '[userImage]', [title], [firstName], [lastName], '[companyName]', [nickname], '[shortName]', [identificationNo], [birthDate], [identificationCreate], [identificationExpire], '[phone]', '[fax]', '[email]', [lineId], [education], [occupation], [occupationOther], [salary], '[taxId]', '[juristicId]', '[address]', datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by])
${DB_SELECTSTATEMENT_ROOMOWNER_EDIT_JURISTICPERSON_ALLFIELD_VALUE}    ([id], [roomId], [roomTranferId], [tranferorType], [ownerType], [userImage], [title], [firstName], [lastName], '[companyName]', [nickname], '[shortName]', [identificationNo], [birthDate], [identificationCreate], [identificationExpire], '[phone]', '[fax]', '[email]', [lineId], [education], [occupation], [occupationOther], [salary], '[taxId]', '[juristicId]', '[address]', datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', [deleted_at], [deleted_by])

${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_CHECKROOMASSET_ALLFIELD_VALUE}    ([id], [roomTransferId], [checkAssetId], [check_status], [remark], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by])
${DB_SELECTSTATEMENT_ROOMOWNER_EDIT_CHECKROOMASSET_ALLFIELD_VALUE}    ([id], [roomTransferId], [checkAssetId], [check_status], [remark], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', [deleted_at], [deleted_by])
${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_CAR_ALLFIELD_VALUE}    ([id], [roomId], [roomTranferId], [roomOwnerId], [carType], '[carplateNumber]', [isCarSticker], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by])
${DB_SELECTSTATEMENT_ROOMOWNER_EDIT_CAR_ALLFIELD_VALUE}    ([id], [roomId], [roomTranferId], [roomOwnerId], [carType], '[carplateNumber]', [isCarSticker], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', [deleted_at], [deleted_by])

#required field
${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_REQUIREDFIELD_VALUE}    ([id], [roomId], [roomTranferId], [tranferorType], [ownerType], [userImage], None, '[firstName]', None, None, None, None, '[identificationNo]', None, None, None, None, None, None, None, None, None, None, None, None, None, None, datetime.datetime([created_at]), '[created_by]', None, None, None, None)
${DB_SELECTSTATEMENT_ROOMOWNER_EDIT_REQUIREDFIELD_VALUE}    ([id], [roomId], [roomTranferId], [tranferorType], [ownerType], [userImage], None, '[firstName]', None, None, None, None, '[identificationNo]', None, None, None, None, None, None, None, None, None, None, None, None, None, None, datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', None, None)
${DB_SELECTSTATEMENT_ROOMOWNER_CREATE_JURISTICPERSON_REQUIREDFIELD_VALUE}    ([id], [roomId], [roomTranferId], [tranferorType], [ownerType], [userImage], None, None, None, '[companyName]', None, None, None, None, None, None, None, None, None, None, None, None, None, None, '[taxId]', None, None, datetime.datetime([created_at]), '[created_by]', None, None, None, None)
${DB_SELECTSTATEMENT_ROOMOWNER_EDIT_JURISTICPERSON_REQUIREDFIELD_VALUE}    ([id], [roomId], [roomTranferId], [tranferorType], [ownerType], [userImage], None, None, None, '[companyName]', None, None, None, None, None, None, None, None, None, None, None, None, None, None, '[taxId]', None, None, datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', None, None)

${DB_SELECTSTATEMENT_ROOMOWNER_CHECKROOMASSET_REQUIREDFIELD_VALUE}    ([id], [roomTransferId], [checkAssetId], [check_status], [remark], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by])
#update
${DB_UPDATESTATEMENT_ROOMOWNER_CHECKROOMASSET_DELETEDAT}    UPDATE check_room_asset SET deleted_at = [deleted_at] WHERE room_transfer_id = [room_transfer_id] and deleted_at IS NULL
${DB_UPDATESTATEMENT_ROOMOWNER_ROOMS_STATUS}    UPDATE rooms SET status = [status] WHERE account_id = [account_id] and property_id = [property_id] and building_id = [building_id] and room_no = '[room_no]' and id = [room_id] and deleted_at IS NULL
${DB_UPDATESTATEMENT_ROOMOWNER_CARS_DELETEDAT}    UPDATE cars SET deleted_at = [deleted_at] WHERE room_id = [room_id] and deleted_at IS NULL
${DB_UPDATESTATEMENT_ROOMOWNER_ROOMOWNER_DELETEDAT}    UPDATE room_owner SET deleted_at = [deleted_at] WHERE room_id = [room_id] and deleted_at IS NULL
${DB_UPDATESTATEMENT_ROOMOWNER_ROOMTRANSFER_DELETEDAT}    UPDATE room_transfer SET deleted_at = [deleted_at] WHERE  id = [room_transfer_id] and deleted_at IS NULL
${DB_UPDATESTATEMENT_ROOMOWNER_CHECKASSET_DELETEDAT}    UPDATE check_asset SET deleted_at = [deleted_at] WHERE  id = [checkAssetId] and deleted_at IS NULL
${DB_SELECTSTATEMENT_ROOMOWNER_EDIT_CHECKROOMASSET_WHEREACCOUNTIDROOMTRANSFER}    SELECT * FROM check_asset ca LEFT JOIN check_room_asset cra ON ca.id = cra.check_asset_id WHERE ca.account_id = [accountId] AND ca.deleted_at IS null AND cra.room_transfer_id = [roomTransferId] AND cra.deleted_at IS null

###################################################################################################################################################################
############################################################################## Start [Building Management] #####################################################################################
#----------------------------------------------- [selectStatement Building Management] -----------------------------------------------#
# type
${MYSQL_TYPE_BUILDINGMANAGEMENT_SEARCH_ALL}    SearchAll
${MYSQL_TYPE_BUILDINGMANAGEMENT_SEARCH_NAME}    buildingName


#SELECT * FROM buildings WHERE (building_name_th LIKE '%[name]%' OR building_name_en LIKE '%[name]%') AND property_id = [property_id] and account_id = [account_id] AND deleted_at IS NULL  order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_SEARCH_LISTALL}    SELECT * FROM buildings WHERE property_id = [propertyId] and account_id = [accountId] AND deleted_at IS NULL order by [orderBy] limit [limit] offset [offset]
${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_SEARCH_NAME}    SELECT * FROM buildings WHERE (building_name_th LIKE '%[name]%' OR building_name_en LIKE '%[name]%') AND property_id = [propertyId] and account_id = [accountId] AND deleted_at IS NULL order by [orderBy] limit [limit] offset [offset]
   
${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_SEARCH_LISTALL_ROWCOUNT}    SELECT * FROM buildings WHERE property_id = [propertyId] and account_id = [accountId] AND deleted_at IS NULL order by [orderBy]
${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_SEARCH_NAME_ROWCOUNT}    SELECT * FROM buildings WHERE (building_name_th LIKE '%[name]%' OR building_name_en LIKE '%[name]%') AND property_id = [propertyId] and account_id = [accountId] AND deleted_at IS NULL order by [orderBy]
# ([id], [propertyId], '[buildingNameTh]', '[buildingNameEn]', '[phone]', [remark], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [accountId])
${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_CHECKCREATE}    SELECT * FROM income_code WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') AND deleted_at IS NULL
${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_CHECKCREATE_ALLFIELD_VALUE}    (([id], [propertyId], '[buildingNameTh]', '[buildingNameEn]', '[phone]', '[remark]', datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [accountId]),)
${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_CHECKCREATE_REQUIREDFIELD_VALUE}    (([id], [propertyId], '[buildingNameTh]', [buildingNameEn], '[phone]', [remark], datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [accountId]),)
${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_CHECKEDIT}    SELECT * FROM buildings WHERE id = [id] AND deleted_at IS NULL
${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_CHECKEDIT_ALLFIELD_VALUE}    (([id], [propertyId], '[buildingNameTh]', '[buildingNameEn]', '[phone]', '[remark]', datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', [deleted_at], [deleted_by], [accountId]),)
${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_CHECKEDIT_REQUIREDFIELD_VALUE}    (([id], [propertyId], '[buildingNameTh]', [buildingNameEn], '[phone]', [remark], datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', [deleted_at], [deleted_by], [accountId]),)
${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_CHECKVIEW}    SELECT * FROM buildings WHERE id = [id] AND deleted_at IS NULL
${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_CHECKVIEW_ALLFIELD_VALUE}    ([id], [propertyId], '[buildingNameTh]', '[buildingNameEn]', '[phone]', '[remark]', datetime.datetime([created_at]), '[created_by]', [updated_at], [updated_by], [deleted_at], [deleted_by], [accountId])
${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_CHECKDELETE}    SELECT * FROM buildings WHERE id = [id]
${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_CHECKDELETE_ALLFIELD_VALUE}    (([id], [propertyId], '[buildingNameTh]', '[buildingNameEn]', '[phone]', '[remark]', datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', datetime.datetime([deleted_at]), '[deleted_by]', [accountId]),)
${DB_SELECTSTATEMENT_BUILDINGMANAGEMENT_CHECKDELETE_REQUIREDFIELD_VALUE}    (([id], [propertyId], '[buildingNameTh]', '[buildingNameEn]', '[phone]', '[remark]', datetime.datetime([created_at]), '[created_by]', datetime.datetime([updated_at]), '[updated_by]', datetime.datetime([deleted_at]), '[deleted_by]', [accountId]),)
###################################################################################################################################################################
