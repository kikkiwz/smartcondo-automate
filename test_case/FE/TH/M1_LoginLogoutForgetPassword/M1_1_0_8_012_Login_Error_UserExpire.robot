*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### Login ###################
M1_1_0_8_012_Login_Error_UserExpire [user expire]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. update data 
	...    3. input data 
	...    4. click sign in button
	...    5. update data 

    [Setup]    Check Verify screen page Login

    ${password}=    Request select password tb users    ${LOGIN_USEREXPIRE_USERID_VALUE}
    Log To Console    ${password}

    #${id},${expire_date},${namefile}
    Update tb accounts set expire_date    ${LOGIN_USEREXPIRE_ID_VALUE}    ${LOGIN_USEREXPIRE_EXPIRE_VALUE}    ${LOGIN_USEREXPIRE_FILENAME_VALUE}

	#username
	Wait Until Contains Input Text    ${LOGIN_TXT_USERNAME_LOCATOR}    ${LOGIN_USERHASBEENDELETED_USERNAME_VALUE}
	#password
	Wait Until Contains Input Text    ${LOGIN_TXT_PASSWORD_LOCATOR}    ${password}[1]
	#Click login button
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR}	
	Sleep    2s

    #popup
	Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_LOCATOR}    ${ALERT_CONTENT_USEREXPIRE_TH}
	Wait Until Contains Element Text Should Be    ${ALERT_BTN_OK_LOCATOR}    ${ALERT_BTN_OK_TH}

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${LOGIN_M1_1_0_8_012_ERROR_SCREENSHOT}
	
################### Generic Test Case Teardown UserExpire ###################
    [Teardown]    Generic Test Case Teardown UserExpire