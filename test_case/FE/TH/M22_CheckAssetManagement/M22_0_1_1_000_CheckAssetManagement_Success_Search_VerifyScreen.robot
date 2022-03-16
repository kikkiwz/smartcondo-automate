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

    [Setup]    Open Browser To Login Page Super Admin
   	
    #========== Click Setting Menu CheckAssetManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_CHECKASSETMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_CHECKASSETMANAGEMENT_TH}    ${MENU_LBL_SETTING_CHECKASSETMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_CHECKASSETMANAGEMENT_TH}   ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_ASSETMANAGEMENTINFORMATION_HEADER_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_ASSETMANAGEMENTINFORMATION_HEADER_TH}    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_ASSETMANAGEMENTINFORMATION_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_ASSETMANAGEMENTINFORMATION_TH}
	



Verify screen page Check asset management

    #Add : CheckAssetManagement information
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_BTN_ADD_TH} 
	Wait Until Contains Element Should Be Enabled    ${ASSETMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}

	#Label: Status
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_STATUS_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_STATUS_TH}

	#Label: Asset name
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_ASSETNAME_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_ASSETNAME_TH}

	#Label: Search
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_BTN_SEARCH_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_BTN_SEARCH_TH}
	Wait Until Contains Element Should Be Enabled    ${ASSETMANAGEMENTINFORMATION_BTN_SEARCH_LOCATOR}

	#Label: clear
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_BTN_CLEAR_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_BTN_CLEAR_TH}
	Wait Until Contains Element Should Be Enabled    ${ASSETMANAGEMENTINFORMATION_BTN_CLEAR_LOCATOR}

	Sleep    5s

    #LabelTable: No
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NO_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NO_TH}

	#LabelTable: Asset name
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_ASSETNAME_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_ASSETNAME_TH}

	#LabelTable: Remark
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_REMARK_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_REMARK_TH}

	#LabelTable: Status
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_STATUS_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_STATUS_TH}


Verify screen : legth 125 and type is string in Asset name
    # maxlength="125"
	Wait Should Contain Get Element Attribute    ${ASSETMANAGEMENTINFORMATION_SEARCH_TXT_ASSETNAME_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}


Verify tooltip in button 

	#========== Create AssetManagement ======
	Log To Console    ${\n}=========== [Create] AssetManagement ===============
	# Create Check Asset Management input all field data Check Table

	#================ Check Value Table ================
	Check Value Table Asset Management

    
	# Disable icon
	Wait Until Contains Element Should Be Visible    ${ASSETMANAGEMENTINFORMATION_ICON_DISABLE_LOCATOR}
	Mouse Down    ${ASSETMANAGEMENTINFORMATION_ICON_DISABLE_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_LBL_DISABLE_TH_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ICON_DISABLE_TH} 
	
	Sleep    1s
	#Edit icon
	Wait Until Contains Element Should Be Visible    ${ASSETMANAGEMENTINFORMATION_ICON_EDIT_LOCATOR}
	Mouse Down    ${ASSETMANAGEMENTINFORMATION_ICON_EDIT_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_LBL_EDIT_TH_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ICON_EDIT_TH}

	Click Element Page  ${ASSETMANAGEMENTINFORMATION_ICON_DISABLE_LOCATOR}
	Click Element Page  ${ALERT_BTN_CONFIRM_LOCATOR}

	#Enable icon
	Wait Until Contains Element Should Be Visible    ${ASSETMANAGEMENTINFORMATION_ICON_ENABLE_LOCATOR}
    Mouse Down    ${ASSETMANAGEMENTINFORMATION_ICON_ENABLE_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_LBL_ENABLE_TH_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ICON_ENABLE_TH} 
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
	${paging}=    Set Variable    ${replacePage[0]}
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_LBL_PagesXFromY_LOCATOR}    ${paging}

	Wait Until Contains Element Should Be Visible    ${ASSETMANAGEMENTINFORMATION_ICON_ARRORWLEFT_LOCATOR}
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_LBL_PAGE_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_LBL_PAGE_1}
	Wait Until Contains Element Should Be Visible    ${ASSETMANAGEMENTINFORMATION_ICON_ARRORWRIGHT_LOCATOR}


Verify list and default in Status dropdown

	# Verify Screen Dropdown : Employee Type  
	Element Text Should Be Value Dropdown    ${ASSETMANAGEMENTINFORMATION_SEARCH_DDL_STATUS_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_DDL_PROPERTYMANAGER_LIST_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_DDL_STATUS_TH_VALUE}
	#close dropdrown
	Press Keys    ${NONE}    ${ESC}
	Sleep    0.5s


Verify screen popup confirm Enable and Disable
    Check Popup Enable TH    ${ASSETMANAGEMENTINFORMATION_ICON_ENABLE_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMETH_VALUE}
	Sleep    0.5s

	Click Enable TH  ${ASSETMANAGEMENTINFORMATION_ICON_ENABLE_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMETH_VALUE}

	Check Popup Disable TH    ${ASSETMANAGEMENTINFORMATION_ICON_DISABLE_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_ASSETNAMETH_VALUE}
	Sleep    0.5s


	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${ASSETMANAGEMENTINFORMATION_SEARCH_M22_0_1_1_000_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser 