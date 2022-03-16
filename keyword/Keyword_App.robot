*** Settings ***
Library    AppiumLibrary

#Mobile
Resource    ../keyword/Keyword_Login_Android.robot
Resource    ../keyword/Keyword_Login_iOS.robot

*** Keywords ***
################################################################-- Mobile --################################################################
Open application app 
    Open Application    
    ...    ${REMOTE_URL}    
    ...    platformName=${PLATFORM_NAME}    
    ...    platformVersion=${PLATFORM_VERSION}    
    ...    deviceName=${DEVICE_NAME}    
    ...    appPackage=${APP_PACKAGE}    
    ...    appActivity=${APP_ACTIVITY}
    Sleep    2s 

Open application app pre prod
    Open Application    
    ...    ${REMOTE_URL_PREPROD}    
    ...    platformName=${PLATFORM_NAME_PREPROD}    
    ...    platformVersion=${PLATFORM_VERSION_PREPROD}    
    ...    deviceName=${DEVICE_NAME_PREPROD}    
    ...    appPackage=${APP_PACKAGE_PREPROD}    
    ...    appActivity=${APP_ACTIVITY_PREPROD}
    Sleep    2s
   

Click Element Page App
    [Arguments]    ${locator}
	AppiumLibrary.Wait Until Element Is Visible    ${locator}    ${timeout}   error=${locator}
    AppiumLibrary.Wait Until Page Contains Element    ${locator}
	AppiumLibrary.Click Element    ${locator}
    Sleep    1s       


Get Scroll Down
    [Arguments]    ${locator}
    Scroll Down    ${locator}

Get Swipe Down
    [Arguments]    ${fragement}
    ${element_size}=    Get Element Size    ${fragement}
    ${element_location}=    Get Element Location    ${fragement}
    ${start_x}=    Evaluate    ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=    Evaluate    ${element_location['y']} + (${element_size['height']} * 0.3)
    ${end_x}=    Evaluate    ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=    Evaluate    ${element_location['y']} + (${element_size['height']} * 0.7)
    Swipe    ${start_x}    ${start_y}  ${end_x}  ${end_y}  100
    Sleep  1

Get Swipe Down Small
    [Arguments]    ${fragement}
    ${element_size}=    Get Element Size    ${fragement}
    ${element_location}=    Get Element Location    ${fragement}
    ${start_x}=    Evaluate    ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=    Evaluate    ${element_location['y']} + (${element_size['height']} * 0.3)
    ${end_x}=    Evaluate    ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=    Evaluate    ${element_location['y']} + (${element_size['height']} * 0.7)
    Swipe    ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1

Get Swipe Up
    [Arguments]    ${fragement}
    ${element_size}=    Get Element Size    ${fragement}
    ${element_location}=    Get Element Location    ${fragement}
    ${start_x}=    Evaluate    ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=    Evaluate    ${element_location['y']} + (${element_size['height']} * 0.7)
    ${end_x}=      Evaluate    ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=      Evaluate    ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe    ${start_x}    ${start_y}    ${end_x}    ${end_y}  100
    Sleep  1

Get Swipe Up Small
    [Arguments]    ${fragement}
    ${element_size}=    Get Element Size    ${fragement}
    ${element_location}=    Get Element Location    ${fragement}
    ${start_x}=    Evaluate    ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=    Evaluate    ${element_location['y']} + (${element_size['height']} * 0.7)
    ${end_x}=      Evaluate    ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=      Evaluate    ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe    ${start_x}    ${start_y}    ${end_x}    ${end_y}  500
    Sleep  1

Get Swipe Right to Left
    [Arguments]    ${fragement}
    
    AppiumLibrary.wait until element is Visible    ${fragement}
    ${element_size}=    Get Element Size    ${fragement}
    ${element_location}=    Get Element Location    ${fragement}
    ${start_x}=    Evaluate    ${element_location['x']} + (${element_size['width']} * 0.7)
    ${start_y}=    Evaluate    ${element_location['y']} + (${element_size['height']} * 0.1)
    ${end_x}=    Evaluate    ${element_location['x']} + (${element_size['width']} * 0.1)
    ${end_y}=    Evaluate    ${element_location['y']} + (${element_size['height']} * 0.7) 
    Swipe    ${start_x}    ${start_y}    ${end_x}  ${end_y}  1200
    Sleep  1

Get Swipe Right to Left Small
    [Arguments]    ${fragement}
    
    AppiumLibrary.wait until element is Visible    ${fragement}
    ${element_size}=    Get Element Size    ${fragement}
    ${element_location}=    Get Element Location    ${fragement}
    ${start_x}=    Evaluate    ${element_location['x']} + (${element_size['width']} * 0.7)
    ${start_y}=    Evaluate    ${element_location['y']} + (${element_size['height']} * 0.1)
    ${end_x}=    Evaluate    ${element_location['x']} + (${element_size['width']} * 0.1)
    ${end_y}=    Evaluate    ${element_location['y']} + (${element_size['height']} * 0.7) 
    Swipe    ${start_x}    ${start_y}    ${end_x}  ${end_y}  500
    Sleep  1

Get Swipe Left to Right
    [Arguments]    ${fragement}
    AppiumLibrary.wait until element is Visible     ${fragement}
    ${element_size}=    Get Element Size    ${fragement}
    ${element_location}=    Get Element Location    ${fragement}
    ${start_x}=    Evaluate    ${element_location['x']} + (${element_size['width']} * 0.1)
    ${start_y}=    Evaluate    ${element_location['y']} + (${element_size['height']} * 0.1)
    ${end_x}=    Evaluate    ${element_location['x']} + (${element_size['width']} * 1)
    ${end_y}=    Evaluate    ${element_location['y']} + (${element_size['height']} * 1)
    Swipe    ${start_x}    ${start_y}  ${end_x}  ${end_y}  1500
    Sleep  1

Go to login page
    [Arguments]    ${locator_lang}   
    Open application app
    #Select language
    AppiumLibrary.Wait Until Element Is Visible    ${locator_lang}
    Click Element Page App    ${locator_lang}
    #Click GET STARTED
    AppiumLibrary.Wait Until Element Is Visible    ${REGISTERANDLOGIN_BTN_SAVEYOURFLIGHT_LOCATOR}
    Click Element Page App    ${REGISTERANDLOGIN_BTN_SAVEYOURFLIGHT_LOCATOR}
    Do Swipe    ${LOGIN_SCROLL_TERMANDCODITION_LOCATOR}    27    ${LOGIN_BTN_AGREE_LOCATOR}    
    #Click Login 
    AppiumLibrary.Wait Until Element Is Visible    ${LOGIN_BTN_SIGNIN_LOCATOR}    
    Click Element Page App    ${LOGIN_BTN_SIGNIN_LOCATOR}

Go to Splash screen page
    [Arguments]    ${locator_lang}   
    Open application app
    #Select language
    AppiumLibrary.Wait Until Element Is Visible    ${locator_lang}
    Click Element Page App    ${locator_lang}
    #Click GET STARTED
    AppiumLibrary.Wait Until Element Is Visible    ${REGISTERANDLOGIN_BTN_SAVEYOURFLIGHT_LOCATOR}
    Click Element Page App    ${REGISTERANDLOGIN_BTN_SAVEYOURFLIGHT_LOCATOR}
    Do Swipe    ${LOGIN_SCROLL_TERMANDCODITION_LOCATOR}    30    ${LOGIN_BTN_AGREE_LOCATOR}    

Do Swipe
    [Arguments]    ${locator}    ${times}    ${locator_agree} 
    Repeat Keyword    ${times} s    Get Swipe Up    ${locator}  
    Click Element Page App    ${locator_agree}
    ${result}=    Run keyword And Return Status    AppiumLibrary.Wait Until Element Is Visible    ${LOGIN_BTN_SIGNIN_LOCATOR}     
    Run Keyword if    '${result}'=='False'    run keyword    Do Swipe    ${LOGIN_SCROLL_TERMANDCODITION_LOCATOR}    2    ${LOGIN_BTN_AGREE_LOCATOR}
    Run Keyword if    '${result}'=='True'    run keyword    Log to console    Do Swipe Success
 
Random String
    ${low}=    Set Variable
    ${low} =	Generate Random String	12	[LOWER]
    ${email}=    Set Variable    ${low}@gmail.com
    [Return]    ${email}    

Random Name
    ${low}=    Set Variable
    ${low} =	Generate Random String	12	[UPPER]
    [Return]    ${low}

Go to login Success
    [Arguments]    ${locator_lang}   
    Open application app
    #Select language
    AppiumLibrary.Wait Until Element Is Visible    ${locator_lang}
    Click Element Page App    ${locator_lang}
    #Click GET STARTED
    AppiumLibrary.Wait Until Element Is Visible    ${REGISTERANDLOGIN_BTN_SAVEYOURFLIGHT_LOCATOR}
    Click Element Page App    ${REGISTERANDLOGIN_BTN_SAVEYOURFLIGHT_LOCATOR}
    Do Swipe    ${LOGIN_SCROLL_TERMANDCODITION_LOCATOR}    30    ${LOGIN_BTN_AGREE_LOCATOR}    
    #Click Login 
    Sleep    3s
    Log to console    login++
    AppiumLibrary.Wait Until Element Is Visible    ${LOGIN_BTN_SIGNIN_LOCATOR}    
    Click Element Page App    ${LOGIN_BTN_SIGNIN_LOCATOR}
    #Check Valid email and password
    Wait Until Contains Input Text    ${LOGIN_LBL_EMAIL_PLACEHOLDER_LOCATOR}    ${USERNAME_VERIFY_EMAIL_PHONE} 
    Wait Until Contains Input Password    ${LOGIN_LBL_PASSWORD_PLACEHOLDER_LOCATOR}    ${PASSWORD_VERIFY_EMAIL_PHONE}
    Click Element Page App    ${LOGIN_BTN_LOGIN_LOGINPAGE_LOCATOR}
    Sleep    3s
    Click Element Page App    ${LOGIN_LBL_ONLYTHISTIME_HOMEPAGE_LOCATOR}	
#**************************************************#	
	
	
	
	
	
	
	
