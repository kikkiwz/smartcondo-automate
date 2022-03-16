*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### Login ###################
M1_1_1_8_003_Login_Success_VerifyAction_SignIn_TaxId [Login tax.id]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. input data 
	...    3. click sign in button

	[Setup]    Open Browser To Login Page TaxId

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${LOGIN_M1_1_1_8_003_SUCCESS_SCREENSHOT}
	
################### Close Browser ###################
    [Teardown]    Close Browser 