*** Keywords ***
################################################################-- Check Value Table Check Asset Management--################################################################
Set Data for check value table Check Asset Management
    #Set field header table To Array
	${numCol}=    Convert To Integer    ${ASSETMANAGEMENTINFORMATION_SEARCH_NUMCOL}
	#Set field header table To Array
	@{fieldArrDataTable}=    Create List	
	Append To List    ${fieldArrDataTable}    @{ASSETMANAGEMENTINFORMATION_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE}
	# Append To List    ${fieldArrDataTable}    no    employeetype    namesurname    phonenumber
	#Set Num field To Array
	@{arrNumfield}=    Create List	
	Append To List    ${arrNumfield}    ${numCol-4}    ${numCol-3}    ${numCol-2}    ${numCol-1}
	#Set Num Col To Array
	@{arrNumCol}=    Create List	
	Append To List    ${arrNumCol}    ${numCol-3}    ${numCol-2}    ${numCol-1}    ${numCol}
	[Return]    ${numCol}    ${fieldArrDataTable}    ${arrNumfield}    ${arrNumCol}


Set Data for check value table Check Asset Management EN
    #Set field header table To Array
	${numCol}=    Convert To Integer    ${ASSETMANAGEMENTINFORMATION_SEARCH_NUMCOL}
	#Set field header table To Array
	@{fieldArrDataTable}=    Create List	
	Append To List    ${fieldArrDataTable}    @{ASSETMANAGEMENTINFORMATION_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE}
	# Append To List    ${fieldArrDataTable}    no    employeetype    namesurname    phonenumber
	#Set Num field To Array
	@{arrNumfield}=    Create List	
	Append To List    ${arrNumfield}    ${numCol-4}    ${numCol-3}    ${numCol-2}    ${numCol-1}
	#Set Num Col To Array
	@{arrNumCol}=    Create List	
	Append To List    ${arrNumCol}    ${numCol-3}    ${numCol-2}    ${numCol-1}    ${numCol}
	[Return]    ${numCol}    ${fieldArrDataTable}    ${arrNumfield}    ${arrNumCol}



Check Value Table Asset Management
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchAssetManagement}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check Asset Management    ${MYSQL_TYPE_CHECKASSETMANAGEMENT_SEARCH_ALL}    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_CHECKASSETMANAGEMENT_FIELD_STATUS} ${ORDERBY_DESC}
	Log To Console    resultSearchAssetManagement::${resultSearchAssetManagement}    

	${dataSearchAssetManagement}=    Set Variable    ${resultSearchAssetManagement}[0]
	Log To Console    [dataSearchAssetManagement] : ${dataSearchAssetManagement}
	Set Global Variable     ${rowcountSearchAssetManagement}    ${resultSearchAssetManagement}[1]
	Log To Console    [rowcount SearchAssetManagement] : ${rowcountSearchAssetManagement}

	${checkNodata}=    Run Keyword If    '${rowcountSearchAssetManagement}'=='0'    Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchAssetManagement}'!='0'    Check Value Table Check Asset Management    ${DEFAULT_TH}     ${rowcountSearchAssetManagement}    ${dataSearchAssetManagement}

	[Return]    ${rowcountSearchAssetManagement}

Check Value Table Asset Management En
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchAssetManagement}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check Asset Management    ${MYSQL_TYPE_CHECKASSETMANAGEMENT_SEARCH_ALL}    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_CHECKASSETMANAGEMENT_FIELD_STATUS} ${ORDERBY_DESC}
	Log To Console    resultSearchAssetManagement::${resultSearchAssetManagement}    

	${dataSearchAssetManagement}=    Set Variable    ${resultSearchAssetManagement}[0]
	Log To Console    [dataSearchAssetManagement] : ${dataSearchAssetManagement}
	Set Global Variable     ${rowcountSearchAssetManagement}    ${resultSearchAssetManagement}[1]
	Log To Console    [rowcount SearchAssetManagement] : ${rowcountSearchAssetManagement}

	${checkNodata}=    Run Keyword If    '${rowcountSearchAssetManagement}'=='0'    Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchAssetManagement}'!='0'    Check Value Table Check Asset Management    ${DEFAULT_EN}     ${rowcountSearchAssetManagement}    ${dataSearchAssetManagement}


	[Return]    ${rowcountSearchAssetManagement}





################################################################-- Create Check Asset Management--################################################################
#====== Check DB ==========
Create Check Asset Management input all field data no Check Table
    #Click Create Check Asset Management
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}
	Sleep    0.5s
	
	#Create Check Asset Management Information
    Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEASSET_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEASSET_TH} 
    Mouse Down    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_ASSETNAMETH_LOCATOR}
    Sleep    0.5s

	

	#ชื่ออุปกรณ์ภาษาไทย *
	Wait Until Contains Input Text    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_TXT_ASSETNAMETH_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMETH_VALUE}
	#ชื่ออุปกรณ์ภาษาอังกฤษ
	Wait Until Contains Input Text    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_TXT_ASSETNAMEEN_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMEEN_VALUE}
	#หมายเหตุ
	Wait Until Contains Input Text    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_TXT_ASSETNAMETHAI_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_REMARK_VALUE}
	
    #Click Save button
    Click Element Page    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}
    
	Sleep    2s
    #alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}


Create Check Asset Management input all field data no Check Table EN
    #Click Create Check Asset Management
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}
	Sleep    0.5s
	
	#Create Check Asset Management Information
    Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEASSET_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEASSET_EN} 
    Mouse Down    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_ASSETNAMEEN_LOCATOR}
    Sleep    0.5s

	

	#ชื่ออุปกรณ์ภาษาไทย *
	Wait Until Contains Input Text    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_TXT_ASSETNAMETH_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMETH_VALUE}
	#ชื่ออุปกรณ์ภาษาอังกฤษ
	Wait Until Contains Input Text    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_TXT_ASSETNAMEEN_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMEEN_VALUE}
	#หมายเหตุ
	Wait Until Contains Input Text    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_TXT_ASSETNAMETHAI_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_REMARK_VALUE_EN}
	
    #Click Save button
    Click Element Page    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}
    
	Sleep    2s
    #alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}


Create Check Asset Management input Require field data no Check Table
    #Click Create Check Asset Management
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}
	Sleep    0.5s
	
	#Create Check Asset Management Information
    Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEASSET_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEASSET_TH} 
    Mouse Down    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_ASSETNAMETH_LOCATOR}
    Sleep    0.5s

	

	#ชื่ออุปกรณ์ภาษาไทย *
	Wait Until Contains Input Text    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_TXT_ASSETNAMETH_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMETH_VALUE}

	
    #Click Save button
    Click Element Page    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}
    
	Sleep    2s
    #alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}


Create Check Asset Management input Require field data no Check Table EN
    #Click Create Check Asset Management
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}
	Sleep    0.5s
	
	#Create Check Asset Management Information
    Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEASSET_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEASSET_EN} 
    Mouse Down    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_ASSETNAMETH_LOCATOR}
    Sleep    0.5s

	

	#ชื่ออุปกรณ์ภาษาไทย *
	Wait Until Contains Input Text    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_TXT_ASSETNAMETH_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMETH_VALUE}

	
    #Click Save button
    Click Element Page    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}
    
	Sleep    2s
    #alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}
	
   

Create Check Asset Management input all field data Check Table
    #Click Create Check Asset Management
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}
	Sleep    0.5s
	
	#Create Check Asset Management Information
    Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEASSET_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEASSET_TH} 
    Mouse Down    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_ASSETNAMETH_LOCATOR}
    Sleep    0.5s

	#ชื่ออุปกรณ์ภาษาไทย *
	Wait Until Contains Input Text    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_TXT_ASSETNAMETH_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMETH_VALUE}
	#ชื่ออุปกรณ์ภาษาอังกฤษ
	Wait Until Contains Input Text    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_TXT_ASSETNAMEEN_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMEEN_VALUE}
	#หมายเหตุ
	Wait Until Contains Input Text    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_TXT_ASSETNAMETHAI_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_REMARK_VALUE}
	
    #Click Save button
    Click Element Page    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}
    
	Sleep    2s
    #alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}
	
    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
	${setData}=    Set Data for check value table Check Asset Management

    ${data}=    Evaluate    {"no":"1", "assetname":"${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMETH_VALUE}", "remark":"${ASSETMANAGEMENTINFORMATION_ADDEDIT_REMARK_VALUE}", "status":"${ASSETMANAGEMENTINFORMATION_STATUS_TH_VALUE1}"}        
	#Add data to array set at valArrData
    Log To Console    Dataaaaaaaaaaaaaaaaa::::${data}
	@{valArrDataTable}=    Create List
	Append To List    ${valArrDataTable}    ${data} 
	${numRow}=    Convert To Integer    0
    Check Value Table    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
	Check Value Table Asset Management

	#================ Verify DB ================	
	Request Verify DB Check Data Create Asset Management    ${MYSQL_TYPE_CREATE_ALLFIELD}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMETH_VALUE}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMEEN_VALUE}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_REMARK_VALUE}    ${ASSETMANAGEMENTINFORMATION_STATUSID_VALUE1}    




Create Check Asset Management input all field data Check Table EN
    #Click Create Check Asset Management
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}
	Sleep    0.5s
	
	#Create Check Asset Management Information
    Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEASSET_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEASSET_EN} 
    Mouse Down    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_ASSETNAMETH_LOCATOR}
    Sleep    0.5s

	#ชื่ออุปกรณ์ภาษาไทย *
	Wait Until Contains Input Text    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_TXT_ASSETNAMETH_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMETH_VALUE}
	#ชื่ออุปกรณ์ภาษาอังกฤษ
	Wait Until Contains Input Text    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_TXT_ASSETNAMEEN_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMEEN_VALUE}
	#หมายเหตุ
	Wait Until Contains Input Text    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_TXT_ASSETNAMETHAI_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_REMARK_VALUE_EN}
	
    #Click Save button
    Click Element Page    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}
    
	Sleep    2s
    #alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}
	
    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
	${setData}=    Set Data for check value table Check Asset Management

    ${data}=    Evaluate    {"no":"1", "assetname":"${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMEEN_VALUE}", "remark":"${ASSETMANAGEMENTINFORMATION_ADDEDIT_REMARK_VALUE_EN}", "status":"${ASSETMANAGEMENTINFORMATION_STATUS_EN_VALUE1}"}        
	#Add data to array set at valArrData
    Log To Console    Dataaaaaaaaaaaaaaaaa::::${data}
	@{valArrDataTable}=    Create List
	Append To List    ${valArrDataTable}    ${data} 
	${numRow}=    Convert To Integer    0
    Check Value Table    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
	Check Value Table Asset Management En

	#================ Verify DB ================	
	Request Verify DB Check Data Create Asset Management    ${MYSQL_TYPE_CREATE_ALLFIELD}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMETH_VALUE}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMEEN_VALUE}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_REMARK_VALUE_EN}    ${ASSETMANAGEMENTINFORMATION_STATUSID_VALUE1}    
	




Create Check Asset Management input Require field data Check Table
    # Click Create Check Asset Management
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}
	Sleep    0.5s
	
	#Create Check Asset Management Information
    Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEASSET_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEASSET_TH} 
    Mouse Down    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_ASSETNAMETH_LOCATOR}
    Sleep    0.5s

	

	#ชื่ออุปกรณ์ภาษาไทย *
	Wait Until Contains Input Text    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_TXT_ASSETNAMETH_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMETH_VALUE}
	
	
    #Click Save button
    Click Element Page    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}
    
	Sleep    2s
    #alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}
	
    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
	# ${setData}=    Set Data for check value table Check Asset Management

	#ยังไม่เช็ค table
    # ${data}=    Evaluate    {"no":"1", "assetname":"${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMETH_VALUE}", "remark":'\u00a0', "status":"${ASSETMANAGEMENTINFORMATION_STATUS_TH_VALUE1}"}        
	# #Add data to array set at valArrData
    # Log To Console    Dataaaaaaaaaaaaaaaaa::::${data}
	# @{valArrDataTable}=    Create List
	# Append To List    ${valArrDataTable}    ${data} 
	# ${numRow}=    Convert To Integer    0
    # Check Value Table    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
	# Check Value Table Asset Management

	#================ Verify DB ================	
	Request Verify DB Check Data Create Asset Management    ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMETH_VALUE}    ${NONE}    ${NONE}    ${ASSETMANAGEMENTINFORMATION_STATUSID_VALUE1}    
	

Create Check Asset Management input Require field data Check Table EN
    # Click Create Check Asset Management
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}
	Sleep    0.5s
	
	#Create Check Asset Management Information
    Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEASSET_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEASSET_EN} 
    Mouse Down    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_ASSETNAMETH_LOCATOR}
    Sleep    0.5s

	

	#ชื่ออุปกรณ์ภาษาไทย *
	Wait Until Contains Input Text    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_TXT_ASSETNAMETH_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMETH_VALUE}
	
	
    #Click Save button
    Click Element Page    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}
    
	Sleep    2s
    #alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}
	
    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
	# ${setData}=    Set Data for check value table Check Asset Management

	#ยังไม่เช็ค table
    # ${data}=    Evaluate    {"no":"1", "assetname":"${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMETH_VALUE}", "remark":'\u00a0', "status":"${ASSETMANAGEMENTINFORMATION_STATUS_TH_VALUE1}"}        
	# #Add data to array set at valArrData
    # Log To Console    Dataaaaaaaaaaaaaaaaa::::${data}
	# @{valArrDataTable}=    Create List
	# Append To List    ${valArrDataTable}    ${data} 
	# ${numRow}=    Convert To Integer    0
    # Check Value Table    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
	# Check Value Table Asset Management

	#================ Verify DB ================	
	Request Verify DB Check Data Create Asset Management    ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMETH_VALUE}    ${NONE}    ${NONE}    ${ASSETMANAGEMENTINFORMATION_STATUSID_VALUE1}    
	


Edit Check Asset Management input all field data Check Table
    # Click Edit Check Asset Management
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_ICON_EDIT_LOCATOR}
	Sleep    0.5s
	
	#Edit Check Asset Management Information
    Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_EDITASSETDETAIL_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_EDITASSETDETAIL_TH} 
    Mouse Down    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_ASSETNAMETH_LOCATOR}
    Sleep    0.5s

	

	#ชื่ออุปกรณ์ภาษาไทย *
	Wait Until Contains Input Text    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_TXT_ASSETNAMETH_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMETH_VALUE2}
	#ชื่ออุปกรณ์ภาษาอังกฤษ
	Wait Until Contains Input Text    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_TXT_ASSETNAMEEN_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMEEN_VALUE2}
	#หมายเหตุ
	Wait Until Contains Input Text    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_TXT_ASSETNAMETHAI_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_REMARK_VALUE}

	Mouse Down    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}
    #Click Save button
    Click Element Page    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}
    
	Sleep    2s
    #alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}
	
    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
	${setData}=    Set Data for check value table Check Asset Management

    ${data}=    Evaluate    {"no":"1", "assetname":"${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMETH_VALUE2}", "remark":"${ASSETMANAGEMENTINFORMATION_ADDEDIT_REMARK_VALUE}", "status":"${ASSETMANAGEMENTINFORMATION_STATUS_TH_VALUE1}"}        
	#Add data to array set at valArrData
    Log To Console    Dataaaaaaaaaaaaaaaaa::::${data}
	@{valArrDataTable}=    Create List
	Append To List    ${valArrDataTable}    ${data} 
	${numRow}=    Convert To Integer    0
    Check Value Table    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
	Check Value Table Asset Management

	#================ Verify DB ================	
	Request Verify DB Check Data Edit Asset Management    ${MYSQL_TYPE_EDIT_ALLFIELD}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMETH_VALUE2}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMEEN_VALUE2}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_REMARK_VALUE}    ${ASSETMANAGEMENTINFORMATION_STATUSID_VALUE1}    
	

Edit Check Asset Management input all field data Check Table EN
    # Click Edit Check Asset Management
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_ICON_EDIT_LOCATOR}
	Sleep    0.5s
	
	#Edit Check Asset Management Information
    Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_EDITASSETDETAIL_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_EDITASSETDETAIL_EN} 
    Mouse Down    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_ASSETNAMETH_LOCATOR}
    Sleep    0.5s

	

	#ชื่ออุปกรณ์ภาษาไทย *
	Wait Until Contains Input Text    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_TXT_ASSETNAMETH_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMETH_VALUE2}
	#ชื่ออุปกรณ์ภาษาอังกฤษ
	Wait Until Contains Input Text    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_TXT_ASSETNAMEEN_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMEEN_VALUE2}
	#หมายเหตุ
	Wait Until Contains Input Text    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_TXT_ASSETNAMETHAI_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_REMARK_VALUE_EN}

	Mouse Down    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}
    #Click Save button
    Click Element Page    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}
    
	Sleep    2s
    #alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}
	
    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
	${setData}=    Set Data for check value table Check Asset Management

    ${data}=    Evaluate    {"no":"1", "assetname":"${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMEEN_VALUE2}", "remark":"${ASSETMANAGEMENTINFORMATION_ADDEDIT_REMARK_VALUE_EN}", "status":"${ASSETMANAGEMENTINFORMATION_STATUS_EN_VALUE1}"}        
	#Add data to array set at valArrData
    Log To Console    Dataaaaaaaaaaaaaaaaa::::${data}
	@{valArrDataTable}=    Create List
	Append To List    ${valArrDataTable}    ${data} 
	${numRow}=    Convert To Integer    0
    Check Value Table    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
	Check Value Table Asset Management En

	#================ Verify DB ================	
	Request Verify DB Check Data Edit Asset Management    ${MYSQL_TYPE_EDIT_ALLFIELD}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMETH_VALUE2}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMEEN_VALUE2}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_REMARK_VALUE_EN}    ${ASSETMANAGEMENTINFORMATION_STATUSID_VALUE1}    
	
