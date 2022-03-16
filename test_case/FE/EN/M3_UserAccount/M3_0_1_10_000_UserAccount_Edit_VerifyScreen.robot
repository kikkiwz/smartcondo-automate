*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
Suite Setup    Set Library Search Order    Selenium2Library    AppiumLibrary


*** Test Cases ***
################### [Search] EmployeeManagement ###################
M3_0_1_10_000_UserAccount_Edit_VerifyScreen [Verify screen page "Edit User Account"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click User Account

    [Setup]    Open Browser To Login Page Super Admin EN
   	
    #========== Click Setting Menu CheckAssetManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_USERACCOUNT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_USERACCOUNT_EN}    ${MENU_LBL_SETTING_USERACCOUNT_LOCATOR}    ${MENU_LBL_SETTING_USERACCOUNT_EN}   ${USERACCOUNT_SEARCH_LBL_HEADER_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_HEADER_EN}    ${USERACCOUNT_SEARCH_LBL_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_HEADER_EN}

	#========== Create Check Asset Management ======
	Log To Console    ${\n}=========== [Create] Check UserAccount ===============
	#Create data
    Create User Account input all field data No Check Table EN

Verify screen page "Edit User Account"
	Log To Console    ${\n}=========== [Edit] Check UserAccount ===============
    #Edit icon
	Wait Until Contains Element Should Be Visible    ${USERACCOUNT_COLUMN_ACTION}
	Mouse Down    ${USERACCOUNT_COLUMN_ACTION}
	Wait Until Contains Element Should Be Visible    ${USERACCOUNT_ICON_EDIT_LOCATOR}
	Click Element Page     ${USERACCOUNT_ICON_EDIT_LOCATOR}

	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_HEADER_EDITCREATEUSERACCOUNT_LOCATOR}    ${USERACCOUNT_ADDEDIT_LBL_HEADER_EDITCREATEUSERACCOUNT_EN} 
	Wait Until Contains Element Should Be Enabled    ${USERACCOUNT_BTN_CLOSE_LOCATOR}

    #role *
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_ROLE_LOCATOR}   ${USERACCOUNT_ADDEDIT_LBL_ROLE_EN}
	Wait Until Contains Element Text Should Be Get Value    ${USERACCOUNT_ADDEDIT_TXT_ROLE_LOCATOR}    ${USERACCOUNT_ROLE_EN_VALUE1}

	#prefix
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_PREFIX_LOCATOR}    ${USERACCOUNT_ADDEDIT_LBL_PREFIX_EN}
	Wait Until Contains Element Text Should Be Get Value    ${USERACCOUNT_ADDEDIT_TXT_PREFIX_LOCATOR}    ${USERACCOUNT_ROLE_EN_VALUE_MR}

	#First name *
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_FIRSTNAME_LOCATOR}    ${USERACCOUNT_ADDEDIT_LBL_FIRSTNAME_EN}
	Wait Until Contains Element Text Should Be Get Value    ${USERACCOUNT_ADDEDIT_TXT_FIRSTNAME_LOCATOR}    ${first_name_value}

	#Last name *
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_LASTNAME_LOCATOR}    ${USERACCOUNT_ADDEDIT_LBL_LASTNAME_EN}
	Wait Until Contains Element Text Should Be Get Value    ${USERACCOUNT_ADDEDIT_TXT_LASTNAME_LOCATOR}    ${last_name_value}


	#Phone number *
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_PHONENUMBER_LOCATOR}    ${USERACCOUNT_ADDEDIT_LBL_PHONENUMBER_EN}
	Wait Until Contains Element Text Should Be Get Value    ${USERACCOUNT_ADDEDIT_TXT_PHONENUMBER_LOCATOR}    ${phone_number_value}

	#E-mail
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_EMAIL_LOCATOR}    ${USERACCOUNT_ADDEDIT_LBL_EMAIL_EN}
	Wait Until Contains Element Text Should Be Get Value    ${USERACCOUNT_ADDEDIT_TXT_EMAIL_LOCATOR}    ${email_value}

	#Identification No. / Passport No. *
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_IDENTITYFICATIONORPASSPORT_LOCATOR}    ${USERACCOUNT_ADDEDIT_LBL_IDENTITYFICATIONORPASSPORT_EN}
	Wait Until Contains Element Text Should Be Get Value    ${USERACCOUNT_ADDEDIT_TXT_IDENTITYFICATIONORPASSPORT_LOCATOR}    ${Identification_value}

	Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
	sleep    1s 

	#Select Project Access
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_PROJECTACCESS_LOCATOR}     ${USERACCOUNT_ADDEDIT_LBL_PROJECTACCESS_EN}

	#Select Or Unselect All
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_SELECTORUNSELECT_LOCATOR}    ${USERACCOUNT_ADDEDIT_LBL_SELECTORUNSELECT_EN}
	Wait Until Contains Element Should Be Visible    ${USERACCOUNT_ADDEDIT_RDL_SELECTORUNSELECT_LOCATOR}
 
	#Cancel
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_BTN_CANCEL_LOCATOR}  ${USERACCOUNT_ADDEDIT_BTN_CANCEL_EN}

	#Save
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_BTN_SAVE_LOCATOR}    ${USERACCOUNT_ADDEDIT_BTN_SAVE_EN}


Verify screen : legth 255 and type is varchar in Firstname
    Execute JavaScript    window.scrollBy(0,0)
	# maxlength="255"
	Wait Should Contain Get Element Attribute    ${USERACCOUNT_ADDEDIT_TXT_FIRSTNAME_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

Verify screen : legth 255 and type is varchar in Lastname
	# maxlength="255"
	Wait Should Contain Get Element Attribute    ${USERACCOUNT_ADDEDIT_TXT_LASTNAME_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

Verify screen : legth 10 and type is int in Phone Number
	# maxlength="10"
	Wait Should Contain Get Element Attribute    ${USERACCOUNT_ADDEDIT_TXT_PHONENUMBER_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_10}

Verify screen : legth 125 and type is varchar in Email
	# maxlength="125"
	Wait Should Contain Get Element Attribute    ${USERACCOUNT_ADDEDIT_TXT_EMAIL_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 125 and type is varchar in Identification
	# maxlength="125"
	Wait Should Contain Get Element Attribute    ${USERACCOUNT_ADDEDIT_TXT_IDENTITYFICATIONORPASSPORT_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}
	#Delete data
	Update tb users set delete_at    ${userId}    ${USERACCOUNT_DELETETAT_VALUE}    ${first_name_value}
	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${USERACCOUNT_SEARCH_M3_0_1_10_000_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser 