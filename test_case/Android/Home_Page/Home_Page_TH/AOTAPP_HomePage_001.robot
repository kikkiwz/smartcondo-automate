*** Settings ***
Resource    ../../../../variables/Variables.robot 
Resource    ../../../../keyword/Keyword.robot

*** Test Cases ***
Open app and login
    Go to login Success    ${LOGIN_LBL_THAI_LOCATOR}

Display icon Notification
    Wait Until Contains Element Should Be Enabled    ${HOMEPAGE_ICON_NOTIFICATION_LOCATOR}

Verify data in list airport
    Click Element Page    ${HOMEPAGE_DDL_AIRPORT_LOCATOR}
    Wait Until Contains Element Text Should Be    ${HOMEPAGE_LBL_PLEASESELECTAIRPORT_LOCATOR}    ${HOMEPAGE_LBL_PLEASESELECTAIRPORT_TH}
    Wait Until Contains Element Text Should Be    ${HOMEPAGE_LBL_SUVANNABHIMIAIRPORT_LOCATOR}    ${HOMEPAGE_LBL_SUVANNABHIMIAIRPORT_TH}
    Sleep    2s    
    Click Element Page    ${HOMEPAGE_LBL_SUVANNABHIMIAIRPORT_LOCATOR}
    Sleep    2s
    Wait Until Contains Element Text Should Be    ${HOMEPAGE_LBL_DONMUEANGINTERNATIONALAIRPORT_LOCATOR}    ${HOMEPAGE_LBL_DONMUEANGINTERNATIONALAIRPORT_TH}
    Wait Until Contains Element Text Should Be    ${HOMEPAGE_LBL_CHIANGMAIINTERNATIONALAIRPORT_LOCATOR}    ${HOMEPAGE_LBL_CHIANGMAIINTERNATIONALAIRPORT_TH}
    Repeat Keyword    1 times    Get Swipe Right to Left    ${HOMEPAGE_SCROLL_SELECTAIRPORT_LOCATOR}
    Wait Until Contains Element Text Should Be    ${HOMEPAGE_LBL_MAEFAHLUANGCHIANGRAIINTERNATIONALAIRPORT_LOCATOR}    ${HOMEPAGE_LBL_MAEFAHLUANGCHIANGRAIINTERNATIONALAIRPORT_TH}
    Wait Until Contains Element Text Should Be    ${HOMEPAGE_LBL_HATYAIINTERNATIONALAIRPORT_LOCATOR}    ${HOMEPAGE_LBL_HATYAIINTERNATIONALAIRPORT_TH}
    Wait Until Contains Element Text Should Be    ${HOMEPAGE_LBL_PHUKETINTERNATIONALAIRPORT_LOCATOR}    ${HOMEPAGE_LBL_PHUKETINTERNATIONALAIRPORT_TH}
    Wait Until Contains Element Text Should Be    ${HOMEPAGE_LBL_SUVANNABHIMIAIRPORT8_LOCATOR}    ${HOMEPAGE_LBL_SUVANNABHIMIAIRPORT8_TH}  
    Wait Until Contains Element Text Should Be    ${HOMEPAGE_BTN_CANCEL_LOCATOR}    ${HOMEPAGE_BTN_CANCEL_TH}
    Wait Until Contains Element Text Should Be    ${HOMEPAGE_BTN_DONE_LOCATOR}    ${HOMEPAGE_BTN_DONE_TH} 
    Capture Page Screenshot 
    Click Element Page    ${HOMEPAGE_BTN_DONE_LOCATOR}  

Verify Display page and layout is correct
    Wait Until Contains Element Should Be Enabled    ${HOMEPAGE_ICON_FIGHTS_LOCATOR}    
    Wait Until Contains Element Text Should Be    ${HOMEPAGE_LBL_FIGHTS_LOCATOR}    ${HOMEPAGE_LBL_FIGHTS_TH}

    Wait Until Contains Element Should Be Enabled    ${HOMEPAGE_ICON_AIRPORTMAP_LOCATOR}
    Wait Until Contains Element Text Should Be    ${HOMEPAGE_LBL_AIRPORTMAP_LOCATOR}    ${HOMEPAGE_LBL_AIRPORTMAP_TH}

    Wait Until Contains Element Should Be Enabled    ${HOMEPAGE_ICON_TAXIRESERVATION_LOCATOR}
    Wait Until Contains Get Text Split String Join    ${HOMEPAGE_LBL_TAXIRESERVATION_LOCATOR}    ${HOMEPAGE_LBL_TAXIRESERVATION_TH}

    Wait Until Contains Element Should Be Enabled    ${HOMEPAGE_ICON_THAILANDVRT_LOCATOR}
    Wait Until Contains Element Text Should Be    ${HOMEPAGE_LBL_THAILANDVRT_LOCATOR}    ${HOMEPAGE_LBL_THAILANDVRT_TH}

    Wait Until Contains Element Should Be Enabled    ${HOMEPAGE_ICON_LOSTANDFOUND_LOCATOR}
    Wait Until Contains Element Text Should Be    ${HOMEPAGE_LBL_LOSTANDFOUND_LOCATOR}    ${HOMEPAGE_LBL_LOSTANDFOUND_TH}

    Wait Until Contains Element Should Be Enabled    ${HOMEPAGE_ICON_TRANSPORTCARPARK_LOCATOR}
    Wait Until Contains Element Text Should Be    ${HOMEPAGE_LBL_TRANSPORTCARPARK_LOCATOR}    ${HOMEPAGE_LBL_TRANSPORTCARPARK_TH}

    Sleep    3s
    Repeat Keyword    1 times    Get Swipe Right to Left    ${HOMEPAGE_SCROLL_CATAGORIES_LOCATOR}

    Wait Until Contains Element Should Be Enabled    ${HOMEPAGE_ICON_FACILITIESANDSERVICE_LOCATOR}
    Wait Until Contains Element Text Should Be    ${HOMEPAGE_LBL_FACILITIESANDSERVICE_LOCATOR}    ${HOMEPAGE_LBL_FACILITIESANDSERVICE_TH}

    Wait Until Contains Element Should Be Enabled    ${HOMEPAGE_ICON_SECURITYANDIMMIGRATION_LOCATOR}
    Wait Until Contains Element Text Should Be    ${HOMEPAGE_LBL_SECURITYANDIMMIGRATION_LOCATOR}    ${HOMEPAGE_LBL_SECURITYANDIMMIGRATION_TH}

    Wait Until Contains Element Should Be Enabled    ${HOMEPAGE_ICON_TRAVEL_LOCATOR}
    Wait Until Contains Element Text Should Be    ${HOMEPAGE_LBL_TRAVEL_LOCATOR}    ${HOMEPAGE_LBL_TRAVEL_TH}
    Capture Page Screenshot    

    
Check Display Branner
    Wait Until Contains Element Should Be Enabled    ${HOMEPAGE_IMG_BRANNER_COVID19_LOCATOR}
    Sleep    1s
    Repeat Keyword    1 times    Get Swipe Right to Left    ${HOMEPAGE_SCROLL_BRANNER_LOCATOR}
    # Wait Until Contains Element Should Be Enabled    ${HOMEPAGE_IMG_BRANNER_CUSTOMERFEEDBACK_LOCATOR}



Check Display SHOP & DINE
    Sleep    3s
    Repeat Keyword    1 times    Get Swipe Up Small    ${HOMEPAGE_SCROLL_HOMEPAGE_LOCATOR}
    Wait Until Contains Element Text Should Be    ${HOMEPAGE_LBL_SHOPANDDINE_LOCATOR}    ${HOMEPAGE_LBL_SHOPANDDINE_TH}

    Wait Until Contains Element Should Be Enabled    ${HOMEPAGE_ICON_DUTYFREE_LOCATOR}
    Wait Until Contains Element Text Should Be    ${HOMEPAGE_LBL_DUTYFREE_LOCATOR}    ${HOMEPAGE_LBL_DUTYFREE_TH}

    Wait Until Contains Element Should Be Enabled    ${HOMEPAGE_ICON_DRUGSTORE_LOCATOR}
    Wait Until Contains Element Text Should Be    ${HOMEPAGE_LBL_DRUGSTORE_LOCATOR}    ${HOMEPAGE_LBL_DRUGSTORE_TH}

    Wait Until Contains Element Should Be Enabled    ${HOMEPAGE_ICON_FOODANDBEVERAGE_LOCATOR}
    Wait Until Contains Element Text Should Be    ${HOMEPAGE_LBL_FOODANDBEVERAGE_LOCATOR}    ${HOMEPAGE_LBL_FOODANDBEVERAGE_TH}

    Wait Until Contains Element Should Be Enabled    ${HOMEPAGE_ICON_SHOP_LOCATOR}
    Wait Until Contains Element Text Should Be    ${HOMEPAGE_LBL_SHOP_LOCATOR}    ${HOMEPAGE_LBL_SHOP_TH}

    Repeat Keyword    1 times    Get Swipe Right to Left    ${HOMEPAGE_SCROLL_SHOPANDDINE_LOCATOR}
    Wait Until Contains Element Should Be Enabled    ${HOMEPAGE_ICON_OTHERSTORE_LOCATOR}
    Wait Until Contains Element Text Should Be    ${HOMEPAGE_LBL_OTHERSTORE_LOCATOR}    ${HOMEPAGE_LBL_OTHERSTORE_TH}
    #Repeat Keyword    1 times    Get Swipe Up    ${HOMEPAGE_SCROLL_HOMEPAGE_LOCATOR}
    Capture Page Screenshot 

Check Display CAMPAIGNS & PROMOTION
    Wait Until Contains Element Text Should Be    ${HOMEPAGE_LBL_CAMPAIGNSANDPROMOTIONS_LOCATOR}    ${HOMEPAGE_LBL_CAMPAIGNSANDPROMOTIONS_TH}
    Sleep    3s
    Wait Until Contains Element Should Be Enabled    ${HOMEPAGE_IMG_AOTLIMOUSINE_LOCATOR}
    Click Element Page    ${HOMEPAGE_IMG_AOTLIMOUSINE_LOCATOR}    
    #Wait Until Contains Element Text Should Be    ${HEADER_PAGE_LBL_RESERVATION_LOCATOR}    ${HEADER_PAGE_LBL_RESERVATION_TH}
    Click Element Page    ${FACILITIESANDSERVICE_ICON_BACKARROWIMAGEVIEW_LOCATOR}

Check Display RECOMMENDED PRODUCTS FOR YOU
    Get Swipe Up Small    ${HOMEPAGE_SCROLL_HOMEPAGE_LOCATOR}
    Wait Until Contains Element Text Should Be    ${HOMEPAGE_LBL_RECOMMENDEDPRODUCTSFORYOU_LOCATOR}    ${HOMEPAGE_LBL_RECOMMENDEDPRODUCTSFORYOU_TH}
    Wait Until Contains Element Should Be Enabled    ${HOMEPAGE_IMG_RECOMMENDEDPRODUCTSFORYOU_LOCATOR}
    #Wait Until Contains Element Should Be Enabled    ${HOMEPAGE_IMG_CAMPAIGNSANDPROMOTIONS_LOCATOR}
    #Get Text String    ${HOMEPAGE_LBL_RECOMMENDEDPRODUCTSFORYOU_LOCATOR}
    Repeat Keyword    1 times    Get Swipe Up Small    ${HOMEPAGE_SCROLL_HOMEPAGE_LOCATOR}

Display INSURANCE
    Wait Until Contains Element Text Should Be    ${HOMEPAGE_LBL_INSURANCE_LOCATOR}    ${HOMEPAGE_LBL_INSURANCE_TH}
    Wait Until Contains Element Should Be Enabled    ${HOMEPAGE_IMG_INSURANCE_LOCATOR}

Verify Display main menu
    Wait Until Contains Element Should Be Enabled    ${MENU_HOMEPAGE_ICON_AIRPORT_TH_LOCATOR}
    Wait Until Contains Element Text Should Be    ${MENU_HOMEPAGE_LBL_AIRPORT_TH_LOCATOR}    ${MENU_HOMEPAGE_LBL_AIRPORT_TH} 

    Wait Until Contains Element Should Be Enabled    ${MENU_HOMEPAGE_ICON_RESERVATIONS_TH_LOCATOR}
    Wait Until Contains Element Text Should Be    ${MENU_HOMEPAGE_LBL_RESERVATIONS_TH_LOCATOR}    ${MENU_HOMEPAGE_LBL_RESERVATIONS_TH} 

    Wait Until Contains Element Should Be Enabled    ${MENU_HOMEPAGE_ICON_PRIVILEGES_TH_LOCATOR}
    Wait Until Contains Element Text Should Be    ${MENU_HOMEPAGE_LBL_PRIVILEGES_TH_LOCATOR}    ${MENU_HOMEPAGE_LBL_PRIVILEGES_TH} 

    Wait Until Contains Element Should Be Enabled    ${MENU_HOMEPAGE_ICON_EXPLORE_TH_LOCATOR}
    Wait Until Contains Element Text Should Be    ${MENU_HOMEPAGE_LBL_EXPLORE_TH_LOCATOR}    ${MENU_HOMEPAGE_LBL_EXPLORE_TH} 

    Wait Until Contains Element Should Be Enabled    ${MENU_HOMEPAGE_ICON_ME_TH_LOCATOR}
    Wait Until Contains Element Text Should Be    ${MENU_HOMEPAGE_LBL_ME_TH_LOCATOR}    ${MENU_HOMEPAGE_LBL_ME_TH} 
    Capture Page Screenshot     