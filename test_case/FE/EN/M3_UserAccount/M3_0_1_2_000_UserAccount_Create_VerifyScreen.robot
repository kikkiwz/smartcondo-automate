*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
Suite Setup    Set Library Search Order    Selenium2Library    AppiumLibrary


*** Test Cases ***
################### [Search] EmployeeManagement ###################
M3_0_1_2_000_UserAccount_Create_VerifyScreen [Verify screen page "Create User Account"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click User Account

    [Setup]    Open Browser To Login Page Super Admin EN
   	
    #========== Click Setting Menu CheckAssetManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_USERACCOUNT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_USERACCOUNT_EN}    ${MENU_LBL_SETTING_USERACCOUNT_LOCATOR}    ${MENU_LBL_SETTING_USERACCOUNT_EN}   ${USERACCOUNT_SEARCH_LBL_HEADER_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_HEADER_EN}    ${USERACCOUNT_SEARCH_LBL_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_HEADER_EN}
	

Verify screen page Create - User Account

    Click Element Page    ${USERACCOUNT_BTN_ADD_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_HEADER_CREATEUSERACCOUNT_LOCATOR}    ${USERACCOUNT_ADDEDIT_LBL_HEADER_CREATEUSERACCOUNT_EN} 
	Wait Until Contains Element Should Be Enabled    ${USERACCOUNT_BTN_CLOSE_LOCATOR}

    #role *
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_ROLE_LOCATOR}   ${USERACCOUNT_ADDEDIT_LBL_ROLE_EN}
	Wait Until Contains Element Should Be Visible    ${USERACCOUNT_ADDEDIT_DDL_ROLE_LOCATOR}

	#prefix
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_PREFIX_LOCATOR}    ${USERACCOUNT_ADDEDIT_LBL_PREFIX_EN}
	Wait Until Contains Element Should Be Visible    ${USERACCOUNT_ADDEDIT_DDL_PREFIX_LOCATOR}

	#First name *
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_FIRSTNAME_LOCATOR}    ${USERACCOUNT_ADDEDIT_LBL_FIRSTNAME_EN}
	Wait Until Contains Element Should Be Visible    ${USERACCOUNT_ADDEDIT_TXT_FIRSTNAME_LOCATOR}

	#Last name *
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_LASTNAME_LOCATOR}    ${USERACCOUNT_ADDEDIT_LBL_LASTNAME_EN}
	Wait Until Contains Element Should Be Visible    ${USERACCOUNT_ADDEDIT_TXT_LASTNAME_LOCATOR}


	#Phone number *
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_PHONENUMBER_LOCATOR}    ${USERACCOUNT_ADDEDIT_LBL_PHONENUMBER_EN}
	Wait Until Contains Element Should Be Visible    ${USERACCOUNT_ADDEDIT_TXT_PHONENUMBER_LOCATOR}

	#E-mail
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_EMAIL_LOCATOR}    ${USERACCOUNT_ADDEDIT_LBL_EMAIL_EN}
	Wait Until Contains Element Should Be Visible    ${USERACCOUNT_ADDEDIT_TXT_EMAIL_LOCATOR}

	#Identification No. / Passport No. *
	Wait Until Contains Element Text Should Be    ${USERACCOUNT_ADDEDIT_LBL_IDENTITYFICATIONORPASSPORT_LOCATOR}    ${USERACCOUNT_ADDEDIT_LBL_IDENTITYFICATIONORPASSPORT_EN}
	Wait Until Contains Element Should Be Visible    ${USERACCOUNT_ADDEDIT_TXT_IDENTITYFICATIONORPASSPORT_LOCATOR}

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
	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${USERACCOUNT_SEARCH_M3_0_1_2_000_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser 