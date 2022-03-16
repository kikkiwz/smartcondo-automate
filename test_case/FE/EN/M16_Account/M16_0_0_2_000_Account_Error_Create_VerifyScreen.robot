*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Create] Account ###################
M16_0_0_2_000_Account_Error_Create_VerifyScreen [Verify wording required field]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click Bank Account Management
    ...    5. click create button
    ...    6. click save button
	
    [Setup]    Open Browser To Login Page SCUser EN
        
    Log To Console    ${\n}=========== [Create] Account =============== 

    #========== Click main Menu Account ======
    Click Main Menu SCUser    ${MENU_LBL_ACCOUNT_LOCATOR}    ${MENU_LBL_ACCOUNT_EN}    ${ACCOUNT_SEARCH_LBL_HOME_SUBNAV_LOCATOR}    ${ACCOUNT_SEARCH_LBL_HOME_SUBNAV_EN}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_SUBNAV_LOCATOR}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_SUBNAV_EN}

    #Click Create account
    Click Element Page    ${ACCOUNT_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create Account
    Wait Until Contains Element Text Should Be    ${ACCOUNT_ADD_LBL_CREATEACCOUNT_LOCATOR}    ${ACCOUNT_ADD_LBL_CREATEACCOUNT_EN} 

    #Account Header
    Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_ACCOUNT_LOCATOR}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_EN} 

    #Click Save button
	Click Element Page    ${ACCOUNT_ADDEDIT_BTN_SAVE_LOCATOR}

Verify wording required field [Name]
	#Name *
	Wait Until Contains Element Text Should Be    ${ACCOUNT_ADD_LBL_NAME_VALID_LOCATOR}    ${VALID_LBL_PLEASEINPUTDATA_EN} 

Verify wording required field [Maximum Room]
    #Maximum Room *
	Wait Until Contains Element Text Should Be    ${ACCOUNT_ADD_LBL_MAXIMUMROOM_VALID_LOCATOR}    ${VALID_LBL_PLEASEINPUTDATA_EN} 

Verify wording required field [Phone]
    #Phone *
	Wait Until Contains Element Text Should Be    ${ACCOUNT_ADD_LBL_PHONE_VALID_LOCATOR}    ${VALID_LBL_PLEASEINPUTDATA_EN} 

Verify wording required field [Taxpayer Identification No]
    #Taxpayer Identification No *
	Wait Until Contains Element Text Should Be    ${ACCOUNT_ADD_LBL_TAXPAYERIDENTIFICATIONNO_VALID_LOCATOR}    ${VALID_LBL_PLEASEINPUTDATA_EN} 

Verify wording required field [Start Date]
    #Start Date *
	Wait Until Contains Element Text Should Be    ${ACCOUNT_ADD_DATE_STARTDATE_VALID_LOCATOR}    ${VALID_LBL_PLEASEINPUTDATA_EN} 

Verify wording required field [Expire Date]
    #Click Permanent
    Click Element Page    ${ACCOUNT_ADD_CHK_PERMANENT_LOCATOR}

    #Expire Date
	Wait Until Contains Element Text Should Be    ${ACCOUNT_ADD_DATE_EXPIREDATE_VALID_LOCATOR}    ${VALID_LBL_PLEASEINPUTDATA_EN} 

Verify wording required field [Group Menu Name]
    Wait Until Contains Element Text Should Be    ${ACCOUNT_ADD_LBL_PERMISSION_MENU_VALID_LOCATOR}    ${VALID_LBL_PLEASESELECTDATA2_EN} 

Verify wording invalid field [Phone]
    #Phone *
    Wait Until Contains Input Text    ${ACCOUNT_ADD_TXT_PHONE_LOCATOR}    ${ACCOUNT_PHONE_INVALID_VALUE}
    #Click Save button
	Click Element Page    ${ACCOUNT_ADD_LBL_PHONE_VALID_LOCATOR}
	Wait Until Contains Element Text Should Be    ${ACCOUNT_ADD_LBL_PHONE_FORMATVALID_LOCATOR}    ${VALID_LBL_PHONEISNOTVALID_EN} 

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${ACCOUNT_CREATE_M16_0_0_2_000_ERROR_SCREENSHOT}
	
################### Close Browser ###################
    [Teardown]    Close Browser 
