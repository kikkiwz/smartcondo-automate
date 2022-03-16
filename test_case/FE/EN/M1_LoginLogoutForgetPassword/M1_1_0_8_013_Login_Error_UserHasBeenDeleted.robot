*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### Login ###################
M1_1_0_8_013_Login_Error_UserHasBeenDeleted [Data Not Found : Stamp Delete user_role]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. update data 
	...    3. input data 
	...    4. click sign in button
	...    5. update data 

    [Setup]    Check Verify screen page Login EN

    ${password}=    Request select password tb users    ${LOGIN_USERHASBEENDELETED_USERID_VALUE}
    Log To Console    ${password}

    #${id},${deletet_at},${namefile}
    Update tb accounts set delete_at    ${LOGIN_USERHASBEENDELETED_ID_VALUE}    ${LOGIN_USERHASBEENDELETED_DELETETAT_VALUE}    ${LOGIN_USERHASBEENDELETED_FILENAME_VALUE}

	#username
	Wait Until Contains Input Text    ${LOGIN_TXT_USERNAME_LOCATOR}    ${LOGIN_USERHASBEENDELETED_USERNAME_VALUE}
	#password
	Wait Until Contains Input Text    ${LOGIN_TXT_PASSWORD_LOCATOR}    ${password}[1]
	#Click login button
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR}	
	Sleep    2s

    #popup
	Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_LOCATOR}    ${ALERT_CONTENT_USERHASBEENDELETED_EN}
	Wait Until Contains Element Text Should Be    ${ALERT_BTN_OK_LOCATOR}    ${ALERT_BTN_OK_EN}

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${LOGIN_M1_1_0_8_013_ERROR_SCREENSHOT}
	
################### Generic Test Case Teardown UserHasBeenDeleted ###################
    [Teardown]    Generic Test Case Teardown UserHasBeenDeleted