*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### Login ###################
M1_1_1_8_000_Login_Success_VerifyAction_ForgotPassword [Verify Action : Click Forgot password button]   
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
	
	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${LOGIN_M1_1_1_8_000_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser 