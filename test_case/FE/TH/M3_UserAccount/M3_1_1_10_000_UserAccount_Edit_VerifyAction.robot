*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
Suite Setup    Set Library Search Order    Selenium2Library    AppiumLibrary
	
*** Test Cases ***
################### [Search] EmployeeManagement ###################
M3_1_1_10_000_UserAccount_Edit_VerifyAction [Verify Action "Check User Account Management"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click User Account

    [Setup]    Open Browser To Login Page Super Admin
   	
    #========== Click Setting Menu CheckAssetManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_USERACCOUNT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_USERACCOUNT_TH}    ${MENU_LBL_SETTING_USERACCOUNT_LOCATOR}    ${MENU_LBL_SETTING_USERACCOUNT_TH}   ${USERACCOUNT_SEARCH_LBL_HEADER_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_HEADER_TH}    ${USERACCOUNT_SEARCH_LBL_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_HEADER_TH}
	#========== Create Check Asset Management ======
	Log To Console    ${\n}=========== [Create] Check UserAccount ===============
	#Create data
    Create User Account input all field data No Check Table TH

	Log To Console    ${\n}=========== [Edit] Check UserAccount ===============
    #Edit icon
	Wait Until Contains Element Should Be Visible    ${USERACCOUNT_COLUMN_ACTION}
	Mouse Down    ${USERACCOUNT_COLUMN_ACTION}
	Wait Until Contains Element Should Be Visible    ${USERACCOUNT_ICON_EDIT_LOCATOR}
	Click Element Page     ${USERACCOUNT_ICON_EDIT_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_HEADER_EDITCREATEUSERACCOUNT_LOCATOR}    ${USERACCOUNT_ADDEDIT_LBL_HEADER_EDITCREATEUSERACCOUNT_TH} 

Verify API onload 
    Request Verify API On Load Create User Account API Search Role
    Request Verify API On Load Create User Account API Search Prefix    TH
    Request Verify API On Load Create User Account API Search Property    TH

Verify Action : click X button
    Click Element Page    ${USERACCOUNT_BTN_CLOSE_LOCATOR}

Verify Action : click cancel button
    #Edit icon
	Wait Until Contains Element Should Be Visible    ${USERACCOUNT_COLUMN_ACTION}
	Mouse Down    ${USERACCOUNT_COLUMN_ACTION}
	Wait Until Contains Element Should Be Visible    ${USERACCOUNT_ICON_EDIT_LOCATOR}
	Click Element Page     ${USERACCOUNT_ICON_EDIT_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_HEADER_EDITCREATEUSERACCOUNT_LOCATOR}    ${USERACCOUNT_ADDEDIT_LBL_HEADER_EDITCREATEUSERACCOUNT_TH} 
	Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
	Click Element Page    ${USERACCOUNT_ADDEDIT_BTN_CANCEL_LOCATOR}

Verify action : click Edit User Account [Edit all field data]
	#Create data
    Edit User Account input all field data No Check Table TH
	#Search for check result
	Wait Until Contains Input Text    ${USERACCOUNT_SEARCH_TXT_SEARCHFILTER_AUTOCOMPLETE_LOCATOR}   ${first_name_value}
	Sleep    0.5s
	#Click Search
	Click Element Page    ${USERACCOUNT_BTN_SEARCH_LOCATOR}

	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchUserAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check User Account    ${MYSQL_TYPE_USERACCOUNT_SEARCH_FIRSTNAME}    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_USERACCOUNT_ORDERBY_CREATEAT_AND_UPDATEAT_DESC}
	Log To Console    resultSearchUserAccount::${resultSearchUserAccount}    
	Log    resultSearchUserAccount::${resultSearchUserAccount} 
	
	${dataSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[0]
	Log To Console    [dataSearchUserAccount] : ${dataSearchUserAccount}
	${rowcountSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[1]
	Log To Console    [rowcount SearchUserAccount] : ${rowcountSearchUserAccount}

	Check Value Table Search User    ${DEFAULT_TH}     ${rowcountSearchUserAccount}    ${dataSearchUserAccount}

	Sleep    1s
	#Delete data
	Update tb users set delete_at    ${userId}    ${USERACCOUNT_DELETETAT_VALUE}    ${USERACCOUNT_FILENAME_VALUE}
################## Close Browser ###################
   [Teardown]    Close Browser