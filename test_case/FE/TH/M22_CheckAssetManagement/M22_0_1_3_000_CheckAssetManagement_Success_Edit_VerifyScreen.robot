*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Search] EmployeeManagement ###################
M22_0_1_3_000_CheckAssetManagement_Success_Edit_VerifyScreen [Verify screen page "Check Asset Management"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click User Account

    [Setup]    Open Browser To Login Page Super Admin
   	
    #========== Click Setting Menu CheckAssetManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_CHECKASSETMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_CHECKASSETMANAGEMENT_TH}    ${MENU_LBL_SETTING_CHECKASSETMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_CHECKASSETMANAGEMENT_TH}   ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_ASSETMANAGEMENTINFORMATION_HEADER_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_ASSETMANAGEMENTINFORMATION_HEADER_TH}    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_ASSETMANAGEMENTINFORMATION_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_ASSETMANAGEMENTINFORMATION_TH}
	


Verify screen page Edit - CheckAsset

	Click Element Page    ${ASSETMANAGEMENTINFORMATION_ICON_EDIT_LOCATOR}
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_EDITASSETDETAIL_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_EDITASSETDETAIL_TH}

	Wait Until Contains Element Should Be Enabled    ${ASSETMANAGEMENTINFORMATION_BTN_CLOSE_LOCATOR}

	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_ASSETNAMETH_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_ASSETNAMETH_TH}
	Wait Until Contains Element Should Be Enabled    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_TXT_ASSETNAMETH_LOCATOR}

	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_ASSETNAMEEN_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_ASSETNAMEEN_TH}
	Wait Until Contains Element Should Be Enabled    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_TXT_ASSETNAMEEN_LOCATOR}

	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_REMARK_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_REMARK_TH}
	Wait Until Contains Element Should Be Enabled    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_TXT_ASSETNAMETHAI_LOCATOR}

	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_BTN_CANCEL_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_BTN_CANCEL_TH}

	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_TH}

    
Verify screen : legth 125 and type is varchar in Asset name (Thai)
	# maxlength="125"
	Wait Should Contain Get Element Attribute    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_TXT_ASSETNAMETH_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}
	
Verify screen : legth 125 and type is varchar in Asset name (English)
	# maxlength="125"
	Wait Should Contain Get Element Attribute    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_TXT_ASSETNAMEEN_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${ASSETMANAGEMENTINFORMATION_EDIT_M22_0_1_3_000_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser 