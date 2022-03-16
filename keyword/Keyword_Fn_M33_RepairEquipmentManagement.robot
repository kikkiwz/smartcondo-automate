*** Keywords ***

Set Data for check value table Repair Equipment Management
    #Set field header table To Array
	${numCol}=    Convert To Integer    ${REPAIREQUIPMENTINFORMATION_SEARCH_NUMCOL}
	#Set field header table To Array
	@{fieldArrDataTable}=    Create List	
	Append To List    ${fieldArrDataTable}    @{REPAIREQUIPMENTINFORMATION_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_TH}
	# Append To List    ${fieldArrDataTable}    no    deviceNameTH    remark    status
	#Set Num field To Array
	@{arrNumfield}=    Create List	
	Append To List    ${arrNumfield}    ${numCol-4}    ${numCol-3}    ${numCol-2}    ${numCol-1}
	#Set Num Col To Array
	@{arrNumCol}=    Create List	
	Append To List    ${arrNumCol}    ${numCol-3}    ${numCol-2}    ${numCol-1}    ${numCol}
	[Return]    ${numCol}    ${fieldArrDataTable}    ${arrNumfield}    ${arrNumCol}
	
Set Data for check value table Repair Equipment Management EN
    #Set field header table To Array
	${numCol}=    Convert To Integer    ${REPAIREQUIPMENTINFORMATION_SEARCH_NUMCOL}
	#Set field header table To Array
	@{fieldArrDataTable}=    Create List	
	Append To List    ${fieldArrDataTable}    @{REPAIREQUIPMENTINFORMATION_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_EN}
	# Append To List    ${fieldArrDataTable}    no    deviceNameEN    remark    status
	#Set Num field To Array
	@{arrNumfield}=    Create List	
	Append To List    ${arrNumfield}    ${numCol-4}    ${numCol-3}    ${numCol-2}    ${numCol-1}
	#Set Num Col To Array
	@{arrNumCol}=    Create List	
	Append To List    ${arrNumCol}    ${numCol-3}    ${numCol-2}    ${numCol-1}    ${numCol}
	[Return]    ${numCol}    ${fieldArrDataTable}    ${arrNumfield}    ${arrNumCol}

Check Value Table Repair Equipment Management
	#====== Verify DB ==========
	#[ ((54, 'อ่างล้างหน้า', 'Wash basin', 'อ่างล้างหน้าชำรุด', 1, datetime.datetime(2021, 10, 21, 20, 19, 35), '10', None, None, None, None, 7),) | 1 ]
    ${resultSearchRepairEquipment}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Repair Equipment    ${MYSQL_TYPE_SEARCHLISTALL}    null    null    ${LIMIT_20}    ${OFFSET_0}    null
	${dataSearchRepairEquipment}=    Set Variable    ${resultSearchRepairEquipment}[0]
	Log To Console    [dataSearchRepairEquipment] : ${dataSearchRepairEquipment}
	Set Global Variable    ${rowcountSearchRepairEquipment}    ${resultSearchRepairEquipment}[1]
	Log To Console    [rowcount SearchRepairEquipment] : ${rowcountSearchRepairEquipment}

	${checkNodata}=    Run Keyword If    '${rowcountSearchRepairEquipment}'=='0'    Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchRepairEquipment}'!='0'    Check Value Table Search Repair Equipment    ${DEFAULT_TH}     ${rowcountSearchRepairEquipment}    ${dataSearchRepairEquipment}
    
	[Return]    ${rowcountSearchRepairEquipment}


#--------- Create Repair Equipment Information ---------
Create Repair Equipment Information input require field data 
    #Click Create Repair Equipment
	Click Element Page    ${REPAIREQUIPMENTINFORMATION_BTN_CREATE_LOCATOR}
	Sleep    0.5s
	
	#Create Repair Equipment Information
	Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_ADD_LBL_CREATEREPAIREQUIPMENTINFORMATION_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_ADD_LBL_CREATEREPAIREQUIPMENTINFORMATION_TH} 
   
	#Input Device Name TH*
	Wait Until Contains Input Text    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_TXT_DEVICENAMETH_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_DEVICENAMETH_VALUE1}
	
    #Click Save button
    Click Element Page    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}
    
	Sleep    2s
	#alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

	#================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
	${setData}=    Set Data for check value table Repair Equipment Management

    ${data}=    Evaluate    {"no":"1", "deviceNameTH":"${REPAIREQUIPMENTINFORMATION_DEVICENAMETH_VALUE1}", "remark":"${NONE}", "status":"${REPAIREQUIPMENTINFORMATION_STATUS_TH_VALUE1}"}        
	#Add data to array set at valArrData
    Log To Console    Dataaaaaaaaaaaaaaaaa::::${data}
	@{valArrDataTable}=    Create List
	Append To List    ${valArrDataTable}    ${data} 
	${numRow}=    Convert To Integer    0
    Check Value Table    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
	Check Value Table Repair Equipment Management

	#================ Verify DB ================	
	Request Verify DB Check Data Create Repair Equipment    ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${REPAIREQUIPMENTINFORMATION_DEVICENAMETH_VALUE1}    ${NONE}    ${NONE}    ${REPAIREQUIPMENTINFORMATION_STATUSID_VALUE1}   



Create Repair Equipment Information input all data
    #Click Create Repair Equipment
	Click Element Page    ${REPAIREQUIPMENTINFORMATION_BTN_CREATE_LOCATOR}
	Sleep    0.5s
	
	#Create Repair Equipment Information
	Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_ADD_LBL_CREATEREPAIREQUIPMENTINFORMATION_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_ADD_LBL_CREATEREPAIREQUIPMENTINFORMATION_TH} 
   
	#Input Device Name TH*
	Wait Until Contains Input Text    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_TXT_DEVICENAMETH_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_DEVICENAMETH_VALUE1}
	
    #Input Device Name EN
	Wait Until Contains Input Text    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_TXT_DEVICENAMEEN_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_DEVICENAMEEN_VALUE1}

    #Input Remark
	Wait Until Contains Input Text    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_TXT_REMARK_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_REMARK_VALUE1}

    #Click Save button
    Click Element Page    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}
    
	Sleep    2s
	#alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

	#================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
	${setData}=    Set Data for check value table Repair Equipment Management

    ${data}=    Evaluate    {"no":"1", "deviceNameTH":"${REPAIREQUIPMENTINFORMATION_DEVICENAMETH_VALUE1}", "remark":"${REPAIREQUIPMENTINFORMATION_REMARK_VALUE1}", "status":"${REPAIREQUIPMENTINFORMATION_STATUS_TH_VALUE1}"}        
	#Add data to array set at valArrData
    Log To Console    Dataaaaaaaaaaaaaaaaa::::${data}
	@{valArrDataTable}=    Create List
	Append To List    ${valArrDataTable}    ${data} 
	${numRow}=    Convert To Integer    0
    Check Value Table    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
	Check Value Table Repair Equipment Management

	#================ Verify DB ================	
	Request Verify DB Check Data Create Repair Equipment    ${MYSQL_TYPE_CREATE_ALLFIELD}    ${REPAIREQUIPMENTINFORMATION_DEVICENAMETH_VALUE1}    ${REPAIREQUIPMENTINFORMATION_DEVICENAMEEN_VALUE1}    ${REPAIREQUIPMENTINFORMATION_REMARK_VALUE1}    ${REPAIREQUIPMENTINFORMATION_STATUSID_VALUE1}    




Create Repair Equipment Information input all data 2
    #Click Create Repair Equipment
	Click Element Page    ${REPAIREQUIPMENTINFORMATION_BTN_CREATE_LOCATOR}
	Sleep    0.5s
	
	#Create Repair Equipment Information
	Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_ADD_LBL_CREATEREPAIREQUIPMENTINFORMATION_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_ADD_LBL_CREATEREPAIREQUIPMENTINFORMATION_TH} 
   
	#Input Device Name TH*
	Wait Until Contains Input Text    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_TXT_DEVICENAMETH_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_DEVICENAMETH_VALUE2}
	
    #Input Device Name EN
	Wait Until Contains Input Text    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_TXT_DEVICENAMEEN_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_DEVICENAMEEN_VALUE2}

    #Input Remark
	Wait Until Contains Input Text    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_TXT_REMARK_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_REMARK_VALUE2}

    #Click Save button
    Click Element Page    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}
    
	Sleep    2s
	#alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}


Edit Repair Equipment Information input all data
    #Click Create Repair Equipment
	Click Element Page    ${REPAIREQUIPMENTINFORMATION_BTN_EDIT_LOCATOR}
	Sleep    0.5s
	
	#Edit Repair Equipment Information
	Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_ADD_LBL_EDITREPAIREQUIPMENTINFORMATION_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_ADD_LBL_EDITREPAIREQUIPMENTINFORMATION_TH} 
   
	#Input Device Name TH*
	Wait Until Contains Input Text    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_TXT_DEVICENAMETH_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_DEVICENAMETH_VALUE2}
	
    #Input Device Name EN
	Wait Until Contains Input Text    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_TXT_DEVICENAMEEN_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_DEVICENAMEEN_VALUE2}

    #Input Remark
	Wait Until Contains Input Text    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_TXT_REMARK_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_REMARK_VALUE2}

    #Click Save button
    Click Element Page    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}
    
	Sleep    2s
	#alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

	#================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
	${setData}=    Set Data for check value table Repair Equipment Management

    ${data}=    Evaluate    {"no":"1", "deviceNameTH":"${REPAIREQUIPMENTINFORMATION_DEVICENAMETH_VALUE2}", "remark":"${REPAIREQUIPMENTINFORMATION_REMARK_VALUE2}", "status":"${REPAIREQUIPMENTINFORMATION_STATUS_TH_VALUE1}"}        
	#Add data to array set at valArrData
    Log To Console    Dataaaaaaaaaaaaaaaaa::::${data}
	@{valArrDataTable}=    Create List
	Append To List    ${valArrDataTable}    ${data} 
	${numRow}=    Convert To Integer    0
    Check Value Table    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
	Check Value Table Repair Equipment Management

	#================ Verify DB ================	
 	Request Verify DB Check Data Edit Repair Equipment    ${MYSQL_TYPE_EDIT_ALLFIELD}    ${REPAIREQUIPMENTINFORMATION_DEVICENAMETH_VALUE2}    ${REPAIREQUIPMENTINFORMATION_DEVICENAMEEN_VALUE2}    ${REPAIREQUIPMENTINFORMATION_REMARK_VALUE2}    ${REPAIREQUIPMENTINFORMATION_STATUSID_VALUE1}    



#--------- Create Repair Equipment Information ---------
Edit Repair Equipment Information input require field data 
    #Click Create Repair Equipment
	Click Element Page    ${REPAIREQUIPMENTINFORMATION_BTN_EDIT_LOCATOR}
	Sleep    0.5s
	
	#Edit Repair Equipment Information
	Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_ADD_LBL_EDITREPAIREQUIPMENTINFORMATION_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_ADD_LBL_EDITREPAIREQUIPMENTINFORMATION_TH} 
	Clear Element Text    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_TXT_DEVICENAMETH_LOCATOR}
	#Input Device Name TH*
	Wait Until Contains Input Text    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_TXT_DEVICENAMETH_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_DEVICENAMETH_VALUE2}
    #Click Save button
    Selenium2Library.Mouse Down    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}

	#Click Save button
    Click Element Page    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}
    
	#alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

	#================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
	${setData}=    Set Data for check value table Repair Equipment Management

    ${data}=    Evaluate    {"no":"1", "deviceNameTH":"${REPAIREQUIPMENTINFORMATION_DEVICENAMETH_VALUE2}", "remark":"${NONE}", "status":"${REPAIREQUIPMENTINFORMATION_STATUS_TH_VALUE1}"}        
	#Add data to array set at valArrData
    Log To Console    Dataaaaaaaaaaaaaaaaa::::${data}
	@{valArrDataTable}=    Create List
	Append To List    ${valArrDataTable}    ${data} 
	${numRow}=    Convert To Integer    0
    Check Value Table    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
	Check Value Table Repair Equipment Management

	# ================ Verify DB ================	
	Request Verify DB Check Data Edit Repair Equipment    ${MYSQL_TYPE_EDIT_REQUIREDFIELD}    ${REPAIREQUIPMENTINFORMATION_DEVICENAMETH_VALUE2}    ${NONE}    ${NONE}    ${REPAIREQUIPMENTINFORMATION_STATUSID_VALUE1} 










Click Change Status Disable To Enable
    Selenium2Library.Click Element    ${REPAIREQUIPMENTINFORMATION_BTN_DISABLE_LOCATOR}
    Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_CHANGESTATUS_LBL_TITLE_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_CHANGESTATUS_LBL_TITLE_TH}
    Selenium2Library.Click Element    ${REPAIREQUIPMENTINFORMATION_CHANGESTATUS_BTN_CONFIRM_LOCATOR}
    Sleep    2s
    #Alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

Click Change Status Enable To Disable
    Selenium2Library.Click Element    ${REPAIREQUIPMENTINFORMATION_BTN_ENABLE_LOCATOR}
    Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_CHANGESTATUS_LBL_TITLE_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_CHANGESTATUS_LBL_TITLE_TH}
    Selenium2Library.Click Element    ${REPAIREQUIPMENTINFORMATION_CHANGESTATUS_BTN_CONFIRM_LOCATOR}
    Sleep    2s
    #Alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}



#----------- Generic Test Case Teardown Repair Equipment Management-------------
Generic Test Case Teardown Repair Equipment Management	
    [Arguments]    ${value_delete}
	
	#Click delete button
    Click Delete Data TH    ${REPAIREQUIPMENTINFORMATION_BTN_DELETE_LOCATOR}    ${value_delete}

	#Close Browser
	Close Browser

Generic Test Case Teardown Repair Equipment Management 2	
    [Arguments]    ${value_delete1}    ${value_delete2}

	#Click delete button
    Click Delete Data TH    ${REPAIREQUIPMENTINFORMATION_BTN_DELETE_LOCATOR}    ${value_delete1}
	#Click delete button
    Click Delete Data TH    ${REPAIREQUIPMENTINFORMATION_BTN_DELETE_LOCATOR}    ${value_delete2}

	#Close Browser
	Close Browser

Delete Test Data and Close Browser
#ใช้ชั่วคราวกรณีที่ Wording บน pop-up Delete ไม่ถูกต้อง
    [Arguments]    ${locator_btnDelete}    ${title}    ${alertButtom}
    #Click delete button		
    Click Element Page    ${locator_btnDelete}	
	Sleep    1s
	Wait Until Contains Element Text Should Be    ${ALERT_TITLE_LOCATOR}    ${title}
	Click Element Page    ${ALERT_BTN_CONFIRM_LOCATOR}	
	Sleep    2s
	#alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${alertButtom}
	#Close Browser
	Close Browser

Delete Test Data and Close Browser 2
#ใช้ชั่วคราวกรณีที่ Wording บน pop-up Delete ไม่ถูกต้อง
    [Arguments]    ${locator_btnDelete}    ${title}    ${alertButtom}
    #Click delete button		
    Click Element Page    ${locator_btnDelete}	
	Sleep    1s
	Wait Until Contains Element Text Should Be    ${ALERT_TITLE_LOCATOR}    ${title}
	Click Element Page    ${ALERT_BTN_CONFIRM_LOCATOR}	
	Sleep    2s
	#alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${alertButtom}
	Sleep    2s

	#Click delete button		
    Click Element Page    ${locator_btnDelete}	
	Sleep    1s
	Wait Until Contains Element Text Should Be    ${ALERT_TITLE_LOCATOR}    ${title}
	Click Element Page    ${ALERT_BTN_CONFIRM_LOCATOR}	
	Sleep    2s
	#alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${alertButtom}

	#Close Browser
	Close Browser