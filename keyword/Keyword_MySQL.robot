
*** Settings ***
Library    DatabaseLibrary
Library    pymysql

*** Keywords ***
Start Connect To MySql Query All List
    [Arguments]    ${selectStatement}    ${selectStatementRowcount}
	
    Connect To Database    dbapiModuleName=${CONNECT_TO_MYSQL_DBAPIMODULENAME}      dbName=${CONNECT_TO_MYSQL_DBNAME}     dbUsername=${CONNECT_TO_MYSQL_DBUSERNAME}    dbPassword=${CONNECT_TO_MYSQL_DBPASSWORD}    dbHost=${CONNECT_TO_MYSQL_DBHOST}    dbPort=${CONNECT_TO_MYSQL_DBPOST}
	${queryResults}=    Run keyword And Continue On Failure    Query All List    ${selectStatement}
    ${rowCount}=    Run keyword And Continue On Failure    Row Count Query    ${selectStatement}

     # ${queryResults}=    Run Keyword If    "${type}" == "${MYSQL_TYPE_QUERYALLLIST}"    Query All List    ${selectStatement}
    # ...    ELSE IF    "${type}" == "${MYSQL_TYPE_ROWCOUNTQUERY}"    Row Count Query    ${selectStatement}

    Disconnect from Database

    # Log    queryResults@{queryResults}
    # Log To Console    queryResults@{queryResults}
    # Log    rowCount@{rowCount}
    # Log To Console    rowCount@{rowCount}
    # queryResults,rowCount
    [Return]    ${queryResults}    ${rowCount}

Start Connect To MySql Execute Sql Script
    [Arguments]    ${selectStatement}    

    Connect To Database    dbapiModuleName=${CONNECT_TO_MYSQL_DBAPIMODULENAME}      dbName=${CONNECT_TO_MYSQL_DBNAME}     dbUsername=${CONNECT_TO_MYSQL_DBUSERNAME}    dbPassword=${CONNECT_TO_MYSQL_DBPASSWORD}    dbHost=${CONNECT_TO_MYSQL_DBHOST}    dbPort=${CONNECT_TO_MYSQL_DBPOST}
	# ./testSql.sql
    ${executeSql}=    Execute Sql Script    ${selectStatement}
    Disconnect from Database

    # Log    executeSql@{executeSql}
    # Log To Console    executeSql@{executeSql}
    # executeSql
    [Return]    ${executeSql}

Start Connect To MySql Row Count Query
    [Arguments]    ${selectStatement}    

    Connect To Database    dbapiModuleName=${CONNECT_TO_MYSQL_DBAPIMODULENAME}      dbName=${CONNECT_TO_MYSQL_DBNAME}     dbUsername=${CONNECT_TO_MYSQL_DBUSERNAME}    dbPassword=${CONNECT_TO_MYSQL_DBPASSWORD}    dbHost=${CONNECT_TO_MYSQL_DBHOST}    dbPort=${CONNECT_TO_MYSQL_DBPOST}
	# ./testSql.sql
    ${rowCount}=    Row Count Query    ${selectStatement}
    Disconnect from Database

    # Log    rowCount@{rowCount}
    # Log To Console    rowCount@{rowCount}
    # rowCount
    [Return]    ${rowCount}
####################################################
# [Query]
# Ex.table banks
# ${queryResults}=    QUERY    SELECT * from banks
# id bank_name_th
# 1ธนาคารกรุงเทพ
# 2ธนาคารกสิกรไทย
# 3ธนาคารออมสิน
# Log To Console    \n===========${queryResults[0][0]}${queryResults[0][1]}
# Log To Console    \n===========${queryResults[1][0]}${queryResults[1][1]}
# Log To Console    ${\n}===========${queryResults[2][0]}${queryResults[2][1]}
####################################################
Query All List
    [Arguments]    ${selectStatement}

    ${queryResults}=    Run keyword And Continue On Failure    QUERY    ${selectStatement}

    Log    ${queryResults}
    # Log To Console    Query All List : ${queryResults}
    [Return]    ${queryResults}

Row Count Query
    [Arguments]    ${selectStatement}

    ${rowCount}=    Run keyword And Continue On Failure    Row Count    ${selectStatement}

    Log    ${rowCount}
    # Log To Console    Row Count Query : ${rowCount}
    [Return]    ${rowCount}
