*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
Suite Setup    Set Library Search Order    Selenium2Library    AppiumLibrary

*** Test Cases ***
################### [Delete] BankAccountManagement ###################
M3_1_1_4_000_UserAccount_Delete_VerifyAction [click after user delete]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click user Account
	...    5. click create button
	...    6. click delete button
	
    [Setup]    Open Browser To Login Page Super Admin EN
   	
    #========== Click Setting Menu CheckUserAccount ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_USERACCOUNT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_USERACCOUNT_TH}    ${MENU_LBL_SETTING_USERACCOUNT_LOCATOR}    ${MENU_LBL_SETTING_USERACCOUNT_TH}   ${USERACCOUNT_SEARCH_LBL_HEADER_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_HEADER_TH}    ${USERACCOUNT_SEARCH_LBL_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_HEADER_TH}
	

	#========== Create Check Asset Management ======
	Log To Console    ${\n}=========== [Create] Check UserAccount ===============
	#Create data
    Create User Account input all field data No Check Table EN
    Sleep    0.5s

Verify action : click Cancel button
	Wait Until Contains Element Should Be Visible    ${USERACCOUNT_COLUMN_ACTION}
	Mouse Down    ${USERACCOUNT_COLUMN_ACTION}
	Click Element Page    ${USERACCOUNT_ICON_DELETE_LOCATOR}
	Sleep    0.5s
    #Click Cancel button
	Click Element Page    ${ALERT_BTN_CANCEL_LOCATOR}

Verify action : click Confirm button
	Log To Console    ${\n}=========== [Delete] UserAccount =============== 
	Wait Until Contains Element Should Be Visible    ${USERACCOUNT_COLUMN_ACTION}
	Mouse Down    ${USERACCOUNT_COLUMN_ACTION}
	Sleep    0.5s
	#Click delete button
    Click Delete Data TH    ${USERACCOUNT_ICON_DELETE_LOCATOR}    ${USERACCOUNT_ROLE_TH_VALUE_MR}${first_name_value} ${last_name_value}

	Wait Until Contains Input Text    ${USERACCOUNT_SEARCH_TXT_SEARCHFILTER_AUTOCOMPLETE_LOCATOR}   ${first_name_value}
	Sleep    0.5s
	#Click Search
	Click Element Page    ${USERACCOUNT_BTN_SEARCH_LOCATOR}	
    Wait Until Contains Element Text Should Be    ${USERACCOUNT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_TH}    #Nodata
	Sleep    1s	

################### Close Browser ###################
    [Teardown]    Close Browser 
