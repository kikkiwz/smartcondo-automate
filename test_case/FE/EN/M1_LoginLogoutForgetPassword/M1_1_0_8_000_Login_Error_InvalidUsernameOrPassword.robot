*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### Login ###################
M1_1_0_8_000_Login_Error_InvalidUsernameOrPassword [Verify result after click sign in button : Data Not Found]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en 
	...    2. click sign in button

	#Open Browser & Maximize & title
    [Setup]    Open Browser To Page

	# Change Language EN
    Change Language EN
    
	#username
	Wait Until Contains Input Text    ${LOGIN_TXT_USERNAME_LOCATOR}    ${LOGIN_USERNAME_NOTFOUND_VALUE}
	#password
	Wait Until Contains Input Text    ${LOGIN_TXT_PASSWORD_LOCATOR}    ${LOGIN_PASSWORD_NOTFOUND_VALUE}

    #Click login button
	Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR}

    #alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_INVAIDUSERNAMEORPASSWORD_EN}

	#================ Verify DB ================	
    Request Verify DB Check login rowCount    ${LOGIN_USERNAME_NOTFOUND_VALUE}    ${LOGIN_PASSWORD_NOTFOUND_VALUE}    0

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${LOGIN_M1_1_0_8_000_ERROR_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser 