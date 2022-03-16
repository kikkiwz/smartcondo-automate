*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### ForgotPassword ###################
M1_0_1_6_000_ForgetPassword_Success_VerifyScreen [Verify screen page "Forget Password"]   
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en 
	...    2. click forgot password button	

	[Setup]    Check Verify screen page Login EN

	#Click forgot password
    Click Element Page    ${LOGIN_LNK_FORGOTPASSWORD_LOCATOR}	

	#Forgot password
	Wait Until Contains Element Text Should Be    ${FORGETPASSWORD_LBL_FORGOTPASSWORDHD_LOCATOR}    ${FORGETPASSWORD_LBL_FORGOTPASSWORDHD_EN} 
	Wait Until Contains Element Should Be Visible    ${FORGETPASSWORD_IMG_FORGOTPASSWORDHD_LOCATOR}

	#Forgot password SMS
	Wait Until Contains Element Text Should Be    ${FORGETPASSWORD_LBL_FORGOTPASSWORDSMS_LOCATOR}    ${FORGETPASSWORD_LBL_FORGOTPASSWORDSMS_EN} 
	Wait Until Contains Element Should Be Visible    ${FORGETPASSWORD_TXT_FORGOTPASSWORDSMS_LOCATOR}
	
	#Get New Password button
	Wait Until Contains Element Text Should Be    ${FORGETPASSWORD_BTN_GETNEWPASSWORD_LOCATOR}    ${FORGETPASSWORD_BTN_GETNEWPASSWORD_EN} 

Verify screen : legth 10 and type is int in Please enter your phone number in the SmartDondo system to receive a password.
    # maxlength="10"
	Wait Should Contain Get Element Attribute    ${FORGETPASSWORD_TXT_FORGOTPASSWORDSMS_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_10}

Verify screen sweet popup "confirm"
    
	Wait Until Contains Input Text    ${FORGETPASSWORD_TXT_FORGOTPASSWORDSMS_LOCATOR}    ${FORGETPASSWORD_MOBILENUMBER_VALUE}
	
	#Click Get New Password button
	Click Element Page    ${FORGETPASSWORD_BTN_GETNEWPASSWORD_LOCATOR}	
    Sleep    0.5s
    ${getText}=    Get Text String    ${ALERT_CONTENT_LOCATOR}
	${referenceCode}=    Get Replace String    ${getText}    ${FORGETPASSWORD_LBL_FORGOTPASSWORDSMS_POPUP_EN}    ${EMPTY}
	Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_LOCATOR}    ${FORGETPASSWORD_LBL_FORGOTPASSWORDSMS_POPUP_EN}${referenceCode}
	Wait Until Contains Element Text Should Be    ${ALERT_BTN_OK_LOCATOR}    ${ALERT_BTN_OK_EN}

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${FORGETPASSWORD_M1_0_1_6_000_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser 