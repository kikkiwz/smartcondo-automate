*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### Login ###################
M1_1_0_8_011_Login_Error_DataNotFound_NoDataTaxId [Data Not Found : Stamp Delete role]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. update data 
	...    3. input data 
	...    4. click sign in button
	...    5. update data 

    [Setup]    Check Verify screen page Login

    ${password}=    Request select password tb users    ${LOGIN_STAMPDELETEUSERROLE_USERID_VALUE}
    Log To Console    ${password}

	#username
	Wait Until Contains Input Text    ${LOGIN_TXT_USERNAME_LOCATOR}    ${LOGIN_NODATATAXID_USERNAME_VALUE}
	#password
	Wait Until Contains Input Text    ${LOGIN_TXT_PASSWORD_LOCATOR}    ${password}[1]
	#Click login button
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR}	
	Sleep    2s

    #alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_INVAIDUSERNAMEORPASSWORD_TH}

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${LOGIN_M1_1_0_8_011_ERROR_SCREENSHOT}
	
################### Close Browser ###################
    [Teardown]    Close Browser