*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Create] Account ###################
M16_1_1_2_000_Account_Success_Create_VerifyAction [VerifyAction "Create Bank Account"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
    ...    3. click main Menu Account
    ...    4. click Account
    ...    5. click create button

    [Setup]    Open Browser To Login Page SCUser EN
        
    Log To Console    ${\n}=========== [Create] Account =============== 

    #========== Click main Menu Account ======
    Click Main Menu SCUser    ${MENU_LBL_ACCOUNT_LOCATOR}    ${MENU_LBL_ACCOUNT_EN}    ${ACCOUNT_SEARCH_LBL_HOME_SUBNAV_LOCATOR}    ${ACCOUNT_SEARCH_LBL_HOME_SUBNAV_EN}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_SUBNAV_LOCATOR}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_SUBNAV_EN}

    #Account Header
    Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_ACCOUNT_LOCATOR}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_EN} 
    
Verify action : click Create User Account [please fill all information]

    #Create data
    Create Account input all field data EN

	#Click delete button
	${identificationNo}=    Get Text String    ${ACCOUNT_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
	Log To Console    identificationNo${identificationNo}
	Mouse Down    ${ACCOUNT_BTN_MORE_LOCATOR}
    Click Delete Data EN    ${ACCOUNT_BTN_DELETE_LOCATOR}    ${identificationNo}

Verify action : click Create User Account [please fill require information]

    #Create data
    Create Account input require field data EN 

    #Click delete button
	${identificationNo}=    Get Text String    ${ACCOUNT_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
	Log To Console    identificationNo${identificationNo}
	Mouse Down    ${ACCOUNT_BTN_MORE_LOCATOR}
    Click Delete Data EN    ${ACCOUNT_BTN_DELETE_LOCATOR}    ${identificationNo}

Verify defualt value click "X" popup create.

    #Click Create account
    Click Element Page    ${ACCOUNT_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create Account
    Wait Until Contains Element Text Should Be    ${ACCOUNT_ADD_LBL_CREATEACCOUNT_LOCATOR}    ${ACCOUNT_ADD_LBL_CREATEACCOUNT_EN} 

    #Click X button	
    Click Element Page    ${ACCOUNT_BTN_CLOSE_LOCATOR}

	#Account Header
	Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_ACCOUNT_LOCATOR}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_EN} 

Verify defualt value click close popup create. [click cancel button]

    #Click Create account
    Click Element Page    ${ACCOUNT_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create Account
    Wait Until Contains Element Text Should Be    ${ACCOUNT_ADD_LBL_CREATEACCOUNT_LOCATOR}    ${ACCOUNT_ADD_LBL_CREATEACCOUNT_EN} 

	#Click Cancel button
    Click Element Page    ${ACCOUNT_ADDEDIT_BTN_CANCEL_LOCATOR}

	#Account Header
	Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_ACCOUNT_LOCATOR}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_EN} 

Verify defualt value click Create. [click checkbox : Permanent]

    #Click Create account
    Click Element Page    ${ACCOUNT_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create Account
    Wait Until Contains Element Text Should Be    ${ACCOUNT_ADD_LBL_CREATEACCOUNT_LOCATOR}    ${ACCOUNT_ADD_LBL_CREATEACCOUNT_EN} 

    # aria-checked : false 
    Wait Should Contain Get Element Attribute    ${ACCOUNT_ADD_CHK_PERMANENT_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${TRUE_LOWWER} 
    Wait Until Contains Element Should Be Disabled    ${ACCOUNT_ADD_DATE_EXPIREDATE_INPUT_LOCATOR}

Verify API onload and mapping data[Group Menu and Menu]

    # Check Permission Menu    
    Check Permission Menu    ${ACCOUNT_ADD_CHK_PERMISSION_MENU_LOCATOR}    ${ACCOUNT_ADD_LBL_PERMISSION_MENU_LOCATOR}    ${ACCOUNT_ADD_ICON_PERMISSION_MENU_LOCATOR}    ${ACCOUNT_ADD_LBL_PERMISSION_MENU_TOOLTIP_GROUPNAME_LOCATOR}    ${ACCOUNT_ADD_LBL_PERMISSION_MENU_TOOLTIP_ROLE_LOCATOR}    

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${ACCOUNT_CREATE_M16_1_1_2_000_SUCCESS_SCREENSHOT}
	
################### Close Browser ###################
    [Teardown]    Close Browser 
