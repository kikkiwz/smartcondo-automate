*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Search] Role Management ###################
M2_0_1_3_000_RoleManagement_Success_Edit_VerifyScreen [Verify screen page "Role Management"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click User Account

    [Setup]    Open Browser To Login Page Super Admin EN
   	
    #========== Click Setting Menu Role Management ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_ROLEMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_ROLEMANAGEMENT_EN}    ${MENU_LBL_SETTING_ROLEMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_ROLEMANAGEMENT_EN}   ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_HEADER_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_HEADER_EN}    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_EN}
	


Verify screen page Create Role

	Click Element Page  ${ROLEMANAGEMENTINFORMATION_ICON_EDIT_LOCATOR}
	Sleep    1s


	#Label: Role Management
	Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_EDITROLE_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_EDITROLE_EN}

	#Close
	Wait Until Contains Element Should Be Enabled    ${ROLEMANAGEMENTINFORMATION_BTN_CLOSE_LOCATOR}

	# Role Name*
	Wait Until Contains Get Text Split String Join    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_ROLENAME_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_ROLENAME_EN} 
	Wait Until Contains Element Should Be Visible    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_TXT_ROLENAME_LOCATOR}


	#Permission*
	Wait Until Contains Get Text Split String Join    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_PERMISSION_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_PERMISSION_EN} 

	#LabelTable: Name Menu
	Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_MENUNAME_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_MENUNAME_EN}


	#LabelTable: View
	Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_VIEW_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_VIEW_EN}


	#LabelTable: Create
	Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_CREATE_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_CREATE_EN}


	#LabelTable: Edit
	Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_EDIT_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_EDIT_EN}

	#LabelTable: Delete
	Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_DELETE_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_DELETE_EN}


	Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_BTN_CANCEL_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_BTN_CANCEL_EN}

	Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_EN}

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

	Click Element Page  ${ROLEMANAGEMENTINFORMATION_ADDEDIT_BTN_CANCEL_LOCATOR}


	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${ROLEMANAGEMENTINFORMATION_EDIT_M2_0_1_3_000_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser 