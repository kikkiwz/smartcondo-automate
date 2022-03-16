*** Variables ***
#Product
# ${URL}    https://api-condo.smartrms.net

#Automate
${URL}    http://202.162.79.200:8024
${URL}    http://10.1.2.191:8092
${URL_BE}    http://202.162.79.200:8024
#header
${HEADER_CONTENT_TYPE}    application/json
${HEADER_ACCEPT}    */* 

#NAME_SESSION
${NAME_SESSION_GET}    GET
${NAME_SESSION_POST}    POST
${NAME_SESSION_PUT}    PUT
${NAME_SESSION_DELETE}    DELETE
${NAME_SESSION_PATCH}    PATCH

#field resultCode resultDescription 
${FIELD_BEARER}    Bearer 
${FIELD_OPERATIONSTATUS}    OperationStatus
${FIELD_CODE}    Code
${FIELD_DESCRIPTION}    Description
${FIELD_OPERATIONSTATUS_LOWCASE}    operationStatus
${FIELD_CODE_LOWCASE}    code
${FIELD_DESCRIPTION_LOWCASE}    description
${FIELD_DEVELOPERMESSAGE}    DeveloperMessage
${FIELD_STATUS}    Status 
${FIELD_STATUSDESCRIPTION}    StatusDescription

#status code
${STATUS_CODE_SUCCESS}    200
${STATUS_CODE_CREATE}    201

#resultCode 
${VALUE_RESULTCODE_20000}    20000
${VALUE_RESULTCODE_20100}    20100
${VALUE_RESULTCODE_50000}    50000
${VALUE_RESULTCODE_40400}    40400
${VALUE_RESULTCODE_40000}    40000
${VALUE_RESULTCODE_40301}    40301

#resultDescription 
${VALUE_RESULTDESCRIPTION_SUCCESS_TH}    ดำเนินการสำเร็จ
${VALUE_RESULTDESCRIPTION_SUCCESS_EN}    Success
${VALUE_RESULTDESCRIPTION_INVAIDUSERNAMEORPASSWORD_TH}    ชื่อผู้ใช้งาน หรือรหัสผ่าน ไม่ถูกต้อง
${VALUE_RESULTDESCRIPTION_INVAIDUSERNAMEORPASSWORD_EN}    Invalid username or password.
${VALUE_RESULTDESCRIPTION_DATANOTFOUND_TH}    ไม่พบข้อมูล
${VALUE_RESULTDESCRIPTION_DATANOTFOUND_EN}    Data Not Found
${VALUE_RESULTDESCRIPTION_NOTELEPHONENUMBERISINTHESYSTEM_TH}    ไม่มีเบอร์โทรศัพท์นี้อยู่ในระบบ
${VALUE_RESULTDESCRIPTION_NOTELEPHONENUMBERISINTHESYSTEM_EN}    No telephone number is in the system
${VALUE_RESULTDESCRIPTION_INTERNALSERVERERROR_TH}    เกิดข้อผิดพลาดบางประการ
${VALUE_RESULTDESCRIPTION_INTERNALSERVERERROR_EN}    Internal Server Error
${VALUE_RESULTDESCRIPTION_DATAALRADYEXISTED_TH}    ข้อมูลซ้ำในระบบ
${VALUE_RESULTDESCRIPTION_DATAALRADYEXISTED_EN}    Data Already Existed



