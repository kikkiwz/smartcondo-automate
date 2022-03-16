*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
Suite Setup    Set Library Search Order    Selenium2Library    AppiumLibrary


*** Test Cases ***
################### [Search] EmployeeManagement ###################
M3_0_1_2_000_UserAccount_Search_VerifyScreen
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click User Account

    [Setup]    Open Browser To Login Page Super Admin EN
   	
    #========== Click Setting Menu CheckAssetManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_USERACCOUNT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_USERACCOUNT_EN}    ${MENU_LBL_SETTING_USERACCOUNT_LOCATOR}    ${MENU_LBL_SETTING_USERACCOUNT_EN}   ${USERACCOUNT_SEARCH_LBL_HEADER_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_HEADER_EN}    ${USERACCOUNT_SEARCH_LBL_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_HEADER_EN}

Verify screen page "User Account"
    #Header
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_SEARCH_LBL_HEADER_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_HEADER_EN}
	Wait Until Contains Element Should Be Enabled    ${USERACCOUNT_SEARCH_LBL_HEADER_LOCATOR}

	#Label: Property Manager
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_SEARCH_LBL_PROPERTYMANAGER_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_PROPERTYMANAGER_EN}

	#Label: Firstname,Lastname,Email,Role
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_SEARCH_LBL_SEARCHFILTER_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_SEARCHFILTER_EN}

	#Label: Search
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_BTN_SEARCH_LOCATOR}    ${USERACCOUNT_BTN_SEARCH_EN}
	Wait Until Contains Element Should Be Enabled    ${USERACCOUNT_BTN_SEARCH_LOCATOR}

	#Label: clear
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_BTN_CLEAR_LOCATOR}    ${USERACCOUNT_BTN_CLEAR_EN}
	Wait Until Contains Element Should Be Enabled    ${USERACCOUNT_BTN_CLEAR_LOCATOR}

	Sleep    5s

    #LabelTable: No
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_SEARCH_LBL_RESULT_NO_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_RESULT_NO_EN}

    #LabelTable: First name - Last name
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_SEARCH_LBL_RESULT_NAME_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_RESULT_NAME_EN}

    #LabelTable: E-mail
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_SEARCH_LBL_RESULT_EMAIL_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_RESULT_EMAIL_EN}

	#LabelTable: License
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_SEARCH_LBL_RESULT_LICENSE_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_RESULT_LICENSE_EN}


Verify screen : Verify defualt value dropdown list- Dropdown : Project Manager    
	Wait Until Contains Element Should Be Equal As Strings    ${USERACCOUNT_SEARCH_DDL_PROPERTYMANAGER_PLACEHOLDER_LOCATOR}    ${USERACCOUNT_SEARCH_EN_PROPERTYMANAGER_VALUE2} 

Verify placeholder- dropdown : select     
	Wait Should Contain Get Element Attribute    ${USERACCOUNT_SEARCH_DDL_PROPERTYMANAGER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER1_DX}    ${USERACCOUNT_SEARCH_EN_PROPERTYMANAGER_PLACEHOLDER_VALUE} 

Verify placeholder- dropdown : Firstname,Lastname,Email,Role     
	Wait Should Contain Get Element Attribute    ${USERACCOUNT_SEARCH_TXT_SEARCHFILTER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER1_DX}    ${USERACCOUNT_SEARCH_EN_SEARCHFILTER_PLACEHOLDER_VALUE} 

Verify screen : legth 255 and type is string in Property Manager
	# maxlength="125"

	Wait Should Contain Get Element Attribute    ${USERACCOUNT_SEARCH_DDL_PROPERTYMANAGER_LOCATOR}    ${ATTRIBUTE_NG_REFLECT_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

Verify screen : legth 255 and type is string in Firstname,Lastname,Email,Role
	# maxlength="125"
	Wait Should Contain Get Element Attribute    ${USERACCOUNT_SEARCH_TXT_SEARCHFILTER_AUTOCOMPLETE_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

Verify tooltip in button 
	#Edit icon
	Wait Until Contains Element Should Be Visible    ${USERACCOUNT_COLUMN_ACTION}
	Mouse Down    ${USERACCOUNT_COLUMN_ACTION}
	Wait Until Contains Element Should Be Visible    ${USERACCOUNT_ICON_EDIT_LOCATOR}
	Mouse Down    ${USERACCOUNT_ICON_EDIT_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_LBL_EDIT_EN_LOCATOR}    ${USERACCOUNT_ICON_EDIT_EN}

	#Delete icon
	Wait Until Contains Element Should Be Visible    ${USERACCOUNT_ICON_DELETE_LOCATOR}
	Mouse Down    ${USERACCOUNT_ICON_DELETE_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_LBL_DELETE_EN_LOCATOR}    ${USERACCOUNT_ICON_DELETE_EN}

Verify default number button
    #20
    Wait Until Contains Element Text Should Be    ${USERACCOUNT_BTN_20_LOCATOR}    ${USERACCOUNT_BTN_20} 
    #50
    Wait Until Contains Element Text Should Be    ${USERACCOUNT_BTN_50_LOCATOR}    ${USERACCOUNT_BTN_50} 
    #100
    Wait Until Contains Element Text Should Be    ${USERACCOUNT_BTN_100_LOCATOR}    ${USERACCOUNT_BTN_100} 
    #1000
    Wait Until Contains Element Text Should Be    ${USERACCOUNT_BTN_1000_LOCATOR}    ${USERACCOUNT_BTN_1000} 
    
	#rowcountSearchUserAccount
	${rowcount}=    Check Data Search RowCount User Account
	#paging
	${replacePage}=    Paging Replace1    ${LIMIT_20}    ${rowcount}
	${paging}=    Set Variable    ${replacePage[1]}
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_LBL_PagesXFromY_LOCATOR}    ${paging}
	Wait Until Contains Element Should Be Visible    ${USERACCOUNT_ICON_ARRORWLEFT_LOCATOR}
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_LBL_PAGE_LOCATOR}    ${USERACCOUNT_LBL_PAGE_1}
	Wait Until Contains Element Should Be Visible    ${USERACCOUNT_ICON_ARRORWRIGHT_LOCATOR}

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${USERACCOUNT_SEARCH_M3_0_1_2_000_SUCCESS_SCREENSHOT}
################## Close Browser ###################
   [Teardown]    Close Browser