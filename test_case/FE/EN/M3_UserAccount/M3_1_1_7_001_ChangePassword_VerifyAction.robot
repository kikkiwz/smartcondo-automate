*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
Suite Setup    Set Library Search Order    Selenium2Library    AppiumLibrary
	
*** Test Cases ***
################### [Search] EmployeeManagement ###################
M3_1_1_7_001_ChangePassword_VerifyAction [Verify Action "ChangePassword"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click User Account
	...    4. click name user on tab
	...    5. click Change Password

    [Setup]    Open Browser To Login Page Super Admin TH
   	
   #========== Click Setting Menu CheckAssetManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_USERACCOUNT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_USERACCOUNT_TH}    ${MENU_LBL_SETTING_USERACCOUNT_LOCATOR}    ${MENU_LBL_SETTING_USERACCOUNT_TH}   ${USERACCOUNT_SEARCH_LBL_HEADER_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_HEADER_TH}    ${USERACCOUNT_SEARCH_LBL_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_HEADER_TH}

	#========== Create Check Asset Management ======
	Log To Console    ${\n}=========== [Create] User Account ===============
	#Create data
    Create User Account And Login
    #open changepassword
	Log To Console    ${\n}=========== [Change Password] ===============
	Wait Until Contains Element Should Be Visible    ${USERINFO_BTN_USERNAME_LOGIN_LOCATOR}
	Mouse Down    ${USERINFO_BTN_USERNAME_LOGIN_LOCATOR}
    Click Element Page    ${CHANGEPASSWORD_LBL_LOCATOR}
	Sleep    2s
	Wait Until Contains Element Text Should Be    ${CHANGEPASSWORD_HEADER_LOCATOR}    ${CHANGEPASSWORD_HEADER_TH} 

Verify Action : click X button
    Click Element Page    ${CHANGEPASSWORD_CLOSE_LOCATOR}

Verify Action : click cancel button
    #open changepassword
	Log To Console    ${\n}=========== [Change Password] ===============
	Wait Until Contains Element Should Be Visible    ${USERINFO_BTN_USERNAME_LOGIN_LOCATOR}
	Mouse Down    ${USERINFO_BTN_USERNAME_LOGIN_LOCATOR}
    Click Element Page    ${CHANGEPASSWORD_LBL_LOCATOR}
	Sleep    2s
	Wait Until Contains Element Text Should Be    ${CHANGEPASSWORD_HEADER_LOCATOR}    ${CHANGEPASSWORD_HEADER_TH} 

    #click cancel button
	Click Element Page    ${CHANGEPASSWORD_BTN_CANCEL_LOCATOR}

Verify action : click Edit User Account [Edit all field data]
    #open changepassword
	Log To Console    ${\n}=========== [Change Password] ===============
	Wait Until Contains Element Should Be Visible    ${USERINFO_BTN_USERNAME_LOGIN_LOCATOR}
	Mouse Down    ${USERINFO_BTN_USERNAME_LOGIN_LOCATOR}
    Click Element Page    ${CHANGEPASSWORD_LBL_LOCATOR}
	Sleep    2s
	Wait Until Contains Element Text Should Be    ${CHANGEPASSWORD_HEADER_LOCATOR}    ${CHANGEPASSWORD_HEADER_TH} 
	#Edit data
    Edit Change Password Table EN

	#search properties id
	${query}=    Set Variable    select identification_no,password from users WHERE first_name = "${first_name_value}"
	${path}=    Set Variable    ${EXECDIR}/sql/useraccount_search_property.sql    
	Create File    ${path}    ${query}
	${passwordDB}=    Start Connect To MySql Query All List    ${query}    ${EMPTY}
	Log    ${passwordDB[0][0][1]}
	${identification_no_str}=    Convert To String    ${passwordDB[0][0][0]}
	#login
	Wait Until Contains Input Text    ${LOGIN_TXT_USERNAME_LOCATOR}    ${identification_no_str}
	Sleep    2s
	Wait Until Contains Input Text    ${LOGIN_TXT_PASSWORD_LOCATOR}    ${new_password}
	Sleep    2s
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR}	
	Sleep    2s
	#Project of Building
	Wait Until Contains Element Text Should Be    ${HOME_LBL_PROJECTOFBUILDING_LOCATOR}    ${HOME_LBL_PROJECTOFBUILDING_TH} 
	#Delete data
	Update tb users set delete_at    ${userId}    ${USERACCOUNT_DELETETAT_VALUE}    ${USERACCOUNT_FILENAME_VALUE}
	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${USERACCOUNT_SEARCH_M3_1_1_7_000_SUCCESS_SCREENSHOT}
################## Close Browser ###################
   [Teardown]    Close Browser