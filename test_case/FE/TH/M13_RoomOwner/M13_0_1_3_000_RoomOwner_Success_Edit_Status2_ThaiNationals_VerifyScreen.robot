*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
Suite Setup    Set Library Search Order    Selenium2Library    AppiumLibrary
*** Test Cases ***
################### [Edit] EditRoomOwner ###################
M13_0_1_3_000_RoomOwner_Success_Edit_Status2_ThaiNationals_VerifyScreen [Verify screen page "Edit room owner"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. click choose property
    ...    4. click choose empty room
    ...    5. click Create room owner
    ...    6. click Edit data button

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

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_TH} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== [Edit] EditRoomOwner =============== 

    #Edit data
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}    ${ROOMOWNER_LBL_EDIT_DATA_TH} 
    #Click Edit data
    Click Element Page    ${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}

    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_EDIT_LBL_NUMBERROOM_TH} ${ROOMNO_B201}

    #Owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_ADD_LBL_OWNERINFORMATION_TH} 

    #- กรณีที่เจ้าของห้องเป็นนิติบุคคล จะต้องเลือกกรอกนิติบุคคลคนแรกเท่านั้น - กรณีที่เจ้าของห้องเป็นบุคคลธรรมดาจะสามารถเลือกเจ้าของห้องได้เอง ถ้ามีการเลือกเจ้าของห้องซ้ำ เจ้าของห้องเดิม จะถูกเปลี่ยนเป็นผู้พักอาศัยทันที
    Wait Until Contains Get Text Split String Join    ${ROOMOWNER_ADD_LBL_NOTE_LOCATOR}    ${ROOMOWNER_ADD_LBL_NOTE_TH} 

    #Owner :
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_OWNER_LOCATOR}    ${ROOMOWNER_ADD_LBL_OWNER_TH} 

    #Owner
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_TYPE_OWNER_1_LOCATOR}    ${ROOMOWNER_EDIT_LBL_TYPE_OWNER_TH} 
    #Guest Person
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_TYPE_GUESTPERSON_1_LOCATOR}    ${ROOMOWNER_EDIT_LBL_TYPE_GUESTPERSON_TH}
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_EDIT_RDL_TYPE_1_LOCATOR}    ${ATTRIBUTE_ARIA_DISABLED_DX}    ${TRUE_LOWWER}
    

Verify screen page "Edit room owner" [Individuals - Thai nationals] [Default page]

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
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_INPUT_OCCUPATION_OTHER_2_1_LOCATOR}
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
    # Wait Element Not Visible    ${ROOMOWNER_ADD_BTN_DELETECAR_1_LOCATOR}
    
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
 
    #Click Delete car car
    Click Element Page    ${ROOMOWNER_ADD_BTN_DELETECAR_1_LOCATOR}
    #Click Delete car car
    Click Element Page    ${ROOMOWNER_ADD_BTN_DELETECAR_1_LOCATOR}

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
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARNUMBER_2_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARNUMBER_1_TH}
    #Car type
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARTYPE_2_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARTYPE_TH} 
    #Car plate number
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARPLATENUMBER_2_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARPLATENUMBER_TH} 
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_INPUT_CARPLATENUMBER_2_1_LOCATOR}
    #Car sticker
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARSTICKER_2_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARSTICKER_TH} 
    #Sticker
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARSTICKER_STICKER_2_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARSTICKER_STICKER_TH} 
    #No sticker
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARSTICKER_NOSTICKER_2_1_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARSTICKER_NOSTICKER_TH} 

    #Add car
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_BTN_ADDCAR_2_LOCATOR}    ${ROOMOWNER_ADD_BTN_ADDCAR_TH} 
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_BTN_ADDCAR_2_LOCATOR}
    #Delete car
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_BTN_DELETECAR_2_LOCATOR}    ${ROOMOWNER_ADD_BTN_DELETECAR_TH} 
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_BTN_DELETECAR_2_LOCATOR}

    #Click Add car
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDCAR_2_LOCATOR}

    #Car number: 2
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARNUMBER_2_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARNUMBER_2_TH}
    #Car type
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARTYPE_2_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARTYPE_TH} 
    #Car plate number
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARPLATENUMBER_2_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARPLATENUMBER_TH} 
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_INPUT_CARPLATENUMBER_2_2_LOCATOR}
    #Car sticker
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARSTICKER_2_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARSTICKER_TH} 
    #Sticker
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARSTICKER_STICKER_2_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARSTICKER_STICKER_TH} 
    #No sticker
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_CARSTICKER_NOSTICKER_2_2_LOCATOR}    ${ROOMOWNER_ADD_LBL_CARSTICKER_NOSTICKER_TH} 

    #Click Delete car car
    Click Element Page    ${ROOMOWNER_ADD_BTN_DELETECAR_2_LOCATOR}
    
Verify screen page "Edit room owner" [Individuals - Thai nationals][Default page][Attach other documents]       
    ############## Attach other documents ##############    
    # Attach other documents
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENT_LOCATOR}    ${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENTS_TH} 
    #icon Attach other documents
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_ICON_ATTACHOTHERDOCUMENT_NOTE_LOCATOR}
    Mouse Down    ${ROOMOWNER_ADD_ICON_ATTACHOTHERDOCUMENT_NOTE_LOCATOR}
    # - You can upload .pdf .csv .xlx .xlxs .jpg .png files. .doc .docx only - File size not more than 1 MB.
    Wait Until Contains Get Text Split String Join    ${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENT_NOTE_LOCATOR}    ${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENTS_NOTE_TH} 
    Click Element Page    ${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENT_LOCATOR}

Verify screen page "Edit room owner" [Individuals - Thai nationals][Default page][Transfer detail]       
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
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_INPUT_ELECTRICSTARTUNIT_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_ELECTRICSTARTUNIT_UNIT_LOCATOR}    ${DEFAULT_LBL_UNIT_TH} 
    #Water start unit *
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_WATERSTARTUNIT_LOCATOR}    ${ROOMOWNER_ADD_LBL_WATERSTARTUNIT_TH} 
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_LBL_WATERSTARTUNIT_LOCATOR}    ${ATTRIBUTE_CLASS}    ${CLASS_REQUIRED}
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_INPUT_WATERSTARTUNIT_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_WATERSTARTUNIT_UNIT_LOCATOR}    ${DEFAULT_LBL_UNIT_TH} 

Verify screen page "Edit room owner" [Individuals - Thai nationals][Default page][Asset list]        
    ############## Asset list ############## 
    #Asset list
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}    ${ROOMOWNER_ADD_LBL_ASSETLIST_TH} 
    
    #List
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_ASSETLIST_LIST_LOCATOR}    ${ROOMOWNER_ADD_LBL_ASSETLIST_LIST_TH} 
    #Usage status
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_ASSETLIST_USAGESTATUS_LOCATOR}    ${ROOMOWNER_ADD_LBL_ASSETLIST_USAGESTATUS_TH} 
    #Remark
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_ASSETLIST_REMARK_LOCATOR}    ${ROOMOWNER_ADD_LBL_ASSETLIST_REMARK_TH} 
    
    Check For CheckRoomAsset Edit Owner    ${ROOMOWNER_ADD_LBD_ASSETLIST_LIST_LOCATOR}    nameTh    ${ROOMOWNER_EDIT_LBL_ASSETLIST_USAGESTATUS_RECEIVED_LOCATOR}    ${ROOMOWNER_EDIT_RDL_ASSETLIST_USAGESTATUS_RECEIVED_CHECK_LOCATOR}    ${DEFAULT_LBL_ASSETLIST_STATUS_RECEIVED_TH}    ${ROOMOWNER_EDIT_LBL_ASSETLIST_USAGESTATUS_NOTRECEIVED_LOCATOR}    ${ROOMOWNER_EDIT_RDL_ASSETLIST_USAGESTATUS_NOTRECEIVED_CHECK_LOCATOR}    ${DEFAULT_LBL_ASSETLIST_STATUS_NOTRECEIVED_TH}    ${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_LOCATOR}    ${ROOMNO_B201}

    #Cancel button
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_CANCEL_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_CANCEL_TH} 
    #Save button
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    ${ROOMOWNER_ADDEDIT_BTN_SAVE_TH} 

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
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_TYPE_OWNER_1_LOCATOR}    ${ROOMOWNER_EDIT_LBL_TYPE_OWNER_TH} 
    #Guest Person
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_EDIT_LBL_TYPE_GUESTPERSON_1_LOCATOR}    ${ROOMOWNER_EDIT_LBL_TYPE_GUESTPERSON_TH}
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_EDIT_RDL_TYPE_1_LOCATOR}    ${ATTRIBUTE_ARIA_DISABLED_DX}    ${TRUE_LOWWER}
    
Verify screen : Verify list data in dropdown [Owner type][Individuals - Thai nationals]
    
    #Owner type *
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_INPUT_TYPE_OWNERTYPE_2_1_LOCATOR}
    
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


    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${ROOMOWNER_EDIT_M13_0_1_3_000_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Generic Test Case Teardown RoomOwner    ${ROOMOWNER_STAMPDELETE_FILENAME_VALUE}    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${ROOMNO_B201}
