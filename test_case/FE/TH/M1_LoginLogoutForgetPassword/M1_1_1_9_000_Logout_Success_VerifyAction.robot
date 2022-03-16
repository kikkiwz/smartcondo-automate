*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### Login ###################
M1_1_1_9_000_Logout_Success_VerifyAction [Verify Action : Click Logout button]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. input data 
	...    3. click sign in button
	...    4. click log out button

	[Setup]    Open Browser To Login Page Admin
	
	Open Browser To Logout Page Admin

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${LOGOUT_M1_1_1_9_000_SUCCESS_SCREENSHOT}
	
################### Close Browser ###################
    [Teardown]    Close Browser 