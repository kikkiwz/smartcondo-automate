*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
Suite Setup    Set Library Search Order    Selenium2Library    AppiumLibrary
	
*** Test Cases ***
################### [Search] EmployeeManagement ###################
M3_1_1_2_000_UserAccount_Create_VerifyAction [Verify Action "Check User Account Management"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click User Account

    [Setup]    Open Browser To Login Page Super Admin
   	
    #========== Click Setting Menu CheckAssetManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_USERACCOUNT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_USERACCOUNT_TH}    ${MENU_LBL_SETTING_USERACCOUNT_LOCATOR}    ${MENU_LBL_SETTING_USERACCOUNT_TH}   ${USERACCOUNT_SEARCH_LBL_HEADER_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_HEADER_TH}    ${USERACCOUNT_SEARCH_LBL_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_HEADER_TH}
    Click Element Page    ${USERACCOUNT_BTN_ADD_LOCATOR}
	Sleep    0.5s

Verify API onload 
    Request Verify API On Load Create User Account API Search Role
    Request Verify API On Load Create User Account API Search Prefix    TH
    Request Verify API On Load Create User Account API Search Property    TH
    #Click Cancel button
    Click Element Page    ${USERACCOUNT_ADDEDIT_BTN_CANCEL_LOCATOR}

Verify Action : click X button
	Click Element Page    ${USERACCOUNT_BTN_ADD_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_HEADER_CREATEUSERACCOUNT_LOCATOR}    ${USERACCOUNT_ADDEDIT_LBL_HEADER_CREATEUSERACCOUNT_TH} 
	Click Element Page    ${USERACCOUNT_BTN_CLOSE_LOCATOR}


Verify Action : click cancel button
	Click Element Page    ${USERACCOUNT_BTN_ADD_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_HEADER_CREATEUSERACCOUNT_LOCATOR}    ${USERACCOUNT_ADDEDIT_LBL_HEADER_CREATEUSERACCOUNT_TH} 
	Click Element Page    ${USERACCOUNT_BTN_CLOSE_LOCATOR}


Verify Action : click save button [input all field data]
	#Create data
    Create User Account input all field data No Check Table TH
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

Verify Action : click save button [input Require field data]
	#Create data
    Create User Account input require field data No Check Table EN
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

	Check Value Table Search User Case Require Field    ${DEFAULT_TH}     ${rowcountSearchUserAccount}    ${dataSearchUserAccount}

	Sleep    1s
    #Close Browser

Verify after Create User Account success (login by new Account)
	#search properties id
	${query}=    Set Variable    select identification_no,password from users WHERE first_name = "${first_name_value}"
	${path}=    Set Variable    ${EXECDIR}/sql/useraccount_search_property.sql    
	Create File    ${path}    ${query}
	${passwordDB}=    Start Connect To MySql Query All List    ${query}    ${EMPTY}
	Log    ${passwordDB[0][0][1]}
	${identification_no_str}=    Convert To String    ${passwordDB[0][0][0]}
	${passwordDB_str}=    Convert To String    ${passwordDB[0][0][1]} 
    ${password}=    Evaluate    base64.b64decode("${passwordDB_str}")    modules=base64
    Log    ${password}
	${password_str}=    Convert To String    ${password} 
    #logout
	Wait Until Contains Element Should Be Visible    ${USERINFO_BTN_USERNAME_LOGIN_LOCATOR}
	Mouse Down    ${USERINFO_BTN_USERNAME_LOGIN_LOCATOR}
    Click Element Page    ${USERACCOUNT_BTN_LOGOUT_LOCATOR}
	Sleep    2s
	#Confrim pdpa
	Update Terms and conditions    ${identification_no_str}	
	#login
	Wait Until Contains Input Text    ${LOGIN_TXT_USERNAME_LOCATOR}    ${identification_no_str}
	Sleep    2s
	Wait Until Contains Input Text    ${LOGIN_TXT_PASSWORD_LOCATOR}    ${password_str}
	Sleep    2s
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR}	
	Sleep    2s
	#Project of Building
	Wait Until Contains Element Text Should Be    ${HOME_LBL_PROJECTOFBUILDING_LOCATOR}    ${HOME_LBL_PROJECTOFBUILDING_TH} 
	#Delete data
	Update tb users set delete_at    ${userId}    ${USERACCOUNT_DELETETAT_VALUE}    ${USERACCOUNT_FILENAME_VALUE}
	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${USERACCOUNT_SEARCH_M3_1_1_2_000_SUCCESS_SCREENSHOT}
################### Close Browser ###################
    [Teardown]    Close Browser 