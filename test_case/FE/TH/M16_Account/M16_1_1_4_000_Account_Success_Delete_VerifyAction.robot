*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Delete] BankAccountManagement ###################
M16_1_1_4_000_Account_Success_Delete_VerifyAction [VerifyAction "Delete Account"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
	...    2. login
    ...    3. click main Menu Account
    ...    4. click Account
    ...    5. click create button
    ...    6. click delete button

    [Setup]    Open Browser To Login Page SCUser
        
    Log To Console    ${\n}=========== [Create] Account =============== 

    #========== Click main Menu Account ======
    Click Main Menu SCUser    ${MENU_LBL_ACCOUNT_LOCATOR}    ${MENU_LBL_ACCOUNT_TH}    ${ACCOUNT_SEARCH_LBL_HOME_SUBNAV_LOCATOR}    ${ACCOUNT_SEARCH_LBL_HOME_SUBNAV_TH}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_SUBNAV_LOCATOR}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_SUBNAV_TH}

    #Account Header
    Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_ACCOUNT_LOCATOR}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_TH} 
    
	#========== Create Account ======
	Log To Console    ${\n}=========== [Create] Account ===============
	#Create data
    Create Account input require field data 
    Sleep    0.5s


Verify action : click Cancel button
    Mouse Down    ${ACCOUNT_BTN_MORE_LOCATOR}
    #Click Delete button
	Click Element Page    ${ACCOUNT_BTN_DELETE_LOCATOR}

    #Click Cancel button
	Click Element Page    ${ALERT_BTN_CANCEL_LOCATOR}

	#Account Header
    Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_ACCOUNT_LOCATOR}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_TH} 

Verify action : click Confirm button
	Log To Console    ${\n}=========== [Delete] Account =============== 

    ${identificationNo}=    Get Text String    ${ACCOUNT_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
	# Log To Console    identificationNo${identificationNo}
	Mouse Down    ${ACCOUNT_BTN_MORE_LOCATOR}

	#Click delete button
    Click Delete Data TH    ${ACCOUNT_BTN_DELETE_LOCATOR}    ${identificationNo}
	
	#================ Verify DB ================	
    # {dt:%Y}-{dt:%m}-{dt:%d}
    ${startDateNowDDMMYYYY_DB}=    Change format date now    ${YYYYMMDDD_NOW_-}
    Log To Console    startDateNowDDMMYYYY_DB${startDateNowDDMMYYYY_DB}
	Request Verify DB Check Data Delete Account    ${MYSQL_TYPE_DELETE_REQUIREDFIELD}    ${identificationNo}    ${ACCOUNT_NAME_VALUE}    ${ACCOUNT_MAXIMUMROOM__VALUE}    ${ACCOUNT_PHONE_VALUE}    ${ACCOUNT_TAXPAYERIDENTIFICATIONNO_VALUE}    ${startDateNowDDMMYYYY_DB}    ${NONE}


	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${ACCOUNT_DELETE_M16_1_1_4_000_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser 
