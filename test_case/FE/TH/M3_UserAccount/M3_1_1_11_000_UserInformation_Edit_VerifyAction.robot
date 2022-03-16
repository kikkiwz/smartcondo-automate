*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
Suite Setup    Set Library Search Order    Selenium2Library    AppiumLibrary
	
*** Test Cases ***
################### [Search] EmployeeManagement ###################
M3_1_1_11_000_UserInformation_Edit_VerifyAction [Verify Action "Check User Information"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click User Account

    [Setup]    Open Browser To Login Page Super Admin
   	
    #========== Click Setting Menu CheckAssetManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_USERACCOUNT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_USERACCOUNT_TH}    ${MENU_LBL_SETTING_USERACCOUNT_LOCATOR}    ${MENU_LBL_SETTING_USERACCOUNT_TH}   ${USERACCOUNT_SEARCH_LBL_HEADER_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_HEADER_TH}    ${USERACCOUNT_SEARCH_LBL_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_HEADER_TH}

	#========== Create Check Asset Management ======
	Log To Console    ${\n}=========== [Create] Check USERINFO ===============
	#Create data
    Create User Account And Login TH
	Log To Console    ${\n}=========== [Edit] User Information ===============
	Wait Until Contains Element Should Be Visible    ${USERINFO_BTN_USERNAME_LOGIN_LOCATOR}
	Mouse Down    ${USERINFO_BTN_USERNAME_LOGIN_LOCATOR}
    Click Element Page    ${USERINFO_ICON_EDITUSERINFORMATION_LOCATOR}
	Sleep    2s
	Wait Until Contains Element Text Should Be    ${USERINFO_EDIT_LBL_HEADER_EDITUSERINFORMATION_LOCATOR}    ${USERINFO_EDIT_LBL_HEADER_EDITUSERINFORMATION_TH}

Verify API onload 
    Request Verify API On Load User Information API Search Prefix    TH

Verify Action : click X button
    Click Element Page    ${USERACCOUNT_BTN_CLOSE_LOCATOR}

Verify Action : click cancel button
    #Open Edit page
	Wait Until Contains Element Should Be Visible    ${USERINFO_BTN_USERNAME_LOGIN_LOCATOR}
	Mouse Down    ${USERINFO_BTN_USERNAME_LOGIN_LOCATOR}
    Click Element Page    ${USERINFO_ICON_EDITUSERINFORMATION_LOCATOR}
	Sleep    2s
	Wait Until Contains Element Text Should Be    ${USERINFO_EDIT_LBL_HEADER_EDITUSERINFORMATION_LOCATOR}    ${USERINFO_EDIT_LBL_HEADER_EDITUSERINFORMATION_TH}
    #click cancel button
	Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
	Click Element Page    ${USERACCOUNT_ADDEDIT_BTN_CANCEL_LOCATOR}

Verify action : click Edit User Account [Edit all field data]
    #Open Edit page
	Wait Until Contains Element Should Be Visible    ${USERINFO_BTN_USERNAME_LOGIN_LOCATOR}
	Mouse Down    ${USERINFO_BTN_USERNAME_LOGIN_LOCATOR}
    Click Element Page    ${USERINFO_ICON_EDITUSERINFORMATION_LOCATOR}
	Sleep    2s
	Wait Until Contains Element Text Should Be    ${USERINFO_EDIT_LBL_HEADER_EDITUSERINFORMATION_LOCATOR}    ${USERINFO_EDIT_LBL_HEADER_EDITUSERINFORMATION_TH}
	#Edit data
    Edit User Information all field data No Check Table TH
	#Go to UserAccount
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_USERACCOUNT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_USERACCOUNT_TH}    ${MENU_LBL_SETTING_USERACCOUNT_LOCATOR}    ${MENU_LBL_SETTING_USERACCOUNT_TH}   ${USERACCOUNT_SEARCH_LBL_HEADER_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_HEADER_TH}    ${USERACCOUNT_SEARCH_LBL_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_HEADER_TH}
	#Search for check result
	Wait Until Contains Input Text    ${USERACCOUNT_SEARCH_TXT_SEARCHFILTER_AUTOCOMPLETE_LOCATOR}   ${email_value}
	Sleep    0.5s
	#Click Search
	Click Element Page    ${USERACCOUNT_BTN_SEARCH_LOCATOR}

	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchUserAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check User Account    ${MYSQL_TYPE_USERACCOUNT_SEARCH_EMAIL}    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_USERACCOUNT_ORDERBY_CREATEAT_AND_UPDATEAT_DESC}
	Log To Console    resultSearchUserAccount::${resultSearchUserAccount}    
	Log    resultSearchUserAccount::${resultSearchUserAccount} 
	
	${dataSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[0]
	Log To Console    [dataSearchUserAccount] : ${dataSearchUserAccount}
	${rowcountSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[1]
	Log To Console    [rowcount SearchUserAccount] : ${rowcountSearchUserAccount}

	Check Value Table Search User After Edit User Information    ${DEFAULT_TH}     ${rowcountSearchUserAccount}    ${dataSearchUserAccount}

	Sleep    1s
	#Delete data
	Update tb users set delete_at    ${userId}    ${USERACCOUNT_DELETETAT_VALUE}    ${USERACCOUNT_FILENAME_VALUE}
################## Close Browser ###################
   [Teardown]    Close Browser