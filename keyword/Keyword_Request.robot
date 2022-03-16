*** Settings ***
Library    RequestsLibrary
#Library    HttpLibrary.HTTP

#Library Document
#http://marketsquare.github.io/robotframework-requests/doc/RequestsLibrary.html
#https://robotframework.org/robotframework/latest/libraries/Collections.html
#https://robotframework.org/robotframework/latest/libraries/String.html
#https://robotframework-thailand.github.io/robotframework-jsonlibrary/JSONLibrary.html

*** Keywords ***
#Get
Get Api Request
    [Arguments]    ${url}    ${pathUrl}    ${headers}
    Create Session    ${NAME_SESSION_GET}     ${url}    verify=false    disable_warnings=1
    Log To Console    ${url}${pathUrl} 
    Log    URL${\n}${url}${pathUrl}
    Log    HEADER${\n}${headers}

    ${res}=    GET On Session    ${NAME_SESSION_GET}     ${pathUrl}     expected_status=anything    headers=${headers}
    Log    RESPONSE${\n}${res.json()}
    [return]    ${res.json()}
	
#Post
Post Api Request
    [Arguments]    ${url}    ${pathUrl}    ${headers}   ${data}
    Create Session    ${NAME_SESSION_POST}    ${url}    verify=false    disable_warnings=1
    Log To Console    ${url}${pathUrl} 
    Log    URL${\n}${url}${pathUrl}
    Log    HEADER${\n}${headers}
    Log    BODY${\n}${data} 
    
    ${res}=    POST On Session    ${NAME_SESSION_POST}    ${pathUrl}     expected_status=anything    headers=${headers}    json=${data} 
    Log To Console    POST${res}   
    # Log To Console    ${res.Content}
	Log    RESPONSE${\n}${res.json()}
	# Log To Console    ${res.text}
	[return]    ${res.json()} 
	
#Put
Put Api Request
    [Arguments]    ${url}    ${pathUrl}   ${headers}    ${data}
    Create Session    ${NAME_SESSION_PUT}    ${url}    verify=true    #for https
    Log    URL${\n}${url}${pathUrl}
    Log    HEADER${\n}${headers}
    Log    BODY${\n}${data} 
    ${res}=  PUT On Session    ${NAME_SESSION_PUT}    ${pathUrl}    expected_status=anything    json=${data}    headers=${headers}
	Log    RESPONSE${\n}${res.json()}
    [return]    ${res.json()}
	
#Delete	
Delete Api Request
    [Arguments]    ${url}    ${pathUrl}    ${headers}   ${data}
    Create Session    ${NAME_SESSION_DELETE}    ${url}    verify=true    #for https
    Log To Console    ${url}${pathUrl} 
    Log    URL${\n}${url}${pathUrl}
    Log    HEADER${\n}${headers}
    Log    BODY${\n}${data} 
    ${res}=    DELETE On Session    ${NAME_SESSION_DELETE}    ${pathUrl}    expected_status=anything    json=${data}    headers=${headers}
	# ${res}=    DELETE On Session    ${NAME_SESSION_DELETE}    ${pathUrl}    expected_status=anything    headers=${headers}
	
    ${res_json}=    Set Variable
    Log    RESPONSE${\n}${res.json()}
    #Log To Console    ${res.json()}
	[return]    ${res.json()}

#Patch
Patch Api Request
    [Arguments]    ${url}    ${pathUrl}   ${headers}    ${data}
    Create Session    ${NAME_SESSION_PUT}    ${url}    verify=true    #for https
    Log    URL${\n}${url}${pathUrl}
    Log    HEADER${\n}${headers}
    Log    BODY${\n}${data} 
    ${res}=  PATCH On Session    ${NAME_SESSION_PUT}    ${pathUrl}    expected_status=anything    json=${data}    headers=${headers}
	Log    RESPONSE${\n}${res.json()}
    [return]    ${res.json()}


#Delete	Not Data
Delete Api Request Not Data
    [Arguments]    ${url}    ${pathUrl}    ${headers}
    Create Session    ${NAME_SESSION_DELETE}    ${url}    verify=true    #for https
    Log To Console    ${url}${pathUrl} 
    Log    URL${\n}${url}${pathUrl}
    Log    HEADER${\n}${headers}

	${res}=    DELETE On Session    ${NAME_SESSION_DELETE}    ${pathUrl}    expected_status=anything    headers=${headers}
	
    ${res_json}=    Set Variable
    Log    RESPONSE${\n}${res.json()}
    #Log To Console    ${res.json()}
	[return]    ${res.json()}    
	
#Should Have Response Status Code = 200
Response Status Code Should Have Success
    [Arguments]    ${res}
	Should Be Equal As Integers    ${res.status_code}  ${STATUS_CODE_SUCCESS}

#Should Have Response Status Code = 201
Response Status Code Should Have Success Create
    [Arguments]    ${res}
	Should Be Equal As Integers    ${res.status_code}  ${STATUS_CODE_CREATE}

# #Check Response ResultCode 
# Response ResultCode Should Have
#     [Arguments]    ${res_json}
# 	${resultCode}=    Get From Dictionary    ${res_json}     ${FIELD_RESULT_CODE}
# 	${resultDescription}=    Get From Dictionary    ${res_json}     ${FIELD_RESULT_DESCRIPTION}
# 	run keyword If    ${resultCode} == ${VALUE_RESULTCODE_20000}    Response ResultCode Should Have Success    ${resultCode}    ${resultDescription}
#     ...                ELSE  Response ResultCode Should Have SystemError        ${resultCode}    ${resultDescription}

# #Should Have Response ResultCode = 20000 and resultDescription = Success
# Response ResultCode Should Have Success
#     [Arguments]    ${resultCode}    ${resultDescription}
#     Run keyword And Continue On Failure    Should Be Equal As Strings    ${resultCode}    ${VALUE_RESULTCODE_20000} 
# 	Run keyword And Continue On Failure    Should Be Equal As Strings    ${resultDescription}    ${VALUE_RESULTDESCRIPTION_SUCCESS}
  
  
# #Check Response ResultCode 
# Response ResultCode Should Have
#     [Arguments]    ${res_json}    ${res_name}    ${field_OperationStatus}    ${field_Code}    ${field_Description}  

#     # Log To Console    1111:${res_json}
#     # Log To Console    res_name:${res_name}
#     # Log To Console    3333:${field_OperationStatus}
#     # Log To Console    field_Code:${field_Code} 
#     # Log To Console    field_Description:${field_Description}

# 	${operationStatus}=    Get From Dictionary    ${res_json}     ${field_OperationStatus}    #OperationStatus
# 	${resultCode}=    Get From Dictionary    ${operationStatus}     ${field_Code}    #Code

#     ${field_Description_Developermassage}=    Set Variable If    '${res_name}'!='${CREATEATHINGHAVEWORKER}' or '${res_name}'!='${CREATEATHINGNOTHAVEWORKER}'    ${field_Description}
#     ...    '${res_name}'!='${CREATEAWORKER}'    ${FIELD_DEVELOPERMESSAGE}
#     ...    '${res_name}'=='${CREATEATHINGHAVEWORKER}'    ${FIELD_DEVELOPERMESSAGE}
#     ...    '${res_name}'=='${CREATEATHINGNOTHAVEWORKER}'    ${FIELD_DEVELOPERMESSAGE}
#     ...    '${res_name}'=='${CREATEAWORKER}'    ${FIELD_DEVELOPERMESSAGE}
#     ...    '${res_name}'=='${RETURNSALISTOFWHITELIST}'    ${FIELD_DEVELOPERMESSAGE}
#     # ...    '${res_name}'=='${CREATEAWHITELIST}'    ${FIELD_STATUSDESCRIPTION}
# 	${resultDescription}=    Get From Dictionary    ${operationStatus}     ${field_Description_Developermassage}        #Description

# 	#Log To Console    ${operationStatus}
# 	#Log To Console    ${resultCode}
# 	Log To Console    resultDescription:${resultDescription}
# 	#Log To Console    ${VALUE_RESULTCODE_20000}
# 	${ResponseResultCodeShouldHaveSuccess}=    run keyword If    ${resultCode} == ${VALUE_RESULTCODE_20000}    Response ResultCode Should Have Success    ${resultCode}    ${resultDescription}    ${res_name}
#     #...    FAIL    msg=${resultCode}${resultDescription}
# 	...    ELSE IF    ${resultCode} == ${VALUE_RESULTCODE_20100}    Response ResultCode Should Have Success    ${resultCode}    ${resultDescription}    ${res_name}
# 	#...    FAIL    msg=${resultCode}${resultDescription}
# 	...    ELSE IF    ${resultCode} != ${VALUE_RESULTCODE_20000} and ${resultCode} != ${VALUE_RESULTCODE_20100}    Fail    msg=${res_name} Error :[${resultCode}:${resultDescription}]
# 	#run keyword If    ${resultCode} == ${EMPTY}    Fail    msg=!!API "${res_name}" Failed!!
# 	#run keyword If    ${resultCode} != ${VALUE_RESULTCODE_20000} and ${resultCode} != ${VALUE_RESULTCODE_20100}    Fail    msg=[${resultCode}:${resultDescription}]
# 	#run keyword If    ${resultCode} != ${VALUE_RESULTCODE_20100}    Fail    msg=${resultCode}${resultDescription}	
#     ...    ELSE IF    ${resultCode} == ${VALUE_RESULTCODE_20000} or ${resultCode} == ${VALUE_RESULTCODE_20100}    Log    ${res_name} Succeeds :[${resultCode}:${resultDescription}]
#     # ...    ELSE IF    ${resultCode} == ${VALUE_RESULTCODE_20100} and     Response ResultCode Should Have Success    ${resultCode}    ${resultDescription}    ${res_name}
#     Log To Console    ResponseResultCodeShouldHaveSuccess${ResponseResultCodeShouldHaveSuccess}
#     [Return]    ${ResponseResultCodeShouldHaveSuccess}

# #Check Response ResultCode 
# Response ResultCode Should Have
#     [Arguments]    ${res_json}
# 	${resultCode}=    Get From Dictionary    ${res_json}     ${FIELD_RESULT_CODE}
# 	${resultDescription}=    Get From Dictionary    ${res_json}     ${FIELD_RESULT_DESCRIPTION}
# 	run keyword If    ${resultCode} == ${VALUE_RESULTCODE_20000}    Response ResultCode Should Have Success    ${resultCode}    ${resultDescription}
#     ...                ELSE  Response ResultCode Should Have SystemError        ${resultCode}    ${resultDescription}


#Check Response ResultCode 
Response ResultCode Should Have
    [Arguments]    ${res_json}    ${res_name}    ${field_Code}    ${field_DescriptionTH}    ${field_DescriptionEN}  

    # Log To Console    res_json:${res_json}
    # Log To Console    res_name:${res_name}
    # Log To Console    field_Code:${field_Code} 
    # Log To Console    field_Description:${field_Description}
	${resultCode}=    Get From Dictionary    ${res_json}     ${field_Code}    #Code
	${resultDescription}=    Get From Dictionary    ${res_json}     ${field_DescriptionTH}        #Description
    ${resultDescriptionEN}=    Get From Dictionary    ${res_json}     ${field_DescriptionEN}        #Description

	#Log To Console    ${operationStatus}
	#Log To Console    ${resultCode}
	# Log To Console    resultDescription:${resultDescription}
	#Log To Console    ${VALUE_RESULTCODE_20000}
	${ResponseResultCodeShouldHaveSuccess}=    run keyword If    ${resultCode} == ${VALUE_RESULTCODE_20000}    Response ResultCode Should Have Success    ${resultCode}    ${resultDescription}    ${resultDescriptionEN}    ${res_name}
    #...    FAIL    msg=${resultCode}${resultDescription}
	...    ELSE IF    ${resultCode} == ${VALUE_RESULTCODE_20100}    Response ResultCode Should Have Success    ${resultCode}    ${resultDescription}    ${resultDescriptionEN}    ${res_name}
	...    ELSE IF    ${resultCode} != ${VALUE_RESULTCODE_20000} and ${resultCode} != ${VALUE_RESULTCODE_20100}    Fail    msg=${res_name} Error :[${resultCode}:${resultDescription}:${resultDescriptionEN}]
    ...    ELSE IF    ${resultCode} == ${VALUE_RESULTCODE_20000} or ${resultCode} == ${VALUE_RESULTCODE_20100}    Log    ${res_name} Succeeds :[${resultCode}:${resultDescription}:${resultDescriptionEN}]
    # Log To Console    ResponseResultCodeShouldHaveSuccess${ResponseResultCodeShouldHaveSuccess}
    [Return]    ${ResponseResultCodeShouldHaveSuccess}


Response ResultCode Should Have Success
    [Arguments]    ${resultCode}    ${resultDescription}    ${resultDescriptionEN}    ${res_name}    

    ${shouldBeEqualResultCode}=    Run Keyword If    "${resultCode}" == "${VALUE_RESULTCODE_20000}"    Should Be Equal As Strings    ${resultCode}    ${VALUE_RESULTCODE_20000}
    ...    ELSE IF    ${resultCode} == "${VALUE_RESULTCODE_20100}"    Should Be Equal As Strings    ${resultCode}    ${VALUE_RESULTCODE_20100}

    # Log To Console    shouldBeEqualResultCode${shouldBeEqualResultCode}
    
    ${shouldBeEqualResultDescription}=    Run Keyword If    '${res_name}' == '${USERLOGIN}'    Run keyword And Continue On Failure    Should Be Equal As Strings    ${resultDescription}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN }    #delete
    # ...    ELSE IF    '${res_name}' == '${CREATEPARTNER}'    Run keyword And Continue On Failure    Should Be Equal As Strings    ${resultDescription}    ${VALUE_DESCRIPTION_CREATEPARTNER_SUCCESS}    #create
    ...    ELSE IF    '${res_name}' == '${DELETEBANKACCOUNT}'    Run keyword And Continue On Failure    Should Be Equal As Strings    ${resultDescription}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}    #delete
    ...    ELSE IF    '${res_name}' == '${CREATEMULCTMETHOD}'    Run keyword And Continue On Failure    Should Be Equal As Strings    ${resultDescription}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}    #create
    ...    ELSE IF    '${res_name}' == '${DELETEMULCTMETHOD}'    Run keyword And Continue On Failure    Should Be Equal As Strings    ${resultDescription}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}    #delete
    ...    ELSE IF    '${res_name}' == '${CREATEMULCTCODE}'    Run keyword And Continue On Failure    Should Be Equal As Strings    ${resultDescription}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}    #create
    ...    ELSE IF    '${res_name}' == '${DELETEMULCTCODE}'    Run keyword And Continue On Failure    Should Be Equal As Strings    ${resultDescription}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}    #delete
    ...    ELSE IF    '${res_name}' == '${CREATECHECKASSET}'    Run keyword And Continue On Failure    Should Be Equal As Strings    ${resultDescription}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}    #create
    ...    ELSE IF    '${res_name}' == '${UPDATECHECKASSET}'    Run keyword And Continue On Failure    Should Be Equal As Strings    ${resultDescription}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}    #delete
    
    
    # Log To Console    shouldBeEqualResultDescription${shouldBeEqualResultDescription}

    ${shouldBeEqualResultDescriptionEN}=    Run Keyword If    '${res_name}' == '${USERLOGIN}'    Run keyword And Continue On Failure    Should Be Equal As Strings    ${resultDescriptionEN}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}    #delete
    # ...    ELSE IF    '${res_name}' == '${CREATEPARTNER}'    Run keyword And Continue On Failure    Should Be Equal As Strings    ${resultDescription}    ${VALUE_DESCRIPTION_CREATEPARTNER_SUCCESS}    #create
    ...    ELSE IF    '${res_name}' == '${DELETEBANKACCOUNT}'    Run keyword And Continue On Failure    Should Be Equal As Strings    ${resultDescriptionEN}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}    #delete
    ...    ELSE IF    '${res_name}' == '${CREATEMULCTMETHOD}'    Run keyword And Continue On Failure    Should Be Equal As Strings    ${resultDescriptionEN}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}    #create
    ...    ELSE IF    '${res_name}' == '${DELETEMULCTMETHOD}'    Run keyword And Continue On Failure    Should Be Equal As Strings    ${resultDescriptionEN}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}    #delete
    ...    ELSE IF    '${res_name}' == '${CREATEMULCTCODE}'    Run keyword And Continue On Failure    Should Be Equal As Strings    ${resultDescriptionEN}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}    #create
    ...    ELSE IF    '${res_name}' == '${DELETEMULCTCODE}'    Run keyword And Continue On Failure    Should Be Equal As Strings    ${resultDescriptionEN}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}    #delete
    ...    ELSE IF    '${res_name}' == '${CREATECHECKASSET}'    Run keyword And Continue On Failure    Should Be Equal As Strings    ${resultDescriptionEN}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}    #create
    ...    ELSE IF    '${res_name}' == '${UPDATECHECKASSET}'    Run keyword And Continue On Failure    Should Be Equal As Strings    ${resultDescriptionEN}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}    #delete
        
    # Log To Console    shouldBeEqualResultDescription${shouldBeEqualResultDescription}

    ${result}=    Set Variable If    '${shouldBeEqualResultCode}'=='None' and '${shouldBeEqualResultDescription}'=='None' and '${shouldBeEqualResultDescriptionEN}'=='None'    true
    ...    '${shouldBeEqualResultCode}'!='None' and '${shouldBeEqualResultDescription}'!='None' and '${shouldBeEqualResultDescriptionEN}'!='None'    false

    # Log To Console    resultresultresult${result}
    [Return]    ${result}
    
  
#Should Have Response ResultCode = 50000 and resultDescription = System error
Response ResultCode Should Have SystemError
    [Arguments]    ${resultCode}    ${resultDescription}
    Run keyword And Continue On Failure    Should Be Equal As Strings    ${resultCode}    ${VALUE_RESULTCODE_50000} 
	Run keyword And Continue On Failure    Should Be Equal As Strings    ${resultDescription}    ${VALUE_RESULTDESCRIPTION_SYSTEMERROR}  

Response ResultCode Should Have Error
    [Arguments]    ${res_json}    ${res_name}   ${field_OperationStatus}    ${field_Code}    ${field_Description}    ${Code}    ${Description}  

    # Log To Console    field_Code :${field_Code}
    # Log To Console    field_Description :${field_Description}
    # Log To Console    Code :${Code}
    # Log To Console    Description :${Description}

	${operationStatus}=    Get From Dictionary    ${res_json}     ${field_OperationStatus}    #OperationStatus
	${resultCode}=    Get From Dictionary    ${operationStatus}     ${field_Code}    #Code
    # Log To Console    operationStatus :${operationStatus}
    ${field_Description_Developermassage}=    Set Variable If    '${res_name}'!='${CREATEATHING}'    ${field_Description}
    ...    '${res_name}'!='${CREATEAWORKER}'    ${FIELD_DEVELOPERMESSAGE}
    ...    '${res_name}'=='${CREATEATHING}'    ${FIELD_DEVELOPERMESSAGE}
    ...    '${res_name}'=='${CREATEAWORKER}'    ${FIELD_DEVELOPERMESSAGE}
    ...    '${res_name}'=='${CREATEAWHITELIST}'    ${FIELD_DEVELOPERMESSAGE}

    # Log To Console    field_Description_Developermassage :${field_Description_Developermassage}
	${resultDescription}=    Run keyword And Continue On Failure    Get From Dictionary    ${operationStatus}     ${field_Description_Developermassage}        #Description
	# Log To Console    resultDescription :${resultDescription}
    # Log To Console    resultCode${resultCode}
    # Log To Console    Code${Code}
    # Log To Console    resultDescription${resultDescription}
    # Log To Console    Description${Description}

    ${shouldBeEqualResultCode}=    Run keyword And Continue On Failure    Should Be Equal As Strings    ${resultCode}    ${Code}
    ${shouldBeEqualResultDescription}=    Run keyword And Continue On Failure    Should Be Equal As Strings    ${resultDescription}    ${Description}
    # Log To Console    shouldBeEqualResultCode${shouldBeEqualResultCode}
    # Log To Console    shouldBeEqualResultDescription${shouldBeEqualResultDescription}

    ${result}=    Set Variable If    '${shouldBeEqualResultCode}'=='None' and '${shouldBeEqualResultDescription}'=='None'    true
    ...    '${shouldBeEqualResultCode}'!='None' and '${shouldBeEqualResultDescription}'!='None'    false

    Log To Console    resultresultresult${result}
    [Return]    ${result}


# Response Code and Description Should Have Error
#     [Arguments]    ${resultCode}    ${resultDescription}    ${res_name}    ${Description}    

#     # Log To Console    resultCode : ${resultCode}  
#     # Log To Console    resultDescription : ${resultDescription}   
#     # Log To Console    res_name : ${res_name} 
#     # Log To Console    Description : ${Description}   

#     ${shouldBeEqualResultCode}=    Run Keyword If    "${resultCode}" == "${VALUE_RESULTCODE_40400}"    Should Be Equal As Strings    ${resultCode}    ${VALUE_RESULTCODE_40400}
#     ...    ELSE IF    ${resultCode} == "${VALUE_RESULTCODE_40000}"    Should Be Equal As Strings    ${resultCode}    ${VALUE_RESULTCODE_40000}

#     ${shouldBeEqualResultDescription}=    Run Keyword If    '${res_name}' == '${CREATEAWHITELIST}' and '${Description}' == '${VALUE_DESCRIPTION_THETHINGIDENTIFIERCOULDNOTBEFOUND_ERROR}'    Run keyword And Continue On Failure    Should Be Equal As Strings    ${resultDescription}    ${VALUE_DESCRIPTION_THETHINGIDENTIFIERCOULDNOTBEFOUND_ERROR}   
#     ...    ELSE IF    '${res_name}' == '${CREATEAWHITELIST}' and '${Description}' == '${VALUE_DESCRIPTION_THECLIENTREQUESTEDMISSINGORINVALIDFORMAT_ERROR}'    Run keyword And Continue On Failure    Should Be Equal As Strings    ${resultDescription}    ${VALUE_DESCRIPTION_THECLIENTREQUESTEDMISSINGORINVALIDFORMAT_ERROR} 


#     ${result}=    Set Variable If    '${shouldBeEqualResultCode}'=='None' and '${shouldBeEqualResultDescription}'=='None'    true
#     ...    '${shouldBeEqualResultCode}'!='None' and '${shouldBeEqualResultDescription}'!='None'    false

#     # Log To Console    resultresultresult${result}
#     [Return]    ${result}

