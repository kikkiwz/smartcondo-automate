*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Search] Account ###################
M16_0_1_1_000_Account_Success_Search_VerifyScreen [Verify screen page "Search Account"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click main Menu Account
	...    4. click Account

    [Setup]    Open Browser To Login Page SCUser EN
   	
	Log To Console    ${\n}=========== [Search] Account =============== 	

    #========== Click main Menu Account ======
	Click Main Menu SCUser    ${MENU_LBL_ACCOUNT_LOCATOR}    ${MENU_LBL_ACCOUNT_EN}    ${ACCOUNT_SEARCH_LBL_HOME_SUBNAV_LOCATOR}    ${ACCOUNT_SEARCH_LBL_HOME_SUBNAV_EN}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_SUBNAV_LOCATOR}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_SUBNAV_EN}

	#Account Header
	Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_ACCOUNT_LOCATOR}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_EN} 
	
	#========== Check Account ======
	#Create button
	Wait Until Contains Element Text Should Be    ${ACCOUNT_BTN_CREATE_LOCATOR}    ${ACCOUNT_BTN_CREATE_EN} 

	#Start Date
	Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_STARTDATE_LOCATOR}    ${ACCOUNT_SEARCH_LBL_STARTDATE_EN} 
	#Expire Date
	Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_EXPIREDATE_LOCATOR}    ${ACCOUNT_SEARCH_LBL_EXPIREDATE_EN} 
	#Account Name, Name, Phone
	Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_ACCOUNTNAMENAMEPHONE_LOCATOR}    ${ACCOUNT_SEARCH_LBL_ACCOUNTNAMENAMEPHONE_EN} 
	
	#Search button
	Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_BTN_SEARCH_LOCATOR}    ${ACCOUNT_SEARCH_BTN_SEARCH_EN} 
	Wait Until Contains Element Should Be Enabled    ${ACCOUNT_SEARCH_BTN_SEARCH_LOCATOR}
	#Clear button
	Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_BTN_CLEAR_LOCATOR}    ${ACCOUNT_SEARCH_BTN_CLEAR_EN} 
	Wait Until Contains Element Should Be Enabled    ${ACCOUNT_SEARCH_BTN_CLEAR_LOCATOR}

	#No
	Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_RESULT_NO_LOCATOR}    ${ACCOUNT_SEARCH_LBL_RESULT_NO_EN} 
	#Account Name
	Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_RESULT_ACCOUNTNAME_LOCATOR}    ${ACCOUNT_SEARCH_LBL_RESULT_ACCOUNTNAME_EN} 
	#Name
	Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_RESULT_NAME_LOCATOR}    ${ACCOUNT_SEARCH_LBL_RESULT_NAME_EN} 
	#Phone
	Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_RESULT_PHONE_LOCATOR}    ${ACCOUNT_SEARCH_LBL_RESULT_PHONE_EN} 
	#Maximum Room
	Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_RESULT_MAXIMUMROOM_LOCATOR}    ${ACCOUNT_SEARCH_LBL_RESULT_MAXIMUMROOM_EN} 
	#Start Date
	Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_RESULT_STARTDATE_LOCATOR}    ${ACCOUNT_SEARCH_LBL_RESULT_STARTDATE_EN} 
	#Expire Date
	Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_RESULT_EXPIREDATE_LOCATOR}    ${ACCOUNT_SEARCH_LBL_RESULT_EXPIREDATE_EN} 
	
	#================ Check Value Table ================
	Check Value Table Account

Verify over 255 Length. Textbox : Account Name, Name, Phone Type : string 
	# Type : string 
	Wait Should Contain Get Element Attribute    ${ACCOUNT_SEARCH_TXT_ACCOUNTNAMENAMEPHONE_LOCATOR}    ${ATTRIBUTE_TYPE}    ${DEFAULT_TYPE_TEXT} 
    Wait Until Contains Element Should Be Enabled    ${ACCOUNT_SEARCH_TXT_ACCOUNTNAMENAMEPHONE_LOCATOR}

Verify over 255 Length. calendar : Start Date : string 
	# Type : string 
	Wait Should Contain Get Element Attribute    ${ACCOUNT_SEARCH_INPUT_STARTDATE_LOCATOR}    ${ATTRIBUTE_TYPE}    ${DEFAULT_TYPE_TEXT} 
    Wait Until Contains Element Should Be Enabled    ${ACCOUNT_SEARCH_INPUT_STARTDATE_LOCATOR}

Verify over 255 Length. calendar : Expire Date : string 
	# Type : string 
	Wait Should Contain Get Element Attribute    ${ACCOUNT_SEARCH_INPUT_EXPIREDATE_LOCATOR}    ${ATTRIBUTE_TYPE}    ${DEFAULT_TYPE_TEXT} 
    Wait Until Contains Element Should Be Enabled    ${ACCOUNT_SEARCH_INPUT_EXPIREDATE_LOCATOR}

Verify screen check wording tool tip View
    #view icon
	Wait Until Contains Element Should Be Visible    ${ACCOUNT_BTN_MORE_LOCATOR}
    Mouse Down    ${ACCOUNT_BTN_MORE_LOCATOR}
	Mouse Down    ${ACCOUNT_BTN_VIEW_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${ACCOUNT_LBL_VIEW_EN_LOCATOR}    ${ACCOUNT_LBL_VIEW_EN} 
Verify screen check wording tool tip Edit 
    #edit icon
	Wait Until Contains Element Should Be Visible    ${ACCOUNT_BTN_EDIT_LOCATOR}
	Mouse Down    ${ACCOUNT_BTN_EDIT_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${ACCOUNT_LBL_EDIT_EN_LOCATOR}    ${ACCOUNT_LBL_EDIT_EN} 

Verify screen check wording tool tip Delete
    #delete icon
	Wait Until Contains Element Should Be Visible    ${ACCOUNT_BTN_DELETE_LOCATOR}
	Mouse Down    ${ACCOUNT_BTN_DELETE_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${ACCOUNT_LBL_DELETE_EN_LOCATOR}    ${ACCOUNT_LBL_DELETE_EN} 

Verify default number button
    #20
    Wait Until Contains Element Text Should Be    ${ACCOUNT_BTN_20_LOCATOR}    ${ACCOUNT_BTN_20} 
    #50
    Wait Until Contains Element Text Should Be    ${ACCOUNT_BTN_50_LOCATOR}    ${ACCOUNT_BTN_50} 
    #100
    Wait Until Contains Element Text Should Be    ${ACCOUNT_BTN_100_LOCATOR}    ${ACCOUNT_BTN_100} 
    #1000
    Wait Until Contains Element Text Should Be    ${ACCOUNT_BTN_1000_LOCATOR}    ${ACCOUNT_BTN_1000} 
    
	#paging
	${replacePage}=    Paging Replace    ${rowcountSearchAccount}
	${paging}=    Set Variable    ${replacePage[1]}
	Wait Until Contains Element Text Should Be    ${ACCOUNT_LBL_PagesXFromY_LOCATOR}    ${paging}

	Wait Until Contains Element Should Be Visible    ${ACCOUNT_ICON_ARRORWLEFT_LOCATOR}
	Wait Until Contains Element Text Should Be    ${ACCOUNT_LBL_PAGE_LOCATOR}    ${ACCOUNT_LBL_PAGE_1}
	Wait Until Contains Element Should Be Visible    ${ACCOUNT_ICON_ARRORWRIGHT_LOCATOR}

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${ACCOUNT_SEARCH_M16_0_1_1_000_SUCCESS_SCREENSHOT}
	
################## Close Browser ###################
    [Teardown]    Close Browser 