*** Keywords ***
################################################################-- Check Value Table Employee management--################################################################
Set Data for Check Value Table EmployeeManagement

    #Set field header table To Array
	${numCol}=    Convert To Integer    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_NUMCOL}
	#Set field header table To Array
	@{fieldArrDataTable}=    Create List	
	Append To List    ${fieldArrDataTable}    @{EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE}
	# Append To List    ${fieldArrDataTable}    no    employeetype    namesurname    phonenumber
	#Set Num field To Array
	@{arrNumfield}=    Create List	
	Append To List    ${arrNumfield}    ${numCol-4}    ${numCol-3}    ${numCol-2}    ${numCol-1}
	#Set Num Col To Array
	@{arrNumCol}=    Create List	
	Append To List    ${arrNumCol}    ${numCol-3}    ${numCol-2}    ${numCol-1}    ${numCol}
	[Return]    ${numCol}    ${fieldArrDataTable}    ${arrNumfield}    ${arrNumCol}

	
Check Value Table EmployeeManagement
	#====== Verify DB ==========
    #Inquiry for verify DB  
	#  [((9, 10, 1, None, '1111111111', 'เทสบัญชี', datetime.datetime(2021, 9, 21, 17, 8, 41), '10', None, None, None, None, 7, 1, 1, None),), 1] 
    ${resultSearch}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Employee Management    ${MYSQL_TYPE_SEARCHLISTALL}    ${LIMIT_20}    ${OFFSET_0}

	Log To Console    resultSearch:::${resultSearch}  
	
	${dataSearch}=    Set Variable    ${resultSearch}[0][0]
	Log To Console    [dataSearch] : ${dataSearch}
	Set Global Variable    ${rowcountSearchEmployeeManagement}    ${resultSearch}[1]
	Log To Console    [rowcount SearchEmployeeManagement] : ${rowcountSearchEmployeeManagement}

	${checkNodata}=    Run Keyword If    '${rowcountSearchEmployeeManagement}'=='0'    Wait Until Contains Element Text Should Be    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
    ...    ELSE IF    '${rowcountSearchEmployeeManagement}'!='0'    Check Value Table Search Employee Management     ${rowcountSearchEmployeeManagement}    ${dataSearch}

	[Return]    ${rowcountSearchEmployeeManagement}





################################################################-- Create Employee management--################################################################
Create Employee management input all field data 

    #Click Icon Create
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}
    Sleep    3s

	#Select Dropdown : Employee Type  
	Select Dropdown    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_DDL_EMPLOYEETYPE_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_EMPLOYEETYPE_LIST_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_EMPLOYEETYPE_CLASS_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_CLEANINGSTAFF_TH}
	Sleep    0.5s

	# Select Dropdown : Title  
	Select Dropdown    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_DDL_TITLE_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_TITLE_LIST_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_TITLE_CLASS_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_MR_TH}
	Sleep    0.5s

	# Input Firstname
	Wait Until Contains Input Text    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_FIRSTNAME_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_FIRSTNAME_VALUE}

	# Input Lastname
	Wait Until Contains Input Text    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_LASTNAME_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LASTNAME_VALUE}

	# Input Phone Number
	Wait Until Contains Input Text    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_PHONENUMBER_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_PHONENUMBER_VALUE}

	#Click Save
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}
################################################################################################################################

    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
	${setData}=    Set Data for Check Value Table EmployeeManagement

	Log To Console    TESTTTTTTTTTTTTTTTTTTTTTTTTTTTTT:${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_MR_TH}   

    ${data}=    Evaluate    {"no":"1", "employeetype":"${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_CLEANINGSTAFF_TH}", "namesurname":"${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_MR_TH}${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_FIRSTNAME_VALUE} ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LASTNAME_VALUE}", "phonenumber":"${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_PHONENUMBER_VALUE}"}        
	#Add data to array set at valArrData
    Log To Console    Dataaaaaaaaaaaaaaaaa::::${data}
	@{valArrDataTable}=    Create List
	Append To List    ${valArrDataTable}    ${data} 
	${numRow}=    Convert To Integer    0
    Check Value Table    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
	Check Value Table EmployeeManagement

	#================ Verify DB ================	
	# Request Verify DB Check Data Create EmployeeManagement    ${MYSQL_TYPE_CREATE_ALLFIELD}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_EMPLOYEETYPE_VALUE1}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_PREFIX_VALUE1}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_FIRSTNAME_VALUE}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LASTNAME_VALUE}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_PHONENUMBER_VALUE}
	





Create Employee management input require field data 
    #Click Icon Create
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}
    Sleep    3s

	#Select Dropdown : Employee Type  
	Select Dropdown    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_DDL_EMPLOYEETYPE_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_EMPLOYEETYPE_LIST_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_EMPLOYEETYPE_CLASS_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_CLEANINGSTAFF_TH}
	Sleep    0.5s

	# Select Dropdown : Title  
	# Select Dropdown    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_DDL_TITLE_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_TITLE_LIST_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_TITLE_CLASS_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_MR_TH}
	# Sleep    0.5s

	# Input Firstname
	Wait Until Contains Input Text    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_FIRSTNAME_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_FIRSTNAME_VALUE}

	# Input Lastname
	Wait Until Contains Input Text    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_LASTNAME_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LASTNAME_VALUE}

	# Input Phone Number
	Wait Until Contains Input Text    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_PHONENUMBER_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_PHONENUMBER_VALUE}

	#Click Save
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}
################################################################################################################################

    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
	${setData}=    Set Data for Check Value Table EmployeeManagement

    ${data}=    Evaluate    {"no":"1", "employeetype":"${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_CLEANINGSTAFF_TH}", "namesurname":"${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_FIRSTNAME_VALUE} ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LASTNAME_VALUE}", "phonenumber":"${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_PHONENUMBER_VALUE}"}        
	#Add data to array set at valArrData
    Log To Console    Dataaaaaaaaaaaaaaaaa::::${data}
	@{valArrDataTable}=    Create List
	Append To List    ${valArrDataTable}    ${data} 
	${numRow}=    Convert To Integer    0
    Check Value Table    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
	Check Value Table EmployeeManagement

	#================ Verify DB ================	
	Request Verify DB Check Data Create EmployeeManagement    ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_EMPLOYEETYPE_VALUE1}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_PREFIX_VALUE1}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_FIRSTNAME_VALUE}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LASTNAME_VALUE}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_PHONENUMBER_VALUE}
	

Create Employee management input require field data No Check Table 
    #Click Icon Create
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}
    Sleep    3s

	#Select Dropdown : Employee Type  
	Select Dropdown    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_DDL_EMPLOYEETYPE_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_EMPLOYEETYPE_LIST_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_EMPLOYEETYPE_CLASS_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_CLEANINGSTAFF_TH}
	Sleep    0.5s

	# Select Dropdown : Title  
	# Select Dropdown    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_DDL_TITLE_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_TITLE_LIST_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_TITLE_CLASS_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_MR_TH}
	# Sleep    0.5s

	# Input Firstname
	Wait Until Contains Input Text    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_FIRSTNAME_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_FIRSTNAME_VALUE}

	# Input Lastname
	Wait Until Contains Input Text    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_LASTNAME_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LASTNAME_VALUE}

	# Input Phone Number
	Wait Until Contains Input Text    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_PHONENUMBER_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_PHONENUMBER_VALUE}

	#Click Save
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}
################################################################################################################################

    # #================ Check Value Table ================
    # #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
	# ${setData}=    Set Data for Check Value Table EmployeeManagement

    # ${data}=    Evaluate    {"no":"1", "employeetype":"${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_CLEANINGSTAFF_TH}", "namesurname":"${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_FIRSTNAME_VALUE} ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LASTNAME_VALUE}", "phonenumber":"${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_PHONENUMBER_VALUE}"}        
	# #Add data to array set at valArrData
    # Log To Console    Dataaaaaaaaaaaaaaaaa::::${data}
	# @{valArrDataTable}=    Create List
	# Append To List    ${valArrDataTable}    ${data} 
	# ${numRow}=    Convert To Integer    0
    # Check Value Table    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
	# Check Value Table EmployeeManagement

	# #================ Verify DB ================	
	# Request Verify DB Check Data Create EmployeeManagement    ${MYSQL_TYPE_CREATE_REQUIREDFIELD}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_EMPLOYEETYPE_VALUE1}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_PREFIX_VALUE1}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_FIRSTNAME_VALUE}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LASTNAME_VALUE}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_PHONENUMBER_VALUE}
	






################################################################-- Edit Employee management--################################################################

Edit Employee management input all field data 

    #Click Icon Create
	# Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}
    # Sleep    3s

	#Select Dropdown : Employee Type  
	Select Dropdown    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_DDL_EMPLOYEETYPE_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_EMPLOYEETYPE_LIST_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_EMPLOYEETYPE_CLASS_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_REPAIRSTAFF_TH}
	Sleep    0.5s

	# Select Dropdown : Title  
	Select Dropdown    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_DDL_TITLE_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_TITLE_LIST_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_TITLE_CLASS_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_MR_TH}
	Sleep    0.5s

	# Input Firstname
	Clear Element Text    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_FIRSTNAME_LOCATOR}
	Wait Until Contains Input Text    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_FIRSTNAME_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_FIRSTNAME_VALUE2}
	Sleep    0.5s

	# Input Lastname
	Clear Element Text    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_LASTNAME_LOCATOR}
	Wait Until Contains Input Text    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_LASTNAME_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LASTNAME_VALUE2}
	Sleep    0.5s

	# Input Phone Number
	
	Clear Element Text    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_PHONENUMBER_LOCATOR}
	Wait Until Contains Input Text    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_PHONENUMBER_LOCATOR}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_PHONENUMBER_VALUE2}
	Sleep    1s


	Mouse Down    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_PHONENUMBER_LOCATOR}
	#Click Save
	Click Element Page    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}

################################################################################################################################

    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
	${setData}=    Set Data for Check Value Table EmployeeManagement

    ${data}=    Evaluate    {"no":"1", "employeetype":"${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_REPAIRSTAFF_TH}", "namesurname":"${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_MR_TH}${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_FIRSTNAME_VALUE2} ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LASTNAME_VALUE2}", "phonenumber":"${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_PHONENUMBER_VALUE2}"}        
	#Add data to array set at valArrData
    Log To Console    Dataaaaaaaaaaaaaaaaa::::${data}
	@{valArrDataTable}=    Create List
	Append To List    ${valArrDataTable}    ${data} 
	${numRow}=    Convert To Integer    0
    Check Value Table    ${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_DATA_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    
	Check Value Table EmployeeManagement

	#================ Verify DB ================	
	Request Verify DB Check Data Edit EmployeeManagement    ${MYSQL_TYPE_EDIT_ALLFIELD}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_EMPLOYEETYPE_VALUE2}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_PREFIX_VALUE1}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_FIRSTNAME_VALUE2}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LASTNAME_VALUE2}    ${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_PHONENUMBER_VALUE2}
	


################################################################-- Generic Test Case Teardown Employee management--################################################################
Generic Test Case Teardown EmployeeManagement	
    [Arguments]    ${value_delete}
	
	#Click delete button
    Click Delete Data TH    ${BANKACCOUNTINFORMATION_BTN_DELETE_LOCATOR}    ${value_delete}

	################### Close Browser ###################
	Close Browser 	

Generic Test Case Teardown EmployeeManagement2	
    [Arguments]    ${value_delete1}    ${value_delete2}
	
	#Click delete button
    Click Delete Data TH    ${BANKACCOUNTINFORMATION_BTN_DELETE_LOCATOR}    ${value_delete1}
	#Click delete button
    Click Delete Data TH    ${BANKACCOUNTINFORMATION_BTN_DELETE_LOCATOR}    ${value_delete2}

	################### Close Browser ###################
	Close Browser 	
################################################################################################################################