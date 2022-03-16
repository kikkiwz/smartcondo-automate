*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### Login ###################
M1_1_1_8_002_Login_Success_VerifyAction_SignIn [Verify Action : Click Sign in button]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. input data 
	...    3. click sign in button

	[Setup]    Open Browser To Login Page Admin EN

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${LOGIN_M1_1_1_8_002_SUCCESS_SCREENSHOT}
	
################### Close Browser ###################
    [Teardown]    Close Browser 