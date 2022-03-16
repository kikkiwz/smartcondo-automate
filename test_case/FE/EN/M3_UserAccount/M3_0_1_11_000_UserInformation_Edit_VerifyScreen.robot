*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
Suite Setup    Set Library Search Order    Selenium2Library    AppiumLibrary


*** Test Cases ***
################### [Search] EmployeeManagement ###################
M3_0_1_11_000_UserInformation_Edit_VerifyScreen [Verify screen page "Edit User Information"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click User Account

    [Setup]    Open Browser To Login Page Super Admin EN
   	
    #========== Click Setting Menu CheckAssetManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_USERACCOUNT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_USERACCOUNT_EN}    ${MENU_LBL_SETTING_USERACCOUNT_LOCATOR}    ${MENU_LBL_SETTING_USERACCOUNT_EN}   ${USERACCOUNT_SEARCH_LBL_HEADER_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_HEADER_EN}    ${USERACCOUNT_SEARCH_LBL_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_HEADER_EN}

	#========== Create Check Asset Management ======
	Log To Console    ${\n}=========== [Create] Check USERINFO ===============
	#Create data
    Create User Account And Login

Verify screen page "Edit User Information"
	Log To Console    ${\n}=========== [Edit] User Information ===============
	Wait Until Contains Element Should Be Visible    ${USERINFO_BTN_USERNAME_LOGIN_LOCATOR}
	Mouse Down    ${USERINFO_BTN_USERNAME_LOGIN_LOCATOR}
    Click Element Page    ${USERINFO_ICON_EDITUSERINFORMATION_LOCATOR}
	Sleep    2s

	Wait Until Contains Element Text Should Be    ${USERINFO_EDIT_LBL_HEADER_EDITUSERINFORMATION_LOCATOR}    ${USERINFO_EDIT_LBL_HEADER_EDITUSERINFORMATION_EN} 
	Wait Until Contains Element Should Be Enabled    ${USERINFO_BTN_CLOSE_LOCATOR}

    #role *
	Wait Until Contains Element Text Should Be Get Text    ${USERINFO_ADDEDIT_LBL_ROLE_LOCATOR}    ${USERINFO_ADDEDIT_LBL_ROLE_EN}${\n}*

	#prefix
	Wait Until Contains Element Text Should Be    ${USERINFO_ADDEDIT_LBL_PREFIX_LOCATOR}    ${USERINFO_ADDEDIT_LBL_PREFIX_EN}

	#First name *
	Wait Until Contains Element Text Should Be Get Text    ${USERINFO_ADDEDIT_LBL_FIRSTNAME_LOCATOR}    ${USERINFO_ADDEDIT_LBL_FIRSTNAME_EN}${\n}* 
	Wait Until Contains Element Should Be Enabled    ${USERINFO_ADDEDIT_TXT_FIRSTNAME_LOCATOR}

	#Last name *
	Wait Until Contains Element Text Should Be    ${USERINFO_ADDEDIT_LBL_LASTNAME_LOCATOR}    ${USERINFO_ADDEDIT_LBL_LASTNAME_EN}
	Wait Until Contains Element Should Be Enabled    ${USERINFO_ADDEDIT_TXT_LASTNAME_LOCATOR}

	#Phone number *
	Wait Until Contains Element Text Should Be Get Text    ${USERINFO_ADDEDIT_LBL_PHONENUMBER_LOCATOR}    ${USERINFO_ADDEDIT_LBL_PHONENUMBER_EN}${\n}*
	Wait Until Contains Element Should Be Enabled    ${USERINFO_ADDEDIT_TXT_PHONENUMBER_LOCATOR}

	#E-mail
	Wait Until Contains Element Text Should Be    ${USERINFO_ADDEDIT_LBL_EMAIL_LOCATOR}    ${USERINFO_ADDEDIT_LBL_EMAIL_EN}
	Wait Until Contains Element Should Be Enabled    ${USERINFO_ADDEDIT_TXT_EMAIL_LOCATOR}

	#Identification No. / Passport No. *
	Wait Until Contains Element Text Should Be Get Text    ${USERINFO_ADDEDIT_LBL_IDENTITYFICATIONORPASSPORT_LOCATOR}    ${USERINFO_ADDEDIT_LBL_IDENTITYFICATIONORPASSPORT_EN}${\n}*
	Wait Until Contains Element Should Be Enabled    ${USERINFO_ADDEDIT_TXT_IDENTITYFICATIONORPASSPORT_LOCATOR}

	#Cancel
	Wait Until Contains Element Text Should Be    ${USERINFO_ADDEDIT_BTN_CANCEL_LOCATOR}  ${USERINFO_ADDEDIT_BTN_CANCEL_EN}
	Wait Until Contains Element Should Be Enabled    ${USERINFO_ADDEDIT_BTN_CANCEL_LOCATOR}

	#Save
	Wait Until Contains Element Text Should Be    ${USERINFO_ADDEDIT_BTN_SAVE_LOCATOR}    ${USERINFO_ADDEDIT_BTN_SAVE_EN}
	Wait Until Contains Element Should Be Enabled    ${USERINFO_ADDEDIT_BTN_SAVE_LOCATOR}


Verify screen : legth 255 and type is varchar in Firstname
    Execute JavaScript    window.scrollBy(0,0)
	# maxlength="255"
	Wait Should Contain Get Element Attribute    ${USERINFO_ADDEDIT_TXT_FIRSTNAME_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

Verify screen : legth 255 and type is varchar in Lastname
	# maxlength="255"
	Wait Should Contain Get Element Attribute    ${USERINFO_ADDEDIT_TXT_LASTNAME_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

Verify screen : legth 10 and type is int in Phone Number
	# maxlength="10"
	Wait Should Contain Get Element Attribute    ${USERINFO_ADDEDIT_TXT_PHONENUMBER_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_10}

Verify screen : legth 125 and type is varchar in Email
	# maxlength="125"
	Wait Should Contain Get Element Attribute    ${USERINFO_ADDEDIT_TXT_EMAIL_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 125 and type is varchar in Identification
	# maxlength="125"
	Wait Should Contain Get Element Attribute    ${USERINFO_ADDEDIT_TXT_IDENTITYFICATIONORPASSPORT_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}
	#Delete data
	Update tb users set delete_at    ${userId}    ${USERACCOUNT_DELETETAT_VALUE}    ${first_name_value}
	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${USERACCOUNT_SEARCH_M3_0_1_11_000_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser 