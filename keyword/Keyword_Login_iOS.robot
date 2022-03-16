*** Keywords ***  
Open application app iOS
    Open Application    
    ...    ${REMOTE_URL_iOS}    
    ...    platformName=${PLATFORM_NAME_iOS}    
    ...    platformVersion=${PLATFORM_VERSION_iOS}    
    ...    deviceName=${DEVICE_NAME_iOS}
    ...    app=${APP_LOCATION_iOS}
    ...    bundleId=${BUNDLE_ID_iOS} 
    ...    automationName=appium       
    Sleep    2s 

Go to login page iOS
    [Arguments]    ${locator_lang} 
    ${result}=    Set Variable      
    Open application app iOS
    ${result}=    Run keyword And Return Status    Wait Until Page Contains Element    xpath=//XCUIElementTypeButton[@name="Allow Once"]        
    Run Keyword if    '${result}'=='True'    run keyword    Click Element Page    xpath=//XCUIElementTypeButton[@name="Allow Once"] 
    Click Element Page    xpath=//XCUIElementTypeButton[@name="Allow"]  
    #Select language
    Wait Until Element Is Visible    ${locator_lang}
    Click Element Page    ${locator_lang}
    #Click GET STARTED
    Wait Until Element Is Visible    ${REGISTERANDLOGIN_BTN_SAVEYOURFLIGHT_LOCATOR_iOS_EN}
    Click Element Page    ${REGISTERANDLOGIN_BTN_SAVEYOURFLIGHT_LOCATOR_iOS_EN}
    Do Swipe iOS    ${REGISTERANDLOGIN_SCROLL_TERMANDCODITION_LOCATOR_iOS}    40    ${LOGIN_BTN_AGREE_LOCATOR_iOS_EN}    
    #Click Login 
    #Wait Until Element Is Visible    ${LOGIN_BTN_SIGNIN_LOCATOR_iOS_EN}    
    #Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR_iOS_EN}

Go to login page iOS TH
    [Arguments]    ${locator_lang} 
    ${result}=    Set Variable      
    Open application app iOS
    ${result}=    Run keyword And Return Status    Wait Until Page Contains Element    xpath=//XCUIElementTypeButton[@name="Allow Once"]        
    Run Keyword if    '${result}'=='True'    run keyword    Click Element Page    xpath=//XCUIElementTypeButton[@name="Allow Once"] 
    Click Element Page    xpath=//XCUIElementTypeButton[@name="Allow"]  
    #Select language
    Wait Until Element Is Visible    ${locator_lang}
    Click Element Page    ${locator_lang}
    #Click GET STARTED
    Wait Until Element Is Visible    ${REGISTERANDLOGIN_BTN_SAVEYOURFLIGHT_LOCATOR_iOS_TH}
    Click Element Page    ${REGISTERANDLOGIN_BTN_SAVEYOURFLIGHT_LOCATOR_iOS_TH}
    Do Swipe iOS TH    ${REGISTERANDLOGIN_SCROLL_TERMANDCODITION_LOCATOR_iOS}    40    ${LOGIN_BTN_AGREE_LOCATOR_iOS_TH}    
    #Click Login 
    #Wait Until Element Is Visible    ${LOGIN_BTN_SIGNIN_LOCATOR_iOS_EN}    
    #Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR_iOS_EN}

Go to Splash screen page iOS
    [Arguments]    ${locator_lang} 
    ${result}=    Set Variable      
    Open application app iOS
    ${result}=    Run keyword And Return Status    Wait Until Page Contains Element    xpath=//XCUIElementTypeButton[@name="Allow Once"]        
    Run Keyword if    '${result}'=='True'    run keyword    Click Element Page    xpath=//XCUIElementTypeButton[@name="Allow Once"] 
    Click Element Page    xpath=//XCUIElementTypeButton[@name="Allow"]  
    #Select language
    Wait Until Element Is Visible    ${locator_lang}
    Click Element Page    ${locator_lang}
    #Click GET STARTED
    Wait Until Element Is Visible    ${REGISTERANDLOGIN_BTN_SAVEYOURFLIGHT_LOCATOR_iOS_EN}
    Click Element Page    ${REGISTERANDLOGIN_BTN_SAVEYOURFLIGHT_LOCATOR_iOS_EN}
    Do Swipe iOS not login    ${REGISTERANDLOGIN_SCROLL_TERMANDCODITION_LOCATOR_iOS}    40    ${LOGIN_BTN_AGREE_LOCATOR_iOS_EN}     

Go to Splash screen page iOS TH
    [Arguments]    ${locator_lang} 
    ${result}=    Set Variable      
    Open application app iOS
    ${result}=    Run keyword And Return Status    Wait Until Page Contains Element    xpath=//XCUIElementTypeButton[@name="Allow Once"]        
    Run Keyword if    '${result}'=='True'    run keyword    Click Element Page    xpath=//XCUIElementTypeButton[@name="Allow Once"] 
    Click Element Page    xpath=//XCUIElementTypeButton[@name="Allow"]  
    #Select language
    Wait Until Element Is Visible    ${locator_lang}
    Click Element Page    ${locator_lang}
    #Click GET STARTED
    Wait Until Element Is Visible    ${REGISTERANDLOGIN_BTN_SAVEYOURFLIGHT_LOCATOR_iOS_TH}
    Click Element Page    ${REGISTERANDLOGIN_BTN_SAVEYOURFLIGHT_LOCATOR_iOS_TH}
    Do Swipe iOS not login TH    ${REGISTERANDLOGIN_SCROLL_TERMANDCODITION_LOCATOR_iOS}    40    ${LOGIN_BTN_AGREE_LOCATOR_iOS_TH}     


Get Swipe Up iOS
    [Arguments]    ${fragement}
    ${element_size}=    Get Element Size    ${fragement}
    ${element_location}=    Get Element Location    ${fragement}
    ${start_x}=    Evaluate    ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=    Evaluate    ${element_location['y']} + (${element_size['height']} * 0.7)
    ${end_x}=      Evaluate    ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=      Evaluate    ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe    ${start_x}    ${start_y}    ${end_x}    ${end_y}  100
    Sleep  1


Do Swipe iOS
    [Arguments]    ${locator}    ${times}    ${locator_agree} 
    Repeat Keyword    ${times} s    Get Swipe Up iOs    ${locator}    
    ${value}=    Run keyword And Return Status   Wait Until Element Is Visible    ${locator_agree}
    Run Keyword if    '${value}'=='True'    run keyword    Click Element Page    ${locator_agree} 
    ${result_click_agree}=    Run keyword And Return Status    Wait Until Page Contains Element    ${LOGIN_BTN_SIGNIN_LOCATOR_iOS_EN} 
    Run Keyword if    '${result_click_agree}'=='True'    run keyword    Log to console    Swipe Success
    Run Keyword if    '${result_click_agree}'=='True'    run keyword    Check Login    ${locator}    ${locator_agree}     
    Run Keyword if    '${result_click_agree}'=='False'    run keyword    run keyword    Log to console    Swipe Failed
    Run Keyword if    '${result_click_agree}'=='False'    run keyword    Do Swipe iOs    ${locator}    10    ${locator_agree}


Do Swipe iOS TH
    [Arguments]    ${locator}    ${times}    ${locator_agree} 
    Repeat Keyword    ${times} s    Get Swipe Up iOs    ${locator}    
    ${value}=    Run keyword And Return Status   Wait Until Element Is Visible    ${locator_agree}
    Run Keyword if    '${value}'=='True'    run keyword    Click Element Page    ${locator_agree} 
    ${result_click_agree}=    Run keyword And Return Status    Wait Until Page Contains Element    ${LOGIN_BTN_SIGNIN_LOCATOR_iOS_TH} 
    Run Keyword if    '${result_click_agree}'=='True'    run keyword    Log to console    Swipe Success
    Run Keyword if    '${result_click_agree}'=='True'    run keyword    Check Login TH    ${locator}    ${locator_agree}     
    Run Keyword if    '${result_click_agree}'=='False'    run keyword    run keyword    Log to console    Swipe Failed
    Run Keyword if    '${result_click_agree}'=='False'    run keyword    Do Swipe iOs TH    ${locator}    10    ${locator_agree}

Do Swipe iOS not login
    [Arguments]    ${locator}    ${times}    ${locator_agree} 
    Repeat Keyword    ${times} s    Get Swipe Up iOs    ${locator}    
    ${value}=    Run keyword And Return Status   Wait Until Element Is Visible    ${locator_agree}
    Run Keyword if    '${value}'=='True'    run keyword    Click Element Page    ${locator_agree}  
    ${result_click_agree}=    Run keyword And Return Status    Wait Until Page Contains Element    ${LOGIN_BTN_SIGNIN_LOCATOR_iOS_EN} 
    Run Keyword if    '${result_click_agree}'=='True'    run keyword    Log to console    Swipe Success   
    Run Keyword if    '${result_click_agree}'=='False'    run keyword    run keyword    Log to console    Swipe Failed
    Run Keyword if    '${result_click_agree}'=='False'    run keyword    Do Swipe iOs not login    ${locator}    10    ${locator_agree}

Do Swipe iOS not login TH
    [Arguments]    ${locator}    ${times}    ${locator_agree} 
    Repeat Keyword    ${times} s    Get Swipe Up iOs    ${locator}    
    ${value}=    Run keyword And Return Status   Wait Until Element Is Visible    ${locator_agree}
    Run Keyword if    '${value}'=='True'    run keyword    Click Element Page    ${locator_agree}  
    ${result_click_agree}=    Run keyword And Return Status    Wait Until Page Contains Element    ${LOGIN_BTN_SIGNIN_LOCATOR_iOS_TH} 
    Run Keyword if    '${result_click_agree}'=='True'    run keyword    Log to console    Swipe Success   
    Run Keyword if    '${result_click_agree}'=='False'    run keyword    run keyword    Log to console    Swipe Failed
    Run Keyword if    '${result_click_agree}'=='False'    run keyword    Do Swipe iOs not login TH    ${locator}    10    ${locator_agree}
 
Check Login
    [Arguments]    ${locator}    ${locator_agree} 
    #Run Keyword And Continue On Failure   Wait Until Element Is Visible    ${LOGIN_BTN_SIGNIN_LOCATOR_iOS_EN}
    ${result_login}=    Run keyword And Return Status    Wait Until Page Contains Element    ${LOGIN_BTN_SIGNIN_LOCATOR_iOS_EN}       
    Run Keyword if    '${result_login}'=='False'    run keyword    Log to console   Back to Swipe
    Run Keyword if    '${result_login}'=='False'    run keyword    Do Swipe iOs    ${locator}    5    ${locator_agree}
    Run Keyword if    '${result_login}'=='True'    run keyword    Log to console    Login Success
    Run Keyword if    '${result_login}'=='True'    run keyword    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR_iOS_EN} 

Check Login TH
    [Arguments]    ${locator}    ${locator_agree} 
    #Run Keyword And Continue On Failure   Wait Until Element Is Visible    ${LOGIN_BTN_SIGNIN_LOCATOR_iOS_EN}
    ${result_login}=    Run keyword And Return Status    Wait Until Page Contains Element    ${LOGIN_BTN_SIGNIN_LOCATOR_iOS_TH}       
    Run Keyword if    '${result_login}'=='False'    run keyword    Log to console   Back to Swipe
    Run Keyword if    '${result_login}'=='False'    run keyword    Do Swipe iOs    ${locator}    5    ${locator_agree}
    Run Keyword if    '${result_login}'=='True'    run keyword    Log to console    Login Success
    Run Keyword if    '${result_login}'=='True'    run keyword    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR_iOS_TH} 

Go to login Success iOS EN
    [Arguments]    ${locator_lang} 
    ${result}=    Set Variable      
    Open application app iOS
    ${result}=    Run keyword And Return Status    Wait Until Page Contains Element    xpath=//XCUIElementTypeButton[@name="Allow Once"]        
    Run Keyword if    '${result}'=='True'    run keyword    Click Element Page    xpath=//XCUIElementTypeButton[@name="Allow Once"] 
    Click Element Page    xpath=//XCUIElementTypeButton[@name="Allow"]  
    #Select language
    Wait Until Element Is Visible    ${locator_lang}
    Click Element Page    ${locator_lang}
    #Click GET STARTED
    Wait Until Element Is Visible    ${REGISTERANDLOGIN_BTN_SAVEYOURFLIGHT_LOCATOR_iOS_EN}
    Click Element Page    ${REGISTERANDLOGIN_BTN_SAVEYOURFLIGHT_LOCATOR_iOS_EN}
    Do Swipe iOS    ${REGISTERANDLOGIN_SCROLL_TERMANDCODITION_LOCATOR_iOS}    40    ${LOGIN_BTN_AGREE_LOCATOR_iOS_EN}    
    #Click Login 
    Clear Text    ${REGISTERANDLOGIN_LBL_EMAIL_PLACEHOLDER_LOCATOR_iOS}
    Clear Text    ${REGISTERANDLOGIN_LBL_PASSWORD_PLACEHOLDER_LOCATOR_iOS}
    Wait Until Contains Input Text    ${REGISTERANDLOGIN_LBL_EMAIL_PLACEHOLDER_LOCATOR_iOS}    ${USERNAME_VERIFY_EMAIL_PHONE} 
    Wait Until Contains Input Password    ${REGISTERANDLOGIN_LBL_PASSWORD_PLACEHOLDER_LOCATOR_iOS}    ${PASSWORD_VERIFY_EMAIL_PHONE}
    Wait Until Element Is Visible    ${LOGIN_BTN_SIGNIN_LOCATOR_iOS_EN}    
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR_iOS_EN}

Go to login Success iOS TH
    [Arguments]    ${locator_lang} 
    ${result}=    Set Variable      
    Open application app iOS
    ${result}=    Run keyword And Return Status    Wait Until Page Contains Element    xpath=//XCUIElementTypeButton[@name="Allow Once"]        
    Run Keyword if    '${result}'=='True'    run keyword    Click Element Page    xpath=//XCUIElementTypeButton[@name="Allow Once"] 
    Click Element Page    xpath=//XCUIElementTypeButton[@name="Allow"]  
    #Select language
    Wait Until Element Is Visible    ${locator_lang}
    Click Element Page    ${locator_lang}
    #Click GET STARTED
    Wait Until Element Is Visible    ${REGISTERANDLOGIN_BTN_SAVEYOURFLIGHT_LOCATOR_iOS_TH}
    Click Element Page    ${REGISTERANDLOGIN_BTN_SAVEYOURFLIGHT_LOCATOR_iOS_TH}
    Do Swipe iOS TH    ${REGISTERANDLOGIN_SCROLL_TERMANDCODITION_LOCATOR_iOS}    40    ${LOGIN_BTN_AGREE_LOCATOR_iOS_TH}    
    #Click Login 
    Clear Text    ${REGISTERANDLOGIN_LBL_EMAIL_PLACEHOLDER_LOCATOR_iOS}
    Clear Text    ${REGISTERANDLOGIN_LBL_PASSWORD_PLACEHOLDER_LOCATOR_iOS}
    Wait Until Contains Input Text    ${REGISTERANDLOGIN_LBL_EMAIL_PLACEHOLDER_LOCATOR_iOS}    ${USERNAME_VERIFY_EMAIL_PHONE} 
    Wait Until Contains Input Password    ${REGISTERANDLOGIN_LBL_PASSWORD_PLACEHOLDER_LOCATOR_iOS}    ${PASSWORD_VERIFY_EMAIL_PHONE}
    Wait Until Element Is Visible    ${LOGIN_BTN_SIGNIN_LOCATOR_iOS_TH}    
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR_iOS_TH}


Go to login Success iOS EN not verify phone
    [Arguments]    ${locator_lang} 
    ${result}=    Set Variable      
    Open application app iOS
    ${result}=    Run keyword And Return Status    Wait Until Page Contains Element    xpath=//XCUIElementTypeButton[@name="Allow Once"]        
    Run Keyword if    '${result}'=='True'    run keyword    Click Element Page    xpath=//XCUIElementTypeButton[@name="Allow Once"] 
    Click Element Page    xpath=//XCUIElementTypeButton[@name="Allow"]  
    #Select language
    Wait Until Element Is Visible    ${locator_lang}
    Click Element Page    ${locator_lang}
    #Click GET STARTED
    Wait Until Element Is Visible    ${REGISTERANDLOGIN_BTN_SAVEYOURFLIGHT_LOCATOR_iOS_EN}
    Click Element Page    ${REGISTERANDLOGIN_BTN_SAVEYOURFLIGHT_LOCATOR_iOS_EN}
    Do Swipe iOS    ${REGISTERANDLOGIN_SCROLL_TERMANDCODITION_LOCATOR_iOS}    40    ${LOGIN_BTN_AGREE_LOCATOR_iOS_EN}    
    #Click Login 
    Clear Text    ${REGISTERANDLOGIN_LBL_EMAIL_PLACEHOLDER_LOCATOR_iOS}
    Clear Text    ${REGISTERANDLOGIN_LBL_PASSWORD_PLACEHOLDER_LOCATOR_iOS}
    Wait Until Contains Input Text    ${REGISTERANDLOGIN_LBL_EMAIL_PLACEHOLDER_LOCATOR_iOS}    ${USERNAME_VERIFYEMAIL} 
    Wait Until Contains Input Password    ${REGISTERANDLOGIN_LBL_PASSWORD_PLACEHOLDER_LOCATOR_iOS}    ${PASSWORD_VERIFYEMAIL}
    Wait Until Element Is Visible    ${LOGIN_BTN_SIGNIN_LOCATOR_iOS_EN}    
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR_iOS_EN}

Go to login Success iOS TH not verify phone
    [Arguments]    ${locator_lang} 
    ${result}=    Set Variable      
    Open application app iOS
    ${result}=    Run keyword And Return Status    Wait Until Page Contains Element    xpath=//XCUIElementTypeButton[@name="Allow Once"]        
    Run Keyword if    '${result}'=='True'    run keyword    Click Element Page    xpath=//XCUIElementTypeButton[@name="Allow Once"] 
    Click Element Page    xpath=//XCUIElementTypeButton[@name="Allow"]  
    #Select language
    Wait Until Element Is Visible    ${locator_lang}
    Click Element Page    ${locator_lang}
    #Click GET STARTED
    Wait Until Element Is Visible    ${REGISTERANDLOGIN_BTN_SAVEYOURFLIGHT_LOCATOR_iOS_TH}
    Click Element Page    ${REGISTERANDLOGIN_BTN_SAVEYOURFLIGHT_LOCATOR_iOS_TH}
    Do Swipe iOS TH    ${REGISTERANDLOGIN_SCROLL_TERMANDCODITION_LOCATOR_iOS}    40    ${LOGIN_BTN_AGREE_LOCATOR_iOS_TH}    
    #Click Login 
    Clear Text    ${REGISTERANDLOGIN_LBL_EMAIL_PLACEHOLDER_LOCATOR_iOS}
    Clear Text    ${REGISTERANDLOGIN_LBL_PASSWORD_PLACEHOLDER_LOCATOR_iOS}
    Wait Until Contains Input Text    ${REGISTERANDLOGIN_LBL_EMAIL_PLACEHOLDER_LOCATOR_iOS}    ${USERNAME_VERIFYEMAIL} 
    Wait Until Contains Input Password    ${REGISTERANDLOGIN_LBL_PASSWORD_PLACEHOLDER_LOCATOR_iOS}    ${PASSWORD_VERIFYEMAIL}
    Wait Until Element Is Visible    ${LOGIN_BTN_SIGNIN_LOCATOR_iOS_TH}    
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR_iOS_TH}