*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
Suite Setup    Set Library Search Order    Selenium2Library    AppiumLibrary

	
*** Test Cases ***
################### [Search] CheckUserAccount ###################
M3_1_1_1_000_UserAccount_Search_VerifyAction
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click User Account

    [Setup]    Open Browser To Login Page Super Admin EN
   	
    #========== Click Setting Menu CheckUserAccount ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_USERACCOUNT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_USERACCOUNT_EN}    ${MENU_LBL_SETTING_USERACCOUNT_LOCATOR}    ${MENU_LBL_SETTING_USERACCOUNT_EN}   ${USERACCOUNT_SEARCH_LBL_HEADER_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_HEADER_EN}    ${USERACCOUNT_SEARCH_LBL_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_HEADER_EN}
	

	#========== Create Check Asset Management ======
	Log To Console    ${\n}=========== [Create] Check UserAccount ===============
	#Create data
    Create User Account input all field data No Check Table EN


Verify API Onload and mapping data after click User Account

    #================ Check Value Table ================
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchUserAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check User Account    ${MYSQL_TYPE_CHECKUSERACCOUNT_SEARCH_ALL}   ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_USERACCOUNT_ORDERBY_CREATEAT_AND_UPDATEAT_DESC}
	Log To Console    resultSearchUserAccount::${resultSearchUserAccount}    
	Log    resultSearchUserAccount::${resultSearchUserAccount} 
	
	${dataSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[0]
	Log To Console    [dataSearchUserAccount] : ${dataSearchUserAccount}
	${rowcountSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[1]
	Log To Console    [rowcount SearchUserAccount] : ${rowcountSearchUserAccount}

	${checkNodata}=    Run Keyword If    '${rowcountSearchUserAccount}'=='0'    Wait Until Contains Element Text Should Be    ${USERACCOUNT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchUserAccount}'!='0'    Check Value Table Search User    ${DEFAULT_EN}     ${rowcountSearchUserAccount}    ${dataSearchUserAccount}

	Sleep    1s

Verify Action : click search button (Input data field First name and click search )
	Wait Until Contains Input Text    ${USERACCOUNT_SEARCH_TXT_SEARCHFILTER_AUTOCOMPLETE_LOCATOR}   ${first_name_value}
	Sleep    0.5s
	#Click Search
	Click Element Page    ${USERACCOUNT_BTN_SEARCH_LOCATOR}
	
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchUserAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check User Account    ${MYSQL_TYPE_USERACCOUNT_SEARCH_FIRSTNAME}    ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_USERACCOUNT_ORDERBY_CREATEAT_AND_UPDATEAT_DESC}
	Log To Console    resultSearchUserAccount::${resultSearchUserAccount}    
	Log    resultSearchUserAccount::${resultSearchUserAccount} 
	
	${dataSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[0]
	Log To Console    [dataSearchUserAccount] : ${dataSearchUserAccount}
	${rowcountSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[1]
	Log To Console    [rowcount SearchUserAccount] : ${rowcountSearchUserAccount}


	${checkNodata}=    Run Keyword If    '${rowcountSearchUserAccount}'=='0'    Wait Until Contains Element Text Should Be    ${USERACCOUNT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchUserAccount}'!='0'    Check Value Table Search User    ${DEFAULT_EN}     ${rowcountSearchUserAccount}    ${dataSearchUserAccount}

	Sleep    1s

    #Click Clear
	Click Element Page    ${USERACCOUNT_BTN_CLEAR_LOCATOR}


Verify Action : click search button (Input data field Last name and click search )
	Wait Until Contains Input Text    ${USERACCOUNT_SEARCH_TXT_SEARCHFILTER_AUTOCOMPLETE_LOCATOR}   ${last_name_value}
	Sleep    0.5s
	#Click Search
	Click Element Page    ${USERACCOUNT_BTN_SEARCH_LOCATOR}
	
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchUserAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check User Account    ${MYSQL_TYPE_USERACCOUNT_SEARCH_LASTNAME}   ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_USERACCOUNT_ORDERBY_CREATEAT_AND_UPDATEAT_DESC}
	Log To Console    resultSearchUserAccount::${resultSearchUserAccount}    
	Log    resultSearchUserAccount::${resultSearchUserAccount} 
	
	${dataSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[0]
	Log To Console    [dataSearchUserAccount] : ${dataSearchUserAccount}
	${rowcountSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[1]
	Log To Console    [rowcount SearchUserAccount] : ${rowcountSearchUserAccount}


	${checkNodata}=    Run Keyword If    '${rowcountSearchUserAccount}'=='0'    Wait Until Contains Element Text Should Be    ${USERACCOUNT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchUserAccount}'!='0'    Check Value Table Search User    ${DEFAULT_EN}     ${rowcountSearchUserAccount}    ${dataSearchUserAccount}

	Sleep    1s

    #Click Clear
	Click Element Page    ${USERACCOUNT_BTN_CLEAR_LOCATOR}


Verify Action : click search button (Input data field Email and click search)
	Wait Until Contains Input Text    ${USERACCOUNT_SEARCH_TXT_SEARCHFILTER_AUTOCOMPLETE_LOCATOR}   ${email_value}
	Sleep    0.5s
	#Click Search
	Click Element Page    ${USERACCOUNT_BTN_SEARCH_LOCATOR}
	
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchUserAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check User Account    ${MYSQL_TYPE_USERACCOUNT_SEARCH_EMAIL}  ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_USERACCOUNT_ORDERBY_CREATEAT_AND_UPDATEAT_DESC}
	Log To Console    resultSearchUserAccount::${resultSearchUserAccount}    
	Log    resultSearchUserAccount::${resultSearchUserAccount} 
	
	${dataSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[0]
	Log To Console    [dataSearchUserAccount] : ${dataSearchUserAccount}
	${rowcountSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[1]
	Log To Console    [rowcount SearchUserAccount] : ${rowcountSearchUserAccount}


	${checkNodata}=    Run Keyword If    '${rowcountSearchUserAccount}'=='0'    Wait Until Contains Element Text Should Be    ${USERACCOUNT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchUserAccount}'!='0'    Check Value Table Search User    ${DEFAULT_EN}     ${rowcountSearchUserAccount}    ${dataSearchUserAccount}

	Sleep    1s

    #Click Clear
	Click Element Page    ${USERACCOUNT_BTN_CLEAR_LOCATOR}


Verify Action : click search button (Input data field Role and click search)
	Wait Until Contains Input Text    ${USERACCOUNT_SEARCH_TXT_SEARCHFILTER_AUTOCOMPLETE_LOCATOR}   ${USERACCOUNT_ROLE_EN_VALUE1}
	Sleep    0.5s
	#Click Search
	Click Element Page    ${USERACCOUNT_BTN_SEARCH_LOCATOR}
	
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchUserAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check User Account    ${MYSQL_TYPE_USERACCOUNT_SEARCH_ROLENAME_EN}   ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_USERACCOUNT_ORDERBY_CREATEAT_AND_UPDATEAT_DESC}
	Log To Console    resultSearchUserAccount::${resultSearchUserAccount}    
	Log    resultSearchUserAccount::${resultSearchUserAccount} 
	
	${dataSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[0]
	Log To Console    [dataSearchUserAccount] : ${dataSearchUserAccount}
	${rowcountSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[1]
	Log To Console    [rowcount SearchUserAccount] : ${rowcountSearchUserAccount}


	${checkNodata}=    Run Keyword If    '${rowcountSearchUserAccount}'=='0'    Wait Until Contains Element Text Should Be    ${USERACCOUNT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchUserAccount}'!='0'    Check Value Table Search User    ${DEFAULT_EN}     ${rowcountSearchUserAccount}    ${dataSearchUserAccount}

	Sleep    1s

    #Click Clear
	Click Element Page    ${USERACCOUNT_BTN_CLEAR_LOCATOR}

Verify Action : click search button (Select data field Property Manager dropdown and click search )

	#Property Manager
	Select Dropdown    ${USERACCOUNT_SEARCH_DDL_PROPERTYMANAGER_LOCATOR}    ${USERACCOUNT_SEARCH_DDL_PROPERTYMANAGER_LIST_LOCATOR}    ${USERACCOUNT_SEARCH_DDL_PROPERTYMANAGER_CLASS_LOCATOR}    ${USERACCOUNT_SEARCH_EN_PROPERTYMANAGER_VALUE2}
	Sleep    0.5s
	#Click Search
	Click Element Page    ${USERACCOUNT_BTN_SEARCH_LOCATOR}
	
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchUserAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check User Account    ${MYSQL_TYPE_USERACCOUNT_SEARCH_PROPERTIES_EN}   ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_USERACCOUNT_ORDERBY_CREATEAT_AND_UPDATEAT_DESC}
	Log To Console    resultSearchUserAccount::${resultSearchUserAccount}    
	Log    resultSearchUserAccount::${resultSearchUserAccount} 
	
	${dataSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[0]
	Log To Console    [dataSearchUserAccount] : ${dataSearchUserAccount}
	${rowcountSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[1]
	Log To Console    [rowcount SearchUserAccount] : ${rowcountSearchUserAccount}


	${checkNodata}=    Run Keyword If    '${rowcountSearchUserAccount}'=='0'    Wait Until Contains Element Text Should Be    ${USERACCOUNT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchUserAccount}'!='0'    Check Value Table Search User    ${DEFAULT_EN}     ${rowcountSearchUserAccount}    ${dataSearchUserAccount}

	Sleep    1s

    #Click Clear
	Click Element Page    ${USERACCOUNT_BTN_CLEAR_LOCATOR}


Verify Action : click search button (Input data field First name and click search, Then Click Clear )
	Wait Until Contains Input Text    ${USERACCOUNT_SEARCH_TXT_SEARCHFILTER_AUTOCOMPLETE_LOCATOR}   ${first_name_value}
	Sleep    0.5s
	#Click Search
	Click Element Page    ${USERACCOUNT_BTN_SEARCH_LOCATOR}
    #Click Clear
	Click Element Page    ${USERACCOUNT_BTN_CLEAR_LOCATOR}

	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchUserAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check User Account    ${MYSQL_TYPE_CHECKUSERACCOUNT_SEARCH_ALL}   ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_USERACCOUNT_ORDERBY_CREATEAT_AND_UPDATEAT_DESC}
	Log To Console    resultSearchUserAccount::${resultSearchUserAccount}    
	Log    resultSearchUserAccount::${resultSearchUserAccount} 
	
	${dataSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[0]
	Log To Console    [dataSearchUserAccount] : ${dataSearchUserAccount}
	${rowcountSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[1]
	Log To Console    [rowcount SearchUserAccount] : ${rowcountSearchUserAccount}


	${checkNodata}=    Run Keyword If    '${rowcountSearchUserAccount}'=='0'    Wait Until Contains Element Text Should Be    ${USERACCOUNT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchUserAccount}'!='0'    Check Value Table Search User    ${DEFAULT_EN}     ${rowcountSearchUserAccount}    ${dataSearchUserAccount}

	Sleep    1s

Verify Action : click create button
	#Click Create
	Click Element Page    ${USERACCOUNT_BTN_ADD_LOCATOR}
	Sleep    0.5s
	
	#Create Bank Account Information
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_HEADER_CREATEUSERACCOUNT_LOCATOR}  ${USERACCOUNT_ADDEDIT_LBL_HEADER_CREATEUSERACCOUNT_EN}
    
	#Click Cancel button
    Click Element Page    ${USERACCOUNT_ADDEDIT_BTN_CANCEL_LOCATOR}

Verify Action : click edit button
	#Click Edit Bank account
	Wait Until Contains Element Should Be Visible    ${USERACCOUNT_COLUMN_ACTION}
	Mouse Down    ${USERACCOUNT_COLUMN_ACTION}
	Click Element Page    ${USERACCOUNT_ICON_EDIT_LOCATOR}
	Sleep    0.5s
	
	#Edit Bank Account Information
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_HEADER_EDITCREATEUSERACCOUNT_LOCATOR}   ${USERACCOUNT_ADDEDIT_LBL_HEADER_EDITCREATEUSERACCOUNT_EN} 
	
	#Click Cancel button
    Click Element Page    ${USERACCOUNT_ADDEDIT_BTN_CANCEL_LOCATOR}

Verify Action : click delete button
	#Click Edit Bank account
	Wait Until Contains Element Should Be Visible    ${USERACCOUNT_COLUMN_ACTION}
	Mouse Down    ${USERACCOUNT_COLUMN_ACTION}
	#Click Element Page    ${USERACCOUNT_ICON_DELETE_LOCATOR}
	Sleep    0.5s
	
    Check Popup Confirm Delete EN    ${USERACCOUNT_ICON_DELETE_LOCATOR}    ${USERACCOUNT_ROLE_EN_VALUE_MR}${first_name_value} ${last_name_value}
	#Sleep    0.5s
	#Click Cancel button
    #Click Element Page    ${USERACCOUNT_DELETE_BTN_CANCEL_LOCATOR}


Verify Action : click 50 button

    #Click 50 button
	Click Element Page    ${USERACCOUNT_BTN_50_LOCATOR}

    #================ Check Value Table ================
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchUserAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check User Account    ${MYSQL_TYPE_CHECKUSERACCOUNT_SEARCH_ALL}  ${LIMIT_50}    ${OFFSET_0}    ${DB_TB_USERACCOUNT_ORDERBY_CREATEAT_AND_UPDATEAT_DESC}
	Log To Console    resultSearchUserAccount::${resultSearchUserAccount}    
	Log    resultSearchUserAccount::${resultSearchUserAccount} 
	
	${dataSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[0]
	Log To Console    [dataSearchUserAccount] : ${dataSearchUserAccount}
	#
	${rowcountSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[1]
	Log To Console    [rowcount SearchUserAccount] : ${rowcountSearchUserAccount}


	${checkNodata}=    Run Keyword If    '${rowcountSearchUserAccount}'=='0'    Wait Until Contains Element Text Should Be    ${USERACCOUNT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchUserAccount}'!='0'    Check Value Table Search User    ${DEFAULT_EN}     ${rowcountSearchUserAccount}    ${dataSearchUserAccount}

	Sleep    1s

Verify Action : click 100 button

    #Click 100 button
	Click Element Page    ${USERACCOUNT_BTN_100_LOCATOR}

    #================ Check Value Table ================
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchUserAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check User Account    ${MYSQL_TYPE_CHECKUSERACCOUNT_SEARCH_ALL}   ${LIMIT_100}    ${OFFSET_0}    ${DB_TB_USERACCOUNT_ORDERBY_CREATEAT_AND_UPDATEAT_DESC}
	Log To Console    resultSearchUserAccount::${resultSearchUserAccount}    
	Log    resultSearchUserAccount::${resultSearchUserAccount} 
	
	${dataSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[0]
	Log To Console    [dataSearchUserAccount] : ${dataSearchUserAccount}
	${rowcountSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[1]
	Log To Console    [rowcount SearchUserAccount] : ${rowcountSearchUserAccount}


	${checkNodata}=    Run Keyword If    '${rowcountSearchUserAccount}'=='0'    Wait Until Contains Element Text Should Be    ${USERACCOUNT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchUserAccount}'!='0'    Check Value Table Search User    ${DEFAULT_EN}     ${rowcountSearchUserAccount}    ${dataSearchUserAccount}

	Sleep    1s

Verify Action : click 1000 button

    #Click 1000 button
	Click Element Page    ${USERACCOUNT_BTN_1000_LOCATOR}

    #================ Check Value Table ================
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchUserAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check User Account    ${MYSQL_TYPE_CHECKUSERACCOUNT_SEARCH_ALL}   ${LIMIT_1000}    ${OFFSET_0}    ${DB_TB_USERACCOUNT_ORDERBY_CREATEAT_AND_UPDATEAT_DESC}
	Log To Console    resultSearchUserAccount::${resultSearchUserAccount}    
	Log    resultSearchUserAccount::${resultSearchUserAccount} 
	
	${dataSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[0]
	Log To Console    [dataSearchUserAccount] : ${dataSearchUserAccount}
	${rowcountSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[1]
	Log To Console    [rowcount SearchUserAccount] : ${rowcountSearchUserAccount}


	${checkNodata}=    Run Keyword If    '${rowcountSearchUserAccount}'=='0'    Wait Until Contains Element Text Should Be    ${USERACCOUNT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchUserAccount}'!='0'    Check Value Table Search User    ${DEFAULT_EN}     ${rowcountSearchUserAccount}    ${dataSearchUserAccount}

    #Click 20 button
	Click Element Page    ${USERACCOUNT_BTN_20_LOCATOR}
	Sleep    1s

Verify Action : click icon > (Next page) 

    #================ Check Value Table ================
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchUserAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check User Account    ${MYSQL_TYPE_CHECKUSERACCOUNT_SEARCH_ALL}   ${LIMIT_1000}    ${OFFSET_0}    ${DB_TB_USERACCOUNT_ORDERBY_CREATEAT_AND_UPDATEAT_DESC}
	Log To Console    resultSearchUserAccount::${resultSearchUserAccount}    
	Log    resultSearchUserAccount::${resultSearchUserAccount} 
	
	${dataSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[0]
	Log To Console    [dataSearchUserAccount] : ${dataSearchUserAccount}
	${rowcountSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[1]
	Log To Console    [rowcount SearchUserAccount] : ${rowcountSearchUserAccount}
    
	#current page1
	#Click Next Page
	Run Keyword If    ${rowcountSearchUserAccount}>20    Click Element Page    ${USERACCOUNT_BTN_NEXTPAGE_LOCATOR}
	Run Keyword If    ${rowcountSearchUserAccount}<=20     Log To Console    Next Page is Disable
	Sleep    1s


Verify Action : click icon < (Previos page) 

    #current page2
	#Click Next Page
	Click Element Page    ${USERACCOUNT_BTN_PREVIOSPAGE_LOCATOR}
	Sleep    1s

Verify Action : No data
 
	Wait Until Contains Input Text    ${USERACCOUNT_SEARCH_TXT_SEARCHFILTER_AUTOCOMPLETE_LOCATOR}   ${USERACCOUNT_ADDEDIT_TXT_FIRSTNAME_VALUE_NOTFOUND}
	Sleep    0.5s
	#Click Search
	Click Element Page    ${USERACCOUNT_BTN_SEARCH_LOCATOR}

	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchUserAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check User Account    ${MYSQL_TYPE_USERACCOUNT_SEARCH_FIRSTNAME_NOTFOUND}  ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_USERACCOUNT_ORDERBY_CREATEAT_AND_UPDATEAT_DESC}
	Log To Console    resultSearchUserAccount::${resultSearchUserAccount}    
	Log    resultSearchUserAccount::${resultSearchUserAccount} 
	
	${dataSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[0]
	Log To Console    [dataSearchUserAccount] : ${dataSearchUserAccount}
	${rowcountSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[1]
	Log To Console    [rowcount SearchUserAccount] : ${rowcountSearchUserAccount}


	${checkNodata}=    Run Keyword If    '${rowcountSearchUserAccount}'=='0'    Wait Until Contains Element Text Should Be    ${USERACCOUNT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchUserAccount}'!='0'    Check Value Table Search User    ${DEFAULT_EN}     ${rowcountSearchUserAccount}    ${dataSearchUserAccount}

	Sleep    1s

Delete Data
	#Delete data
	Update tb users set delete_at    ${userId}    ${USERACCOUNT_DELETETAT_VALUE}    ${USERACCOUNT_FILENAME_VALUE}
	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${USERACCOUNT_SEARCH_M3_1_1_1_000_SUCCESS_SCREENSHOT}


################### Close Browser ###################
    [Teardown]    Close Browser 