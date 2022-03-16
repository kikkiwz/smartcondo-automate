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
	


Verify screen page Check asset management

    #Add : CheckAssetManagement information
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_BTN_ADD_EN} 
	Wait Until Contains Element Should Be Enabled    ${ASSETMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}

	#Label: Status
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_STATUS_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_STATUS_EN}

	#Label: Asset name
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_ASSETNAME_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_ASSETNAME_EN}

	#Label: Search
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_BTN_SEARCH_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_BTN_SEARCH_EN}
	Wait Until Contains Element Should Be Enabled    ${ASSETMANAGEMENTINFORMATION_BTN_SEARCH_LOCATOR}

	#Label: clear
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_BTN_CLEAR_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_BTN_CLEAR_EN}
	Wait Until Contains Element Should Be Enabled    ${ASSETMANAGEMENTINFORMATION_BTN_CLEAR_LOCATOR}

	Sleep    5s

    #LabelTable: No
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NO_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NO_EN}

	#LabelTable: Asset name
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_ASSETNAME_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_ASSETNAME_EN}

	#LabelTable: Remark
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_REMARK_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_REMARK_EN}

	#LabelTable: Status
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_STATUS_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_STATUS_EN}


Verify screen : legth 125 and type is string in Asset name
    # maxlength="125"
	Wait Should Contain Get Element Attribute    ${ASSETMANAGEMENTINFORMATION_SEARCH_TXT_ASSETNAME_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}


Verify tooltip in button 

	#========== Create AssetManagement ======
	Log To Console    ${\n}=========== [Create] AssetManagement ===============
	# Create Check Asset Management input all field data Check Table

	#================ Check Value Table ================
	Check Value Table Asset Management En

    
	# Disable icon
	Wait Until Contains Element Should Be Visible    ${ASSETMANAGEMENTINFORMATION_ICON_DISABLE_LOCATOR}
	Mouse Down    ${ASSETMANAGEMENTINFORMATION_ICON_DISABLE_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_LBL_DISABLE_EN_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ICON_DISABLE_EN} 
	
	Sleep    1s
	# # Edit icon
	Wait Until Contains Element Should Be Visible    ${ASSETMANAGEMENTINFORMATION_ICON_EDIT_LOCATOR}
	Mouse Down    ${ASSETMANAGEMENTINFORMATION_ICON_EDIT_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_LBL_EDIT_EN_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ICON_EDIT_EN}

	Click Element Page  ${ASSETMANAGEMENTINFORMATION_ICON_DISABLE_LOCATOR}
	Click Element Page  ${ALERT_BTN_CONFIRM_LOCATOR}

	# #Enable icon
	Wait Until Contains Element Should Be Visible    ${ASSETMANAGEMENTINFORMATION_ICON_ENABLE_LOCATOR}
    Mouse Down    ${ASSETMANAGEMENTINFORMATION_ICON_ENABLE_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_LBL_ENABLE_EN_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ICON_ENABLE_EN} 
	Sleep    1s
    




Verify default number button

    #20
    Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_BTN_20_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_BTN_20} 
    #50
    Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_BTN_50_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_BTN_50} 
    #100
    Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_BTN_100_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_BTN_100} 
    #1000
    Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_BTN_1000_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_BTN_1000} 
    
	#paging
	${replacePage}=    Paging Replace    ${rowcountSearchAssetManagement}
	${paging}=    Set Variable    ${replacePage[1]}
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_LBL_PagesXFromY_LOCATOR}    ${paging}

	Wait Until Contains Element Should Be Visible    ${ASSETMANAGEMENTINFORMATION_ICON_ARRORWLEFT_LOCATOR}
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_LBL_PAGE_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_LBL_PAGE_1}
	Wait Until Contains Element Should Be Visible    ${ASSETMANAGEMENTINFORMATION_ICON_ARRORWRIGHT_LOCATOR}


Verify list and default in Status dropdown

	# Verify Screen Dropdown : Employee Type  
	Element Text Should Be Value Dropdown    ${ASSETMANAGEMENTINFORMATION_SEARCH_DDL_STATUS_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_DDL_PROPERTYMANAGER_LIST_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_DDL_STATUS_EN_VALUE}
	#close dropdrown
	Press Keys    ${NONE}    ${ESC}
	Sleep    0.5s


Verify screen popup confirm Enable and Disable
    Check Popup Enable EN    ${ASSETMANAGEMENTINFORMATION_ICON_ENABLE_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMEEN_VALUE}
	Sleep    0.5s

	Click Enable EN  ${ASSETMANAGEMENTINFORMATION_ICON_ENABLE_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMEEN_VALUE}

	Check Popup Disable EN    ${ASSETMANAGEMENTINFORMATION_ICON_DISABLE_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMEEN_VALUE}
	Sleep    0.5s


	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${ASSETMANAGEMENTINFORMATION_SEARCH_M22_0_1_1_000_SUCCESS_SCREENSHOT}

################## Close Browser ###################
    [Teardown]    Close Browser 