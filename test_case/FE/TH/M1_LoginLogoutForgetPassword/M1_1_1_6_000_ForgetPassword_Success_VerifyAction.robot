*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### ForgotPassword ###################
M1_1_1_6_000_ForgetPassword_Success_VerifyAction [Verify Action : Click get new password button]   
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en 
	...    2. click forgot password button	
	...    3. input data
	...    4. click get new password button
	...    5. Verify DB
	...    6. login by new password again

    [Setup]    Check Verify screen page Login
	
	#Click forgot password
    Click Element Page    ${LOGIN_LNK_FORGOTPASSWORD_LOCATOR}	

	${passwordOld}=    Request select password tb users    ${FORGETPASSWORD_USERID_VALUE}

	#Forgot password
	Wait Until Contains Element Text Should Be    ${FORGETPASSWORD_LBL_FORGOTPASSWORDHD_LOCATOR}    ${FORGETPASSWORD_LBL_FORGOTPASSWORDHD_TH} 
	Wait Until Contains Element Should Be Visible    ${FORGETPASSWORD_IMG_FORGOTPASSWORDHD_LOCATOR}

	#Forgot password SMS
	Wait Until Contains Element Text Should Be    ${FORGETPASSWORD_LBL_FORGOTPASSWORDSMS_LOCATOR}    ${FORGETPASSWORD_LBL_FORGOTPASSWORDSMS_TH} 
	Wait Until Contains Element Should Be Visible    ${FORGETPASSWORD_TXT_FORGOTPASSWORDSMS_LOCATOR}
	
	Wait Until Contains Input Text    ${FORGETPASSWORD_TXT_FORGOTPASSWORDSMS_LOCATOR}    ${FORGETPASSWORD_MOBILENUMBER_VALUE}
	
	#Click Get New Password button
	Click Element Page    ${FORGETPASSWORD_BTN_GETNEWPASSWORD_LOCATOR}	

    Sleep    0.5s
    ${getText}=    Get Text String    ${ALERT_CONTENT_LOCATOR}
	${referenceCode}=    Get Replace String    ${getText}    ${FORGETPASSWORD_LBL_FORGOTPASSWORDSMS_POPUP_TH}    ${EMPTY}
	Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_LOCATOR}    ${FORGETPASSWORD_LBL_FORGOTPASSWORDSMS_POPUP_TH}${referenceCode}
	Wait Until Contains Element Text Should Be    ${ALERT_BTN_OK_LOCATOR}    ${ALERT_BTN_OK_TH}

	${passwordNew}=    Request select password tb users    ${FORGETPASSWORD_USERID_VALUE}

	Should Not Be Equal    ${passwordOld}[0]    ${passwordNew}[0]    

	#Click OK button
	Click Element Page    ${ALERT_BTN_OK_LOCATOR}	

	Wait Until Contains Input Text    ${LOGIN_TXT_USERNAME_LOCATOR}    ${FORGETPASSWORD_USERNAME_VALUE}
	Sleep    2s
	Wait Until Contains Input Text    ${LOGIN_TXT_PASSWORD_LOCATOR}    ${passwordNew}[1]
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR}	
	Sleep    2s
	Wait Until Contains Element Text Should Be    ${HOME_LBL_PROJECTOFBUILDING_LOCATOR}    ${HOME_LBL_PROJECTOFBUILDING_TH} 
	Sleep    2s

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${FORGETPASSWORD_M1_1_1_6_000_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser 