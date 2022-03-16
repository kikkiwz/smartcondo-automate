*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
Suite Setup    Set Library Search Order    Selenium2Library    AppiumLibrary
*** Test Cases ***
################### Change owner ###################
M13_1_1_31_000_RoomOwner_Success_ChangeOwner_Status2_VerifyAction [VerifyAction "Change owner"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. click choose property
    ...    4. click choose empty room
    ...    5. click Create room owner
    ...    6. click Change owner button

    [Setup]    Open Browser To Login Page Click Building and Room    ${PROPERTYE_LOCATOR}    ${ROOMNO_B201}
    # Generic Test Case Teardown RoomOwner No Close    ${ROOMOWNER_STAMPDELETE_FILENAME_VALUE}    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${ROOMNO_B201}

    Log To Console    ${\n}=========== [Create] CreateRoomOwner =============== 
	
    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_INFO_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_INFO_LBL_NUMBERROOM_TH} ${ROOMNO_B201}

    #close button
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_BTN_CLOSE_LOCATOR}

    Create RoomOwner input require field data Thai    ${ROOMNO_B201}
    
    #Click X
    Click Element Page    ${ROOMOWNER_BTN_CLOSE_LOCATOR}

    # Click Room
    Click Room    ${ROOMNO_B201}

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_TH} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== Change owner =============== 

    #Change owner
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_CHANGEOWNER_DATA_LOCATOR}    ${ROOMOWNER_LBL_CHANGEOWNER_DATA_TH} 
    #Click Change owner
    Click Element Page    ${ROOMOWNER_BTN_CHANGEOWNER_DATA_LOCATOR}

    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_CHANGEOWNER_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_CHANGEOWNER_LBL_NUMBERROOM_TH} ${ROOMNO_B201}

    #Owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_ADD_LBL_OWNERINFORMATION_TH} 

    #- กรณีที่เจ้าของห้องเป็นนิติบุคคล จะต้องเลือกกรอกนิติบุคคลคนแรกเท่านั้น - กรณีที่เจ้าของห้องเป็นบุคคลธรรมดาจะสามารถเลือกเจ้าของห้องได้เอง ถ้ามีการเลือกเจ้าของห้องซ้ำ เจ้าของห้องเดิม จะถูกเปลี่ยนเป็นผู้พักอาศัยทันที
    Wait Until Contains Get Text Split String Join    ${ROOMOWNER_ADD_LBL_NOTE_LOCATOR}    ${ROOMOWNER_ADD_LBL_NOTE_TH} 

    #Owner :
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_OWNER_LOCATOR}    ${ROOMOWNER_ADD_LBL_OWNER_TH} 

    #Owner
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_CHANGEOWNER_LBL_TYPE_OWNER_1_LOCATOR}    ${ROOMOWNER_CHANGEOWNER_LBL_TYPE_OWNER_TH} 
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_CHANGEOWNER_RDL_TYPE_OWNER_1_CHECK_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${TRUE_LOWWER}
    #Guest Person
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_CHANGEOWNER_LBL_TYPE_GUESTPERSON_1_LOCATOR}    ${ROOMOWNER_CHANGEOWNER_LBL_TYPE_GUESTPERSON_TH}
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_CHANGEOWNER_RDL_TYPE_GUESTPERSON_1_CHECK_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${FALSE_LOWWER}

Verify Action : Click Save button input all data

    ChangeOwner RoomOwner input all field data Thai    ${ROOMNO_B201}
    
Verify Action : click Copy code button in code popup

    ############## Code for connect room ############## 
    #Code for connect room
    Wait Until Contains Element Text Should Be    ${ALERT_HEADER_CODEFORCONNECTROOM_LOCATOR}    ${ALERT_HEADER_CODEFORCONNECTROOM_TH}
    #Code
    # Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_CODEFORCONNECTROOM_LOCATOR}    ${ROOMOWNER_ASSET_REMARK_2_VALUE}
    #Copy code Button
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_COPYCODE_LOCATOR}    ${ALERT_BTN_COPYCODE_TH}
    
    #Click Copy code Button
    Click Element Page    ${ALERT_BTN_COPYCODE_LOCATOR}

    Generic Test Case Teardown RoomOwner Not Delete checkAsset No Close    ${ROOMOWNER_STAMPDELETE_FILENAME_VALUE}    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${ROOMNO_B201}

Verify Action : Click Save button input require field data

    #Click X
    Click Element Page    ${ROOMOWNER_BTN_CLOSE_LOCATOR}

    #Click Room
    Click Room    ${ROOMNO_B201}

    Create RoomOwner input require field data Thai    ${ROOMNO_B201}
    
    #Click X
    Click Element Page    ${ROOMOWNER_BTN_CLOSE_LOCATOR}

    #Click Room
    Click Room    ${ROOMNO_B201}

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_TH} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== Change owner =============== 

    #Change owner
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_CHANGEOWNER_DATA_LOCATOR}    ${ROOMOWNER_LBL_CHANGEOWNER_DATA_TH} 
    #Click Change owner
    Click Element Page    ${ROOMOWNER_BTN_CHANGEOWNER_DATA_LOCATOR}

    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_CHANGEOWNER_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_CHANGEOWNER_LBL_NUMBERROOM_TH} ${ROOMNO_B201}

    #Owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_ADD_LBL_OWNERINFORMATION_TH} 

    #- กรณีที่เจ้าของห้องเป็นนิติบุคคล จะต้องเลือกกรอกนิติบุคคลคนแรกเท่านั้น - กรณีที่เจ้าของห้องเป็นบุคคลธรรมดาจะสามารถเลือกเจ้าของห้องได้เอง ถ้ามีการเลือกเจ้าของห้องซ้ำ เจ้าของห้องเดิม จะถูกเปลี่ยนเป็นผู้พักอาศัยทันที
    Wait Until Contains Get Text Split String Join    ${ROOMOWNER_ADD_LBL_NOTE_LOCATOR}    ${ROOMOWNER_ADD_LBL_NOTE_TH} 

    #Owner :
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_OWNER_LOCATOR}    ${ROOMOWNER_ADD_LBL_OWNER_TH} 

    #Owner
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_CHANGEOWNER_LBL_TYPE_OWNER_1_LOCATOR}    ${ROOMOWNER_CHANGEOWNER_LBL_TYPE_OWNER_TH} 
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_CHANGEOWNER_RDL_TYPE_OWNER_1_CHECK_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${TRUE_LOWWER}
    #Guest Person
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_CHANGEOWNER_LBL_TYPE_GUESTPERSON_1_LOCATOR}    ${ROOMOWNER_CHANGEOWNER_LBL_TYPE_GUESTPERSON_TH}
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_CHANGEOWNER_RDL_TYPE_GUESTPERSON_1_CHECK_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${FALSE_LOWWER}

    ChangeOwner RoomOwner input require field data Thai    ${ROOMNO_B201}

    #Click X
    Click Element Page    ${ROOMOWNER_BTN_CLOSE_LOCATOR}

Verify Action : Click Copy ID number button [Individuals - Thai nationals]

    # Click Room
    Click Room    ${ROOMNO_B201}

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_TH} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== Change owner =============== 

    #Change owner
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_CHANGEOWNER_DATA_LOCATOR}    ${ROOMOWNER_LBL_CHANGEOWNER_DATA_TH} 
    #Click Change owner
    Click Element Page    ${ROOMOWNER_BTN_CHANGEOWNER_DATA_LOCATOR}

    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_CHANGEOWNER_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_CHANGEOWNER_LBL_NUMBERROOM_TH} ${ROOMNO_B201}

    #Owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_ADD_LBL_OWNERINFORMATION_TH} 

    #- กรณีที่เจ้าของห้องเป็นนิติบุคคล จะต้องเลือกกรอกนิติบุคคลคนแรกเท่านั้น - กรณีที่เจ้าของห้องเป็นบุคคลธรรมดาจะสามารถเลือกเจ้าของห้องได้เอง ถ้ามีการเลือกเจ้าของห้องซ้ำ เจ้าของห้องเดิม จะถูกเปลี่ยนเป็นผู้พักอาศัยทันที
    Wait Until Contains Get Text Split String Join    ${ROOMOWNER_ADD_LBL_NOTE_LOCATOR}    ${ROOMOWNER_ADD_LBL_NOTE_TH} 

    #Owner :
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_OWNER_LOCATOR}    ${ROOMOWNER_ADD_LBL_OWNER_TH} 

    #Owner
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_CHANGEOWNER_LBL_TYPE_OWNER_1_LOCATOR}    ${ROOMOWNER_CHANGEOWNER_LBL_TYPE_OWNER_TH} 
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_CHANGEOWNER_RDL_TYPE_OWNER_1_CHECK_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${TRUE_LOWWER}
    #Guest Person
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_CHANGEOWNER_LBL_TYPE_GUESTPERSON_1_LOCATOR}    ${ROOMOWNER_CHANGEOWNER_LBL_TYPE_GUESTPERSON_TH}
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_CHANGEOWNER_RDL_TYPE_GUESTPERSON_1_CHECK_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${FALSE_LOWWER}

    ############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "บุคคลธรรมดา - คนไทย" [2] ############## 
    # Input Tax identification number [ปรเภทบุคคลธรรมดา]
	Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_TAXIDENTIFICATIONNUMBER_THAI_FOREIGNERS_VALUE}

    #Click Tax identification number
    Click Element Double    ${ROOMOWNER_ADD_BTN_TAXIDENTIFICATIONNUMBER_1_LOCATOR}  
    Sleep    1s
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_TXT_TAXIDENTIFICATIONNUMBER_1_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_TAXIDENTIFICATIONNUMBER_THAI_FOREIGNERS_VALUE}

Verify Action : choose occupation to other [Individuals - Thai nationals]

    #[กรอกอาชีพอื่นๆ]
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_INPUT_OCCUPATION_OTHER_2_1_LOCATOR}
    #Occupation
    Check Select many dropdown generateId for dx     ${DEFAULT_TYPE_LONG}    ${ROOMOWNER_ADD_DDL_OCCUPATION_2_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_OCCUPATION_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_OCCUPATION_OTHER_TH_VALUE}    ${ROOMOWNER_ADD_LBL_OCCUPATION_2_1_LOCATOR}
    
    #[กรอกอาชีพอื่นๆ]
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_INPUT_OCCUPATION_OTHER_2_1_LOCATOR}

Verify Action : Click Add car button [Individuals - Thai nationals]
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
    
Verify Action : Click Delete car button [Individuals - Thai nationals]
    #Delete car
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_BTN_DELETECAR_1_LOCATOR}    ${ROOMOWNER_ADD_BTN_DELETECAR_TH} 
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_BTN_DELETECAR_1_LOCATOR}
    
    #Click Delete car
    Click Element Page    ${ROOMOWNER_ADD_BTN_DELETECAR_1_LOCATOR}
    #Delete car
    Wait Element Not Visible    ${ROOMOWNER_ADD_BTN_DELETECAR_1_LOCATOR}

Verify Action : Click Add guest button [Individuals - Thai nationals]
    ############## Add guest ############## 
    #Add guest
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}    ${ROOMOWNER_ADD_BTN_ADDGUEST_TH} 
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}
    
    #Click Add guest
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}

    #icon delete guest
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_ICON_DELETEGUEST_LOCATOR}

    #Guest Person 1 :
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_GUESTPERSON1_LOCATOR}    ${ROOMOWNER_ADD_LBL_GUESTPERSON1_TH} 

Verify Action : Click Delete user button [Individuals - Thai nationals]

    #Click icon delete guest
    Click Element Page    ${ROOMOWNER_ADD_ICON_DELETEGUEST_LOCATOR}
    Wait Element Not Visible    ${ROOMOWNER_ADD_ICON_DELETEGUEST_LOCATOR}

Verify Action : choose occupation to other [Individuals - Foreigners]
   
    ############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "บุคคลธรรมดา - ต่างชาติ" [1] ############## 

    #Owner type *
    Select Dropdown    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_CLASS_LOCATOR}    ${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_TH_VALUE}
    Sleep    0.5s
    #Occupation
    Check Select many dropdown generateId for dx     ${DEFAULT_TYPE_LONG}    ${ROOMOWNER_ADD_DDL_OCCUPATION_3_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_OCCUPATION_3_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_OCCUPATION_UNEMPLOYED_TH_VALUE}    ${ROOMOWNER_ADD_LBL_OCCUPATION_3_1_LOCATOR}
    
    #[กรอกอาชีพอื่นๆ]
    Wait Until Contains Element Should Be Disabled    ${ROOMOWNER_ADD_INPUT_OCCUPATION_OTHER_3_1_LOCATOR}
    #Occupation
    Check Select many dropdown generateId for dx     ${DEFAULT_TYPE_LONG}    ${ROOMOWNER_ADD_DDL_OCCUPATION_3_1_LOCATOR}    ${ROOMOWNER_ADD_INPUT_OCCUPATION_3_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_OCCUPATION_CLASS_LOCATOR}    ${ATTRIBUTE_ARIA_OWNS}    ${DEFAULT_REPLACE_ID}    ${ROOMOWNER_OCCUPATION_OTHER_TH_VALUE}    ${ROOMOWNER_ADD_LBL_OCCUPATION_3_1_LOCATOR}
    
    #[กรอกอาชีพอื่นๆ]
    Wait Until Contains Element Should Be Enabled    ${ROOMOWNER_ADD_INPUT_OCCUPATION_OTHER_3_1_LOCATOR}

Verify Action : Click Add car button [Individuals - Foreigners]
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

Verify Action : Click Delete car button [Individuals - Foreigners]
    #Delete car
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_BTN_DELETECAR_1_LOCATOR}    ${ROOMOWNER_ADD_BTN_DELETECAR_TH} 
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_BTN_DELETECAR_1_LOCATOR}
    
    #Click Delete car
    Click Element Page    ${ROOMOWNER_ADD_BTN_DELETECAR_1_LOCATOR}
    #Delete car
    Wait Element Not Visible    ${ROOMOWNER_ADD_BTN_DELETECAR_1_LOCATOR}

Verify Action : Click Add guest button [Individuals - Foreigners]
    ############## Add guest ############## 
    #Add guest
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}    ${ROOMOWNER_ADD_BTN_ADDGUEST_TH} 
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}
    
    #Click Add guest
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}

    #icon delete guest
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_ICON_DELETEGUEST_LOCATOR}

    #Guest Person 1 :
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_GUESTPERSON1_LOCATOR}    ${ROOMOWNER_ADD_LBL_GUESTPERSON1_TH} 

Verify Action : Click Delete user button [Individuals - Foreigners]
    
    #Click icon delete guest
    Click Element Page    ${ROOMOWNER_ADD_ICON_DELETEGUEST_LOCATOR}
    Wait Element Not Visible    ${ROOMOWNER_ADD_ICON_DELETEGUEST_LOCATOR}

Verify Action : Click Add guest button [Juristic person]
    
    ############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "นิติบุคคล" [1] ############## 

    #Owner type *
    Select Dropdown    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_2_1_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_LIST_LOCATOR}    ${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_CLASS_LOCATOR}    ${ROOMOWNER_TYPE_OWNERTYPE_JURISTICPERSON_TH_VALUE}
    Sleep    0.5s

    # Owner :
    Wait Element Not Visible    ${ROOMOWNER_ADD_LBL_OWNER_LOCATOR}

    ############## Add guest ############## 
    #Add guest
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}    ${ROOMOWNER_ADD_BTN_ADDGUEST_TH} 
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}
    
    #Click Add guest
    Click Element Page    ${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}

    #icon delete guest
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_ICON_DELETEGUEST_LOCATOR}

    #Guest Person 1 :
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_GUESTPERSON1_LOCATOR}    ${ROOMOWNER_ADD_LBL_GUESTPERSON1_TH} 
    
Verify Action : Click Delete user button [Juristic person]
    #Click icon delete guest
    Click Element Page    ${ROOMOWNER_ADD_ICON_DELETEGUEST_LOCATOR}
    Wait Element Not Visible    ${ROOMOWNER_ADD_ICON_DELETEGUEST_LOCATOR}

Verify Action : Click Upload a picture of a legal entity button [Juristic person]   
    #icon delete image
    # Wait Element Not Visible    ${ROOMOWNER_ADD_ICON_UPLOADAPICTUREOFALEGALENTITY_DELETE_LOCATOR}
    
    #upload image
    # ${CURDIR}/../image/suzy.jpg
    ${path}=    Normalize path    ${CURDIR}${ROOMOWNER_IMG_SCRIPT}
    # Log To Console    ${path}
    Choose File    ${ROOMOWNER_ADD_INPUT_UPLOADAPICTUREOFALEGALENTITY_LOCATOR}    ${path}
    
    # ${timeout}=    Set Selenium Implicit Wait    5        #set Timeout
    # Sleep    10s
    #icon delete image
    # Wait Element Visible    ${ROOMOWNER_ADD_ICON_UPLOADAPICTUREOFALEGALENTITY_DELETE_LOCATOR}
    # Set Selenium Implicit Wait    ${timeout}      #set Timeout

Verify Action : click X button   
    
    #Click X button    
    Click Element Page    ${ROOMOWNER_BTN_CLOSE_LOCATOR}

    #ห้อง B201
    Wait Element Not Visible    ${ROOMOWNER_ADD_LBL_NUMBERROOM_LOCATOR}

Verify Action : click cancel button

    # Click Room
    Click Room    ${ROOMNO_B201}

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_TH} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== Change owner =============== 

    #Change owner
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_CHANGEOWNER_DATA_LOCATOR}    ${ROOMOWNER_LBL_CHANGEOWNER_DATA_TH} 
    #Click Change owner
    Click Element Page    ${ROOMOWNER_BTN_CHANGEOWNER_DATA_LOCATOR}

    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_CHANGEOWNER_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_CHANGEOWNER_LBL_NUMBERROOM_TH} ${ROOMNO_B201}

    #Owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_ADD_LBL_OWNERINFORMATION_TH} 

    #- กรณีที่เจ้าของห้องเป็นนิติบุคคล จะต้องเลือกกรอกนิติบุคคลคนแรกเท่านั้น - กรณีที่เจ้าของห้องเป็นบุคคลธรรมดาจะสามารถเลือกเจ้าของห้องได้เอง ถ้ามีการเลือกเจ้าของห้องซ้ำ เจ้าของห้องเดิม จะถูกเปลี่ยนเป็นผู้พักอาศัยทันที
    Wait Until Contains Get Text Split String Join    ${ROOMOWNER_ADD_LBL_NOTE_LOCATOR}    ${ROOMOWNER_ADD_LBL_NOTE_TH} 

    #Owner :
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_OWNER_LOCATOR}    ${ROOMOWNER_ADD_LBL_OWNER_TH} 

    #Owner
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_CHANGEOWNER_LBL_TYPE_OWNER_1_LOCATOR}    ${ROOMOWNER_CHANGEOWNER_LBL_TYPE_OWNER_TH} 
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_CHANGEOWNER_RDL_TYPE_OWNER_1_CHECK_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${TRUE_LOWWER}
    #Guest Person
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_CHANGEOWNER_LBL_TYPE_GUESTPERSON_1_LOCATOR}    ${ROOMOWNER_CHANGEOWNER_LBL_TYPE_GUESTPERSON_TH}
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_CHANGEOWNER_RDL_TYPE_GUESTPERSON_1_CHECK_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${FALSE_LOWWER}

    #Click Cancel button
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_CANCEL_LOCATOR}

    #ห้อง B201
    Wait Element Not Visible    ${ROOMOWNER_ADD_LBL_NUMBERROOM_LOCATOR}

Verify screen : Verify screen tab "Popup Profile"

    # Click Room
    Click Room    ${ROOMNO_B201}

    #View owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_TH} 
    #Click View owner information
    Click Element Page    ${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}

    Log To Console    ${\n}=========== Change owner =============== 

    #Change owner
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_BTN_CHANGEOWNER_DATA_LOCATOR}    ${ROOMOWNER_LBL_CHANGEOWNER_DATA_TH} 
    #Click Change owner
    Click Element Page    ${ROOMOWNER_BTN_CHANGEOWNER_DATA_LOCATOR}

    #ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_CHANGEOWNER_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_CHANGEOWNER_LBL_NUMBERROOM_TH} ${ROOMNO_B201}

    #Owner information
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_OWNERINFORMATION_LOCATOR}    ${ROOMOWNER_ADD_LBL_OWNERINFORMATION_TH} 

    #- กรณีที่เจ้าของห้องเป็นนิติบุคคล จะต้องเลือกกรอกนิติบุคคลคนแรกเท่านั้น - กรณีที่เจ้าของห้องเป็นบุคคลธรรมดาจะสามารถเลือกเจ้าของห้องได้เอง ถ้ามีการเลือกเจ้าของห้องซ้ำ เจ้าของห้องเดิม จะถูกเปลี่ยนเป็นผู้พักอาศัยทันที
    Wait Until Contains Get Text Split String Join    ${ROOMOWNER_ADD_LBL_NOTE_LOCATOR}    ${ROOMOWNER_ADD_LBL_NOTE_TH} 

    #Owner :
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_OWNER_LOCATOR}    ${ROOMOWNER_ADD_LBL_OWNER_TH} 

    #Owner
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_CHANGEOWNER_LBL_TYPE_OWNER_1_LOCATOR}    ${ROOMOWNER_CHANGEOWNER_LBL_TYPE_OWNER_TH} 
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_CHANGEOWNER_RDL_TYPE_OWNER_1_CHECK_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${TRUE_LOWWER}
    #Guest Person
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_CHANGEOWNER_LBL_TYPE_GUESTPERSON_1_LOCATOR}    ${ROOMOWNER_CHANGEOWNER_LBL_TYPE_GUESTPERSON_TH}
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_CHANGEOWNER_RDL_TYPE_GUESTPERSON_1_CHECK_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${FALSE_LOWWER}

    # Input Tax identification number [ปรเภทบุคคลธรรมดา]
	Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_TAXIDENTIFICATIONNUMBER_THAI_FOREIGNERS_VALUE}

    #Click Tax identification number
    Click Element Double    ${ROOMOWNER_ADD_BTN_TAXIDENTIFICATIONNUMBER_1_LOCATOR}  
    Sleep    1s
    Wait Should Contain Get Element Attribute    ${ROOMOWNER_ADD_TXT_TAXIDENTIFICATIONNUMBER_1_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_TAXIDENTIFICATIONNUMBER_THAI_FOREIGNERS_VALUE}

    #Click Tax identification number
    Click Element Page    ${ROOMOWNER_ADD_BTN_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}

    #Profile
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_TH} 

Verify Action : click Back button in profile popup

	#Click Back button
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_PROFILE_BACK_LOCATOR}

Verify Action : click Use this tenant information button in profile popup
    #Click Tax identification number
    Click Element Page    ${ROOMOWNER_ADD_BTN_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}

    #Profile
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_TH} 

    #Click Use this information button
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_PROFILE_USETHISINFORMATION_LOCATOR}

    #Profile
    Wait Element Not Visible    ${ROOMOWNER_ADD_LBL_PROFILE_LOCATOR} 

Verify Action : Click Browse button

    # #icon delete file name
    # Wait Element Not Visible    ${ROOMOWNER_ADD_ICON_ATTACHOTHERDOCUMENT_DELETE_LOCATOR}
    # #file name
    # Wait Element Not Visible    ${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENT_NAMEFILE_LOCATOR}

    #upload image
    # ${CURDIR}/../image/suzy.jpg
    ${path}=    Normalize path    ${CURDIR}${ROOMOWNER_IMG_SCRIPT}
    # Log To Console    ${path}
    Choose File    ${ROOMOWNER_ADD_INPUT_ATTACHOTHERDOCUMENT_LOCATOR}    ${path}

    # #file name
    # Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENT_NAMEFILE_LOCATOR}
    #icon delete file name
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_ADD_ICON_ATTACHOTHERDOCUMENT_DELETE_LOCATOR}
Verify Action : Click Delete file button
    #Click icon delete file
    Click Element Page    ${ROOMOWNER_ADD_ICON_ATTACHOTHERDOCUMENT_DELETE_LOCATOR}
    #icon delete file name
    Wait Element Not Visible    ${ROOMOWNER_ADD_ICON_ATTACHOTHERDOCUMENT_DELETE_LOCATOR}
    #file name
    Wait Element Not Visible    ${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENT_NAMEFILE_LOCATOR}

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${ROOMOWNER_CHANGEOWNER_M13_1_1_31_000_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Generic Test Case Teardown RoomOwner    ${ROOMOWNER_STAMPDELETE_FILENAME_VALUE}    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${ROOMNO_B201}
