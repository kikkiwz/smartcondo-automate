*** Keywords ***
################################################################-- Login--################################################################
Login
    [Arguments]    ${url}    ${username}    ${password}
    # ${current_timestamp}=    Change format date now    ${DDMMYYYYHMS_NOW}
    ${headers}=    Create Dictionary    Content-Type=${HEADER_CONTENT_TYPE}
    ${data}=    Evaluate    {"id": "${username}","password": "${password}"} 
    # Log To Console    Response Signin : ${data}  
    ${res}=    Run keyword And Continue On Failure    Post Api Request    ${url}    ${URL_USERLOGIN}    ${headers}    ${data}
    # Log To Console    Response Signin : ${res}
    Run keyword And Continue On Failure    Response ResultCode Should Have    ${res}    ${USERLOGIN}    ${FIELD_RESULTCODE}    ${FIELD_RESULTDESCRIPTION}    ${FIELD_RESULTDESCRIPTIONTH}
    
    #resultData
    ${resultData}=    Get From Dictionary    ${res}     ${FIELD_RESULTDATA}
    #accessToken
    ${accessToken}=    Get From Dictionary    ${resultData}     ${FIELD_XACCESSTOKEN}
    #Log To Console    ${xSessionId}
    ${xSessionId}=    Get From Dictionary    ${resultData}     ${FIELD_XSESSIONID}
    #Log To Console    ${xSessionId}
    [return]    ${accessToken}    ${xSessionId}

################################################################-- Delete BankAccount--################################################################
Delete Bank Account 
    [Arguments]    ${url}    ${accessToken}    ${xSessionId}    ${bankAccountId}

    # ${current_timestamp}=    Change format date now    ${DDMMYYYYHMS_NOW}
    ${headers}=    Create Dictionary        Content-Type=${HEADER_CONTENT_TYPE}    x-access-token=${accessToken}    x-session-id=${xSessionId} 
    Log To Console    ${headers}
                
    ${data}=    Evaluate    {"bankAccountId": ${bankAccountId}}
    Log To Console    ${data}

    ${res}=    Run keyword And Continue On Failure    Post Api Request    ${url}    ${URL_DELETEBANKACCOUNT}    ${headers}    ${data}
    Log To Console    Response Delete Bank Account : ${res}
    Run keyword And Continue On Failure    Response ResultCode Should Have    ${res}    ${DELETEBANKACCOUNT}    ${FIELD_RESULTCODE}    ${FIELD_RESULTDESCRIPTION}    ${FIELD_RESULTDESCRIPTIONTH}


################################################################-- Delete EmployeeManagement--################################################################
Delete EmployeeManagement 
    [Arguments]    ${url}    ${accessToken}    ${xSessionId}    ${idEmployeeManagement}

    # ${current_timestamp}=    Change format date now    ${DDMMYYYYHMS_NOW}
    ${headers}=    Create Dictionary        Content-Type=${HEADER_CONTENT_TYPE}    x-access-token=${accessToken}    x-session-id=${xSessionId} 
    Log To Console    ${headers}
                
    ${data}=    Evaluate    {"employeeId": ${idEmployeeManagement}}
    Log To Console    ${data}
    ${ReplaceUrl}=    Replace String    ${URL_DELETEEMPLOYEEMANAGEMENT}    [EmployeeId]    ${idEmployeeManagement}
    Log To Console    URL : : :${ReplaceUrl}

    ${res}=    Run keyword And Continue On Failure    Post Api Request    ${url}    ${ReplaceUrl}    ${headers}    ${data}
    Log To Console    Response Delete EmployeeManagement : ${res}
    Run keyword And Continue On Failure    Response ResultCode Should Have    ${res}    ${DELETEEMPLOYEEMANAGEMENT}    ${FIELD_RESULTCODE}    ${FIELD_RESULTDESCRIPTION}    ${FIELD_RESULTDESCRIPTIONTH}

################################################################-- Create MulctMethod--################################################################
Create MulctMethod  
    [Arguments]    ${url}    ${accessToken}    ${xSessionId}    ${dataField}

    # ${current_timestamp}=    Change format date now    ${DDMMYYYYHMS_NOW}
    ${headers}=    Create Dictionary        Content-Type=${HEADER_CONTENT_TYPE}    x-access-token=${accessToken}    x-session-id=${xSessionId} 
    Log To Console    ${headers}
    # Log To Console    "{"status": 1,"adjustmentRate": 1,"calculateMulctType": 1,"adjustmentRateType": 1,"unitFromTo": 1,"mulctConditionDetail": [  { "timePastDeadline": 1, "dateToFlag": false, "total": 100  },  { "dateToFlag": true, "timePastDeadline": 9999, "total": 1  }],"nameTh": "ค่าปรับ" }"
    ${data}=    Evaluate    {"status":1,"adjustmentRate":1,"calculateMulctType":1,"adjustmentRateType":1,"unitFromTo":1,"mulctConditionDetail":[{"timePastDeadline":1,"dateToFlag":False,"total":100},{"dateToFlag":True,"timePastDeadline":9999,"total":1}],"nameTh":"${DATA_MULCTMETHOD_NAMETH_VALUE}"}
    Log To Console    ${data}

    ${res}=    Run keyword And Continue On Failure    Post Api Request    ${url}    ${URL_CREATEMULCTMETHOD}    ${headers}    ${data}
    Log To Console    Response Create MulctMethod : ${res}
    Run keyword And Continue On Failure    Response ResultCode Should Have    ${res}    ${CREATEMULCTMETHOD}    ${FIELD_RESULTCODE}    ${FIELD_RESULTDESCRIPTION}    ${FIELD_RESULTDESCRIPTIONTH}

    # ${DB_SELECTSTATEMENT_MULCTMETHOD_WHERENAMETH}    SELECT * FROM mulct_method WHERE name_Th = [nameTh] and deleted_at IS null
    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_MULCTMETHOD_WHERENAMETH}    [nameTh]    ${DATA_MULCTMETHOD_NAMETH_VALUE}
    Log To Console    [mulct_method : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [mulct_method] Generic Test Case Teardown MulctCode : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    # Log To Console    [result : mulct_method] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    # Log To Console    [rowCount : mulct_method] : ${rowCount}
    ${mulctMethodId}=    Set Variable    ${dataResult}[0][0]
    Set Global Variable    ${mulctMethodId}    ${dataResult}[0][0]
    Log To Console    [mulctMethodId] : ${mulctMethodId}

    [Return]    ${mulctMethodId}


################################################################-- Create IncomeCode--################################################################
Create IncomeCode  
    [Arguments]    ${url}    ${accessToken}    ${xSessionId}    ${dataField}    ${nameTh}


    # ${current_timestamp}=    Change format date now    ${DDMMYYYYHMS_NOW}
    ${headers}=    Create Dictionary        Content-Type=${HEADER_CONTENT_TYPE}    x-access-token=${accessToken}    x-session-id=${xSessionId} 
    # Log To Console    ${headers}
    # Log To Console    {"nameTh":"เทส","nameEn":"test","incomecode":"4456","status":1,"groupTypeId":2,"priceUnit":6,"calculationTime":7,"calculationMethodId":1,"vatPercent":3,"taxPercent":3,"calculateMulctFlag":0,"remark":"remark"}
    ${dataField}=    Convert To String    ${dataField} 
    ${data}=    Evaluate    ${dataField}

    ${res}=    Run keyword And Continue On Failure    Post Api Request    ${url}    ${URL_CREATEINCOME}    ${headers}    ${data}
    Log To Console    Response Create Income : ${res}
    Run keyword And Continue On Failure    Response ResultCode Should Have    ${res}    ${CREATEINCOME}    ${FIELD_RESULTCODE}    ${FIELD_RESULTDESCRIPTION}    ${FIELD_RESULTDESCRIPTIONTH}
    

    # ${DB_SELECTSTATEMENT_INCOMECODE_WHERENAMETH}    SELECT * FROM income_code WHERE name_Th = [nameTh] and deleted_at IS null
    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_INCOMECODE_WHERENAMETH}    [nameTh]    ${nameTh}
    Log To Console    [mulct_method : resultQuery] : ${selectStatement}
    
    # #[(), 0]
    # # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [IncomeCode] Generic Test Case Teardown IncomeCode : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : IncomeCode] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : IncomeCode] : ${rowCount}

    ${IncomeCodeId}=    Set Variable    ${dataResult}[0][0]
    Set Global Variable    ${IncomeCodeId}    ${dataResult}[0][0]
    Log To Console    [IncomeCodeId] : ${IncomeCodeId}
    
   

    [Return]    ${IncomeCodeId}

################################################################-- Delete MulctMethod--################################################################
Delete MulctMethod 
    [Arguments]    ${url}    ${accessToken}    ${xSessionId}    ${mulctMethodId}

    # ${current_timestamp}=    Change format date now    ${DDMMYYYYHMS_NOW}
    ${headers}=    Create Dictionary        Content-Type=${HEADER_CONTENT_TYPE}    x-access-token=${accessToken}    x-session-id=${xSessionId} 
    Log To Console    ${headers}

    ${data}=    Evaluate    {"mulctMethodId": ${mulctMethodId}}
    Log To Console    ${data}

    ${res}=    Run keyword And Continue On Failure    Post Api Request    ${url}    ${URL_DELETEMULCTMETHOD}    ${headers}    ${data}
    Log To Console    Response Delete MulctMethod : ${res}
    Run keyword And Continue On Failure    Response ResultCode Should Have    ${res}    ${DELETEMULCTMETHOD}    ${FIELD_RESULTCODE}    ${FIELD_RESULTDESCRIPTION}    ${FIELD_RESULTDESCRIPTIONTH}

################################################################-- Delete IncomeCode--################################################################
Delete IncomeCode 
    [Arguments]    ${url}    ${accessToken}    ${xSessionId}    ${incomeCodeId}

    # ${current_timestamp}=    Change format date now    ${DDMMYYYYHMS_NOW}
    ${headers}=    Create Dictionary        Content-Type=${HEADER_CONTENT_TYPE}    x-access-token=${accessToken}    x-session-id=${xSessionId} 
    Log To Console    ${headers}

    ${data}=    Evaluate    {"incomeCodeId": ${incomeCodeId}}
    Log To Console    ${data}

    ${res}=    Run keyword And Continue On Failure    Post Api Request    ${url}    ${URL_DELETEINCOMECODE}    ${headers}    ${data}
    Log To Console    Response Delete IncomeCode : ${res}
    Run keyword And Continue On Failure    Response ResultCode Should Have    ${res}    ${DELETEMULCTMETHOD}    ${FIELD_RESULTCODE}    ${FIELD_RESULTDESCRIPTION}    ${FIELD_RESULTDESCRIPTIONTH}

################################################################-- Create MulctCode--################################################################
Create MulctCode  
    [Arguments]    ${url}    ${accessToken}    ${xSessionId}    ${dataField}    ${mulctMethodId}

    # ${current_timestamp}=    Change format date now    ${DDMMYYYYHMS_NOW}
    ${headers}=    Create Dictionary        Content-Type=${HEADER_CONTENT_TYPE}    x-access-token=${accessToken}    x-session-id=${xSessionId} 
    Log To Console    ${headers}
    # Log To Console    "{"status": 1,"adjustmentRate": 1,"calculateMulctType": 1,"adjustmentRateType": 1,"unitFromTo": 1,"mulctConditionDetail": [  { "timePastDeadline": 1, "dateToFlag": false, "total": 100  },  { "dateToFlag": true, "timePastDeadline": 9999, "total": 1  }],"nameTh": "ค่าปรับ" }"
    ${data}=    Evaluate    {"nameTh": "${DATA_MULCTCODE_NAMETH_VALUE}","nameEn": "${DATA_MULCTCODE_NAMEEN_VALUE}","mulctcode": "mulctcode","status": 1,"groupTypeId": 2,"mulctMethodId": ${mulctMethodId},"vatPercent": 3,"taxPercent": 3,"remark": "remark"}
    Log To Console    ${data}

    ${res}=    Run keyword And Continue On Failure    Post Api Request    ${url}    ${URL_CREATEMULCTCODE}    ${headers}    ${data}
    Log To Console    Response Create MulctCode : ${res}
    Run keyword And Continue On Failure    Response ResultCode Should Have    ${res}    ${CREATEMULCTCODE}    ${FIELD_RESULTCODE}    ${FIELD_RESULTDESCRIPTION}    ${FIELD_RESULTDESCRIPTIONTH}

    # ${DB_SELECTSTATEMENT_MULCTCODE_WHERENAMETH}    SELECT * FROM mulct_method WHERE name_Th = [nameTh] and deleted_at IS null
    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_MULCTCODE_WHERENAMETH}    [nameTh]    ${DATA_MULCTCODE_NAMETH_VALUE}
    Log To Console    [mulct_method : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [mulct_method] Generic Test Case Teardown MulctCode : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    # Log To Console    [result : mulct_method] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    # Log To Console    [rowCount : mulct_method] : ${rowCount}
    ${mulctCodeId}=    Set Variable    ${dataResult}[0][0]
    Set Global Variable    ${mulctCodeId}    ${dataResult}[0][0]
    Log To Console    [mulctCodeId] : ${mulctCodeId}

    [Return]    ${mulctCodeId}

################################################################-- Delete MulctCode--################################################################
Delete MulctCode 
    [Arguments]    ${url}    ${accessToken}    ${xSessionId}    ${mulctCodeId}

    # ${current_timestamp}=    Change format date now    ${DDMMYYYYHMS_NOW}
    ${headers}=    Create Dictionary        Content-Type=${HEADER_CONTENT_TYPE}    x-access-token=${accessToken}    x-session-id=${xSessionId} 
    Log To Console    ${headers}

    ${data}=    Evaluate    {"mulctCodeId": ${mulctCodeId}}
    Log To Console    ${data}

    ${res}=    Run keyword And Continue On Failure    Post Api Request    ${url}    ${URL_DELETEMULCTCODE}    ${headers}    ${data}
    Log To Console    Response Delete MulctCode : ${res}
    Run keyword And Continue On Failure    Response ResultCode Should Have    ${res}    ${DELETEMULCTCODE}    ${FIELD_RESULTCODE}    ${FIELD_RESULTDESCRIPTION}    ${FIELD_RESULTDESCRIPTIONTH}

################################################################-- Create CheckAsset--################################################################
Create CheckAsset  
    [Arguments]    ${url}    ${accessToken}    ${xSessionId}    ${dataField}

    # ${current_timestamp}=    Change format date now    ${DDMMYYYYHMS_NOW}
    ${headers}=    Create Dictionary        Content-Type=${HEADER_CONTENT_TYPE}    x-access-token=${accessToken}    x-session-id=${xSessionId} 
    Log To Console    ${headers}
    ${random_number}=    Evaluate    random.randint(1000000, 9999999)    random
    ${data}=    Evaluate    {"nameTh": "${DATA_CHECKASSET_NAMETH_VALUE}${random_number}","nameEn": "${DATA_CHECKASSET_NAMEEN_VALUE}${random_number}","remark": "${DATA_CHECKASSET_REMARK_VALUE}"}
    Log To Console    ${data}

    ${res}=    Run keyword And Continue On Failure    Post Api Request    ${url}    ${URL_CREATECHECKASSET}    ${headers}    ${data}
    Log To Console    Response Create CheckAsset : ${res}
    Run keyword And Continue On Failure    Response ResultCode Should Have    ${res}    ${CREATECHECKASSET}    ${FIELD_RESULTCODE}    ${FIELD_RESULTDESCRIPTION}    ${FIELD_RESULTDESCRIPTIONTH}

    # ${DB_SELECTSTATEMENT_CHECKASSET_WHERENAMETH}    SELECT * FROM check_asset WHERE name_Th = "[nameTh]" and deleted_at IS null
    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHERENAMETH}    [nameTh]    ${DATA_CHECKASSET_NAMETH_VALUE}${random_number}
    Log To Console    [check_asset : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_asset] Generic Test Case Teardown CheckAsset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    # Log To Console    [result : check_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    # Log To Console    [rowCount : check_asset] : ${rowCount}
    ${checkAssetId}=    Set Variable    ${dataResult}[0][0]
    Set Global Variable    ${checkAssetId}    ${dataResult}[0][0]
    Log To Console    [checkAssetId] : ${checkAssetId}

    [Return]    ${checkAssetId}    ${DATA_CHECKASSET_NAMETH_VALUE}${random_number}  

 ################################################################-- Update CheckAsset--################################################################
Update CheckAsset  
    [Arguments]    ${url}    ${accessToken}    ${xSessionId}    ${checkAssetId}    ${dataField}

    # ${current_timestamp}=    Change format date now    ${DDMMYYYYHMS_NOW}
    ${headers}=    Create Dictionary        Content-Type=${HEADER_CONTENT_TYPE}    x-access-token=${accessToken}    x-session-id=${xSessionId} 
    Log To Console    ${headers}
    ${data}=    Evaluate    {"status": 0}
    Log To Console    ${data}
    
    ${url_updateCheckAsset}=    Replace String    ${URL_UPDATECHECKASSET}    [id]    ${checkAssetId}
    
    ${res}=    Run keyword And Continue On Failure    Post Api Request    ${url}    ${url_updateCheckAsset}    ${headers}    ${data}
    Log To Console    Response Update CheckAsset   : ${res}
    Run keyword And Continue On Failure    Response ResultCode Should Have    ${res}    ${UPDATECHECKASSET}    ${FIELD_RESULTCODE}    ${FIELD_RESULTDESCRIPTION}    ${FIELD_RESULTDESCRIPTIONTH}

################################################################-- Request--################################################################
Request DeleteData for Delete Bank Account 
    [Arguments]    ${username}    ${password}    ${bankAccountId}
    ${login}=    Login    ${URL}    ${username}    ${password}
    Delete Bank Account    ${URL}    ${login}[0]    ${login}[1]    ${bankAccountId}

Request DeleteData for EmployeeManagement 
    [Arguments]    ${username}    ${password}    ${idEmployeeManagement}
    ${login}=    Login    ${URL}    ${username}    ${password}
    Delete EmployeeManagement    ${URL}    ${login}[0]    ${login}[1]    ${idEmployeeManagement}

Request CreateData for MulctMethod 
    [Arguments]    ${username}    ${password}    ${status}    ${adjustmentRate}    ${calculateMulctType}    ${adjustmentRateType}    ${unitFromTo}    ${mulctConditionDetail}    ${nameTh}
    ${login}=    Login    ${URL}    ${username}    ${password}

    ${data}=    Set Variable    {"status": ${status},"adjustmentRate": ${adjustmentRate},"calculateMulctType": ${calculateMulctType},"adjustmentRateType": ${adjustmentRateType},"unitFromTo": ${unitFromTo},"mulctConditionDetail": ${mulctConditionDetail},"nameTh": "${nameTh}" }
    ${mulctMethodId}=    Create MulctMethod    ${URL}    ${login}[0]    ${login}[1]    ${data}
	[Return]    ${mulctMethodId}

Request CreateData for IncomeCode 
    [Arguments]    ${username}    ${password}    ${dataField}    ${nameTh}         
    ${login}=    Login    ${URL}    ${username}    ${password}

    # ${data}=    Set Variable    {"status": ${status},"adjustmentRate": ${adjustmentRate},"calculateMulctType": ${calculateMulctType},"adjustmentRateType": ${adjustmentRateType},"unitFromTo": ${unitFromTo},"mulctConditionDetail": ${mulctConditionDetail},"nameTh": "${nameTh}" }
    ${IncomeCodeId}=    Create IncomeCode    ${URL}    ${login}[0]    ${login}[1]    ${dataField}    ${nameTh}        
    Log To Console    IncomeCodeId: ${IncomeCodeId}    

	[Return]    ${IncomeCodeId}

Request DeleteData for MulctMethod 
    [Arguments]    ${username}    ${password}    ${mulctMethodId}
    ${login}=    Login    ${URL}    ${username}    ${password}
    Delete MulctMethod    ${URL}    ${login}[0]    ${login}[1]    ${mulctMethodId}

Request CreateData for MulctCode 
    [Arguments]    ${username}    ${password}    ${statusMulctMethod}    ${adjustmentRate}    ${calculateMulctType}    ${adjustmentRateType}    ${unitFromTo}    ${mulctConditionDetail}    ${nameThMulctMethod}    ${groupTypeId}    ${mulctcode}    ${nameEnMulctCode}    ${nameThMulctCode}    ${remarkMulctCode}    ${statusMulctCode}    ${taxPercent}    ${vatPercent}    
    ${login}=    Login    ${URL}    ${username}    ${password}

	${data}=    Set Variable    {"status": ${statusMulctMethod},"adjustmentRate": ${adjustmentRate},"calculateMulctType": ${calculateMulctType},"adjustmentRateType": ${adjustmentRateType},"unitFromTo": ${unitFromTo},"mulctConditionDetail": ${mulctConditionDetail},"nameTh": "${nameThMulctMethod}" }
    ${mulctMethodId}=    Create MulctMethod    ${URL}    ${login}[0]    ${login}[1]    ${data}

    ${data}=    Set Variable    {"groupTypeId": ${groupTypeId},"mulctMethodId": ${mulctMethodId},"mulctcode": "${mulctcode}","nameEn": "${nameEnMulctCode}","nameTh": "${nameThMulctCode}","remark": ${remarkMulctCode},"status": ${statusMulctCode},"taxPercent": ${taxPercent},"vatPercent": ${vatPercent}}
    ${mulctCodeId}=    Create MulctCode    ${URL}    ${login}[0]    ${login}[1]    ${data}    ${mulctMethodId}
	[Return]    ${mulctCodeId}    ${mulctMethodId}

Request DeleteData for MulctCode 
    [Arguments]    ${username}    ${password}    ${mulctCodeId}    ${mulctMethodId}    ${incomeCodeId}
    ${login}=    Login    ${URL}    ${username}    ${password}
    Delete MulctCode    ${URL}    ${login}[0]    ${login}[1]    ${mulctCodeId}
	Delete MulctMethod    ${URL}    ${login}[0]    ${login}[1]    ${mulctMethodId}
    FOR    ${i}    IN RANGE    ${incomeCodeId} 
    Delete IncomeCode   ${URL}    ${login}[0]    ${login}[1]    ${incomeCodeId}[${i}]
    END

Request DeleteData for IncomeCode 
    [Arguments]    ${username}    ${password}    ${incomeCodeId}
    ${login}=    Login    ${URL}    ${username}    ${password}
    ${GetCountincomeCodeId}=    Get Length    ${incomeCodeId}
    FOR    ${i}    IN RANGE    ${GetCountincomeCodeId} 
    Delete IncomeCode   ${URL}    ${login}[0]    ${login}[1]    ${incomeCodeId}[${i}]
    END

Request CreateData for CheckAsset
    [Arguments]    ${username}    ${password}    ${nameTh}    ${nameEn}    ${remark}
    ${login}=    Login    ${URL}    ${username}    ${password}

	${data}=    Set Variable    {"nameTh": "${nameTh}","nameEn": "${nameEn}","remark": "${remark}"}
    ${checkAsset}=    Create CheckAsset    ${URL}    ${login}[0]    ${login}[1]    ${data}

    # checkAssetId,name
   [Return]    ${checkAsset}[0]    ${checkAsset}[1]

Request UpdateData for CheckAsset
    [Arguments]    ${username}    ${password}    ${checkAssetId}    ${status}
    ${login}=    Login    ${URL}    ${username}    ${password}

	${data}=    Set Variable    {"status": ${status}}
    Update CheckAsset    ${URL}    ${login}[0]    ${login}[1]    ${data}    ${checkAssetId}

################################################################-- Role Management--################################################################
Search Role Management
    [Arguments]    ${url}    ${accessToken}    ${xSessionId}    ${filter}
    #Headers
	${headers}=    Create Dictionary        Content-Type=${HEADER_CONTENT_TYPE}    x-access-token=${accessToken}    x-session-id=${xSessionId}${current_timestamp}    x-transaction-id=${xTransacrionId}  
	Log To Console    Headers is : ${headers}
				
    ${res}=    Run keyword And Continue On Failure    Get Api Request    ${url}    ${URL_SEARCH_ROLE}${filter}    ${headers} 
    Log    ${res}
	[Return]    ${res}

Create Role Management
    [Arguments]    ${url}    ${accessToken}    ${xSessionId}    ${data}

    #Headers
	${headers}=    Create Dictionary        Content-Type=${HEADER_CONTENT_TYPE}    x-access-token=${accessToken}    x-session-id=${xSessionId}${current_timestamp}    x-transaction-id=${xTransacrionId}  
	Log To Console    Headers is : ${headers}
    Log To Console    ${data}

    ${res}=    Run keyword And Continue On Failure    Post Api Request    ${url}    ${URL_CREATE_ROLE}    ${headers}    ${data}
    Log To Console    Response Delete EmployeeManagement : ${res}
	Run keyword And Continue On Failure    Response ResultCode Should Have    ${res}    ${CREATE_ROLE}    ${FIELD_RESULTCODE}    ${FIELD_RESULTDESCRIPTION}    ${FIELD_RESULTDESCRIPTIONTH}

################################################################-- AccountMenu--################################################################
Search AccountMenu And Get Menu Id
    [Arguments]    ${url}    ${accessToken}    ${xSessionId}    ${filter}    ${menuName_expect}
    #Headers
	${headers}=    Create Dictionary        Content-Type=${HEADER_CONTENT_TYPE}    x-access-token=${accessToken}    x-session-id=${xSessionId}${current_timestamp}    x-transaction-id=${xTransacrionId}  
	Log To Console    Headers is : ${headers}
				
    ${res}=    Run keyword And Continue On Failure    Get Api Request    ${url}    ${URL_SEARCH_ACCOUNTMENU}${filter}    ${headers} 
    Log    ${res}
    ${GetResultData}=    Get From Dictionary    ${res}     ${FIELD_RESULTDATA} 
    ${legth}=    Get Legth    ${GetResultData_MenuId}
    FOR    ${index}    IN RANGE    ${legth}
        ${menuId}=    Get From Dictionary    ${GetResultData}[${index}]     ${FIELD_ID}    
        ${menuName}=    Get From Dictionary    ${GetResultData}[${index}]     ${FIELD_MENUNAME}    
        ${menuId_match}=    Set Variable If    '${menuName_expect}'=='${menuName}'    ${menuId}
    END
	[Return]    ${menuId_match}

################################################################-- Project Management--################################################################
Search DDL Property
    [Arguments]    ${url}    ${accessToken}    ${xSessionId}    ${filter}
    #Headers
	${headers}=    Create Dictionary        Content-Type=${HEADER_CONTENT_TYPE}    x-access-token=${accessToken}    x-session-id=${xSessionId}${current_timestamp}    x-transaction-id=${xTransacrionId}  
	Log To Console    Headers is : ${headers}
				
    ${res}=    Run keyword And Continue On Failure    Get Api Request    ${url}    ${URL_SEARCH_ROLE}${filter}    ${headers} 
    Log    ${res}
	[Return]    ${res}

################################################################-- UserAccount--################################################################

Prepare Data Befor Create UserAccount
    #login
    ${responseLogin}=    Login    ${URL_BE}    ${VALUE_USERNAME_SUPERADMIN}   ${VALUE_PASSWORD_SUPERADMIN}
     Log    ${responseLogin}
    ${accessToken}=    Set Variable    ${responseLogin}[0]   
    ${xSessionId}=    Set Variable    ${responseLogin}[1] 
    ${current_timestamp}=    Change format date now    ${DDMMYYYYHMS_NOW}
    ${xTransacrionId}=    Set Variable    SmartRMS_RFG-${current_timestamp}

    #search menuId
    ${menuId}=    Search AccountMenu And Get Menu Id    Search AccountMenu And Get Menu Id    ${URL_BE}    ${accessToken}    ${xSessionId}    ${EMPTY}    ${USERACCOUNT_MENUNAME_EN}
     Log    ${menuId}

    #create role
    ${random_number}=    generate random string    5    [NUMBERS]
    ${roleName}=    Set Variable    ${USERACCOUNT_CREATE_ROLENAME}${random_number}  
    ${action}=    Set Variable    view,create,edit,delete       
    ${data}=    Evaluate    {"roleName": "${roleName}","roleMenu":[{"menuId": ${menuId},"action": "${action}"}]}
    Create Role Management    ${URL_BE}    ${accessToken}    ${xSessionId}    ${data}

    #search role id
    ${filter}=    Set Variable    ?offset=0&limit=20&orderby=roleName%7Casc&roleName=${roleName}    
    ${response_search}=    Search Role Management    ${URL_BE}    ${URL_SEARCH_ROLE}    ${accessToken}    ${xSessionId}    ${filter}
    Log    ${response_search}
    ${GetResultData}=    Get From Dictionary    ${response_search}     ${FIELD_RESULTDATA} 
    ${GetId}=    Get From Dictionary    ${GetResultData}[0]     ${FIELD_ID}
    [Return]    ${menuId}


Create UserAccount
    #Headers
	${headers}=    Create Dictionary        Content-Type=${HEADER_CONTENT_TYPE}    x-access-token=${accessToken}    x-session-id=${xSessionId}${current_timestamp}    x-transaction-id=${xTransacrionId}  
	Log To Console    Headers is : ${headers}

	#Body
	${random_phoneNumber}=    generate random string    8    [NUMBERS]
	${random_string}=    Generate Random String  8  [NUMBERS]
	${email}=    Set Variable    ${random_string}@gmail.com
	${random_Identification}=    generate random string    13    [NUMBERS]
    ${propertiesId}=    Set Variable    8
    ${data}=    Evaluate    {"roleId": ${GetId}[0],"titleId": 1,"password": "MjIyMg==","firstName": "${USERACCOUNT_ADDEDIT_TXT_FIRSTNAME_VALUE}${random_number}","phone": "${USERACCOUNT_ADDEDIT_TXT_PHONENUMBER_VALUE_PREFIX08}${random_phoneNumber}","identificationNo": "${random_Identification}","propertiesId": "${propertiesId}","isMaster": 0,"lastName": "${USERACCOUNT_ADDEDIT_TXT_FIRSTNAME_VALUE}${random_number}","email": "${email}"}
    Log To Console    Body is : ${data}

    #Response
    ${res}=    Run keyword And Continue On Failure    Post Api Request    ${URL_BE}    ${URL_CREATE_USERACCOUNT}    ${headers}    ${data}
	Log To Console    Response is : ${res}

Search UserAccount
    [Arguments]    ${url}    ${accessToken}    ${xSessionId}    ${filter}
    #Headers
	${headers}=    Create Dictionary        Content-Type=${HEADER_CONTENT_TYPE}    x-access-token=${accessToken}    x-session-id=${xSessionId}${current_timestamp}    x-transaction-id=${xTransacrionId}  
	Log To Console    Headers is : ${headers}
				
    ${res}=    Run keyword And Continue On Failure    Get Api Request    ${url}    ${URL_SEARCH_USERACCOUNT}${filter}    ${headers} 
    Log    ${res}
	[Return]    ${res}

