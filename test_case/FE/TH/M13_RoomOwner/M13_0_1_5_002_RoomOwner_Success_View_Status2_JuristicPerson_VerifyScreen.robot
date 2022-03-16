*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
Suite Setup    Set Library Search Order    Selenium2Library    AppiumLibrary
*** Test Cases ***
################### View owner ###################
M13_0_1_5_002_RoomOwner_Success_View_Status2_JuristicPerson_VerifyScreen [VerifyAction "View owner information"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. click choose property
    ...    4. click choose empty room
    ...    5. click Create room owner
    ...    6. click View button

    [Setup]    Open Browser To Login Page Click Building and Room    ${PROPERTYE_LOCATOR}    ${ROOMNO_B201}

    Log To Console    ${\n}=========== [Create] CreateRoomOwner =============== 
	
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_INFO_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_INFO_LBL_NUMBERROOM_TH} ${ROOMNO_B201}

    #close button
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_BTN_CLOSE_LOCATOR}

Verify screen page "View owner information" [Juristic person]

    Create RoomOwner input all field data Juristic person    ${ROOMNO_B201}

    #Click X
    Click Element Page    ${ROOMOWNER_BTN_CLOSE_LOCATOR}

    # Click Room
    Click Room    ${ROOMNO_B201}

    Log To Console    ${\n}=========== View owner information =============== 

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_TH} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_VIEW_LBL_NUMBERROOM_TH} ${ROOMNO_B201}

    #Owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_OWNERINFORMATON_HEARDER_LOCATOR}    ${ROOMOWNER_VIEW_LBL_OWNERINFORMATON_HEARDER_TH} 

    #Owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_VIEW_LBL_OWNERINFORMATION_TH} 
    
    #UserImage
    Wait Element Visible    ${ROOMOWNER_VIEW_IMG_USERIMAGE_LOCATOR}

    #Company name
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_COMPANYNAME_LOCATOR}    ${ROOMOWNER_VIEW_LBL_COMPANYNAME_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_COMPANYNAME_LOCATOR}    ${ROOMOWNER_COMPANYNAME_1_VALUE} 
    #Short name
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_SHORTNAME_LOCATOR}    ${ROOMOWNER_VIEW_LBL_SHORTNAME_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_SHORTNAME_LOCATOR}    ${ROOMOWNER_SHORTNAME_1_VALUE} 
    #Juristic id
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_JURISTICID_LOCATOR}    ${ROOMOWNER_VIEW_LBL_JURISTICID_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_JURISTICID_LOCATOR}    ${ROOMOWNER_JURISTICID_1_VALUE} 
    #Tax identification number
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_TAXIDENTIFICATIONNUMBER_11_LOCATOR}    ${ROOMOWNER_VIEW_LBL_TAXIDENTIFICATIONNUMBER_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_TAXIDENTIFICATIONNUMBER_11_LOCATOR}    ${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE} 
    #Mobile
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_MOBILE_11_LOCATOR}    ${ROOMOWNER_VIEW_LBL_MOBILE_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_MOBILE_11_LOCATOR}    ${ROOMOWNER_MOBILE_1_VALUE} 
    #Fax
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_FAX_LOCATOR}    ${ROOMOWNER_VIEW_LBL_FAX_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_FAX_LOCATOR}    ${ROOMOWNER_FAX_1_VALUE} 
    #E-mail
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_EMAIL_11_LOCATOR}    ${ROOMOWNER_VIEW_LBL_EMAIL_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_EMAIL_11_LOCATOR}    ${ROOMOWNER_EMAIL_1_VALUE} 
    #Address
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_ADDRESS_11_LOCATOR}    ${ROOMOWNER_VIEW_LBL_ADDRESS_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_ADDRESS_11_LOCATOR}    ${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE} 

    #Transfer information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_TRANSFERINFORMATION_LOCATOR}    ${ROOMOWNER_VIEW_LBL_TRANSFERINFORMATION_TH} 
    #Transfer date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_TRANSFERDATE_LOCATOR}    ${ROOMOWNER_VIEW_LBL_TRANSFERDATE_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_TRANSFERDATE_LOCATOR}    ${ROOMOWNER_TRANSFERDATE_TH_VALUE} 
    #Arrival date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_ARRIVALDATE_LOCATOR}    ${ROOMOWNER_VIEW_LBL_ARRIVALDATE_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_ARRIVALDATE_LOCATOR}    ${ROOMOWNER_ARRIVALDATE_TH_VALUE} 
    #Appointment date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_APPOINTMENTDATE_LOCATOR}    ${ROOMOWNER_VIEW_LBL_APPOINTMENTDATE_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_APPOINTMENTDATE_LOCATOR}    ${ROOMOWNER_APPOINTMENTDATE_TH_VALUE} 
    #Accept date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_ACCEPTDATE_LOCATOR}    ${ROOMOWNER_VIEW_LBL_ACCEPTDATE_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_ACCEPTDATE_LOCATOR}    ${ROOMOWNER_ACCEPTDATE_TH_VALUE} 
    #Warranty end date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_WARRANTYENDDATE_LOCATOR}    ${ROOMOWNER_VIEW_LBL_WARRANTYENDDATE_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_WARRANTYENDDATE_LOCATOR}    ${ROOMOWNER_WARRANTYENDDATE_TH_VALUE} 
    #Manage type
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_MANAGETYPE_LOCATOR}    ${ROOMOWNER_VIEW_LBL_MANAGETYPE_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_MANAGETYPE_LOCATOR}    ${ROOMOWNER_MANAGETYPE_SELFLIVE_TH_VALUE} 
    #Document language
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_DOCUMENTLANGUAGE_LOCATOR}    ${ROOMOWNER_VIEW_LBL_DOCUMENTLANGUAGE_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_DOCUMENTLANGUAGE_LOCATOR}    ${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE} 
    
    Generic Test Case Teardown RoomOwner No Close    ${ROOMOWNER_STAMPDELETE_FILENAME_VALUE}    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${ROOMNO_B201}

    #Click X
    Click Element Page    ${ROOMOWNER_BTN_CLOSE_LOCATOR}
    #Click Clear
    Click Element Page    ${ROOMOWNER_BTN_CLEAR_LOCATOR}

    # Click Room
    Click Room    ${ROOMNO_B201}

    Create RoomOwner input require field data Juristic person    ${ROOMNO_B201}

    #Click X
    Click Element Page    ${ROOMOWNER_BTN_CLOSE_LOCATOR}

    # Click Room
    Click Room    ${ROOMNO_B201}

    Log To Console    ${\n}=========== View owner information =============== 

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_TH} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_VIEW_LBL_NUMBERROOM_TH} ${ROOMNO_B201}

    #Owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_OWNERINFORMATON_HEARDER_LOCATOR}    ${ROOMOWNER_VIEW_LBL_OWNERINFORMATON_HEARDER_TH} 

    #Owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_VIEW_LBL_OWNERINFORMATION_TH} 
    
    #UserImage
    Wait Element Visible    ${ROOMOWNER_VIEW_IMG_NOUSERIMAGE_LOCATOR}
    #Company name
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_COMPANYNAME_LOCATOR}    ${ROOMOWNER_VIEW_LBL_COMPANYNAME_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_COMPANYNAME_LOCATOR}    ${ROOMOWNER_COMPANYNAME_2_VALUE} 
    #Short name
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_SHORTNAME_LOCATOR}    ${ROOMOWNER_VIEW_LBL_SHORTNAME_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_SHORTNAME_LOCATOR}    ${SUBTRACT} 
    #Juristic id
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_JURISTICID_LOCATOR}    ${ROOMOWNER_VIEW_LBL_JURISTICID_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_JURISTICID_LOCATOR}    ${SUBTRACT} 
    #Tax identification number
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_TAXIDENTIFICATIONNUMBER_11_LOCATOR}    ${ROOMOWNER_VIEW_LBL_TAXIDENTIFICATIONNUMBER_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_TAXIDENTIFICATIONNUMBER_11_LOCATOR}    ${ROOMOWNER_TAXIDENTIFICATIONNUMBER_2_VALUE} 
    #Mobile
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_MOBILE_11_LOCATOR}    ${ROOMOWNER_VIEW_LBL_MOBILE_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_MOBILE_11_LOCATOR}    ${SUBTRACT} 
    #Fax
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_FAX_LOCATOR}    ${ROOMOWNER_VIEW_LBL_FAX_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_FAX_LOCATOR}    ${SUBTRACT} 
    #E-mail
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_EMAIL_11_LOCATOR}    ${ROOMOWNER_VIEW_LBL_EMAIL_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_EMAIL_11_LOCATOR}    ${SUBTRACT} 
    #Address
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_ADDRESS_11_LOCATOR}    ${ROOMOWNER_VIEW_LBL_ADDRESS_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_ADDRESS_11_LOCATOR}    ${SUBTRACT} 

    #Transfer information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_TRANSFERINFORMATION_LOCATOR}    ${ROOMOWNER_VIEW_LBL_TRANSFERINFORMATION_TH} 
    #Transfer date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_TRANSFERDATE_LOCATOR}    ${ROOMOWNER_VIEW_LBL_TRANSFERDATE_TH} 
    Wait Element Not Visible    ${ROOMOWNER_VIEW_LBD_TRANSFERDATE_LOCATOR}
    #Arrival date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_ARRIVALDATE_LOCATOR}    ${ROOMOWNER_VIEW_LBL_ARRIVALDATE_TH} 
    Wait Element Not Visible    ${ROOMOWNER_VIEW_LBD_ARRIVALDATE_LOCATOR}
    #Appointment date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_APPOINTMENTDATE_LOCATOR}    ${ROOMOWNER_VIEW_LBL_APPOINTMENTDATE_TH} 
    Wait Element Not Visible    ${ROOMOWNER_VIEW_LBD_APPOINTMENTDATE_LOCATOR}
    #Accept date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_ACCEPTDATE_LOCATOR}    ${ROOMOWNER_VIEW_LBL_ACCEPTDATE_TH} 
    Wait Element Not Visible    ${ROOMOWNER_VIEW_LBD_ACCEPTDATE_LOCATOR}
    #Warranty end date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_WARRANTYENDDATE_LOCATOR}    ${ROOMOWNER_VIEW_LBL_WARRANTYENDDATE_TH} 
    Wait Element Not Visible    ${ROOMOWNER_VIEW_LBD_WARRANTYENDDATE_LOCATOR}
    #Manage type
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_MANAGETYPE_LOCATOR}    ${ROOMOWNER_VIEW_LBL_MANAGETYPE_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_MANAGETYPE_LOCATOR}    ${EMPTY} 
    #Document language
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_DOCUMENTLANGUAGE_LOCATOR}    ${ROOMOWNER_VIEW_LBL_DOCUMENTLANGUAGE_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_DOCUMENTLANGUAGE_LOCATOR}    ${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE} 
    
    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${ROOMOWNER_VIEW_M13_0_1_5_002_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Generic Test Case Teardown RoomOwner    ${ROOMOWNER_STAMPDELETE_FILENAME_VALUE}    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${ROOMNO_B201}
