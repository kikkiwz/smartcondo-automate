*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### Login ###################
M1_1_0_6_000_ForgetPassword_Error_DataNotFound [Verify result after click get new password button : Data Not Found]   
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en 
	...    2. click forgot password button
	...    3. click get new password button	

	[Setup]    Check Verify screen page Login EN

	#Click forgot password
    Click Element Page    ${LOGIN_LNK_FORGOTPASSWORD_LOCATOR}	
    
    Wait Until Contains Input Text    ${FORGETPASSWORD_TXT_FORGOTPASSWORDSMS_LOCATOR}    ${FORGETPASSWORD_MOBILENUMBER_NOTFOUND_VALUE}

	#Click Get New Password button
	Click Element Page    ${FORGETPASSWORD_BTN_GETNEWPASSWORD_LOCATOR}	

	#alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_NOTELEPHONENUMBERISINTHESYSTEM_EN}

    #================ Verify DB ================	
    Request Verify DB Check Forget Password Phone rowCount    ${FORGETPASSWORD_MOBILENUMBER_NOTFOUND_VALUE}    0

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${FORGETPASSWORD_M1_1_0_6_000_ERROR_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser 