*** Keywords ***
Click Property Loop
    # Click Property go to Room list page
    # ${PROPERTY_LBD_LOCATOR}       >> Property Name locator
    # ${PROPERTY_NAME_VALUE}         >> Property Name value
    # ${BUILDINGNAME_LINK_LOCATOR}  >> Property Name link locator for click
    [Arguments]    ${PropertyName_locator}    ${PropertyName_value}    ${PropertyName_link_locator}
    ${timeout}=    Set Selenium Implicit Wait    50 seconds  
    # ${count}=    Get Element Count    ${PROPERTY_CLASS}
    ${count}=    Get Element Count     class="media-object"
    Log To Console    count${count}
    FOR    ${i}    IN RANGE    1    ${count}+1
        Exit For Loop If    ${i} > ${count}+1
        ${get_property}=    Get Text    ${PropertyName_locator}
        Run Keyword If    '${get_property}' == '${PropertyName_value}'    Click Element    ${PropertyName_link_locator}
        Exit For Loop If    '${get_property}' == '${BuildingName_value}'
    END
    Set Selenium Implicit Wait	${timeout}

Click Building Loop
    # Click Building go to Room list page
    # ${BUILDINGNAME_LOCATOR}       >> Building Name locator
    # ${BUILDINGNAME_VALUE}         >> Building Name value
    # ${BUILDINGNAME_LINK_LOCATOR}  >> Building Name link locator for click
    [Arguments]    ${BuildingName_locator}    ${BuildingName_value}    ${BuildingName_link_locator}
    ${timeout}=    Set Selenium Implicit Wait    50 seconds  
    # ${count}=    Get Element Count    ${BUILDINGNAME_CLASS}
    ${count}=    Get Element Count     class="media-object"
    Log To Console    count${count}
    FOR    ${i}    IN RANGE    1    ${count}+1
        Exit For Loop If    ${i} > ${count}+1
        ${get_building}=    Get Text    ${BuildingName_locator}
        Run Keyword If    '${get_building}' == '${BuildingName_value}'    Click Element    ${BuildingName_link_locator}
        Exit For Loop If    '${get_building}' == '${BuildingName_value}'
    END
    Set Selenium Implicit Wait	${timeout}

Click Availability room
    # ${link_room_id}     >> id link room for click
    # ${label_room_id}    >> id label room is 'ห้องว่าง' or 'Availability room'
    [Arguments]    ${roomNo}
    ${timeout}=    Set Selenium Implicit Wait    50 seconds
    ${room_xpath}=    Replace String    ${LINK_ROOMID_LOCATOR}    [room_id]    ${roomNo}    #set xpath room link
    ${room_text}=    Replace String    ${LABEL_ROOMID_LOCATOR}    [room_id]    ${roomNo}    #set xpath room text is 'Availability room'
    ${get_room_text}=    Get Text    ${room_text}
    Run Keyword If    '${get_room_text}' == 'ห้องว่าง' or '${get_room_text}' == 'Availability room'    Click Element    ${room_xpath}
    Set Selenium Implicit Wait	${timeout}

Click Room
    # ${link_room_id}     >> id link room for click
    [Arguments]    ${roomNo}
    ${timeout}=    Set Selenium Implicit Wait    50 seconds
    ${room_xpath}=    Replace String    ${LINK_ROOMID_LOCATOR}    [room_id]    ${roomNo}    #set xpath room link
    Click Element    ${room_xpath}
    Set Selenium Implicit Wait	${timeout}