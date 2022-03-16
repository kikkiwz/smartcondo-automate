*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### Login ###################
M1_0_0_8_000_Login_Error_VerifyScreen [Verify screen page Login]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en 
	...    2. click sign in button

	#Open Browser & Maximize & title
    [Setup]    Open Browser To Page

    # Change Language EN
    Change Language EN
    
    #Click login button
	Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR}
	
	#username [Please input data]
	Click Element Page        ${LOGIN_TXT_USERNAME_LOCATOR}
	Wait Until Contains Element Text Should Be    ${LOGIN_LBL_USERNAME_PLEASEINPUTDATA_LOCATOR}    ${VALID_LBL_PLEASEINPUTDATA_EN} 
	
	#password [Please input data]
	Click Element Page        ${LOGIN_TXT_PASSWORD_LOCATOR}
	Wait Until Contains Element Text Should Be    ${LOGIN_LBL_PASSWORD_PLEASEINPUTDATA_LOCATOR}    ${VALID_LBL_PLEASEINPUTDATA_EN} 
    
	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${LOGIN_M1_0_0_8_000_ERROR_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser 