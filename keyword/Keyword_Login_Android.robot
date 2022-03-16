*** Keyword ***
Login App
    [Arguments]    ${lang_locator}    
    Open application app       

    #Select language
    Click Element Page    ${lang_locator}
    #Click Element Page    ${LOGIN_LBL_CLICKSELECTENG}

    #Check Validate Welcome AOT Page
    Wait Until Contains Element Text Should Be    ${LOGIN_LBL_AOTDIGITALAIRPORTS_LOCATOR}    ${LOGIN_LBL_AOTDIGITALAIRPORTS_TH}
    Wait Until Contains Element Text Should Be    ${LOGIN_LBL_SAVEYOURFLIGHT_LOCATOR}    ${LOGIN_LBL_SAVEYOURFLIGHT_TH}
    Wait Until Contains Element Text Should Be    ${LOGIN_LBL_SAVEYOURFLIGHT_LOCATOR}    ${LOGIN_LBL_SAVEYOURFLIGHT_TH}

    #Click GET STARTED
    Click Element Page    ${LOGIN_BTN_SAVEYOURFLIGHT_LOCATOR}

    #Check Click Agree
    Repeat Keyword    30 s     Get Swipe Up    ${LOGIN_SCROLL_TERMANDCODITION_LOCATOR}
    Wait Until Element Is Visible    ${LOGIN_BTN_AGREE_LOCATOR}
    Click Element Page    ${LOGIN_BTN_AGREE_LOCATOR}
    
    #Check Click Not ready to Sign Up?
    #Click Element Page    ${LOGIN_LBL_NOTREADYTOSIGN_LOCATOR}

    #Click Login 
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR}

    #กรอกอีเมล และ พาสเวิส ถูกต้อง
    #Check Valid email and password
    Wait Until Contains Input Text    ${LOGIN_LBL_EMAIL_PLACEHOLDER_LOCATOR}    ${USERNAME} 
    Wait Until Contains Input Password    ${LOGIN_LBL_PASSWORD_PLACEHOLDER_LOCATOR}    ${PASSWORD}
    Click Element Page    ${LOGIN_BTN_LOGIN_LOGINPAGE_LOCATOR}
    Sleep    3s
    Click Element Page    ${LOGIN_LBL_ONLYTHISTIME_HOMEPAGE_LOCATOR}
 
Login App EN
    [Arguments]    ${lang_locator}    
    Open application app       

    #Select language
    Click Element Page    ${lang_locator}
    #Click Element Page    ${LOGIN_LBL_CLICKSELECTENG}

    #Check Validate Welcome AOT Page
    Wait Until Contains Element Text Should Be    ${LOGIN_LBL_AOTDIGITALAIRPORTS_LOCATOR}    ${LOGIN_LBL_AOTDIGITALAIRPORTS_EN}
    Wait Until Contains Element Text Should Be    ${LOGIN_LBL_SAVEYOURFLIGHT_LOCATOR}    ${LOGIN_LBL_SAVEYOURFLIGHT_EN}
    Wait Until Contains Element Text Should Be    ${LOGIN_LBL_SAVEYOURFLIGHT_LOCATOR}    ${LOGIN_LBL_SAVEYOURFLIGHT_EN}

    #Click GET STARTED
    Click Element Page    ${LOGIN_BTN_SAVEYOURFLIGHT_LOCATOR}

    #Check Click Agree
    Repeat Keyword    25 s     Get Swipe Up    ${LOGIN_SCROLL_TERMANDCODITION_LOCATOR}
    Click Element Page    ${LOGIN_BTN_AGREE_LOCATOR}
    
    #Check Click Not ready to Sign Up?
    #Click Element Page    ${LOGIN_LBL_NOTREADYTOSIGN_LOCATOR}

    #Click Login 
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR}

    #กรอกอีเมล และ พาสเวิส ถูกต้อง
    #Check Valid email and password
    Wait Until Contains Input Text    ${LOGIN_LBL_EMAIL_PLACEHOLDER_LOCATOR}    ${USERNAME} 
    Wait Until Contains Input Password    ${LOGIN_LBL_PASSWORD_PLACEHOLDER_LOCATOR}    ${PASSWORD}
    Click Element Page    ${LOGIN_BTN_LOGIN_LOGINPAGE_LOCATOR}
    Sleep    3s
    Click Element Page    ${LOGIN_LBL_ONLYTHISTIME_HOMEPAGE_LOCATOR}
     
Login App Pre Prod
    [Arguments]    ${lang_PREPROD_LOCATOR}    
    Open application app pre prod       

    #Select language
    Click Element Page    ${lang_PREPROD_LOCATOR}
    #Click Element Page    ${LOGIN_LBL_CLICKSELECTENG}

    #Check Validate Welcome AOT Page
    Wait Until Contains Element Text Should Be    ${LOGIN_LBL_AOTDIGITALAIRPORTS_PREPROD_LOCATOR}    ${LOGIN_LBL_AOTDIGITALAIRPORTS_TH}
    Wait Until Contains Element Text Should Be    ${LOGIN_LBL_SAVEYOURFLIGHT_PREPROD_LOCATOR}    ${LOGIN_LBL_SAVEYOURFLIGHT_TH}
    Wait Until Contains Element Text Should Be    ${LOGIN_LBL_SAVEYOURFLIGHT_PREPROD_LOCATOR}    ${LOGIN_LBL_SAVEYOURFLIGHT_TH}

    #Click GET STARTED
    Click Element Page    ${LOGIN_BTN_SAVEYOURFLIGHT_PREPROD_LOCATOR}

    #Check Click Agree
    Repeat Keyword    25 s     Get Swipe Up    ${LOGIN_SCROLL_TERMANDCODITION_PREPROD_LOCATOR}
    Click Element Page    ${LOGIN_BTN_AGREE_PREPROD_LOCATOR}
    
    #Check Click Not ready to Sign Up?
    #Click Element Page    ${LOGIN_LBL_NOTREADYTOSIGN_PREPROD_LOCATOR}

    #Click Login 
    Click Element Page    ${LOGIN_BTN_LOGIN_PREPROD_LOCATOR}

    #กรอกอีเมล และ พาสเวิส ถูกต้อง
    #Check Valid email and password
    Wait Until Contains Input Text    ${LOGIN_LBL_EMAIL_PLACEHOLDER_PREPROD_LOCATOR}    ${USERNAME_PREPROD} 
    Wait Until Contains Input Password    ${LOGIN_LBL_PASSWORD_PLACEHOLDER_PREPROD_LOCATOR}    ${PASSWORD_PREPROD}
    Click Element Page    ${LOGIN_BTN_LOGIN_LOGINPAGE_PREPROD_LOCATOR}
    Sleep    3s
    Click Element Page    ${LOGIN_LBL_ONLYTHISTIME_HOMEPAGE_PREPROD_LOCATOR}

Login App User verify email and phone

    [Arguments]    ${lang_locator}    
    Open application app       

    #Select language
    Click Element Page    ${lang_locator}
    #Click Element Page    ${LOGIN_LBL_CLICKSELECTENG}

    #Check Validate Welcome AOT Page
    Wait Until Contains Element Text Should Be    ${LOGIN_LBL_AOTDIGITALAIRPORTS_LOCATOR}    ${LOGIN_LBL_AOTDIGITALAIRPORTS_TH}
    Wait Until Contains Element Text Should Be    ${LOGIN_LBL_SAVEYOURFLIGHT_LOCATOR}    ${LOGIN_LBL_SAVEYOURFLIGHT_TH}
    Wait Until Contains Element Text Should Be    ${LOGIN_LBL_SAVEYOURFLIGHT_LOCATOR}    ${LOGIN_LBL_SAVEYOURFLIGHT_TH}

    #Click GET STARTED
    Click Element Page    ${LOGIN_BTN_SAVEYOURFLIGHT_LOCATOR}

    #Check Click Agree
    Repeat Keyword    30 s     Get Swipe Up    ${LOGIN_SCROLL_TERMANDCODITION_LOCATOR}
    Click Element Page    ${LOGIN_BTN_AGREE_LOCATOR}
    
    #Check Click Not ready to Sign Up?
    #Click Element Page    ${LOGIN_LBL_NOTREADYTOSIGN_LOCATOR}

    #Click Login 
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR}

    #กรอกอีเมล และ พาสเวิส ถูกต้อง
    #Check Valid email and password

    Wait Until Contains Input Text    ${LOGIN_LBL_EMAIL_PLACEHOLDER_LOCATOR}    ${USERNAME_VERIFY_EMAIL_PHONE} 
    Wait Until Contains Input Password    ${LOGIN_LBL_PASSWORD_PLACEHOLDER_LOCATOR}    ${PASSWORD_VERIFY_EMAIL_PHONE}
    Click Element Page    ${LOGIN_BTN_LOGIN_LOGINPAGE_LOCATOR}
    Sleep    3s
    Click Element Page    ${LOGIN_LBL_ONLYTHISTIME_HOMEPAGE_LOCATOR}

Login App User verify email and phone EN

    [Arguments]    ${lang_locator}    
    Open application app       

    #Select language
    Click Element Page    ${lang_locator}
    #Click Element Page    ${LOGIN_LBL_CLICKSELECTENG}

    #Check Validate Welcome AOT Page
    Wait Until Contains Element Text Should Be    ${LOGIN_LBL_AOTDIGITALAIRPORTS_LOCATOR}    ${LOGIN_LBL_AOTDIGITALAIRPORTS_EN}
    Wait Until Contains Element Text Should Be    ${LOGIN_LBL_SAVEYOURFLIGHT_LOCATOR}    ${LOGIN_LBL_SAVEYOURFLIGHT_EN}
    Wait Until Contains Element Text Should Be    ${LOGIN_LBL_SAVEYOURFLIGHT_LOCATOR}    ${LOGIN_LBL_SAVEYOURFLIGHT_EN}

    #Click GET STARTED
    Click Element Page    ${LOGIN_BTN_SAVEYOURFLIGHT_LOCATOR}

    #Check Click Agree
    Repeat Keyword    30 s     Get Swipe Up    ${LOGIN_SCROLL_TERMANDCODITION_LOCATOR}
    Click Element Page    ${LOGIN_BTN_AGREE_LOCATOR}
    
    #Check Click Not ready to Sign Up?
    #Click Element Page    ${LOGIN_LBL_NOTREADYTOSIGN_LOCATOR}

    #Click Login 
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR}

    #กรอกอีเมล และ พาสเวิส ถูกต้อง
    #Check Valid email and password

    Wait Until Contains Input Text    ${LOGIN_LBL_EMAIL_PLACEHOLDER_LOCATOR}    ${USERNAME_VERIFY_EMAIL_PHONE} 
    Wait Until Contains Input Password    ${LOGIN_LBL_PASSWORD_PLACEHOLDER_LOCATOR}    ${PASSWORD_VERIFY_EMAIL_PHONE}
    Click Element Page    ${LOGIN_BTN_LOGIN_LOGINPAGE_LOCATOR}
    Sleep    3s
    Click Element Page    ${LOGIN_LBL_ONLYTHISTIME_HOMEPAGE_LOCATOR}


Login App Verify by email
    [Arguments]    ${lang_locator}    
    Open application app       

    #Select language
    Click Element Page    ${lang_locator}
    #Click Element Page    ${LOGIN_LBL_CLICKSELECTENG}

    #Check Validate Welcome AOT Page
    Wait Until Contains Element Text Should Be    ${LOGIN_LBL_AOTDIGITALAIRPORTS_LOCATOR}    ${LOGIN_LBL_AOTDIGITALAIRPORTS_TH}
    Wait Until Contains Element Text Should Be    ${LOGIN_LBL_SAVEYOURFLIGHT_LOCATOR}    ${LOGIN_LBL_SAVEYOURFLIGHT_TH}
    Wait Until Contains Element Text Should Be    ${LOGIN_LBL_SAVEYOURFLIGHT_LOCATOR}    ${LOGIN_LBL_SAVEYOURFLIGHT_TH}

    #Click GET STARTED
    Click Element Page    ${LOGIN_BTN_SAVEYOURFLIGHT_LOCATOR}

    #Check Click Agree
    Repeat Keyword    30 s     Get Swipe Up    ${LOGIN_SCROLL_TERMANDCODITION_LOCATOR}
    Click Element Page    ${LOGIN_BTN_AGREE_LOCATOR}
    
    #Check Click Not ready to Sign Up?
    #Click Element Page    ${LOGIN_LBL_NOTREADYTOSIGN_LOCATOR}

    #Click Login 
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR}

    #กรอกอีเมล และ พาสเวิส ถูกต้อง
    #Check Valid email and password

    Wait Until Contains Input Text    ${LOGIN_LBL_EMAIL_PLACEHOLDER_LOCATOR}    ${USERNAME_VERIFYBYPHONE} 
    Wait Until Contains Input Password    ${LOGIN_LBL_PASSWORD_PLACEHOLDER_LOCATOR}    ${PASSWORD_VERIFYBYPHONE}
    Click Element Page    ${LOGIN_BTN_LOGIN_LOGINPAGE_LOCATOR}
    Sleep    3s
    Click Element Page    ${LOGIN_LBL_ONLYTHISTIME_HOMEPAGE_LOCATOR}

Login App Verify by phone
        [Arguments]    ${lang_locator}    
    Open application app       

    #Select language
    Click Element Page    ${lang_locator}
    #Click Element Page    ${LOGIN_LBL_CLICKSELECTENG}

    #Check Validate Welcome AOT Page
    Wait Until Contains Element Text Should Be    ${LOGIN_LBL_AOTDIGITALAIRPORTS_LOCATOR}    ${LOGIN_LBL_AOTDIGITALAIRPORTS_TH}
    Wait Until Contains Element Text Should Be    ${LOGIN_LBL_SAVEYOURFLIGHT_LOCATOR}    ${LOGIN_LBL_SAVEYOURFLIGHT_TH}
    Wait Until Contains Element Text Should Be    ${LOGIN_LBL_SAVEYOURFLIGHT_LOCATOR}    ${LOGIN_LBL_SAVEYOURFLIGHT_TH}

    #Click GET STARTED
    Click Element Page    ${LOGIN_BTN_SAVEYOURFLIGHT_LOCATOR}

    #Check Click Agree
    Repeat Keyword    30 s     Get Swipe Up    ${LOGIN_SCROLL_TERMANDCODITION_LOCATOR}
    Click Element Page    ${LOGIN_BTN_AGREE_LOCATOR}
    
    #Check Click Not ready to Sign Up?
    #Click Element Page    ${LOGIN_LBL_NOTREADYTOSIGN_LOCATOR}

    #Click Login 
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR}

    #กรอกอีเมล และ พาสเวิส ถูกต้อง
    #Check Valid email and password

    Wait Until Contains Input Text    ${LOGIN_LBL_EMAIL_PLACEHOLDER_LOCATOR}    ${USERNAME_VERIFYEMAIL} 
    Wait Until Contains Input Password    ${LOGIN_LBL_PASSWORD_PLACEHOLDER_LOCATOR}    ${PASSWORD_VERIFYEMAIL}
    Click Element Page    ${LOGIN_BTN_LOGIN_LOGINPAGE_LOCATOR}
    Sleep    3s
    Click Element Page    ${LOGIN_LBL_ONLYTHISTIME_HOMEPAGE_LOCATOR}

Not ready to Sign Up App
    [Arguments]    ${lang_locator}    
    Open application app       

    #Select language
    Click Element Page    ${lang_locator}
    #Click Element Page    ${LOGIN_LBL_CLICKSELECTENG}

    #Check Validate Welcome AOT Page
    Wait Until Contains Element Text Should Be    ${LOGIN_LBL_AOTDIGITALAIRPORTS_LOCATOR}    ${LOGIN_LBL_AOTDIGITALAIRPORTS_TH}
    Wait Until Contains Element Text Should Be    ${LOGIN_LBL_SAVEYOURFLIGHT_LOCATOR}    ${LOGIN_LBL_SAVEYOURFLIGHT_TH}
    Wait Until Contains Element Text Should Be    ${LOGIN_LBL_SAVEYOURFLIGHT_LOCATOR}    ${LOGIN_LBL_SAVEYOURFLIGHT_TH}

    #Click GET STARTED
    Click Element Page    ${LOGIN_BTN_SAVEYOURFLIGHT_LOCATOR}

    #Check Click Agree
    Repeat Keyword    30 s     Get Swipe Up    ${LOGIN_SCROLL_TERMANDCODITION_LOCATOR}
    Click Element Page    ${LOGIN_BTN_AGREE_LOCATOR}
    
    #Check Click Not ready to Sign Up?
    Click Element Page    ${LOGIN_LBL_NOTREADYTOSIGN_LOCATOR}
    # Click Element Page    ${LOGIN_LBL_ONLYTHISTIME_HOMEPAGE_LOCATOR}
     
    Sleep    3s
    Click Element Page    ${LOGIN_LBL_ONLYTHISTIME_HOMEPAGE_LOCATOR}

Not ready to Sign Up App EN
    [Arguments]    ${lang_locator}    
    Open application app       

    #Select language
    Click Element Page    ${lang_locator}
    #Click Element Page    ${LOGIN_LBL_CLICKSELECTENG}

    #Check Validate Welcome AOT Page
    Wait Until Contains Element Text Should Be    ${LOGIN_LBL_AOTDIGITALAIRPORTS_LOCATOR}    ${LOGIN_LBL_AOTDIGITALAIRPORTS_EN}
    Wait Until Contains Element Text Should Be    ${LOGIN_LBL_SAVEYOURFLIGHT_LOCATOR}    ${LOGIN_LBL_SAVEYOURFLIGHT_EN}
    Wait Until Contains Element Text Should Be    ${LOGIN_LBL_SAVEYOURFLIGHT_LOCATOR}    ${LOGIN_LBL_SAVEYOURFLIGHT_EN}

    #Click GET STARTED
    Click Element Page    ${LOGIN_BTN_SAVEYOURFLIGHT_LOCATOR}

    #Check Click Agree
    Repeat Keyword    30 s     Get Swipe Up    ${LOGIN_SCROLL_TERMANDCODITION_LOCATOR}
    Click Element Page    ${LOGIN_BTN_AGREE_LOCATOR}
    
    #Check Click Not ready to Sign Up?
    Click Element Page    ${LOGIN_LBL_NOTREADYTOSIGN_LOCATOR}
    # Click Element Page    ${LOGIN_LBL_ONLYTHISTIME_HOMEPAGE_LOCATOR}
     
    Sleep    3s
    Click Element Page    ${LOGIN_LBL_ONLYTHISTIME_HOMEPAGE_LOCATOR}

Input Value Dropdown
    [Arguments]    ${locator}    ${number} 
    Click Element Page    ${locator}
    #Click Don Mueang International Airport
    Input Text     xpath=//XCUIElementTypePicker/XCUIElementTypePickerWheel     ${number}
    Click Element Page    xpath=//XCUIElementTypeButton[@name="Done"]   