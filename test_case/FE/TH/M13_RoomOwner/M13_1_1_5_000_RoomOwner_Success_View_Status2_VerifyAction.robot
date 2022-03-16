*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
Suite Setup    Set Library Search Order    Selenium2Library    AppiumLibrary
*** Test Cases ***
################### View owner ###################
M13_1_1_5_000_RoomOwner_Success_View_Status2_VerifyAction [VerifyAction "View owner information"]
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

    Create RoomOwner input all field data Thai    ${ROOMNO_B201}
    
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

Verify API Onload and mapping data

    Log To Console    ${\n}=========== View owner information =============== 

    #Identification No. /Passport number
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_IDENTIFICATIONNOPASSPORTNUMBER_LOCATOR}    ${ROOMOWNER_VIEW_LBL_IDENTIFICATIONNOPASSPORTNUMBER_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_IDENTIFICATIONNOPASSPORTNUMBER_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE} 
    #Name
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_NAME_LOCATOR}    ${ROOMOWNER_VIEW_LBL_NAME_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_NAME_LOCATOR}    ${ROOMOWNER_TITLE_MISS_TH_VALUE} ${ROOMOWNER_FIRSTNAME_1_VALUE} ${ROOMOWNER_LASTNAME_1_VALUE}
    #Nickname
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_NICKNAME_LOCATOR}    ${ROOMOWNER_VIEW_LBL_NICKNAME_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_NICKNAME_LOCATOR}    ${ROOMOWNER_NICKNAME_1_VALUE}
    #Birth date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_BIRTHDATE_LOCATOR}    ${ROOMOWNER_VIEW_LBL_BIRTHDATE_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_BIRTHDATE_LOCATOR}    ${ROOMOWNER_BIRTHDATE_VALUE} 
    #Identification create date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_IDENTIFICATIONCREATEDATE_LOCATOR}    ${ROOMOWNER_VIEW_LBL_IDENTIFICATIONCREATEDATE_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_IDENTIFICATIONCREATEDATE_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONCREATEDATE_VALUE} 
    #Identification expire date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_IDENTIFICATIONEXPIREDATE_LOCATOR}    ${ROOMOWNER_VIEW_LBL_IDENTIFICATIONEXPIREDATE_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_IDENTIFICATIONEXPIREDATE_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONEXPIREDATE_VALUE} 
    #Mobile
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_MOBILE_LOCATOR}    ${ROOMOWNER_VIEW_LBL_MOBILE_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_MOBILE_LOCATOR}    ${ROOMOWNER_MOBILE_1_VALUE} 
    #E-mail
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_EMAIL_21_LOCATOR}    ${ROOMOWNER_VIEW_LBL_EMAIL_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_EMAIL_21_LOCATOR}    ${ROOMOWNER_EMAIL_1_VALUE} 
    #Line ID
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_LINEID_LOCATOR}    ${ROOMOWNER_VIEW_LBL_LINEID_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_LINEID_LOCATOR}    ${ROOMOWNER_LINEID_1_VALUE} 
    #Occupation
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_OCCUPATION_LOCATOR}    ${ROOMOWNER_VIEW_LBL_OCCUPATION_TH} 
    # Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_OCCUPATION_LOCATOR}    ${ROOMOWNER_OCCUPATION_OTHER_TH_VALUE} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_OCCUPATION_OTHER_LOCATOR}    ${ROOMOWNER_OCCUPATION_OTHER_1_VALUE} 
    #Education
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_EDUCATION_LOCATOR}    ${ROOMOWNER_VIEW_LBL_EDUCATION_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_EDUCATION_LOCATOR}    ${ROOMOWNER_EDUCATION_BACHELORSDEGREE_TH_VALUE} 
    #Tax identification number
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_TAXIDENTIFICATIONNUMBER_21_LOCATOR}    ${ROOMOWNER_VIEW_LBL_TAXIDENTIFICATIONNUMBER_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_TAXIDENTIFICATIONNUMBER_21_LOCATOR}    ${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE} 
    #Salary
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_SALARY_21_LOCATOR}    ${ROOMOWNER_VIEW_LBL_SALARY_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_SALARY_21_LOCATOR}    ${ROOMOWNER_SALARY_BATH_50000_100000_TH_VALUE} 
    #Address
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBL_ADDRESS_2_LOCATOR}    ${ROOMOWNER_VIEW_LBL_ADDRESS_TH} 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_VIEW_LBD_ADDRESS_2_LOCATOR}    ${ROOMOWNER_ADDRESS_1_VALUE} 
    
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
    
    ${roomNo}=    Set Variable    ${ROOMNO_B201}
    #================ Check Value Table ================
    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    # ================ Verify DB [RoomOwner] ================    
    ${dataRoomOwner}=    Evaluate    [{"tranferorType":${ROOMOWNER_TRANFERORTYPE_VALUE},"ownerType":"${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}","identificationNo":"${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}","title":"${ROOMOWNER_TITLE_MISSID_VALUE}","firstName":"${ROOMOWNER_FIRSTNAME_1_VALUE}","lastName":"${ROOMOWNER_LASTNAME_1_VALUE}","companyName":"${NONE}","nickname":"${ROOMOWNER_NICKNAME_1_VALUE}","shortName":"${NONE}","birthDate":"${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}","identificationCreateDate":"${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}","identificationExpireDate":"${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}","phone":"${ROOMOWNER_MOBILE_1_VALUE}","fax":"${NONE}","email":"${ROOMOWNER_EMAIL_1_VALUE}","lineId":"${ROOMOWNER_LINEID_1_VALUE}","taxId":"${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}","juristicId":"${NONE}","education":"${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}","occupation":"${ROOMOWNER_OCCUPATION_OTHERID_VALUE}","occupationOther":"${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}","salary":"${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}","address":"${ROOMOWNER_ADDRESS_1_VALUE}","cartype":"${ROOMOWNER_CARTYPE_CAR_TH_VALUE}","carplateNumber":"${ROOMOWNER_CARPLATENUMBER_1_VALUE}","tranferDate":"${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}","arrivalDate":"${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}","appointmentDate":"${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}","acceptDate":"${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}","warrantyEndDate":"${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}","manageType":"${ROOMOWNER_MANAGETYPE_SELFLIVE_TH_VALUE}","languageOfDocuments":"${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}","addressForInvoictingReceipt":"${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}","electricStartUnit":"${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}","waterStartUnit":"${ROOMOWNER_WATERSTARTUNIT_1_VALUE}"}]
    Request Verify DB Check Data RoomOwner    ${MYSQL_TYPE_VIEW_ALLFIELD}    ${roomId}    ${roomTransferId}    ${dataRoomOwner}

Verify Action : click Edit data button
    
    Log To Console    ${\n}=========== Edit data =============== 
    #Edit data
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}    ${ROOMOWNER_LBL_EDIT_DATA_TH} 
    #Click Edit data
    Click Element Page    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}

    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_TH} ${ROOMNO_B201}

    #Click Cancel
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_CANCEL_LOCATOR}

Verify Action : click Change owner button

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
    
    Log To Console    ${\n}=========== Change owner =============== 

    #Change owner
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_CHANGEOWNER_DATA_LOCATOR}    ${ROOMOWNER_LBL_CHANGEOWNER_DATA_TH} 
    #Click Change owner
    Click Element Page    ${ROOMOWNER_BTN_CHANGEOWNER_DATA_LOCATOR}

    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_CHANGEOWNER_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_CHANGEOWNER_LBL_NUMBERROOM_TH} ${ROOMNO_B201}

    #Owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_ADD_LBL_OWNERINFORMATION_TH} 


    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${ROOMOWNER_VIEW_M13_1_1_5_000_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Generic Test Case Teardown RoomOwner    ${ROOMOWNER_STAMPDELETE_FILENAME_VALUE}    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${ROOMNO_B201}
