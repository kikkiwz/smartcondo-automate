*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
Suite Setup    Set Library Search Order    Selenium2Library    AppiumLibrary
*** Test Cases ***
################### [Create] CreateRoomOwner ###################
M13_0_1_2_003_RoomOwner_Success_Create_Status1_VerifyScreen [Verify screen page "Create room owner"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. click choose property
    ...    4. click choose empty room
    ...    5. click Create room owner

    [Setup]    Open Browser To Login Page Click Building and Room    ${PROPERTYE_LOCATOR}    ${ROOMNO_B201}

    Log To Console    ${\n}=========== [Create] CreateRoomOwner =============== 
	#Click Create room owner
    Click Element Page    ${MENU_LBL_TYPEROOM_CREATEROOMOWNER_LOCATOR}
    
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_ADD_LBL_NUMBERROOM_TH} ${ROOMNO_B201}

    #close button
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_BTN_CLOSE_LOCATOR}

    #Owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_ADD_LBL_OWNERINFORMATION_TH} 

    #- กรณีที่เจ้าของห้องเป็นนิติบุคคล จะต้องเลือกกรอกนิติบุคคลคนแรกเท่านั้น - กรณีที่เจ้าของห้องเป็นบุคคลธรรมดาจะสามารถเลือกเจ้าของห้องได้เอง ถ้ามีการเลือกเจ้าของห้องซ้ำ เจ้าของห้องเดิม จะถูกเปลี่ยนเป็นผู้พักอาศัยทันที
    Wait Until Contains Get Text Split String Join    ${ROOMOWNER_ADD_LBL_NOTE_LOCATOR}    ${ROOMOWNER_ADD_LBL_NOTE_TH} 

    #Owner :
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_OWNER_LOCATOR}    ${ROOMOWNER_ADD_LBL_OWNER_TH} 

    #Owner
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_TYPE_OWNER_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_TYPE_OWNER_TH} 
    #Guest Person
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_TYPE_GUESTPERSON_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_TYPE_GUESTPERSON_TH} 

############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "บุคคลธรรมดา - คนไทย" [1] ############## 
Verify screen : legth 125 and type is varchar [Individuals - Thai nationals]
    
    # maxlength="125"
    
    #Identification No. /Passport number *
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}
    #Nickname
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_NICKNAME_1_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}
    #E-mail
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_EMAIL_1_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}
    #Line ID
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_LINEID_1_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}
    #Tax identification number
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_1_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}
    
    #Click Add car
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDCAR_1_LOCATOR}

    #Car plate number
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_CARPLATENUMBER_1_1_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 255 and type is varchar [Individuals - Thai nationals]

    # maxlength="255"
    
    #First name *
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_1_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}
    #Last name
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_LASTNAME_1_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}
    #[กรอกอาชีพอื่นๆ]
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_OCCUPATION_OTHER_2_1_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

Verify screen : ength 12,2 and type is decimal [Individuals - Thai nationals
    
    # max="9999999999.99" min="0"
    
    #Electric start unit *
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_ELECTRICSTARTUNIT_LOCATOR}    ${ATTRIBUTE_MIN}    ${DEFAULT_TXT_MIN_0}
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_ELECTRICSTARTUNIT_LOCATOR}    ${ATTRIBUTE_MAX}    ${DEFAULT_TXT_MAX_9999999999_99}
    
    #Water start unit *
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_WATERSTARTUNIT_LOCATOR}    ${ATTRIBUTE_MIN}    ${DEFAULT_TXT_MIN_0}
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_WATERSTARTUNIT_LOCATOR}    ${ATTRIBUTE_MAX}    ${DEFAULT_TXT_MAX_9999999999_99}

Verify screen : legth 10 and type is varchar [Individuals - Thai nationals]
    
    # maxlength="10"
    #Mobile
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_MOBILE_1_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_10}
    
Verify screen : Verify list data in radiobutton [Owner : ,Guest Person 1 :] [Individuals - Thai nationals]
    #Owner
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_TYPE_OWNER_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_TYPE_OWNER_TH} 
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_RDL_TYPE_OWNER_1_CHECK_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${TRUE_LOWWER}
    #Guest Person
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_TYPE_GUESTPERSON_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_TYPE_GUESTPERSON_TH} 
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_RDL_TYPE_GUESTPERSON_1_CHECK_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${FALSE_LOWWER}

Verify screen : Verify list data in dropdown [Owner type][Individuals - Thai nationals]
    
    #Owner type *
    Element Text Should Be Value Dropdown    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_CLASS_LOCATOR}    ${DEFAULT_LBL_TYPE_OWNERTYPE_TH}
    Press Keys    ${NONE}    ${ESC}
    Sleep    0.5s

Verify screen : Verify list data in dropdown [Title][Individuals - Thai nationals]

    #Titles
    ${selectTitles}=    Request DB Data Titles All
    ${dataTitlesAll}=    Set Variable    ${selectTitles}[0]
	@{valArrDataTitlesNameTh}=    Set Variable    ${selectTitles}[2]
	@{valArrDataTitlesNameEn}=    Set Variable    ${selectTitles}[3]
    # Log To Console    ${valArrDataTitlesNameTh}
    Check value many dropdown generateId for dx     ${DEFAULT_TYPE_LONG}    ${ROOMOWNER_ADD_DDL_TITLE_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_TITLE_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TITLE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TITLE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${valArrDataTitlesNameTh}    ${ROOMOWNER_ADD_LBL_TITLE_1_LOCATOR}

Verify screen : Verify list data in dropdown [Education][Individuals - Thai nationals]

    # Education
    Check value many dropdown generateId for dx     ${DEFAULT_TYPE_NOTLONG}    ${ROOMOWNER_ADD_DDL_EDUCATION_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_EDUCATION_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_EDUCATION_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_EDUCATION_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${DEFAULT_LBL_EDUCATION_TH}    ${ROOMOWNER_ADD_LBL_EDUCATION_1_LOCATOR}

Verify screen : Verify list data in dropdown [Occupation][Individuals - Thai nationals]

    # Occupation
    ${selectOccupation}=    Request DB Data Occupation
    ${dataOccupationAll}=    Set Variable    ${selectOccupation}[0]
	@{valArrDataOccupationNameTh}=    Set Variable    ${selectOccupation}[2]
	@{valArrDataOccupationNameEn}=    Set Variable    ${selectOccupation}[3]
    Check value many dropdown generateId for dx     ${DEFAULT_TYPE_LONG}    ${ROOMOWNER_ADD_DDL_OCCUPATION_2_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_OCCUPATION_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${valArrDataOccupationNameTh}    ${ROOMOWNER_ADD_LBL_OCCUPATION_2_1_LOCATOR}

Verify screen : Verify list data in dropdown [Salary (Baht)][Individuals - Thai nationals]

    # Salary (Baht)
    Check value many dropdown generateId for dx     ${DEFAULT_TYPE_NOTLONG}    ${ROOMOWNER_ADD_DDL_SALARY_2_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_SALARY_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_SALARY_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_SALARY_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${DEFAULT_LBL_SALARY_TH}    ${ROOMOWNER_ADD_LBL_SALARY_2_1_LOCATOR}

Verify screen : Verify list data in dropdown [Car type][Individuals - Thai nationals]
    #Click Add car
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDCAR_1_LOCATOR}

    # Car type
    Check value many dropdown generateId for dx     ${DEFAULT_TYPE_NOTLONG}    ${ROOMOWNER_ADD_DDL_CARTYPE_1_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_CARTYPE_1_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_CARTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_CARTYPE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${DEFAULT_LBL_CARTYPE_TH}    ${ROOMOWNER_ADD_LBL_CARTYPE_1_1_LOCATOR}

Verify screen : Verify list data in radiobutton [Car sticker][Individuals - Thai nationals]
    
    #Sticker
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARSTICKER_STICKER_1_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARSTICKER_STICKER_TH} 
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_RDL_CARSTICKER_STICKER_1_1_CHECK_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${FALSE_LOWWER}
    #No sticker
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARSTICKER_NOSTICKER_1_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARSTICKER_NOSTICKER_TH} 
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_RDL_CARSTICKER_NOSTICKER_1_1_CHECK_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${TRUE_LOWWER}

Verify screen : Verify list data in dropdown [Language of documents][Individuals - Thai nationals]
    # Language of documents
    Check value many dropdown generateId for dx     ${DEFAULT_TYPE_NOTLONG}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_INPUT_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${DEFAULT_LBL_LANGUAGEOFDOCUMENTS_TH_VALUE}    ${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_LOCATOR}

Verify screen : Verify Hover in search button [Identification No. /Passport number *,Tax identification number,Attach other documents,Manage type][Individuals - Thai nationals]
    
    #Identification No. /Passport number *
    #Search transfer history
    Wait Element Visible    ${ROOMOWNER_ADD_BTN_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}
    Mouse Down    ${ROOMOWNER_ADD_BTN_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_IDENTIFICATIONNOPASSPOERNUMBER_HOVER_LOCATOR}    ${ROOMOWNER_ADD_LBL_IDENTIFICATIONNOPASSPOERNUMBER_HOVER_TH} 
    
    #Tax identification number
    #Enter the ID card number.
    Wait Element Visible    ${ROOMOWNER_ADD_BTN_TAXIDENTIFICATIONNUMBER_1_LOCATOR}
    Mouse Down    ${ROOMOWNER_ADD_BTN_TAXIDENTIFICATIONNUMBER_1_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_TAXIDENTIFICATIONNUMBER_1_HOVER_LOCATOR}    ${ROOMOWNER_ADD_LBL_TAXIDENTIFICATIONNUMBER_HOVER_TH} 
    
    #Attach other documents
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENT_LOCATOR}    ${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENTS_TH} 
    #icon Attach other documents
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_ICON_ATTACHOTHERDOCUMENT_NOTE_LOCATOR}
    Mouse Down    ${ROOMOWNER_ADD_ICON_ATTACHOTHERDOCUMENT_NOTE_LOCATOR}
    # - You can upload .pdf .csv .xlx .xlxs .jpg .png files. .doc .docx only - File size not more than 1 MB.
    Wait Until Contains Get Text Split String Join    ${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENT_NOTE_LOCATOR}    ${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENTS_NOTE_TH} 
    Click Element Page    ${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENT_LOCATOR}

    #Manage type
    #icon Attach other documents
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_ICON_LANGUAGEOFDOCUMENTS_NOTE_LOCATOR}
    Mouse Down    ${ROOMOWNER_ADD_ICON_LANGUAGEOFDOCUMENTS_NOTE_LOCATOR}
    #All document of this room will be a selected language.
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_NOTE_LOCATOR}    ${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_NOTE_TH} 
    Click Element Page    ${ROOMOWNER_ADD_LBL_MANAGETYPE_LOCATOR}
    
Verify screen : Verify screen click Tax identification number[Individuals - Thai nationals]
        
    # Input Tax identification number [ปรเภทบุคคลธรรมดา]
	Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_TAXIDENTIFICATIONNUMBER_THAI_FOREIGNERS_VALUE}

    #Click Tax identification number
    Click Element Double    ${ROOMOWNER_ADD_BTN_TAXIDENTIFICATIONNUMBER_1_LOCATOR}  
    Sleep    1s
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_TXT_TAXIDENTIFICATIONNUMBER_1_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_TAXIDENTIFICATIONNUMBER_THAI_FOREIGNERS_VALUE}
    # Clear Element Text    ${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_1_LOCATOR}

Verify screen : Verify screen tab "Popup Profile"[Individuals - Thai nationals]
        
    # Input Identification No. /Passport number * [ปรเภทบุคคลธรรมดา]
	# Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_TAXIDENTIFICATIONNUMBER_THAI_FOREIGNERS_VALUE}

    #Click Tax identification number
    Click Element Page    ${ROOMOWNER_ADD_BTN_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}
    # Sleep    1s
    #Profile
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_TH} 
    #Identification No. /Passport number
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_IDENTIFICATIONNOPASSPORTNUMBER_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_IDENTIFICATIONNOPASSPORTNUMBER_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_TXT_PROFILE_IDENTIFICATIONNOPASSPORTNUMBER_LOCATOR}
    #Title
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_TITLE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_TITLE_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_TXT_PROFILE_TITLE_LOCATOR}
    #First name 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_FIRSTNAME_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_FIRSTNAME_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_TXT_PROFILE_FIRSTNAME_LOCATOR}
    #Last name
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_LASTNAME_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_LASTNAME_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_TXT_PROFILE_LASTNAME_LOCATOR}
    
    #Transfer history
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_PROPERTY_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_PROPERTY_TH} 
    #Property :
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_BUILDING_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_BUILDING_TH} 
    #Building:
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_BUILDING_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_BUILDING_TH} 
    #Room:
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_ROOM_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_ROOM_TH} 
    #Transfer date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_TRANSFERDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_TRANSFERDATE_TH} 
    #Arrival date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_ARRIVALDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_ARRIVALDATE_TH} 
    #Appointment date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_APPOINTMENTDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_APPOINTMENTDATE_TH} 
    #Accept date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_ACCEPTDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_ACCEPTDATE_TH} 
    #Warranty end date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_WARRANTYENDDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_WARRANTYENDDATE_TH} 
    
    #Click Back
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_PROFILE_BACK_LOCATOR}
    
    #Input #Identification No. /Passport number * [สำหรับนิติบุคคล]
    Clear Element Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}
	Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_TAXIDENTIFICATIONNUMBER_JURISTICPERSON_VALUE}

    #Click Tax identification number
    Click Element Page    ${ROOMOWNER_ADD_BTN_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}

    #Profile
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_TH} 
    #Tax identification number
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_TAXIDENTIICATIONNUMBER_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_TAXIDENTIICATIONNUMBER_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_TXT_PROFILE_TAXIDENTIICATIONNUMBER_LOCATOR}
    #Juristic id
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_JURISTICID_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_JURISTICID_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_TXT_PROFILE_JURISTICID_LOCATOR}
    #Company name
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_COMPANYNAME_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_COMPANYNAME_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_TXT_PROFILE_COMPANYNAME_LOCATOR}
    #Short name 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_SHORTNAME_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_SHORTNAME_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_TXT_PROFILE_SHORTNAME_LOCATOR}
    
    #Transfer history
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_PROPERTY_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_PROPERTY_TH} 
    #Property :
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_BUILDING_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_BUILDING_TH} 
    #Building:
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_BUILDING_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_BUILDING_TH} 
    #Room:
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_ROOM_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_ROOM_TH} 
    #Transfer date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_TRANSFERDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_TRANSFERDATE_TH} 
    #Arrival date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_ARRIVALDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_ARRIVALDATE_TH} 
    #Appointment date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_APPOINTMENTDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_APPOINTMENTDATE_TH} 
    #Accept date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_ACCEPTDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_ACCEPTDATE_TH} 
    #Warranty end date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_WARRANTYENDDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_WARRANTYENDDATE_TH} 
    
    #Click Back
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_PROFILE_BACK_LOCATOR}

############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "บุคคลธรรมดา - ต่างชาติ" [1] ##############     
Verify screen : legth 125 and type is varchar [Individuals - Foreigners]
    
    # maxlength="125"

    #Owner type *
    Select Dropdown    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_CLASS_LOCATOR}    ${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_TH_VALUE}
    Press Keys    ${NONE}    ${ESC}
    Sleep    0.5s
    
    #Identification No. /Passport number *
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}
    #Nickname
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_NICKNAME_1_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}
    #E-mail
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_EMAIL_1_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}
    #Line ID
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_LINEID_1_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}
    # #Tax identification number
    # Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_1_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}
    
    #Click Add car
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDCAR_1_LOCATOR}

    #Car plate number
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_CARPLATENUMBER_1_1_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 255 and type is varchar [Individuals - Foreigners]

    # maxlength="255"
    
    #First name *
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_1_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}
    #Last name
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_LASTNAME_1_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}
    #[กรอกอาชีพอื่นๆ]
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_OCCUPATION_OTHER_3_1_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}
      
Verify screen : length 12,2 and type is decimal [Individuals - Foreigners]
    
    # max="9999999999.99" min="0"
    
    #Electric start unit *
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_ELECTRICSTARTUNIT_LOCATOR}    ${ATTRIBUTE_MIN}    ${DEFAULT_TXT_MIN_0}
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_ELECTRICSTARTUNIT_LOCATOR}    ${ATTRIBUTE_MAX}    ${DEFAULT_TXT_MAX_9999999999_99}
    
    #Water start unit *
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_WATERSTARTUNIT_LOCATOR}    ${ATTRIBUTE_MIN}    ${DEFAULT_TXT_MIN_0}
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_WATERSTARTUNIT_LOCATOR}    ${ATTRIBUTE_MAX}    ${DEFAULT_TXT_MAX_9999999999_99}

Verify screen : legth 10 and type is varchar [Individuals - Foreigners]
    
    # maxlength="10"
    #Mobile
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_MOBILE_1_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_10}
    
Verify screen : Verify list data in radiobutton [Owner : Guest Person 1 :] [Individuals - Foreigners]
    #Owner
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_TYPE_OWNER_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_TYPE_OWNER_TH} 
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_RDL_TYPE_OWNER_1_CHECK_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${TRUE_LOWWER}
    #Guest Person
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_TYPE_GUESTPERSON_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_TYPE_GUESTPERSON_TH} 
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_RDL_TYPE_GUESTPERSON_1_CHECK_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${FALSE_LOWWER}

# Verify screen : Verify list data in dropdown [Owner type][Individuals - Foreigners]
    
    # #Owner type *
    # Element Text Should Be Value Dropdown    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_CLASS_LOCATOR}    ${DEFAULT_LBL_TYPE_OWNERTYPE_TH}
    # Press Keys    ${NONE}    ${ESC}
    # Sleep    0.5s

Verify screen : Verify list data in dropdown [Title][Individuals - Foreigners]

    #Titles
    ${selectTitles}=    Request DB Data Titles All
    ${dataTitlesAll}=    Set Variable    ${selectTitles}[0]
	@{valArrDataTitlesNameTh}=    Set Variable    ${selectTitles}[2]
	@{valArrDataTitlesNameEn}=    Set Variable    ${selectTitles}[3]
    # Log To Console    ${valArrDataTitlesNameTh}
    Check value many dropdown generateId for dx     ${DEFAULT_TYPE_LONG}    ${ROOMOWNER_ADD_DDL_TITLE_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_TITLE_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TITLE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TITLE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${valArrDataTitlesNameTh}    ${ROOMOWNER_ADD_LBL_TITLE_1_LOCATOR}

Verify screen : Verify list data in dropdown [Education][Individuals - Foreigners]
    # Education
    Check value many dropdown generateId for dx     ${DEFAULT_TYPE_NOTLONG}    ${ROOMOWNER_ADD_DDL_EDUCATION_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_EDUCATION_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_EDUCATION_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_EDUCATION_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${DEFAULT_LBL_EDUCATION_TH}    ${ROOMOWNER_ADD_LBL_EDUCATION_1_LOCATOR}

Verify screen : Verify list data in dropdown [Occupation][Individuals - Foreigners]
    # Occupation
    ${selectOccupation}=    Request DB Data Occupation
    ${dataOccupationAll}=    Set Variable    ${selectOccupation}[0]
	@{valArrDataOccupationNameTh}=    Set Variable    ${selectOccupation}[2]
	@{valArrDataOccupationNameEn}=    Set Variable    ${selectOccupation}[3]
    Check value many dropdown generateId for dx     ${DEFAULT_TYPE_LONG}    ${ROOMOWNER_ADD_DDL_OCCUPATION_3_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_OCCUPATION_3_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${valArrDataOccupationNameTh}    ${ROOMOWNER_ADD_LBL_OCCUPATION_3_1_LOCATOR}

Verify screen : Verify list data in dropdown [Salary (Baht)][Individuals - Foreigners]
    # Salary (Baht)
    Check value many dropdown generateId for dx     ${DEFAULT_TYPE_NOTLONG}    ${ROOMOWNER_ADD_DDL_SALARY_3_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_SALARY_3_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_SALARY_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_SALARY_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${DEFAULT_LBL_SALARY_TH}    ${ROOMOWNER_ADD_LBL_SALARY_3_1_LOCATOR}

Verify screen : Verify list data in dropdown [Car type][Individuals - Foreigners]
    #Click Add car
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDCAR_1_LOCATOR}

    # Car type
    Check value many dropdown generateId for dx     ${DEFAULT_TYPE_NOTLONG}    ${ROOMOWNER_ADD_DDL_CARTYPE_1_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_CARTYPE_1_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_CARTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_CARTYPE_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${DEFAULT_LBL_CARTYPE_TH}    ${ROOMOWNER_ADD_LBL_CARTYPE_1_1_LOCATOR}

Verify screen : Verify list data in radiobutton [Car sticker][Individuals - Foreigners]
    
    #Sticker
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARSTICKER_STICKER_1_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARSTICKER_STICKER_TH} 
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_RDL_CARSTICKER_STICKER_1_1_CHECK_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${FALSE_LOWWER}
    #No sticker
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARSTICKER_NOSTICKER_1_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARSTICKER_NOSTICKER_TH} 
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_RDL_CARSTICKER_NOSTICKER_1_1_CHECK_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${TRUE_LOWWER}

Verify screen : Verify list data in dropdown [Language of documents][Individuals - Foreigners]
    # Language of documents
    Check value many dropdown generateId for dx     ${DEFAULT_TYPE_NOTLONG}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_INPUT_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${DEFAULT_LBL_LANGUAGEOFDOCUMENTS_TH_VALUE}    ${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_LOCATOR}

Verify screen : Verify Hover in search button [Identification No. /Passport number *,Tax identification number,Attach other documents,Manage type][Individuals - Foreigners]
    
    #Identification No. /Passport number *
    #Search transfer history
    Wait Element Visible    ${ROOMOWNER_ADD_BTN_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}
    Mouse Down    ${ROOMOWNER_ADD_BTN_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_IDENTIFICATIONNOPASSPOERNUMBER_HOVER_LOCATOR}    ${ROOMOWNER_ADD_LBL_IDENTIFICATIONNOPASSPOERNUMBER_HOVER_TH} 
    
    # #Tax identification number
    # #Enter the ID card number.
    # Wait Element Visible    ${ROOMOWNER_ADD_BTN_TAXIDENTIFICATIONNUMBER_1_LOCATOR}
    # Mouse Down    ${ROOMOWNER_ADD_BTN_TAXIDENTIFICATIONNUMBER_1_LOCATOR}
    # Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_TAXIDENTIFICATIONNUMBER_1_HOVER_LOCATOR}    ${ROOMOWNER_ADD_LBL_TAXIDENTIFICATIONNUMBER_HOVER_TH} 
    
    # Attach other documents
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENT_LOCATOR}    ${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENTS_TH} 
    #icon Attach other documents
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_ICON_ATTACHOTHERDOCUMENT_NOTE_LOCATOR}
    Mouse Down    ${ROOMOWNER_ADD_ICON_ATTACHOTHERDOCUMENT_NOTE_LOCATOR}
    # - You can upload .pdf .csv .xlx .xlxs .jpg .png files. .doc .docx only - File size not more than 1 MB.
    Wait Until Contains Get Text Split String Join    ${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENT_NOTE_LOCATOR}    ${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENTS_NOTE_TH} 
    Click Element Page    ${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENT_LOCATOR}

    #Manage type
    #icon Attach other documents
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_ICON_LANGUAGEOFDOCUMENTS_NOTE_LOCATOR}
    Mouse Down    ${ROOMOWNER_ADD_ICON_LANGUAGEOFDOCUMENTS_NOTE_LOCATOR}
    #All document of this room will be a selected language.
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_NOTE_LOCATOR}    ${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_NOTE_TH} 
    Click Element Page    ${ROOMOWNER_ADD_LBL_MANAGETYPE_LOCATOR}

Verify screen : Verify screen tab "Popup Profile"[Foreigners]
        
    # Input Identification No. /Passport number * [ปรเภทบุคคลธรรมดา]
	Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_TAXIDENTIFICATIONNUMBER_THAI_FOREIGNERS_VALUE}

    #Click Tax identification number
    Click Element Page    ${ROOMOWNER_ADD_BTN_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}

    #Profile
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_TH} 
    #Identification No. /Passport number
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_IDENTIFICATIONNOPASSPORTNUMBER_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_IDENTIFICATIONNOPASSPORTNUMBER_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_TXT_PROFILE_IDENTIFICATIONNOPASSPORTNUMBER_LOCATOR}
    #Title
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_TITLE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_TITLE_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_TXT_PROFILE_TITLE_LOCATOR}
    # First name 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_FIRSTNAME_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_FIRSTNAME_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_TXT_PROFILE_FIRSTNAME_LOCATOR}
    #Last name
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_LASTNAME_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_LASTNAME_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_TXT_PROFILE_LASTNAME_LOCATOR}
    
    #Transfer history
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_PROPERTY_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_PROPERTY_TH} 
    #Property :
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_BUILDING_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_BUILDING_TH} 
    #Building:
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_BUILDING_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_BUILDING_TH} 
    #Room:
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_ROOM_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_ROOM_TH} 
    #Transfer date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_TRANSFERDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_TRANSFERDATE_TH} 
    #Arrival date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_ARRIVALDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_ARRIVALDATE_TH} 
    #Appointment date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_APPOINTMENTDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_APPOINTMENTDATE_TH} 
    #Accept date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_ACCEPTDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_ACCEPTDATE_TH} 
    #Warranty end date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_WARRANTYENDDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_WARRANTYENDDATE_TH} 
    
    #Click Back
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_PROFILE_BACK_LOCATOR}
    
    #Input #Identification No. /Passport number * [สำหรับนิติบุคคล]
    Clear Element Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}
	Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_TAXIDENTIFICATIONNUMBER_JURISTICPERSON_VALUE}

    #Click Tax identification number
    Click Element Page    ${ROOMOWNER_ADD_BTN_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}

    #Profile
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_TH} 
    #Tax identification number
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_TAXIDENTIICATIONNUMBER_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_TAXIDENTIICATIONNUMBER_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_TXT_PROFILE_TAXIDENTIICATIONNUMBER_LOCATOR}
    #Juristic id
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_JURISTICID_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_JURISTICID_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_TXT_PROFILE_JURISTICID_LOCATOR}
    #Company name
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_COMPANYNAME_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_COMPANYNAME_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_TXT_PROFILE_COMPANYNAME_LOCATOR}
    #Short name 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_SHORTNAME_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_SHORTNAME_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_TXT_PROFILE_SHORTNAME_LOCATOR}
    
    #Transfer history
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_PROPERTY_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_PROPERTY_TH} 
    #Property :
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_BUILDING_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_BUILDING_TH} 
    #Building:
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_BUILDING_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_BUILDING_TH} 
    #Room:
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_ROOM_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_ROOM_TH} 
    #Transfer date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_TRANSFERDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_TRANSFERDATE_TH} 
    #Arrival date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_ARRIVALDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_ARRIVALDATE_TH} 
    #Appointment date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_APPOINTMENTDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_APPOINTMENTDATE_TH} 
    #Accept date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_ACCEPTDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_ACCEPTDATE_TH} 
    #Warranty end date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_WARRANTYENDDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_WARRANTYENDDATE_TH} 
    
    #Click Back
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_PROFILE_BACK_LOCATOR}

############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "นิติบุคคล" [1] ##############                
Verify screen : legth 125 and type is varchar [Juristic person]
    
    # maxlength="125"

    #Owner type *
    Select Dropdown    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_CLASS_LOCATOR}    ${ROOMOWNER_TYPE_OWNERTYPE_JURISTICPERSON_TH_VALUE}
    Sleep    0.5s
    
    #Short name
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_SHORTNAME_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}
    #Juristic id
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_JURISTICID_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}
    #Tax identification number
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_1_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}
    #Fax
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_FAX_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}
    #E-mail
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_EMAIL_1_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}
    
Verify screen : legth 255 and type is varchar [Juristic person]

    # maxlength="255"
    
    #Company name *
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_COMPANYNAME_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}
      
Verify screen : ength 12,2 and type is decimal [Juristic person]
    
    # max="9999999999.99" min="0"

    #Electric start unit *
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_ELECTRICSTARTUNIT_LOCATOR}    ${ATTRIBUTE_MIN}    ${DEFAULT_TXT_MIN_0}
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_ELECTRICSTARTUNIT_LOCATOR}    ${ATTRIBUTE_MAX}    ${DEFAULT_TXT_MAX_9999999999_99}
    
    #Water start unit *
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_WATERSTARTUNIT_LOCATOR}    ${ATTRIBUTE_MIN}    ${DEFAULT_TXT_MIN_0}
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_WATERSTARTUNIT_LOCATOR}    ${ATTRIBUTE_MAX}    ${DEFAULT_TXT_MAX_9999999999_99}

Verify screen : legth 10 and type is varchar [Juristic person]
    
    # maxlength="10"
    #Mobile
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_INPUT_MOBILE_1_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_10}

Verify screen : Verify list data in dropdown [Language of documents][Juristic person]
    # Language of documents
    Check value many dropdown generateId for dx     ${DEFAULT_TYPE_NOTLONG}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_INPUT_LANGUAGEOFDOCUMENTS_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${DEFAULT_LBL_LANGUAGEOFDOCUMENTS_TH_VALUE}    ${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_LOCATOR}

Verify screen : Verify Hover in search button [Tax identification number,Attach other documents,Manage type][Juristic person]

    #Tax identification number
    # Search transfer history
    Wait Element Visible    ${ROOMOWNER_ADD_BTN_TAXIDENTIFICATIONNUMBER_JURISTIC_LOCATOR}
    Mouse Down    ${ROOMOWNER_ADD_BTN_TAXIDENTIFICATIONNUMBER_JURISTIC_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_TAXIDENTIFICATIONNUMBER_JURISTIC_HOVER_LOCATOR}    ${ROOMOWNER_ADD_LBL_TAXIDENTIFICATIONNUMBER_JURISTIC_HOVER_TH} 
    
    # Attach other documents
    #icon Attach other documents
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_ICON_ATTACHOTHERDOCUMENT_NOTE_LOCATOR}
    Mouse Down    ${ROOMOWNER_ADD_ICON_ATTACHOTHERDOCUMENT_NOTE_LOCATOR}
    # - You can upload .pdf .csv .xlx .xlxs .jpg .png files. .doc .docx only - File size not more than 1 MB.
    Wait Until Contains Get Text Split String Join    ${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENT_NOTE_LOCATOR}    ${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENTS_NOTE_TH} 
    Click Element Page    ${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENT_LOCATOR}

    #Manage type
    #icon Attach other documents
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_ICON_LANGUAGEOFDOCUMENTS_NOTE_LOCATOR}
    Mouse Down    ${ROOMOWNER_ADD_ICON_LANGUAGEOFDOCUMENTS_NOTE_LOCATOR}
    #All document of this room will be a selected language.
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_NOTE_LOCATOR}    ${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_NOTE_TH} 
    Click Element Page    ${ROOMOWNER_ADD_LBL_MANAGETYPE_LOCATOR}

Verify screen : Verify screen tab "Popup Profile"[Juristic person]
        
    # Input Tax identification number [ปรเภทบุคคลธรรมดา]
	Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_TAXIDENTIFICATIONNUMBER_THAI_FOREIGNERS_VALUE}

    #Click Tax identification number
    Click Element Page    ${ROOMOWNER_ADD_BTN_TAXIDENTIFICATIONNUMBER_JURISTIC_LOCATOR}

    #Profile
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_TH} 
    #Identification No. /Passport number
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_IDENTIFICATIONNOPASSPORTNUMBER_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_IDENTIFICATIONNOPASSPORTNUMBER_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_TXT_PROFILE_IDENTIFICATIONNOPASSPORTNUMBER_LOCATOR}
    #Title
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_TITLE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_TITLE_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_TXT_PROFILE_TITLE_LOCATOR}
    #First name 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_FIRSTNAME_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_FIRSTNAME_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_TXT_PROFILE_FIRSTNAME_LOCATOR}
    #Last name
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_LASTNAME_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_LASTNAME_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_TXT_PROFILE_LASTNAME_LOCATOR}
    
    #Transfer history
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_PROPERTY_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_PROPERTY_TH} 
    #Property :
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_BUILDING_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_BUILDING_TH} 
    #Building:
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_BUILDING_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_BUILDING_TH} 
    #Room:
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_ROOM_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_ROOM_TH} 
    #Transfer date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_TRANSFERDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_TRANSFERDATE_TH} 
    #Arrival date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_ARRIVALDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_ARRIVALDATE_TH} 
    #Appointment date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_APPOINTMENTDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_APPOINTMENTDATE_TH} 
    #Accept date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_ACCEPTDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_ACCEPTDATE_TH} 
    #Warranty end date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_WARRANTYENDDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_WARRANTYENDDATE_TH} 
    
    #Click Back
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_PROFILE_BACK_LOCATOR}

    #Input Tax identification number [สำหรับนิติบุคคล]
	Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_TAXIDENTIFICATIONNUMBER_JURISTICPERSON_VALUE}

    #Click Tax identification number
    Click Element Page    ${ROOMOWNER_ADD_BTN_TAXIDENTIFICATIONNUMBER_JURISTIC_LOCATOR}

    #Profile
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_TH} 
    #Tax identification number
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_TAXIDENTIICATIONNUMBER_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_TAXIDENTIICATIONNUMBER_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_TXT_PROFILE_TAXIDENTIICATIONNUMBER_LOCATOR}
    #Juristic id
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_JURISTICID_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_JURISTICID_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_TXT_PROFILE_JURISTICID_LOCATOR}
    #Company name
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_COMPANYNAME_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_COMPANYNAME_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_TXT_PROFILE_COMPANYNAME_LOCATOR}
    #Short name 
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_SHORTNAME_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_SHORTNAME_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_TXT_PROFILE_SHORTNAME_LOCATOR}
    
    #Transfer history
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_PROPERTY_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_PROPERTY_TH} 
    #Property :
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_BUILDING_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_BUILDING_TH} 
    #Building:
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_BUILDING_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_BUILDING_TH} 
    #Room:
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_ROOM_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_ROOM_TH} 
    #Transfer date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_TRANSFERDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_TRANSFERDATE_TH} 
    #Arrival date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_ARRIVALDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_ARRIVALDATE_TH} 
    #Appointment date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_APPOINTMENTDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_APPOINTMENTDATE_TH} 
    #Accept date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_ACCEPTDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_ACCEPTDATE_TH} 
    #Warranty end date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_WARRANTYENDDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_WARRANTYENDDATE_TH} 

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${ROOMOWNER_CREATE_M13_0_1_2_003_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser