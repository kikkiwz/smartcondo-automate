*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Search] EmployeeManagement ###################
M22_0_1_1_000_CheckAssetManagement_Success_Search_VerifyScreen [Verify screen page "Check Asset Management"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click User Account

    [Setup]    Open Browser To Login Page Super Admin EN
   	
    #========== Click Setting Menu CheckAssetManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_CHECKASSETMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_CHECKASSETMANAGEMENT_EN}    ${MENU_LBL_SETTING_CHECKASSETMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_CHECKASSETMANAGEMENT_EN}   ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_ASSETMANAGEMENTINFORMATION_HEADER_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_ASSETMANAGEMENTINFORMATION_HEADER_EN}    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_ASSETMANAGEMENTINFORMATION_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_ASSETMANAGEMENTINFORMATION_EN}
	

Verify result after click Check asset management [Data Not Found]
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

Verify result after click Check asset management Click Disable [DB Connection Error]
    #========== Create Check Asset Management ======
	Log To Console    ${\n}=========== [Create] Check Asset Management ===============
	#Create data
    Create Check Asset Management input all field data Check Table EN
	Sleep    3s

	#Delete data
	Update tb check_asset set delete_at    ${AssetManagementId}    ${ASSETMANAGEMENTINFORMATION_DELETETAT_VALUE}    ${ASSETMANAGEMENTINFORMATION_FILENAME_VALUE}

	Sleep    2s
	#Click Disable
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_ICON_DISABLE_LOCATOR}

	#Click confirm
	Click Element Page    ${ALERT_BTN_CONFIRM_LOCATOR}
	Sleep    2s

	#alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_DATANOTFOUND_EN}




Verify result after click Check asset management Click Enable [DB Connection Error]
	#========== Create Check Asset Management ======
	Log To Console    ${\n}=========== [Create] Check Asset Management ===============
	#Create data
    Create Check Asset Management input all field data Check Table EN
	Sleep    3s

	#Click Disable
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_ICON_DISABLE_LOCATOR}

	#Click confirm
	Click Element Page    ${ALERT_BTN_CONFIRM_LOCATOR}
	Sleep    2s

	#Delete data
	Update tb check_asset set delete_at    ${AssetManagementId}    ${ASSETMANAGEMENTINFORMATION_DELETETAT_VALUE}    ${ASSETMANAGEMENTINFORMATION_FILENAME_VALUE}


	Sleep    2s
	#Click Enable
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_ICON_ENABLE_LOCATOR}

	#Click confirm
	Click Element Page    ${ALERT_BTN_CONFIRM_LOCATOR}
	Sleep    2s

	#alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_DATANOTFOUND_EN}



	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${ASSETMANAGEMENTINFORMATION_SEARCH_M22_1_0_1_000_ERROR_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser 