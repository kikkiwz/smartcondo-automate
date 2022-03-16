*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
Suite Setup    Set Library Search Order    Selenium2Library    AppiumLibrary
*** Test Cases ***
################### [Create] CreateRoomOwner ###################
M13_0_1_2_000_RoomOwner_Success_Create_Status1_ThaiNationals_VerifyScreen [Verify screen page "Create room owner"]
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

Verify screen page "Create room owner" [Individuals - Thai nationals] [Default page]

    ############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "บุคคลธรรมดา - คนไทย" [1] ############## 

    #Read identification card
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_BTN_READIDENTIFICATIONCARD_1_LOCATOR}    ${ROOMOWNER_ADD_BTN_READIDENTIFICATIONCARD_TH} 
    #Note: The picture will be shown only when reading from the ID card only.
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_NOTE_IMAGE_THAINATIONS_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_NOTE_IMAGE_THAINATIONS_TH} 
    Wait Element Visible    ${ROOMOWNER_ADD_IMG_NOTE_IMAGE_THAINATIONS_1_LOCATOR}
    
    #Owner type *
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_TYPE_OWNERTYPE_2_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_TYPE_OWNERTYPE_TH} 
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_LBL_TYPE_OWNERTYPE_2_1_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}   
    
    #Identification No. /Passport number *
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_IDENTIFICATIONNOPASSPOERNUMBER_TH} 
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_LBL_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}   
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}
    # Search transfer history
    Wait Element Visible    ${ROOMOWNER_ADD_BTN_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}
    Mouse Down    ${ROOMOWNER_ADD_BTN_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_IDENTIFICATIONNOPASSPOERNUMBER_HOVER_LOCATOR}    ${ROOMOWNER_ADD_LBL_IDENTIFICATIONNOPASSPOERNUMBER_HOVER_TH} 
    Click Element Page    ${ROOMOWNER_ADD_LBL_TITLE_1_LOCATOR}

    #Title
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_TITLE_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_TITLE_TH} 
    
    #First name *
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_FIRSTNAME_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_FIRSTNAME_TH} 
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_LBL_FIRSTNAME_1_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}   
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_1_LOCATOR}
    #Last name
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_LASTNAME_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_LASTNAME_TH} 
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_INPUT_LASTNAME_1_LOCATOR}
    #Nickname
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_NICKNAME_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_NICKNAME_TH} 
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_INPUT_NICKNAME_1_LOCATOR}
    #Birth date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_BIRTHDATE_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_BIRTHDATE_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_DATE_BIRTHDATE_1_INPUT_LOCATOR}
    #Identification create date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_IDENTIFICATIONCREATEDATE_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_IDENTIFICATIONCREATEDATE_TH} 
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_LOCATOR}
    #Identification expire date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_IDENTIFICATIONEXPIREDATE_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_IDENTIFICATIONEXPIREDATE_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_INPUT_LOCATOR}
    #Mobile
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_MOBILE_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_MOBILE_TH} 
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_INPUT_MOBILE_1_LOCATOR}
    #E-mail
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_EMAIL_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_EMAIL_TH} 
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_INPUT_EMAIL_1_LOCATOR}
    #Line ID
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_LINEID_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_LINEID_TH} 
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_INPUT_LINEID_1_LOCATOR}
    #Tax identification number
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_TAXIDENTIFICATIONNUMBER_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_TAXIDENTIFICATIONNUMBER_TH} 
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_1_LOCATOR}
    # Enter the ID card number.
    Wait Element Visible    ${ROOMOWNER_ADD_BTN_TAXIDENTIFICATIONNUMBER_1_LOCATOR}
    Mouse Down    ${ROOMOWNER_ADD_BTN_TAXIDENTIFICATIONNUMBER_1_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_TAXIDENTIFICATIONNUMBER_1_HOVER_LOCATOR}    ${ROOMOWNER_ADD_LBL_TAXIDENTIFICATIONNUMBER_HOVER_TH} 
    Click Element Page    ${ROOMOWNER_ADD_LBL_EDUCATION_1_LOCATOR}

    #Education
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_EDUCATION_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_EDUCATION_TH} 
    #Occupation
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_OCCUPATION_2_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_OCCUPATION_TH} 
    #[กรอกอาชีพอื่นๆ]
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_INPUT_OCCUPATION_OTHER_2_1_LOCATOR}
    #Salary (Baht)
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_SALARY_2_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_SALARY_TH} 
    #Address
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_ADDRESS_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_ADDRESS_TH} 
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_INPUT_ADDRESS_1_LOCATOR}

    ############## Add car ############## 
    #Add car
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_BTN_ADDCAR_1_LOCATOR}    ${ROOMOWNER_ADD_BTN_ADDCAR_TH} 
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_BTN_ADDCAR_1_LOCATOR}
    #Delete car
    Wait Element Not Visible    ${ROOMOWNER_ADD_BTN_DELETECAR_1_LOCATOR}
    
    #Click Add car
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDCAR_1_LOCATOR}

    #Car number: 1
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARNUMBER_1_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARNUMBER_1_TH}
    #Car type
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARTYPE_1_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARTYPE_TH} 
    #Car plate number
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARPLATENUMBER_1_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARPLATENUMBER_TH} 
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_INPUT_CARPLATENUMBER_1_1_LOCATOR}
    #Car sticker
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARSTICKER_1_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARSTICKER_TH} 
    #Sticker
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARSTICKER_STICKER_1_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARSTICKER_STICKER_TH} 
    #No sticker
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARSTICKER_NOSTICKER_1_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARSTICKER_NOSTICKER_TH} 

    #Add car
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_BTN_ADDCAR_1_LOCATOR}    ${ROOMOWNER_ADD_BTN_ADDCAR_TH} 
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_BTN_ADDCAR_1_LOCATOR}
    #Delete car
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_BTN_DELETECAR_1_LOCATOR}    ${ROOMOWNER_ADD_BTN_DELETECAR_TH} 
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_BTN_DELETECAR_1_LOCATOR}

    #Click Add car
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDCAR_1_LOCATOR}

    #Car number: 2
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARNUMBER_1_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARNUMBER_2_TH}
    #Car type
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARTYPE_1_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARTYPE_TH} 
    #Car plate number
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARPLATENUMBER_1_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARPLATENUMBER_TH} 
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_INPUT_CARPLATENUMBER_1_2_LOCATOR}
    #Car sticker
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARSTICKER_1_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARSTICKER_TH} 
    #Sticker
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARSTICKER_STICKER_1_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARSTICKER_STICKER_TH} 
    #No sticker
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARSTICKER_NOSTICKER_1_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARSTICKER_NOSTICKER_TH} 
 
    ############## Add guest ############## 
    #Add guest
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}    ${ROOMOWNER_ADD_BTN_ADDGUEST_TH} 
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}
    
    #Click Add guest
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}

    ############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "บุคคลธรรมดา - คนไทย" [2] ############## 

    #icon delete guest
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_ICON_DELETEGUEST_LOCATOR}

    #Read identification card
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_BTN_READIDENTIFICATIONCARD_2_LOCATOR}    ${ROOMOWNER_ADD_BTN_READIDENTIFICATIONCARD_TH} 
    #Note: The picture will be shown only when reading from the ID card only.
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_NOTE_IMAGE_THAINATIONS_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_NOTE_IMAGE_THAINATIONS_TH} 
    Wait Element Visible    ${ROOMOWNER_ADD_IMG_NOTE_IMAGE_THAINATIONS_2_LOCATOR}
    
    #Owner type *
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_TYPE_OWNERTYPE_1_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_TYPE_OWNERTYPE_TH} 
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_LBL_TYPE_OWNERTYPE_1_2_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}   
    
    #Identification No. /Passport number *
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_IDENTIFICATIONNOPASSPOERNUMBER_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_IDENTIFICATIONNOPASSPOERNUMBER_TH} 
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_LBL_IDENTIFICATIONNOPASSPOERNUMBER_2_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}   
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_2_LOCATOR}
    # Search transfer history
    Wait Element Visible    ${ROOMOWNER_ADD_BTN_IDENTIFICATIONNOPASSPOERNUMBER_2_LOCATOR}
    Mouse Down    ${ROOMOWNER_ADD_BTN_IDENTIFICATIONNOPASSPOERNUMBER_2_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_IDENTIFICATIONNOPASSPOERNUMBER_HOVER_LOCATOR}    ${ROOMOWNER_ADD_LBL_IDENTIFICATIONNOPASSPOERNUMBER_HOVER_TH} 
    Click Element Page    ${ROOMOWNER_ADD_LBL_TITLE_2_LOCATOR}

    #Title
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_TITLE_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_TITLE_TH} 
    
    #First name *
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_FIRSTNAME_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_FIRSTNAME_TH} 
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_LBL_FIRSTNAME_2_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}   
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_INPUT_FIRSTNAME_2_LOCATOR}
    #Last name
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_LASTNAME_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_LASTNAME_TH} 
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_INPUT_LASTNAME_2_LOCATOR}
    #Nickname
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_NICKNAME_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_NICKNAME_TH} 
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_INPUT_NICKNAME_2_LOCATOR}
    #Birth date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_BIRTHDATE_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_BIRTHDATE_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_DATE_BIRTHDATE_2_INPUT_LOCATOR}
    #Identification create date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_IDENTIFICATIONCREATEDATE_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_IDENTIFICATIONCREATEDATE_TH} 
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_2_LOCATOR}
    #Identification expire date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_IDENTIFICATIONEXPIREDATE_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_IDENTIFICATIONEXPIREDATE_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_2_INPUT_LOCATOR}
    #Mobile
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_MOBILE_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_MOBILE_TH} 
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_INPUT_MOBILE_2_LOCATOR}
    #E-mail
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_EMAIL_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_EMAIL_TH} 
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_INPUT_EMAIL_2_LOCATOR}
    #Line ID
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_LINEID_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_LINEID_TH} 
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_INPUT_LINEID_2_LOCATOR}
    #Tax identification number
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_TAXIDENTIFICATIONNUMBER_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_TAXIDENTIFICATIONNUMBER_TH} 
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_2_LOCATOR}
    # Enter the ID card number.
    Wait Element Visible    ${ROOMOWNER_ADD_BTN_TAXIDENTIFICATIONNUMBER_2_LOCATOR}
    Mouse Down    ${ROOMOWNER_ADD_BTN_TAXIDENTIFICATIONNUMBER_2_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_TAXIDENTIFICATIONNUMBER_2_HOVER_LOCATOR}    ${ROOMOWNER_ADD_LBL_TAXIDENTIFICATIONNUMBER_HOVER_TH} 
    Click Element Page    ${ROOMOWNER_ADD_LBL_EDUCATION_2_LOCATOR}

    #Education
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_EDUCATION_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_EDUCATION_TH} 
    #Occupation
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_OCCUPATION_2_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_OCCUPATION_TH} 
    #[กรอกอาชีพอื่นๆ]
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_INPUT_OCCUPATION_OTHER_2_2_LOCATOR}
    #Salary (Baht)
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_SALARY_2_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_SALARY_TH} 
    #Address
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_ADDRESS_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_ADDRESS_TH} 
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_INPUT_ADDRESS_2_LOCATOR}

    ############## Add car ############## 

    #Add car
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_BTN_ADDCAR_2_LOCATOR}    ${ROOMOWNER_ADD_BTN_ADDCAR_TH} 
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_BTN_ADDCAR_2_LOCATOR}
    #Delete car
    Wait Element Not Visible    ${ROOMOWNER_ADD_BTN_DELETECAR_2_LOCATOR}
    
    #Click Add car
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDCAR_2_LOCATOR}

    #Car number: 1
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARNUMBER_1_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARNUMBER_2_TH}
    #Car type
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARTYPE_1_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARTYPE_TH} 
    #Car plate number
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARPLATENUMBER_1_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARPLATENUMBER_TH} 
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_INPUT_CARPLATENUMBER_1_2_LOCATOR}
    #Car sticker
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARSTICKER_1_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARSTICKER_TH} 
    #Sticker
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARSTICKER_STICKER_1_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARSTICKER_STICKER_TH} 
    #No sticker
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARSTICKER_NOSTICKER_1_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARSTICKER_NOSTICKER_TH} 

    #Add car
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_BTN_ADDCAR_2_LOCATOR}    ${ROOMOWNER_ADD_BTN_ADDCAR_TH} 
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_BTN_ADDCAR_2_LOCATOR}
    #Delete car
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_BTN_DELETECAR_2_LOCATOR}    ${ROOMOWNER_ADD_BTN_DELETECAR_TH} 
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_BTN_DELETECAR_2_LOCATOR}

    #Click Add car
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDCAR_2_LOCATOR}

    #Car number: 2
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARNUMBER_1_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARNUMBER_2_TH}
    #Car type
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARTYPE_1_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARTYPE_TH} 
    #Car plate number
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARPLATENUMBER_1_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARPLATENUMBER_TH} 
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_INPUT_CARPLATENUMBER_1_2_LOCATOR}
    #Car sticker
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARSTICKER_1_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARSTICKER_TH} 
    #Sticker
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARSTICKER_STICKER_1_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARSTICKER_STICKER_TH} 
    #No sticker
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARSTICKER_NOSTICKER_1_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARSTICKER_NOSTICKER_TH} 

Verify screen page "Create room owner" [Individuals - Thai nationals][Default page][Attach other documents]       
    ############## Attach other documents ##############    
    # Attach other documents
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENT_LOCATOR}    ${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENTS_TH} 
    #icon Attach other documents
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_ICON_ATTACHOTHERDOCUMENT_NOTE_LOCATOR}
    Mouse Down    ${ROOMOWNER_ADD_ICON_ATTACHOTHERDOCUMENT_NOTE_LOCATOR}
    # - You can upload .pdf .csv .xlx .xlxs .jpg .png files. .doc .docx only - File size not more than 1 MB.
    Wait Until Contains Get Text Split String Join    ${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENT_NOTE_LOCATOR}    ${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENTS_NOTE_TH} 
    Click Element Page    ${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENT_LOCATOR}

Verify screen page "Create room owner" [Individuals - Thai nationals][Default page][Transfer detail]       
    ############## Transfer detail ############## 
    # Transfer detail
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_TRANSFERDETAIL_LOCATOR}    ${ROOMOWNER_ADD_LBL_TRANSFERDETAIL_TH} 

    #Transfer date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_TRANSFERDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_TRANSFERDATE_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_DATE_TRANSFERDATE_INPUT_LOCATOR}
    #Arrival date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_ARRIVALDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_ARRIVALDATE_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_DATE_ARRIVALDATE_INPUT_LOCATOR}
    #Appointment date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_APPOINTMENTDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_APPOINTMENTDATE_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_INPUT_LOCATOR}
    #Accept date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_ACCEPTDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_ACCEPTDATE_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_DATE_ACCEPTDATE_INPUT_LOCATOR}
    #Warranty end date
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_WARRANTYENDDATE_LOCATOR}    ${ROOMOWNER_ADD_LBL_WARRANTYENDDATE_TH} 
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_INPUT_LOCATOR}
    
    #Manage type
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_MANAGETYPE_LOCATOR}    ${ROOMOWNER_ADD_LBL_MANAGETYPE_TH} 
    #icon Attach other documents
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_ICON_LANGUAGEOFDOCUMENTS_NOTE_LOCATOR}
    Mouse Down    ${ROOMOWNER_ADD_ICON_LANGUAGEOFDOCUMENTS_NOTE_LOCATOR}
    #All document of this room will be a selected language.
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_NOTE_LOCATOR}    ${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_NOTE_TH} 
    Click Element Page    ${ROOMOWNER_ADD_LBL_MANAGETYPE_LOCATOR}
    #Address (for invoicing, receipt)
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_ADDRESS_FORINVOICINGRECEIPT_LOCATOR}    ${ROOMOWNER_ADD_LBL_ADDRESS_FORINVOICINGRECEIPT_TH} 
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_INPUT_ADDRESS_FORINVOICINGRECEIPT_LOCATOR}
    
    #Electric start unit *
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_ELECTRICSTARTUNIT_LOCATOR}    ${ROOMOWNER_ADD_LBL_ELECTRICSTARTUNIT_TH} 
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_LBL_ELECTRICSTARTUNIT_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_INPUT_ELECTRICSTARTUNIT_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_ELECTRICSTARTUNIT_UNIT_LOCATOR}    ${DEFAULT_LBL_UNIT_TH} 
    #Water start unit *
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_WATERSTARTUNIT_LOCATOR}    ${ROOMOWNER_ADD_LBL_WATERSTARTUNIT_TH} 
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_LBL_WATERSTARTUNIT_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_INPUT_WATERSTARTUNIT_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_WATERSTARTUNIT_UNIT_LOCATOR}    ${DEFAULT_LBL_UNIT_TH} 

Verify screen page "Create room owner" [Individuals - Thai nationals][Default page][Asset list]        
    ############## Asset list ############## 
    #Asset list
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}    ${ROOMOWNER_ADD_LBL_ASSETLIST_TH} 
    
    #List
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_ASSETLIST_LIST_LOCATOR}    ${ROOMOWNER_ADD_LBL_ASSETLIST_LIST_TH} 
    #Usage status
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_ASSETLIST_USAGESTATUS_LOCATOR}    ${ROOMOWNER_ADD_LBL_ASSETLIST_USAGESTATUS_TH} 
    #Remark
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_ASSETLIST_REMARK_LOCATOR}    ${ROOMOWNER_ADD_LBL_ASSETLIST_REMARK_TH} 
    
    Check For CheckAsset    ${ROOMOWNER_ADD_LBD_ASSETLIST_LIST_LOCATOR}    nameTh    ${ROOMOWNER_ADD_LBL_ASSETLIST_USAGESTATUS_RECEIVED_LOCATOR}    ${ROOMOWNER_ADD_RDL_ASSETLIST_USAGESTATUS_RECEIVED_CHECK_LOCATOR}    ${DEFAULT_LBL_ASSETLIST_STATUS_RECEIVED_TH}    ${ROOMOWNER_ADD_LBL_ASSETLIST_USAGESTATUS_NOTRECEIVED_LOCATOR}    ${ROOMOWNER_ADD_RDL_ASSETLIST_USAGESTATUS_NOTRECEIVED_CHECK_LOCATOR}    ${DEFAULT_LBL_ASSETLIST_STATUS_NOTRECEIVED_TH}    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_LOCATOR}

    #Cancel button
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_CANCEL_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_CANCEL_TH} 
    #Save button
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_TH} 

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${ROOMOWNER_CREATE_M13_0_1_2_000_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Close Browser