*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### Login ###################
M1_0_1_8_000_Login_Success_VerifyScreen [Verify screen page Login]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  

	Check Verify screen page Login EN

Verify screen : legth 255 and type is varchar in Username 
	# maxlength="255"
	Wait Should Contain Get Element Attribute    ${LOGIN_TXT_USERNAME_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

Verify screen : legth 255 and type is varchar in Password
	# maxlength="255"
	Wait Should Contain Get Element Attribute    ${LOGIN_TXT_PASSWORD_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${LOGIN_M1_0_1_8_000_SUCCESS_SCREENSHOT}
	
################### Close Browser ###################
    [Teardown]    Close Browser 