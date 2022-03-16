*** Settings ***
Resource    ../../../../variables/Variables.robot 
Resource    ../../../../keyword/Keyword.robot

*** Test Cases ***
Open app and login
    Go to login Success    ${LOGIN_LBL_ENGLISH_PREPROD_LOCATOR}

Display icon Notification
    Wait Until Contains Element Should Be Enabled    ${HOMEPAGE_ICON_NOTIFICATION_LOCATOR}

Verify data in list airport
    Click Element Page    ${HOMEPAGE_DDL_AIRPORT_LOCATOR}
    Sleep    2s    
    Click Element Page    ${HOMEPAGE_LBL_DONMUEANGINTERNATIONALAIRPORT_LOCATOR}
    Sleep    2s
    Click Element Page    ${HOMEPAGE_BTN_DONE_LOCATOR}


Verify Display page and layout is correct
    Wait Until Contains Element Should Be Enabled    ${HOMEPAGE_ICON_FIGHTS_LOCATOR}    
    Wait Until Contains Element Text Should Be    ${HOMEPAGE_LBL_FIGHTS_LOCATOR}    ${HOMEPAGE_LBL_FIGHTS_EN}


Check Display Branner
    Wait Until Contains Element Should Be Enabled    ${HOMEPAGE_IMG_BRANNER_COVID19_LOCATOR}
    Sleep    1s
    Repeat Keyword    1 times    Get Swipe Right to Left    ${HOMEPAGE_SCROLL_BRANNER_LOCATOR}
    # Wait Until Contains Element Should Be Enabled    ${HOMEPAGE_IMG_BRANNER_CUSTOMERFEEDBACK_LOCATOR}

Verify Display main menu
    Wait Until Contains Element Should Be Enabled    ${MENU_HOMEPAGE_ICON_AIRPORT_EN_LOCATOR}
    Wait Until Contains Element Text Should Be    ${MENU_HOMEPAGE_LBL_AIRPORT_EN_LOCATOR}    ${MENU_HOMEPAGE_LBL_AIRPORT_EN} 

    Wait Until Contains Element Should Be Enabled    ${MENU_HOMEPAGE_ICON_RESERVATIONS_EN_LOCATOR}
    Wait Until Contains Element Text Should Be    ${MENU_HOMEPAGE_LBL_RESERVATIONS_EN_LOCATOR}    ${MENU_HOMEPAGE_LBL_RESERVATIONS_EN} 

    Wait Until Contains Element Should Be Enabled    ${MENU_HOMEPAGE_ICON_PRIVILEGES_EN_LOCATOR}
    Wait Until Contains Element Text Should Be    ${MENU_HOMEPAGE_LBL_PRIVILEGES_EN_LOCATOR}    ${MENU_HOMEPAGE_LBL_PRIVILEGES_EN} 

    Wait Until Contains Element Should Be Enabled    ${MENU_HOMEPAGE_ICON_EXPLORE_EN_LOCATOR}
    Wait Until Contains Element Text Should Be    ${MENU_HOMEPAGE_LBL_EXPLORE_EN_LOCATOR}    ${MENU_HOMEPAGE_LBL_EXPLORE_EN} 

    Wait Until Contains Element Should Be Enabled    ${MENU_HOMEPAGE_ICON_ME_EN_LOCATOR}
    Wait Until Contains Element Text Should Be    ${MENU_HOMEPAGE_LBL_ME_EN_LOCATOR}    ${MENU_HOMEPAGE_LBL_ME_EN} 