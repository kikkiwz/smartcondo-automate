*** Keywords ***
################################################################-- Check Value Table Role Management--################################################################
Set Data for check value table Role Management
    #Set field header table To Array
	${numCol}=    Convert To Integer    ${ROLEMANAGEMENTINFORMATION_SEARCH_NUMCOL}
	#Set field header table To Array
	@{fieldArrDataTable}=    Create List	
	Append To List    ${fieldArrDataTable}    @{ROLEMANAGEMENTINFORMATION_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE}
	# Append To List    ${fieldArrDataTable}    no    rolename
	#Set Num field To Array
	@{arrNumfield}=    Create List	
	Append To List    ${arrNumfield}    ${numCol-2}    ${numCol-1}
	#Set Num Col To Array
	@{arrNumCol}=    Create List	
	Append To List    ${arrNumCol}    ${numCol-1}    ${numCol}
	[Return]    ${numCol}    ${fieldArrDataTable}    ${arrNumfield}    ${arrNumCol}



Check Table Role Management
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchRoleManagement}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Role Management    ${MYSQL_TYPE_ROLEMANAGEMENT_SEARCH_ALL}    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_ROLEMANAGEMENT_FIELD_ROLENAME} ${ORDERBY_ASC}
	Log To Console    resultSearchRoleManagement::${resultSearchRoleManagement}    

	${dataSearchRoleManagement}=    Set Variable    ${resultSearchRoleManagement}[0]
	Log To Console    [dataSearchRoleManagement] : ${dataSearchRoleManagement}
	Set Global Variable     ${rowcountSearchRoleManagement}    ${resultSearchRoleManagement}[1]
	Log To Console    [rowcount SearchRoleManagement] : ${rowcountSearchRoleManagement}

	${checkNodata}=    Run Keyword If    '${rowcountSearchRoleManagement}'=='0'    Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchRoleManagement}'!='0'    Check Value Table Role Management    ${DEFAULT_TH}     ${rowcountSearchRoleManagement}    ${dataSearchRoleManagement}

	[Return]    ${rowcountSearchRoleManagement}



Check Table Role Management For RoleName
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchRoleManagement}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Role Management    ${MYSQL_TYPE_ROLEMANAGEMENT_SEARCH_ROLENAME}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_ROLEMANAGEMENT_FIELD_ROLENAME} ${ORDERBY_ASC}
	Log To Console    resultSearchRoleManagement::${resultSearchRoleManagement}    

	${dataSearchRoleManagement}=    Set Variable    ${resultSearchRoleManagement}[0]
	Log To Console    [dataSearchRoleManagement] : ${dataSearchRoleManagement}
	${rowcountSearchRoleManagement}=    Set Variable    ${resultSearchRoleManagement}[1]
	Log To Console    [rowcount SearchRoleManagement] : ${rowcountSearchRoleManagement}

	${checkNodata}=    Run Keyword If    '${rowcountSearchRoleManagement}'=='0'    Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchRoleManagement}'!='0'    Check Value Table Role Management    ${DEFAULT_TH}     ${rowcountSearchRoleManagement}    ${dataSearchRoleManagement}

	[Return]    ${rowcountSearchRoleManagement}


Check Table Role Management For RoleName EN
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchRoleManagement}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Role Management    ${MYSQL_TYPE_ROLEMANAGEMENT_SEARCH_ROLENAME}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_ROLEMANAGEMENT_FIELD_ROLENAME} ${ORDERBY_ASC}
	Log To Console    resultSearchRoleManagement::${resultSearchRoleManagement}    

	${dataSearchRoleManagement}=    Set Variable    ${resultSearchRoleManagement}[0]
	Log To Console    [dataSearchRoleManagement] : ${dataSearchRoleManagement}
	${rowcountSearchRoleManagement}=    Set Variable    ${resultSearchRoleManagement}[1]
	Log To Console    [rowcount SearchRoleManagement] : ${rowcountSearchRoleManagement}

	${checkNodata}=    Run Keyword If    '${rowcountSearchRoleManagement}'=='0'    Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchRoleManagement}'!='0'    Check Value Table Role Management    ${DEFAULT_EN}     ${rowcountSearchRoleManagement}    ${dataSearchRoleManagement}

	[Return]    ${rowcountSearchRoleManagement}



Create Role input all field data Check Table
    # Click Create Check Asset Management
	Click Element Page    ${ROLEMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}
	Sleep    0.5s
	
	#Create Check Asset Management Information
    Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEROLE_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEROLE_TH} 
    Sleep    0.5s

	#Role Name *
	Wait Until Contains Input Text    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_TXT_ROLENAME_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}

	#Click Checkbox
    Click Element Page    ${ROLEMANAGEMENTINFORMATION_CHECKBOX_LOCATOR}
	
    #Click Save button
    Click Element Page    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}
    
	Sleep    2s
    #alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}
	

	#Search Role Management
	Wait Until Contains Input Text    ${ROLEMANAGEMENTINFORMATION_SEARCH_TXT_ROLEMANAGEMENT_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}
	# Click Search
	Click Element Page  ${ROLEMANAGEMENTINFORMATION_BTN_SEARCH_LOCATOR}
	Sleep    0.5s


    # ================ Check Value Table ================
    # ${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
	${setData}=    Set Data for check value table Role Management

    ${data}=    Evaluate    {"no":"1", "rolename":"${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}"}        
	#Add data to array set at valArrData
    Log To Console    Dataaaaaaaaaaaaaaaaa::::${data}
	@{valArrDataTable}=    Create List
	Append To List    ${valArrDataTable}    ${data} 
	${numRow}=    Convert To Integer    0
    Check Value Table    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
	Check Table Role Management For RoleName

	#================ Verify DB ================	
	Request Verify DB Check Data Create Role Management    ${MYSQL_TYPE_CREATE_ALLFIELD}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}     


Create Role input all field data Check Table EN
    # Click Create Check Asset Management
	Click Element Page    ${ROLEMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}
	Sleep    0.5s
	
	#Create Check Asset Management Information
    Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEROLE_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEROLE_EN} 
    Sleep    0.5s

	#Role Name *
	Wait Until Contains Input Text    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_TXT_ROLENAME_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}

	#Click Checkbox
    Click Element Page    ${ROLEMANAGEMENTINFORMATION_CHECKBOX_LOCATOR}
	
    #Click Save button
    Click Element Page    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}
    
	Sleep    2s
    #alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}
	

	#Search Role Management
	Wait Until Contains Input Text    ${ROLEMANAGEMENTINFORMATION_SEARCH_TXT_ROLEMANAGEMENT_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}
	# Click Search
	Click Element Page  ${ROLEMANAGEMENTINFORMATION_BTN_SEARCH_LOCATOR}
	Sleep    0.5s


    # ================ Check Value Table ================
    # ${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
	${setData}=    Set Data for check value table Role Management

    ${data}=    Evaluate    {"no":"1", "rolename":"${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}"}        
	#Add data to array set at valArrData
    Log To Console    Dataaaaaaaaaaaaaaaaa::::${data}
	@{valArrDataTable}=    Create List
	Append To List    ${valArrDataTable}    ${data} 
	${numRow}=    Convert To Integer    0
    Check Value Table    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
	Check Table Role Management For RoleName EN

	#================ Verify DB ================	
	Request Verify DB Check Data Create Role Management    ${MYSQL_TYPE_CREATE_ALLFIELD}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}  


Create Role input all field data No Check Table
    # Click Create Check Asset Management
	Click Element Page    ${ROLEMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}
	Sleep    0.5s
	
	#Create Check Asset Management Information
    Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEROLE_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEROLE_TH} 
    Sleep    0.5s

	#Role Name *
	Wait Until Contains Input Text    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_TXT_ROLENAME_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}

	#Click Checkbox
    Click Element Page    ${ROLEMANAGEMENTINFORMATION_CHECKBOX_LOCATOR}
	
    #Click Save button
    Click Element Page    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}
    
	Sleep    2s
    #alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}


Create Role input all field data No Check Table EN
    # Click Create Check Asset Management
	Click Element Page    ${ROLEMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}
	Sleep    0.5s
	
	#Create Check Asset Management Information
    Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEROLE_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEROLE_EN} 
    Sleep    0.5s

	#Role Name *
	Wait Until Contains Input Text    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_TXT_ROLENAME_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}

	#Click Checkbox
    Click Element Page    ${ROLEMANAGEMENTINFORMATION_CHECKBOX_LOCATOR}
	
    #Click Save button
    Click Element Page    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}
    
	Sleep    2s
    #alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}






Edit Role input all field data Check Table
    # Click Create Check Asset Management
	Click Element Page    ${ROLEMANAGEMENTINFORMATION_ICON_EDIT_LOCATOR}
	Sleep    0.5s
	
	#Create Check Asset Management Information
    Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_EDITROLE_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_EDITROLE_TH} 
    Sleep    0.5s


	#Click Checkbox
    Click Element Page    ${ROLEMANAGEMENTINFORMATION_CHECKBOXEDIT_LOCATOR}
	
    #Click Save button
    Click Element Page    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}
    
	Sleep    2s
    #alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}
	

	#Search Role Management
	Wait Until Contains Input Text    ${ROLEMANAGEMENTINFORMATION_SEARCH_TXT_ROLEMANAGEMENT_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}
	# Click Search
	Click Element Page  ${ROLEMANAGEMENTINFORMATION_BTN_SEARCH_LOCATOR}
	Sleep    0.5s


    # ================ Check Value Table ================
    # ${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
	${setData}=    Set Data for check value table Role Management

    ${data}=    Evaluate    {"no":"1", "rolename":"${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}"}        
	#Add data to array set at valArrData
    Log To Console    Dataaaaaaaaaaaaaaaaa::::${data}
	@{valArrDataTable}=    Create List
	Append To List    ${valArrDataTable}    ${data} 
	${numRow}=    Convert To Integer    0
    Check Value Table    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
	Check Table Role Management For RoleName

	#================ Verify DB ================	
	Request Verify DB Check Data Edit Role Management    ${MYSQL_TYPE_EDIT_ALLFIELD}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1} 


Edit Role input all field data Check Table EN
    # Click Create Check Asset Management
	Click Element Page    ${ROLEMANAGEMENTINFORMATION_ICON_EDIT_LOCATOR}
	Sleep    0.5s
	
	#Create Check Asset Management Information
    Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_EDITROLE_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_EDITROLE_EN} 
    Sleep    0.5s


	#Click Checkbox
    Click Element Page    ${ROLEMANAGEMENTINFORMATION_CHECKBOXEDIT_LOCATOR}
	
    #Click Save button
    Click Element Page    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}
    
	Sleep    2s
    #alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}
	

	#Search Role Management
	Wait Until Contains Input Text    ${ROLEMANAGEMENTINFORMATION_SEARCH_TXT_ROLEMANAGEMENT_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}
	# Click Search
	Click Element Page  ${ROLEMANAGEMENTINFORMATION_BTN_SEARCH_LOCATOR}
	Sleep    0.5s


    # ================ Check Value Table ================
    # ${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
	${setData}=    Set Data for check value table Role Management

    ${data}=    Evaluate    {"no":"1", "rolename":"${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}"}        
	#Add data to array set at valArrData
    Log To Console    Dataaaaaaaaaaaaaaaaa::::${data}
	@{valArrDataTable}=    Create List
	Append To List    ${valArrDataTable}    ${data} 
	${numRow}=    Convert To Integer    0
    Check Value Table    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
	Check Table Role Management For RoleName EN

	#================ Verify DB ================	
	Request Verify DB Check Data Edit Role Management    ${MYSQL_TYPE_EDIT_ALLFIELD}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1} 


Check MenuName
	#Check Value table
	@{resultMenu}=    Start Connect To MySql Query All List    ${DB_SELECTSTATEMENT_MENU_NOSELECTSCUSER}    ${DB_SELECTSTATEMENT_MENU_NOSELECTSCUSER}
    # Log To Console    [menu] Request DB Data Menu : ${resultMenu}
    ${dataResultMenu}=    Set Variable    ${resultMenu}[0]
    Log To Console    [result : menu] : ${dataResultMenu}


    ${rowCountMenu}=    Set Variable    ${resultMenu}[1]
    Log To Console    [rowCount : menu] : ${rowCountMenu}

	FOR    ${i}    IN RANGE    ${rowCountMenu}

		${ValueNameMenu}=    Set Variable    ${dataResultMenu}[${i}] 
		# Log To Console    ValueNameMenu:::${ValueNameMenu}    
		${GetValueNameMenu}=    Set Variable    ${ValueNameMenu}[1]
		# Log To Console    GetValueNameMenu:::${GetValueNameMenu}


		${index}=    Convert To String    ${i+1}
		${ReplaceTr}=    Replace String    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_NAMEMENU_LOCATOR}    [index]    ${index}
		# Log To Console    ReplaceTr:${ReplaceTr}   
		${gettext}=    Get Text String  ${ReplaceTr}
		Log To Console    gettext : : :${gettext}
        Wait Until Contains Element Text Should Be    ${ReplaceTr}    ${GetValueNameMenu}

    END

#Check Correct CheckBox
	# #เสิช data ที่ create
	# ${convertStrAccountId}=    Convert To String    ${accountId}
	# ${selectStatementRoleManagement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKCREATE_ROLEMANAGEMENT}    [accountId]    ${convertStrAccountId}
	# ${selectStatementRoleManagement}=    Replace String    ${selectStatementRoleManagement}    [role_name]    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}
	# Log To Console    [check_role : resultQuery] : ${selectStatementRoleManagement}
	# #[(), 0]
    # # queryResults,rowCount
    # @{resultRoleManagement}=    Start Connect To MySql Query All List    ${selectStatementRoleManagement}    ${selectStatementRoleManagement}
	# Log To Console    [check_role] Request Verify DB Check Data Create Role Management : ${resultRoleManagement}
	# ${dataResultRoleManagement}=    Set Variable    ${resultRoleManagement}[0]
	# Log To Console    [result : check_role] : ${dataResultRoleManagement}
	# ${rowCountRoleManagement}=    Set Variable    ${resultRoleManagement}[1]
	# Log To Console    [rowCount : check_role] : ${rowCountRoleManagement}
	# ${id}=    Set Variable    ${dataResultRoleManagement}[0][0]   
	# Log To Console    id : : : ${id}
	# ${convertStrRoleId}=    Convert To String    ${id}



	# #Search Data Table Role_menu
	# ${selectStatementRoleMenu}=    Replace String    ${DB_SELECTSTATEMENT_CHECKEDIT_ROLEMANAGEMENT}    [accountId]    ${convertStrAccountId}
	# ${selectStatementRoleMenu}=    Replace String    ${selectStatementRoleMenu}    [role_id]    ${convertStrRoleId}
	# Log To Console    [RoleMenu : resultQuery] : ${selectStatementRoleMenu}
	# # [(), 0]
    # # queryResults,row/Count
    # @{resultRoleMenu}=    Start Connect To MySql Query All List    ${selectStatementRoleMenu}    ${selectStatementRoleMenu}
	# Log To Console    [RoleMenu] Request Verify DB Search Data Table Role_menu : ${resultRoleMenu}
	# ${dataResultRoleMenu}=    Set Variable    ${resultRoleMenu}[0]
	# Log To Console    [result : RoleMenu] : ${dataResultRoleMenu}
	# ${rowCountRoleMenu}=    Set Variable    ${resultRoleMenu}[1]
	# Log To Console    [rowCount : RoleMenu] : ${rowCountRoleMenu}



	# #Search All Menu 
	# @{resultAllMenu}=    Start Connect To MySql Query All List    ${DB_SELECTSTATEMENT_MENU_NOSELECTSCUSER}    ${DB_SELECTSTATEMENT_MENU_NOSELECTSCUSER}
    # # Log To Console    [menu] Request DB Data Menu : ${resultMenu}
    # ${dataResultAllMenu}=    Set Variable    ${resultAllMenu}[0]
    # # Log To Console    [result : menu] : ${dataResultAllMenu}
    # ${rowCountAllMenu}=    Set Variable    ${resultAllMenu}[1]
    # # Log To Console    [rowCount : menu] : ${rowCountAllMenu}
	# ${ValueNameAllMenu}=    Set Variable    ${dataResultAllMenu}[0] 
	# # Log To Console    ValueNameMenu:::${ValueNameMenu}    
	# ${GetValueNameAllMenu}=    Set Variable    ${ValueNameAllMenu}[1]
	# # Log To Console    GetValueNameMenu:::${GetValueNameAllMenu}


	# FOR    ${i}    IN RANGE    ${rowCountAllMenu}    
	# CheckAction    ${i}    ${rowCountRoleMenu}    ${dataResultRoleMenu}    ${dataResultAllMenu}           
    # END



CheckAction
	[Arguments]    ${i}    ${rowCountRoleMenu}    ${dataResultRoleMenu}    ${dataResultAllMenu}

	${getLengtAllMenu}=    Get Length    ${dataResultAllMenu}    
	FOR    ${j}    IN RANGE     ${getLengtAllMenu}
	${TextAction}=    Set Variable    ${dataResultRoleMenu}[${j}][1]
	# Log To Console    TextAction: ${TextAction}   
	Run Keyword if    '${dataResultAllMenu}[${j}][1]' == '${dataResultRoleMenu}[${j}][0]'    FNCheckbox    ${j+1}    ${TextAction}
    
	END




FNCheckbox
	[Arguments]    ${j}    ${TextAction}
 
	${j}=    Convert To String    ${j}  
	${GetValueAction}=       String.Split String    ${TextAction}    ,

	${countView}=    Count Values In List    ${GetValueAction}   view 
	${countCreate}=    Count Values In List    ${GetValueAction}   create 
	${countEdit}=    Count Values In List    ${GetValueAction}   edit 
	${countDelete}=    Count Values In List    ${GetValueAction}   delete 


	${replaceindexView}=    Replace String    ${ROLEMANAGEMENTINFORMATION_CHECKEDVIEW_LOCATOR}    [index]    ${j}
	${replaceindexCreate}=    Replace String    ${ROLEMANAGEMENTINFORMATION_CHECKEDCREATE_LOCATOR}    [index]    ${j}
	${replaceindexEdit}=    Replace String    ${ROLEMANAGEMENTINFORMATION_CHECKEDEDIT_LOCATOR}    [index]    ${j}
	${replaceindexDelete}=    Replace String    ${ROLEMANAGEMENTINFORMATION_CHECKEDDELETE_LOCATOR}    [index]    ${j}


	Run Keyword if    '${countView}' == '1'    Wait Should Contain Get Element Attribute    ${replaceindexView}    ${ATTRIBUTE_ARIACHECKED}    ${TRUE_LOWWER}
	...    ELSE IF    '${countView}' == '0'    Wait Should Contain Get Element Attribute    ${replaceindexView}    ${ATTRIBUTE_ARIACHECKED}    ${FALSE_LOWWER}

	Run Keyword if    '${countCreate}' == '1'    Wait Should Contain Get Element Attribute    ${replaceindexCreate}    ${ATTRIBUTE_ARIACHECKED}    ${TRUE_LOWWER}
	...    ELSE IF    '${countCreate}' == '0'    Wait Should Contain Get Element Attribute    ${replaceindexCreate}    ${ATTRIBUTE_ARIACHECKED}    ${FALSE_LOWWER}

	Run Keyword if    '${countEdit}' == '1'    Wait Should Contain Get Element Attribute    ${replaceindexEdit}    ${ATTRIBUTE_ARIACHECKED}    ${TRUE_LOWWER}
	...    ELSE IF    '${countEdit}' == '0'    Wait Should Contain Get Element Attribute    ${replaceindexEdit}    ${ATTRIBUTE_ARIACHECKED}    ${FALSE_LOWWER}

	Run Keyword if    '${countDelete}' == '1'    Wait Should Contain Get Element Attribute    ${replaceindexDelete}    ${ATTRIBUTE_ARIACHECKED}    ${TRUE_LOWWER}
	...    ELSE IF    '${countDelete}' == '0'    Wait Should Contain Get Element Attribute    ${replaceindexDelete}    ${ATTRIBUTE_ARIACHECKED}    ${FALSE_LOWWER}    










