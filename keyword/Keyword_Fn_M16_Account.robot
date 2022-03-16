*** Keywords ***
################################################################-- Set Data for check value table Account--################################################################
Set Data for check value table Account
    #Set field header table To Array
    ${numCol}=    Convert To Integer    ${ACCOUNT_SEARCH_NUMCOL}
    #Set field header table To Array
    @{fieldArrDataTable}=    Create List    
    Append To List    ${fieldArrDataTable}    @{ACCOUNT_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_TH}
    # no    identificationNo    name    phone    maximumRoom    startDate    expireDate
    #Set Num field To Array
    @{arrNumfield}=    Create List    
    Append To List    ${arrNumfield}    ${numCol-7}    ${numCol-6}    ${numCol-5}    ${numCol-4}    ${numCol-3}    ${numCol-2}    ${numCol-1}
    #Set Num Col To Array
    @{arrNumCol}=    Create List    
    Append To List    ${arrNumCol}    ${numCol-6}    ${numCol-5}    ${numCol-4}    ${numCol-3}    ${numCol-2}    ${numCol-1}    ${numCol}
    [Return]    ${numCol}    ${fieldArrDataTable}    ${arrNumfield}    ${arrNumCol}
    
Set Data for check value table Account EN
    #Set field header table To Array
    ${numCol}=    Convert To Integer    ${ACCOUNT_SEARCH_NUMCOL}
    #Set field header table To Array
    @{fieldArrDataTable}=    Create List    
    Append To List    ${fieldArrDataTable}    @{ACCOUNT_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_EN}
    # no    identificationNo    name    phone    maximumRoom    startDate    expireDate
    #Set Num field To Array
    @{arrNumfield}=    Create List    
    Append To List    ${arrNumfield}    ${numCol-7}    ${numCol-6}    ${numCol-5}    ${numCol-4}    ${numCol-3}    ${numCol-2}    ${numCol-1}
    #Set Num Col To Array
    @{arrNumCol}=    Create List    
    Append To List    ${arrNumCol}    ${numCol-6}    ${numCol-5}    ${numCol-4}    ${numCol-3}    ${numCol-2}    ${numCol-1}    ${numCol}
    [Return]    ${numCol}    ${fieldArrDataTable}    ${arrNumfield}    ${arrNumCol}
    
Check Value Table Account
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((15, 'test', 1, datetime.datetime(2021, 9, 30, 0, 0), None, datetime.datetime(2021, 10, 14, 17, 57, 35), '1', None, None, None, None, 33, 'Admin0015', '11111', '0811111111', 15, 33),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Account    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_ACCOUNTS_FIELD_CREATEDAT} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    Set Global Variable    ${rowcountSearchAccount}    ${resultSearch}[1]
    Log To Console    [rowcount SearchAccount] : ${rowcountSearchAccount}

    ${checkNodata}=    Run Keyword If    '${rowcountSearchAccount}'=='0'    Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchAccount}'!='0'    Check Value Table Search Account    ${DEFAULT_TH}     ${rowcountSearchAccount}    ${dataSearch}
    
    [Return]    ${rowcountSearchAccount}

Check Value Table User Account EN
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((15, 'test', 1, datetime.datetime(2021, 9, 30, 0, 0), None, datetime.datetime(2021, 10, 14, 17, 57, 35), '1', None, None, None, None, 33, 'Admin0015', '11111', '0811111111', 15, 33),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Account    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_ACCOUNTS_FIELD_CREATEDAT} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    Set Global Variable    ${rowcountSearchAccount}    ${resultSearch}[1]
    Log To Console    [rowcount SearchAccount] : ${rowcountSearchAccount}

    ${checkNodata}=    Run Keyword If    '${rowcountSearchAccount}'=='0'    Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchAccount}'!='0'    Check Value Table Search Account    ${DEFAULT_EN}     ${rowcountSearchAccount}    ${dataSearch}
    
    [Return]    ${rowcountSearchAccount}

Set Data for check value table Property in Account
    #Set field header table To Array
    ${numCol}=    Convert To Integer    ${ACCOUNT_EDIT_NUMCOL_PROPERTY}
    #Set field header table To Array
    @{fieldArrDataTable}=    Create List    
    Append To List    ${fieldArrDataTable}    @{ACCOUNT_EDIT_LBL_FIELD_HEADER_TABLE_VALUE_PROPERTY_TH}
    # no    PropertyName
    #Set Num field To Array
    @{arrNumfield}=    Create List    
    Append To List    ${arrNumfield}    ${numCol-2}    ${numCol-1}
    #Set Num Col To Array
    @{arrNumCol}=    Create List    
    Append To List    ${arrNumCol}    ${numCol-1}    ${numCol}
    [Return]    ${numCol}    ${fieldArrDataTable}    ${arrNumfield}    ${arrNumCol}
    
Set Data for check value table Property in Account EN
    #Set field header table To Array
    ${numCol}=    Convert To Integer    ${ACCOUNT_EDIT_NUMCOL_PROPERTY}
    #Set field header table To Array
    @{fieldArrDataTable}=    Create List    
    Append To List    ${fieldArrDataTable}    @{ACCOUNT_EDIT_LBL_FIELD_HEADER_TABLE_VALUE_PROPERTY_TH}
    # no    PropertyName
    #Set Num field To Array
    @{arrNumfield}=    Create List    
    Append To List    ${arrNumfield}    ${numCol-2}    ${numCol-1}
    #Set Num Col To Array
    @{arrNumCol}=    Create List    
    Append To List    ${arrNumCol}    ${numCol-1}    ${numCol}
    [Return]    ${numCol}    ${fieldArrDataTable}    ${arrNumfield}    ${arrNumCol}

# Check Value Table Property in Account
#     #====== Verify DB ==========
#     #Inquiry for verify DB  
#     #  [((15, 'test', 1, datetime.datetime(2021, 9, 30, 0, 0), None, datetime.datetime(2021, 10, 14, 17, 57, 35), '1', None, None, None, None, 33, 'Admin0015', '11111', '0811111111', 15, 33),), 1] 
#     ${resultSearchPropertyInAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Account    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_ACCOUNTS_FIELD_CREATEDAT} ${ORDERBY_DESC}
#     ${dataSearchPropertyInAccount}=    Set Variable    ${resultSearchPropertyInAccount}[0]
#     Log To Console    [dataSearchPropertyInAccount] : ${dataSearchPropertyInAccount}
#     Set Global Variable    ${rowcountPropertyInAccount}    ${resultSearchPropertyInAccount}[1]
#     Log To Console    [rowcount SearchAccount] : ${rowcountPropertyInAccount}

#     ${checkNodata}=    Run Keyword If    '${rowcountPropertyInAccount}'=='0'    Wait Until Contains Element Text Should Be    ${ACCOUNT_EDIT_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
#     # ...    ELSE IF    '${rowcountPropertyInAccount}'!='0'    Check Value Table Search Account    ${DEFAULT_TH}     ${rowcountPropertyInAccount}    ${dataSearchPropertyInAccount}
    
#     [Return]    ${rowcountPropertyInAccount}

# Check Value Table Property in Account EN
#     #====== Verify DB ==========
#     #Inquiry for verify DB  
#     #  [((15, 'test', 1, datetime.datetime(2021, 9, 30, 0, 0), None, datetime.datetime(2021, 10, 14, 17, 57, 35), '1', None, None, None, None, 33, 'Admin0015', '11111', '0811111111', 15, 33),), 1] 
#     ${resultSearchPropertyInAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Account    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_ACCOUNTS_FIELD_CREATEDAT} ${ORDERBY_DESC}
#     ${dataSearchPropertyInAccount}=    Set Variable    ${resultSearchPropertyInAccount}[0]
#     Log To Console    [dataSearchPropertyInAccount] : ${dataSearchPropertyInAccount}
#     Set Global Variable    ${rowcountPropertyInAccount}    ${resultSearchPropertyInAccount}[1]
#     Log To Console    [rowcount SearchAccount] : ${rowcountPropertyInAccount}

#     ${checkNodata}=    Run Keyword If    '${rowcountPropertyInAccount}'=='0'    Wait Until Contains Element Text Should Be    ${ACCOUNT_EDIT_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
#     # ...    ELSE IF    '${rowcountPropertyInAccount}'!='0'    Check Value Table Search Account    ${DEFAULT_EN}     ${rowcountPropertyInAccount}    ${dataSearchPropertyInAccount}
    
#     [Return]    ${rowcountPropertyInAccount}

################################################################-- Create Account --################################################################
#====== Check DB ==========
Create Account input all field data
    #Click Create account
    Click Element Page    ${ACCOUNT_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create Account
    Wait Until Contains Element Text Should Be    ${ACCOUNT_ADD_LBL_CREATEACCOUNT_LOCATOR}    ${ACCOUNT_ADD_LBL_CREATEACCOUNT_TH} 
    
    #Name *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_NAME_LOCATOR}    ${ACCOUNT_NAME_VALUE}
    #Maximum Room *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_MAXIMUMROOM_LOCATOR}    ${ACCOUNT_MAXIMUMROOM_VALUE}
    #Phone *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_PHONE_LOCATOR}    ${ACCOUNT_PHONE_VALUE}
    #Taxpayer Identification No *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_TAXPAYERIDENTIFICATIONNO_LOCATOR}    ${ACCOUNT_TAXPAYERIDENTIFICATIONNO_VALUE}
    #Start Date *
    # 01/12/2021
    # {dt:%Y}/{dt:%m}/{dt:%d}
    ${startDateNowYYYYMMDD_NOW}=    Change format date now    ${YYYYMMDD_NOW}
    # Log To Console    startDateNowYYYYMMDD_NOW${startDateNowYYYYMMDD_NOW}
    # {dt:%d}/{dt:%m}/{dt:%Y}
    ${startDateNowDDMMYYYY_NOW}=    Change format date now    ${DDMMYYYY_NOW}
    # Log To Console    startDateNowDDMMYYYY_NOW${startDateNowDDMMYYYY_NOW}
    # {dt:%Y}-{dt:%m}-{dt:%d}
    ${startDateNowDDMMYYYY_DB}=    Change format date now    ${YYYYMMDDD_NOW_-}
    # Log To Console    startDateNowDDMMYYYY_DB${startDateNowDDMMYYYY_DB}
    Click Element Page    ${ACCOUNT_ADD_DATE_STARTDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${startDateNowYYYYMMDD_NOW}    ${ACCOUNT_ADD_DATE_STARTDATE_FORMAT_DATE}    ${ACCOUNT_ADD_DATE_STARTDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ACCOUNT_ADD_DATE_STARTDATE_INPUT_LOCATOR}    ${DATE_PICKER_LOCATOR}    ${ACCOUNT_ADD_DATE_STARTDATE_LOCATOR}
	Sleep    0.5s
    #Click Permanent
    Click Element Page    ${ACCOUNT_ADD_CHK_PERMANENT_LOCATOR}
    #Expire Date
    # 01/12/2021
    ${expireDateNowYYYYMMDD_ADDSUB}=    Value Add date    ${YYYYMMDD_ADDSUB}    ${DATE_TYPE_ADD}    ${RANGE_DAY} 
    ${expireDateNowDDMMYYYY_ADDSUB}=    Value Add date    ${DDMMYYYY_ADDSUB}    ${DATE_TYPE_ADD}    ${RANGE_DAY}
    Log To Console    expireDateNow${expireDateNowYYYYMMDD_ADDSUB}
    Click Element Page    ${ACCOUNT_ADD_DATE_EXPIREDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${expireDateNowYYYYMMDD_ADDSUB}    ${ACCOUNT_ADD_DATE_EXPIREDATE_FORMAT_DATE}    ${ACCOUNT_ADD_DATE_EXPIREDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ACCOUNT_ADD_DATE_EXPIREDATE_INPUT_LOCATOR}    ${DATE_PICKER_DATEBOXDISABLED_LOCATOR}
	Sleep    0.5s
    #Click Permission 
    Click Element Page    ${ACCOUNT_ADD_CHK_PERMISSION0_LOCATOR}
    
    #Click Save button
    Click Element Page    ${ACCOUNT_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}
    
    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table Account

    ${identificationNo}=    Get Text String    ${ACCOUNT_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
	Log To Console    identificationNo${identificationNo}
 
    ${data}=    Evaluate    {"no":"1", "identificationNo":"${identificationNo}", "name":"${ACCOUNT_NAME_VALUE}", "phone":"${ACCOUNT_PHONE_VALUE}", "maximumRoom":"${ACCOUNT_MAXIMUMROOM_VALUE}", "startDate":"${startDateNowDDMMYYYY_NOW}", "expireDate":"${expireDateNowDDMMYYYY_ADDSUB}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Check Value Table    ${ACCOUNT_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    # Check Value Table Account

    # ================ Verify DB ================    
    Request Verify DB Check Data Create Account    ${MYSQL_TYPE_CREATE_ALLFIELD}    ${identificationNo}    ${ACCOUNT_NAME_VALUE}    ${ACCOUNT_MAXIMUMROOM__VALUE}    ${ACCOUNT_PHONE_VALUE}    ${ACCOUNT_TAXPAYERIDENTIFICATIONNO_VALUE}    ${startDateNowDDMMYYYY_DB}    ${expireDateNowYYYYMMDD_ADDSUB}
    
Create Account input require field data 
    #Click Create account
    Click Element Page    ${ACCOUNT_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create Account
    Wait Until Contains Element Text Should Be    ${ACCOUNT_ADD_LBL_CREATEACCOUNT_LOCATOR}    ${ACCOUNT_ADD_LBL_CREATEACCOUNT_TH} 
    
    #Name *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_NAME_LOCATOR}    ${ACCOUNT_NAME_VALUE}
    #Maximum Room *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_MAXIMUMROOM_LOCATOR}    ${ACCOUNT_MAXIMUMROOM_VALUE}
    #Phone *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_PHONE_LOCATOR}    ${ACCOUNT_PHONE_VALUE}
    #Taxpayer Identification No *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_TAXPAYERIDENTIFICATIONNO_LOCATOR}    ${ACCOUNT_TAXPAYERIDENTIFICATIONNO_VALUE}
    #Start Date *
    # 01/12/2021
    # {dt:%Y}/{dt:%m}/{dt:%d}
    ${startDateNowYYYYMMDD_NOW}=    Change format date now    ${YYYYMMDD_NOW}
    Log To Console    startDateNowYYYYMMDD_NOW${startDateNowYYYYMMDD_NOW}
    # {dt:%d}/{dt:%m}/{dt:%Y}
    ${startDateNowDDMMYYYY_NOW}=    Change format date now    ${DDMMYYYY_NOW}
    Log To Console    startDateNowDDMMYYYY_NOW${startDateNowDDMMYYYY_NOW}
    # {dt:%Y}-{dt:%m}-{dt:%d}
    ${startDateNowDDMMYYYY_DB}=    Change format date now    ${YYYYMMDDD_NOW_-}
    Log To Console    startDateNowDDMMYYYY_DB${startDateNowDDMMYYYY_DB}
    # Click Element Page    ${ACCOUNT_ADD_DATE_STARTDATE_INPUT_LOCATOR}
    # Wait Until Contains Input Text    ${ACCOUNT_ADD_DATE_STARTDATE_INPUT_LOCATOR}    ${ACCOUNT_STARTDATE_VALUE}
    Click Element Page    ${ACCOUNT_ADD_DATE_STARTDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${startDateNowYYYYMMDD_NOW}    ${ACCOUNT_ADD_DATE_STARTDATE_FORMAT_DATE}    ${ACCOUNT_ADD_DATE_STARTDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ACCOUNT_ADD_DATE_STARTDATE_INPUT_LOCATOR}    ${DATE_PICKER_LOCATOR}    ${ACCOUNT_ADD_DATE_STARTDATE_LOCATOR}
	Sleep    0.5s
    #Click Permission 
    Click Element Page    ${ACCOUNT_ADD_CHK_PERMISSION0_LOCATOR}
    
    #Click Save button
    Click Element Page    ${ACCOUNT_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table Account

    ${identificationNo}=    Get Text String    ${ACCOUNT_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
	Log To Console    identificationNo${identificationNo}
 
    ${data}=    Evaluate    {"no":"1", "identificationNo":"${identificationNo}", "name":"${ACCOUNT_NAME_VALUE}", "phone":"${ACCOUNT_PHONE_VALUE}", "maximumRoom":"${ACCOUNT_MAXIMUMROOM_VALUE}", "startDate":"${startDateNowDDMMYYYY_NOW}", "expireDate":"${EMPTY}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Check Value Table    ${ACCOUNT_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
        
    # Check Value Table Account

    # ================ Verify DB ================ 
    Request Verify DB Check Data Create Account    ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${identificationNo}    ${ACCOUNT_NAME_VALUE}    ${ACCOUNT_MAXIMUMROOM__VALUE}    ${ACCOUNT_PHONE_VALUE}    ${ACCOUNT_TAXPAYERIDENTIFICATIONNO_VALUE}    ${startDateNowDDMMYYYY_DB}    ${NONE}
    
#====== No Check Table ==========
Create Account input all field data No Check Table 
    #Click Create account
    Click Element Page    ${ACCOUNT_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create Account
    Wait Until Contains Element Text Should Be    ${ACCOUNT_ADD_LBL_CREATEACCOUNT_LOCATOR}    ${ACCOUNT_ADD_LBL_CREATEACCOUNT_TH} 
    
    #Name *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_NAME_LOCATOR}    ${ACCOUNT_NAME_VALUE}
    #Maximum Room *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_MAXIMUMROOM_LOCATOR}    ${ACCOUNT_MAXIMUMROOM_VALUE}
    #Phone *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_PHONE_LOCATOR}    ${ACCOUNT_PHONE_VALUE}
    #Taxpayer Identification No *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_TAXPAYERIDENTIFICATIONNO_LOCATOR}    ${ACCOUNT_TAXPAYERIDENTIFICATIONNO_VALUE}
    #Start Date *
    # 01/12/2021
    # {dt:%Y}/{dt:%m}/{dt:%d}
    ${startDateNowYYYYMMDD_NOW}=    Change format date now    ${YYYYMMDD_NOW}
    Log To Console    startDateNowYYYYMMDD_NOW${startDateNowYYYYMMDD_NOW}
    # {dt:%d}/{dt:%m}/{dt:%Y}
    ${startDateNowDDMMYYYY_NOW}=    Change format date now    ${DDMMYYYY_NOW}
    Log To Console    startDateNowDDMMYYYY_NOW${startDateNowDDMMYYYY_NOW}
    # {dt:%Y}-{dt:%m}-{dt:%d}
    ${startDateNowDDMMYYYY_DB}=    Change format date now    ${YYYYMMDDD_NOW_-}
    Log To Console    startDateNowDDMMYYYY_DB${startDateNowDDMMYYYY_DB}
    Click Element Page    ${ACCOUNT_ADD_DATE_STARTDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${startDateNowYYYYMMDD_NOW}    ${ACCOUNT_ADD_DATE_STARTDATE_FORMAT_DATE}    ${ACCOUNT_ADD_DATE_STARTDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ACCOUNT_ADD_DATE_STARTDATE_INPUT_LOCATOR}    ${DATE_PICKER_LOCATOR}    ${ACCOUNT_ADD_DATE_STARTDATE_LOCATOR}
	Sleep    0.5s
    #Click Permanent
    Click Element Page    ${ACCOUNT_ADD_CHK_PERMANENT_LOCATOR}
    #Expire Date
    # 01/12/2021
    ${expireDateNowDDMMYYYY_ADDSUB}=    Value Add date    ${DDMMYYYY_ADDSUB}    ${DATE_TYPE_ADD}    ${RANGE_DAY} 
    ${expireDateNowYYYYMMDD_ADDSUB}=    Value Add date    ${YYYYMMDD_ADDSUB}    ${DATE_TYPE_ADD}    ${RANGE_DAY}
    Log To Console    expireDateNow${expireDateNowDDMMYYYY_ADDSUB}
    Click Element Page    ${ACCOUNT_ADD_DATE_EXPIREDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${expireDateNowDDMMYYYY_ADDSUB}    ${ACCOUNT_ADD_DATE_EXPIREDATE_FORMAT_DATE}    ${ACCOUNT_ADD_DATE_EXPIREDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ACCOUNT_ADD_DATE_EXPIREDATE_INPUT_LOCATOR}    ${DATE_PICKER_LOCATOR}    ${ACCOUNT_ADD_DATE_EXPIREDATE_LOCATOR}
	Sleep    0.5s
    #Click Permission 
    Click Element Page    ${ACCOUNT_ADD_CHK_PERMISSION0_LOCATOR}
    
    #Click Save button
    Click Element Page    ${ACCOUNT_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

Create Account input require field data No Check Table
    #Click Create account
    Click Element Page    ${ACCOUNT_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create Account
    Wait Until Contains Element Text Should Be    ${ACCOUNT_ADD_LBL_CREATEACCOUNT_LOCATOR}    ${ACCOUNT_ADD_LBL_CREATEACCOUNT_TH} 
    
    #Name *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_NAME_LOCATOR}    ${ACCOUNT_NAME_VALUE}
    #Maximum Room *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_MAXIMUMROOM_LOCATOR}    ${ACCOUNT_MAXIMUMROOM_VALUE}
    #Phone *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_PHONE_LOCATOR}    ${ACCOUNT_PHONE_VALUE}
    #Taxpayer Identification No *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_TAXPAYERIDENTIFICATIONNO_LOCATOR}    ${ACCOUNT_TAXPAYERIDENTIFICATIONNO_VALUE}
    #Start Date *
    # 01/12/2021
    # {dt:%Y}/{dt:%m}/{dt:%d}
    ${startDateNowYYYYMMDD_NOW}=    Change format date now    ${YYYYMMDD_NOW}
    Log To Console    startDateNowYYYYMMDD_NOW${startDateNowYYYYMMDD_NOW}
    # {dt:%d}/{dt:%m}/{dt:%Y}
    ${startDateNowDDMMYYYY_NOW}=    Change format date now    ${DDMMYYYY_NOW}
    Log To Console    startDateNowDDMMYYYY_NOW${startDateNowDDMMYYYY_NOW}
    # {dt:%Y}-{dt:%m}-{dt:%d}
    ${startDateNowDDMMYYYY_DB}=    Change format date now    ${YYYYMMDDD_NOW_-}
    Log To Console    startDateNowDDMMYYYY_DB${startDateNowDDMMYYYY_DB}
    Click Element Page    ${ACCOUNT_ADD_DATE_STARTDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${startDateNowYYYYMMDD_NOW}    ${ACCOUNT_ADD_DATE_STARTDATE_FORMAT_DATE}    ${ACCOUNT_ADD_DATE_STARTDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ACCOUNT_ADD_DATE_STARTDATE_INPUT_LOCATOR}    ${DATE_PICKER_LOCATOR}    ${ACCOUNT_ADD_DATE_STARTDATE_LOCATOR}
	Sleep    0.5s
    #Click Permission 
    Click Element Page    ${ACCOUNT_ADD_CHK_PERMISSION0_LOCATOR}
    
    #Click Save button
    Click Element Page    ${ACCOUNT_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

################################################################################################################################
################################################################-- Edit Account--################################################################
Edit Account input all field data 
    #Click Edit Account
    Wait Until Contains Element Should Be Visible    ${ACCOUNT_BTN_MORE_LOCATOR}
    Mouse Down    ${ACCOUNT_BTN_MORE_LOCATOR}
	Click Element Page    ${ACCOUNT_BTN_EDIT_LOCATOR}
	Sleep    0.5s
	
	#Edit Account
	Wait Until Contains Element Text Should Be    ${ACCOUNT_EDIT_LBL_EDITACCOUNT_LOCATOR}    ${ACCOUNT_EDIT_LBL_EDITACCOUNT_TH} 

    #Name *
    Wait Until Contains Input Text    ${ACCOUNT_EDIT_INPUT_NAME_LOCATOR}    ${ACCOUNT_EDIT_NAME_VALUE}
    #Maximum Room *
    Wait Until Contains Input Text    ${ACCOUNT_EDIT_INPUT_MAXIMUMROOM_LOCATOR}    ${ACCOUNT_EDIT_MAXIMUMROOM_VALUE}
    #Phone *
    Wait Until Contains Input Text    ${ACCOUNT_EDIT_INPUT_PHONE_LOCATOR}    ${ACCOUNT_EDIT_PHONE_VALUE}
    #Taxpayer Identification No *
    Wait Until Contains Input Text    ${ACCOUNT_EDIT_INPUT_TAXPAYERIDENTIFICATIONNO_LOCATOR}    ${ACCOUNT_EDIT_TAXPAYERIDENTIFICATIONNO_VALUE}
    Click Element Page    ${ACCOUNT_EDIT_LBL_EDITACCOUNT_LOCATOR}

    #Start Date *
    # 01/12/2021
    # {dt:%Y}/{dt:%m}/{dt:%d}
    ${startDateNowYYYYMMDD_NOW}=    Change format date now    ${YYYYMMDD_NOW}
    Log To Console    startDateNowYYYYMMDD_NOW${startDateNowYYYYMMDD_NOW}
    # {dt:%d}/{dt:%m}/{dt:%Y}
    ${startDateNowDDMMYYYY_NOW}=    Change format date now    ${DDMMYYYY_NOW}
    Log To Console    startDateNowDDMMYYYY_NOW${startDateNowDDMMYYYY_NOW}
    # {dt:%Y}-{dt:%m}-{dt:%d}
    ${startDateNowDDMMYYYY_DB}=    Change format date now    ${YYYYMMDDD_NOW_-}
    Log To Console    startDateNowDDMMYYYY_DB${startDateNowDDMMYYYY_DB}
    # Click Element Page    ${ACCOUNT_EDIT_DATE_STARTDATE_BUTTON_LOCATOR}            #Click calendar
    # Select Calendar    ${TYPE_CALENDAR}    ${startDateNowYYYYMMDD}    ${ACCOUNT_EDIT_DATE_STARTDATE_FORMAT_DATE}    ${ACCOUNT_EDIT_DATE_STARTDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ACCOUNT_EDIT_DATE_STARTDATE_INPUT_LOCATOR}    ${DATE_PICKER_LOCATOR}    ${ACCOUNT_EDIT_DATE_STARTDATE_LOCATOR}
	# Sleep    0.5s

    # Select Calendar    ${TYPE_CALENDAR}    ${ACCOUNT_STARTDATE_INPUT_DATE_VALUE}    ${ACCOUNT_EDIT_DATE_STARTDATE_FORMAT_DATE}    ${ACCOUNT_EDIT_DATE_STARTDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ACCOUNT_EDIT_DATE_STARTDATE_INPUT_LOCATOR}    ${DATE_PICKER_LOCATOR}    ${ACCOUNT_EDIT_DATE_STARTDATE_LOCATOR}
	Sleep    0.5s
    #Click Permanent
    Click Element Page    ${ACCOUNT_EDIT_CHK_PERMANENT_LOCATOR}
    #Expire Date
    # 01/12/2021
    ${expireDateNowDDMMYYYY_ADDSUB}=    Value Add date    ${DDMMYYYY_ADDSUB}    ${DATE_TYPE_ADD}    ${RANGE_DAY} 
    # ${expireDateNowYYYYMMDD_ADDSUB}=    Value Add date    ${YYYYMMDD_ADDSUB}    ${DATE_TYPE_ADD}    ${RANGE_DAY}
    ${expireDateNowYYYYMMDD_ADDSUB_DB}=    Value Add date    ${YYYYMMDD_-_ADDSUB}    ${DATE_TYPE_ADD}    ${RANGE_DAY}
    Log To Console    expireDateNow${expireDateNowDDMMYYYY_ADDSUB}
    Click Element Page    ${ACCOUNT_EDIT_DATE_EXPIREDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${expireDateNowDDMMYYYY_ADDSUB}    ${ACCOUNT_EDIT_DATE_EXPIREDATE_FORMAT_DATE}    ${ACCOUNT_EDIT_DATE_EXPIREDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ACCOUNT_EDIT_DATE_EXPIREDATE_INPUT_LOCATOR}    ${DATE_PICKER_LOCATOR}    ${ACCOUNT_EDIT_DATE_EXPIREDATE_LOCATOR}
	
    # Select Calendar    ${TYPE_CALENDAR}    ${expireDateNow}    ${ACCOUNT_EDIT_DATE_EXPIREDATE_FORMAT_DATE}    ${ACCOUNT_EDIT_DATE_EXPIREDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ACCOUNT_EDIT_DATE_EXPIREDATE_INPUT_LOCATOR}    ${DATE_PICKER_LOCATOR}    ${ACCOUNT_EDIT_DATE_EXPIREDATE_LOCATOR}
	Sleep    0.5s
    
    #Click Permission 
    Click Element Page    ${ACCOUNT_EDIT_CHK_PERMISSION1_LOCATOR}
    
    #Click Save button
    Click Element Page    ${ACCOUNT_ADDEDIT_BTN_SAVE_LOCATOR}

    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table Account

    ${identificationNo}=    Get Text String    ${ACCOUNT_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
	Log To Console    identificationNo${identificationNo}
 
    ${data}=    Evaluate    {"no":"1", "identificationNo":"${identificationNo}", "name":"${ACCOUNT_EDIT_NAME_VALUE}", "phone":"${ACCOUNT_EDIT_PHONE_VALUE}", "maximumRoom":"${ACCOUNT_EDIT_MAXIMUMROOM_VALUE}", "startDate":"${startDateNowDDMMYYYY_NOW}", "expireDate":"${expireDateNowDDMMYYYY_ADDSUB}"}
    Log To Console    dataEdit${data}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Check Value Table    ${ACCOUNT_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table Account

    # ================ Verify DB ================    
    Request Verify DB Check Data Edit Account    ${MYSQL_TYPE_EDIT_ALLFIELD}    ${identificationNo}    ${ACCOUNT_EDIT_NAME_VALUE}    ${ACCOUNT_EDIT_MAXIMUMROOM__VALUE}    ${ACCOUNT_EDIT_PHONE_VALUE}    ${ACCOUNT_EDIT_TAXPAYERIDENTIFICATIONNO_VALUE}    ${startDateNowDDMMYYYY_DB}    ${expireDateNowYYYYMMDD_ADDSUB_DB}

################################################################################################################################
################################################################-- Create Account [EN]--################################################################
#====== Check DB ==========
Create Account input all field data EN
    #Click Create account
    Click Element Page    ${ACCOUNT_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create Account
    Wait Until Contains Element Text Should Be    ${ACCOUNT_ADD_LBL_CREATEACCOUNT_LOCATOR}    ${ACCOUNT_ADD_LBL_CREATEACCOUNT_EN} 
    
    #Name *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_NAME_LOCATOR}    ${ACCOUNT_NAME_VALUE}
    #Maximum Room *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_MAXIMUMROOM_LOCATOR}    ${ACCOUNT_MAXIMUMROOM_VALUE}
    #Phone *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_PHONE_LOCATOR}    ${ACCOUNT_PHONE_VALUE}
    #Taxpayer Identification No *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_TAXPAYERIDENTIFICATIONNO_LOCATOR}    ${ACCOUNT_TAXPAYERIDENTIFICATIONNO_VALUE}
    #Start Date *
    # 01/12/2021
    # {dt:%Y}/{dt:%m}/{dt:%d}
    ${startDateNowYYYYMMDD_NOW}=    Change format date now    ${YYYYMMDD_NOW}
    Log To Console    startDateNowYYYYMMDD_NOW${startDateNowYYYYMMDD_NOW}
    # {dt:%d}/{dt:%m}/{dt:%Y}
    ${startDateNowDDMMYYYY_NOW}=    Change format date now    ${DDMMYYYY_NOW}
    Log To Console    startDateNowDDMMYYYY_NOW${startDateNowDDMMYYYY_NOW}
    # {dt:%Y}-{dt:%m}-{dt:%d}
    ${startDateNowDDMMYYYY_DB}=    Change format date now    ${YYYYMMDDD_NOW_-}
    Log To Console    startDateNowDDMMYYYY_DB${startDateNowDDMMYYYY_DB}
    Click Element Page    ${ACCOUNT_ADD_DATE_STARTDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${startDateNowYYYYMMDD_NOW}    ${ACCOUNT_ADD_DATE_STARTDATE_FORMAT_DATE}    ${ACCOUNT_ADD_DATE_STARTDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ACCOUNT_ADD_DATE_STARTDATE_INPUT_LOCATOR}    ${DATE_PICKER_LOCATOR}    ${ACCOUNT_ADD_DATE_STARTDATE_LOCATOR}
	Sleep    0.5s
    #Click Permanent
    Click Element Page    ${ACCOUNT_ADD_CHK_PERMANENT_LOCATOR}
    #Expire Date
    # 01/12/2021
    ${expireDateNowYYYYMMDD_ADDSUB}=    Value Add date    ${YYYYMMDD_ADDSUB}    ${DATE_TYPE_ADD}    ${RANGE_DAY} 
    ${expireDateNowDDMMYYYY_ADDSUB}=    Value Add date    ${DDMMYYYY_ADDSUB}    ${DATE_TYPE_ADD}    ${RANGE_DAY}
    Log To Console    expireDateNow${expireDateNowYYYYMMDD_ADDSUB}
    Click Element Page    ${ACCOUNT_ADD_DATE_EXPIREDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${expireDateNowYYYYMMDD_ADDSUB}    ${ACCOUNT_ADD_DATE_EXPIREDATE_FORMAT_DATE}    ${ACCOUNT_ADD_DATE_EXPIREDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ACCOUNT_ADD_DATE_EXPIREDATE_INPUT_LOCATOR}    ${DATE_PICKER_DATEBOXDISABLED_LOCATOR}
	Sleep    0.5s
    #Click Permission 
    Click Element Page    ${ACCOUNT_ADD_CHK_PERMISSION0_LOCATOR}
    
    #Click Save button
    Click Element Page    ${ACCOUNT_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}
    
    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table Account EN

    ${identificationNo}=    Get Text String    ${ACCOUNT_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
	Log To Console    identificationNo${identificationNo}
 
    ${data}=    Evaluate    {"no":"1", "identificationNo":"${identificationNo}", "name":"${ACCOUNT_NAME_VALUE}", "phone":"${ACCOUNT_PHONE_VALUE}", "maximumRoom":"${ACCOUNT_MAXIMUMROOM_VALUE}", "startDate":"${startDateNowDDMMYYYY_NOW}", "expireDate":"${expireDateNowDDMMYYYY_ADDSUB}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Check Value Table    ${ACCOUNT_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    # Check Value Table Account EN

    # ================ Verify DB ================    
    Request Verify DB Check Data Create Account    ${MYSQL_TYPE_CREATE_ALLFIELD}    ${identificationNo}    ${ACCOUNT_NAME_VALUE}    ${ACCOUNT_MAXIMUMROOM__VALUE}    ${ACCOUNT_PHONE_VALUE}    ${ACCOUNT_TAXPAYERIDENTIFICATIONNO_VALUE}    ${startDateNowDDMMYYYY_DB}    ${expireDateNowYYYYMMDD_ADDSUB}
    
Create Account input require field data EN 
    #Click Create account
    Click Element Page    ${ACCOUNT_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create Account
    Wait Until Contains Element Text Should Be    ${ACCOUNT_ADD_LBL_CREATEACCOUNT_LOCATOR}    ${ACCOUNT_ADD_LBL_CREATEACCOUNT_EN} 
    
    #Name *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_NAME_LOCATOR}    ${ACCOUNT_NAME_VALUE}
    #Maximum Room *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_MAXIMUMROOM_LOCATOR}    ${ACCOUNT_MAXIMUMROOM_VALUE}
    #Phone *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_PHONE_LOCATOR}    ${ACCOUNT_PHONE_VALUE}
    #Taxpayer Identification No *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_TAXPAYERIDENTIFICATIONNO_LOCATOR}    ${ACCOUNT_TAXPAYERIDENTIFICATIONNO_VALUE}
    #Start Date *
    # 01/12/2021
    # {dt:%Y}/{dt:%m}/{dt:%d}
    ${startDateNowYYYYMMDD_NOW}=    Change format date now    ${YYYYMMDD_NOW}
    Log To Console    startDateNowYYYYMMDD_NOW${startDateNowYYYYMMDD_NOW}
    # {dt:%d}/{dt:%m}/{dt:%Y}
    ${startDateNowDDMMYYYY_NOW}=    Change format date now    ${DDMMYYYY_NOW}
    Log To Console    startDateNowDDMMYYYY_NOW${startDateNowDDMMYYYY_NOW}
    # {dt:%Y}-{dt:%m}-{dt:%d}
    ${startDateNowDDMMYYYY_DB}=    Change format date now    ${YYYYMMDDD_NOW_-}
    Log To Console    startDateNowDDMMYYYY_DB${startDateNowDDMMYYYY_DB}
    # Click Element Page    ${ACCOUNT_ADD_DATE_STARTDATE_INPUT_LOCATOR}
    # Wait Until Contains Input Text    ${ACCOUNT_ADD_DATE_STARTDATE_INPUT_LOCATOR}    ${ACCOUNT_STARTDATE_VALUE}
    Click Element Page    ${ACCOUNT_ADD_DATE_STARTDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${startDateNowYYYYMMDD_NOW}    ${ACCOUNT_ADD_DATE_STARTDATE_FORMAT_DATE}    ${ACCOUNT_ADD_DATE_STARTDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ACCOUNT_ADD_DATE_STARTDATE_INPUT_LOCATOR}    ${DATE_PICKER_LOCATOR}    ${ACCOUNT_ADD_DATE_STARTDATE_LOCATOR}
	Sleep    0.5s
    #Click Permission 
    Click Element Page    ${ACCOUNT_ADD_CHK_PERMISSION0_LOCATOR}
    
    #Click Save button
    Click Element Page    ${ACCOUNT_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table Account EN

    ${identificationNo}=    Get Text String    ${ACCOUNT_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
	Log To Console    identificationNo${identificationNo}
 
    ${data}=    Evaluate    {"no":"1", "identificationNo":"${identificationNo}", "name":"${ACCOUNT_NAME_VALUE}", "phone":"${ACCOUNT_PHONE_VALUE}", "maximumRoom":"${ACCOUNT_MAXIMUMROOM_VALUE}", "startDate":"${startDateNowDDMMYYYY_NOW}", "expireDate":"${EMPTY}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Check Value Table    ${ACCOUNT_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
        
    # Check Value Table Account EN

    # ================ Verify DB ================ 
    Request Verify DB Check Data Create Account    ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${identificationNo}    ${ACCOUNT_NAME_VALUE}    ${ACCOUNT_MAXIMUMROOM__VALUE}    ${ACCOUNT_PHONE_VALUE}    ${ACCOUNT_TAXPAYERIDENTIFICATIONNO_VALUE}    ${startDateNowDDMMYYYY_DB}    ${NONE}
    
#====== No Check Table ==========
Create Account input all field data No Check Table EN 
    #Click Create account
    Click Element Page    ${ACCOUNT_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create Account
    Wait Until Contains Element Text Should Be    ${ACCOUNT_ADD_LBL_CREATEACCOUNT_LOCATOR}    ${ACCOUNT_ADD_LBL_CREATEACCOUNT_EN} 
    
    #Name *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_NAME_LOCATOR}    ${ACCOUNT_NAME_VALUE}
    #Maximum Room *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_MAXIMUMROOM_LOCATOR}    ${ACCOUNT_MAXIMUMROOM_VALUE}
    #Phone *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_PHONE_LOCATOR}    ${ACCOUNT_PHONE_VALUE}
    #Taxpayer Identification No *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_TAXPAYERIDENTIFICATIONNO_LOCATOR}    ${ACCOUNT_TAXPAYERIDENTIFICATIONNO_VALUE}
    #Start Date *
    # 01/12/2021
    # {dt:%Y}/{dt:%m}/{dt:%d}
    ${startDateNowYYYYMMDD_NOW}=    Change format date now    ${YYYYMMDD_NOW}
    Log To Console    startDateNowYYYYMMDD_NOW${startDateNowYYYYMMDD_NOW}
    # {dt:%d}/{dt:%m}/{dt:%Y}
    ${startDateNowDDMMYYYY_NOW}=    Change format date now    ${DDMMYYYY_NOW}
    Log To Console    startDateNowDDMMYYYY_NOW${startDateNowDDMMYYYY_NOW}
    # {dt:%Y}-{dt:%m}-{dt:%d}
    ${startDateNowDDMMYYYY_DB}=    Change format date now    ${YYYYMMDDD_NOW_-}
    Log To Console    startDateNowDDMMYYYY_DB${startDateNowDDMMYYYY_DB}
    Click Element Page    ${ACCOUNT_ADD_DATE_STARTDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${startDateNowYYYYMMDD_NOW}    ${ACCOUNT_ADD_DATE_STARTDATE_FORMAT_DATE}    ${ACCOUNT_ADD_DATE_STARTDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ACCOUNT_ADD_DATE_STARTDATE_INPUT_LOCATOR}    ${DATE_PICKER_LOCATOR}    ${ACCOUNT_ADD_DATE_STARTDATE_LOCATOR}
	Sleep    0.5s
    #Click Permanent
    Click Element Page    ${ACCOUNT_ADD_CHK_PERMANENT_LOCATOR}
    #Expire Date
    # 01/12/2021
    ${expireDateNowDDMMYYYY_ADDSUB}=    Value Add date    ${DDMMYYYY_ADDSUB}    ${DATE_TYPE_ADD}    ${RANGE_DAY} 
    ${expireDateNowYYYYMMDD_ADDSUB}=    Value Add date    ${YYYYMMDD_ADDSUB}    ${DATE_TYPE_ADD}    ${RANGE_DAY}
    Log To Console    expireDateNow${expireDateNowDDMMYYYY_ADDSUB}
    Click Element Page    ${ACCOUNT_ADD_DATE_EXPIREDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${expireDateNowDDMMYYYY_ADDSUB}    ${ACCOUNT_ADD_DATE_EXPIREDATE_FORMAT_DATE}    ${ACCOUNT_ADD_DATE_EXPIREDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ACCOUNT_ADD_DATE_EXPIREDATE_INPUT_LOCATOR}    ${DATE_PICKER_LOCATOR}    ${ACCOUNT_ADD_DATE_STARTDATE_LOCATOR}
	Sleep    0.5s
    #Click Permission 
    Click Element Page    ${ACCOUNT_ADD_CHK_PERMISSION0_LOCATOR}
    
    #Click Save button
    Click Element Page    ${ACCOUNT_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

Create Account input require field data No Check Table EN
    #Click Create account
    Click Element Page    ${ACCOUNT_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create Account
    Wait Until Contains Element Text Should Be    ${ACCOUNT_ADD_LBL_CREATEACCOUNT_LOCATOR}    ${ACCOUNT_ADD_LBL_CREATEACCOUNT_EN} 
    
    #Name *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_NAME_LOCATOR}    ${ACCOUNT_NAME_VALUE}
    #Maximum Room *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_MAXIMUMROOM_LOCATOR}    ${ACCOUNT_MAXIMUMROOM_VALUE}
    #Phone *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_PHONE_LOCATOR}    ${ACCOUNT_PHONE_VALUE}
    #Taxpayer Identification No *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_TAXPAYERIDENTIFICATIONNO_LOCATOR}    ${ACCOUNT_TAXPAYERIDENTIFICATIONNO_VALUE}
    #Start Date *
    # 01/12/2021
    # {dt:%Y}/{dt:%m}/{dt:%d}
    ${startDateNowYYYYMMDD_NOW}=    Change format date now    ${YYYYMMDD_NOW}
    Log To Console    startDateNowYYYYMMDD_NOW${startDateNowYYYYMMDD_NOW}
    # {dt:%d}/{dt:%m}/{dt:%Y}
    ${startDateNowDDMMYYYY_NOW}=    Change format date now    ${DDMMYYYY_NOW}
    Log To Console    startDateNowDDMMYYYY_NOW${startDateNowDDMMYYYY_NOW}
    # {dt:%Y}-{dt:%m}-{dt:%d}
    ${startDateNowDDMMYYYY_DB}=    Change format date now    ${YYYYMMDDD_NOW_-}
    Log To Console    startDateNowDDMMYYYY_DB${startDateNowDDMMYYYY_DB}
    Click Element Page    ${ACCOUNT_ADD_DATE_STARTDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${startDateNowYYYYMMDD_NOW}    ${ACCOUNT_ADD_DATE_STARTDATE_FORMAT_DATE}    ${ACCOUNT_ADD_DATE_STARTDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ACCOUNT_ADD_DATE_STARTDATE_INPUT_LOCATOR}    ${DATE_PICKER_LOCATOR}    ${ACCOUNT_ADD_DATE_STARTDATE_LOCATOR}
	Sleep    0.5s
    #Click Permission 
    Click Element Page    ${ACCOUNT_ADD_CHK_PERMISSION0_LOCATOR}
    
    #Click Save button
    Click Element Page    ${ACCOUNT_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

################################################################################################################################
################################################################-- Edit Account--################################################################
Edit Account input all field data EN 
    #Click Edit Account
    Wait Until Contains Element Should Be Visible    ${ACCOUNT_BTN_MORE_LOCATOR}
    Mouse Down    ${ACCOUNT_BTN_MORE_LOCATOR}
	Click Element Page    ${ACCOUNT_BTN_EDIT_LOCATOR}
	Sleep    0.5s
	
	#Edit Account
	Wait Until Contains Element Text Should Be    ${ACCOUNT_EDIT_LBL_EDITACCOUNT_LOCATOR}    ${ACCOUNT_EDIT_LBL_EDITACCOUNT_EN} 

    #Name *
    Wait Until Contains Input Text    ${ACCOUNT_EDIT_INPUT_NAME_LOCATOR}    ${ACCOUNT_EDIT_NAME_VALUE}
    #Maximum Room *
    Wait Until Contains Input Text    ${ACCOUNT_EDIT_INPUT_MAXIMUMROOM_LOCATOR}    ${ACCOUNT_EDIT_MAXIMUMROOM_VALUE}
    #Phone *
    Wait Until Contains Input Text    ${ACCOUNT_EDIT_INPUT_PHONE_LOCATOR}    ${ACCOUNT_EDIT_PHONE_VALUE}
    #Taxpayer Identification No *
    Wait Until Contains Input Text    ${ACCOUNT_EDIT_INPUT_TAXPAYERIDENTIFICATIONNO_LOCATOR}    ${ACCOUNT_EDIT_TAXPAYERIDENTIFICATIONNO_VALUE}
    Click Element Page    ${ACCOUNT_EDIT_LBL_EDITACCOUNT_LOCATOR}

    #Start Date *
    # 01/12/2021
    # {dt:%Y}/{dt:%m}/{dt:%d}
    ${startDateNowYYYYMMDD_NOW}=    Change format date now    ${YYYYMMDD_NOW}
    Log To Console    startDateNowYYYYMMDD_NOW${startDateNowYYYYMMDD_NOW}
    # {dt:%d}/{dt:%m}/{dt:%Y}
    ${startDateNowDDMMYYYY_NOW}=    Change format date now    ${DDMMYYYY_NOW}
    Log To Console    startDateNowDDMMYYYY_NOW${startDateNowDDMMYYYY_NOW}
    # {dt:%Y}-{dt:%m}-{dt:%d}
    ${startDateNowDDMMYYYY_DB}=    Change format date now    ${YYYYMMDDD_NOW_-}
    Log To Console    startDateNowDDMMYYYY_DB${startDateNowDDMMYYYY_DB}
    # Click Element Page    ${ACCOUNT_EDIT_DATE_STARTDATE_BUTTON_LOCATOR}            #Click calendar
    # Select Calendar    ${TYPE_CALENDAR}    ${startDateNowYYYYMMDD}    ${ACCOUNT_EDIT_DATE_STARTDATE_FORMAT_DATE}    ${ACCOUNT_EDIT_DATE_STARTDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ACCOUNT_EDIT_DATE_STARTDATE_INPUT_LOCATOR}    ${DATE_PICKER_LOCATOR}    ${ACCOUNT_EDIT_DATE_STARTDATE_LOCATOR}
	# Sleep    0.5s

    # Select Calendar    ${TYPE_CALENDAR}    ${ACCOUNT_STARTDATE_INPUT_DATE_VALUE}    ${ACCOUNT_EDIT_DATE_STARTDATE_FORMAT_DATE}    ${ACCOUNT_EDIT_DATE_STARTDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ACCOUNT_EDIT_DATE_STARTDATE_INPUT_LOCATOR}    ${DATE_PICKER_LOCATOR}    ${ACCOUNT_EDIT_DATE_STARTDATE_LOCATOR}
	Sleep    0.5s
    #Click Permanent
    Click Element Page    ${ACCOUNT_EDIT_CHK_PERMANENT_LOCATOR}
    #Expire Date
    # 01/12/2021
    ${expireDateNowDDMMYYYY_ADDSUB}=    Value Add date    ${DDMMYYYY_ADDSUB}    ${DATE_TYPE_ADD}    ${RANGE_DAY} 
    # ${expireDateNowYYYYMMDD_ADDSUB}=    Value Add date    ${YYYYMMDD_ADDSUB}    ${DATE_TYPE_ADD}    ${RANGE_DAY}
    ${expireDateNowYYYYMMDD_ADDSUB_DB}=    Value Add date    ${YYYYMMDD_-_ADDSUB}    ${DATE_TYPE_ADD}    ${RANGE_DAY}
    Log To Console    expireDateNow${expireDateNowDDMMYYYY_ADDSUB}
    Click Element Page    ${ACCOUNT_EDIT_DATE_EXPIREDATE_BUTTON_LOCATOR}            #Click calendar
    Select Calendar    ${TYPE_CALENDAR}    ${expireDateNowDDMMYYYY_ADDSUB}    ${ACCOUNT_EDIT_DATE_EXPIREDATE_FORMAT_DATE}    ${ACCOUNT_EDIT_DATE_EXPIREDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ACCOUNT_EDIT_DATE_EXPIREDATE_INPUT_LOCATOR}    ${DATE_PICKER_LOCATOR}    ${ACCOUNT_EDIT_DATE_EXPIREDATE_LOCATOR}
	
    # Select Calendar    ${TYPE_CALENDAR}    ${expireDateNow}    ${ACCOUNT_EDIT_DATE_EXPIREDATE_FORMAT_DATE}    ${ACCOUNT_EDIT_DATE_EXPIREDATE_SEPARATOR_DATE}    ${FORMAT_DATE}    ${SEPARATOR_DATE}    ${ACCOUNT_EDIT_DATE_EXPIREDATE_INPUT_LOCATOR}    ${DATE_PICKER_LOCATOR}    ${ACCOUNT_EDIT_DATE_EXPIREDATE_LOCATOR}
	Sleep    0.5s
    
    #Click Permission 
    Click Element Page    ${ACCOUNT_EDIT_CHK_PERMISSION1_LOCATOR}
    
    #Click Save button
    Click Element Page    ${ACCOUNT_ADDEDIT_BTN_SAVE_LOCATOR}

    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table Account EN

    ${identificationNo}=    Get Text String    ${ACCOUNT_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
	Log To Console    identificationNo${identificationNo}
 
    ${data}=    Evaluate    {"no":"1", "identificationNo":"${identificationNo}", "name":"${ACCOUNT_EDIT_NAME_VALUE}", "phone":"${ACCOUNT_EDIT_PHONE_VALUE}", "maximumRoom":"${ACCOUNT_EDIT_MAXIMUMROOM_VALUE}", "startDate":"${startDateNowDDMMYYYY_NOW}", "expireDate":"${expireDateNowDDMMYYYY_ADDSUB}"}
    Log To Console    dataEdit${data}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Check Value Table    ${ACCOUNT_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table Account EN

    # ================ Verify DB ================    
    Request Verify DB Check Data Edit Account    ${MYSQL_TYPE_EDIT_ALLFIELD}    ${identificationNo}    ${ACCOUNT_EDIT_NAME_VALUE}    ${ACCOUNT_EDIT_MAXIMUMROOM__VALUE}    ${ACCOUNT_EDIT_PHONE_VALUE}    ${ACCOUNT_EDIT_TAXPAYERIDENTIFICATIONNO_VALUE}    ${startDateNowDDMMYYYY_DB}    ${expireDateNowYYYYMMDD_ADDSUB_DB}

################################################################-- Generic Test Case Teardown Account--################################################################
Generic Test Case Teardown Account    

    #Click delete button
	${identificationNo}=    Get Text String    ${ACCOUNT_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
	Log To Console    identificationNo${identificationNo}
	Mouse Down    ${ACCOUNT_BTN_MORE_LOCATOR}
    #Click delete button
    Click Delete Data TH    ${ACCOUNT_BTN_DELETE_LOCATOR}    ${identificationNo}

    ################### Close Browser ###################
    Close Browser     

Generic Test Case Teardown Account EN    

    #Click delete button
	${identificationNo}=    Get Text String    ${ACCOUNT_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
	Log To Console    identificationNo${identificationNo}
	Mouse Down    ${ACCOUNT_BTN_MORE_LOCATOR}
    #Click delete button
    Click Delete Data EN    ${ACCOUNT_BTN_DELETE_LOCATOR}    ${identificationNo}

    ################### Close Browser ###################
    Close Browser     

# Generic Test Case Teardown Account2    
#     [Arguments]    ${value_delete1}    ${value_delete2}
    
#     #Click delete button
#     Click Delete Data EN    ${ACCOUNT_BTN_DELETE_LOCATOR}    ${value_delete1}
#     #Click delete button
#     Click Delete Data EN    ${ACCOUNT_BTN_DELETE_LOCATOR}    ${value_delete2}

#     ################### Close Browser ###################
#     Close Browser     

Generic Test Case Teardown Account And Delete Property
    [Arguments]    ${fileName}

    #${accountId},${deletet_at},${namefile}
    Update tb properties set delete_at    ${accountUserId}    ${ACCOUNT_STAMPDELETEPROPERTIES_DELETETAT_VALUE}    ${fileName}

    #Click delete button
	${identificationNo}=    Get Text String    ${ACCOUNT_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
	Log To Console    identificationNo${identificationNo}
	Mouse Down    ${ACCOUNT_BTN_MORE_LOCATOR}
    #Click delete button
    Click Delete Data TH    ${ACCOUNT_BTN_DELETE_LOCATOR}    ${identificationNo}

    ################### Close Browser ###################
    Close Browser  

Generic Test Case Teardown Account And Delete Property EN
    [Arguments]    ${fileName}

    #${accountId},${deletet_at},${namefile}
    Update tb properties set delete_at    ${accountUserId}    ${ACCOUNT_STAMPDELETEPROPERTIES_DELETETAT_VALUE}    ${fileName}

    #Click delete button
	${identificationNo}=    Get Text String    ${ACCOUNT_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
	Log To Console    identificationNo"${identificationNo}"
	Mouse Down    ${ACCOUNT_BTN_MORE_LOCATOR}
    #Click delete button
    Click Delete Data EN    ${ACCOUNT_BTN_DELETE_LOCATOR}    ${identificationNo}

    ################### Close Browser ###################
    Close Browser  

# Generic Test Case Teardown Account EN
#     [Arguments]    ${value_delete}
    
#     #Click delete button
#     Click Delete Data EN    ${ACCOUNT_BTN_DELETE_LOCATOR}    ${value_delete}

#     ################### Close Browser ###################
#     Close Browser     

# Generic Test Case Teardown Account2 EN    
#     [Arguments]    ${value_delete1}    ${value_delete2}
    
#     #Click delete button
#     Click Delete Data EN    ${ACCOUNT_BTN_DELETE_LOCATOR}    ${value_delete1}
#     #Click delete button
#     Click Delete Data EN    ${ACCOUNT_BTN_DELETE_LOCATOR}    ${value_delete2}

#     ################### Close Browser ###################
#     Close Browser     

################################################################################################################################
Check Permission Menu    
    [Arguments]    ${chk_locator}    ${lbl_locator}    ${icon_locator}    ${lbl_menu_toolTip_groupName_locator}    ${lbl_menu_toolTip_role_locator}
    #GroupMenu
    @{resultGroupMenu}=    Request DB Data Group Menu
    ${dataGroupMenu}=    Set Variable    ${resultGroupMenu}[0]
    Log To Console    [dataGroupMenu] : ${dataGroupMenu}
    ${rowcountGroupMenu}=    Set Variable    ${resultGroupMenu}[1]
    Log To Console    [rowcount GroupMenu] : ${rowcountGroupMenu}

    @{valArrDataMenu}=    Create List
    FOR    ${i}    IN RANGE    ${rowcountGroupMenu}
        Log To Console    [name] : ${dataGroupMenu[${i}]['name']}

        ${index}=    Convert To String    ${i}

        ${replacLocatorChkMenu}=    Replace String    ${chk_locator}    [index]    ${index}
        ${replacLocatorLblMenu}=    Replace String    ${lbl_locator}    [index]    ${index}
        ${replacLocatorIconMenu}=    Replace String    ${icon_locator}    [index]    ${index}
        ${replacLocatortTooltipGroupNameMenu}=    Replace String    ${lbl_menu_toolTip_groupName_locator}    [index]    ${index}
        #menu
        #chk
        Wait Until Contains Element Should Be Visible    ${replacLocatorChkMenu}
        #GroupMenuName
        Wait Until Contains Element Text Should Be    ${replacLocatorLblMenu}    ${dataGroupMenu[${i}]['name']}

        @{splitMenuId}=    Split String    ${dataGroupMenu[${i}]['menu_id']}   ,
        # Log To Console    splitMenuId${splitMenuId}  
        ${countMenuId}=    Get Length    ${splitMenuId}
        # Log To Console    countMenuId${countMenuId}  

        #icon
        Mouse Down    ${replacLocatorIconMenu}
        # Check Permission Menu Tooltip GroupName 
        Wait Until Contains Element Text Should Be    ${replacLocatortTooltipGroupNameMenu}    ${dataGroupMenu[${i}]['name']}
        # Check Permission Menu Tooltip Value
        ${data}=    Check Permission Menu Tooltip    ${i}    ${countMenuId}    ${splitMenuId}    ${lbl_menu_toolTip_role_locator}
       Check Permission Menu Tooltip Value    ${countMenuId}    ${data}    
    END
    
Check Permission Menu Tooltip    
    [Arguments]    ${i}    ${countMenuId}    ${splitMenuId}    ${lbl_menu_toolTip_role_locator}

    #Menu
    @{resultMenu}=    Request DB Data Menu
    ${dataMenu}=    Set Variable    ${resultMenu}[0]
    # Log To Console    [dataMenu] : ${dataMenu}
    ${rowcountMenu}=    Set Variable    ${resultMenu}[1]
    Log To Console    [rowcount Menu] : ${rowcountMenu}
    
    @{valArrDataMenu}=    Create List
    @{valArrDataMenulocator}=    Create List
    FOR    ${j}    IN RANGE    ${rowcountMenu}
        ${data}=    Loop Menu Tooltip For Append To List    ${i}    ${j}    ${countMenuId}    ${splitMenuId}     ${dataMenu}    ${valArrDataMenu}    ${valArrDataMenulocator}    ${lbl_menu_toolTip_role_locator}
    END
    # Log To Console    data${data}
    [Return]    ${data}[0]    ${data}[1]    ${data}[2]

Loop Menu Tooltip For Append To List
    [Arguments]    ${i}    ${j}    ${countMenuId}    ${splitMenuId}    ${dataMenu}    ${valArrDataMenu}    ${valArrDataMenulocator}    ${lbl_menu_toolTip_role_locator}  
    
    FOR    ${k}    IN RANGE    ${countMenuId}
        Run Keyword If    '${splitMenuId[${k}]}' == '${dataMenu[${j}]['id']}'    Append To List    ${valArrDataMenu}    ${dataMenu[${j}]['menuName']}        #Add data to array set at valArrData  
    
        ${index}=    Convert To String    ${k}
        ${replacLocatorTooltipRoleMenu}=    Replace String    ${lbl_menu_toolTip_role_locator}    [index]    ${index}

        Run Keyword If    '${splitMenuId[${k}]}' == '${dataMenu[${j}]['id']}'    Append To List    ${valArrDataMenulocator}    ${replacLocatorTooltipRoleMenu}        #Add data to array set at valArrData  
    END

    # Log To Console    valArrDataMenu${valArrDataMenu}
    [Return]    ${k}    ${valArrDataMenu}    ${valArrDataMenulocator}
    
Check Permission Menu Tooltip Value
    [Arguments]    ${countMenuId}    ${data} 
    # Log To Console    countMenuId${countMenuId}
    # Log To Console    data${data}
    
    FOR    ${m}    IN RANGE    ${countMenuId}
        Wait Until Contains Element Text Should Be    ${data[2][${m}]}   - ${data[1][${m}]}
    END
