*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [View] Account ###################
M16_0_1_5_000_Account_Success_View_VerifyScreen [Verify screen page "View Account"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
    ...    3. click main Menu Account
    ...    4. click Account
    ...    5. click create button
    ...    6. click view button
    ...    7. click delete button

    [Setup]    Open Browser To Login Page SCUser
        
    Log To Console    ${\n}=========== [Create] Account =============== 

    #========== Click main Menu Account ======
    Click Main Menu SCUser    ${MENU_LBL_ACCOUNT_LOCATOR}    ${MENU_LBL_ACCOUNT_TH}    ${ACCOUNT_SEARCH_LBL_HOME_SUBNAV_LOCATOR}    ${ACCOUNT_SEARCH_LBL_HOME_SUBNAV_TH}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_SUBNAV_LOCATOR}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_SUBNAV_TH}

    #Account Header
    Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_ACCOUNT_LOCATOR}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_TH} 
    
	#========== Create Account ======
	Log To Console    ${\n}=========== [Create] Account ===============
	#Create data
    Create Account input all field data

	Log To Console    ${\n}=========== [View] Account =============== 
	#Click View Bank account
    Wait Until Contains Element Should Be Visible    ${ACCOUNT_BTN_MORE_LOCATOR}
    Mouse Down    ${ACCOUNT_BTN_MORE_LOCATOR}
	Click Element Page    ${ACCOUNT_BTN_VIEW_LOCATOR}
	Sleep    0.5s
	
	#View Account
	Wait Until Contains Element Text Should Be    ${ACCOUNT_VIEW_LBL_VIEWACCOUNT_LOCATOR}    ${ACCOUNT_VIEW_LBL_VIEWACCOUNT_TH} 
	
	#close button
	Wait Until Contains Element Should Be Visible    ${ACCOUNT_BTN_CLOSE_LOCATOR}
    
    ${identificationNo}=    Get Text String    ${ACCOUNT_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
	# Log To Console    identificationNo${identificationNo}

    #Account Name*
    Wait Until Contains Get Text Split String Join    ${ACCOUNT_VIEW_LBL_ACCOUNTNAME_LOCATOR}    ${ACCOUNT_VIEW_LBL_ACCOUNTNAME_TH} 
    Wait Until Contains Element Should Be Disabled    ${ACCOUNT_VIEW_INPUT_ACCOUNTNAME_LOCATOR}
    #value
	Wait Should Contain Get Element Attribute    ${ACCOUNT_VIEW_TXT_ACCOUNTNAME_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${identificationNo}

	#Name*
    Wait Until Contains Get Text Split String Join    ${ACCOUNT_VIEW_LBL_NAME_LOCATOR}    ${ACCOUNT_VIEW_LBL_NAME_TH} 
    Wait Until Contains Element Should Be Disabled    ${ACCOUNT_VIEW_INPUT_NAME_LOCATOR}
    #value
	Wait Should Contain Get Element Attribute    ${ACCOUNT_VIEW_TXT_NAME_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${ACCOUNT_NAME_VALUE}
    
    #Maximum Room*
    Wait Until Contains Get Text Split String Join    ${ACCOUNT_VIEW_LBL_MAXIMUMROOM_LOCATOR}    ${ACCOUNT_VIEW_LBL_MAXIMUMROOM_TH} 
    Wait Until Contains Element Should Be Disabled    ${ACCOUNT_VIEW_INPUT_MAXIMUMROOM_LOCATOR}
    #value
	Wait Should Contain Get Element Attribute    ${ACCOUNT_VIEW_TXT_MAXIMUMROOM_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${ACCOUNT_MAXIMUMROOM_VALUE}
    
    #Phone*
    Wait Until Contains Get Text Split String Join    ${ACCOUNT_VIEW_LBL_PHONE_LOCATOR}    ${ACCOUNT_VIEW_LBL_PHONE_TH} 
    Wait Until Contains Element Should Be Disabled    ${ACCOUNT_VIEW_INPUT_PHONE_LOCATOR}
    #value
	Wait Should Contain Get Element Attribute    ${ACCOUNT_VIEW_TXT_PHONE_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${ACCOUNT_PHONE_VALUE}
    
    #Taxpayer Identification No*
    Wait Until Contains Get Text Split String Join    ${ACCOUNT_VIEW_LBL_TAXPAYERIDENTIFICATIONNO_LOCATOR}    ${ACCOUNT_VIEW_LBL_TAXPAYERIDENTIFICATIONNO_TH} 
    Wait Until Contains Element Should Be Disabled    ${ACCOUNT_VIEW_INPUT_TAXPAYERIDENTIFICATIONNO_LOCATOR}
    #value
	Wait Should Contain Get Element Attribute    ${ACCOUNT_VIEW_TXT_TAXPAYERIDENTIFICATIONNO_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${ACCOUNT_TAXPAYERIDENTIFICATIONNO_VALUE}
    
    #Start Date*
    ${startDateNowYYYYMMDD_FORMAT_T}=    Change format date now    ${YYYYMMDDD_NOW_-}
    Log To Console    startDateNowYYYYMMDD_FORMAT_T${startDateNowYYYYMMDD_FORMAT_T}
    Wait Until Contains Get Text Split String Join    ${ACCOUNT_VIEW_LBL_STARTDATE_LOCATOR}    ${ACCOUNT_VIEW_LBL_STARTDATE_TH} 
    Wait Until Contains Element Should Be Disabled    ${ACCOUNT_VIEW_DATE_STARTDATE_INPUT_LOCATOR}
    #value
	Wait Should Contain Get Element Attribute    ${ACCOUNT_VIEW_DATE_STARTDATE_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${startDateNowYYYYMMDD_FORMAT_T}${HMS_TZ}
    
    #Expire Date 
    #2021-11-22T00:00:00.000Z
    ${expireDateNowDDMMYYYY_ADDSUB}=    Value Add date    ${YYYYMMDD_-_ADDSUB}    ${DATE_TYPE_ADD}    ${RANGE_DAY} 
    Log To Console    expireDateNowDDMMYYYY_ADDSUB${expireDateNowDDMMYYYY_ADDSUB}
    Wait Until Contains Get Text Split String Join    ${ACCOUNT_VIEW_LBL_EXPIREDATE_LOCATOR}    ${ACCOUNT_VIEW_LBL_EXPIREDATE_TH} 
    Wait Until Contains Element Should Be Visible    ${ACCOUNT_VIEW_DATE_EXPIREDATE_INPUT_LOCATOR}
    #value
	Wait Should Contain Get Element Attribute    ${ACCOUNT_VIEW_DATE_EXPIREDATE_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${expireDateNowDDMMYYYY_ADDSUB}${HMS_TZ}
    
    #Permanent 
    Wait Until Contains Element Text Should Be    ${ACCOUNT_VIEW_CHK_PERMANENT_LOCATOR}    ${ACCOUNT_VIEW_LBL_PERMANENT_TH} 

    #Permission
    Wait Until Contains Element Text Should Be    ${ACCOUNT_VIEW_LBL_PERMISSION_LOCATOR}    ${ACCOUNT_VIEW_LBL_PERMISSION_TH} 
    
    # Check Permission Menu    
    Check Permission Menu    ${ACCOUNT_VIEW_CHK_PERMISSION_MENU_LOCATOR}    ${ACCOUNT_VIEW_LBL_PERMISSION_MENU_LOCATOR}    ${ACCOUNT_VIEW_ICON_PERMISSION_MENU_LOCATOR}    ${ACCOUNT_VIEW_LBL_PERMISSION_MENU_TOOLTIP_GROUPNAME_LOCATOR}    ${ACCOUNT_VIEW_LBL_PERMISSION_MENU_TOOLTIP_ROLE_LOCATOR}
    #value
	Wait Should Contain Get Element Attribute    ${ACCOUNT_VIEW_CHK_PERMISSION0_ID_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${TRUE_LOWWER}
    
    #Property
    Wait Until Contains Element Text Should Be    ${ACCOUNT_VIEW_LBL_PROPERTY_LOCATOR}    ${ACCOUNT_VIEW_LBL_PROPERTY_TH} 

    #No
    Wait Until Contains Element Text Should Be    ${ACCOUNT_VIEW_LBL_RESULT_NO_LOCATOR}    ${ACCOUNT_VIEW_LBL_RESULT_NO_TH} 
    #Property Name
    Wait Until Contains Element Text Should Be    ${ACCOUNT_VIEW_LBL_RESULT_PROPERTYNAME_LOCATOR}    ${ACCOUNT_VIEW_LBL_RESULT_PROPERTYNAME_TH} 

	#Click Close button
	Click Element Page    ${ACCOUNT_BTN_CLOSE_LOCATOR}

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${ACCOUNT_VIEW_M16_0_1_5_000_SUCCESS_SCREENSHOT}

################### Generic Test Case Teardown ###################
	[Teardown]    Generic Test Case Teardown Account


