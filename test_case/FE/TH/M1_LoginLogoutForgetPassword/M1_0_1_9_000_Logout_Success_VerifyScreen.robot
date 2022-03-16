*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### Login ###################
M1_0_1_9_000_Logout_Success_VerifyScreen [Verify Logout button]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. input data 
	...    3. click sign in button
	...    4. click log out button

	[Setup]    Open Browser To Login Page Admin

	Click Element Page    ${MENU_LBL_HOMETOP_ADMIN_USER_LOCATOR}
    Wait Until Contains Element Text Should Be    ${MENU_LBL_HOMETOP_ADMIN_LOGOUT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_LOGOUT_TH} 

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${LOGOUT_M1_0_1_9_000_SUCCESS_SCREENSHOT}
	
################### Close Browser ###################
    [Teardown]    Close Browser 