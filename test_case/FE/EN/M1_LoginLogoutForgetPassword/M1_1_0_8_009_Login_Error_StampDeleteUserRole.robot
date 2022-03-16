*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### Login ###################
M1_1_0_8_009_Login_Error_StampDeleteUserRole [Data Not Found : Stamp Delete user_role]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. update data 
	...    3. input data 
	...    4. click sign in button
	...    5. update data 

    [Setup]    Check Verify screen page Login EN
	
    ${password}=    Request select password tb users    ${LOGIN_STAMPDELETEUSERROLE_USERID_VALUE}
    Log To Console    ${password}

    #${userId},${deletet_at},${namefile}
    Update tb user_role set delete_at    ${LOGIN_STAMPDELETEUSERROLE_USERID_VALUE}    ${LOGIN_USERHASBEENDELETED_DELETETAT_VALUE}    ${LOGIN_STAMPDELETEUSERROLE_FILENAME_VALUE}
    
	
	#username
	Wait Until Contains Input Text    ${LOGIN_TXT_USERNAME_LOCATOR}    ${LOGIN_STAMPDELETEUSERROLE_USERNAME_VALUE}
	#password
	Wait Until Contains Input Text    ${LOGIN_TXT_PASSWORD_LOCATOR}    ${password}[1]
	#Click login button
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR}	
	Sleep    2s

    #alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_INTERNALSERVERERROR_EN}

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${LOGIN_M1_1_0_8_009_ERROR_SCREENSHOT}
	
################### Generic Test Case Teardown StampDeleteUserRole ###################
    [Teardown]    Generic Test Case Teardown StampDeleteUserRole