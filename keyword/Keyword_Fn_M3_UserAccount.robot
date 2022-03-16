*** Keywords ***
################################################################-- Set Data for check value table Bank Account Management--################################################################
Set Data for check value table User TH
    #Set field header table To Array
	${numCol}=    Convert To Integer    ${USERACCOUNT_SEARCH_NUMCOL}
	#Set field header table To Array
	@{fieldArrDataTable}=    Create List	
	Append To List    ${fieldArrDataTable}    @{USERACCOUNT_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_TH}
	#Set Num field To Array
	@{arrNumfield}=    Create List	
	Append To List    ${arrNumfield}    ${numCol-4}    ${numCol-3}    ${numCol-2}    ${numCol-1}
	#Set Num Col To Array
	@{arrNumCol}=    Create List	
	Append To List    ${arrNumCol}    ${numCol-3}    ${numCol-2}    ${numCol-1}    ${numCol}
	[Return]    ${numCol}    ${fieldArrDataTable}    ${arrNumfield}    ${arrNumCol}

Set Data for check value table User EN
    #Set field header table To Array
	${numCol}=    Convert To Integer    ${USERACCOUNT_SEARCH_NUMCOL}
	#Set field header table To Array
	@{fieldArrDataTable}=    Create List	
	Append To List    ${fieldArrDataTable}    @{USERACCOUNT_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_EN}
	# Append To List    ${fieldArrDataTable}    no    banknameEn    bankAccountType    bankAccountName    bankAccountPromptPayNumber    status
	#Set Num field To Array
	@{arrNumfield}=    Create List	
	Append To List    ${arrNumfield}    ${numCol-4}    ${numCol-3}    ${numCol-2}    ${numCol-1}
	Log List    ${arrNumfield}
	#Set Num Col To Array
	@{arrNumCol}=    Create List	
	Append To List    ${arrNumCol}    ${numCol-3}    ${numCol-2}    ${numCol-1}    ${numCol}
	Log List    ${arrNumCol}
	[Return]    ${numCol}    ${fieldArrDataTable}    ${arrNumfield}    ${arrNumCol}

Check Table UserAccount EN
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
	[Return]    ${rowcountSearchUserAccount}

Check Table UserAccount TH
    #Inquiry for verify DB  
    ${resultSearchUserAccount}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check User Account    ${MYSQL_TYPE_CHECKUSERACCOUNT_SEARCH_ALL}   ${LIMIT_20}    ${OFFSET_0}    ${DB_TB_USERACCOUNT_ORDERBY_CREATEAT_AND_UPDATEAT_DESC}
	Log To Console    resultSearchUserAccount::${resultSearchUserAccount}    
	Log    resultSearchUserAccount::${resultSearchUserAccount} 
	
	${dataSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[0]
	Log To Console    [dataSearchUserAccount] : ${dataSearchUserAccount}
	${rowcountSearchUserAccount}=    Set Variable    ${resultSearchUserAccount}[1]
	Log To Console    [rowcount SearchUserAccount] : ${rowcountSearchUserAccount}

	${checkNodata}=    Run Keyword If    '${rowcountSearchUserAccount}'=='0'    Wait Until Contains Element Text Should Be    ${USERACCOUNT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    ${DEFAULT_LBL_NODATA_EN}    #Nodata
    ...    ELSE IF    '${rowcountSearchUserAccount}'!='0'    Check Value Table Search User    ${DEFAULT_TH}     ${rowcountSearchUserAccount}    ${dataSearchUserAccount}

	Sleep    1s
	Set Global Variable    ${rowcountSearchUserAccount}    ${rowcountSearchUserAccount}
	[Return]    ${rowcountSearchUserAccount}


Create User Account input all field data No Check Table EN
    #Click Create User Account
	Click Element Page    ${USERACCOUNT_BTN_ADD_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_HEADER_CREATEUSERACCOUNT_LOCATOR}    ${USERACCOUNT_ADDEDIT_LBL_HEADER_CREATEUSERACCOUNT_EN} 
	
	#role *
	Set Global Variable    ${role}    ${USERACCOUNT_ROLE_EN_VALUE1}
	Select Dropdown    ${USERACCOUNT_ADDEDIT_DDL_ROLE_LOCATOR}    ${USERACCOUNT_ADDEDIT_DDL_ROLE_LIST_LOCATOR}    ${USERACCOUNT_ADDEDIT_DDL_ROLE_CLASS_LOCATOR}    ${role}
	Sleep    0.5s
	#prefix
	Set Global Variable    ${prefix}    ${USERACCOUNT_ROLE_EN_VALUE_MR}
	Select Dropdown    ${USERACCOUNT_ADDEDIT_DDL_PREFIX_LOCATOR}   ${USERACCOUNT_ADDEDIT_DDL_PREFIX_LIST_LOCATOR}    ${USERACCOUNT_ADDEDIT_DDL_ROLE_CLASS_LOCATOR}    ${prefix}
	Sleep    0.5s
	#First name *
	${random_number}=    generate random string    5    [NUMBERS]
	Set Global Variable    ${first_name_value}    ${USERACCOUNT_ADDEDIT_TXT_FIRSTNAME_VALUE}${random_number}
	Set Global Variable    ${last_name_value}    ${USERACCOUNT_ADDEDIT_TXT_LASTNAME_VALUE}${random_number}
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_FIRSTNAME_LOCATOR}    ${first_name_value}
	Sleep    0.5s
	#Last name *
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_LASTNAME_LOCATOR}    ${last_name_value}
	Sleep    0.5s
	#Phone number *
	${random_phoneNumber}=    generate random string    8    [NUMBERS]
	Set Global Variable    ${phone_number_value}    ${USERACCOUNT_ADDEDIT_TXT_PHONENUMBER_VALUE_PREFIX08}${random_phoneNumber}
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_PHONENUMBER_LOCATOR}    ${phone_number_value}
	Sleep    2s
	#E-mail
	${random_string}=    Generate Random String  3  [NUMBERS]
	Set Global Variable    ${email_value}    Automate_${random_string}@gmail.com
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_EMAIL_LOCATOR}    ${email_value}
	Sleep    0.5s
	#Identification No. / Passport No. *
	${random_Identification}=    generate random string    13    [NUMBERS]
	Set Global Variable    ${Identification_value}    ${random_Identification}    
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_IDENTITYFICATIONORPASSPORT_LOCATOR}    ${Identification_value}
	Sleep    0.5s	
	#Select Project Access
    Click Element Page    ${USERACCOUNT_ADDEDIT_CHK_PROPERTYNAME_LOCATOR}
 	Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)

    #Click Save button
    Click Element Page    ${BANKACCOUNTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}

    Sleep    2s
	#alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

Create User Account input all field data No Check Table TH
    #Click Create User Account
	Click Element Page    ${USERACCOUNT_BTN_ADD_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_HEADER_CREATEUSERACCOUNT_LOCATOR}    ${USERACCOUNT_ADDEDIT_LBL_HEADER_CREATEUSERACCOUNT_TH} 
	
	#role *
	Set Global Variable    ${role}    ${USERACCOUNT_ROLE_TH_VALUE1}
	Select Dropdown    ${USERACCOUNT_ADDEDIT_DDL_ROLE_LOCATOR}    ${USERACCOUNT_ADDEDIT_DDL_ROLE_LIST_LOCATOR}    ${USERACCOUNT_ADDEDIT_DDL_ROLE_CLASS_LOCATOR}    ${role}
	Sleep    0.5s
	#prefix
	Set Global Variable    ${prefix}    ${USERACCOUNT_ROLE_TH_VALUE_MR}
	Select Dropdown    ${USERACCOUNT_ADDEDIT_DDL_PREFIX_LOCATOR}   ${USERACCOUNT_ADDEDIT_DDL_PREFIX_LIST_LOCATOR}    ${USERACCOUNT_ADDEDIT_DDL_ROLE_CLASS_LOCATOR}    ${prefix}
	Sleep    0.5s
	#First name *
	${random_number}=    generate random string    5    [NUMBERS]
	Set Global Variable    ${first_name_value}    ${USERACCOUNT_ADDEDIT_TXT_FIRSTNAME_VALUE}${random_number}
	Set Global Variable    ${last_name_value}    ${USERACCOUNT_ADDEDIT_TXT_LASTNAME_VALUE}${random_number}
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_FIRSTNAME_LOCATOR}    ${first_name_value}
	Sleep    0.5s
	#Last name *
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_LASTNAME_LOCATOR}    ${last_name_value}
	Sleep    0.5s
	#Phone number *
	${random_phoneNumber}=    generate random string    8    [NUMBERS]
	Set Global Variable    ${phone_number_value}    ${USERACCOUNT_ADDEDIT_TXT_PHONENUMBER_VALUE_PREFIX08}${random_phoneNumber}
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_PHONENUMBER_LOCATOR}    ${phone_number_value}
	Sleep    2s
	#E-mail
	${random_string}=    Generate Random String  3  [NUMBERS]
	Set Global Variable    ${email_value}    Automate_${random_string}@gmail.com
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_EMAIL_LOCATOR}    ${email_value}
	Sleep    0.5s
	#Identification No. / Passport No. *
	${random_Identification}=    generate random string    13    [NUMBERS]
	Set Global Variable    ${Identification_value}    ${random_Identification}    
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_IDENTITYFICATIONORPASSPORT_LOCATOR}    ${Identification_value}
	Sleep    0.5s	
	#Select Project Access
    Click Element Page    ${USERACCOUNT_ADDEDIT_CHK_PROPERTYNAME_LOCATOR}
 	Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)

    #Click Save button
    Click Element Page    ${BANKACCOUNTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}

    Sleep    2s
	#alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}


Create User Account input require field data No Check Table EN
    #Click Create User Account
	Click Element Page    ${USERACCOUNT_BTN_ADD_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_HEADER_CREATEUSERACCOUNT_LOCATOR}    ${USERACCOUNT_ADDEDIT_LBL_HEADER_CREATEUSERACCOUNT_EN} 
	
	#role *
	Set Global Variable    ${role}    ${USERACCOUNT_ROLE_EN_VALUE1}
	Select Dropdown    ${USERACCOUNT_ADDEDIT_DDL_ROLE_LOCATOR}    ${USERACCOUNT_ADDEDIT_DDL_ROLE_LIST_LOCATOR}    ${USERACCOUNT_ADDEDIT_DDL_ROLE_CLASS_LOCATOR}    ${role}
	Sleep    0.5s
	#First name *
	${random_number}=    generate random string    5    [NUMBERS]
	Set Global Variable    ${first_name_value}    ${USERACCOUNT_ADDEDIT_TXT_FIRSTNAME_VALUE}${random_number}
	Set Global Variable    ${last_name_value}    ${USERACCOUNT_ADDEDIT_TXT_LASTNAME_VALUE}${random_number}
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_FIRSTNAME_LOCATOR}    ${first_name_value}
	Sleep    0.5s
	
	#Phone number *
	${random_phoneNumber}=    generate random string    8    [NUMBERS]
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_PHONENUMBER_LOCATOR}    ${USERACCOUNT_ADDEDIT_TXT_PHONENUMBER_VALUE_PREFIX08}${random_phoneNumber}
	Sleep    2s
	#Identification No. / Passport No. *
	${random_Identification}=    generate random string    13    [NUMBERS]
	Set Global Variable    ${Identification_value}    ${random_Identification}    
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_IDENTITYFICATIONORPASSPORT_LOCATOR}    ${Identification_value}
	Sleep    0.5s	

	#Select Project Access
    Click Element Page    ${USERACCOUNT_ADDEDIT_CHK_PROPERTYNAME_LOCATOR}

    #Click Save button
    Click Element Page    ${BANKACCOUNTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}

    Sleep    2s
	#alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

Create User Account input require field data No Check Table TH
    #Click Create User Account
	Click Element Page    ${USERACCOUNT_BTN_ADD_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_HEADER_CREATEUSERACCOUNT_LOCATOR}    ${USERACCOUNT_ADDEDIT_LBL_HEADER_CREATEUSERACCOUNT_TH} 
	
	#role *
	Set Global Variable    ${role}    ${USERACCOUNT_ROLE_TH_VALUE1}
	Select Dropdown    ${USERACCOUNT_ADDEDIT_DDL_ROLE_LOCATOR}    ${USERACCOUNT_ADDEDIT_DDL_ROLE_LIST_LOCATOR}    ${USERACCOUNT_ADDEDIT_DDL_ROLE_CLASS_LOCATOR}    ${role}
	Sleep    0.5s
	#First name *
	${random_number}=    generate random string    5    [NUMBERS]
	Set Global Variable    ${first_name_value}    ${USERACCOUNT_ADDEDIT_TXT_FIRSTNAME_VALUE}${random_number}
	Set Global Variable    ${last_name_value}    ${USERACCOUNT_ADDEDIT_TXT_LASTNAME_VALUE}${random_number}
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_FIRSTNAME_LOCATOR}    ${first_name_value}
	Sleep    0.5s
	
	#Phone number *
	${random_phoneNumber}=    generate random string    8    [NUMBERS]
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_PHONTHUMBER_LOCATOR}    ${USERACCOUNT_ADDEDIT_TXT_PHONTHUMBER_VALUE_PREFIX08}${random_phoneNumber}
	Sleep    2s
	#Identification No. / Passport No. *
	${random_Identification}=    generate random string    13    [NUMBERS]
	Set Global Variable    ${Identification_value}    ${random_Identification}    
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_IDTHTITYFICATIONORPASSPORT_LOCATOR}    ${Identification_value}
	Sleep    0.5s	

	#Select Project Access
    Click Element Page    ${USERACCOUNT_ADDEDIT_CHK_PROPERTYNAME_LOCATOR}

    #Click Save button
    Click Element Page    ${BANKACCOUNTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}

    Sleep    2s
	#alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

Verify Action : click X button
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEASSET_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEASSET_EN}
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_BTN_CLOSE_LOCATOR}


Verify Action : click cancel button
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}
	Wait Until Contains Element Text Should Be    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEASSET_LOCATOR}    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEASSET_EN}
	Click Element Page    ${ASSETMANAGEMENTINFORMATION_ADDEDIT_BTN_CANCEL_LOCATOR}

Edit User Account input all field data No Check Table EN
    #Edit icon
	Wait Until Contains Element Should Be Visible    ${USERACCOUNT_COLUMN_ACTION}
	Mouse Down    ${USERACCOUNT_COLUMN_ACTION}
	Wait Until Contains Element Should Be Visible    ${USERACCOUNT_ICON_EDIT_LOCATOR}
	Click Element Page     ${USERACCOUNT_ICON_EDIT_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_HEADER_EDITCREATEUSERACCOUNT_LOCATOR}    ${USERACCOUNT_ADDEDIT_LBL_HEADER_EDITCREATEUSERACCOUNT_EN} 
	
	#role *
	Set Global Variable    ${role}    ${USERACCOUNT_ROLE_EN_VALUE2}
	Select Dropdown    ${USERACCOUNT_ADDEDIT_DDL_ROLE_LOCATOR}    ${USERACCOUNT_ADDEDIT_DDL_ROLE_LIST_LOCATOR}    ${USERACCOUNT_ADDEDIT_DDL_ROLE_CLASS_LOCATOR}    ${USERACCOUNT_ROLE_EN_VALUE2}
	Sleep    0.5s
	#prefix
	Set Global Variable    ${prefix}    ${USERACCOUNT_ROLE_EN_VALUE_MRS}
	Select Dropdown    ${USERACCOUNT_ADDEDIT_DDL_PREFIX_LOCATOR}   ${USERACCOUNT_ADDEDIT_DDL_PREFIX_LIST_LOCATOR}    ${USERACCOUNT_ADDEDIT_DDL_ROLE_CLASS_LOCATOR}    ${prefix}
	Sleep    0.5s
	#First name *
	${random_number}=    generate random string    5    [NUMBERS]
	Set Global Variable    ${first_name_value}    ${USERACCOUNT_ADDEDIT_TXT_FIRSTNAME_VALUE}${random_number}
	Set Global Variable    ${last_name_value}    ${USERACCOUNT_ADDEDIT_TXT_LASTNAME_VALUE}${random_number}
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_FIRSTNAME_LOCATOR}    ${first_name_value}
	Sleep    0.5s
	#Last name *
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_LASTNAME_LOCATOR}    ${last_name_value}
	Sleep    0.5s
	#Phone number *
	${random_phoneNumber}=    generate random string    8    [NUMBERS]
	Set Global Variable    ${phone_number_value}    ${USERACCOUNT_ADDEDIT_TXT_PHONENUMBER_VALUE_PREFIX08}${random_phoneNumber}
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_PHONENUMBER_LOCATOR}    ${phone_number_value}
	Sleep    2s
	#E-mail
	${random_string}=    Generate Random String  3  [NUMBERS]
	Set Global Variable    ${email_value}    Automate_${random_string}@gmail.com
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_EMAIL_LOCATOR}    ${email_value}
	Sleep    0.5s
	#Identification No. / Passport No. *
	${random_Identification}=    generate random string    13    [NUMBERS]
	Set Global Variable    ${Identification_value}    ${random_Identification}    
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_IDENTITYFICATIONORPASSPORT_LOCATOR}    ${Identification_value}
	Sleep    0.5s	
	#Select Project Access
    Click Element Page    ${USERACCOUNT_ADDEDIT_CHK_PROPERTYNAME_LOCATOR_Value1}
    Click Element Page    ${USERACCOUNT_ADDEDIT_CHK_PROPERTYNAME_LOCATOR_Value2}
 	Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)

    #Click Save button
    Click Element Page    ${BANKACCOUNTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}

    Sleep    2s
	#alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

Edit User Account input all field data No Check Table TH
    #Edit icon
	Wait Until Contains Element Should Be Visible    ${USERACCOUNT_COLUMN_ACTION}
	Mouse Down    ${USERACCOUNT_COLUMN_ACTION}
	Wait Until Contains Element Should Be Visible    ${USERACCOUNT_ICON_EDIT_LOCATOR}
	Click Element Page     ${USERACCOUNT_ICON_EDIT_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_HEADER_EDITCREATEUSERACCOUNT_LOCATOR}    ${USERACCOUNT_ADDEDIT_LBL_HEADER_EDITCREATEUSERACCOUNT_TH} 
	
	#role *
	Set Global Variable    ${role}    ${USERACCOUNT_ROLE_TH_VALUE1}
	Select Dropdown    ${USERACCOUNT_ADDEDIT_DDL_ROLE_LOCATOR}    ${USERACCOUNT_ADDEDIT_DDL_ROLE_LIST_LOCATOR}    ${USERACCOUNT_ADDEDIT_DDL_ROLE_CLASS_LOCATOR}    ${role}
	Sleep    0.5s
	#prefix
	Set Global Variable    ${prefix}    ${USERACCOUNT_ROLE_TH_VALUE_MRS}
	Select Dropdown    ${USERACCOUNT_ADDEDIT_DDL_PREFIX_LOCATOR}   ${USERACCOUNT_ADDEDIT_DDL_PREFIX_LIST_LOCATOR}    ${USERACCOUNT_ADDEDIT_DDL_ROLE_CLASS_LOCATOR}    ${prefix}
	Sleep    0.5s
	#First name *
	${random_number}=    generate random string    5    [NUMBERS]
	Set Global Variable    ${first_name_value}    ${USERACCOUNT_ADDEDIT_TXT_FIRSTNAME_VALUE}${random_number}
	Set Global Variable    ${last_name_value}    ${USERACCOUNT_ADDEDIT_TXT_LASTNAME_VALUE}${random_number}
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_FIRSTNAME_LOCATOR}    ${first_name_value}
	Sleep    0.5s
	#Last name *
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_LASTNAME_LOCATOR}    ${last_name_value}
	Sleep    0.5s
	#Phone number *
	${random_phoneNumber}=    generate random string    8    [NUMBERS]
	Set Global Variable    ${phone_number_value}    ${USERACCOUNT_ADDEDIT_TXT_PHONENUMBER_VALUE_PREFIX08}${random_phoneNumber}
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_PHONENUMBER_LOCATOR}   ${phone_number_value}
	Sleep    2s
	#E-mail
	${random_string}=    Generate Random String  3  [NUMBERS]
	Set Global Variable    ${email_value}    Automate_${random_string}@gmail.com
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_EMAIL_LOCATOR}    ${email_value}
	Sleep    0.5s
	#Identification No. / Passport No. *
	${random_Identification}=    generate random string    13    [NUMBERS]
	Set Global Variable    ${Identification_value}    ${random_Identification}    
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_IDENTITYFICATIONORPASSPORT_LOCATOR}    ${Identification_value}
	Sleep    0.5s	
	#Select Project Access
    Click Element Page    ${USERACCOUNT_ADDEDIT_CHK_PROPERTYNAME_LOCATOR_Value1}
    Click Element Page    ${USERACCOUNT_ADDEDIT_CHK_PROPERTYNAME_LOCATOR_Value2}
 	Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)

    #Click Save button
    Click Element Page    ${BANKACCOUNTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}

    Sleep    2s
	#alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}


Create User Account And Login
    #Click Create User Account
	Click Element Page    ${USERACCOUNT_BTN_ADD_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_HEADER_CREATEUSERACCOUNT_LOCATOR}    ${USERACCOUNT_ADDEDIT_LBL_HEADER_CREATEUSERACCOUNT_EN} 
	
	#role *
	Set Global Variable    ${role}    ${USERACCOUNT_ROLE_EN_VALUE1}
	Select Dropdown    ${USERACCOUNT_ADDEDIT_DDL_ROLE_LOCATOR}    ${USERACCOUNT_ADDEDIT_DDL_ROLE_LIST_LOCATOR}    ${USERACCOUNT_ADDEDIT_DDL_ROLE_CLASS_LOCATOR}    ${role}
	Sleep    0.5s
	#prefix
	Set Global Variable    ${prefix}    ${USERACCOUNT_ROLE_EN_VALUE_MR}
	Select Dropdown    ${USERACCOUNT_ADDEDIT_DDL_PREFIX_LOCATOR}   ${USERACCOUNT_ADDEDIT_DDL_PREFIX_LIST_LOCATOR}    ${USERACCOUNT_ADDEDIT_DDL_ROLE_CLASS_LOCATOR}    ${prefix}
	Sleep    0.5s
	#First name *
	${random_number}=    generate random string    5    [NUMBERS]
	Set Global Variable    ${first_name_value}    ${USERACCOUNT_ADDEDIT_TXT_FIRSTNAME_VALUE}${random_number}
	Set Global Variable    ${last_name_value}    ${USERACCOUNT_ADDEDIT_TXT_LASTNAME_VALUE}${random_number}
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_FIRSTNAME_LOCATOR}    ${first_name_value}
	Sleep    0.5s
	#Last name *
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_LASTNAME_LOCATOR}    ${last_name_value}
	Sleep    0.5s
	#Phone number *
	${random_phoneNumber}=    generate random string    8    [NUMBERS]
	Set Global Variable    ${phone_number_value}    ${USERACCOUNT_ADDEDIT_TXT_PHONENUMBER_VALUE_PREFIX08}${random_phoneNumber}
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_PHONENUMBER_LOCATOR}    ${phone_number_value}
	Sleep    2s
	#E-mail
	${random_string}=    Generate Random String  3  [NUMBERS]
	Set Global Variable    ${email_value}    Automate_${random_string}@gmail.com
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_EMAIL_LOCATOR}    ${email_value}
	Sleep    0.5s
	#Identification No. / Passport No. *
	${random_Identification}=    generate random string    13    [NUMBERS]
	Set Global Variable    ${Identification_value}    ${random_Identification}    
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_IDENTITYFICATIONORPASSPORT_LOCATOR}    ${Identification_value}
	Sleep    0.5s	
	#Select Project Access
    Click Element Page    ${USERACCOUNT_ADDEDIT_CHK_PROPERTYNAME_LOCATOR}
 	Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)

    #Click Save button
    Click Element Page    ${BANKACCOUNTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}

    Sleep    2s
	#alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}


	#search properties id
	${query}=    Set Variable    select identification_no,password from users WHERE first_name = "${first_name_value}"
	${path}=    Set Variable    ${EXECDIR}/sql/useraccount_search_property.sql    
	Create File    ${path}    ${query}
	${passwordDB}=    Start Connect To MySql Query All List    ${query}    ${EMPTY}
	Log    ${passwordDB[0][0][1]}
	${identification_no_str}=    Convert To String    ${passwordDB[0][0][0]}
	${passwordDB_str}=    Convert To String    ${passwordDB[0][0][1]} 
    ${password}=    Evaluate    base64.b64decode("${passwordDB_str}")    modules=base64
    Log    ${password}
	${password_str}=    Convert To String    ${password} 
	Set Global Variable    ${current_pass}    ${password_str}
    #logout
	Wait Until Contains Element Should Be Visible    ${USERINFO_BTN_USERNAME_LOGIN_LOCATOR}
	Mouse Down    ${USERINFO_BTN_USERNAME_LOGIN_LOCATOR}
    Click Element Page    ${USERACCOUNT_BTN_LOGOUT_LOCATOR}
	Sleep    2s
	#Confrim pdpa
	Update Terms and conditions    ${identification_no_str}	
	#login
	Wait Until Contains Input Text    ${LOGIN_TXT_USERNAME_LOCATOR}    ${identification_no_str}
	Sleep    2s
	Wait Until Contains Input Text    ${LOGIN_TXT_PASSWORD_LOCATOR}    ${password_str}
	Sleep    2s
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR}	
	Sleep    2s
	#Project of Building
	Wait Until Contains Element Text Should Be    ${HOME_LBL_PROJECTOFBUILDING_LOCATOR}    ${HOME_LBL_PROJECTOFBUILDING_EN} 

Create User Account And Login TH
    #Click Create User Account
	Click Element Page    ${USERACCOUNT_BTN_ADD_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_HEADER_CREATEUSERACCOUNT_LOCATOR}    ${USERACCOUNT_ADDEDIT_LBL_HEADER_CREATEUSERACCOUNT_TH} 
	
	#role *
	Set Global Variable    ${role}    ${USERACCOUNT_ROLE_TH_VALUE1}
	Select Dropdown    ${USERACCOUNT_ADDEDIT_DDL_ROLE_LOCATOR}    ${USERACCOUNT_ADDEDIT_DDL_ROLE_LIST_LOCATOR}    ${USERACCOUNT_ADDEDIT_DDL_ROLE_CLASS_LOCATOR}    ${role}
	Sleep    0.5s
	#prefix
	Set Global Variable    ${prefix}    ${USERACCOUNT_ROLE_TH_VALUE_MR}
	Select Dropdown    ${USERACCOUNT_ADDEDIT_DDL_PREFIX_LOCATOR}   ${USERACCOUNT_ADDEDIT_DDL_PREFIX_LIST_LOCATOR}    ${USERACCOUNT_ADDEDIT_DDL_ROLE_CLASS_LOCATOR}    ${prefix}
	Sleep    0.5s
	#First name *
	${random_number}=    generate random string    5    [NUMBERS]
	Set Global Variable    ${first_name_value}    ${USERACCOUNT_ADDEDIT_TXT_FIRSTNAME_VALUE}${random_number}
	Set Global Variable    ${last_name_value}    ${USERACCOUNT_ADDEDIT_TXT_LASTNAME_VALUE}${random_number}
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_FIRSTNAME_LOCATOR}    ${first_name_value}
	Sleep    0.5s
	#Last name *
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_LASTNAME_LOCATOR}    ${last_name_value}
	Sleep    0.5s
	#Phone number *
	${random_phoneNumber}=    generate random string    8    [NUMBERS]
	Set Global Variable    ${phone_number_value}    ${USERACCOUNT_ADDEDIT_TXT_PHONENUMBER_VALUE_PREFIX08}${random_phoneNumber}
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_PHONENUMBER_LOCATOR}    ${phone_number_value}
	Sleep    2s
	#E-mail
	${random_string}=    Generate Random String  3  [NUMBERS]
	Set Global Variable    ${email_value}    Automate_${random_string}@gmail.com
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_EMAIL_LOCATOR}    ${email_value}
	Sleep    0.5s
	#Identification No. / Passport No. *
	${random_Identification}=    generate random string    13    [NUMBERS]
	Set Global Variable    ${Identification_value}    ${random_Identification}    
	Wait Until Contains Input Text    ${USERACCOUNT_ADDEDIT_TXT_IDENTITYFICATIONORPASSPORT_LOCATOR}    ${Identification_value}
	Sleep    0.5s	
	#Select Project Access
    Click Element Page    ${USERACCOUNT_ADDEDIT_CHK_PROPERTYNAME_LOCATOR}
 	Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)

    #Click Save button
    Click Element Page    ${BANKACCOUNTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}

    Sleep    2s
	#alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}


	#search properties id
	${query}=    Set Variable    select identification_no,password from users WHERE first_name = "${first_name_value}"
	${path}=    Set Variable    ${EXECDIR}/sql/useraccount_search_property.sql    
	Create File    ${path}    ${query}
	${passwordDB}=    Start Connect To MySql Query All List    ${query}    ${EMPTY}
	Log    ${passwordDB[0][0][1]}
	${identification_no_str}=    Convert To String    ${passwordDB[0][0][0]}
	${passwordDB_str}=    Convert To String    ${passwordDB[0][0][1]} 
    ${password}=    Evaluate    base64.b64decode("${passwordDB_str}")    modules=base64
    Log    ${password}
	${password_str}=    Convert To String    ${password} 
	Set Global Variable    ${current_pass}    ${password_str}
    #logout
	Wait Until Contains Element Should Be Visible    ${USERINFO_BTN_USERNAME_LOGIN_LOCATOR}
	Mouse Down    ${USERINFO_BTN_USERNAME_LOGIN_LOCATOR}
    Click Element Page    ${USERACCOUNT_BTN_LOGOUT_LOCATOR}
	Sleep    2s
	#Confrim pdpa
	Update Terms and conditions    ${identification_no_str}	
	#login
	Wait Until Contains Input Text    ${LOGIN_TXT_USERNAME_LOCATOR}    ${identification_no_str}
	Sleep    2s
	Wait Until Contains Input Text    ${LOGIN_TXT_PASSWORD_LOCATOR}    ${password_str}
	Sleep    2s
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR}	
	Sleep    2s
	#Project of Building
	Wait Until Contains Element Text Should Be    ${HOME_LBL_PROJECTOFBUILDING_LOCATOR}    ${HOME_LBL_PROJECTOFBUILDING_TH} 

Edit User Information all field data No Check Table EN
	#prefix
	Set Global Variable    ${prefix}    ${USERACCOUNT_ROLE_EN_VALUE_MRS}
	Select Dropdown    ${USERINFO_ADDEDIT_DDL_PREFIX_LOCATOR}   ${USERINFO_ADDEDIT_DDL_PREFIX_LIST_LOCATOR}    ${USERACCOUNT_ADDEDIT_DDL_ROLE_CLASS_LOCATOR}    ${prefix}
	Sleep    0.5s
	#First name *
	${random_number}=    generate random string    5    [NUMBERS]
	Set Global Variable    ${first_name_value}    ${USERACCOUNT_ADDEDIT_TXT_FIRSTNAME_VALUE}${random_number}
	Set Global Variable    ${last_name_value}    ${USERACCOUNT_ADDEDIT_TXT_LASTNAME_VALUE}${random_number}
	Wait Until Contains Input Text    ${USERINFO_ADDEDIT_TXT_FIRSTNAME_LOCATOR}    ${first_name_value}
	Sleep    0.5s
	#Last name *
	Wait Until Contains Input Text    ${USERINFO_ADDEDIT_TXT_LASTNAME_LOCATOR}    ${last_name_value}
	Sleep    0.5s
	#Phone number *
	${random_phoneNumber}=    generate random string    8    [NUMBERS]
	Set Global Variable    ${phone_number_value}    ${USERACCOUNT_ADDEDIT_TXT_PHONENUMBER_VALUE_PREFIX08}${random_phoneNumber}
	Wait Until Contains Input Text    ${USERINFO_ADDEDIT_TXT_PHONENUMBER_LOCATOR}    ${phone_number_value}
	Sleep    2s
	#E-mail
	${random_string}=    Generate Random String  3  [NUMBERS]
	Set Global Variable    ${email_value}    Automate_${random_string}@gmail.com
	Wait Until Contains Input Text    ${USERINFO_ADDEDIT_TXT_EMAIL_LOCATOR}    ${email_value}
	Sleep    0.5s
	#Identification No. / Passport No. *
	${random_Identification}=    generate random string    13    [NUMBERS]
	Set Global Variable    ${Identification_value}    ${random_Identification}    
	Wait Until Contains Input Text    ${USERINFO_ADDEDIT_TXT_IDENTITYFICATIONORPASSPORT_LOCATOR}    ${Identification_value}
	Sleep    0.5s	
	
    #Click Save button
    Click Element Page    ${BANKACCOUNTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}

    Sleep    2s
	#alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

Edit User Information all field data No Check Table TH
	#prefix
	Set Global Variable    ${prefix}    ${USERACCOUNT_ROLE_TH_VALUE_MRS}
	Select Dropdown    ${USERINFO_ADDEDIT_DDL_PREFIX_LOCATOR}   ${USERINFO_ADDEDIT_DDL_PREFIX_LIST_LOCATOR}    ${USERACCOUNT_ADDEDIT_DDL_ROLE_CLASS_LOCATOR}    ${prefix}
	Sleep    0.5s
	#First name *
	${random_number}=    generate random string    5    [NUMBERS]
	Set Global Variable    ${first_name_value}    ${USERACCOUNT_ADDEDIT_TXT_FIRSTNAME_VALUE}${random_number}
	Set Global Variable    ${last_name_value}    ${USERACCOUNT_ADDEDIT_TXT_LASTNAME_VALUE}${random_number}
	Wait Until Contains Input Text    ${USERINFO_ADDEDIT_TXT_FIRSTNAME_LOCATOR}    ${first_name_value}
	Sleep    0.5s
	#Last name *
	Wait Until Contains Input Text    ${USERINFO_ADDEDIT_TXT_LASTNAME_LOCATOR}    ${last_name_value}
	Sleep    0.5s
	#Phone number *
	${random_phoneNumber}=    generate random string    8    [NUMBERS]
	Set Global Variable    ${phone_number_value}    ${USERACCOUNT_ADDEDIT_TXT_PHONENUMBER_VALUE_PREFIX08}${random_phoneNumber}
	Wait Until Contains Input Text    ${USERINFO_ADDEDIT_TXT_PHONENUMBER_LOCATOR}    ${phone_number_value}
	Sleep    2s
	#E-mail
	${random_string}=    Generate Random String  3  [NUMBERS]
	Set Global Variable    ${email_value}    Automate_${random_string}@gmail.com
	Wait Until Contains Input Text    ${USERINFO_ADDEDIT_TXT_EMAIL_LOCATOR}    ${email_value}
	Sleep    0.5s
	#Identification No. / Passport No. *
	${random_Identification}=    generate random string    13    [NUMBERS]
	Set Global Variable    ${Identification_value}    ${random_Identification}    
	Wait Until Contains Input Text    ${USERINFO_ADDEDIT_TXT_IDENTITYFICATIONORPASSPORT_LOCATOR}    ${Identification_value}
	Sleep    0.5s	
	
    #Click Save button
    Click Element Page    ${BANKACCOUNTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}

    Sleep    2s
	#alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}


Edit Change Password Table EN
	#currentPassword
	Wait Until Contains Input Text    ${CHANGEPASSWORD_TXT_CURRENTPASSWORD_LOCATOR}    ${current_pass}
	Sleep    0.5s
	#newPassword
	${random_pass}=    generate random string    4    [NUMBERS]
	Set Global Variable    ${new_password}    ${random_pass}
	Wait Until Contains Input Text    ${CHANGEPASSWORD_TXT_NEWPASSWORD_LOCATOR}    ${new_password}
	Sleep    0.5s
	#ConfirmNewPassword
	Wait Until Contains Input Text    ${CHANGEPASSWORD_TXT_CONFIRMNEWPASSWORD_LOCATOR}    ${new_password}
	Sleep    2s

    #Click Save button
    Click Element Page    ${CHANGEPASSWORD_BTN_SAVE_LOCATOR}

    Sleep    2s
	#alert bottom
    Check MSG Popup and Click OK    ${CHANGEPASSWORD_BTN_OK_LOCATOR}    ${CHANGEPASSWORD_BTN_OK_EN}    ${CHANGEPASSWORD_BTN_MSG_LOCATOR}    ${CHANGEPASSWORD_BTN_MSG_EN}


Edit Change Password Table TH
	#currentPassword
	Wait Until Contains Input Text    ${CHANGEPASSWORD_TXT_CURRENTPASSWORD_LOCATOR}    ${current_pass}
	Sleep    0.5s
	#newPassword
	${random_pass}=    generate random string    4    [NUMBERS]
	Set Global Variable    ${new_password}    ${random_pass}
	Wait Until Contains Input Text    ${CHANGEPASSWORD_TXT_NEWPASSWORD_LOCATOR}    ${new_password}
	Sleep    0.5s
	#ConfirmNewPassword
	Wait Until Contains Input Text    ${CHANGEPASSWORD_TXT_CONFIRMNEWPASSWORD_LOCATOR}    ${new_password}
	Sleep    2s

    #Click Save button
    Click Element Page    ${CHANGEPASSWORD_BTN_SAVE_LOCATOR}

    Sleep    2s
	#alert bottom
    Check MSG Popup and Click OK    ${CHANGEPASSWORD_BTN_OK_LOCATOR}    ${CHANGEPASSWORD_BTN_OK_TH}    ${CHANGEPASSWORD_BTN_MSG_LOCATOR}    ${CHANGEPASSWORD_BTN_MSG_TH}
