*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### Login ###################
M1_0_0_6_000_ForgetPassword_Error_VerifyScreen [Verify screen page "Forget Password"]   
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en 
	...    2. click forgot password button
	...    3. click get new password button	

	[Setup]    Check Verify screen page Login
	
	#Click forgot password
    Click Element Page    ${LOGIN_LNK_FORGOTPASSWORD_LOCATOR}	
    
    #Forgot password
	Wait Until Contains Element Text Should Be    ${FORGETPASSWORD_LBL_FORGOTPASSWORDHD_LOCATOR}    ${FORGETPASSWORD_LBL_FORGOTPASSWORDHD_TH} 
	Wait Until Contains Element Should Be Visible    ${FORGETPASSWORD_IMG_FORGOTPASSWORDHD_LOCATOR}

Verify wording required field (if don't input phone number)

    #Click Get New Password button
	Click Element Page    ${FORGETPASSWORD_BTN_GETNEWPASSWORD_LOCATOR}	

	#Forgot password SMS [Phone is required]
	Click Element Page    ${FORGETPASSWORD_TXT_FORGOTPASSWORDSMS_LOCATOR}	
	Wait Until Contains Element Text Should Be    ${FORGETPASSWORD_LBL_FORGOTPASSWORDSMS_PLEASEINPUTDATA_LOCATOR}    ${VALID_LBL_PHONEISREQUIRED_TH} 
    

Verify wording required field (if input phone number is wrong)

    Wait Until Contains Input Text    ${FORGETPASSWORD_TXT_FORGOTPASSWORDSMS_LOCATOR}    ${FORGETPASSWORD_MOBILENUMBER_VALID_VALUE}

	#Click Get New Password button
	Click Element Page    ${FORGETPASSWORD_BTN_GETNEWPASSWORD_LOCATOR}	

	#Forgot password SMS [Phone is not valid]
	Click Element Page    ${FORGETPASSWORD_TXT_FORGOTPASSWORDSMS_LOCATOR}	
	Wait Until Contains Element Text Should Be    ${FORGETPASSWORD_LBL_FORGOTPASSWORDSMS_PLEASEINPUTDATA_LOCATOR}    ${VALID_LBL_PHONEISNOTVALID_TH}  
	
	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${FORGETPASSWORD_M1_0_0_6_000_ERROR_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser 