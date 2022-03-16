*** Keywords ***
################################################################-- Create RoomOwner--################################################################
################################################################-- Thai--################################################################
Create RoomOwner input all field data Thai

#====== Check DB ==========
#ห้อง B201
# Owner type[Thai]
# Title[นางสาว Miss]
# Education[ปริญญาตรี Bachelor’s degree]
# Occupation[พนักงาน / ลูกจ้างบริษัทเอกชน Employees of private companies]
# Salary (Baht)[50,000 - 100,000 บาท]
# Car type[รถยนต์]
# Manage type[อยู่เอง]
# Language of documents[ภาษาไทย]

    [Arguments]    ${roomNo}
    #========== Create CheckAsset ====== 
    #Create data CheckAsset receive checkAssetId
    Run keyword And Continue On Failure    Request CreateData for CheckAsset      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_CHECKASSET_NAMETH_VALUE}    ${DATA_CHECKASSET_NAMEEN_VALUE}    ${DATA_CHECKASSET_REMARK_VALUE}
    
    #Click Create room owner
    Click Element Page    ${MENU_LBL_TYPEROOM_CREATEROOMOWNER_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_ADD_LBL_NUMBERROOM_TH} ${roomNo}

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}
    #Title
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_TITLE_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_TITLE_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TITLE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TITLE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_TITLE_MISS_TH_VALUE}    ${ROOMOWNER_ADD_LBL_TITLE_1_LOCATOR}

    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_1_LOCATOR}    ${ROOMOWNER_FIRSTNAME_1_VALUE}
    #Last name
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_LASTNAME_1_LOCATOR}    ${ROOMOWNER_LASTNAME_1_VALUE}
    #Nickname
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_NICKNAME_1_LOCATOR}    ${ROOMOWNER_NICKNAME_1_VALUE}
    
    #Birth date
    # 30/11/1991
     Select Calendar Last Year    ${ROOMOWNER_ADD_DATE_BIRTHDATE_1_BUTTON_LOCATOR}    ${ROOMOWNER_BIRTHDATE_YEAR_VALUE}    ${ROOMOWNER_BIRTHDATE_INPUT_DATE_YEAROLD01_VALUE}    ${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}
    Log To Console    Identification create date

    #Identification create date
    Click Element Page    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_LOCATOR}
	# Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}
    Log To Console    Identification expire date
    #Identification expire date
    Click Element Page    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_LOCATOR}
	Sleep    0.5s
    
    #Mobile
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_MOBILE_1_LOCATOR}    ${ROOMOWNER_MOBILE_1_VALUE}
    #E-mail
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_EMAIL_1_LOCATOR}    ${ROOMOWNER_EMAIL_1_VALUE} 
    #Line ID
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_LINEID_1_LOCATOR}    ${ROOMOWNER_LINEID_1_VALUE}
    #Tax identification number
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_1_LOCATOR}    ${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}
    #Education
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_EDUCATION_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_EDUCATION_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_EDUCATION_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_EDUCATION_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_EDUCATION_BACHELORSDEGREE_TH_VALUE}    ${ROOMOWNER_ADD_LBL_EDUCATION_1_LOCATOR}

    #Salary (Baht)
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_SALARY_2_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_SALARY_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_SALARY_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_SALARY_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_SALARY_BATH_50000_100000_TH_VALUE}    ${ROOMOWNER_ADD_LBL_SALARY_2_1_LOCATOR}

    #Address
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ADDRESS_1_LOCATOR}    ${ROOMOWNER_ADDRESS_1_VALUE}

    ############## Add car ############## 

    #Click Add car
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDCAR_1_LOCATOR}
    
    #Car type
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_CARTYPE_1_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_CARTYPE_1_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_CARTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_CARTYPE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_CARTYPE_CAR_TH_VALUE}    ${ROOMOWNER_ADD_LBL_CARTYPE_1_1_LOCATOR}

    #Car plate number
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_CARPLATENUMBER_1_1_LOCATOR}    ${ROOMOWNER_CARPLATENUMBER_1_VALUE}

    ############## Add guest ############## 

    ############## Transfer detail ############## 
    #Transfer date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_LOCATOR}
	Sleep    0.5s
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    #Arrival date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_LOCATOR}
	Sleep    0.5s
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    
    #Appointment date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_LOCATOR}
	Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}
    # Click Element Page    ${ROOMOWNER_ADD_LBL_APPOINTMENTDATE_LOCATOR}            #Click calendar calendar

    # Accept date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_LOCATOR}
	Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}

    #Warranty end date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_LOCATOR}
	Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}
    
    #Occupation
    Check Select many dropdown generateId for dx     ${DEFAULT_TYPE_LONG}    ${ROOMOWNER_ADD_DDL_OCCUPATION_2_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_OCCUPATION_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_OCCUPATION_OTHER_TH_VALUE}    ${ROOMOWNER_ADD_LBL_OCCUPATION_2_1_LOCATOR}

    #[กรอกอาชีพอื่นๆ]
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_OCCUPATION_OTHER_2_1_LOCATOR}    ${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}
    
    #Manage type
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LOCATOR}    ${ROOMOWNER_ADD_INPUT_MANAGETYPE_LOCATOR}    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_MANAGETYPE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_MANAGETYPE_SELFLIVE_TH_VALUE}    ${ROOMOWNER_ADD_LBL_MANAGETYPE_LOCATOR}
    #Language of documents
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_INPUT_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}    ${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_LOCATOR}

    #Address (for invoicing, receipt)
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ADDRESS_FORINVOICINGRECEIPT_LOCATOR}    ${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}
    
    #Electric start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ELECTRICSTARTUNIT_LOCATOR}    ${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}
    #Water start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_WATERSTARTUNIT_LOCATOR}    ${ROOMOWNER_WATERSTARTUNIT_1_VALUE}

    ############## Asset list ############## 
    #Remark
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_1_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_1_VALUE}
    #Remark
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_2_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    
    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_TH}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    ############## Code for connect room ############## 
    #Code for connect room
    Wait Until Contains Element Text Should Be    ${ALERT_HEADER_CODEFORCONNECTROOM_LOCATOR}    ${ALERT_HEADER_CODEFORCONNECTROOM_TH}
    #Code
    # Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_CODEFORCONNECTROOM_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    #Copy code Button
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_COPYCODE_LOCATOR}    ${ALERT_BTN_COPYCODE_TH}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}","title":"${ROOMOWNER_TITLE_MISSID_VALUE}","firstName":"${ROOMOWNER_FIRSTNAME_1_VALUE}","lastName":"${ROOMOWNER_LASTNAME_1_VALUE}","companyName":"${NONE}","nickname":"${ROOMOWNER_NICKNAME_1_VALUE}","shortName":"${NONE}","birthDate":"${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}","identificationCreateDate":"${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}","identificationExpireDate":"${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}","phone":"${ROOMOWNER_MOBILE_1_VALUE}","fax":"${NONE}","email":"${ROOMOWNER_EMAIL_1_VALUE}","lineId":"${ROOMOWNER_LINEID_1_VALUE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}","juristicId":"${NONE}","education":"${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}","occupation":"${ROOMOWNER_OCCUPATION_OTHERID_VALUE}","occupationOther":"${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}","salary":"${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}","address":"${ROOMOWNER_ADDRESS_1_VALUE}","cartype":"${ROOMOWNER_CARTYPE_CAR_TH_VALUE}","carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_TH_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_CREATE_ALLFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}

    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Set Variable If    '${i}'=='0'   "${ROOMOWNER_ASSET_REMARK_1_VALUE}"
        ...    '${i}'=='1'    "${ROOMOWNER_ASSET_REMARK_2_VALUE}"
        ...    '${i}'!='0'or'${i}'!='1'     ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_CREATE_ALLFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_CREATE_ALLFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END

Create RoomOwner input require field data Thai
#ห้อง B201
# Owner type[Thai]
# Language of documents[ภาษาไทย]
    
    [Arguments]    ${roomNo}

    #========== Create CheckAsset ====== 
    #Create data CheckAsset receive checkAssetId
    Run keyword And Continue On Failure    Request CreateData for CheckAsset      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_CHECKASSET_NAMETH_VALUE}    ${DATA_CHECKASSET_NAMEEN_VALUE}    ${DATA_CHECKASSET_REMARK_VALUE}
    
    #Click Create room owner
    Click Element Page    ${MENU_LBL_TYPEROOM_CREATEROOMOWNER_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_ADD_LBL_NUMBERROOM_TH} ${roomNo}

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_2_VALUE}
    #Title
    # Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_TITLE_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_TITLE_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TITLE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TITLE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_TITLE_MISS_TH_VALUE}    ${ROOMOWNER_ADD_LBL_TITLE_1_LOCATOR}

    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_1_LOCATOR}    ${ROOMOWNER_FIRSTNAME_2_VALUE}
    
    #Electric start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ELECTRICSTARTUNIT_LOCATOR}    ${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}
    #Water start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_WATERSTARTUNIT_LOCATOR}    ${ROOMOWNER_WATERSTARTUNIT_1_VALUE}

    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_TH}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}

    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    ############## Code for connect room ############## 
    #Code for connect room
    Wait Until Contains Element Text Should Be    ${ALERT_HEADER_CODEFORCONNECTROOM_LOCATOR}    ${ALERT_HEADER_CODEFORCONNECTROOM_TH}
    #Code
    # Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_CODEFORCONNECTROOM_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    #Copy code Button
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_COPYCODE_LOCATOR}    ${ALERT_BTN_COPYCODE_TH}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}
    
    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_2_VALUE}","title":"${NONE}","firstName":"${ROOMOWNER_FIRSTNAME_2_VALUE}","lastName":"${NONE}","companyName":"${NONE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Set Variable    ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END

Create RoomOwner input require field data 2 Owner Thai
#ห้อง B201
# Owner type[Thai]
# Language of documents[ภาษาไทย]
    
    [Arguments]    ${roomNo}

    #========== Create CheckAsset ====== 
    #Create data CheckAsset receive checkAssetId
    Run keyword And Continue On Failure    Request CreateData for CheckAsset      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_CHECKASSET_NAMETH_VALUE}    ${DATA_CHECKASSET_NAMEEN_VALUE}    ${DATA_CHECKASSET_REMARK_VALUE}
    
    #Click Create room owner
    Click Element Page    ${MENU_LBL_TYPEROOM_CREATEROOMOWNER_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_ADD_LBL_NUMBERROOM_TH} ${roomNo}

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}
    
    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_1_LOCATOR}    ${ROOMOWNER_FIRSTNAME_1_VALUE}
    
    ############## Add guest ############## 
    #Add guest
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}    ${ROOMOWNER_ADD_BTN_ADDGUEST_TH} 
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}
    
    #Click Add guest
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_2_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_2_VALUE}
    
    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_2_LOCATOR}    ${ROOMOWNER_FIRSTNAME_2_VALUE}

    #Electric start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ELECTRICSTARTUNIT_LOCATOR}    ${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}
    #Water start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_WATERSTARTUNIT_LOCATOR}    ${ROOMOWNER_WATERSTARTUNIT_1_VALUE}

    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_TH}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}

    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    ############## Code for connect room ############## 
    #Code for connect room
    Wait Until Contains Element Text Should Be    ${ALERT_HEADER_CODEFORCONNECTROOM_LOCATOR}    ${ALERT_HEADER_CODEFORCONNECTROOM_TH}
    #Code
    # Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_CODEFORCONNECTROOM_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    #Copy code Button
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_COPYCODE_LOCATOR}    ${ALERT_BTN_COPYCODE_TH}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}
    
    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}","title":"${NONE}","firstName":"${ROOMOWNER_FIRSTNAME_1_VALUE}","lastName":"${NONE}","companyName":"${NONE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"},{"tranferorType":${ROOMOWNER_TRANFERORTYPE_2_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_2_VALUE}","title":"${NONE}","firstName":"${ROOMOWNER_FIRSTNAME_2_VALUE}","lastName":"${NONE}","companyName":"${NONE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}

    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Set Variable    ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}

        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_CREATE_ALLFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END

################################################################-- Foreigners--################################################################
Create RoomOwner input all field data Foreigners
#====== Check DB ==========
#ห้อง B201
# Owner type[Foreigners]
# Title[นางสาว Miss]
# Education[ปริญญาตรี Bachelor’s degree]
# Occupation[พนักงาน / ลูกจ้างบริษัทเอกชน Employees of private companies]
# Salary (Baht)[50,000 - 100,000 บาท]
# Car type[รถยนต์]
# Manage type[อยู่เอง]
# Language of documents[ภาษาไทย]
    
    [Arguments]    ${roomNo}

    #========== Create CheckAsset ====== 
    #Create data CheckAsset receive checkAssetId
    Run keyword And Continue On Failure    Request CreateData for CheckAsset      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_CHECKASSET_NAMETH_VALUE}    ${DATA_CHECKASSET_NAMEEN_VALUE}    ${DATA_CHECKASSET_REMARK_VALUE}
    
    #Click Create room owner
    Click Element Page    ${MENU_LBL_TYPEROOM_CREATEROOMOWNER_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_ADD_LBL_NUMBERROOM_TH} ${roomNo}

    ############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "บุคคลธรรมดา - ต่างชาติ" [1] ############## 

    #Owner type *
    Select Dropdown    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_CLASS_LOCATOR}    ${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_TH_VALUE}
    Sleep    0.5s

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}
    #Title
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_TITLE_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_TITLE_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TITLE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TITLE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_TITLE_MISS_TH_VALUE}    ${ROOMOWNER_ADD_LBL_TITLE_1_LOCATOR}

    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_1_LOCATOR}    ${ROOMOWNER_FIRSTNAME_1_VALUE}
    #Last name
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_LASTNAME_1_LOCATOR}    ${ROOMOWNER_LASTNAME_1_VALUE}
    #Nickname
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_NICKNAME_1_LOCATOR}    ${ROOMOWNER_NICKNAME_1_VALUE}
    
    #Birth date
    # 30/11/1991
    #case calendar last year
    Select Calendar Last Year    ${ROOMOWNER_ADD_DATE_BIRTHDATE_1_BUTTON_LOCATOR}    ${ROOMOWNER_BIRTHDATE_YEAR_VALUE}    ${ROOMOWNER_BIRTHDATE_INPUT_DATE_YEAROLD01_VALUE}    ${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}
    Log To Console    Identification create date

    #Identification create date
    Click Element Page    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_LOCATOR}
	# Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}
    Log To Console    Identification expire date
    #Identification expire date
    Click Element Page    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_LOCATOR}
	Sleep    0.5s
    
    #Mobile
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_MOBILE_1_LOCATOR}    ${ROOMOWNER_MOBILE_1_VALUE}
    #E-mail
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_EMAIL_1_LOCATOR}    ${ROOMOWNER_EMAIL_1_VALUE} 
    #Line ID
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_LINEID_1_LOCATOR}    ${ROOMOWNER_LINEID_1_VALUE}
    # #Tax identification number
    # Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_1_LOCATOR}    ${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}
    #Education
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_EDUCATION_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_EDUCATION_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_EDUCATION_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_EDUCATION_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_EDUCATION_BACHELORSDEGREE_TH_VALUE}    ${ROOMOWNER_ADD_LBL_EDUCATION_1_LOCATOR}

    #Salary (Baht)
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_SALARY_3_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_SALARY_3_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_SALARY_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_SALARY_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_SALARY_BATH_50000_100000_TH_VALUE}    ${ROOMOWNER_ADD_LBL_SALARY_3_1_LOCATOR}

    #Address
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ADDRESS_1_LOCATOR}    ${ROOMOWNER_ADDRESS_1_VALUE}

    ############## Add car ############## 

    #Click Add car
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDCAR_1_LOCATOR}
    
    #Car type
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_CARTYPE_1_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_CARTYPE_1_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_CARTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_CARTYPE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_CARTYPE_CAR_TH_VALUE}    ${ROOMOWNER_ADD_LBL_CARTYPE_1_1_LOCATOR}

    #Car plate number
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_CARPLATENUMBER_1_1_LOCATOR}    ${ROOMOWNER_CARPLATENUMBER_1_VALUE}

    ############## Add guest ############## 

    ############## Transfer detail ############## 
    #Transfer date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_LOCATOR}
	Sleep    0.5s
    # Click Element Page    ${ROOMOWNER_ADD_LBL_TRANSFERDATE_LOCATOR}            #Click clear calendar
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    
    #Arrival date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_LOCATOR}
	Sleep    0.5s
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}

    #Appointment date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_LOCATOR}
	Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}

    # Accept date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_LOCATOR}
	Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}

    #Warranty end date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_LOCATOR}
	Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}
    
    #Occupation
    Check Select many dropdown generateId for dx     ${DEFAULT_TYPE_LONG}    ${ROOMOWNER_ADD_DDL_OCCUPATION_3_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_OCCUPATION_3_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_OCCUPATION_OTHER_TH_VALUE}    ${ROOMOWNER_ADD_LBL_OCCUPATION_3_1_LOCATOR}

    #[กรอกอาชีพอื่นๆ]
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_OCCUPATION_OTHER_3_1_LOCATOR}    ${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}
    
    #Manage type
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LOCATOR}    ${ROOMOWNER_ADD_INPUT_MANAGETYPE_LOCATOR}    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_MANAGETYPE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_MANAGETYPE_SELFLIVE_TH_VALUE}    ${ROOMOWNER_ADD_LBL_MANAGETYPE_LOCATOR}
    #Language of documents
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_INPUT_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}    ${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_LOCATOR}

    #Address (for invoicing, receipt)
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ADDRESS_FORINVOICINGRECEIPT_LOCATOR}    ${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}
    
    #Electric start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ELECTRICSTARTUNIT_LOCATOR}    ${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}
    #Water start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_WATERSTARTUNIT_LOCATOR}    ${ROOMOWNER_WATERSTARTUNIT_1_VALUE}

    ############## Asset list ############## 
    #Remark
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_1_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_1_VALUE}
    #Remark
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_2_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    
    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_TH}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}

    Sleep    2s

    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    ############## Code for connect room ############## 
    #Code for connect room
    Wait Until Contains Element Text Should Be    ${ALERT_HEADER_CODEFORCONNECTROOM_LOCATOR}    ${ALERT_HEADER_CODEFORCONNECTROOM_TH}
    #Code
    # Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_CODEFORCONNECTROOM_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    #Copy code Button
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_COPYCODE_LOCATOR}    ${ALERT_BTN_COPYCODE_TH}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    317
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}","title":"${ROOMOWNER_TITLE_MISSID_VALUE}","firstName":"${ROOMOWNER_FIRSTNAME_1_VALUE}","lastName":"${ROOMOWNER_LASTNAME_1_VALUE}","companyName":"${NONE}","nickname":"${ROOMOWNER_NICKNAME_1_VALUE}","shortName":"${NONE}","birthDate":"${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}","identificationCreateDate":"${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}","identificationExpireDate":"${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}","phone":"${ROOMOWNER_MOBILE_1_VALUE}","fax":"${NONE}","email":"${ROOMOWNER_EMAIL_1_VALUE}","lineId":"${ROOMOWNER_LINEID_1_VALUE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}","occupation":"${ROOMOWNER_OCCUPATION_OTHERID_VALUE}","occupationOther":"${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}","salary":"${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}","address":"${ROOMOWNER_ADDRESS_1_VALUE}","cartype":"${ROOMOWNER_CARTYPE_CAR_TH_VALUE}","carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_TH_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_CREATE_FOREIGNERS_ALLFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Set Variable If    '${i}'=='0'   "${ROOMOWNER_ASSET_REMARK_1_VALUE}"
        ...    '${i}'=='1'    "${ROOMOWNER_ASSET_REMARK_2_VALUE}"
        ...    '${i}'!='0'or'${i}'!='1'     ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_CREATE_FOREIGNERS_ALLFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_CREATE_FOREIGNERS_ALLFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END

Create RoomOwner input require field data Foreigners
#ห้อง B201
# Owner type[Foreigners]
    
    [Arguments]    ${roomNo}
    
    #========== Create CheckAsset ====== 
    #Create data CheckAsset receive checkAssetId
    Run keyword And Continue On Failure    Request CreateData for CheckAsset      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_CHECKASSET_NAMETH_VALUE}    ${DATA_CHECKASSET_NAMEEN_VALUE}    ${DATA_CHECKASSET_REMARK_VALUE}

    #Click Create room owner
    Click Element Page    ${MENU_LBL_TYPEROOM_CREATEROOMOWNER_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_ADD_LBL_NUMBERROOM_TH} ${roomNo}

    ############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "บุคคลธรรมดา - ต่างชาติ" [1] ############## 

    #Owner type *
    Select Dropdown    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_CLASS_LOCATOR}    ${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_TH_VALUE}
    Sleep    0.5s

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}

    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_1_LOCATOR}    ${ROOMOWNER_FIRSTNAME_1_VALUE}
    
    #Electric start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ELECTRICSTARTUNIT_LOCATOR}    ${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}
    #Water start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_WATERSTARTUNIT_LOCATOR}    ${ROOMOWNER_WATERSTARTUNIT_1_VALUE}

    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_TH}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}

    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    ############## Code for connect room ############## 
    #Code for connect room
    Wait Until Contains Element Text Should Be    ${ALERT_HEADER_CODEFORCONNECTROOM_LOCATOR}    ${ALERT_HEADER_CODEFORCONNECTROOM_TH}
    #Code
    # Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_CODEFORCONNECTROOM_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    #Copy code Button
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_COPYCODE_LOCATOR}    ${ALERT_BTN_COPYCODE_TH}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}
    
    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}","title":"${NONE}","firstName":"${ROOMOWNER_FIRSTNAME_1_VALUE}","lastName":"${NONE}","companyName":"${NONE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_CREATE_FOREIGNERS_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Set Variable    ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_CREATE_FOREIGNERS_REQUIREDFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_CREATE_FOREIGNERS_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END

Create RoomOwner input require field data 2 Owner Foreigners
#ห้อง B201
# Owner type[Thai]
# Language of documents[ภาษาไทย]
    
    [Arguments]    ${roomNo}

    #========== Create CheckAsset ====== 
    #Create data CheckAsset receive checkAssetId
    Run keyword And Continue On Failure    Request CreateData for CheckAsset      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_CHECKASSET_NAMETH_VALUE}    ${DATA_CHECKASSET_NAMEEN_VALUE}    ${DATA_CHECKASSET_REMARK_VALUE}
    
    #Click Create room owner
    Click Element Page    ${MENU_LBL_TYPEROOM_CREATEROOMOWNER_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_ADD_LBL_NUMBERROOM_TH} ${roomNo}
    
    ############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "บุคคลธรรมดา - ต่างชาติ" [1] ############## 

    #Owner type *
    Select Dropdown    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_CLASS_LOCATOR}    ${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_TH_VALUE}
    Sleep    0.5s

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}
    
    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_1_LOCATOR}    ${ROOMOWNER_FIRSTNAME_1_VALUE}
    
    ############## Add guest ############## 
    #Add guest
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}    ${ROOMOWNER_ADD_BTN_ADDGUEST_TH} 
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}
    
    #Click Add guest
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}

    ############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "บุคคลธรรมดา - ต่างชาติ" [1] ############## 

    #Owner type *
    Select Dropdown    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_1_2_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_CLASS_LOCATOR}    ${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_TH_VALUE}
    Sleep    0.5s

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_2_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_2_VALUE}
    
    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_2_LOCATOR}    ${ROOMOWNER_FIRSTNAME_2_VALUE}

    #Electric start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ELECTRICSTARTUNIT_LOCATOR}    ${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}
    #Water start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_WATERSTARTUNIT_LOCATOR}    ${ROOMOWNER_WATERSTARTUNIT_1_VALUE}

    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_TH}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    ############## Code for connect room ############## 
    #Code for connect room
    Wait Until Contains Element Text Should Be    ${ALERT_HEADER_CODEFORCONNECTROOM_LOCATOR}    ${ALERT_HEADER_CODEFORCONNECTROOM_TH}
    #Code
    # Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_CODEFORCONNECTROOM_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    #Copy code Button
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_COPYCODE_LOCATOR}    ${ALERT_BTN_COPYCODE_TH}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}
    
    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}","title":"${NONE}","firstName":"${ROOMOWNER_FIRSTNAME_1_VALUE}","lastName":"${NONE}","companyName":"${NONE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"},{"tranferorType":${ROOMOWNER_TRANFERORTYPE_2_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_2_VALUE}","title":"${NONE}","firstName":"${ROOMOWNER_FIRSTNAME_2_VALUE}","lastName":"${NONE}","companyName":"${NONE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_CREATE_FOREIGNERS_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Set Variable    ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_CREATE_FOREIGNERS_REQUIREDFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_CREATE_FOREIGNERS_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END

################################################################-- Juristic person--################################################################
Create RoomOwner input all field data Juristic person

#====== Check DB ==========
#ห้อง B201
# Owner type[Juristic person]
# Title[นางสาว Miss]
# Education[ปริญญาตรี Bachelor’s degree]
# Occupation[พนักงาน / ลูกจ้างบริษัทเอกชน Employees of private companies]
# Salary (Baht)[50,000 - 100,000 บาท]
# Car type[รถยนต์]
# Manage type[อยู่เอง]
# Language of documents[ภาษาไทย]
    
    [Arguments]    ${roomNo}

    #========== Create CheckAsset ====== 
    #Create data CheckAsset receive checkAssetId
    Run keyword And Continue On Failure    Request CreateData for CheckAsset      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_CHECKASSET_NAMETH_VALUE}    ${DATA_CHECKASSET_NAMEEN_VALUE}    ${DATA_CHECKASSET_REMARK_VALUE}
    
    #Click Create room owner
    Click Element Page    ${MENU_LBL_TYPEROOM_CREATEROOMOWNER_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_ADD_LBL_NUMBERROOM_TH} ${roomNo}

    ############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "นิติบุคคล" [1] ############## 

    #Owner type *
    Select Dropdown    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_CLASS_LOCATOR}    ${ROOMOWNER_TYPE_OWNERTYPE_JURISTICPERSON_TH_VALUE}
    Sleep    0.5s
    
    #Company name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_COMPANYNAME_LOCATOR}    ${ROOMOWNER_COMPANYNAME_1_VALUE}
    #Short name
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_SHORTNAME_LOCATOR}    ${ROOMOWNER_SHORTNAME_1_VALUE}
    #Juristic id
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_JURISTICID_LOCATOR}    ${ROOMOWNER_JURISTICID_1_VALUE}
    #Tax identification number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_JURISTIC_LOCATOR}    ${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}
    #Mobile
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_MOBILE_1_LOCATOR}    ${ROOMOWNER_MOBILE_1_VALUE}
    #Fax
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FAX_LOCATOR}    ${ROOMOWNER_FAX_1_VALUE}
    #E-mail
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_EMAIL_1_LOCATOR}    ${ROOMOWNER_EMAIL_1_VALUE}
    #Address
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ADDRESS_1_LOCATOR}    ${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}
    
    #upload image
    # ${CURDIR}/../image/suzy.jpg
    ${path}=    Normalize path    ${CURDIR}${ROOMOWNER_IMG_KEYWORD_ADD}
    # Log To Console    1${path}
    Choose File    ${ROOMOWNER_ADD_INPUT_UPLOADAPICTUREOFALEGALENTITY_LOCATOR}    ${path}

    ############## Transfer detail ############## 
    #Transfer date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_LOCATOR}
	Sleep    0.5s
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    #Arrival date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_LOCATOR}
	Sleep    0.5s
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    
    #Appointment date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_LOCATOR}
	Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}
    # Click Element Page    ${ROOMOWNER_ADD_LBL_APPOINTMENTDATE_LOCATOR}            #Click calendar calendar

    # Accept date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_LOCATOR}
	Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}

    #Warranty end date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_LOCATOR}
	Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}
    
    #Manage type
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LOCATOR}    ${ROOMOWNER_ADD_INPUT_MANAGETYPE_LOCATOR}    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_MANAGETYPE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_MANAGETYPE_SELFLIVE_TH_VALUE}    ${ROOMOWNER_ADD_LBL_MANAGETYPE_LOCATOR}
    #Language of documents
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_INPUT_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}    ${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_LOCATOR}

    #Address (for invoicing, receipt)
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ADDRESS_FORINVOICINGRECEIPT_LOCATOR}    ${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}
    
    #Electric start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ELECTRICSTARTUNIT_LOCATOR}    ${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}
    #Water start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_WATERSTARTUNIT_LOCATOR}    ${ROOMOWNER_WATERSTARTUNIT_1_VALUE}

    ############## Asset list ############## 
    #Remark
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_1_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_1_VALUE}
    #Remark
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_2_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    
    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_TH}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    ############## Code for connect room ############## 
    #Code for connect room
    Wait Until Contains Element Text Should Be    ${ALERT_HEADER_CODEFORCONNECTROOM_LOCATOR}    ${ALERT_HEADER_CODEFORCONNECTROOM_TH}
    #Code
    # Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_CODEFORCONNECTROOM_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    #Copy code Button
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_COPYCODE_LOCATOR}    ${ALERT_BTN_COPYCODE_TH}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_JURISTICPERSON_VALUE}","identificationNo":"${NONE}","title":"${NONE}","firstName":"${NONE}","lastName":"${NONE}","companyName":"${ROOMOWNER_COMPANYNAME_1_VALUE}","nickname":"${NONE}","shortName":"${ROOMOWNER_SHORTNAME_1_VALUE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${ROOMOWNER_MOBILE_1_VALUE}","fax":"${ROOMOWNER_FAX_1_VALUE}","email":"${ROOMOWNER_EMAIL_1_VALUE}","lineId":"${NONE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}","juristicId":"${ROOMOWNER_JURISTICID_1_VALUE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${ROOMOWNER_ADDRESS_1_VALUE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_TH_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_CREATE_JURISTICPERSON_ALLFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Set Variable If    '${i}'=='0'   "${ROOMOWNER_ASSET_REMARK_1_VALUE}"
        ...    '${i}'=='1'    "${ROOMOWNER_ASSET_REMARK_2_VALUE}"
        ...    '${i}'!='0'or'${i}'!='1'     ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}

        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_CREATE_JURISTICPERSON_ALLFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_JURISTICPERSON_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END   

Create RoomOwner input require field data Juristic person
#ห้อง B201
# Owner type[Juristic person]
# Language of documents[ภาษาไทย]

    [Arguments]    ${roomNo}

    #========== Create CheckAsset ====== 
    #Create data CheckAsset receive checkAssetId
    Run keyword And Continue On Failure    Request CreateData for CheckAsset      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_CHECKASSET_NAMETH_VALUE}    ${DATA_CHECKASSET_NAMEEN_VALUE}    ${DATA_CHECKASSET_REMARK_VALUE}
    
    #Click Create room owner
    Click Element Page    ${MENU_LBL_TYPEROOM_CREATEROOMOWNER_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_ADD_LBL_NUMBERROOM_TH} ${roomNo}

    ############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "นิติบุคคล" [1] ############## 

    #Owner type *
    Select Dropdown    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_CLASS_LOCATOR}    ${ROOMOWNER_TYPE_OWNERTYPE_JURISTICPERSON_TH_VALUE}
    Sleep    0.5s

    #Company name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_COMPANYNAME_LOCATOR}    ${ROOMOWNER_COMPANYNAME_2_VALUE}
    
    #Tax identification number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_JURISTIC_LOCATOR}    ${ROOMOWNER_TAXIDENTIFICATIONNUMBER_2_VALUE}
    
    #Electric start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ELECTRICSTARTUNIT_LOCATOR}    ${ROOMOWNER_ELECTRICSTARTUNIT_2_VALUE}
    #Water start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_WATERSTARTUNIT_LOCATOR}    ${ROOMOWNER_WATERSTARTUNIT_2_VALUE}

    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_TH}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}

    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    ############## Code for connect room ############## 
    #Code for connect room
    Wait Until Contains Element Text Should Be    ${ALERT_HEADER_CODEFORCONNECTROOM_LOCATOR}    ${ALERT_HEADER_CODEFORCONNECTROOM_TH}
    #Code
    # Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_CODEFORCONNECTROOM_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    #Copy code Button
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_COPYCODE_LOCATOR}    ${ALERT_BTN_COPYCODE_TH}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}
    
    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_JURISTICPERSON_VALUE}","identificationNo":"${NONE}","title":"${NONE}","firstName":"${NONE}","lastName":"${NONE}","companyName":"${ROOMOWNER_COMPANYNAME_2_VALUE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_2_VALUE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_CREATE_JURISTICPERSON_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Set Variable    ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_CREATE_JURISTICPERSON_REQUIREDFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}

    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_JURISTICPERSON_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END   
Create RoomOwner input require field data 2 Owner Juristic person
#ห้อง B201
# Owner type[Thai]
# Language of documents[ภาษาไทย]
    
    [Arguments]    ${roomNo}

    #========== Create CheckAsset ====== 
    #Create data CheckAsset receive checkAssetId
    Run keyword And Continue On Failure    Request CreateData for CheckAsset      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_CHECKASSET_NAMETH_VALUE}    ${DATA_CHECKASSET_NAMEEN_VALUE}    ${DATA_CHECKASSET_REMARK_VALUE}
    
    #Click Create room owner
    Click Element Page    ${MENU_LBL_TYPEROOM_CREATEROOMOWNER_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_ADD_LBL_NUMBERROOM_TH} ${roomNo}
    
    ############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "นิติบุคคล" [1] ############## 

    #Owner type *
    Select Dropdown    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_CLASS_LOCATOR}    ${ROOMOWNER_TYPE_OWNERTYPE_JURISTICPERSON_TH_VALUE}
    Sleep    0.5s

    #Company name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_COMPANYNAME_LOCATOR}    ${ROOMOWNER_COMPANYNAME_2_VALUE}
    
    #Tax identification number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_JURISTIC_LOCATOR}    ${ROOMOWNER_TAXIDENTIFICATIONNUMBER_2_VALUE}
    
    ############## Add guest ############## 
    #Add guest
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}    ${ROOMOWNER_ADD_BTN_ADDGUEST_TH} 
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}
    
    #Click Add guest
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}

    # ############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "ไทย" [1] ############## 

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_2_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_3_VALUE}
    
    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_2_LOCATOR}    ${ROOMOWNER_FIRSTNAME_3_VALUE}

    #Electric start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ELECTRICSTARTUNIT_LOCATOR}    ${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}
    #Water start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_WATERSTARTUNIT_LOCATOR}    ${ROOMOWNER_WATERSTARTUNIT_1_VALUE}

    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_TH}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}

    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    ############## Code for connect room ############## 
    #Code for connect room
    Wait Until Contains Element Text Should Be    ${ALERT_HEADER_CODEFORCONNECTROOM_LOCATOR}    ${ALERT_HEADER_CODEFORCONNECTROOM_TH}
    #Code
    # Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_CODEFORCONNECTROOM_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    #Copy code Button
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_COPYCODE_LOCATOR}    ${ALERT_BTN_COPYCODE_TH}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}
    
    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_JURISTICPERSON_VALUE}","identificationNo":"${NONE}","title":"${NONE}","firstName":"${NONE}","lastName":"${NONE}","companyName":"${ROOMOWNER_COMPANYNAME_2_VALUE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_2_VALUE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${NONE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"},{"tranferorType":${ROOMOWNER_TRANFERORTYPE_2_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_3_VALUE}","title":"${NONE}","firstName":"${ROOMOWNER_FIRSTNAME_3_VALUE}","lastName":"${NONE}","companyName":"${NONE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${NONE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    
    # ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_JURISTICPERSON_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}","title":"${NONE}","firstName":"${ROOMOWNER_FIRSTNAME_1_VALUE}","lastName":"${NONE}","companyName":"${NONE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"},{"tranferorType":${ROOMOWNER_TRANFERORTYPE_2_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_JURISTICPERSON_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_2_VALUE}","title":"${NONE}","firstName":"${ROOMOWNER_FIRSTNAME_2_VALUE}","lastName":"${NONE}","companyName":"${NONE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_CREATE_JURISTICPERSON_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}

    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Set Variable    ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_CREATE_JURISTICPERSON_REQUIREDFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}

    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_JURISTICPERSON_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END   
################################################################################################################################
################################################################-- Edit RoomOwner --################################################################
################################################################-- Thai --################################################################
Edit RoomOwner input all field data Thai
    [Arguments]    ${roomNo}

    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_INFO_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_INFO_LBL_NUMBERROOM_TH} ${roomNo}

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_TH} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== [Edit] EditRoomOwner =============== 

    #Edit data
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}    ${ROOMOWNER_LBL_EDIT_DATA_TH} 
    #Click Edit data
    Click Element Page    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_TH} ${roomNo}

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_2_VALUE}
    #Title
    Click Element Page    ${ROOMOWNER_ADD_DDL_TITLE_1_LOCATOR}
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_TITLE_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_TITLE_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TITLE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TITLE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_TITLE_MRS_TH_VALUE}    ${ROOMOWNER_ADD_LBL_TITLE_1_LOCATOR}

    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_1_LOCATOR}    ${ROOMOWNER_FIRSTNAME_2_VALUE}
    #Last name
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_LASTNAME_1_LOCATOR}    ${ROOMOWNER_LASTNAME_2_VALUE}
    #Nickname
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_NICKNAME_1_LOCATOR}    ${ROOMOWNER_NICKNAME_2_VALUE}
    
    #Birth date
    # 30/11/1991
     Select Calendar Last Year    ${ROOMOWNER_ADD_DATE_BIRTHDATE_1_BUTTON_LOCATOR}    ${ROOMOWNER_BIRTHDATE_YEAR_VALUE}    ${ROOMOWNER_BIRTHDATE_INPUT_DATE_YEAROLD01_VALUE}    ${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}
    Log To Console    Identification create date

    #Identification create date
    Click Element Page    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_LOCATOR}
	# Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}
    Log To Console    Identification expire date
    #Identification expire date
    Click Element Page    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_LOCATOR}
	Sleep    0.5s
    
    #Mobile
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_MOBILE_1_LOCATOR}    ${ROOMOWNER_MOBILE_2_VALUE}
    #E-mail
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_EMAIL_1_LOCATOR}    ${ROOMOWNER_EMAIL_2_VALUE} 
    #Line ID
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_LINEID_1_LOCATOR}    ${ROOMOWNER_LINEID_2_VALUE}
    #Tax identification number
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_1_LOCATOR}    ${ROOMOWNER_TAXIDENTIFICATIONNUMBER_2_VALUE}
    #Education
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_EDUCATION_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_EDUCATION_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_EDUCATION_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_EDUCATION_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_EDUCATION_BACHELORSDEGREE_TH_VALUE}    ${ROOMOWNER_ADD_LBL_EDUCATION_1_LOCATOR}

    #Salary (Baht)
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_SALARY_2_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_SALARY_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_SALARY_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_SALARY_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_SALARY_BATH_50000_100000_TH_VALUE}    ${ROOMOWNER_ADD_LBL_SALARY_2_1_LOCATOR}

    #Address
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ADDRESS_1_LOCATOR}    ${ROOMOWNER_ADDRESS_2_VALUE}

    #Occupation
    Check Select many dropdown generateId for dx     ${DEFAULT_TYPE_LONG}    ${ROOMOWNER_ADD_DDL_OCCUPATION_2_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_OCCUPATION_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_OCCUPATION_OTHER_TH_VALUE}    ${ROOMOWNER_ADD_LBL_OCCUPATION_2_1_LOCATOR}

    #[กรอกอาชีพอื่นๆ]
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_OCCUPATION_OTHER_2_1_LOCATOR}    ${ROOMOWNER_OCCUPATION_OTHER_2_VALUE}
    
    #Manage type
    # Click Element Page    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LOCATOR}
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LOCATOR}    ${ROOMOWNER_ADD_INPUT_MANAGETYPE_LOCATOR}    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_MANAGETYPE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_MANAGETYPE_SELFLIVE_TH_VALUE}    ${ROOMOWNER_ADD_LBL_MANAGETYPE_LOCATOR}
    #Language of documents
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_INPUT_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}    ${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_LOCATOR}

    #Address (for invoicing, receipt)
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ADDRESS_FORINVOICINGRECEIPT_LOCATOR}    ${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_2_VALUE}

    ############## Asset list ############## 
    #Remark
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_1_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_1_VALUE}
    #Remark
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_2_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    
    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_TH}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_2_VALUE}","title":"${ROOMOWNER_TITLE_MRSID_VALUE}","firstName":"${ROOMOWNER_FIRSTNAME_2_VALUE}","lastName":"${ROOMOWNER_LASTNAME_2_VALUE}","companyName":"${NONE}","nickname":"${ROOMOWNER_NICKNAME_2_VALUE}","shortName":"${NONE}","birthDate":"${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}","identificationCreateDate":"${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}","identificationExpireDate":"${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}","phone":"${ROOMOWNER_MOBILE_2_VALUE}","fax":"${NONE}","email":"${ROOMOWNER_EMAIL_2_VALUE}","lineId":"${ROOMOWNER_LINEID_2_VALUE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_2_VALUE}","juristicId":"${NONE}","education":"${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}","occupation":"${ROOMOWNER_OCCUPATION_OTHERID_VALUE}","occupationOther":"${ROOMOWNER_OCCUPATION_OTHER_2_VALUE}","salary":"${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}","address":"${ROOMOWNER_ADDRESS_2_VALUE}","cartype":"${ROOMOWNER_CARTYPE_CAR_TH_VALUE}","carplateNumber":"${ROOMOWNER_CARPLATENUMBER_2_VALUE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_TH_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_2_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_2_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_2_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_EDIT_ALLFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Set Variable If    '${i}'=='0'   "${ROOMOWNER_ASSET_REMARK_1_VALUE}"
        ...    '${i}'=='1'    "${ROOMOWNER_ASSET_REMARK_2_VALUE}"
        ...    '${i}'!='0'or'${i}'!='1'     ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_EDIT_ALLFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_ALLFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END

Edit RoomOwner input require field data Thai
    [Arguments]    ${roomNo}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_INFO_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_INFO_LBL_NUMBERROOM_TH} ${roomNo}

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_TH} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== [Edit] EditRoomOwner =============== 

    #Edit data
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}    ${ROOMOWNER_LBL_EDIT_DATA_TH} 
    #Click Edit data
    Click Element Page    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_TH} ${roomNo}

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_3_VALUE}
    
    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_1_LOCATOR}    ${ROOMOWNER_FIRSTNAME_3_VALUE}
    
    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_TH}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_3_VALUE}","title":"${ROOMOWNER_TITLE_MISSID_VALUE}","firstName":"${ROOMOWNER_FIRSTNAME_3_VALUE}","lastName":"${ROOMOWNER_LASTNAME_1_VALUE}","companyName":"${NONE}","nickname":"${ROOMOWNER_NICKNAME_1_VALUE}","shortName":"${NONE}","birthDate":"${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}","identificationCreateDate":"${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}","identificationExpireDate":"${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}","phone":"${ROOMOWNER_MOBILE_1_VALUE}","fax":"${NONE}","email":"${ROOMOWNER_EMAIL_1_VALUE}","lineId":"${ROOMOWNER_LINEID_1_VALUE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}","juristicId":"${NONE}","education":"${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}","occupation":"${ROOMOWNER_OCCUPATION_OTHERID_VALUE}","occupationOther":"${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}","salary":"${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}","address":"${ROOMOWNER_ADDRESS_1_VALUE}","cartype":"${ROOMOWNER_CARTYPE_CAR_TH_VALUE}","carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_TH_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_2_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_2_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
            ${remark}=    Convert To String    ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END    

Edit RoomOwner input require field data add owner Thai
    [Arguments]    ${roomNo}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_INFO_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_INFO_LBL_NUMBERROOM_TH} ${roomNo}

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_TH} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== [Edit] EditRoomOwner =============== 

    #Edit data
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}    ${ROOMOWNER_LBL_EDIT_DATA_TH} 
    #Click Edit data
    Click Element Page    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_TH} ${roomNo}

    ############## Add guest ############## 
    #Add guest
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}    ${ROOMOWNER_ADD_BTN_ADDGUEST_TH} 
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}
    
    #Click Add guest
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_2_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_3_VALUE}
    
    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_2_LOCATOR}    ${ROOMOWNER_FIRSTNAME_3_VALUE}
    
    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_TH}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_2_VALUE}","title":"${ROOMOWNER_TITLE_MISSID_VALUE}","firstName":"${ROOMOWNER_FIRSTNAME_2_VALUE}","lastName":"${ROOMOWNER_LASTNAME_1_VALUE}","companyName":"${NONE}","nickname":"${ROOMOWNER_NICKNAME_1_VALUE}","shortName":"${NONE}","birthDate":"${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}","identificationCreateDate":"${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}","identificationExpireDate":"${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}","phone":"${ROOMOWNER_MOBILE_1_VALUE}","fax":"${NONE}","email":"${ROOMOWNER_EMAIL_1_VALUE}","lineId":"${ROOMOWNER_LINEID_1_VALUE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}","juristicId":"${NONE}","education":"${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}","occupation":"${ROOMOWNER_OCCUPATION_OTHERID_VALUE}","occupationOther":"${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}","salary":"${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}","address":"${ROOMOWNER_ADDRESS_1_VALUE}","cartype":"${ROOMOWNER_CARTYPE_CAR_TH_VALUE}","carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_TH_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"},{"tranferorType":${ROOMOWNER_TRANFERORTYPE_2_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_3_VALUE}","title":"${ROOMOWNER_TITLE_MISSID_VALUE}","firstName":"${ROOMOWNER_FIRSTNAME_3_VALUE}","lastName":"${ROOMOWNER_LASTNAME_1_VALUE}","companyName":"${NONE}","nickname":"${ROOMOWNER_NICKNAME_1_VALUE}","shortName":"${NONE}","birthDate":"${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}","identificationCreateDate":"${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}","identificationExpireDate":"${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}","phone":"${ROOMOWNER_MOBILE_1_VALUE}","fax":"${NONE}","email":"${ROOMOWNER_EMAIL_1_VALUE}","lineId":"${ROOMOWNER_LINEID_1_VALUE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}","juristicId":"${NONE}","education":"${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}","occupation":"${ROOMOWNER_OCCUPATION_OTHERID_VALUE}","occupationOther":"${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}","salary":"${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}","address":"${ROOMOWNER_ADDRESS_1_VALUE}","cartype":"${ROOMOWNER_CARTYPE_CAR_TH_VALUE}","carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_TH_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Convert To String    ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END    

Edit RoomOwner input require field data delete owner Thai 
    [Arguments]    ${roomNo}

    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_INFO_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_INFO_LBL_NUMBERROOM_TH} ${roomNo}

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_TH} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== [Edit] EditRoomOwner =============== 

    #Edit data
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}    ${ROOMOWNER_LBL_EDIT_DATA_TH} 
    #Click Edit data
    Click Element Page    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_TH} ${roomNo}

    ############## Delete guest ############## 
    #Delete guest
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_ICON_DELETEGUEST_LOCATOR}
    
    #Click Delete guest
    Click Element Page    ${ROOMOWNER_ADD_ICON_DELETEGUEST_LOCATOR}

    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_TH}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}","title":"${ROOMOWNER_TITLE_MISSID_VALUE}","firstName":"${ROOMOWNER_FIRSTNAME_1_VALUE}","lastName":"${ROOMOWNER_LASTNAME_1_VALUE}","companyName":"${NONE}","nickname":"${ROOMOWNER_NICKNAME_1_VALUE}","shortName":"${NONE}","birthDate":"${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}","identificationCreateDate":"${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}","identificationExpireDate":"${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}","phone":"${ROOMOWNER_MOBILE_1_VALUE}","fax":"${NONE}","email":"${ROOMOWNER_EMAIL_1_VALUE}","lineId":"${ROOMOWNER_LINEID_1_VALUE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}","juristicId":"${NONE}","education":"${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}","occupation":"${ROOMOWNER_OCCUPATION_OTHERID_VALUE}","occupationOther":"${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}","salary":"${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}","address":"${ROOMOWNER_ADDRESS_1_VALUE}","cartype":"${ROOMOWNER_CARTYPE_CAR_TH_VALUE}","carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_TH_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Convert To String    ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}

        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END  
################################################################-- Foreigners --################################################################
Edit RoomOwner input all field data Foreigners
    [Arguments]    ${roomNo}

    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_INFO_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_INFO_LBL_NUMBERROOM_TH} ${roomNo}

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_TH} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== [Edit] EditRoomOwner =============== 

    #Edit data
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}    ${ROOMOWNER_LBL_EDIT_DATA_TH} 
    #Click Edit data
    Click Element Page    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_TH} ${roomNo}

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_2_VALUE}
    #Title
    Click Element Page    ${ROOMOWNER_ADD_DDL_TITLE_1_LOCATOR}
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_TITLE_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_TITLE_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TITLE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TITLE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_TITLE_MRS_TH_VALUE}    ${ROOMOWNER_ADD_LBL_TITLE_1_LOCATOR}

    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_1_LOCATOR}    ${ROOMOWNER_FIRSTNAME_2_VALUE}
    #Last name
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_LASTNAME_1_LOCATOR}    ${ROOMOWNER_LASTNAME_2_VALUE}
    #Nickname
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_NICKNAME_1_LOCATOR}    ${ROOMOWNER_NICKNAME_2_VALUE}
    
    #Birth date
    # 30/11/1991
     Select Calendar Last Year    ${ROOMOWNER_ADD_DATE_BIRTHDATE_1_BUTTON_LOCATOR}    ${ROOMOWNER_BIRTHDATE_YEAR_VALUE}    ${ROOMOWNER_BIRTHDATE_INPUT_DATE_YEAROLD01_VALUE}    ${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}
    Log To Console    Identification create date

    #Identification create date
    Click Element Page    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_LOCATOR}
	# Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}
    Log To Console    Identification expire date
    #Identification expire date
    Click Element Page    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_LOCATOR}
	Sleep    0.5s
    
    #Mobile
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_MOBILE_1_LOCATOR}    ${ROOMOWNER_MOBILE_2_VALUE}
    #E-mail
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_EMAIL_1_LOCATOR}    ${ROOMOWNER_EMAIL_2_VALUE} 
    #Line ID
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_LINEID_1_LOCATOR}    ${ROOMOWNER_LINEID_2_VALUE}
    #Tax identification number
    # Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_1_LOCATOR}    ${ROOMOWNER_TAXIDENTIFICATIONNUMBER_2_VALUE}
    #Education
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_EDUCATION_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_EDUCATION_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_EDUCATION_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_EDUCATION_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_EDUCATION_BACHELORSDEGREE_TH_VALUE}    ${ROOMOWNER_ADD_LBL_EDUCATION_1_LOCATOR}

    #Salary (Baht)
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_SALARY_3_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_SALARY_3_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_SALARY_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_SALARY_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_SALARY_BATH_50000_100000_TH_VALUE}    ${ROOMOWNER_ADD_LBL_SALARY_3_1_LOCATOR}

    #Address
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ADDRESS_1_LOCATOR}    ${ROOMOWNER_ADDRESS_2_VALUE}

    #Occupation
    Check Select many dropdown generateId for dx     ${DEFAULT_TYPE_LONG}    ${ROOMOWNER_ADD_DDL_OCCUPATION_3_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_OCCUPATION_3_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_OCCUPATION_OTHER_TH_VALUE}    ${ROOMOWNER_ADD_LBL_OCCUPATION_3_1_LOCATOR}

    #[กรอกอาชีพอื่นๆ]
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_OCCUPATION_OTHER_3_1_LOCATOR}    ${ROOMOWNER_OCCUPATION_OTHER_2_VALUE}
    
    #Manage type
    # Click Element Page    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LOCATOR}
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LOCATOR}    ${ROOMOWNER_ADD_INPUT_MANAGETYPE_LOCATOR}    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_MANAGETYPE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_MANAGETYPE_SELFLIVE_TH_VALUE}    ${ROOMOWNER_ADD_LBL_MANAGETYPE_LOCATOR}
    #Language of documents
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_INPUT_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}    ${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_LOCATOR}

    #Address (for invoicing, receipt)
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ADDRESS_FORINVOICINGRECEIPT_LOCATOR}    ${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_2_VALUE}

    ############## Asset list ############## 
    #Remark
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_1_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_1_VALUE}
    #Remark
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_2_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    
    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_TH}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_2_VALUE}","title":"${ROOMOWNER_TITLE_MRSID_VALUE}","firstName":"${ROOMOWNER_FIRSTNAME_2_VALUE}","lastName":"${ROOMOWNER_LASTNAME_2_VALUE}","companyName":"${NONE}","nickname":"${ROOMOWNER_NICKNAME_2_VALUE}","shortName":"${NONE}","birthDate":"${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}","identificationCreateDate":"${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}","identificationExpireDate":"${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}","phone":"${ROOMOWNER_MOBILE_2_VALUE}","fax":"${NONE}","email":"${ROOMOWNER_EMAIL_2_VALUE}","lineId":"${ROOMOWNER_LINEID_2_VALUE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}","occupation":"${ROOMOWNER_OCCUPATION_OTHERID_VALUE}","occupationOther":"${ROOMOWNER_OCCUPATION_OTHER_2_VALUE}","salary":"${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}","address":"${ROOMOWNER_ADDRESS_2_VALUE}","cartype":"${ROOMOWNER_CARTYPE_CAR_TH_VALUE}","carplateNumber":"${ROOMOWNER_CARPLATENUMBER_2_VALUE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_TH_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_2_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_2_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_2_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_EDIT_FOREIGNERS_ALLFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Set Variable If    '${i}'=='0'   "${ROOMOWNER_ASSET_REMARK_1_VALUE}"
        ...    '${i}'=='1'    "${ROOMOWNER_ASSET_REMARK_2_VALUE}"
        ...    '${i}'!='0'or'${i}'!='1'     ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}

        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_EDIT_FOREIGNERS_ALLFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_FOREIGNERS_ALLFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END

Edit RoomOwner input require field data Foreigners
    [Arguments]    ${roomNo}

    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_INFO_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_INFO_LBL_NUMBERROOM_TH} ${roomNo}

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_TH} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== [Edit] EditRoomOwner =============== 

    #Edit data
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}    ${ROOMOWNER_LBL_EDIT_DATA_TH} 
    #Click Edit data
    Click Element Page    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_TH} ${roomNo}

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_3_VALUE}
    
    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_1_LOCATOR}    ${ROOMOWNER_FIRSTNAME_3_VALUE}
    
    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_TH}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_3_VALUE}","title":"${ROOMOWNER_TITLE_MISSID_VALUE}","firstName":"${ROOMOWNER_FIRSTNAME_3_VALUE}","lastName":"${ROOMOWNER_LASTNAME_1_VALUE}","companyName":"${NONE}","nickname":"${ROOMOWNER_NICKNAME_1_VALUE}","shortName":"${NONE}","birthDate":"${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}","identificationCreateDate":"${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}","identificationExpireDate":"${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}","phone":"${ROOMOWNER_MOBILE_1_VALUE}","fax":"${NONE}","email":"${ROOMOWNER_EMAIL_1_VALUE}","lineId":"${ROOMOWNER_LINEID_1_VALUE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}","juristicId":"${NONE}","education":"${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}","occupation":"${ROOMOWNER_OCCUPATION_OTHERID_VALUE}","occupationOther":"${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}","salary":"${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}","address":"${ROOMOWNER_ADDRESS_1_VALUE}","cartype":"${ROOMOWNER_CARTYPE_CAR_TH_VALUE}","carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_TH_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_2_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_2_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Convert To String    ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END    

Edit RoomOwner input require field data add owner Foreigners
    [Arguments]    ${roomNo}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_INFO_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_INFO_LBL_NUMBERROOM_TH} ${roomNo}

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_TH} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== [Edit] EditRoomOwner =============== 

    #Edit data
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}    ${ROOMOWNER_LBL_EDIT_DATA_TH} 
    #Click Edit data
    Click Element Page    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_TH} ${roomNo}

    ############## Add guest ############## 
    #Add guest
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}    ${ROOMOWNER_ADD_BTN_ADDGUEST_TH} 
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}
    
    #Click Add guest
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}

    ############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "บุคคลธรรมดา - ต่างชาติ" [1] ############## 

    #Owner type *
    Select Dropdown    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_1_2_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_CLASS_LOCATOR}    ${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_TH_VALUE}
    Sleep    0.5s

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_2_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_3_VALUE}
    
    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_2_LOCATOR}    ${ROOMOWNER_FIRSTNAME_3_VALUE}
    
    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_TH}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}","title":"${ROOMOWNER_TITLE_MISSID_VALUE}","firstName":"${ROOMOWNER_FIRSTNAME_1_VALUE}","lastName":"${ROOMOWNER_LASTNAME_1_VALUE}","companyName":"${NONE}","nickname":"${ROOMOWNER_NICKNAME_1_VALUE}","shortName":"${NONE}","birthDate":"${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}","identificationCreateDate":"${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}","identificationExpireDate":"${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}","phone":"${ROOMOWNER_MOBILE_1_VALUE}","fax":"${NONE}","email":"${ROOMOWNER_EMAIL_1_VALUE}","lineId":"${ROOMOWNER_LINEID_1_VALUE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}","juristicId":"${NONE}","education":"${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}","occupation":"${ROOMOWNER_OCCUPATION_OTHERID_VALUE}","occupationOther":"${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}","salary":"${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}","address":"${ROOMOWNER_ADDRESS_1_VALUE}","cartype":"${ROOMOWNER_CARTYPE_CAR_TH_VALUE}","carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_TH_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"},{"tranferorType":${ROOMOWNER_TRANFERORTYPE_2_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_3_VALUE}","title":"${ROOMOWNER_TITLE_MISSID_VALUE}","firstName":"${ROOMOWNER_FIRSTNAME_3_VALUE}","lastName":"${ROOMOWNER_LASTNAME_1_VALUE}","companyName":"${NONE}","nickname":"${ROOMOWNER_NICKNAME_1_VALUE}","shortName":"${NONE}","birthDate":"${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}","identificationCreateDate":"${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}","identificationExpireDate":"${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}","phone":"${ROOMOWNER_MOBILE_1_VALUE}","fax":"${NONE}","email":"${ROOMOWNER_EMAIL_1_VALUE}","lineId":"${ROOMOWNER_LINEID_1_VALUE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}","juristicId":"${NONE}","education":"${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}","occupation":"${ROOMOWNER_OCCUPATION_OTHERID_VALUE}","occupationOther":"${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}","salary":"${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}","address":"${ROOMOWNER_ADDRESS_1_VALUE}","cartype":"${ROOMOWNER_CARTYPE_CAR_TH_VALUE}","carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_TH_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Convert To String    ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END    

Edit RoomOwner input require field data delete owner Foreigners 
    [Arguments]    ${roomNo}

    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_INFO_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_INFO_LBL_NUMBERROOM_TH} ${roomNo}

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_TH} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== [Edit] EditRoomOwner =============== 

    #Edit data
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}    ${ROOMOWNER_LBL_EDIT_DATA_TH} 
    #Click Edit data
    Click Element Page    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_TH} ${roomNo}

    ############## Delete guest ############## 
    #Delete guest
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_ICON_DELETEGUEST_LOCATOR}
    
    #Click Delete guest
    Click Element Page    ${ROOMOWNER_ADD_ICON_DELETEGUEST_LOCATOR}

    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_TH}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}","title":"${ROOMOWNER_TITLE_MISSID_VALUE}","firstName":"${ROOMOWNER_FIRSTNAME_1_VALUE}","lastName":"${ROOMOWNER_LASTNAME_1_VALUE}","companyName":"${NONE}","nickname":"${ROOMOWNER_NICKNAME_1_VALUE}","shortName":"${NONE}","birthDate":"${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}","identificationCreateDate":"${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}","identificationExpireDate":"${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}","phone":"${ROOMOWNER_MOBILE_1_VALUE}","fax":"${NONE}","email":"${ROOMOWNER_EMAIL_1_VALUE}","lineId":"${ROOMOWNER_LINEID_1_VALUE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}","juristicId":"${NONE}","education":"${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}","occupation":"${ROOMOWNER_OCCUPATION_OTHERID_VALUE}","occupationOther":"${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}","salary":"${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}","address":"${ROOMOWNER_ADDRESS_1_VALUE}","cartype":"${ROOMOWNER_CARTYPE_CAR_TH_VALUE}","carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_TH_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Convert To String    ${NONE}
        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END   

################################################################-- Juristic person --################################################################
Edit RoomOwner input all field data Juristic person
    
    [Arguments]    ${roomNo}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_INFO_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_INFO_LBL_NUMBERROOM_TH} ${roomNo}

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_TH} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== [Edit] EditRoomOwner =============== 

    #Edit data
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}    ${ROOMOWNER_LBL_EDIT_DATA_TH} 
    #Click Edit data
    Click Element Page    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_TH} ${roomNo}

    #Company name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_COMPANYNAME_LOCATOR}    ${ROOMOWNER_COMPANYNAME_1_VALUE}
    #Short name
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_SHORTNAME_LOCATOR}    ${ROOMOWNER_SHORTNAME_1_VALUE}
    #Juristic id
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_JURISTICID_LOCATOR}    ${ROOMOWNER_JURISTICID_1_VALUE}
    #Tax identification number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_JURISTIC_LOCATOR}    ${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}
    #Mobile
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_MOBILE_1_LOCATOR}    ${ROOMOWNER_MOBILE_1_VALUE}
    #Fax
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FAX_LOCATOR}    ${ROOMOWNER_FAX_1_VALUE}
    #E-mail
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_EMAIL_1_LOCATOR}    ${ROOMOWNER_EMAIL_1_VALUE}
    #Address
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ADDRESS_1_LOCATOR}    ${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}
    
    #Manage type
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LOCATOR}    ${ROOMOWNER_ADD_INPUT_MANAGETYPE_LOCATOR}    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_MANAGETYPE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_MANAGETYPE_SELFLIVE_TH_VALUE}    ${ROOMOWNER_ADD_LBL_MANAGETYPE_LOCATOR}
    #Language of documents
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_INPUT_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}    ${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_LOCATOR}

    #Address (for invoicing, receipt)
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ADDRESS_FORINVOICINGRECEIPT_LOCATOR}    ${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}
    
    ############## Asset list ############## 
    #Remark
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_1_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_1_VALUE}
    #Remark
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_2_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    
    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_TH}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_JURISTICPERSON_VALUE}","identificationNo":"${NONE}","title":"${NONE}","firstName":"${NONE}","lastName":"${NONE}","companyName":"${ROOMOWNER_COMPANYNAME_1_VALUE}","nickname":"${NONE}","shortName":"${ROOMOWNER_SHORTNAME_1_VALUE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${ROOMOWNER_MOBILE_1_VALUE}","fax":"${ROOMOWNER_FAX_1_VALUE}","email":"${ROOMOWNER_EMAIL_1_VALUE}","lineId":"${NONE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}","juristicId":"${ROOMOWNER_JURISTICID_1_VALUE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${ROOMOWNER_ADDRESS_1_VALUE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_TH_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_EDIT_JURISTICPERSON_ALLFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Set Variable If    '${i}'=='0'   "${ROOMOWNER_ASSET_REMARK_1_VALUE}"
        ...    '${i}'=='1'    "${ROOMOWNER_ASSET_REMARK_2_VALUE}"
        ...    '${i}'!='0'or'${i}'!='1'     ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_EDIT_JURISTICPERSON_ALLFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_JURISTICPERSON_ALLFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END

Edit RoomOwner input require field data Juristic person
    [Arguments]    ${roomNo}

    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_INFO_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_INFO_LBL_NUMBERROOM_TH} ${roomNo}

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_TH} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== [Edit] EditRoomOwner =============== 

    #Edit data
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}    ${ROOMOWNER_LBL_EDIT_DATA_TH} 
    #Click Edit data
    Click Element Page    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_TH} ${roomNo}

    #Company name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_COMPANYNAME_LOCATOR}    ${ROOMOWNER_COMPANYNAME_1_VALUE}

    #Tax identification number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_JURISTIC_LOCATOR}    ${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}
    
    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_TH}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_JURISTICPERSON_VALUE}","identificationNo":"${NONE}","title":"${NONE}","firstName":"${NONE}","lastName":"${NONE}","companyName":"${ROOMOWNER_COMPANYNAME_1_VALUE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_EDIT_JURISTICPERSON_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
            ${remark}=    Convert To String    ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}

        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_EDIT_JURISTICPERSON_REQUIREDFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    # Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_JURISTICPERSON_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END   

Edit RoomOwner input require field data add owner Juristic person
    [Arguments]    ${roomNo}

    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_INFO_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_INFO_LBL_NUMBERROOM_TH} ${roomNo}

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_TH} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== [Edit] EditRoomOwner =============== 

    #Edit data
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}    ${ROOMOWNER_LBL_EDIT_DATA_TH} 
    #Click Edit data
    Click Element Page    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_TH} ${roomNo}

    ############## Add guest ############## 
    #Add guest
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}    ${ROOMOWNER_ADD_BTN_ADDGUEST_TH} 
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}
    
    #Click Add guest
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}

    ############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "บุคคลธรรมดา - ไทย" [1] ############## 

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_2_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_3_VALUE}
    
    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_2_LOCATOR}    ${ROOMOWNER_FIRSTNAME_3_VALUE}
    
    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_TH}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_JURISTICPERSON_VALUE}","identificationNo":"${NONE}","title":"${NONE}","firstName":"${NONE}","lastName":"${NONE}","companyName":"${ROOMOWNER_COMPANYNAME_2_VALUE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_2_VALUE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${NONE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"},{"tranferorType":${ROOMOWNER_TRANFERORTYPE_2_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_3_VALUE}","title":"${NONE}","firstName":"${ROOMOWNER_FIRSTNAME_3_VALUE}","lastName":"${NONE}","companyName":"${NONE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${NONE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_EDIT_JURISTICPERSON_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Convert To String    ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_EDIT_JURISTICPERSON_REQUIREDFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_JURISTICPERSON_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END   

Edit RoomOwner input require field data delete owner Juristic person 
    [Arguments]    ${roomNo}

    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_INFO_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_INFO_LBL_NUMBERROOM_TH} ${roomNo}

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_TH} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== [Edit] EditRoomOwner =============== 

    #Edit data
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}    ${ROOMOWNER_LBL_EDIT_DATA_TH} 
    #Click Edit data
    Click Element Page    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_TH} ${roomNo}

    ############## Delete guest ############## 
    #Delete guest
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_ICON_DELETEGUEST_LOCATOR}
    
    #Click Delete guest
    Click Element Page    ${ROOMOWNER_ADD_ICON_DELETEGUEST_LOCATOR}

    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_TH}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_JURISTICPERSON_VALUE}","identificationNo":"${NONE}","title":"${NONE}","firstName":"${NONE}","lastName":"${NONE}","companyName":"${ROOMOWNER_COMPANYNAME_2_VALUE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_2_VALUE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${NONE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_EDIT_JURISTICPERSON_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Convert To String    ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}

        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_EDIT_JURISTICPERSON_REQUIREDFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_JURISTICPERSON_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END       
################################################################################################################################
################################################################--ChangeOwner Thai--################################################################
ChangeOwner RoomOwner input all field data Thai

#====== Check DB ==========
#ห้อง B201
# Owner type[Thai]
# Title[นางสาว Miss]
# Education[ปริญญาตรี Bachelor’s degree]
# Occupation[พนักงาน / ลูกจ้างบริษัทเอกชน Employees of private companies]
# Salary (Baht)[50,000 - 100,000 บาท]
# Car type[รถยนต์]
# Manage type[อยู่เอง]
# Language of documents[ภาษาไทย]

    [Arguments]    ${roomNo}

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}
    #Title
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_TITLE_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_TITLE_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TITLE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TITLE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_TITLE_MISS_TH_VALUE}    ${ROOMOWNER_ADD_LBL_TITLE_1_LOCATOR}

    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_1_LOCATOR}    ${ROOMOWNER_FIRSTNAME_1_VALUE}
    #Last name
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_LASTNAME_1_LOCATOR}    ${ROOMOWNER_LASTNAME_1_VALUE}
    #Nickname
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_NICKNAME_1_LOCATOR}    ${ROOMOWNER_NICKNAME_1_VALUE}
    
    #Birth date
    # 30/11/1991
     Select Calendar Last Year    ${ROOMOWNER_ADD_DATE_BIRTHDATE_1_BUTTON_LOCATOR}    ${ROOMOWNER_BIRTHDATE_YEAR_VALUE}    ${ROOMOWNER_BIRTHDATE_INPUT_DATE_YEAROLD01_VALUE}    ${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}
    Log To Console    Identification create date

    #Identification create date
    Click Element Page    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_LOCATOR}
	# Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}
    Log To Console    Identification expire date
    #Identification expire date
    Click Element Page    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_LOCATOR}
	Sleep    0.5s
    
    #Mobile
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_MOBILE_1_LOCATOR}    ${ROOMOWNER_MOBILE_1_VALUE}
    #E-mail
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_EMAIL_1_LOCATOR}    ${ROOMOWNER_EMAIL_1_VALUE} 
    #Line ID
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_LINEID_1_LOCATOR}    ${ROOMOWNER_LINEID_1_VALUE}
    #Tax identification number
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_1_LOCATOR}    ${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}
    #Education
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_EDUCATION_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_EDUCATION_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_EDUCATION_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_EDUCATION_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_EDUCATION_BACHELORSDEGREE_TH_VALUE}    ${ROOMOWNER_ADD_LBL_EDUCATION_1_LOCATOR}

    #Salary (Baht)
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_SALARY_2_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_SALARY_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_SALARY_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_SALARY_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_SALARY_BATH_50000_100000_TH_VALUE}    ${ROOMOWNER_ADD_LBL_SALARY_2_1_LOCATOR}

    #Address
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ADDRESS_1_LOCATOR}    ${ROOMOWNER_ADDRESS_1_VALUE}

    ############## Add car ############## 

    #Click Add car
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDCAR_1_LOCATOR}
    
    #Car type
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_CARTYPE_1_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_CARTYPE_1_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_CARTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_CARTYPE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_CARTYPE_CAR_TH_VALUE}    ${ROOMOWNER_ADD_LBL_CARTYPE_1_1_LOCATOR}

    #Car plate number
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_CARPLATENUMBER_1_1_LOCATOR}    ${ROOMOWNER_CARPLATENUMBER_1_VALUE}

    ############## Add guest ############## 

    ############## Transfer detail ############## 
    #Transfer date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_LOCATOR}
	Sleep    0.5s
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    #Arrival date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_LOCATOR}
	Sleep    0.5s
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    
    #Appointment date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_LOCATOR}
	Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}
    # Click Element Page    ${ROOMOWNER_ADD_LBL_APPOINTMENTDATE_LOCATOR}            #Click calendar calendar

    # Accept date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_LOCATOR}
	Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}

    #Warranty end date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_LOCATOR}
	Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}
    
    #Occupation
    Check Select many dropdown generateId for dx     ${DEFAULT_TYPE_LONG}    ${ROOMOWNER_ADD_DDL_OCCUPATION_2_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_OCCUPATION_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_OCCUPATION_OTHER_TH_VALUE}    ${ROOMOWNER_ADD_LBL_OCCUPATION_2_1_LOCATOR}

    #[กรอกอาชีพอื่นๆ]
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_OCCUPATION_OTHER_2_1_LOCATOR}    ${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}
    
    #Manage type
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LOCATOR}    ${ROOMOWNER_ADD_INPUT_MANAGETYPE_LOCATOR}    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_MANAGETYPE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_MANAGETYPE_SELFLIVE_TH_VALUE}    ${ROOMOWNER_ADD_LBL_MANAGETYPE_LOCATOR}
    #Language of documents
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_INPUT_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}    ${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_LOCATOR}

    #Address (for invoicing, receipt)
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ADDRESS_FORINVOICINGRECEIPT_LOCATOR}    ${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}

    ############## Asset list ############## 
    #Remark
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_1_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_1_VALUE}
    #Remark
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_2_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    
    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_TH}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    ############## Code for connect room ############## 
    #Code for connect room
    Wait Until Contains Element Text Should Be    ${ALERT_HEADER_CODEFORCONNECTROOM_LOCATOR}    ${ALERT_HEADER_CODEFORCONNECTROOM_TH}
    #Code
    # Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_CODEFORCONNECTROOM_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    #Copy code Button
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_COPYCODE_LOCATOR}    ${ALERT_BTN_COPYCODE_TH}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}
    ${roomTransferIdSub}=    Convert To Number    ${roomTransferId-1}
    ${roomTransferIdInt}=    Convert To Integer    ${roomTransferIdSub}
    
    @{valArrRoomTransferId}=    Create List    ${roomTransferIdInt}    ${roomTransferId}
    # Log To Console    valArrRoomTransferId${valArrRoomTransferId}

    ${numArrRoomTransferId}=    Get Length    ${valArrRoomTransferId}
    @{valArrType}=    Create List    ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${MYSQL_TYPE_CREATE_ALLFIELD}
    
    ${dataCheckRoomAsset}=    Evaluate    [{"check_status":1,"remark":"${ROOMOWNER_ASSET_REMARK_1_VALUE}"},{"check_status":1,"remark":"${ROOMOWNER_ASSET_REMARK_2_VALUE}"}]
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset1}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Set Variable    ${NONE}
        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset1}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset1${valArrDataCheckRoomAsset1}

    @{valArrDataCheckRoomAsset2}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        
        ${remark}=    Set Variable If    '${i}'=='0'   "${ROOMOWNER_ASSET_REMARK_1_VALUE}"
        ...    '${i}'=='1'    "${ROOMOWNER_ASSET_REMARK_2_VALUE}"
        ...    '${i}'!='0'or'${i}'!='1'     ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset2}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    Log To Console    valArrDataCheckRoomAsset2${valArrDataCheckRoomAsset2}

    FOR    ${i}    IN RANGE     ${numArrRoomTransferId}
    
        # ================ Verify DB [RoomOwner] ================    
        ${dataRoomOwner1}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_2_VALUE}","title":"${NONE}","firstName":"${ROOMOWNER_FIRSTNAME_2_VALUE}","lastName":"${NONE}","companyName":"${NONE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
        ${dataRoomOwner2}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}","title":"${ROOMOWNER_TITLE_MISSID_VALUE}","firstName":"${ROOMOWNER_FIRSTNAME_1_VALUE}","lastName":"${ROOMOWNER_LASTNAME_1_VALUE}","companyName":"${NONE}","nickname":"${ROOMOWNER_NICKNAME_1_VALUE}","shortName":"${NONE}","birthDate":"${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}","identificationCreateDate":"${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}","identificationExpireDate":"${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}","phone":"${ROOMOWNER_MOBILE_1_VALUE}","fax":"${NONE}","email":"${ROOMOWNER_EMAIL_1_VALUE}","lineId":"${ROOMOWNER_LINEID_1_VALUE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}","juristicId":"${NONE}","education":"${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}","occupation":"${ROOMOWNER_OCCUPATION_OTHERID_VALUE}","occupationOther":"${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}","salary":"${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}","address":"${ROOMOWNER_ADDRESS_1_VALUE}","cartype":"${ROOMOWNER_CARTYPE_CAR_TH_VALUE}","carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_TH_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
        
        Request Verify DB Check Data ChangeOwner    ${valArrType}[${i}]    ${roomId}    ${valArrRoomTransferId}[${i}]    ${dataRoomOwner${i+1}}
    
        # ================ Verify DB [CheckRoomAsset] ================    
        Request Verify DB Check Data Check Room Asset    ${valArrType}[${i}]    ${valArrRoomTransferId}[${i}]    ${valArrDataCheckRoomAsset${i+1}}

    END
    
    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_CREATE_ALLFIELD}    ${roomId}    ${valArrRoomTransferId}[1]    ${roomOwnerId}    ${dataCars}
    END
    
ChangeOwner RoomOwner input require field data Thai
#ห้อง B201
# Owner type[Thai]
# Language of documents[ภาษาไทย]
    
    [Arguments]    ${roomNo}

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}

    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_1_LOCATOR}    ${ROOMOWNER_FIRSTNAME_1_VALUE}
 
    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_TH}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}

    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    ############## Code for connect room ############## 
    #Code for connect room
    Wait Until Contains Element Text Should Be    ${ALERT_HEADER_CODEFORCONNECTROOM_LOCATOR}    ${ALERT_HEADER_CODEFORCONNECTROOM_TH}
    #Code
    # Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_CODEFORCONNECTROOM_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    #Copy code Button
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_COPYCODE_LOCATOR}    ${ALERT_BTN_COPYCODE_TH}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}
    ${roomTransferIdSub}=    Convert To Number    ${roomTransferId-1}
    ${roomTransferIdInt}=    Convert To Integer    ${roomTransferIdSub}
    
    @{valArrRoomTransferId}=    Create List    ${roomTransferIdInt}    ${roomTransferId}
    # Log To Console    valArrRoomTransferId${valArrRoomTransferId}

    ${numArrRoomTransferId}=    Get Length    ${valArrRoomTransferId}
    @{valArrType}=    Create List    ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${MYSQL_TYPE_CREATE_REQUIREDFIELD}
    
    ${dataCheckRoomAsset}=    Evaluate    [{"check_status":1,"remark":"${ROOMOWNER_ASSET_REMARK_1_VALUE}"},{"check_status":1,"remark":"${ROOMOWNER_ASSET_REMARK_2_VALUE}"}]
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Set Variable    ${NONE}
        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}

        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}

    FOR    ${i}    IN RANGE     ${numArrRoomTransferId}
    
        # ================ Verify DB [RoomOwner] ================    
        ${dataRoomOwner2}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}","title":"${NONE}","firstName":"${ROOMOWNER_FIRSTNAME_1_VALUE}","lastName":"${NONE}","companyName":"${NONE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
        ${dataRoomOwner1}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_2_VALUE}","title":"${NONE}","firstName":"${ROOMOWNER_FIRSTNAME_2_VALUE}","lastName":"${NONE}","companyName":"${NONE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"},{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}","title":"${ROOMOWNER_TITLE_MISSID_VALUE}","firstName":"${ROOMOWNER_FIRSTNAME_1_VALUE}","lastName":"${ROOMOWNER_LASTNAME_1_VALUE}","companyName":"${NONE}","nickname":"${ROOMOWNER_NICKNAME_1_VALUE}","shortName":"${NONE}","birthDate":"${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}","identificationCreateDate":"${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}","identificationExpireDate":"${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}","phone":"${ROOMOWNER_MOBILE_1_VALUE}","fax":"${NONE}","email":"${ROOMOWNER_EMAIL_1_VALUE}","lineId":"${ROOMOWNER_LINEID_1_VALUE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}","juristicId":"${NONE}","education":"${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}","occupation":"${ROOMOWNER_OCCUPATION_OTHERID_VALUE}","occupationOther":"${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}","salary":"${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}","address":"${ROOMOWNER_ADDRESS_1_VALUE}","cartype":"${ROOMOWNER_CARTYPE_CAR_TH_VALUE}","carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_TH_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    
        Request Verify DB Check Data ChangeOwner    ${valArrType}[${i}]    ${roomId}    ${valArrRoomTransferId}[${i}]    ${dataRoomOwner${i+1}}
    
        # ================ Verify DB [CheckRoomAsset] ================    
        Request Verify DB Check Data Check Room Asset    ${valArrType}[${i}]    ${valArrRoomTransferId}[${i}]    ${valArrDataCheckRoomAsset}

    END
    
    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_CREATE_ALLFIELD}    ${roomId}    ${valArrRoomTransferId}[1]    ${roomOwnerId}    ${dataCars}
    END

################################################################################################################################

################################################################-- Create RoomOwner [EN]--################################################################
################################################################-- Create RoomOwner EN--################################################################
################################################################-- Thai EN--################################################################
Create RoomOwner input all field data Thai EN

#====== Check DB ==========
#ห้อง B201
# Owner type[Thai]
# Title[นางสาว Miss]
# Education[ปริญญาตรี Bachelor’s degree]
# Occupation[พนักงาน / ลูกจ้างบริษัทเอกชน Employees of private companies]
# Salary (Baht)[50,000 - 100,000 บาท]
# Car type[รถยนต์]
# Manage type[อยู่เอง]
# Language of documents[ภาษาไทย]

    [Arguments]    ${roomNo}
    #========== Create CheckAsset ====== 
    #Create data CheckAsset receive checkAssetId
    Run keyword And Continue On Failure    Request CreateData for CheckAsset      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_CHECKASSET_NAMETH_VALUE}    ${DATA_CHECKASSET_NAMEEN_VALUE}    ${DATA_CHECKASSET_REMARK_VALUE}
    
    #Click Create room owner
    Click Element Page    ${MENU_LBL_TYPEROOM_CREATEROOMOWNER_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_ADD_LBL_NUMBERROOM_EN} ${roomNo}

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}
    #Title
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_TITLE_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_TITLE_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TITLE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TITLE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_TITLE_MISS_EN_VALUE}    ${ROOMOWNER_ADD_LBL_TITLE_1_LOCATOR}

    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_1_LOCATOR}    ${ROOMOWNER_FIRSTNAME_1_VALUE}
    #Last name
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_LASTNAME_1_LOCATOR}    ${ROOMOWNER_LASTNAME_1_VALUE}
    #Nickname
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_NICKNAME_1_LOCATOR}    ${ROOMOWNER_NICKNAME_1_VALUE}
    
    #Birth date
    # 30/11/1991
     Select Calendar Last Year    ${ROOMOWNER_ADD_DATE_BIRTHDATE_1_BUTTON_LOCATOR}    ${ROOMOWNER_BIRTHDATE_YEAR_VALUE}    ${ROOMOWNER_BIRTHDATE_INPUT_DATE_YEAROLD01_VALUE}    ${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}
    Log To Console    Identification create date

    #Identification create date
    Click Element Page    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_LOCATOR}
	# Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}
    Log To Console    Identification expire date
    #Identification expire date
    Click Element Page    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_LOCATOR}
	Sleep    0.5s
    
    #Mobile
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_MOBILE_1_LOCATOR}    ${ROOMOWNER_MOBILE_1_VALUE}
    #E-mail
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_EMAIL_1_LOCATOR}    ${ROOMOWNER_EMAIL_1_VALUE} 
    #Line ID
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_LINEID_1_LOCATOR}    ${ROOMOWNER_LINEID_1_VALUE}
    #Tax identification number
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_1_LOCATOR}    ${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}
    #Education
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_EDUCATION_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_EDUCATION_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_EDUCATION_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_EDUCATION_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_EDUCATION_BACHELORSDEGREE_EN_VALUE}    ${ROOMOWNER_ADD_LBL_EDUCATION_1_LOCATOR}

    #Salary (Baht)
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_SALARY_2_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_SALARY_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_SALARY_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_SALARY_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_SALARY_BATH_50000_100000_EN_VALUE}    ${ROOMOWNER_ADD_LBL_SALARY_2_1_LOCATOR}

    #Address
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ADDRESS_1_LOCATOR}    ${ROOMOWNER_ADDRESS_1_VALUE}

    ############## Add car ############## 

    #Click Add car
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDCAR_1_LOCATOR}
    
    #Car type
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_CARTYPE_1_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_CARTYPE_1_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_CARTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_CARTYPE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_CARTYPE_CAR_EN_VALUE}    ${ROOMOWNER_ADD_LBL_CARTYPE_1_1_LOCATOR}

    #Car plate number
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_CARPLATENUMBER_1_1_LOCATOR}    ${ROOMOWNER_CARPLATENUMBER_1_VALUE}

    ############## Add guest ############## 

    ############## Transfer detail ############## 
    #Transfer date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_LOCATOR}
	Sleep    0.5s
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    #Arrival date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_LOCATOR}
	Sleep    0.5s
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    
    #Appointment date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_LOCATOR}
	Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}
    # Click Element Page    ${ROOMOWNER_ADD_LBL_APPOINTMENTDATE_LOCATOR}            #Click calendar calendar

    # Accept date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_LOCATOR}
	Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}

    #Warranty end date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_LOCATOR}
	Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}
    
    #Occupation
    Check Select many dropdown generateId for dx     ${DEFAULT_TYPE_LONG}    ${ROOMOWNER_ADD_DDL_OCCUPATION_2_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_OCCUPATION_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_OCCUPATION_OTHER_EN_VALUE}    ${ROOMOWNER_ADD_LBL_OCCUPATION_2_1_LOCATOR}

    #[กรอกอาชีพอื่นๆ]
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_OCCUPATION_OTHER_2_1_LOCATOR}    ${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}
    
    #Manage type
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LOCATOR}    ${ROOMOWNER_ADD_INPUT_MANAGETYPE_LOCATOR}    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_MANAGETYPE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_MANAGETYPE_SELFLIVE_EN_VALUE}    ${ROOMOWNER_ADD_LBL_MANAGETYPE_LOCATOR}
    #Language of documents
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_INPUT_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}    ${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_LOCATOR}

    #Address (for invoicing, receipt)
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ADDRESS_FORINVOICINGRECEIPT_LOCATOR}    ${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}
    
    #Electric start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ELECTRICSTARTUNIT_LOCATOR}    ${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}
    #Water start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_WATERSTARTUNIT_LOCATOR}    ${ROOMOWNER_WATERSTARTUNIT_1_VALUE}

    ############## Asset list ############## 
    #Remark
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_1_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_1_VALUE}
    #Remark
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_2_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    
    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_EN}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    ############## Code for connect room ############## 
    #Code for connect room
    Wait Until Contains Element Text Should Be    ${ALERT_HEADER_CODEFORCONNECTROOM_LOCATOR}    ${ALERT_HEADER_CODEFORCONNECTROOM_EN}
    #Code
    # Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_CODEFORCONNECTROOM_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    #Copy code Button
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_COPYCODE_LOCATOR}    ${ALERT_BTN_COPYCODE_EN}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}","title":"${ROOMOWNER_TITLE_MISSID_VALUE}","firstName":"${ROOMOWNER_FIRSTNAME_1_VALUE}","lastName":"${ROOMOWNER_LASTNAME_1_VALUE}","companyName":"${NONE}","nickname":"${ROOMOWNER_NICKNAME_1_VALUE}","shortName":"${NONE}","birthDate":"${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}","identificationCreateDate":"${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}","identificationExpireDate":"${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}","phone":"${ROOMOWNER_MOBILE_1_VALUE}","fax":"${NONE}","email":"${ROOMOWNER_EMAIL_1_VALUE}","lineId":"${ROOMOWNER_LINEID_1_VALUE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}","juristicId":"${NONE}","education":"${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}","occupation":"${ROOMOWNER_OCCUPATION_OTHERID_VALUE}","occupationOther":"${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}","salary":"${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}","address":"${ROOMOWNER_ADDRESS_1_VALUE}","cartype":"${ROOMOWNER_CARTYPE_CAR_EN_VALUE}","carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_EN_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_CREATE_ALLFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}

    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Set Variable If    '${i}'=='0'   "${ROOMOWNER_ASSET_REMARK_1_VALUE}"
        ...    '${i}'=='1'    "${ROOMOWNER_ASSET_REMARK_2_VALUE}"
        ...    '${i}'!='0'or'${i}'!='1'     ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_CREATE_ALLFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_CREATE_ALLFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END

Create RoomOwner input require field data Thai EN
#ห้อง B201
# Owner type[Thai]
# Language of documents[ภาษาไทย]
    
    [Arguments]    ${roomNo}

    #========== Create CheckAsset ====== 
    #Create data CheckAsset receive checkAssetId
    Run keyword And Continue On Failure    Request CreateData for CheckAsset      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_CHECKASSET_NAMETH_VALUE}    ${DATA_CHECKASSET_NAMEEN_VALUE}    ${DATA_CHECKASSET_REMARK_VALUE}
    
    #Click Create room owner
    Click Element Page    ${MENU_LBL_TYPEROOM_CREATEROOMOWNER_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_ADD_LBL_NUMBERROOM_EN} ${roomNo}

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_2_VALUE}
    #Title
    # Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_TITLE_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_TITLE_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TITLE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TITLE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_TITLE_MISS_EN_VALUE}    ${ROOMOWNER_ADD_LBL_TITLE_1_LOCATOR}

    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_1_LOCATOR}    ${ROOMOWNER_FIRSTNAME_2_VALUE}
    
    #Electric start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ELECTRICSTARTUNIT_LOCATOR}    ${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}
    #Water start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_WATERSTARTUNIT_LOCATOR}    ${ROOMOWNER_WATERSTARTUNIT_1_VALUE}

    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_EN}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}

    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    ############## Code for connect room ############## 
    #Code for connect room
    Wait Until Contains Element Text Should Be    ${ALERT_HEADER_CODEFORCONNECTROOM_LOCATOR}    ${ALERT_HEADER_CODEFORCONNECTROOM_EN}
    #Code
    # Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_CODEFORCONNECTROOM_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    #Copy code Button
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_COPYCODE_LOCATOR}    ${ALERT_BTN_COPYCODE_EN}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}
    
    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_2_VALUE}","title":"${NONE}","firstName":"${ROOMOWNER_FIRSTNAME_2_VALUE}","lastName":"${NONE}","companyName":"${NONE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Set Variable    ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END

Create RoomOwner input require field data 2 Owner Thai EN
#ห้อง B201
# Owner type[Thai]
# Language of documents[ภาษาไทย]
    
    [Arguments]    ${roomNo}

    #========== Create CheckAsset ====== 
    #Create data CheckAsset receive checkAssetId
    Run keyword And Continue On Failure    Request CreateData for CheckAsset      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_CHECKASSET_NAMETH_VALUE}    ${DATA_CHECKASSET_NAMEEN_VALUE}    ${DATA_CHECKASSET_REMARK_VALUE}
    
    #Click Create room owner
    Click Element Page    ${MENU_LBL_TYPEROOM_CREATEROOMOWNER_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_ADD_LBL_NUMBERROOM_EN} ${roomNo}

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}
    
    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_1_LOCATOR}    ${ROOMOWNER_FIRSTNAME_1_VALUE}
    
    ############## Add guest ############## 
    #Add guest
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}    ${ROOMOWNER_ADD_BTN_ADDGUEST_EN} 
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}
    
    #Click Add guest
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_2_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_2_VALUE}
    
    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_2_LOCATOR}    ${ROOMOWNER_FIRSTNAME_2_VALUE}

    #Electric start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ELECTRICSTARTUNIT_LOCATOR}    ${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}
    #Water start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_WATERSTARTUNIT_LOCATOR}    ${ROOMOWNER_WATERSTARTUNIT_1_VALUE}

    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_EN}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}

    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    ############## Code for connect room ############## 
    #Code for connect room
    Wait Until Contains Element Text Should Be    ${ALERT_HEADER_CODEFORCONNECTROOM_LOCATOR}    ${ALERT_HEADER_CODEFORCONNECTROOM_EN}
    #Code
    # Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_CODEFORCONNECTROOM_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    #Copy code Button
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_COPYCODE_LOCATOR}    ${ALERT_BTN_COPYCODE_EN}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}
    
    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}","title":"${NONE}","firstName":"${ROOMOWNER_FIRSTNAME_1_VALUE}","lastName":"${NONE}","companyName":"${NONE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"},{"tranferorType":${ROOMOWNER_TRANFERORTYPE_2_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_2_VALUE}","title":"${NONE}","firstName":"${ROOMOWNER_FIRSTNAME_2_VALUE}","lastName":"${NONE}","companyName":"${NONE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}

    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Set Variable    ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}

        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_CREATE_ALLFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END

################################################################-- Foreigners EN--################################################################
Create RoomOwner input all field data Foreigners EN
#====== Check DB ==========
#ห้อง B201
# Owner type[Foreigners]
# Title[นางสาว Miss]
# Education[ปริญญาตรี Bachelor’s degree]
# Occupation[พนักงาน / ลูกจ้างบริษัทเอกชน Employees of private companies]
# Salary (Baht)[50,000 - 100,000 บาท]
# Car type[รถยนต์]
# Manage type[อยู่เอง]
# Language of documents[ภาษาไทย]
    
    [Arguments]    ${roomNo}

    #========== Create CheckAsset ====== 
    #Create data CheckAsset receive checkAssetId
    Run keyword And Continue On Failure    Request CreateData for CheckAsset      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_CHECKASSET_NAMETH_VALUE}    ${DATA_CHECKASSET_NAMEEN_VALUE}    ${DATA_CHECKASSET_REMARK_VALUE}
    
    #Click Create room owner
    Click Element Page    ${MENU_LBL_TYPEROOM_CREATEROOMOWNER_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_ADD_LBL_NUMBERROOM_EN} ${roomNo}

    ############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "บุคคลธรรมดา - ต่างชาติ" [1] ############## 

    #Owner type *
    Select Dropdown    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_CLASS_LOCATOR}    ${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_EN_VALUE}
    Sleep    0.5s

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}
    #Title
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_TITLE_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_TITLE_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TITLE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TITLE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_TITLE_MISS_EN_VALUE}    ${ROOMOWNER_ADD_LBL_TITLE_1_LOCATOR}

    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_1_LOCATOR}    ${ROOMOWNER_FIRSTNAME_1_VALUE}
    #Last name
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_LASTNAME_1_LOCATOR}    ${ROOMOWNER_LASTNAME_1_VALUE}
    #Nickname
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_NICKNAME_1_LOCATOR}    ${ROOMOWNER_NICKNAME_1_VALUE}
    
    #Birth date
    # 30/11/1991
    #case calendar last year
    Select Calendar Last Year    ${ROOMOWNER_ADD_DATE_BIRTHDATE_1_BUTTON_LOCATOR}    ${ROOMOWNER_BIRTHDATE_YEAR_VALUE}    ${ROOMOWNER_BIRTHDATE_INPUT_DATE_YEAROLD01_VALUE}    ${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}
    Log To Console    Identification create date

    #Identification create date
    Click Element Page    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_LOCATOR}
	# Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}
    Log To Console    Identification expire date
    #Identification expire date
    Click Element Page    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_LOCATOR}
	Sleep    0.5s
    
    #Mobile
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_MOBILE_1_LOCATOR}    ${ROOMOWNER_MOBILE_1_VALUE}
    #E-mail
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_EMAIL_1_LOCATOR}    ${ROOMOWNER_EMAIL_1_VALUE} 
    #Line ID
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_LINEID_1_LOCATOR}    ${ROOMOWNER_LINEID_1_VALUE}
    # #Tax identification number
    # Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_1_LOCATOR}    ${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}
    #Education
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_EDUCATION_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_EDUCATION_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_EDUCATION_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_EDUCATION_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_EDUCATION_BACHELORSDEGREE_EN_VALUE}    ${ROOMOWNER_ADD_LBL_EDUCATION_1_LOCATOR}

    #Salary (Baht)
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_SALARY_3_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_SALARY_3_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_SALARY_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_SALARY_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_SALARY_BATH_50000_100000_EN_VALUE}    ${ROOMOWNER_ADD_LBL_SALARY_3_1_LOCATOR}

    #Address
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ADDRESS_1_LOCATOR}    ${ROOMOWNER_ADDRESS_1_VALUE}

    ############## Add car ############## 

    #Click Add car
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDCAR_1_LOCATOR}
    
    #Car type
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_CARTYPE_1_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_CARTYPE_1_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_CARTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_CARTYPE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_CARTYPE_CAR_EN_VALUE}    ${ROOMOWNER_ADD_LBL_CARTYPE_1_1_LOCATOR}

    #Car plate number
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_CARPLATENUMBER_1_1_LOCATOR}    ${ROOMOWNER_CARPLATENUMBER_1_VALUE}

    ############## Add guest ############## 

    ############## Transfer detail ############## 
    #Transfer date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_LOCATOR}
	Sleep    0.5s
    # Click Element Page    ${ROOMOWNER_ADD_LBL_TRANSFERDATE_LOCATOR}            #Click clear calendar
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    
    #Arrival date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_LOCATOR}
	Sleep    0.5s
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}

    #Appointment date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_LOCATOR}
	Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}

    # Accept date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_LOCATOR}
	Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}

    #Warranty end date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_LOCATOR}
	Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}
    
    #Occupation
    Check Select many dropdown generateId for dx     ${DEFAULT_TYPE_LONG}    ${ROOMOWNER_ADD_DDL_OCCUPATION_3_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_OCCUPATION_3_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_OCCUPATION_OTHER_EN_VALUE}    ${ROOMOWNER_ADD_LBL_OCCUPATION_3_1_LOCATOR}

    #[กรอกอาชีพอื่นๆ]
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_OCCUPATION_OTHER_3_1_LOCATOR}    ${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}
    
    #Manage type
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LOCATOR}    ${ROOMOWNER_ADD_INPUT_MANAGETYPE_LOCATOR}    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_MANAGETYPE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_MANAGETYPE_SELFLIVE_EN_VALUE}    ${ROOMOWNER_ADD_LBL_MANAGETYPE_LOCATOR}
    #Language of documents
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_INPUT_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}    ${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_LOCATOR}

    #Address (for invoicing, receipt)
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ADDRESS_FORINVOICINGRECEIPT_LOCATOR}    ${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}
    
    #Electric start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ELECTRICSTARTUNIT_LOCATOR}    ${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}
    #Water start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_WATERSTARTUNIT_LOCATOR}    ${ROOMOWNER_WATERSTARTUNIT_1_VALUE}

    ############## Asset list ############## 
    #Remark
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_1_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_1_VALUE}
    #Remark
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_2_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    
    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_EN}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}

    Sleep    2s

    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    ############## Code for connect room ############## 
    #Code for connect room
    Wait Until Contains Element Text Should Be    ${ALERT_HEADER_CODEFORCONNECTROOM_LOCATOR}    ${ALERT_HEADER_CODEFORCONNECTROOM_EN}
    #Code
    # Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_CODEFORCONNECTROOM_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    #Copy code Button
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_COPYCODE_LOCATOR}    ${ALERT_BTN_COPYCODE_EN}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    317
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}","title":"${ROOMOWNER_TITLE_MISSID_VALUE}","firstName":"${ROOMOWNER_FIRSTNAME_1_VALUE}","lastName":"${ROOMOWNER_LASTNAME_1_VALUE}","companyName":"${NONE}","nickname":"${ROOMOWNER_NICKNAME_1_VALUE}","shortName":"${NONE}","birthDate":"${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}","identificationCreateDate":"${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}","identificationExpireDate":"${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}","phone":"${ROOMOWNER_MOBILE_1_VALUE}","fax":"${NONE}","email":"${ROOMOWNER_EMAIL_1_VALUE}","lineId":"${ROOMOWNER_LINEID_1_VALUE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}","occupation":"${ROOMOWNER_OCCUPATION_OTHERID_VALUE}","occupationOther":"${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}","salary":"${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}","address":"${ROOMOWNER_ADDRESS_1_VALUE}","cartype":"${ROOMOWNER_CARTYPE_CAR_EN_VALUE}","carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_EN_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_CREATE_FOREIGNERS_ALLFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Set Variable If    '${i}'=='0'   "${ROOMOWNER_ASSET_REMARK_1_VALUE}"
        ...    '${i}'=='1'    "${ROOMOWNER_ASSET_REMARK_2_VALUE}"
        ...    '${i}'!='0'or'${i}'!='1'     ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_CREATE_FOREIGNERS_ALLFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_CREATE_FOREIGNERS_ALLFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END

Create RoomOwner input require field data Foreigners EN
#ห้อง B201
# Owner type[Foreigners]
    
    [Arguments]    ${roomNo}
    
    #========== Create CheckAsset ====== 
    #Create data CheckAsset receive checkAssetId
    Run keyword And Continue On Failure    Request CreateData for CheckAsset      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_CHECKASSET_NAMETH_VALUE}    ${DATA_CHECKASSET_NAMEEN_VALUE}    ${DATA_CHECKASSET_REMARK_VALUE}

    #Click Create room owner
    Click Element Page    ${MENU_LBL_TYPEROOM_CREATEROOMOWNER_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_ADD_LBL_NUMBERROOM_EN} ${roomNo}

    ############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "บุคคลธรรมดา - ต่างชาติ" [1] ############## 

    #Owner type *
    Select Dropdown    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_CLASS_LOCATOR}    ${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_EN_VALUE}
    Sleep    0.5s

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}

    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_1_LOCATOR}    ${ROOMOWNER_FIRSTNAME_1_VALUE}
    
    #Electric start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ELECTRICSTARTUNIT_LOCATOR}    ${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}
    #Water start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_WATERSTARTUNIT_LOCATOR}    ${ROOMOWNER_WATERSTARTUNIT_1_VALUE}

    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_EN}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}

    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    ############## Code for connect room ############## 
    #Code for connect room
    Wait Until Contains Element Text Should Be    ${ALERT_HEADER_CODEFORCONNECTROOM_LOCATOR}    ${ALERT_HEADER_CODEFORCONNECTROOM_EN}
    #Code
    # Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_CODEFORCONNECTROOM_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    #Copy code Button
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_COPYCODE_LOCATOR}    ${ALERT_BTN_COPYCODE_EN}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}
    
    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}","title":"${NONE}","firstName":"${ROOMOWNER_FIRSTNAME_1_VALUE}","lastName":"${NONE}","companyName":"${NONE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_CREATE_FOREIGNERS_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Set Variable    ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_CREATE_FOREIGNERS_REQUIREDFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_CREATE_FOREIGNERS_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END

Create RoomOwner input require field data 2 Owner Foreigners EN
#ห้อง B201
# Owner type[Thai]
# Language of documents[ภาษาไทย]
    
    [Arguments]    ${roomNo}

    #========== Create CheckAsset ====== 
    #Create data CheckAsset receive checkAssetId
    Run keyword And Continue On Failure    Request CreateData for CheckAsset      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_CHECKASSET_NAMETH_VALUE}    ${DATA_CHECKASSET_NAMEEN_VALUE}    ${DATA_CHECKASSET_REMARK_VALUE}
    
    #Click Create room owner
    Click Element Page    ${MENU_LBL_TYPEROOM_CREATEROOMOWNER_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_ADD_LBL_NUMBERROOM_EN} ${roomNo}
    
    ############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "บุคคลธรรมดา - ต่างชาติ" [1] ############## 

    #Owner type *
    Select Dropdown    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_CLASS_LOCATOR}    ${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_EN_VALUE}
    Sleep    0.5s

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}
    
    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_1_LOCATOR}    ${ROOMOWNER_FIRSTNAME_1_VALUE}
    
    ############## Add guest ############## 
    #Add guest
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}    ${ROOMOWNER_ADD_BTN_ADDGUEST_EN} 
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}
    
    #Click Add guest
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}

    ############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "บุคคลธรรมดา - ต่างชาติ" [1] ############## 

    #Owner type *
    Select Dropdown    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_1_2_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_CLASS_LOCATOR}    ${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_EN_VALUE}
    Sleep    0.5s

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_2_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_2_VALUE}
    
    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_2_LOCATOR}    ${ROOMOWNER_FIRSTNAME_2_VALUE}

    #Electric start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ELECTRICSTARTUNIT_LOCATOR}    ${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}
    #Water start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_WATERSTARTUNIT_LOCATOR}    ${ROOMOWNER_WATERSTARTUNIT_1_VALUE}

    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_EN}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    ############## Code for connect room ############## 
    #Code for connect room
    Wait Until Contains Element Text Should Be    ${ALERT_HEADER_CODEFORCONNECTROOM_LOCATOR}    ${ALERT_HEADER_CODEFORCONNECTROOM_EN}
    #Code
    # Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_CODEFORCONNECTROOM_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    #Copy code Button
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_COPYCODE_LOCATOR}    ${ALERT_BTN_COPYCODE_EN}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}
    
    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}","title":"${NONE}","firstName":"${ROOMOWNER_FIRSTNAME_1_VALUE}","lastName":"${NONE}","companyName":"${NONE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"},{"tranferorType":${ROOMOWNER_TRANFERORTYPE_2_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_2_VALUE}","title":"${NONE}","firstName":"${ROOMOWNER_FIRSTNAME_2_VALUE}","lastName":"${NONE}","companyName":"${NONE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_CREATE_FOREIGNERS_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Set Variable    ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_CREATE_FOREIGNERS_REQUIREDFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_CREATE_FOREIGNERS_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END

################################################################-- Juristic person EN--################################################################
Create RoomOwner input all field data Juristic person EN

#====== Check DB ==========
#ห้อง B201
# Owner type[Juristic person]
# Title[นางสาว Miss]
# Education[ปริญญาตรี Bachelor’s degree]
# Occupation[พนักงาน / ลูกจ้างบริษัทเอกชน Employees of private companies]
# Salary (Baht)[50,000 - 100,000 บาท]
# Car type[รถยนต์]
# Manage type[อยู่เอง]
# Language of documents[ภาษาไทย]
    
    [Arguments]    ${roomNo}

    #========== Create CheckAsset ====== 
    #Create data CheckAsset receive checkAssetId
    Run keyword And Continue On Failure    Request CreateData for CheckAsset      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_CHECKASSET_NAMETH_VALUE}    ${DATA_CHECKASSET_NAMEEN_VALUE}    ${DATA_CHECKASSET_REMARK_VALUE}
    
    #Click Create room owner
    Click Element Page    ${MENU_LBL_TYPEROOM_CREATEROOMOWNER_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_ADD_LBL_NUMBERROOM_EN} ${roomNo}

    ############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "นิติบุคคล" [1] ############## 

    #Owner type *
    Select Dropdown    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_CLASS_LOCATOR}    ${ROOMOWNER_TYPE_OWNERTYPE_JURISTICPERSON_EN_VALUE}
    Sleep    0.5s
    
    #Company name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_COMPANYNAME_LOCATOR}    ${ROOMOWNER_COMPANYNAME_1_VALUE}
    #Short name
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_SHORTNAME_LOCATOR}    ${ROOMOWNER_SHORTNAME_1_VALUE}
    #Juristic id
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_JURISTICID_LOCATOR}    ${ROOMOWNER_JURISTICID_1_VALUE}
    #Tax identification number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_JURISTIC_LOCATOR}    ${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}
    #Mobile
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_MOBILE_1_LOCATOR}    ${ROOMOWNER_MOBILE_1_VALUE}
    #Fax
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FAX_LOCATOR}    ${ROOMOWNER_FAX_1_VALUE}
    #E-mail
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_EMAIL_1_LOCATOR}    ${ROOMOWNER_EMAIL_1_VALUE}
    #Address
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ADDRESS_1_LOCATOR}    ${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}
    
    #upload image
    # ${CURDIR}/../image/suzy.jpg
    ${path}=    Normalize path    ${CURDIR}${ROOMOWNER_IMG_KEYWORD_ADD}
    # Log To Console    1${path}
    Choose File    ${ROOMOWNER_ADD_INPUT_UPLOADAPICTUREOFALEGALENTITY_LOCATOR}    ${path}

    ############## Transfer detail ############## 
    #Transfer date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_LOCATOR}
	Sleep    0.5s
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    #Arrival date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_LOCATOR}
	Sleep    0.5s
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    
    #Appointment date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_LOCATOR}
	Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}
    # Click Element Page    ${ROOMOWNER_ADD_LBL_APPOINTMENTDATE_LOCATOR}            #Click calendar calendar

    # Accept date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_LOCATOR}
	Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}

    #Warranty end date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_LOCATOR}
	Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}
    
    #Manage type
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LOCATOR}    ${ROOMOWNER_ADD_INPUT_MANAGETYPE_LOCATOR}    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_MANAGETYPE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_MANAGETYPE_SELFLIVE_EN_VALUE}    ${ROOMOWNER_ADD_LBL_MANAGETYPE_LOCATOR}
    #Language of documents
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_INPUT_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}    ${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_LOCATOR}

    #Address (for invoicing, receipt)
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ADDRESS_FORINVOICINGRECEIPT_LOCATOR}    ${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}
    
    #Electric start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ELECTRICSTARTUNIT_LOCATOR}    ${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}
    #Water start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_WATERSTARTUNIT_LOCATOR}    ${ROOMOWNER_WATERSTARTUNIT_1_VALUE}

    ############## Asset list ############## 
    #Remark
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_1_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_1_VALUE}
    #Remark
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_2_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    
    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_EN}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    ############## Code for connect room ############## 
    #Code for connect room
    Wait Until Contains Element Text Should Be    ${ALERT_HEADER_CODEFORCONNECTROOM_LOCATOR}    ${ALERT_HEADER_CODEFORCONNECTROOM_EN}
    #Code
    # Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_CODEFORCONNECTROOM_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    #Copy code Button
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_COPYCODE_LOCATOR}    ${ALERT_BTN_COPYCODE_EN}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_JURISTICPERSON_VALUE}","identificationNo":"${NONE}","title":"${NONE}","firstName":"${NONE}","lastName":"${NONE}","companyName":"${ROOMOWNER_COMPANYNAME_1_VALUE}","nickname":"${NONE}","shortName":"${ROOMOWNER_SHORTNAME_1_VALUE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${ROOMOWNER_MOBILE_1_VALUE}","fax":"${ROOMOWNER_FAX_1_VALUE}","email":"${ROOMOWNER_EMAIL_1_VALUE}","lineId":"${NONE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}","juristicId":"${ROOMOWNER_JURISTICID_1_VALUE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${ROOMOWNER_ADDRESS_1_VALUE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_EN_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_CREATE_JURISTICPERSON_ALLFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Set Variable If    '${i}'=='0'   "${ROOMOWNER_ASSET_REMARK_1_VALUE}"
        ...    '${i}'=='1'    "${ROOMOWNER_ASSET_REMARK_2_VALUE}"
        ...    '${i}'!='0'or'${i}'!='1'     ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}

        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_CREATE_JURISTICPERSON_ALLFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_JURISTICPERSON_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END   

Create RoomOwner input require field data Juristic person EN
#ห้อง B201
# Owner type[Juristic person]
# Language of documents[ภาษาไทย]

    [Arguments]    ${roomNo}

    #========== Create CheckAsset ====== 
    #Create data CheckAsset receive checkAssetId
    Run keyword And Continue On Failure    Request CreateData for CheckAsset      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_CHECKASSET_NAMETH_VALUE}    ${DATA_CHECKASSET_NAMEEN_VALUE}    ${DATA_CHECKASSET_REMARK_VALUE}
    
    #Click Create room owner
    Click Element Page    ${MENU_LBL_TYPEROOM_CREATEROOMOWNER_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_ADD_LBL_NUMBERROOM_EN} ${roomNo}

    ############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "นิติบุคคล" [1] ############## 

    #Owner type *
    Select Dropdown    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_CLASS_LOCATOR}    ${ROOMOWNER_TYPE_OWNERTYPE_JURISTICPERSON_EN_VALUE}
    Sleep    0.5s

    #Company name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_COMPANYNAME_LOCATOR}    ${ROOMOWNER_COMPANYNAME_2_VALUE}
    
    #Tax identification number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_JURISTIC_LOCATOR}    ${ROOMOWNER_TAXIDENTIFICATIONNUMBER_2_VALUE}
    
    #Electric start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ELECTRICSTARTUNIT_LOCATOR}    ${ROOMOWNER_ELECTRICSTARTUNIT_2_VALUE}
    #Water start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_WATERSTARTUNIT_LOCATOR}    ${ROOMOWNER_WATERSTARTUNIT_2_VALUE}

    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_EN}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}

    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    ############## Code for connect room ############## 
    #Code for connect room
    Wait Until Contains Element Text Should Be    ${ALERT_HEADER_CODEFORCONNECTROOM_LOCATOR}    ${ALERT_HEADER_CODEFORCONNECTROOM_EN}
    #Code
    # Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_CODEFORCONNECTROOM_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    #Copy code Button
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_COPYCODE_LOCATOR}    ${ALERT_BTN_COPYCODE_EN}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}
    
    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_JURISTICPERSON_VALUE}","identificationNo":"${NONE}","title":"${NONE}","firstName":"${NONE}","lastName":"${NONE}","companyName":"${ROOMOWNER_COMPANYNAME_2_VALUE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_2_VALUE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_CREATE_JURISTICPERSON_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Set Variable    ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_CREATE_JURISTICPERSON_REQUIREDFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}

    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_JURISTICPERSON_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END   
Create RoomOwner input require field data 2 Owner Juristic person EN
#ห้อง B201
# Owner type[Thai]
# Language of documents[ภาษาไทย]
    
    [Arguments]    ${roomNo}

    #========== Create CheckAsset ====== 
    #Create data CheckAsset receive checkAssetId
    Run keyword And Continue On Failure    Request CreateData for CheckAsset      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${DATA_CHECKASSET_NAMETH_VALUE}    ${DATA_CHECKASSET_NAMEEN_VALUE}    ${DATA_CHECKASSET_REMARK_VALUE}
    
    #Click Create room owner
    Click Element Page    ${MENU_LBL_TYPEROOM_CREATEROOMOWNER_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_ADD_LBL_NUMBERROOM_EN} ${roomNo}
    
    ############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "นิติบุคคล" [1] ############## 

    #Owner type *
    Select Dropdown    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_CLASS_LOCATOR}    ${ROOMOWNER_TYPE_OWNERTYPE_JURISTICPERSON_EN_VALUE}
    Sleep    0.5s

    #Company name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_COMPANYNAME_LOCATOR}    ${ROOMOWNER_COMPANYNAME_2_VALUE}
    
    #Tax identification number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_JURISTIC_LOCATOR}    ${ROOMOWNER_TAXIDENTIFICATIONNUMBER_2_VALUE}
    
    ############## Add guest ############## 
    #Add guest
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}    ${ROOMOWNER_ADD_BTN_ADDGUEST_EN} 
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}
    
    #Click Add guest
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}

    # ############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "ไทย" [1] ############## 

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_2_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_3_VALUE}
    
    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_2_LOCATOR}    ${ROOMOWNER_FIRSTNAME_3_VALUE}

    #Electric start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ELECTRICSTARTUNIT_LOCATOR}    ${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}
    #Water start unit *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_WATERSTARTUNIT_LOCATOR}    ${ROOMOWNER_WATERSTARTUNIT_1_VALUE}

    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_EN}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}

    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    ############## Code for connect room ############## 
    #Code for connect room
    Wait Until Contains Element Text Should Be    ${ALERT_HEADER_CODEFORCONNECTROOM_LOCATOR}    ${ALERT_HEADER_CODEFORCONNECTROOM_EN}
    #Code
    # Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_CODEFORCONNECTROOM_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    #Copy code Button
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_COPYCODE_LOCATOR}    ${ALERT_BTN_COPYCODE_EN}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}
    
    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_JURISTICPERSON_VALUE}","identificationNo":"${NONE}","title":"${NONE}","firstName":"${NONE}","lastName":"${NONE}","companyName":"${ROOMOWNER_COMPANYNAME_2_VALUE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_2_VALUE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${NONE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"},{"tranferorType":${ROOMOWNER_TRANFERORTYPE_2_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_3_VALUE}","title":"${NONE}","firstName":"${ROOMOWNER_FIRSTNAME_3_VALUE}","lastName":"${NONE}","companyName":"${NONE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${NONE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    
    # ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_JURISTICPERSON_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}","title":"${NONE}","firstName":"${ROOMOWNER_FIRSTNAME_1_VALUE}","lastName":"${NONE}","companyName":"${NONE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"},{"tranferorType":${ROOMOWNER_TRANFERORTYPE_2_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_JURISTICPERSON_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_2_VALUE}","title":"${NONE}","firstName":"${ROOMOWNER_FIRSTNAME_2_VALUE}","lastName":"${NONE}","companyName":"${NONE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_CREATE_JURISTICPERSON_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}

    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Set Variable    ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_CREATE_JURISTICPERSON_REQUIREDFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}

    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_JURISTICPERSON_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END   
################################################################################################################################
################################################################-- Edit RoomOwner EN --################################################################
################################################################-- Thai EN --################################################################
Edit RoomOwner input all field data Thai EN
    [Arguments]    ${roomNo}

    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_INFO_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_INFO_LBL_NUMBERROOM_EN} ${roomNo}

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_EN} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== [Edit] EditRoomOwner =============== 

    #Edit data
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}    ${ROOMOWNER_LBL_EDIT_DATA_EN} 
    #Click Edit data
    Click Element Page    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_EN} ${roomNo}

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_2_VALUE}
    #Title
    Click Element Page    ${ROOMOWNER_ADD_DDL_TITLE_1_LOCATOR}
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_TITLE_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_TITLE_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TITLE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TITLE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_TITLE_MRS_EN_VALUE}    ${ROOMOWNER_ADD_LBL_TITLE_1_LOCATOR}

    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_1_LOCATOR}    ${ROOMOWNER_FIRSTNAME_2_VALUE}
    #Last name
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_LASTNAME_1_LOCATOR}    ${ROOMOWNER_LASTNAME_2_VALUE}
    #Nickname
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_NICKNAME_1_LOCATOR}    ${ROOMOWNER_NICKNAME_2_VALUE}
    
    #Birth date
    # 30/11/1991
     Select Calendar Last Year    ${ROOMOWNER_ADD_DATE_BIRTHDATE_1_BUTTON_LOCATOR}    ${ROOMOWNER_BIRTHDATE_YEAR_VALUE}    ${ROOMOWNER_BIRTHDATE_INPUT_DATE_YEAROLD01_VALUE}    ${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}
    Log To Console    Identification create date

    #Identification create date
    Click Element Page    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_LOCATOR}
	# Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}
    Log To Console    Identification expire date
    #Identification expire date
    Click Element Page    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_LOCATOR}
	Sleep    0.5s
    
    #Mobile
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_MOBILE_1_LOCATOR}    ${ROOMOWNER_MOBILE_2_VALUE}
    #E-mail
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_EMAIL_1_LOCATOR}    ${ROOMOWNER_EMAIL_2_VALUE} 
    #Line ID
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_LINEID_1_LOCATOR}    ${ROOMOWNER_LINEID_2_VALUE}
    #Tax identification number
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_1_LOCATOR}    ${ROOMOWNER_TAXIDENTIFICATIONNUMBER_2_VALUE}
    #Education
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_EDUCATION_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_EDUCATION_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_EDUCATION_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_EDUCATION_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_EDUCATION_BACHELORSDEGREE_EN_VALUE}    ${ROOMOWNER_ADD_LBL_EDUCATION_1_LOCATOR}

    #Salary (Baht)
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_SALARY_2_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_SALARY_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_SALARY_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_SALARY_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_SALARY_BATH_50000_100000_EN_VALUE}    ${ROOMOWNER_ADD_LBL_SALARY_2_1_LOCATOR}

    #Address
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ADDRESS_1_LOCATOR}    ${ROOMOWNER_ADDRESS_2_VALUE}

    #Occupation
    Check Select many dropdown generateId for dx     ${DEFAULT_TYPE_LONG}    ${ROOMOWNER_ADD_DDL_OCCUPATION_2_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_OCCUPATION_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_OCCUPATION_OTHER_EN_VALUE}    ${ROOMOWNER_ADD_LBL_OCCUPATION_2_1_LOCATOR}

    #[กรอกอาชีพอื่นๆ]
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_OCCUPATION_OTHER_2_1_LOCATOR}    ${ROOMOWNER_OCCUPATION_OTHER_2_VALUE}
    
    #Manage type
    # Click Element Page    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LOCATOR}
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LOCATOR}    ${ROOMOWNER_ADD_INPUT_MANAGETYPE_LOCATOR}    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_MANAGETYPE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_MANAGETYPE_SELFLIVE_EN_VALUE}    ${ROOMOWNER_ADD_LBL_MANAGETYPE_LOCATOR}
    #Language of documents
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_INPUT_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}    ${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_LOCATOR}

    #Address (for invoicing, receipt)
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ADDRESS_FORINVOICINGRECEIPT_LOCATOR}    ${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_2_VALUE}

    ############## Asset list ############## 
    #Remark
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_1_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_1_VALUE}
    #Remark
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_2_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    
    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_EN}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_2_VALUE}","title":"${ROOMOWNER_TITLE_MRSID_VALUE}","firstName":"${ROOMOWNER_FIRSTNAME_2_VALUE}","lastName":"${ROOMOWNER_LASTNAME_2_VALUE}","companyName":"${NONE}","nickname":"${ROOMOWNER_NICKNAME_2_VALUE}","shortName":"${NONE}","birthDate":"${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}","identificationCreateDate":"${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}","identificationExpireDate":"${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}","phone":"${ROOMOWNER_MOBILE_2_VALUE}","fax":"${NONE}","email":"${ROOMOWNER_EMAIL_2_VALUE}","lineId":"${ROOMOWNER_LINEID_2_VALUE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_2_VALUE}","juristicId":"${NONE}","education":"${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}","occupation":"${ROOMOWNER_OCCUPATION_OTHERID_VALUE}","occupationOther":"${ROOMOWNER_OCCUPATION_OTHER_2_VALUE}","salary":"${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}","address":"${ROOMOWNER_ADDRESS_2_VALUE}","cartype":"${ROOMOWNER_CARTYPE_CAR_EN_VALUE}","carplateNumber":"${ROOMOWNER_CARPLATENUMBER_2_VALUE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_EN_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_2_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_2_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_2_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_EDIT_ALLFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Set Variable If    '${i}'=='0'   "${ROOMOWNER_ASSET_REMARK_1_VALUE}"
        ...    '${i}'=='1'    "${ROOMOWNER_ASSET_REMARK_2_VALUE}"
        ...    '${i}'!='0'or'${i}'!='1'     ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_EDIT_ALLFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_ALLFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END

Edit RoomOwner input require field data Thai EN
    [Arguments]    ${roomNo}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_INFO_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_INFO_LBL_NUMBERROOM_EN} ${roomNo}

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_EN} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== [Edit] EditRoomOwner =============== 

    #Edit data
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}    ${ROOMOWNER_LBL_EDIT_DATA_EN} 
    #Click Edit data
    Click Element Page    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_EN} ${roomNo}

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_3_VALUE}
    
    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_1_LOCATOR}    ${ROOMOWNER_FIRSTNAME_3_VALUE}
    
    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_EN}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_3_VALUE}","title":"${ROOMOWNER_TITLE_MISSID_VALUE}","firstName":"${ROOMOWNER_FIRSTNAME_3_VALUE}","lastName":"${ROOMOWNER_LASTNAME_1_VALUE}","companyName":"${NONE}","nickname":"${ROOMOWNER_NICKNAME_1_VALUE}","shortName":"${NONE}","birthDate":"${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}","identificationCreateDate":"${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}","identificationExpireDate":"${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}","phone":"${ROOMOWNER_MOBILE_1_VALUE}","fax":"${NONE}","email":"${ROOMOWNER_EMAIL_1_VALUE}","lineId":"${ROOMOWNER_LINEID_1_VALUE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}","juristicId":"${NONE}","education":"${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}","occupation":"${ROOMOWNER_OCCUPATION_OTHERID_VALUE}","occupationOther":"${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}","salary":"${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}","address":"${ROOMOWNER_ADDRESS_1_VALUE}","cartype":"${ROOMOWNER_CARTYPE_CAR_EN_VALUE}","carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_EN_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_2_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_2_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
            ${remark}=    Convert To String    ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END    

Edit RoomOwner input require field data add owner Thai EN
    [Arguments]    ${roomNo}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_INFO_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_INFO_LBL_NUMBERROOM_EN} ${roomNo}

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_EN} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== [Edit] EditRoomOwner =============== 

    #Edit data
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}    ${ROOMOWNER_LBL_EDIT_DATA_EN} 
    #Click Edit data
    Click Element Page    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_EN} ${roomNo}

    ############## Add guest ############## 
    #Add guest
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}    ${ROOMOWNER_ADD_BTN_ADDGUEST_EN} 
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}
    
    #Click Add guest
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_2_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_3_VALUE}
    
    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_2_LOCATOR}    ${ROOMOWNER_FIRSTNAME_3_VALUE}
    
    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_EN}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_2_VALUE}","title":"${ROOMOWNER_TITLE_MISSID_VALUE}","firstName":"${ROOMOWNER_FIRSTNAME_2_VALUE}","lastName":"${ROOMOWNER_LASTNAME_1_VALUE}","companyName":"${NONE}","nickname":"${ROOMOWNER_NICKNAME_1_VALUE}","shortName":"${NONE}","birthDate":"${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}","identificationCreateDate":"${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}","identificationExpireDate":"${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}","phone":"${ROOMOWNER_MOBILE_1_VALUE}","fax":"${NONE}","email":"${ROOMOWNER_EMAIL_1_VALUE}","lineId":"${ROOMOWNER_LINEID_1_VALUE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}","juristicId":"${NONE}","education":"${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}","occupation":"${ROOMOWNER_OCCUPATION_OTHERID_VALUE}","occupationOther":"${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}","salary":"${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}","address":"${ROOMOWNER_ADDRESS_1_VALUE}","cartype":"${ROOMOWNER_CARTYPE_CAR_EN_VALUE}","carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_EN_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"},{"tranferorType":${ROOMOWNER_TRANFERORTYPE_2_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_3_VALUE}","title":"${ROOMOWNER_TITLE_MISSID_VALUE}","firstName":"${ROOMOWNER_FIRSTNAME_3_VALUE}","lastName":"${ROOMOWNER_LASTNAME_1_VALUE}","companyName":"${NONE}","nickname":"${ROOMOWNER_NICKNAME_1_VALUE}","shortName":"${NONE}","birthDate":"${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}","identificationCreateDate":"${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}","identificationExpireDate":"${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}","phone":"${ROOMOWNER_MOBILE_1_VALUE}","fax":"${NONE}","email":"${ROOMOWNER_EMAIL_1_VALUE}","lineId":"${ROOMOWNER_LINEID_1_VALUE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}","juristicId":"${NONE}","education":"${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}","occupation":"${ROOMOWNER_OCCUPATION_OTHERID_VALUE}","occupationOther":"${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}","salary":"${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}","address":"${ROOMOWNER_ADDRESS_1_VALUE}","cartype":"${ROOMOWNER_CARTYPE_CAR_EN_VALUE}","carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_EN_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Convert To String    ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END    

Edit RoomOwner input require field data delete owner Thai EN 
    [Arguments]    ${roomNo}

    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_INFO_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_INFO_LBL_NUMBERROOM_EN} ${roomNo}

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_EN} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== [Edit] EditRoomOwner =============== 

    #Edit data
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}    ${ROOMOWNER_LBL_EDIT_DATA_EN} 
    #Click Edit data
    Click Element Page    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_EN} ${roomNo}

    ############## Delete guest ############## 
    #Delete guest
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_ICON_DELETEGUEST_LOCATOR}
    
    #Click Delete guest
    Click Element Page    ${ROOMOWNER_ADD_ICON_DELETEGUEST_LOCATOR}

    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_EN}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}","title":"${ROOMOWNER_TITLE_MISSID_VALUE}","firstName":"${ROOMOWNER_FIRSTNAME_1_VALUE}","lastName":"${ROOMOWNER_LASTNAME_1_VALUE}","companyName":"${NONE}","nickname":"${ROOMOWNER_NICKNAME_1_VALUE}","shortName":"${NONE}","birthDate":"${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}","identificationCreateDate":"${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}","identificationExpireDate":"${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}","phone":"${ROOMOWNER_MOBILE_1_VALUE}","fax":"${NONE}","email":"${ROOMOWNER_EMAIL_1_VALUE}","lineId":"${ROOMOWNER_LINEID_1_VALUE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}","juristicId":"${NONE}","education":"${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}","occupation":"${ROOMOWNER_OCCUPATION_OTHERID_VALUE}","occupationOther":"${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}","salary":"${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}","address":"${ROOMOWNER_ADDRESS_1_VALUE}","cartype":"${ROOMOWNER_CARTYPE_CAR_EN_VALUE}","carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_EN_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Convert To String    ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}

        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END  
################################################################-- Foreigners EN --################################################################
Edit RoomOwner input all field data Foreigners EN
    [Arguments]    ${roomNo}

    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_INFO_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_INFO_LBL_NUMBERROOM_EN} ${roomNo}

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_EN} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== [Edit] EditRoomOwner =============== 

    #Edit data
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}    ${ROOMOWNER_LBL_EDIT_DATA_EN} 
    #Click Edit data
    Click Element Page    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_EN} ${roomNo}

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_2_VALUE}
    #Title
    Click Element Page    ${ROOMOWNER_ADD_DDL_TITLE_1_LOCATOR}
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_TITLE_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_TITLE_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TITLE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TITLE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_TITLE_MRS_EN_VALUE}    ${ROOMOWNER_ADD_LBL_TITLE_1_LOCATOR}

    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_1_LOCATOR}    ${ROOMOWNER_FIRSTNAME_2_VALUE}
    #Last name
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_LASTNAME_1_LOCATOR}    ${ROOMOWNER_LASTNAME_2_VALUE}
    #Nickname
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_NICKNAME_1_LOCATOR}    ${ROOMOWNER_NICKNAME_2_VALUE}
    
    #Birth date
    # 30/11/1991
     Select Calendar Last Year    ${ROOMOWNER_ADD_DATE_BIRTHDATE_1_BUTTON_LOCATOR}    ${ROOMOWNER_BIRTHDATE_YEAR_VALUE}    ${ROOMOWNER_BIRTHDATE_INPUT_DATE_YEAROLD01_VALUE}    ${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}
    Log To Console    Identification create date

    #Identification create date
    Click Element Page    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_LOCATOR}
	# Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}
    Log To Console    Identification expire date
    #Identification expire date
    Click Element Page    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_LOCATOR}
	Sleep    0.5s
    
    #Mobile
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_MOBILE_1_LOCATOR}    ${ROOMOWNER_MOBILE_2_VALUE}
    #E-mail
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_EMAIL_1_LOCATOR}    ${ROOMOWNER_EMAIL_2_VALUE} 
    #Line ID
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_LINEID_1_LOCATOR}    ${ROOMOWNER_LINEID_2_VALUE}
    #Tax identification number
    # Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_1_LOCATOR}    ${ROOMOWNER_TAXIDENTIFICATIONNUMBER_2_VALUE}
    #Education
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_EDUCATION_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_EDUCATION_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_EDUCATION_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_EDUCATION_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_EDUCATION_BACHELORSDEGREE_EN_VALUE}    ${ROOMOWNER_ADD_LBL_EDUCATION_1_LOCATOR}

    #Salary (Baht)
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_SALARY_3_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_SALARY_3_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_SALARY_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_SALARY_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_SALARY_BATH_50000_100000_EN_VALUE}    ${ROOMOWNER_ADD_LBL_SALARY_3_1_LOCATOR}

    #Address
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ADDRESS_1_LOCATOR}    ${ROOMOWNER_ADDRESS_2_VALUE}

    #Occupation
    Check Select many dropdown generateId for dx     ${DEFAULT_TYPE_LONG}    ${ROOMOWNER_ADD_DDL_OCCUPATION_3_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_OCCUPATION_3_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_OCCUPATION_OTHER_EN_VALUE}    ${ROOMOWNER_ADD_LBL_OCCUPATION_3_1_LOCATOR}

    #[กรอกอาชีพอื่นๆ]
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_OCCUPATION_OTHER_3_1_LOCATOR}    ${ROOMOWNER_OCCUPATION_OTHER_2_VALUE}
    
    #Manage type
    # Click Element Page    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LOCATOR}
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LOCATOR}    ${ROOMOWNER_ADD_INPUT_MANAGETYPE_LOCATOR}    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_MANAGETYPE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_MANAGETYPE_SELFLIVE_EN_VALUE}    ${ROOMOWNER_ADD_LBL_MANAGETYPE_LOCATOR}
    #Language of documents
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_INPUT_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}    ${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_LOCATOR}

    #Address (for invoicing, receipt)
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ADDRESS_FORINVOICINGRECEIPT_LOCATOR}    ${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_2_VALUE}

    ############## Asset list ############## 
    #Remark
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_1_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_1_VALUE}
    #Remark
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_2_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    
    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_EN}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_2_VALUE}","title":"${ROOMOWNER_TITLE_MRSID_VALUE}","firstName":"${ROOMOWNER_FIRSTNAME_2_VALUE}","lastName":"${ROOMOWNER_LASTNAME_2_VALUE}","companyName":"${NONE}","nickname":"${ROOMOWNER_NICKNAME_2_VALUE}","shortName":"${NONE}","birthDate":"${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}","identificationCreateDate":"${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}","identificationExpireDate":"${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}","phone":"${ROOMOWNER_MOBILE_2_VALUE}","fax":"${NONE}","email":"${ROOMOWNER_EMAIL_2_VALUE}","lineId":"${ROOMOWNER_LINEID_2_VALUE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}","occupation":"${ROOMOWNER_OCCUPATION_OTHERID_VALUE}","occupationOther":"${ROOMOWNER_OCCUPATION_OTHER_2_VALUE}","salary":"${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}","address":"${ROOMOWNER_ADDRESS_2_VALUE}","cartype":"${ROOMOWNER_CARTYPE_CAR_EN_VALUE}","carplateNumber":"${ROOMOWNER_CARPLATENUMBER_2_VALUE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_EN_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_2_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_2_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_2_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_EDIT_FOREIGNERS_ALLFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Set Variable If    '${i}'=='0'   "${ROOMOWNER_ASSET_REMARK_1_VALUE}"
        ...    '${i}'=='1'    "${ROOMOWNER_ASSET_REMARK_2_VALUE}"
        ...    '${i}'!='0'or'${i}'!='1'     ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}

        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_EDIT_FOREIGNERS_ALLFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_FOREIGNERS_ALLFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END

Edit RoomOwner input require field data Foreigners EN
    [Arguments]    ${roomNo}

    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_INFO_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_INFO_LBL_NUMBERROOM_EN} ${roomNo}

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_EN} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== [Edit] EditRoomOwner =============== 

    #Edit data
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}    ${ROOMOWNER_LBL_EDIT_DATA_EN} 
    #Click Edit data
    Click Element Page    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_EN} ${roomNo}

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_3_VALUE}
    
    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_1_LOCATOR}    ${ROOMOWNER_FIRSTNAME_3_VALUE}
    
    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_EN}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_3_VALUE}","title":"${ROOMOWNER_TITLE_MISSID_VALUE}","firstName":"${ROOMOWNER_FIRSTNAME_3_VALUE}","lastName":"${ROOMOWNER_LASTNAME_1_VALUE}","companyName":"${NONE}","nickname":"${ROOMOWNER_NICKNAME_1_VALUE}","shortName":"${NONE}","birthDate":"${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}","identificationCreateDate":"${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}","identificationExpireDate":"${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}","phone":"${ROOMOWNER_MOBILE_1_VALUE}","fax":"${NONE}","email":"${ROOMOWNER_EMAIL_1_VALUE}","lineId":"${ROOMOWNER_LINEID_1_VALUE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}","juristicId":"${NONE}","education":"${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}","occupation":"${ROOMOWNER_OCCUPATION_OTHERID_VALUE}","occupationOther":"${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}","salary":"${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}","address":"${ROOMOWNER_ADDRESS_1_VALUE}","cartype":"${ROOMOWNER_CARTYPE_CAR_EN_VALUE}","carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_EN_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_2_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_2_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Convert To String    ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END    

Edit RoomOwner input require field data add owner Foreigners EN
    [Arguments]    ${roomNo}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_INFO_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_INFO_LBL_NUMBERROOM_EN} ${roomNo}

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_EN} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== [Edit] EditRoomOwner =============== 

    #Edit data
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}    ${ROOMOWNER_LBL_EDIT_DATA_EN} 
    #Click Edit data
    Click Element Page    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_EN} ${roomNo}

    ############## Add guest ############## 
    #Add guest
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}    ${ROOMOWNER_ADD_BTN_ADDGUEST_EN} 
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}
    
    #Click Add guest
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}

    ############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "บุคคลธรรมดา - ต่างชาติ" [1] ############## 

    #Owner type *
    Select Dropdown    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_1_2_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_CLASS_LOCATOR}    ${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_EN_VALUE}
    Sleep    0.5s

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_2_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_3_VALUE}
    
    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_2_LOCATOR}    ${ROOMOWNER_FIRSTNAME_3_VALUE}
    
    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_EN}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}","title":"${ROOMOWNER_TITLE_MISSID_VALUE}","firstName":"${ROOMOWNER_FIRSTNAME_1_VALUE}","lastName":"${ROOMOWNER_LASTNAME_1_VALUE}","companyName":"${NONE}","nickname":"${ROOMOWNER_NICKNAME_1_VALUE}","shortName":"${NONE}","birthDate":"${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}","identificationCreateDate":"${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}","identificationExpireDate":"${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}","phone":"${ROOMOWNER_MOBILE_1_VALUE}","fax":"${NONE}","email":"${ROOMOWNER_EMAIL_1_VALUE}","lineId":"${ROOMOWNER_LINEID_1_VALUE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}","juristicId":"${NONE}","education":"${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}","occupation":"${ROOMOWNER_OCCUPATION_OTHERID_VALUE}","occupationOther":"${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}","salary":"${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}","address":"${ROOMOWNER_ADDRESS_1_VALUE}","cartype":"${ROOMOWNER_CARTYPE_CAR_EN_VALUE}","carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_EN_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"},{"tranferorType":${ROOMOWNER_TRANFERORTYPE_2_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_3_VALUE}","title":"${ROOMOWNER_TITLE_MISSID_VALUE}","firstName":"${ROOMOWNER_FIRSTNAME_3_VALUE}","lastName":"${ROOMOWNER_LASTNAME_1_VALUE}","companyName":"${NONE}","nickname":"${ROOMOWNER_NICKNAME_1_VALUE}","shortName":"${NONE}","birthDate":"${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}","identificationCreateDate":"${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}","identificationExpireDate":"${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}","phone":"${ROOMOWNER_MOBILE_1_VALUE}","fax":"${NONE}","email":"${ROOMOWNER_EMAIL_1_VALUE}","lineId":"${ROOMOWNER_LINEID_1_VALUE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}","juristicId":"${NONE}","education":"${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}","occupation":"${ROOMOWNER_OCCUPATION_OTHERID_VALUE}","occupationOther":"${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}","salary":"${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}","address":"${ROOMOWNER_ADDRESS_1_VALUE}","cartype":"${ROOMOWNER_CARTYPE_CAR_EN_VALUE}","carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_EN_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Convert To String    ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END    

Edit RoomOwner input require field data delete owner Foreigners EN 
    [Arguments]    ${roomNo}

    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_INFO_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_INFO_LBL_NUMBERROOM_EN} ${roomNo}

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_EN} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== [Edit] EditRoomOwner =============== 

    #Edit data
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}    ${ROOMOWNER_LBL_EDIT_DATA_EN} 
    #Click Edit data
    Click Element Page    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_EN} ${roomNo}

    ############## Delete guest ############## 
    #Delete guest
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_ICON_DELETEGUEST_LOCATOR}
    
    #Click Delete guest
    Click Element Page    ${ROOMOWNER_ADD_ICON_DELETEGUEST_LOCATOR}

    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_EN}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}","title":"${ROOMOWNER_TITLE_MISSID_VALUE}","firstName":"${ROOMOWNER_FIRSTNAME_1_VALUE}","lastName":"${ROOMOWNER_LASTNAME_1_VALUE}","companyName":"${NONE}","nickname":"${ROOMOWNER_NICKNAME_1_VALUE}","shortName":"${NONE}","birthDate":"${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}","identificationCreateDate":"${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}","identificationExpireDate":"${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}","phone":"${ROOMOWNER_MOBILE_1_VALUE}","fax":"${NONE}","email":"${ROOMOWNER_EMAIL_1_VALUE}","lineId":"${ROOMOWNER_LINEID_1_VALUE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}","juristicId":"${NONE}","education":"${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}","occupation":"${ROOMOWNER_OCCUPATION_OTHERID_VALUE}","occupationOther":"${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}","salary":"${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}","address":"${ROOMOWNER_ADDRESS_1_VALUE}","cartype":"${ROOMOWNER_CARTYPE_CAR_EN_VALUE}","carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_EN_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Convert To String    ${NONE}
        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END   

################################################################-- Juristic person EN --################################################################
Edit RoomOwner input all field data Juristic person EN
    
    [Arguments]    ${roomNo}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_INFO_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_INFO_LBL_NUMBERROOM_EN} ${roomNo}

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_EN} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== [Edit] EditRoomOwner =============== 

    #Edit data
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}    ${ROOMOWNER_LBL_EDIT_DATA_EN} 
    #Click Edit data
    Click Element Page    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_EN} ${roomNo}

    #Company name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_COMPANYNAME_LOCATOR}    ${ROOMOWNER_COMPANYNAME_1_VALUE}
    #Short name
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_SHORTNAME_LOCATOR}    ${ROOMOWNER_SHORTNAME_1_VALUE}
    #Juristic id
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_JURISTICID_LOCATOR}    ${ROOMOWNER_JURISTICID_1_VALUE}
    #Tax identification number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_JURISTIC_LOCATOR}    ${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}
    #Mobile
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_MOBILE_1_LOCATOR}    ${ROOMOWNER_MOBILE_1_VALUE}
    #Fax
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FAX_LOCATOR}    ${ROOMOWNER_FAX_1_VALUE}
    #E-mail
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_EMAIL_1_LOCATOR}    ${ROOMOWNER_EMAIL_1_VALUE}
    #Address
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ADDRESS_1_LOCATOR}    ${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}
    
    #Manage type
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LOCATOR}    ${ROOMOWNER_ADD_INPUT_MANAGETYPE_LOCATOR}    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_MANAGETYPE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_MANAGETYPE_SELFLIVE_EN_VALUE}    ${ROOMOWNER_ADD_LBL_MANAGETYPE_LOCATOR}
    #Language of documents
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_INPUT_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}    ${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_LOCATOR}

    #Address (for invoicing, receipt)
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ADDRESS_FORINVOICINGRECEIPT_LOCATOR}    ${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}
    
    ############## Asset list ############## 
    #Remark
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_1_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_1_VALUE}
    #Remark
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_2_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    
    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_EN}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_JURISTICPERSON_VALUE}","identificationNo":"${NONE}","title":"${NONE}","firstName":"${NONE}","lastName":"${NONE}","companyName":"${ROOMOWNER_COMPANYNAME_1_VALUE}","nickname":"${NONE}","shortName":"${ROOMOWNER_SHORTNAME_1_VALUE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${ROOMOWNER_MOBILE_1_VALUE}","fax":"${ROOMOWNER_FAX_1_VALUE}","email":"${ROOMOWNER_EMAIL_1_VALUE}","lineId":"${NONE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}","juristicId":"${ROOMOWNER_JURISTICID_1_VALUE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${ROOMOWNER_ADDRESS_1_VALUE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_EN_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_EDIT_JURISTICPERSON_ALLFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Set Variable If    '${i}'=='0'   "${ROOMOWNER_ASSET_REMARK_1_VALUE}"
        ...    '${i}'=='1'    "${ROOMOWNER_ASSET_REMARK_2_VALUE}"
        ...    '${i}'!='0'or'${i}'!='1'     ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_EDIT_JURISTICPERSON_ALLFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_JURISTICPERSON_ALLFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END

Edit RoomOwner input require field data Juristic person EN
    [Arguments]    ${roomNo}

    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_INFO_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_INFO_LBL_NUMBERROOM_EN} ${roomNo}

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_EN} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== [Edit] EditRoomOwner =============== 

    #Edit data
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}    ${ROOMOWNER_LBL_EDIT_DATA_EN} 
    #Click Edit data
    Click Element Page    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_EN} ${roomNo}

    #Company name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_COMPANYNAME_LOCATOR}    ${ROOMOWNER_COMPANYNAME_1_VALUE}

    #Tax identification number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_JURISTIC_LOCATOR}    ${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}
    
    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_EN}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_JURISTICPERSON_VALUE}","identificationNo":"${NONE}","title":"${NONE}","firstName":"${NONE}","lastName":"${NONE}","companyName":"${ROOMOWNER_COMPANYNAME_1_VALUE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_EDIT_JURISTICPERSON_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
            ${remark}=    Convert To String    ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}

        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_EDIT_JURISTICPERSON_REQUIREDFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    # Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_JURISTICPERSON_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END   

Edit RoomOwner input require field data add owner Juristic person EN
    [Arguments]    ${roomNo}

    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_INFO_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_INFO_LBL_NUMBERROOM_EN} ${roomNo}

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_EN} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== [Edit] EditRoomOwner =============== 

    #Edit data
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}    ${ROOMOWNER_LBL_EDIT_DATA_EN} 
    #Click Edit data
    Click Element Page    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_EN} ${roomNo}

    ############## Add guest ############## 
    #Add guest
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}    ${ROOMOWNER_ADD_BTN_ADDGUEST_EN} 
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}
    
    #Click Add guest
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}

    ############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "บุคคลธรรมดา - ไทย" [1] ############## 

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_2_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_3_VALUE}
    
    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_2_LOCATOR}    ${ROOMOWNER_FIRSTNAME_3_VALUE}
    
    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_EN}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_JURISTICPERSON_VALUE}","identificationNo":"${NONE}","title":"${NONE}","firstName":"${NONE}","lastName":"${NONE}","companyName":"${ROOMOWNER_COMPANYNAME_2_VALUE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_2_VALUE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${NONE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"},{"tranferorType":${ROOMOWNER_TRANFERORTYPE_2_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_3_VALUE}","title":"${NONE}","firstName":"${ROOMOWNER_FIRSTNAME_3_VALUE}","lastName":"${NONE}","companyName":"${NONE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${NONE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_EDIT_JURISTICPERSON_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Convert To String    ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_EDIT_JURISTICPERSON_REQUIREDFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_JURISTICPERSON_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END   

Edit RoomOwner input require field data delete owner Juristic person EN 
    [Arguments]    ${roomNo}

    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_INFO_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_INFO_LBL_NUMBERROOM_EN} ${roomNo}

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_EN} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== [Edit] EditRoomOwner =============== 

    #Edit data
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}    ${ROOMOWNER_LBL_EDIT_DATA_EN} 
    #Click Edit data
    Click Element Page    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_EN} ${roomNo}

    ############## Delete guest ############## 
    #Delete guest
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_ICON_DELETEGUEST_LOCATOR}
    
    #Click Delete guest
    Click Element Page    ${ROOMOWNER_ADD_ICON_DELETEGUEST_LOCATOR}

    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_EN}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_JURISTICPERSON_VALUE}","identificationNo":"${NONE}","title":"${NONE}","firstName":"${NONE}","lastName":"${NONE}","companyName":"${ROOMOWNER_COMPANYNAME_2_VALUE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_2_VALUE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${NONE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_EDIT_JURISTICPERSON_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Convert To String    ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}

        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}
    
    Request Verify DB Check Data Check Room Asset    ${MYSQL_TYPE_EDIT_JURISTICPERSON_REQUIREDFIELD}    ${roomTransferId}    ${valArrDataCheckRoomAsset}

    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_EDIT_JURISTICPERSON_REQUIREDFIELD}    ${roomId}    ${roomTransferId}    ${roomOwnerId}    ${dataCars}
    END       
################################################################################################################################
################################################################--ChangeOwner Thai EN--################################################################
ChangeOwner RoomOwner input all field data Thai EN

#====== Check DB ==========
#ห้อง B201
# Owner type[Thai]
# Title[นางสาว Miss]
# Education[ปริญญาตรี Bachelor’s degree]
# Occupation[พนักงาน / ลูกจ้างบริษัทเอกชน Employees of private companies]
# Salary (Baht)[50,000 - 100,000 บาท]
# Car type[รถยนต์]
# Manage type[อยู่เอง]
# Language of documents[ภาษาไทย]

    [Arguments]    ${roomNo}

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}
    #Title
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_TITLE_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_TITLE_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TITLE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TITLE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_TITLE_MISS_EN_VALUE}    ${ROOMOWNER_ADD_LBL_TITLE_1_LOCATOR}

    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_1_LOCATOR}    ${ROOMOWNER_FIRSTNAME_1_VALUE}
    #Last name
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_LASTNAME_1_LOCATOR}    ${ROOMOWNER_LASTNAME_1_VALUE}
    #Nickname
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_NICKNAME_1_LOCATOR}    ${ROOMOWNER_NICKNAME_1_VALUE}
    
    #Birth date
    # 30/11/1991
     Select Calendar Last Year    ${ROOMOWNER_ADD_DATE_BIRTHDATE_1_BUTTON_LOCATOR}    ${ROOMOWNER_BIRTHDATE_YEAR_VALUE}    ${ROOMOWNER_BIRTHDATE_INPUT_DATE_YEAROLD01_VALUE}    ${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}
    Log To Console    Identification create date

    #Identification create date
    Click Element Page    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_LOCATOR}
	# Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}
    Log To Console    Identification expire date
    #Identification expire date
    Click Element Page    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_LOCATOR}
	Sleep    0.5s
    
    #Mobile
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_MOBILE_1_LOCATOR}    ${ROOMOWNER_MOBILE_1_VALUE}
    #E-mail
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_EMAIL_1_LOCATOR}    ${ROOMOWNER_EMAIL_1_VALUE} 
    #Line ID
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_LINEID_1_LOCATOR}    ${ROOMOWNER_LINEID_1_VALUE}
    #Tax identification number
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_1_LOCATOR}    ${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}
    #Education
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_EDUCATION_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_EDUCATION_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_EDUCATION_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_EDUCATION_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_EDUCATION_BACHELORSDEGREE_EN_VALUE}    ${ROOMOWNER_ADD_LBL_EDUCATION_1_LOCATOR}

    #Salary (Baht)
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_SALARY_2_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_SALARY_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_SALARY_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_SALARY_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_SALARY_BATH_50000_100000_EN_VALUE}    ${ROOMOWNER_ADD_LBL_SALARY_2_1_LOCATOR}

    #Address
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ADDRESS_1_LOCATOR}    ${ROOMOWNER_ADDRESS_1_VALUE}

    ############## Add car ############## 

    #Click Add car
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDCAR_1_LOCATOR}
    
    #Car type
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_CARTYPE_1_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_CARTYPE_1_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_CARTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_CARTYPE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_CARTYPE_CAR_EN_VALUE}    ${ROOMOWNER_ADD_LBL_CARTYPE_1_1_LOCATOR}

    #Car plate number
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_CARPLATENUMBER_1_1_LOCATOR}    ${ROOMOWNER_CARPLATENUMBER_1_VALUE}

    ############## Add guest ############## 

    ############## Transfer detail ############## 
    #Transfer date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_LOCATOR}
	Sleep    0.5s
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    #Arrival date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_LOCATOR}
	Sleep    0.5s
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    
    #Appointment date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_LOCATOR}
	Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}
    # Click Element Page    ${ROOMOWNER_ADD_LBL_APPOINTMENTDATE_LOCATOR}            #Click calendar calendar

    # Accept date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_LOCATOR}
	Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}

    #Warranty end date
    # 01/12/2021
    Click Element Page    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_FORMAT_DATE}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_INPUT_LOCATOR}    ${DATE_PICKER_ID_LOCATOR}    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_LOCATOR}
	Sleep    0.5s
    Press Keys    ${NONE}    ${ESC}
    
    #Occupation
    Check Select many dropdown generateId for dx     ${DEFAULT_TYPE_LONG}    ${ROOMOWNER_ADD_DDL_OCCUPATION_2_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_OCCUPATION_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_OCCUPATION_OTHER_EN_VALUE}    ${ROOMOWNER_ADD_LBL_OCCUPATION_2_1_LOCATOR}

    #[กรอกอาชีพอื่นๆ]
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_OCCUPATION_OTHER_2_1_LOCATOR}    ${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}
    
    #Manage type
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LOCATOR}    ${ROOMOWNER_ADD_INPUT_MANAGETYPE_LOCATOR}    ${ROOMOWNER_ADD_DDL_MANAGETYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_MANAGETYPE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_MANAGETYPE_SELFLIVE_EN_VALUE}    ${ROOMOWNER_ADD_LBL_MANAGETYPE_LOCATOR}
    #Language of documents
    Check Select many dropdown generateId for dx     null    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_INPUT_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}    ${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_LOCATOR}

    #Address (for invoicing, receipt)
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ADDRESS_FORINVOICINGRECEIPT_LOCATOR}    ${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}

    ############## Asset list ############## 
    #Remark
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_1_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_1_VALUE}
    #Remark
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_2_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    
    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_EN}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    ############## Code for connect room ############## 
    #Code for connect room
    Wait Until Contains Element Text Should Be    ${ALERT_HEADER_CODEFORCONNECTROOM_LOCATOR}    ${ALERT_HEADER_CODEFORCONNECTROOM_EN}
    #Code
    # Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_CODEFORCONNECTROOM_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    #Copy code Button
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_COPYCODE_LOCATOR}    ${ALERT_BTN_COPYCODE_EN}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}
    ${roomTransferIdSub}=    Convert To Number    ${roomTransferId-1}
    ${roomTransferIdInt}=    Convert To Integer    ${roomTransferIdSub}
    
    @{valArrRoomTransferId}=    Create List    ${roomTransferIdInt}    ${roomTransferId}
    # Log To Console    valArrRoomTransferId${valArrRoomTransferId}

    ${numArrRoomTransferId}=    Get Length    ${valArrRoomTransferId}
    @{valArrType}=    Create List    ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${MYSQL_TYPE_CREATE_ALLFIELD}
    
    ${dataCheckRoomAsset}=    Evaluate    [{"check_status":1,"remark":"${ROOMOWNER_ASSET_REMARK_1_VALUE}"},{"check_status":1,"remark":"${ROOMOWNER_ASSET_REMARK_2_VALUE}"}]
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset1}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Set Variable    ${NONE}
        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset1}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset1${valArrDataCheckRoomAsset1}

    @{valArrDataCheckRoomAsset2}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        
        ${remark}=    Set Variable If    '${i}'=='0'   "${ROOMOWNER_ASSET_REMARK_1_VALUE}"
        ...    '${i}'=='1'    "${ROOMOWNER_ASSET_REMARK_2_VALUE}"
        ...    '${i}'!='0'or'${i}'!='1'     ${NONE}

        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}
        Append To List    ${valArrDataCheckRoomAsset2}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    Log To Console    valArrDataCheckRoomAsset2${valArrDataCheckRoomAsset2}

    FOR    ${i}    IN RANGE     ${numArrRoomTransferId}
    
        # ================ Verify DB [RoomOwner] ================    
        ${dataRoomOwner1}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_2_VALUE}","title":"${NONE}","firstName":"${ROOMOWNER_FIRSTNAME_2_VALUE}","lastName":"${NONE}","companyName":"${NONE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
        ${dataRoomOwner2}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}","title":"${ROOMOWNER_TITLE_MISSID_VALUE}","firstName":"${ROOMOWNER_FIRSTNAME_1_VALUE}","lastName":"${ROOMOWNER_LASTNAME_1_VALUE}","companyName":"${NONE}","nickname":"${ROOMOWNER_NICKNAME_1_VALUE}","shortName":"${NONE}","birthDate":"${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}","identificationCreateDate":"${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}","identificationExpireDate":"${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}","phone":"${ROOMOWNER_MOBILE_1_VALUE}","fax":"${NONE}","email":"${ROOMOWNER_EMAIL_1_VALUE}","lineId":"${ROOMOWNER_LINEID_1_VALUE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}","juristicId":"${NONE}","education":"${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}","occupation":"${ROOMOWNER_OCCUPATION_OTHERID_VALUE}","occupationOther":"${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}","salary":"${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}","address":"${ROOMOWNER_ADDRESS_1_VALUE}","cartype":"${ROOMOWNER_CARTYPE_CAR_EN_VALUE}","carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_EN_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
        
        Request Verify DB Check Data ChangeOwner    ${valArrType}[${i}]    ${roomId}    ${valArrRoomTransferId}[${i}]    ${dataRoomOwner${i+1}}
    
        # ================ Verify DB [CheckRoomAsset] ================    
        Request Verify DB Check Data Check Room Asset    ${valArrType}[${i}]    ${valArrRoomTransferId}[${i}]    ${valArrDataCheckRoomAsset${i+1}}

    END
    
    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_CREATE_ALLFIELD}    ${roomId}    ${valArrRoomTransferId}[1]    ${roomOwnerId}    ${dataCars}
    END
    
ChangeOwner RoomOwner input require field data Thai EN
#ห้อง B201
# Owner type[Thai]
# Language of documents[ภาษาไทย]
    
    [Arguments]    ${roomNo}

    #Identification No. /Passport number *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}

    #First name *
    Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_1_LOCATOR}    ${ROOMOWNER_FIRSTNAME_1_VALUE}
 
    #Click Save button
    Click Element Page    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_EN}
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}

    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    ############## Code for connect room ############## 
    #Code for connect room
    Wait Until Contains Element Text Should Be    ${ALERT_HEADER_CODEFORCONNECTROOM_LOCATOR}    ${ALERT_HEADER_CODEFORCONNECTROOM_EN}
    #Code
    # Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_CODEFORCONNECTROOM_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    #Copy code Button
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_COPYCODE_LOCATOR}    ${ALERT_BTN_COPYCODE_EN}

    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}
    ${roomTransferIdSub}=    Convert To Number    ${roomTransferId-1}
    ${roomTransferIdInt}=    Convert To Integer    ${roomTransferIdSub}
    
    @{valArrRoomTransferId}=    Create List    ${roomTransferIdInt}    ${roomTransferId}
    # Log To Console    valArrRoomTransferId${valArrRoomTransferId}

    ${numArrRoomTransferId}=    Get Length    ${valArrRoomTransferId}
    @{valArrType}=    Create List    ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${MYSQL_TYPE_CREATE_REQUIREDFIELD}
    
    ${dataCheckRoomAsset}=    Evaluate    [{"check_status":1,"remark":"${ROOMOWNER_ASSET_REMARK_1_VALUE}"},{"check_status":1,"remark":"${ROOMOWNER_ASSET_REMARK_2_VALUE}"}]
    
    # ================ Verify DB [CheckRoomAsset] ================    
    # ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND status = 1 AND deleted_at IS null
    ${accountId}=    Convert To String    ${accountId}

    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console     [check_asset : resultQuery] : ${selectStatement}

    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    Log To Console    [check_room_asset] Request Verify DB Check Data Check Room Asset : ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_room_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_room_asset] : ${rowCount}
    
    @{valArrDataCheckRoomAsset}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}
        ${remark}=    Set Variable    ${NONE}
        ${data}=    Evaluate    {"check_status":1,"remark":${remark}}

        Append To List    ${valArrDataCheckRoomAsset}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    # Log To Console    valArrDataCheckRoomAsset${valArrDataCheckRoomAsset}

    FOR    ${i}    IN RANGE     ${numArrRoomTransferId}
    
        # ================ Verify DB [RoomOwner] ================    
        ${dataRoomOwner2}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}","title":"${NONE}","firstName":"${ROOMOWNER_FIRSTNAME_1_VALUE}","lastName":"${NONE}","companyName":"${NONE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
        ${dataRoomOwner1}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_2_VALUE}","title":"${NONE}","firstName":"${ROOMOWNER_FIRSTNAME_2_VALUE}","lastName":"${NONE}","companyName":"${NONE}","nickname":"${NONE}","shortName":"${NONE}","birthDate":"${NONE}","identificationCreateDate":"${NONE}","identificationExpireDate":"${NONE}","phone":"${NONE}","fax":"${NONE}","email":"${NONE}","lineId":"${NONE}","taxId":"${NONE}","juristicId":"${NONE}","education":"${NONE}","occupation":"${NONE}","occupationOther":"${NONE}","salary":"${NONE}","address":"${NONE}","cartype":"${NONE}","carplateNumber":"${NONE}","tranferDate":"${NONE}","arrivalDate":"${NONE}","appointmentDate":"${NONE}","acceptDate":"${NONE}","warrantyEndDate":"${NONE}","manageType":"${NONE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"},{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}","title":"${ROOMOWNER_TITLE_MISSID_VALUE}","firstName":"${ROOMOWNER_FIRSTNAME_1_VALUE}","lastName":"${ROOMOWNER_LASTNAME_1_VALUE}","companyName":"${NONE}","nickname":"${ROOMOWNER_NICKNAME_1_VALUE}","shortName":"${NONE}","birthDate":"${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}","identificationCreateDate":"${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}","identificationExpireDate":"${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}","phone":"${ROOMOWNER_MOBILE_1_VALUE}","fax":"${NONE}","email":"${ROOMOWNER_EMAIL_1_VALUE}","lineId":"${ROOMOWNER_LINEID_1_VALUE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}","juristicId":"${NONE}","education":"${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}","occupation":"${ROOMOWNER_OCCUPATION_OTHERID_VALUE}","occupationOther":"${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}","salary":"${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}","address":"${ROOMOWNER_ADDRESS_1_VALUE}","cartype":"${ROOMOWNER_CARTYPE_CAR_EN_VALUE}","carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_EN_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    
        Request Verify DB Check Data ChangeOwner    ${valArrType}[${i}]    ${roomId}    ${valArrRoomTransferId}[${i}]    ${dataRoomOwner${i+1}}
    
        # ================ Verify DB [CheckRoomAsset] ================    
        Request Verify DB Check Data Check Room Asset    ${valArrType}[${i}]    ${valArrRoomTransferId}[${i}]    ${valArrDataCheckRoomAsset}

    END
    
    # ================ Verify DB [rooms status=2] ================    
    Request DB Data Rooms For Check Status    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    
    # ================ Verify DB [cars] ================    
    ${numroomId}=    Get Length    ${arrRoomOwnerId}
    Log To Console    arrRoomOwnerId${arrRoomOwnerId}
    FOR    ${i}    IN RANGE   ${numroomId} 
        ${roomOwnerId}=    Set Variable    ${arrRoomOwnerId}[${i}]
        ${dataCars}=    Evaluate    [{"carType":${ROOMOWNER_CARTYPE_CAR_VALUE},"carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","isCarSticker":0}]
        Request Verify DB Check Data Cars     ${MYSQL_TYPE_CREATE_ALLFIELD}    ${roomId}    ${valArrRoomTransferId}[1]    ${roomOwnerId}    ${dataCars}
    END

################################################################################################################################
################################################################-- Generic Test Case Teardown RoomOwner--################################################################
Generic Test Case Teardown RoomOwner
    [Arguments]    ${fileName}    ${propertyId}    ${buildingId}    ${roomNo}
    
    # ${ROOMOWNERId},${deletet_at},${namefile}
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}

    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    Run keyword And Continue On Failure    Update tb rooms set status    ${propertyId}    ${buildingId}    ${roomNo}    ${roomId}    ${fileName}
    Run keyword And Continue On Failure    Update tb room_owner set delete_at    ${roomId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    Run keyword And Continue On Failure    Update tb check_room_asset set delete_at    ${roomTransferId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    Run keyword And Continue On Failure    Update tb room_transfer set delete_at    ${roomTransferId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    Run keyword And Continue On Failure    Update tb cars set delete_at    ${roomId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    Run keyword And Continue On Failure    Update tb check_asset set delete_at RoomOwner    ${checkAssetId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    # Request UpdateData for CheckAsset    ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${checkAssetId}    ${DATA_CHECKASSET_STATUS_VALUE}

    ################### Close Browser ###################
    Close Browser          

Generic Test Case Teardown RoomOwner No Close
    [Arguments]    ${fileName}    ${propertyId}    ${buildingId}    ${roomNo}
    
    # ${ROOMOWNERId},${deletet_at},${namefile}
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}

    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    Run keyword And Continue On Failure    Update tb rooms set status    ${propertyId}    ${buildingId}    ${roomNo}    ${roomId}    ${fileName}
    Run keyword And Continue On Failure    Update tb room_owner set delete_at    ${roomId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    Run keyword And Continue On Failure    Update tb check_room_asset set delete_at    ${roomTransferId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    Run keyword And Continue On Failure    Update tb room_transfer set delete_at    ${roomTransferId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    Run keyword And Continue On Failure    Update tb cars set delete_at    ${roomId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    Run keyword And Continue On Failure    Update tb check_asset set delete_at RoomOwner    ${checkAssetId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    
    Sleep    1s
Generic Test Case Teardown RoomOwner Not Delete checkAsset No Close
    [Arguments]    ${fileName}    ${propertyId}    ${buildingId}    ${roomNo}
    
    # ${ROOMOWNERId},${deletet_at},${namefile}
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}

    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    Run keyword And Continue On Failure    Update tb rooms set status    ${propertyId}    ${buildingId}    ${roomNo}    ${roomId}    ${fileName}
    Run keyword And Continue On Failure    Update tb room_owner set delete_at    ${roomId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    Run keyword And Continue On Failure    Update tb check_room_asset set delete_at    ${roomTransferId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    Run keyword And Continue On Failure    Update tb room_transfer set delete_at    ${roomTransferId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    Run keyword And Continue On Failure    Update tb cars set delete_at    ${roomId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    # Run keyword And Continue On Failure    Update tb check_asset set delete_at RoomOwner    ${checkAssetId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    
    Sleep    1s
Generic Test Case Teardown RoomOwner JuristicPerson
    [Arguments]    ${fileName}    ${propertyId}    ${buildingId}    ${roomNo}
    
    # ${ROOMOWNERId},${deletet_at},${namefile}
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}

    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}
    
    Run keyword And Continue On Failure    Update tb rooms set status    ${propertyId}    ${buildingId}    ${roomNo}    ${roomId}    ${fileName}
    Run keyword And Continue On Failure    Update tb room_owner set delete_at    ${roomId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    Run keyword And Continue On Failure    Update tb room_transfer set delete_at    ${roomTransferId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    Run keyword And Continue On Failure    Update tb check_room_asset set delete_at    ${roomTransferId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    # Update tb cars set delete_at    ${roomId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    Run keyword And Continue On Failure    Update tb check_asset set delete_at RoomOwner    ${checkAssetId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    # Request UpdateData for CheckAsset    ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${checkAssetId}    ${DATA_CHECKASSET_STATUS_VALUE}
    
    ################### Close Browser ###################
    Close Browser      

################################################################################################################################
################################################################-- Generic Test Case Teardown RoomOwner EN--################################################################
Generic Test Case Teardown RoomOwner EN
    [Arguments]    ${fileName}    ${propertyId}    ${buildingId}    ${roomNo}
    
    # ${ROOMOWNERId},${deletet_at},${namefile}
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}

    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    Run keyword And Continue On Failure    Update tb rooms set status    ${propertyId}    ${buildingId}    ${roomNo}    ${roomId}    ${fileName}
    Run keyword And Continue On Failure    Update tb room_owner set delete_at    ${roomId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    Run keyword And Continue On Failure    Update tb check_room_asset set delete_at    ${roomTransferId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    Run keyword And Continue On Failure    Update tb room_transfer set delete_at    ${roomTransferId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    Run keyword And Continue On Failure    Update tb cars set delete_at    ${roomId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    Run keyword And Continue On Failure    Update tb check_asset set delete_at RoomOwner    ${checkAssetId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    # Request UpdateData for CheckAsset    ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${checkAssetId}    ${DATA_CHECKASSET_STATUS_VALUE}

    ################### Close Browser ###################
    Close Browser          

Generic Test Case Teardown RoomOwner No Close EN
    [Arguments]    ${fileName}    ${propertyId}    ${buildingId}    ${roomNo}
    
    # ${ROOMOWNERId},${deletet_at},${namefile}
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}

    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    Run keyword And Continue On Failure    Update tb rooms set status    ${propertyId}    ${buildingId}    ${roomNo}    ${roomId}    ${fileName}
    Run keyword And Continue On Failure    Update tb room_owner set delete_at    ${roomId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    Run keyword And Continue On Failure    Update tb check_room_asset set delete_at    ${roomTransferId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    Run keyword And Continue On Failure    Update tb room_transfer set delete_at    ${roomTransferId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    Run keyword And Continue On Failure    Update tb cars set delete_at    ${roomId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    Run keyword And Continue On Failure    Update tb check_asset set delete_at RoomOwner    ${checkAssetId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    
    Sleep    1s
Generic Test Case Teardown RoomOwner Not Delete checkAsset No Close EN
    [Arguments]    ${fileName}    ${propertyId}    ${buildingId}    ${roomNo}
    
    # ${ROOMOWNERId},${deletet_at},${namefile}
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}

    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    Run keyword And Continue On Failure    Update tb rooms set status    ${propertyId}    ${buildingId}    ${roomNo}    ${roomId}    ${fileName}
    Run keyword And Continue On Failure    Update tb room_owner set delete_at    ${roomId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    Run keyword And Continue On Failure    Update tb check_room_asset set delete_at    ${roomTransferId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    Run keyword And Continue On Failure    Update tb room_transfer set delete_at    ${roomTransferId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    Run keyword And Continue On Failure    Update tb cars set delete_at    ${roomId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    # Run keyword And Continue On Failure    Update tb check_asset set delete_at RoomOwner    ${checkAssetId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    
    Sleep    1s
Generic Test Case Teardown RoomOwner JuristicPerson EN
    [Arguments]    ${fileName}    ${propertyId}    ${buildingId}    ${roomNo}
    
    # ${ROOMOWNERId},${deletet_at},${namefile}
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}

    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}
    
    Run keyword And Continue On Failure    Update tb rooms set status    ${propertyId}    ${buildingId}    ${roomNo}    ${roomId}    ${fileName}
    Run keyword And Continue On Failure    Update tb room_owner set delete_at    ${roomId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    Run keyword And Continue On Failure    Update tb room_transfer set delete_at    ${roomTransferId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    Run keyword And Continue On Failure    Update tb check_room_asset set delete_at    ${roomTransferId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    # Update tb cars set delete_at    ${roomId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    Run keyword And Continue On Failure    Update tb check_asset set delete_at RoomOwner    ${checkAssetId}    ${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    ${fileName}
    # Request UpdateData for CheckAsset    ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${checkAssetId}    ${DATA_CHECKASSET_STATUS_VALUE}
    
    ################### Close Browser ###################
    Close Browser      

################################################################################################################################
      