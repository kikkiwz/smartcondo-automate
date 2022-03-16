*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Delete] BankAccountManagement ###################
M16_0_1_4_000_Account_Success_Delete_VerifyScreen [Verify screen popup "confirm: Delete" ]
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

	Log To Console    ${\n}=========== [Delete] BankAccountManagement =============== 

    ${identificationNo}=    Get Text String    ${ACCOUNT_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
	# Log To Console    identificationNo${identificationNo}
	Mouse Down    ${ACCOUNT_BTN_MORE_LOCATOR}

	#Click delete button and Check Popup Delete 
	Check Popup Delete TH    ${ACCOUNT_BTN_DELETE_LOCATOR}    ${identificationNo}

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${ACCOUNT_DELETE_M16_0_1_4_000_SUCCESS_SCREENSHOT}

################### Generic Test Case Teardown ###################
	[Teardown]    Generic Test Case Teardown Account

