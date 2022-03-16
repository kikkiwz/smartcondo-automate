*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Search] Role Management ###################
M2_0_1_1_000_RoleManagement_Success_Search_VerifyScreen [Verify screen page "Role Management"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click User Account

    [Setup]    Open Browser To Login Page Super Admin EN
   	
    #========== Click Setting Menu Role Management ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_ROLEMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_ROLEMANAGEMENT_EN}    ${MENU_LBL_SETTING_ROLEMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_ROLEMANAGEMENT_EN}   ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_HEADER_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_HEADER_EN}    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_EN}
	


Verify screen page Check asset management

    #Add : Role Management information
	Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_BTN_ADD_EN} 
	Wait Until Contains Element Should Be Enabled    ${ROLEMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}


	#Label: Role Management
	Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENT_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENT_EN}

	#Label: Search
	Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_BTN_SEARCH_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_BTN_SEARCH_EN}
	Wait Until Contains Element Should Be Enabled    ${ROLEMANAGEMENTINFORMATION_BTN_SEARCH_LOCATOR}

	#Label: clear
	Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_BTN_CLEAR_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_BTN_CLEAR_EN}
	Wait Until Contains Element Should Be Enabled    ${ROLEMANAGEMENTINFORMATION_BTN_CLEAR_LOCATOR}

	Sleep    5s

    #LabelTable: No
	Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NO_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NO_EN}

	#LabelTable: Role Name
	Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_ROLENAME_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_ROLENAME_EN}



Verify screen : legth 255 and type is string in Role Name
    # maxlength="255"
	Wait Should Contain Get Element Attribute    ${ROLEMANAGEMENTINFORMATION_SEARCH_TXT_ROLEMANAGEMENT_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}


Verify tooltip in button 

	#================ Check Value Table ================
	Check Table Role Management

	# View icon
	Wait Until Contains Element Should Be Visible    ${ROLEMANAGEMENTINFORMATION_ICON_VIEW_LOCATOR}
	Mouse Down    ${ROLEMANAGEMENTINFORMATION_ICON_VIEW_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_LBL_VIEW_EN_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ICON_VIEW_EN} 
	
	Sleep    1s
	#Edit icon
	Wait Until Contains Element Should Be Visible    ${ROLEMANAGEMENTINFORMATION_ICON_EDIT_LOCATOR}
	Mouse Down    ${ROLEMANAGEMENTINFORMATION_ICON_EDIT_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_LBL_EDIT_EN_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ICON_EDIT_EN}

	#Delete icon
	Wait Until Contains Element Should Be Visible    ${ROLEMANAGEMENTINFORMATION_ICON_DELETE_LOCATOR}
    Mouse Down    ${ROLEMANAGEMENTINFORMATION_ICON_DELETE_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_LBL_DELETE_EN_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_ICON_DELETE_EN} 
	Sleep    1s
    


Verify default number button
    #20
    Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_BTN_20_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_BTN_20} 
    #50
    Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_BTN_50_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_BTN_50} 
    #100
    Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_BTN_100_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_BTN_100} 
    #1000
    Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_BTN_1000_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_BTN_1000} 
    
	#paging
	${replacePage}=    Paging Replace    ${rowcountSearchRoleManagement}
	${paging}=    Set Variable    ${replacePage[1]}
	Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_LBL_PagesXFromY_LOCATOR}    ${paging}

	Wait Until Contains Element Should Be Visible    ${ROLEMANAGEMENTINFORMATION_ICON_ARRORWLEFT_LOCATOR}
	Wait Until Contains Element Text Should Be    ${ROLEMANAGEMENTINFORMATION_LBL_PAGE_LOCATOR}    ${ROLEMANAGEMENTINFORMATION_LBL_PAGE_1}
	Wait Until Contains Element Should Be Visible    ${ROLEMANAGEMENTINFORMATION_ICON_ARRORWRIGHT_LOCATOR}



Verify placeholder in Role Name
	Wait Should Contain Get Element Attribute    ${ROLEMANAGEMENTINFORMATION_SEARCH_PLACEHODER_ROLEMANAGEMENT_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    Search



	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${ROLEMANAGEMENTINFORMATION_SEARCH_M2_0_1_1_000_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser 