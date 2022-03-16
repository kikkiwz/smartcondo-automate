*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
Suite Setup    Set Library Search Order    Selenium2Library    AppiumLibrary


*** Test Cases ***
################### [Search] EmployeeManagement ###################
M3_0_1_7_000_ChangePassword_VerifyScreen [Verify screen page "Change Password"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click User Account
	...    4. click name user on tab
	...    5. click Change Password
    [Setup]    Open Browser To Login Page Super Admin EN
   	
    #========== Click Setting Menu CheckAssetManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_USERACCOUNT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_USERACCOUNT_EN}    ${MENU_LBL_SETTING_USERACCOUNT_LOCATOR}    ${MENU_LBL_SETTING_USERACCOUNT_EN}   ${USERACCOUNT_SEARCH_LBL_HEADER_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_HEADER_EN}    ${USERACCOUNT_SEARCH_LBL_LOCATOR}    ${USERACCOUNT_SEARCH_LBL_HEADER_EN}

	#========== Create Check Asset Management ======
	Log To Console    ${\n}=========== [Create] User Account ===============
	#Create data
    Create User Account And Login

Verify screen page "Change Password"
	Log To Console    ${\n}=========== [Change Password] ===============
	Wait Until Contains Element Should Be Visible    ${USERINFO_BTN_USERNAME_LOGIN_LOCATOR}
	Mouse Down    ${USERINFO_BTN_USERNAME_LOGIN_LOCATOR}
    Click Element Page    ${CHANGEPASSWORD_LBL_LOCATOR}
	Sleep    2s

	Wait Until Contains Element Text Should Be    ${CHANGEPASSWORD_HEADER_LOCATOR}    ${CHANGEPASSWORD_HEADER_EN} 
	Wait Until Contains Element Should Be Enabled    ${CHANGEPASSWORD_CLOSE_LOCATOR}

    #role *
	Wait Until Contains Element Text Should Be Get Text    ${CHANGEPASSWORD_LBL_ROLE_LOCATOR}    ${CHANGEPASSWORD_LBL_ROLE_EN}${\n}* 

	#prefix
	Wait Until Contains Element Text Should Be    ${CHANGEPASSWORD_LBL_PREFIX_LOCATOR}    ${CHANGEPASSWORD_LBL_PREFIX_EN}

	#First name *
	Wait Until Contains Element Text Should Be Get Text    ${CHANGEPASSWORD_LBL_FIRSTNAME_LOCATOR}    ${CHANGEPASSWORD_LBL_FIRSTNAME_EN}${\n}* 

	#Last name *
	Wait Until Contains Element Text Should Be    ${CHANGEPASSWORD_LBL_LASTNAME_LOCATOR}    ${CHANGEPASSWORD_LBL_LASTNAME_EN}

	#currentPassword *
	Wait Until Contains Element Text Should Be Get Text    ${CHANGEPASSWORD_LBL_CURRENTPASSWORD_LOCATOR}    ${CHANGEPASSWORD_LBL_CURRENTPASSWORD_EN}${\n}* 
	Wait Until Contains Element Should Be Enabled    ${CHANGEPASSWORD_TXT_CURRENTPASSWORD_LOCATOR}

	#newPassword
	Wait Until Contains Element Text Should Be Get Text    ${CHANGEPASSWORD_LBL_NEWPASSWORD_LOCATOR}    ${CHANGEPASSWORD_LBL_NEWPASSWORD_EN}${\n}* 
	Wait Until Contains Element Should Be Enabled    ${CHANGEPASSWORD_TXT_NEWPASSWORD_LOCATOR}

	#ConfirmNewPassword *
	Wait Until Contains Element Text Should Be Get Text    ${CHANGEPASSWORD_LBL_CONFIRMNEWPASSWORD_LOCATOR}    ${CHANGEPASSWORD_LBL_CONFIRMNEWPASSWORD_EN}${\n}* 
	Wait Until Contains Element Should Be Enabled    ${CHANGEPASSWORD_TXT_CONFIRMNEWPASSWORD_LOCATOR}

	#Cancel
	Wait Until Contains Element Text Should Be    ${CHANGEPASSWORD_BTN_CANCEL_LOCATOR}  ${CHANGEPASSWORD_BTN_CANCEL_EN}
	Wait Until Contains Element Should Be Enabled    ${CHANGEPASSWORD_BTN_CANCEL_LOCATOR}

	#Save
	Wait Until Contains Element Text Should Be    ${CHANGEPASSWORD_BTN_SAVE_LOCATOR}    ${CHANGEPASSWORD_BTN_SAVE_EN}
	Wait Until Contains Element Should Be Enabled    ${CHANGEPASSWORD_BTN_SAVE_LOCATOR}


Verify screen : legth 125 and type is varchar in Current Password
    Execute JavaScript    window.scrollBy(0,0)
	# maxlength="255"
	Wait Should Contain Get Element Attribute    ${CHANGEPASSWORD_TXT_CURRENTPASSWORD_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 125 and type is varchar in New Password
	# maxlength="255"
	Wait Should Contain Get Element Attribute    ${CHANGEPASSWORD_TXT_NEWPASSWORD_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 125 and type is varchar in Confirm New Password
	# maxlength="125"
	Wait Should Contain Get Element Attribute    ${CHANGEPASSWORD_TXT_CONFIRMNEWPASSWORD_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

	#Delete data
	Update tb users set delete_at    ${userId}    ${USERACCOUNT_DELETETAT_VALUE}    ${first_name_value}
	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${USERACCOUNT_SEARCH_M3_0_1_7_000_SUCCESS_SCREENSHOT}
################### Close Browser ###################
    [Teardown]    Close Browser 