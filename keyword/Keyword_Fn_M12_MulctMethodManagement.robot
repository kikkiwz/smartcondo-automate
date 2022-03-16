*** Keywords ***
################################################################-- Set Data for check value table MulctMethod--################################################################
Set Data for check value table MulctMethod
    # Set field header table To Array
    ${numCol}=    Convert To Integer    ${MULCTMETHOD_SEARCH_NUMCOL}
    #Set field header table To Array
    @{fieldArrDataTable}=    Create List    
    Append To List    ${fieldArrDataTable}    @{MULCTMETHOD_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_TH}
    # Append To List    ${fieldArrDataTable}    no    nameTh    remark    status
    #Set Num field To Array
    @{arrNumfield}=    Create List    
    Append To List    ${arrNumfield}    ${numCol-4}    ${numCol-3}    ${numCol-2}    ${numCol-1}
    #Set Num Col To Array
    @{arrNumCol}=    Create List    
    Append To List    ${arrNumCol}    ${numCol-3}    ${numCol-2}    ${numCol-1}    ${numCol}
    [Return]    ${numCol}    ${fieldArrDataTable}    ${arrNumfield}    ${arrNumCol}
    
Set Data for check value table MulctMethod EN
    #Set field header table To Array
    ${numCol}=    Convert To Integer    ${MULCTMETHOD_SEARCH_NUMCOL}
    #Set field header table To Array
    @{fieldArrDataTable}=    Create List    
    Append To List    ${fieldArrDataTable}    @{MULCTMETHOD_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_EN}
    # Append To List    ${fieldArrDataTable}    no    nameTh    remark    status
    #Set Num field To Array
    @{arrNumfield}=    Create List    
    Append To List    ${arrNumfield}    ${numCol-4}    ${numCol-3}    ${numCol-2}    ${numCol-1}
    #Set Num Col To Array
    @{arrNumCol}=    Create List    
    Append To List    ${arrNumCol}    ${numCol-3}    ${numCol-2}    ${numCol-1}    ${numCol}
    [Return]    ${numCol}    ${fieldArrDataTable}    ${arrNumfield}    ${arrNumCol}
    
Check Value Table MulctMethod
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search MulctMethod    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_INCOMECODE_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    Set Global Variable    ${rowcountSearchMulctMethod}    ${resultSearch}[1]
    Log To Console    [rowcount SearchMulctMethod] : ${rowcountSearchMulctMethod}

    ${checkNodata}=    Run Keyword If    '${rowcountSearchMulctMethod}'=='0'    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchMulctMethod}'!='0'    Check Value Table Search MulctMethod    ${DEFAULT_TH}     ${rowcountSearchMulctMethod}    ${dataSearch}
    
    [Return]    ${rowcountSearchMulctMethod}

Check Value Table MulctMethod EN
    #====== Verify DB ==========
    #Inquiry for verify DB  
    #  [((31, 7, 47, 'รหัสค่าปรับ', 'ชื่อค่าปรับ ภาษาไทย', 'ชื่อค่าปรับ ภาษาอังกฤษ', 1, Decimal('1.00'), Decimal('2.00'), 'หมายเหตุ1', 1, datetime.datetime(2021, 11, 8, 19, 4, 56), '10', None, None, None, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search MulctMethod    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_INCOMECODE_FIELD_STATUS} ${ORDERBY_DESC}
    ${dataSearch}=    Set Variable    ${resultSearch}[0]
    Log To Console    [dataSearch] : ${dataSearch}
    Set Global Variable    ${rowcountSearchMulctMethod}    ${resultSearch}[1]
    Log To Console    [rowcount SearchMulctMethod] : ${rowcountSearchMulctMethod}

    ${checkNodata}=    Run Keyword If    '${rowcountSearchMulctMethod}'=='0'    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchMulctMethod}'!='0'    Check Value Table Search MulctMethod    ${DEFAULT_EN}     ${rowcountSearchMulctMethod}    ${dataSearch}
    
    [Return]    ${rowcountSearchMulctMethod}
################################################################-- Create MulctMethod--################################################################
#====== Check DB ==========
# อัตราการปรับ[เปอร์เซ็นต์]
# หน่วยคิดค่าปรับ[ต่อวัน]
# วิธีการคำนวณ[ทบยอด]
# หน่วยเวลา[เดือน]
Create MulctMethod input all field data 
    
    #Click Create MulctMethod
    Click Element Page    ${MULCTMETHOD_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create MulctMethod
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_LOCATOR}    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_TH} 

    #Mulct Method Name *
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_MULCTMETHODNAME_LOCATOR}    ${MULCTMETHOD_MULCTMETHODNAME_VALUE}
    #Remark
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_REMARK_LOCATOR}    ${MULCTMETHOD_REMARK_VALUE}
    #Status *
    Select Dropdown    ${MULCTMETHOD_ADD_DDL_STATUS_LOCATOR}    ${MULCTMETHOD_ADD_DDL_STATUS_LIST_LOCATOR}    ${MULCTMETHOD_ADD_DDL_STATUS_CLASS_LOCATOR}    ${MULCTMETHOD_STATUS_TH_VALUE1}
    Sleep    0.5s
    
    #Adjustment Rate * [เปอร์เซ็นต์]
    Select Dropdown    ${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_LOCATOR}    ${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_LIST_LOCATOR}    ${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_CLASS_LOCATOR}    ${MULCTMETHOD_ADJUSTMENTRATE_PERCENT_TH_VALUE}
    Sleep    0.5s
    
    #Click Unit Charge * [ต่อวัน]
    Click Element Page    ${MULCTMETHOD_ADD_RDL_UNITCHARGE_PERDAY_LOCATOR}

    #Click Calculation Method * [ทบยอด]
    Click Element Page    ${MULCTMETHOD_ADD_RDL_CALCULATIONMETHOD_CHARGEAFINE_LOCATOR}

    #Time Unit [เดือน]
    Select Dropdown    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_LOCATOR}    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_LIST_LOCATOR}    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_CLASS_LOCATOR}    ${MULCTMETHOD_TIMEUNIT_MOUTH_TH_VALUE}
    Sleep    0.5s

    #Click +
    Click Element Page    ${MULCTMETHOD_ADD_BTN_ADD_LOCATOR}

    #1
    #Number of time past the deadline
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_NUMBEROFTIMEPASTTHEDEADLINE_LOCATOR}    ${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE_VALUE}

    #Amount/Percent
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT_VALUE}
    
    #2
    #Number of time past the deadline
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_NUMBEROFTIMEPASTTHEDEADLINE2_LOCATOR}    ${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE2_VALUE}

    #Amount/Percent
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT2_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT2_VALUE}

    #Onwards
    #Amount/Percent
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT_ONWARDS_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT3_VALUE}

    #Click Save button
    Click Element Page    ${MULCTMETHOD_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}
    
    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table MulctMethod

    ${data}=    Evaluate    {"no":"1","nameTh":"${MULCTMETHOD_MULCTMETHODNAME_VALUE}", "remark":"${MULCTMETHOD_REMARK_VALUE}","status":"${MULCTMETHOD_STATUS_TH_VALUE1}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Log To Console    ${valArrDataTable}
    Check Value Table    ${MULCTMETHOD_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table MulctMethod

    #================ Verify DB [MulctMethod] ================    
    Request Verify DB Check Data Create MulctMethod    ${MYSQL_TYPE_CREATE_ALLFIELD}    ${MULCTMETHOD_MULCTMETHODNAME_VALUE}    ${MULCTMETHOD_REMARK_VALUE}    ${MULCTMETHOD_STATUSID_VALUE1}    ${MULCTMETHOD_ADJUSTMENTRATE_PERCENTID_VALUE}    ${MULCTMETHOD_UNITCHARGE_PERDAYID_VALUE}    ${MULCTMETHOD_CALCULATIONMETHOD_ROLLOVERID_VALUE}    ${MULCTMETHOD_TIMEUNIT_MOUTHID_VALUE}

    #================ Verify DB [MulctCondition] ================    
    ${dataMulctCondition}=    Evaluate    [{"timePastDeadline":"${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE_VALUE}","dateToFlag":0,"total":"${MULCTMETHOD_AMOUNTPERCENT_VALUE}"},{"timePastDeadline":"${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE2_VALUE}","dateToFlag":0,"total":"${MULCTMETHOD_AMOUNTPERCENT2_VALUE}"},{"timePastDeadline":"${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE_ONWARDS_VALUE}","dateToFlag":1,"total":"${MULCTMETHOD_AMOUNTPERCENT3_VALUE}"}]
    Request Verify DB Check Data MulctCondition Account    ${MYSQL_TYPE_CREATE_ALLFIELD}    ${mulctMethodId}    ${NONE}    ${NONE}    ${dataMulctCondition}

Create MulctMethod input require field data
# อัตราการปรับ[จำนวนเงิน]
# หน่วยคิดค่าปรับ[ต่อทั้งช่วงเวลา]
# วิธีการคำนวณ[ไม่ทบยอด]
# หน่วยเวลา[วัน]
    #Click Create MulctMethod
    Click Element Page    ${MULCTMETHOD_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create MulctMethod
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_LOCATOR}    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_TH} 

    #Mulct Method Name *
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_MULCTMETHODNAME_LOCATOR}    ${MULCTMETHOD_MULCTMETHODNAME2_VALUE}
    #Status *
    Select Dropdown    ${MULCTMETHOD_ADD_DDL_STATUS_LOCATOR}    ${MULCTMETHOD_ADD_DDL_STATUS_LIST_LOCATOR}    ${MULCTMETHOD_ADD_DDL_STATUS_CLASS_LOCATOR}    ${MULCTMETHOD_STATUS_TH_VALUE2}
    Sleep    0.5s
    
    # #Adjustment Rate * [เปอร์เซ็นต์]
    # Select Dropdown    ${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_LOCATOR}    ${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_LIST_LOCATOR}    ${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_CLASS_LOCATOR}    ${MULCTMETHOD_ADJUSTMENTRATE_PERCENT_TH_VALUE}
    # Sleep    0.5s
    
    # #Click Unit Charge * [ต่อวัน]
    # Click Element Page    ${MULCTMETHOD_ADD_RDL_UNITCHARGE_PERDAY_LOCATOR}

    # #Click Calculation Method * [ทบยอด]
    # Click Element Page    ${MULCTMETHOD_ADD_RDL_CALCULATIONMETHOD_CHARGEAFINE_LOCATOR}

    #Time Unit [เดือน]
    # Select Dropdown    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_LOCATOR}    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_LIST_LOCATOR}    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_CLASS_LOCATOR}    ${MULCTMETHOD_TIMEUNIT_MOUTH_TH_VALUE}
    # Sleep    0.5s

    #Click +
    # Click Element Page    ${MULCTMETHOD_ADD_BTN_ADD_LOCATOR}

    #1
    #Number of time past the deadline
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_NUMBEROFTIMEPASTTHEDEADLINE_LOCATOR}    ${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE_VALUE}

    #Amount/Percent
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT_VALUE}
    
    #2
    #Number of time past the deadline
    # Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_NUMBEROFTIMEPASTTHEDEADLINE2_LOCATOR}    ${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE2_VALUE}

    #Amount/Percent
    # Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT2_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT2_VALUE}

    #Onwards
    #Amount/Percent
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT_ONWARDS_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT3_VALUE}

    #Click Save button
    Click Element Page    ${MULCTMETHOD_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}
    
    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table MulctMethod

    ${data}=    Evaluate    {"no":"1","nameTh":"${MULCTMETHOD_MULCTMETHODNAME2_VALUE}", "remark":"-","status":"${MULCTMETHOD_STATUS_TH_VALUE2}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Log To Console    ${valArrDataTable}
    Check Value Table    ${MULCTMETHOD_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table MulctMethod

    #================ Verify DB [MulctMethod] ================    
    Request Verify DB Check Data Create MulctMethod    ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${MULCTMETHOD_MULCTMETHODNAME2_VALUE}    ${NONE}    ${MULCTMETHOD_STATUSID_VALUE2}    ${MULCTMETHOD_ADJUSTMENTRATE_AMOUNTID_VALUE}    ${MULCTMETHOD_UNITCHARGE_PERTHEMOMENTID_VALUE}    ${MULCTMETHOD_CALCULATIONMETHOD_NOTROLLOVERID_VALUE}    ${MULCTMETHOD_TIMEUNIT_DAYID_VALUE}

    #================ Verify DB [MulctCondition] ================    
    ${dataMulctCondition}=    Evaluate    [{"timePastDeadline":"${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE_VALUE}","dateToFlag":0,"total":"${MULCTMETHOD_AMOUNTPERCENT_VALUE}"},{"timePastDeadline":"${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE_ONWARDS_VALUE}","dateToFlag":1,"total":"${MULCTMETHOD_AMOUNTPERCENT3_VALUE}"}]
    Request Verify DB Check Data MulctCondition Account    ${MYSQL_TYPE_CREATE_ALLFIELD}    ${mulctMethodId}    ${NONE}    ${NONE}    ${dataMulctCondition}
    
#====== No Check Table ==========
Create MulctMethod input all field data No Check Table 
    
    #Click Create MulctMethod
    Click Element Page    ${MULCTMETHOD_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create MulctMethod
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_LOCATOR}    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_TH} 

    #Mulct Method Name *
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_MULCTMETHODNAME_LOCATOR}    ${MULCTMETHOD_MULCTMETHODNAME_VALUE}
    #Remark
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_REMARK_LOCATOR}    ${MULCTMETHOD_REMARK_VALUE}
    #Status *
    Select Dropdown    ${MULCTMETHOD_ADD_DDL_STATUS_LOCATOR}    ${MULCTMETHOD_ADD_DDL_STATUS_LIST_LOCATOR}    ${MULCTMETHOD_ADD_DDL_STATUS_CLASS_LOCATOR}    ${MULCTMETHOD_STATUS_TH_VALUE1}
    Sleep    0.5s
    
    #Adjustment Rate * [เปอร์เซ็นต์]
    Select Dropdown    ${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_LOCATOR}    ${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_LIST_LOCATOR}    ${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_CLASS_LOCATOR}    ${MULCTMETHOD_ADJUSTMENTRATE_PERCENT_TH_VALUE}
    Sleep    0.5s
    
    #Click Unit Charge * [ต่อวัน]
    Click Element Page    ${MULCTMETHOD_ADD_RDL_UNITCHARGE_PERDAY_LOCATOR}

    #Click Calculation Method * [ทบยอด]
    Click Element Page    ${MULCTMETHOD_ADD_RDL_CALCULATIONMETHOD_CHARGEAFINE_LOCATOR}

    #Time Unit [เดือน]
    Select Dropdown    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_LOCATOR}    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_LIST_LOCATOR}    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_CLASS_LOCATOR}    ${MULCTMETHOD_TIMEUNIT_MOUTH_TH_VALUE}
    Sleep    0.5s

    #Click +
    Click Element Page    ${MULCTMETHOD_ADD_BTN_ADD_LOCATOR}

    #1
    #Number of time past the deadline
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_NUMBEROFTIMEPASTTHEDEADLINE_LOCATOR}    ${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE_VALUE}

    #Amount/Percent
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT_VALUE}
    
    #2
    #Number of time past the deadline
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_NUMBEROFTIMEPASTTHEDEADLINE2_LOCATOR}    ${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE2_VALUE}

    #Amount/Percent
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT2_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT2_VALUE}

    #Onwards
    #Amount/Percent
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT_ONWARDS_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT3_VALUE}

    #Click Save button
    Click Element Page    ${MULCTMETHOD_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

Create MulctMethod input require field data No Check Table
    #Click Create MulctMethod
    Click Element Page    ${MULCTMETHOD_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create MulctMethod
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_LOCATOR}    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_TH} 

    #Mulct Method Name *
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_MULCTMETHODNAME_LOCATOR}    ${MULCTMETHOD_MULCTMETHODNAME2_VALUE}
    #Status *
    Select Dropdown    ${MULCTMETHOD_ADD_DDL_STATUS_LOCATOR}    ${MULCTMETHOD_ADD_DDL_STATUS_LIST_LOCATOR}    ${MULCTMETHOD_ADD_DDL_STATUS_CLASS_LOCATOR}    ${MULCTMETHOD_STATUS_TH_VALUE2}
    Sleep    0.5s
    #1
    #Number of time past the deadline
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_NUMBEROFTIMEPASTTHEDEADLINE_LOCATOR}    ${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE_VALUE}

    #Amount/Percent
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT_VALUE}
    
    #Onwards
    #Amount/Percent
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT_ONWARDS_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT3_VALUE}

    #Click Save button
    Click Element Page    ${MULCTMETHOD_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

################################################################################################################################
################################################################-- Edit MulctMethod --################################################################
Edit MulctMethod input all field data 
    #Click Edit MulctMethod
    Click Element Page    ${MULCTMETHOD_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit MulctMethod
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_EDITMULCTMETHOD_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_EDITMULCTMETHOD_TH}
    
    #Mulct Method Name *
    Wait Until Contains Input Text    ${MULCTMETHOD_EDIT_INPUT_MULCTMETHODNAME_LOCATOR}    ${MULCTMETHOD_MULCTMETHODNAME2_VALUE}
    #Remark
    Wait Until Contains Input Text    ${MULCTMETHOD_EDIT_INPUT_REMARK_LOCATOR}    ${MULCTMETHOD_REMARK_VALUE}
    #Status *
    Select Dropdown    ${MULCTMETHOD_EDIT_DDL_STATUS_LOCATOR}    ${MULCTMETHOD_EDIT_DDL_STATUS_LIST_LOCATOR}    ${MULCTMETHOD_EDIT_DDL_STATUS_CLASS_LOCATOR}    ${MULCTMETHOD_STATUS_TH_VALUE1}
    Sleep    0.5s
    
    #Adjustment Rate * [เปอร์เซ็นต์]
    Select Dropdown    ${MULCTMETHOD_EDIT_DDL_ADJUSTMENTRATE_LOCATOR}    ${MULCTMETHOD_EDIT_DDL_ADJUSTMENTRATE_LIST_LOCATOR}    ${MULCTMETHOD_EDIT_DDL_ADJUSTMENTRATE_CLASS_LOCATOR}    ${MULCTMETHOD_ADJUSTMENTRATE_PERCENT_TH_VALUE}
    Sleep    0.5s
    
    #Click Unit Charge * [ต่อวัน]
    Click Element Page    ${MULCTMETHOD_EDIT_RDL_UNITCHARGE_PERDAY_LOCATOR}

    #Click Calculation Method * [ทบยอด]
    Click Element Page    ${MULCTMETHOD_EDIT_RDL_CALCULATIONMETHOD_CHARGEAFINE_LOCATOR}

    #Time Unit [เดือน]
    Select Dropdown    ${MULCTMETHOD_EDIT_DDL_TIMEUNIT_LOCATOR}    ${MULCTMETHOD_EDIT_DDL_TIMEUNIT_LIST_LOCATOR}    ${MULCTMETHOD_EDIT_DDL_TIMEUNIT_CLASS_LOCATOR}    ${MULCTMETHOD_TIMEUNIT_MOUTH_TH_VALUE}
    Sleep    0.5s

    #Click +
    Click Element Page    ${MULCTMETHOD_EDIT_BTN_ADD_LOCATOR}

    #1
    #Number of time past the deadline
    Wait Until Contains Input Text    ${MULCTMETHOD_EDIT_INPUT_NUMBEROFTIMEPASTTHEDEADLINE_LOCATOR}    ${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE3_VALUE}

    #Amount/Percent
    Wait Until Contains Input Text    ${MULCTMETHOD_EDIT_INPUT_AMOUNTPERCENT_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT3_VALUE}
    
    #2
    #Number of time past the deadline
    Wait Until Contains Input Text    ${MULCTMETHOD_EDIT_INPUT_NUMBEROFTIMEPASTTHEDEADLINE2_LOCATOR}    ${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE_VALUE}

    #Amount/Percent
    Wait Until Contains Input Text    ${MULCTMETHOD_EDIT_INPUT_AMOUNTPERCENT2_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT_VALUE}

    #Onwards
    #Amount/Percent
    Wait Until Contains Input Text    ${MULCTMETHOD_EDIT_INPUT_AMOUNTPERCENT_ONWARDS_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT2_VALUE}

    #Click Save button
    Click Element Page    ${MULCTMETHOD_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table MulctMethod

    ${data}=    Evaluate    {"no":"1","nameTh":"${MULCTMETHOD_MULCTMETHODNAME2_VALUE}", "remark":"${MULCTMETHOD_REMARK_VALUE}","status":"${MULCTMETHOD_STATUS_TH_VALUE1}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Check Value Table    ${MULCTMETHOD_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table MulctMethod

    #================ Verify DB [MulctMethod] ================    
    Request Verify DB Check Data Edit MulctMethod    ${MYSQL_TYPE_EDIT_ALLFIELD}    ${MULCTMETHOD_MULCTMETHODNAME2_VALUE}    ${MULCTMETHOD_REMARK_VALUE}    ${MULCTMETHOD_STATUSID_VALUE1}    ${MULCTMETHOD_ADJUSTMENTRATE_PERCENTID_VALUE}    ${MULCTMETHOD_UNITCHARGE_PERDAYID_VALUE}    ${MULCTMETHOD_CALCULATIONMETHOD_ROLLOVERID_VALUE}    ${MULCTMETHOD_TIMEUNIT_MOUTHID_VALUE}

    #================ Verify DB [MulctCondition] ================    
    ${dataMulctCondition}=    Evaluate    [{"timePastDeadline":"${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE3_VALUE}","dateToFlag":0,"total":"${MULCTMETHOD_AMOUNTPERCENT3_VALUE}"},{"timePastDeadline":"${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE_ONWARDS_VALUE}","dateToFlag":1,"total":"${MULCTMETHOD_AMOUNTPERCENT2_VALUE}"},{"timePastDeadline":"${MULCTMETHOD_AMOUNTPERCENT2_ONWARDS_VALUE}","dateToFlag":0,"total":"${MULCTMETHOD_AMOUNTPERCENT_VALUE}"}]
    Request Verify DB Check Data MulctCondition Account    ${MYSQL_TYPE_EDIT_ALLFIELD}    ${mulctMethodId}    ${NONE}    ${NONE}    ${dataMulctCondition}

################################################################################################################################
################################################################-- Create MulctMethod [EN]--################################################################
#====== Check DB ==========
# อัตราการปรับ[เปอร์เซ็นต์]
# หน่วยคิดค่าปรับ[ต่อวัน]
# วิธีการคำนวณ[ทบยอด]
# หน่วยเวลา[เดือน]
Create MulctMethod input all field data EN
    
    #Click Create MulctMethod
    Click Element Page    ${MULCTMETHOD_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create MulctMethod
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_LOCATOR}    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_EN} 

    #Mulct Method Name *
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_MULCTMETHODNAME_LOCATOR}    ${MULCTMETHOD_MULCTMETHODNAME_VALUE}
    #Remark
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_REMARK_LOCATOR}    ${MULCTMETHOD_REMARK_VALUE}
    #Status *
    Select Dropdown    ${MULCTMETHOD_ADD_DDL_STATUS_LOCATOR}    ${MULCTMETHOD_ADD_DDL_STATUS_LIST_LOCATOR}    ${MULCTMETHOD_ADD_DDL_STATUS_CLASS_LOCATOR}    ${MULCTMETHOD_STATUS_EN_VALUE1}
    Sleep    0.5s
    
    #Adjustment Rate * [เปอร์เซ็นต์]
    Select Dropdown    ${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_LOCATOR}    ${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_LIST_LOCATOR}    ${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_CLASS_LOCATOR}    ${MULCTMETHOD_ADJUSTMENTRATE_PERCENT_EN_VALUE}
    Sleep    0.5s
    
    #Click Unit Charge * [ต่อวัน]
    Click Element Page    ${MULCTMETHOD_ADD_RDL_UNITCHARGE_PERDAY_LOCATOR}

    #Click Calculation Method * [ทบยอด]
    Click Element Page    ${MULCTMETHOD_ADD_RDL_CALCULATIONMETHOD_CHARGEAFINE_LOCATOR}

    #Time Unit [เดือน]
    Select Dropdown    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_LOCATOR}    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_LIST_LOCATOR}    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_CLASS_LOCATOR}    ${MULCTMETHOD_TIMEUNIT_MOUTH_EN_VALUE}
    Sleep    0.5s

    #Click +
    Click Element Page    ${MULCTMETHOD_ADD_BTN_ADD_LOCATOR}

    #1
    #Number of time past the deadline
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_NUMBEROFTIMEPASTTHEDEADLINE_LOCATOR}    ${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE_VALUE}

    #Amount/Percent
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT_VALUE}
    
    #2
    #Number of time past the deadline
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_NUMBEROFTIMEPASTTHEDEADLINE2_LOCATOR}    ${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE2_VALUE}

    #Amount/Percent
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT2_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT2_VALUE}

    #Onwards
    #Amount/Percent
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT_ONWARDS_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT3_VALUE}

    #Click Save button
    Click Element Page    ${MULCTMETHOD_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}
    
    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table MulctMethod EN

    ${data}=    Evaluate    {"no":"1","nameTh":"${MULCTMETHOD_MULCTMETHODNAME_VALUE}", "remark":"${MULCTMETHOD_REMARK_VALUE}","status":"${MULCTMETHOD_STATUS_EN_VALUE1}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Log To Console    ${valArrDataTable}
    Check Value Table    ${MULCTMETHOD_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table MulctMethod EN

    #================ Verify DB [MulctMethod] ================    
    Request Verify DB Check Data Create MulctMethod    ${MYSQL_TYPE_CREATE_ALLFIELD}    ${MULCTMETHOD_MULCTMETHODNAME_VALUE}    ${MULCTMETHOD_REMARK_VALUE}    ${MULCTMETHOD_STATUSID_VALUE1}    ${MULCTMETHOD_ADJUSTMENTRATE_PERCENTID_VALUE}    ${MULCTMETHOD_UNITCHARGE_PERDAYID_VALUE}    ${MULCTMETHOD_CALCULATIONMETHOD_ROLLOVERID_VALUE}    ${MULCTMETHOD_TIMEUNIT_MOUTHID_VALUE}

    #================ Verify DB [MulctCondition] ================    
    ${dataMulctCondition}=    Evaluate    [{"timePastDeadline":"${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE_VALUE}","dateToFlag":0,"total":"${MULCTMETHOD_AMOUNTPERCENT_VALUE}"},{"timePastDeadline":"${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE2_VALUE}","dateToFlag":0,"total":"${MULCTMETHOD_AMOUNTPERCENT2_VALUE}"},{"timePastDeadline":"${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE_ONWARDS_VALUE}","dateToFlag":1,"total":"${MULCTMETHOD_AMOUNTPERCENT3_VALUE}"}]
    Request Verify DB Check Data MulctCondition Account    ${MYSQL_TYPE_CREATE_ALLFIELD}    ${mulctMethodId}    ${NONE}    ${NONE}    ${dataMulctCondition}

Create MulctMethod input require field data EN
# อัตราการปรับ[จำนวนเงิน]
# หน่วยคิดค่าปรับ[ต่อทั้งช่วงเวลา]
# วิธีการคำนวณ[ไม่ทบยอด]
# หน่วยเวลา[วัน]
    #Click Create MulctMethod
    Click Element Page    ${MULCTMETHOD_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create MulctMethod
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_LOCATOR}    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_EN} 

    #Mulct Method Name *
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_MULCTMETHODNAME_LOCATOR}    ${MULCTMETHOD_MULCTMETHODNAME2_VALUE}
    #Status *
    Select Dropdown    ${MULCTMETHOD_ADD_DDL_STATUS_LOCATOR}    ${MULCTMETHOD_ADD_DDL_STATUS_LIST_LOCATOR}    ${MULCTMETHOD_ADD_DDL_STATUS_CLASS_LOCATOR}    ${MULCTMETHOD_STATUS_EN_VALUE2}
    Sleep    0.5s
    
    # #Adjustment Rate * [เปอร์เซ็นต์]
    # Select Dropdown    ${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_LOCATOR}    ${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_LIST_LOCATOR}    ${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_CLASS_LOCATOR}    ${MULCTMETHOD_ADJUSTMENTRATE_PERCENT_EN_VALUE}
    # Sleep    0.5s
    
    # #Click Unit Charge * [ต่อวัน]
    # Click Element Page    ${MULCTMETHOD_ADD_RDL_UNITCHARGE_PERDAY_LOCATOR}

    # #Click Calculation Method * [ทบยอด]
    # Click Element Page    ${MULCTMETHOD_ADD_RDL_CALCULATIONMETHOD_CHARGEAFINE_LOCATOR}

    #Time Unit [เดือน]
    # Select Dropdown    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_LOCATOR}    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_LIST_LOCATOR}    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_CLASS_LOCATOR}    ${MULCTMETHOD_TIMEUNIT_MOUTH_EN_VALUE}
    # Sleep    0.5s

    #Click +
    # Click Element Page    ${MULCTMETHOD_ADD_BTN_ADD_LOCATOR}

    #1
    #Number of time past the deadline
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_NUMBEROFTIMEPASTTHEDEADLINE_LOCATOR}    ${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE_VALUE}

    #Amount/Percent
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT_VALUE}
    
    #2
    #Number of time past the deadline
    # Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_NUMBEROFTIMEPASTTHEDEADLINE2_LOCATOR}    ${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE2_VALUE}

    #Amount/Percent
    # Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT2_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT2_VALUE}

    #Onwards
    #Amount/Percent
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT_ONWARDS_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT3_VALUE}

    #Click Save button
    Click Element Page    ${MULCTMETHOD_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}
    
    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table MulctMethod EN

    ${data}=    Evaluate    {"no":"1","nameTh":"${MULCTMETHOD_MULCTMETHODNAME2_VALUE}", "remark":"-","status":"${MULCTMETHOD_STATUS_EN_VALUE2}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Log To Console    ${valArrDataTable}
    Check Value Table    ${MULCTMETHOD_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table MulctMethod EN

    #================ Verify DB [MulctMethod] ================    
    Request Verify DB Check Data Create MulctMethod    ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${MULCTMETHOD_MULCTMETHODNAME2_VALUE}    ${NONE}    ${MULCTMETHOD_STATUSID_VALUE2}    ${MULCTMETHOD_ADJUSTMENTRATE_AMOUNTID_VALUE}    ${MULCTMETHOD_UNITCHARGE_PERTHEMOMENTID_VALUE}    ${MULCTMETHOD_CALCULATIONMETHOD_NOTROLLOVERID_VALUE}    ${MULCTMETHOD_TIMEUNIT_DAYID_VALUE}

    #================ Verify DB [MulctCondition] ================    
    ${dataMulctCondition}=    Evaluate    [{"timePastDeadline":"${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE_VALUE}","dateToFlag":0,"total":"${MULCTMETHOD_AMOUNTPERCENT_VALUE}"},{"timePastDeadline":"${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE_ONWARDS_VALUE}","dateToFlag":1,"total":"${MULCTMETHOD_AMOUNTPERCENT3_VALUE}"}]
    Request Verify DB Check Data MulctCondition Account    ${MYSQL_TYPE_CREATE_ALLFIELD}    ${mulctMethodId}    ${NONE}    ${NONE}    ${dataMulctCondition}
    
#====== No Check Table ==========
Create MulctMethod input all field data No Check Table EN
    
    #Click Create MulctMethod
    Click Element Page    ${MULCTMETHOD_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create MulctMethod
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_LOCATOR}    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_EN} 

    #Mulct Method Name *
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_MULCTMETHODNAME_LOCATOR}    ${MULCTMETHOD_MULCTMETHODNAME_VALUE}
    #Remark
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_REMARK_LOCATOR}    ${MULCTMETHOD_REMARK_VALUE}
    #Status *
    Select Dropdown    ${MULCTMETHOD_ADD_DDL_STATUS_LOCATOR}    ${MULCTMETHOD_ADD_DDL_STATUS_LIST_LOCATOR}    ${MULCTMETHOD_ADD_DDL_STATUS_CLASS_LOCATOR}    ${MULCTMETHOD_STATUS_EN_VALUE1}
    Sleep    0.5s
    
    #Adjustment Rate * [เปอร์เซ็นต์]
    Select Dropdown    ${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_LOCATOR}    ${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_LIST_LOCATOR}    ${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_CLASS_LOCATOR}    ${MULCTMETHOD_ADJUSTMENTRATE_PERCENT_EN_VALUE}
    Sleep    0.5s
    
    #Click Unit Charge * [ต่อวัน]
    Click Element Page    ${MULCTMETHOD_ADD_RDL_UNITCHARGE_PERDAY_LOCATOR}

    #Click Calculation Method * [ทบยอด]
    Click Element Page    ${MULCTMETHOD_ADD_RDL_CALCULATIONMETHOD_CHARGEAFINE_LOCATOR}

    #Time Unit [เดือน]
    Select Dropdown    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_LOCATOR}    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_LIST_LOCATOR}    ${MULCTMETHOD_ADD_DDL_TIMEUNIT_CLASS_LOCATOR}    ${MULCTMETHOD_TIMEUNIT_MOUTH_EN_VALUE}
    Sleep    0.5s

    #Click +
    Click Element Page    ${MULCTMETHOD_ADD_BTN_ADD_LOCATOR}

    #1
    #Number of time past the deadline
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_NUMBEROFTIMEPASTTHEDEADLINE_LOCATOR}    ${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE_VALUE}

    #Amount/Percent
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT_VALUE}
    
    #2
    #Number of time past the deadline
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_NUMBEROFTIMEPASTTHEDEADLINE2_LOCATOR}    ${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE2_VALUE}

    #Amount/Percent
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT2_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT2_VALUE}

    #Onwards
    #Amount/Percent
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT_ONWARDS_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT3_VALUE}

    #Click Save button
    Click Element Page    ${MULCTMETHOD_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

Create MulctMethod input require field data No Check Table EN
    #Click Create MulctMethod
    Click Element Page    ${MULCTMETHOD_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create MulctMethod
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_LOCATOR}    ${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_EN} 

    #Mulct Method Name *
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_MULCTMETHODNAME_LOCATOR}    ${MULCTMETHOD_MULCTMETHODNAME2_VALUE}
    #Status *
    Select Dropdown    ${MULCTMETHOD_ADD_DDL_STATUS_LOCATOR}    ${MULCTMETHOD_ADD_DDL_STATUS_LIST_LOCATOR}    ${MULCTMETHOD_ADD_DDL_STATUS_CLASS_LOCATOR}    ${MULCTMETHOD_STATUS_EN_VALUE2}
    Sleep    0.5s
    #1
    #Number of time past the deadline
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_NUMBEROFTIMEPASTTHEDEADLINE_LOCATOR}    ${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE_VALUE}

    #Amount/Percent
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT_VALUE}
    
    #Onwards
    #Amount/Percent
    Wait Until Contains Input Text    ${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT_ONWARDS_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT3_VALUE}

    #Click Save button
    Click Element Page    ${MULCTMETHOD_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

################################################################################################################################
################################################################-- Edit MulctMethod --################################################################
Edit MulctMethod input all field data EN
    #Click Edit MulctMethod
    Click Element Page    ${MULCTMETHOD_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit MulctMethod
    Wait Until Contains Element Text Should Be    ${MULCTMETHOD_EDIT_LBL_EDITMULCTMETHOD_LOCATOR}    ${MULCTMETHOD_EDIT_LBL_EDITMULCTMETHOD_EN}
    
    #Mulct Method Name *
    Wait Until Contains Input Text    ${MULCTMETHOD_EDIT_INPUT_MULCTMETHODNAME_LOCATOR}    ${MULCTMETHOD_MULCTMETHODNAME2_VALUE}
    #Remark
    Wait Until Contains Input Text    ${MULCTMETHOD_EDIT_INPUT_REMARK_LOCATOR}    ${MULCTMETHOD_REMARK_VALUE}
    #Status *
    Select Dropdown    ${MULCTMETHOD_EDIT_DDL_STATUS_LOCATOR}    ${MULCTMETHOD_EDIT_DDL_STATUS_LIST_LOCATOR}    ${MULCTMETHOD_EDIT_DDL_STATUS_CLASS_LOCATOR}    ${MULCTMETHOD_STATUS_EN_VALUE1}
    Sleep    0.5s
    
    #Adjustment Rate * [เปอร์เซ็นต์]
    Select Dropdown    ${MULCTMETHOD_EDIT_DDL_ADJUSTMENTRATE_LOCATOR}    ${MULCTMETHOD_EDIT_DDL_ADJUSTMENTRATE_LIST_LOCATOR}    ${MULCTMETHOD_EDIT_DDL_ADJUSTMENTRATE_CLASS_LOCATOR}    ${MULCTMETHOD_ADJUSTMENTRATE_PERCENT_EN_VALUE}
    Sleep    0.5s
    
    #Click Unit Charge * [ต่อวัน]
    Click Element Page    ${MULCTMETHOD_EDIT_RDL_UNITCHARGE_PERDAY_LOCATOR}

    #Click Calculation Method * [ทบยอด]
    Click Element Page    ${MULCTMETHOD_EDIT_RDL_CALCULATIONMETHOD_CHARGEAFINE_LOCATOR}

    #Time Unit [เดือน]
    Select Dropdown    ${MULCTMETHOD_EDIT_DDL_TIMEUNIT_LOCATOR}    ${MULCTMETHOD_EDIT_DDL_TIMEUNIT_LIST_LOCATOR}    ${MULCTMETHOD_EDIT_DDL_TIMEUNIT_CLASS_LOCATOR}    ${MULCTMETHOD_TIMEUNIT_MOUTH_EN_VALUE}
    Sleep    0.5s

    #Click +
    Click Element Page    ${MULCTMETHOD_EDIT_BTN_ADD_LOCATOR}

    #1
    #Number of time past the deadline
    Wait Until Contains Input Text    ${MULCTMETHOD_EDIT_INPUT_NUMBEROFTIMEPASTTHEDEADLINE_LOCATOR}    ${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE3_VALUE}

    #Amount/Percent
    Wait Until Contains Input Text    ${MULCTMETHOD_EDIT_INPUT_AMOUNTPERCENT_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT3_VALUE}
    
    #2
    #Number of time past the deadline
    Wait Until Contains Input Text    ${MULCTMETHOD_EDIT_INPUT_NUMBEROFTIMEPASTTHEDEADLINE2_LOCATOR}    ${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE_VALUE}

    #Amount/Percent
    Wait Until Contains Input Text    ${MULCTMETHOD_EDIT_INPUT_AMOUNTPERCENT2_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT_VALUE}

    #Onwards
    #Amount/Percent
    Wait Until Contains Input Text    ${MULCTMETHOD_EDIT_INPUT_AMOUNTPERCENT_ONWARDS_LOCATOR}    ${MULCTMETHOD_AMOUNTPERCENT2_VALUE}

    #Click Save button
    Click Element Page    ${MULCTMETHOD_ADDEDIT_BTN_SAVE_LOCATOR}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table MulctMethod EN

    ${data}=    Evaluate    {"no":"1","nameTh":"${MULCTMETHOD_MULCTMETHODNAME2_VALUE}", "remark":"${MULCTMETHOD_REMARK_VALUE}","status":"${MULCTMETHOD_STATUS_EN_VALUE1}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    ${numRow}=    Convert To Integer    0
    Check Value Table    ${MULCTMETHOD_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
    Check Value Table MulctMethod EN

    #================ Verify DB [MulctMethod] ================    
    Request Verify DB Check Data Edit MulctMethod    ${MYSQL_TYPE_EDIT_ALLFIELD}    ${MULCTMETHOD_MULCTMETHODNAME2_VALUE}    ${MULCTMETHOD_REMARK_VALUE}    ${MULCTMETHOD_STATUSID_VALUE1}    ${MULCTMETHOD_ADJUSTMENTRATE_PERCENTID_VALUE}    ${MULCTMETHOD_UNITCHARGE_PERDAYID_VALUE}    ${MULCTMETHOD_CALCULATIONMETHOD_ROLLOVERID_VALUE}    ${MULCTMETHOD_TIMEUNIT_MOUTHID_VALUE}

    #================ Verify DB [MulctCondition] ================    
    ${dataMulctCondition}=    Evaluate    [{"timePastDeadline":"${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE3_VALUE}","dateToFlag":0,"total":"${MULCTMETHOD_AMOUNTPERCENT3_VALUE}"},{"timePastDeadline":"${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE_ONWARDS_VALUE}","dateToFlag":1,"total":"${MULCTMETHOD_AMOUNTPERCENT2_VALUE}"},{"timePastDeadline":"${MULCTMETHOD_AMOUNTPERCENT2_ONWARDS_VALUE}","dateToFlag":0,"total":"${MULCTMETHOD_AMOUNTPERCENT_VALUE}"}]
    Request Verify DB Check Data MulctCondition Account    ${MYSQL_TYPE_EDIT_ALLFIELD}    ${mulctMethodId}    ${NONE}    ${NONE}    ${dataMulctCondition}

################################################################################################################################
################################################################-- Generic Test Case Teardown MulctMethod--################################################################
Generic Test Case Teardown MulctMethod    
    
    #Click delete button
    ${name}=    Get Text String    ${MULCTMETHOD_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    MulctMethod${MulctMethod}

    #Click delete button
    Click Delete Data TH    ${MULCTMETHOD_BTN_DELETE_LOCATOR}    ${name}

    ################### Close Browser ###################
    Close Browser     

Generic Test Case Teardown MulctMethod2    

    #Click delete button
    ${name1}=    Get Text String    ${MULCTMETHOD_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    MulctMethod${MulctMethod}
    
    #Click delete button
    Click Delete Data TH    ${MULCTMETHOD_BTN_DELETE_LOCATOR}    ${name1}

    #Click delete button
    ${name2}=    Get Text String    ${MULCTMETHOD_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}

    #Click delete button
    Click Delete Data TH    ${MULCTMETHOD_BTN_DELETE_LOCATOR}    ${name2}

    ################### Close Browser ###################
    Close Browser     
    
Generic Test Case Teardown MulctMethod And Delete MulctCondition
    [Arguments]    ${fileName}    ${mulctMethodId}

    #${accountId},${deletet_at},${namefile}
    # Update tb mulct_condition set delete_at    ${accountId}    ${MULCTMETHOD_STAMPDELETEPROPERTIES_DELETETAT_VALUE}    ${fileName}    ${mulctMethodId}

    #Click delete button
    ${name}=    Get Text String    ${MULCTMETHOD_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    Log To Console    name${name}
    #Click delete button
    Click Delete Data TH    ${MULCTMETHOD_BTN_DELETE_LOCATOR}    ${name}

    ################### Close Browser ###################
    Close Browser          

Generic Test Case Teardown MulctMethod not Close Browser

    #Click delete button
    ${name}=    Get Text String    ${MULCTMETHOD_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    name${name}

    #Click delete button
    Click Delete Data TH    ${MULCTMETHOD_BTN_DELETE_LOCATOR}    ${name}

Generic Test Case Teardown MulctMethod EN
    
    #Click delete button
    ${name}=    Get Text String    ${MULCTMETHOD_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    MulctMethod${MulctMethod}

    #Click delete button
    Click Delete Data EN    ${MULCTMETHOD_BTN_DELETE_LOCATOR}    ${name}

    ################### Close Browser ###################
    Close Browser     

Generic Test Case Teardown MulctMethod2 EN

    #Click delete button
    ${name1}=    Get Text String    ${MULCTMETHOD_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    MulctMethod${MulctMethod}
    
    #Click delete button
    Click Delete Data EN    ${MULCTMETHOD_BTN_DELETE_LOCATOR}    ${name1}

    #Click delete button
    ${name2}=    Get Text String    ${MULCTMETHOD_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}

    #Click delete button
    Click Delete Data EN    ${MULCTMETHOD_BTN_DELETE_LOCATOR}    ${name2}

    ################### Close Browser ###################
    Close Browser     
    
Generic Test Case Teardown MulctMethod And Delete MulctCondition EN
    [Arguments]    ${fileName}    ${mulctMethodId}

    #${accountId},${deletet_at},${namefile}
    # Update tb mulct_condition set delete_at    ${accountId}    ${MULCTMETHOD_STAMPDELETEPROPERTIES_DELETETAT_VALUE}    ${fileName}    ${mulctMethodId}

    #Click delete button
    ${name}=    Get Text String    ${MULCTMETHOD_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    Log To Console    name${name}
    #Click delete button
    Click Delete Data EN    ${MULCTMETHOD_BTN_DELETE_LOCATOR}    ${name}

    ################### Close Browser ###################
    Close Browser          

Generic Test Case Teardown MulctMethod not Close Browser EN

    #Click delete button
    ${name}=    Get Text String    ${MULCTMETHOD_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    name${name}

    #Click delete button
    Click Delete Data EN    ${MULCTMETHOD_BTN_DELETE_LOCATOR}    ${name}

################################################################################################################################
    