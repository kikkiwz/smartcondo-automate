*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [View] Account ###################
M16_1_1_5_000_Account_Success_View_VerifyAction [VerifyAction "View Account"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
    ...    3. click main Menu Account
    ...    4. click Account
    ...    5. click create button
    ...    6. click view button
    ...    7. click delete button

    [Setup]    Open Browser To Login Page SCUser EN
        
    Log To Console    ${\n}=========== [Create] Account =============== 

    #========== Click main Menu Account ======
    Click Main Menu SCUser    ${MENU_LBL_ACCOUNT_LOCATOR}    ${MENU_LBL_ACCOUNT_EN}    ${ACCOUNT_SEARCH_LBL_HOME_SUBNAV_LOCATOR}    ${ACCOUNT_SEARCH_LBL_HOME_SUBNAV_EN}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_SUBNAV_LOCATOR}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_SUBNAV_EN}

    #Account Header
    Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_ACCOUNT_LOCATOR}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_EN} 
    
	#========== Create Account ======
	Log To Console    ${\n}=========== [Create] Account ===============
	#Create data
    Create Account input all field data EN 
    Sleep    0.5s

	Log To Console    ${\n}=========== [View] Account =============== 
	#Click View account
	Wait Until Contains Element Should Be Visible    ${ACCOUNT_BTN_MORE_LOCATOR}
    Mouse Down    ${ACCOUNT_BTN_MORE_LOCATOR}
	Click Element Page    ${ACCOUNT_BTN_VIEW_LOCATOR}
	Sleep    0.5s
	
	#View Account
	Wait Until Contains Element Text Should Be    ${ACCOUNT_VIEW_LBL_VIEWACCOUNT_LOCATOR}    ${ACCOUNT_VIEW_LBL_VIEWACCOUNT_EN} 
	
	#close button
	Wait Until Contains Element Should Be Visible    ${ACCOUNT_BTN_CLOSE_LOCATOR}
    
    ${identificationNo}=    Get Text String    ${ACCOUNT_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
	# Log To Console    identificationNo${identificationNo}

    #Account Name* [Value]
	Wait Should Contain Get Element Attribute    ${ACCOUNT_VIEW_TXT_ACCOUNTNAME_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${identificationNo}

	#Name* [Value]
	Wait Should Contain Get Element Attribute    ${ACCOUNT_VIEW_TXT_NAME_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${ACCOUNT_NAME_VALUE}
    
    #Maximum Room* [Value]
	Wait Should Contain Get Element Attribute    ${ACCOUNT_VIEW_TXT_MAXIMUMROOM_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${ACCOUNT_MAXIMUMROOM_VALUE}
    
    #Phone* [Value]
	Wait Should Contain Get Element Attribute    ${ACCOUNT_VIEW_TXT_PHONE_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${ACCOUNT_PHONE_VALUE}
    
    #Taxpayer Identification No* [Value]
	Wait Should Contain Get Element Attribute    ${ACCOUNT_VIEW_TXT_TAXPAYERIDENTIFICATIONNO_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${ACCOUNT_TAXPAYERIDENTIFICATIONNO_VALUE}
    
    #Start Date* [Value]
	${startDateNowYYYYMMDD_FORMAT_T}=    Change format date now    ${YYYYMMDDD_NOW_-}
    Log To Console    startDateNowYYYYMMDD_FORMAT_T${startDateNowYYYYMMDD_FORMAT_T}
	Wait Should Contain Get Element Attribute    ${ACCOUNT_VIEW_DATE_STARTDATE_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${startDateNowYYYYMMDD_FORMAT_T}${HMS_TZ}
    
    #Expire Date [Value]
	#2021-11-22T00:00:00.000Z
    ${expireDateNowDDMMYYYY_ADDSUB_FORMAT_T}=    Value Add date    ${YYYYMMDD_-_ADDSUB}    ${DATE_TYPE_ADD}    ${RANGE_DAY} 
    Log To Console    expireDateNowDDMMYYYY_ADDSUB_FORMAT_T${expireDateNowDDMMYYYY_ADDSUB_FORMAT_T}
	Wait Should Contain Get Element Attribute    ${ACCOUNT_VIEW_DATE_EXPIREDATE_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${expireDateNowDDMMYYYY_ADDSUB_FORMAT_T}${HMS_TZ}

    # Check Permission Menu    
    Check Permission Menu    ${ACCOUNT_VIEW_CHK_PERMISSION_MENU_LOCATOR}    ${ACCOUNT_VIEW_LBL_PERMISSION_MENU_LOCATOR}    ${ACCOUNT_VIEW_ICON_PERMISSION_MENU_LOCATOR}    ${ACCOUNT_VIEW_LBL_PERMISSION_MENU_TOOLTIP_GROUPNAME_LOCATOR}    ${ACCOUNT_VIEW_LBL_PERMISSION_MENU_TOOLTIP_ROLE_LOCATOR}
    # value
	Wait Should Contain Get Element Attribute    ${ACCOUNT_VIEW_CHK_PERMISSION0_ID_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${TRUE_LOWWER}
    
	#================ Verify DB ================	
	# {dt:%Y}-{dt:%m}-{dt:%d}
    ${startDateNowDDMMYYYY_DB}=    Change format date now    ${YYYYMMDDD_NOW_-}
    Log To Console    startDateNowDDMMYYYY_DB${startDateNowDDMMYYYY_DB}

	${expireDateNowYYYYMMDD_ADDSUB_DB}=    Value Add date    ${YYYYMMDD_-_ADDSUB}    ${DATE_TYPE_ADD}    ${RANGE_DAY}
    Log To Console    expireDateNow${expireDateNowYYYYMMDD_ADDSUB_DB}

	Request Verify DB Check Data View Account    ${MYSQL_TYPE_VIEW_ALLFIELD}    ${identificationNo}    ${ACCOUNT_NAME_VALUE}    ${ACCOUNT_MAXIMUMROOM__VALUE}    ${ACCOUNT_PHONE_VALUE}    ${ACCOUNT_TAXPAYERIDENTIFICATIONNO_VALUE}    ${startDateNowDDMMYYYY_DB}    ${expireDateNowYYYYMMDD_ADDSUB_DB}
    
Verify Action : click X button   
	
    #Click X button	
    Click Element Page    ${ACCOUNT_BTN_CLOSE_LOCATOR}

	#Account Header
    Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_ACCOUNT_LOCATOR}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_EN} 

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${ACCOUNT_VIEW_M16_1_1_5_000_SUCCESS_SCREENSHOT}
	
################### Generic Test Case Teardown ###################
	[Teardown]    Generic Test Case Teardown Account EN
