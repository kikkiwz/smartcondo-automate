*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Search] EmployeeManagement ###################
M22_1_1_2_000_CheckAssetManagement_Success_Create_VerifyAction [Verify Action "Check Asset Management"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click User Account

    [Setup]    Open Browser To Login Page Super Admin
   	
    #========== Click Setting Menu CheckAssetManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_CHECKASSETMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_CHECKASSETMANAGEMENT_TH}    ${MENU_LBL_SETTING_CHECKASSETMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_CHECKASSETMANAGEMENT_TH}   ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_ASSETMANAGEMENTINFORMATION_HEADER_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_ASSETMANAGEMENTINFORMATION_HEADER_TH}    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_ASSETMANAGEMENTINFORMATION_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_SEARCH_LBL_ASSETMANAGEMENTINFORMATION_TH}
	


Verify Action : click X button
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEASSET_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEASSET_TH}
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_BTN_CLOSE_LOCATOR}


Verify Action : click cancel button
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEASSET_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEASSET_TH}
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_BTN_CANCEL_LOCATOR}


Verify Action : click save button [input all field data]

    #Create data
    Create Check Asset Management input all field data Check Table

	#Delete data
	Update tb check_asset set delete_at    ${AssetManagementId}    ${ASSETMANAGEMENTINFORMATION_DELETETAT_VALUE}    ${ASSETMANAGEMENTINFORMATION_FILENAME_VALUE}


Verify Action : click save button [input Require field data]

    #Create data
    Create Check Asset Management input Require field data Check Table

	#Delete data
	Update tb check_asset set delete_at    ${AssetManagementId}    ${ASSETMANAGEMENTINFORMATION_DELETETAT_VALUE}    ${ASSETMANAGEMENTINFORMATION_FILENAME_VALUE}


	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${ASSETMANAGEMENTINFORMATION_EDIT_M22_1_1_3_000_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    # [Teardown]    Close Browser 