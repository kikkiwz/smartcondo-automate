*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
Suite Setup    Set Library Search Order    Selenium2Library    AppiumLibrary
*** Test Cases ***
################### [Edit] EditRoomOwner ###################
M13_1_1_3_002_RoomOwner_Success_Edit_Status2_JuristicPerson_VerifyAction [Verify screen page "Edit room owner"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. click choose property
    ...    4. click choose empty room
    ...    5. click Create room owner
    ...    6. click Edit data button

    [Setup]    Open Browser To Login Page Click Building and Room    ${PROPERTYE_LOCATOR}    ${ROOMNO_B201}
 
    Log To Console    ${\n}=========== [Create] CreateRoomOwner =============== 

    # ห้อง B201
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_INFO_LBL_NUMBERROOM_LOCATOR}    ${ROOMOWNER_INFO_LBL_NUMBERROOM_TH} ${ROOMNO_B201}

    #close button
    Wait Until Contains Element Should Be Visible    ${ROOMOWNER_BTN_CLOSE_LOCATOR}

Verify Action : Click Save button change all data

    Create RoomOwner input require field data Juristic person    ${ROOMNO_B201}
    # Click X
    Click Element Page    ${ROOMOWNER_BTN_CLOSE_LOCATOR}

    # Click Room
    Click Room    ${ROOMNO_B201}
    Edit RoomOwner input all field data Juristic person    ${ROOMNO_B201}
    
    Generic Test Case Teardown RoomOwner No Close    ${ROOMOWNER_STAMPDELETE_FILENAME_VALUE}    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${ROOMNO_B201}

Verify Action : Click Save button change require field data
    
    # Click Clear
    Click Element Page    ${ROOMOWNER_BTN_CLEAR_LOCATOR}

    # Click Room
    Click Room    ${ROOMNO_B201}
    Create RoomOwner input require field data Juristic person    ${ROOMNO_B201}
    
    # Click X
    Click Element Page    ${ROOMOWNER_BTN_CLOSE_LOCATOR}

    # Click Room
    Click Room    ${ROOMNO_B201}
    Edit RoomOwner input require field data Juristic person    ${ROOMNO_B201}    

    Generic Test Case Teardown RoomOwner No Close    ${ROOMOWNER_STAMPDELETE_FILENAME_VALUE}    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${ROOMNO_B201}

Verify Action : click save button if delete 2nd user onwards and add new user
    
    # Click Clear
    Click Element Page    ${ROOMOWNER_BTN_CLEAR_LOCATOR}

    # Click Room
    Click Room    ${ROOMNO_B201}
    Create RoomOwner input require field data Juristic person    ${ROOMNO_B201}

    # Click X
    Click Element Page    ${ROOMOWNER_BTN_CLOSE_LOCATOR}

    # Click Room
    Click Room    ${ROOMNO_B201}
    Edit RoomOwner input require field data add owner Juristic person    ${ROOMNO_B201}
    
    Generic Test Case Teardown RoomOwner No Close    ${ROOMOWNER_STAMPDELETE_FILENAME_VALUE}    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${ROOMNO_B201}

Verify Action : click save button if delete 2nd user onwards 
    
    # Click Clear
    Click Element Page    ${ROOMOWNER_BTN_CLEAR_LOCATOR}
    
    # Click Room
    Click Room    ${ROOMNO_B201}
    Create RoomOwner input require field data 2 Owner Juristic person    ${ROOMNO_B201}

    # Click X
    Click Element Page    ${ROOMOWNER_BTN_CLOSE_LOCATOR}

    # Click Room
    Click Room    ${ROOMNO_B201}
    Edit RoomOwner input require field data delete owner Juristic person    ${ROOMNO_B201}

Verify Action : Click Add guest button
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

    #Juristic person :
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_JURISTICPERSON_LOCATOR}    ${ROOMOWNER_ADD_LBL_JURISTICPERSON_TH} 

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
Verify Action : Click Delete user button
    #Click icon delete guest
    Click Element Page    ${ROOMOWNER_ADD_ICON_DELETEGUEST_LOCATOR}
    Wait Element Not Visible    ${ROOMOWNER_ADD_ICON_DELETEGUEST_LOCATOR}

Verify Action : Click Upload a picture of a legal entity button
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

    #file name
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

Verify Action : Click search button    

    #Input Tax identification number [สำหรับนิติบุคคล]
	Wait Until Contains Input Text    ${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_1_LOCATOR}    ${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_TAXIDENTIFICATIONNUMBER_JURISTICPERSON_VALUE}

    #Click Tax identification number
    Click Element Page    ${ROOMOWNER_ADD_BTN_TAXIDENTIFICATIONNUMBER_JURISTIC_LOCATOR}

    #Profile
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_TH} 

Verify Action : click Back button in profile popup
    #Click Back button
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_PROFILE_BACK_LOCATOR}
   
Verify Action : click Use this tenant information button in profile popup
    #Click Tax identification number
    Click Element Page    ${ROOMOWNER_ADD_BTN_TAXIDENTIFICATIONNUMBER_JURISTIC_LOCATOR}

    #Profile
    Wait Until Contains Element Text Should Be    ${ROOMOWNER_ADD_LBL_PROFILE_LOCATOR}    ${ROOMOWNER_ADD_LBL_PROFILE_TH} 

    #Click Use this information button
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_PROFILE_USETHISINFORMATION_LOCATOR}

    #Profile
    Wait Element Not Visible    ${ROOMOWNER_ADD_LBL_PROFILE_LOCATOR} 

Verify Action : click Cancel button
    
    #Click Cancel button
    Click Element Page    ${ROOMOWNER_ADDEDIT_BTN_CANCEL_LOCATOR}

    #ห้อง B201
    Wait Element Not Visible    ${ROOMOWNER_ADD_LBL_NUMBERROOM_LOCATOR}

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${ROOMOWNER_EDIT_M13_1_1_3_002_SUCCESS_SCREENSHOT}

################### Close Browser ###################
    [Teardown]    Generic Test Case Teardown RoomOwner    ${ROOMOWNER_STAMPDELETE_FILENAME_VALUE}    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${ROOMNO_B201}
