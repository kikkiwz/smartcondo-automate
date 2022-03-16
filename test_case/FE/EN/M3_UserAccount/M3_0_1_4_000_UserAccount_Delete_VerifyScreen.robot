*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
Suite Setup    Set Library Search Order    Selenium2Library    AppiumLibrary

*** Test Cases ***
################### [Delete] BankAccountManagement ###################
M3_0_1_4_000_UserAccount_Delete_VerifyScreen [Verify screen popup "confirm: Delete"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click user Account
	...    5. click create button
	...    6. click delete button
	
    [Setup]    Open Browser To Login Page Super Admin EN
   	
    #========== Click Setting Menu CheckUserAccount ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_USERACCOUNT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_USERACCOUNT_EN}    ${MENU_LBL_SETTING_USERACCOUNT_LOCATOR}    ${MENU_LBL_SETTING_USERACCOUNT_EN}   ${USERACCOUNT_SEARCH_LBL_HEADER_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_HEADER_EN}    ${USERACCOUNT_SEARCH_LBL_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_HEADER_EN}
	

	#========== Create Check Asset Management ======
	Log To Console    ${\n}=========== [Create] Check UserAccount ===============
	#Create data
    Create User Account input all field data No Check Table EN
    Sleep    0.5s

Verify screen popup "confirm: Delete"
	Wait Until Contains Element Should Be Visible    ${USERACCOUNT_COLUMN_ACTION}
	Mouse Down    ${USERACCOUNT_COLUMN_ACTION}
	#Click Element Page    ${USERACCOUNT_ICON_DELETE_LOCATOR}
	Sleep    0.5s
	
    Check Popup Confirm Delete EN    ${USERACCOUNT_ICON_DELETE_LOCATOR}    ${USERACCOUNT_ROLE_EN_VALUE_MR}${first_name_value} ${last_name_value}
	Sleep    0.5s

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${USERACCOUNT_SEARCH_M3_0_1_4_000_SUCCESS_SCREENSHOT}
################### Close Browser ###################
    [Teardown]    Close Browser 
