*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Search] CheckAssetManagement ###################
M22_1_1_1_000_CheckAssetManagement_Success_Search_VerifyAction [Verify Action "Check Asset Management"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click User Account

    [Setup]    Open Browser To Login Page Super Admin EN
   	
    #========== Click Setting Menu CheckAssetManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_CHECKASSETMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_CHECKASSETMANAGEMENT_EN}    ${MENU_LBL_SETTING_CHECKASSETMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_CHECKASSETMANAGEMENT_EN}   ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_ASSETMANAGEMENTINFORMATION_HEADER_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_ASSETMANAGEMENTINFORMATION_HEADER_EN}    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_ASSETMANAGEMENTINFORMATION_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_ASSETMANAGEMENTINFORMATION_EN}
	

	#========== Create Check Asset Management ======
	Log To Console    ${\n}=========== [Create] Check Asset Management ===============
	#Create data
    Create Check Asset Management input all field data Check Table EN

Verify API Onload and mapping data after click Asset Management

    #================ Check Value Table ================
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchAssetManagement}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check Asset Management    ${MYSQL_TYPE_CHECKASSETMANAGEMENT_SEARCH_ALL}    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_CHECKASSETMANAGEMENT_FIELD_STATUS} ${ORDERBY_DESC}
	Log To Console    resultSearchAssetManagement::${resultSearchAssetManagement}    

	${dataSearchAssetManagement}=    Set Variable    ${resultSearchAssetManagement}[0]
	Log To Console    [dataSearchAssetManagement] : ${dataSearchAssetManagement}
	${rowcountSearchAssetManagement}=    Set Variable    ${resultSearchAssetManagement}[1]
	Log To Console    [rowcount SearchAssetManagement] : ${rowcountSearchAssetManagement}

	${checkNodata}=    Run Keyword If    '${rowcountSearchAssetManagement}'=='0'    Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchAssetManagement}'!='0'    Check Value Table Check Asset Management    ${DEFAULT_EN}     ${rowcountSearchAssetManagement}    ${dataSearchAssetManagement}

	Sleep    1s


    
Verify Action : click search button (Search status dropdown)

	#Status
	Select Dropdown    ${ASSETMANAGEMENTINFORMATION_SEARCH_DDL_STATUS_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_DDL_PROPERTYMANAGER_LIST_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_STATUS_EN_VALUE1}
	Sleep    0.5s
	#Click Search
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_BTN_SEARCH_LOCATOR}
	
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchAssetManagement}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check Asset Management    ${MYSQL_TYPE_CHECKASSETMANAGEMENT_SEARCH_STATUS}    ${ASSETMANAGEMENTINFORMATION_STATUSID_VALUE1}    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_CHECKASSETMANAGEMENT_FIELD_STATUS} ${ORDERBY_DESC}
	Log To Console    resultSearchAssetManagement::${resultSearchAssetManagement}    

	${dataSearchAssetManagement}=    Set Variable    ${resultSearchAssetManagement}[0]
	Log To Console    [dataSearchAssetManagement] : ${dataSearchAssetManagement}
	${rowcountSearchAssetManagement}=    Set Variable    ${resultSearchAssetManagement}[1]
	Log To Console    [rowcount SearchAssetManagement] : ${rowcountSearchAssetManagement}

	${checkNodata}=    Run Keyword If    '${rowcountSearchAssetManagement}'=='0'    Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchAssetManagement}'!='0'    Check Value Table Check Asset Management    ${DEFAULT_EN}     ${rowcountSearchAssetManagement}    ${dataSearchAssetManagement}

    #Click Clear
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_BTN_CLEAR_LOCATOR}



Verify Action : click search button (Search status dropdown and Asset name textbox)

	#Status
	Select Dropdown    ${ASSETMANAGEMENTINFORMATION_SEARCH_DDL_STATUS_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_DDL_PROPERTYMANAGER_LIST_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_STATUS_EN_VALUE1}
	Sleep    0.5s
	#Bank Account Number / PromptPay Number
	Wait Until Contains Input Text    ${ASSETMANAGEMENTINFORMATION_SEARCH_TXT_ASSETNAME_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMEEN_VALUE}
	Sleep    0.5s
	#Click Search
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_BTN_SEARCH_LOCATOR}
	Sleep    2s
	
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchAssetManagement}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check Asset Management    ${MYSQL_TYPE_CHECKASSETMANAGEMENT_SEARCH_ASSETNAMESTATUS_EN}    ${ASSETMANAGEMENTINFORMATION_STATUSID_VALUE1}     ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMEEN_VALUE}    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_CHECKASSETMANAGEMENT_FIELD_STATUS} ${ORDERBY_DESC}
	Log To Console    resultSearchAssetManagement::${resultSearchAssetManagement}    

	${dataSearchAssetManagement}=    Set Variable    ${resultSearchAssetManagement}[0]
	Log To Console    [dataSearchAssetManagement] : ${dataSearchAssetManagement}
	${rowcountSearchAssetManagement}=    Set Variable    ${resultSearchAssetManagement}[1]
	Log To Console    [rowcount SearchAssetManagement] : ${rowcountSearchAssetManagement}

	${checkNodata}=    Run Keyword If    '${rowcountSearchAssetManagement}'=='0'    Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchAssetManagement}'!='0'    Check Value Table Check Asset Management    ${DEFAULT_EN}     ${rowcountSearchAssetManagement}    ${dataSearchAssetManagement}

    #Click Clear
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_BTN_CLEAR_LOCATOR}




Verify Action : click clear button
	#Status
	Select Dropdown    ${ASSETMANAGEMENTINFORMATION_SEARCH_DDL_STATUS_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_DDL_PROPERTYMANAGER_LIST_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_STATUS_EN_VALUE1}
	Sleep    0.5s
	#Click Search
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_BTN_SEARCH_LOCATOR}
	
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchAssetManagement}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check Asset Management    ${MYSQL_TYPE_CHECKASSETMANAGEMENT_SEARCH_STATUS}    ${ASSETMANAGEMENTINFORMATION_STATUSID_VALUE1}    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_CHECKASSETMANAGEMENT_FIELD_STATUS} ${ORDERBY_DESC}
	Log To Console    resultSearchAssetManagement::${resultSearchAssetManagement}    

	${dataSearchAssetManagement}=    Set Variable    ${resultSearchAssetManagement}[0]
	Log To Console    [dataSearchAssetManagement] : ${dataSearchAssetManagement}
	${rowcountSearchAssetManagement}=    Set Variable    ${resultSearchAssetManagement}[1]
	Log To Console    [rowcount SearchAssetManagement] : ${rowcountSearchAssetManagement}

	${checkNodata}=    Run Keyword If    '${rowcountSearchAssetManagement}'=='0'    Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchAssetManagement}'!='0'    Check Value Table Check Asset Management    ${DEFAULT_EN}     ${rowcountSearchAssetManagement}    ${dataSearchAssetManagement}

    #Click Clear
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_BTN_CLEAR_LOCATOR}





Verify Action : click create button
	#Click Create Bank account
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}
	Sleep    0.5s
	
	#Create Bank Account Information
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEASSET_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEASSET_EN} 
    
	#Click Cancel button
    Click Element Page    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_BTN_CANCEL_LOCATOR}
	


Verify Action : click edit button
	#Click Edit Bank account
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_ICON_EDIT_LOCATOR}
	Sleep    0.5s
	
	#Edit Bank Account Information
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_EDITASSETDETAIL_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_EDITASSETDETAIL_EN} 
	
	#Click Cancel button
    Click Element Page    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_BTN_CANCEL_LOCATOR}





Verify Action : click 50 button

    #Click 50 button
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_BTN_50_LOCATOR}

    #================ Check Value Table ================
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchAssetManagement}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check Asset Management    ${MYSQL_TYPE_CHECKASSETMANAGEMENT_SEARCH_ALL}    null    null    ${LIMIT_50}    ${OFFSET_0}    ${DB_TB_CHECKASSETMANAGEMENT_FIELD_STATUS} ${ORDERBY_DESC}
	Log To Console    resultSearchAssetManagement::${resultSearchAssetManagement}    

	${dataSearchAssetManagement}=    Set Variable    ${resultSearchAssetManagement}[0]
	Log To Console    [dataSearchAssetManagement] : ${dataSearchAssetManagement}
	${rowcountSearchAssetManagement}=    Set Variable    ${resultSearchAssetManagement}[1]
	Log To Console    [rowcount SearchAssetManagement] : ${rowcountSearchAssetManagement}

	${checkNodata}=    Run Keyword If    '${rowcountSearchAssetManagement}'=='0'    Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchAssetManagement}'!='0'    Check Value Table Check Asset Management    ${DEFAULT_EN}     ${rowcountSearchAssetManagement}    ${dataSearchAssetManagement}

	Sleep    1s
   
Verify Action : click 100 button

    #Click 50 button
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_BTN_100_LOCATOR}

    #================ Check Value Table ================
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchAssetManagement}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check Asset Management    ${MYSQL_TYPE_CHECKASSETMANAGEMENT_SEARCH_ALL}    null    null    ${LIMIT_100}    ${OFFSET_0}    ${DB_TB_CHECKASSETMANAGEMENT_FIELD_STATUS} ${ORDERBY_DESC}
	Log To Console    resultSearchAssetManagement::${resultSearchAssetManagement}    

	${dataSearchAssetManagement}=    Set Variable    ${resultSearchAssetManagement}[0]
	Log To Console    [dataSearchAssetManagement] : ${dataSearchAssetManagement}
	${rowcountSearchAssetManagement}=    Set Variable    ${resultSearchAssetManagement}[1]
	Log To Console    [rowcount SearchAssetManagement] : ${rowcountSearchAssetManagement}

	${checkNodata}=    Run Keyword If    '${rowcountSearchAssetManagement}'=='0'    Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchAssetManagement}'!='0'    Check Value Table Check Asset Management    ${DEFAULT_EN}     ${rowcountSearchAssetManagement}    ${dataSearchAssetManagement}

	Sleep    1s


Verify Action : click 1000 button
    #Click 1000 button
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_BTN_100_LOCATOR}

    #================ Check Value Table ================
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchAssetManagement}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check Asset Management    ${MYSQL_TYPE_CHECKASSETMANAGEMENT_SEARCH_ALL}    null    null    ${LIMIT_1000}    ${OFFSET_0}    ${DB_TB_CHECKASSETMANAGEMENT_FIELD_STATUS} ${ORDERBY_DESC}
	Log To Console    resultSearchAssetManagement::${resultSearchAssetManagement}    

	${dataSearchAssetManagement}=    Set Variable    ${resultSearchAssetManagement}[0]
	Log To Console    [dataSearchAssetManagement] : ${dataSearchAssetManagement}
	${rowcountSearchAssetManagement}=    Set Variable    ${resultSearchAssetManagement}[1]
	Log To Console    [rowcount SearchAssetManagement] : ${rowcountSearchAssetManagement}

	${checkNodata}=    Run Keyword If    '${rowcountSearchAssetManagement}'=='0'    Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchAssetManagement}'!='0'    Check Value Table Check Asset Management    ${DEFAULT_EN}     ${rowcountSearchAssetManagement}    ${dataSearchAssetManagement}

	Sleep    1s

Verify Action : click confirm Disable button
	#Click Disable
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_ICON_DISABLE_LOCATOR}

	#Click confirm
	Click Element Page    ${ALERT_BTN_CONFIRM_LOCATOR}
	Sleep    3s

    #================ Check Value Table ================
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchAssetManagement}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check Asset Management    ${MYSQL_TYPE_CHECKASSETMANAGEMENT_SEARCH_ALL}    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_CHECKASSETMANAGEMENT_FIELD_STATUS} ${ORDERBY_DESC}
	Log To Console    resultSearchAssetManagement::${resultSearchAssetManagement}    

	${dataSearchAssetManagement}=    Set Variable    ${resultSearchAssetManagement}[0]
	Log To Console    [dataSearchAssetManagement] : ${dataSearchAssetManagement}
	${rowcountSearchAssetManagement}=    Set Variable    ${resultSearchAssetManagement}[1]
	Log To Console    [rowcount SearchAssetManagement] : ${rowcountSearchAssetManagement}

	${checkNodata}=    Run Keyword If    '${rowcountSearchAssetManagement}'=='0'    Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchAssetManagement}'!='0'    Check Value Table Check Asset Management    ${DEFAULT_EN}     ${rowcountSearchAssetManagement}    ${dataSearchAssetManagement}

	Sleep    2s


Verify Action : click confirm Enable button
	#Click Enable
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_ICON_ENABLE_LOCATOR}

	#Click confirm
	Click Element Page    ${ALERT_BTN_CONFIRM_LOCATOR}
	Sleep    3s

    #================ Check Value Table ================
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchAssetManagement}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check Asset Management    ${MYSQL_TYPE_CHECKASSETMANAGEMENT_SEARCH_ALL}    null    null    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_CHECKASSETMANAGEMENT_FIELD_STATUS} ${ORDERBY_DESC}
	Log To Console    resultSearchAssetManagement::${resultSearchAssetManagement}    

	${dataSearchAssetManagement}=    Set Variable    ${resultSearchAssetManagement}[0]
	Log To Console    [dataSearchAssetManagement] : ${dataSearchAssetManagement}
	${rowcountSearchAssetManagement}=    Set Variable    ${resultSearchAssetManagement}[1]
	Log To Console    [rowcount SearchAssetManagement] : ${rowcountSearchAssetManagement}

	${checkNodata}=    Run Keyword If    '${rowcountSearchAssetManagement}'=='0'    Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchAssetManagement}'!='0'    Check Value Table Check Asset Management    ${DEFAULT_EN}     ${rowcountSearchAssetManagement}    ${dataSearchAssetManagement}

	Sleep    2s


Verify Action : click Disable button
	Sleep    2s
	Check Popup Disable EN    ${ASSETMANAGEMENTINFORMATION_ICON_DISABLE_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMEEN_VALUE}
	Click Disable EN  ${ASSETMANAGEMENTINFORMATION_ICON_DISABLE_LOCATOR}  ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMEEN_VALUE}




Verify Action : click Enable button
	# Click Enable EN  ${ASSETMANAGEMENTINFORMATION_ICON_ENABLE_LOCATOR}  ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMEEN_VALUE}
	Check Popup Enable EN    ${ASSETMANAGEMENTINFORMATION_ICON_ENABLE_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMEEN_VALUE}
	Sleep    2s



Delete Data
	#Delete data
	Update tb check_asset set delete_at    ${AssetManagementId}    ${ASSETMANAGEMENTINFORMATION_DELETETAT_VALUE}    ${ASSETMANAGEMENTINFORMATION_FILENAME_VALUE}



	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${ASSETMANAGEMENTINFORMATION_SEARCH_M22_1_0_1_000_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser 