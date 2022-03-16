*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Search] Room Management ###################
M7_1_1_12_001_RoomManagement_Success_SearchUser_VerifyAction [Verify Action "Room Management"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click User Account

    [Setup]    Open Browser To Login Page Super Admin
   	
    #========== Click Building ======
	Click building 


Verify API Onload and mapping data after click choose property	

	#================ Check Value RoomList ================
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchRoomManagement}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check Room Management    ${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_SEARCHALL}    null    ${ROOMMANAGEMENT_PROPERTYID_VALUE}    ${ROOMMANAGEMENT_BUILDINGID_VALUE}    null    ${ROOMMANAGEMENT_ORDERBY_VALUE}
	# Log To Console    resultSearchRoomManagement::${resultSearchRoomManagement}                                      


	${dataSearchRoomManagement}=    Set Variable    ${resultSearchRoomManagement}[0]
	Log To Console    [dataSearchRoomManagement] : ${dataSearchRoomManagement}
	${rowcountSearchRoomManagement}=    Set Variable    ${resultSearchRoomManagement}[1]
	Log To Console    [rowcount SearchRoomManagement] : ${rowcountSearchRoomManagement}


	${checkNodata}=    Run Keyword If    '${rowcountSearchRoomManagement}'!='0'    Check Value RoomList    ${DEFAULT_TH}     ${rowcountSearchRoomManagement}    ${dataSearchRoomManagement}
    # ...    ELSE IF    '${rowcountSearchAssetManagement}'!='0'    Check Value Table Check Asset Management    ${DEFAULT_TH}     ${rowcountSearchAssetManagement}    ${dataSearchAssetManagement}



Verify Action : click search button (Search status dropdown)

	#Status
	Select Dropdown    ${ROOMMANAGEMENT_SEARCH_DDL_STATUS_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_DDL_STATUS_CLASS_LOCATOR}    ${ROOMMANAGEMENT_STATUS_TH_VALUE3}
	Sleep    0.5s
	#Click Search
	Click Element Page    ${ROOMMANAGEMENT_SEARCH_BTN_SEARCH_LOCATOR}
	Sleep    1s
	
	#================ Check Value RoomList ================
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchRoomManagement}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check Room Management    ${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_STATUS}    null    null    null    ${DB_TB_CHECKROOMMANAGEMENT_FIELD_FLOOR},${DB_TB_CHECKROOMMANAGEMENT_FIELD_ROOMNO} ${ORDERBY_ASC}
	# Log To Console    resultSearchRoomManagement::${resultSearchRoomManagement} 


	${dataSearchRoomManagement}=    Set Variable    ${resultSearchRoomManagement}[0]
	Log To Console    [dataSearchRoomManagement] : ${dataSearchRoomManagement}
	${rowcountSearchRoomManagement}=    Set Variable    ${resultSearchRoomManagement}[1]
	Log To Console    [rowcount SearchRoomManagement] : ${rowcountSearchRoomManagement}


	${checkNodata}=    Run Keyword If    '${rowcountSearchRoomManagement}'!='0'    Check Value RoomList    ${DEFAULT_TH}     ${rowcountSearchRoomManagement}    ${dataSearchRoomManagement}
    # ...    ELSE IF    '${rowcountSearchAssetManagement}'!='0'    Check Value Table Check Asset Management    ${DEFAULT_TH}     ${rowcountSearchAssetManagement}    ${dataSearchAssetManagement}


Verify Action : click clear button
	#Click Clear
	Click Element Page  ${ROOMMANAGEMENT_SEARCH_BTN_CLEAR_LOCATOR}

	#================ Check Value RoomList ================
	#====== Verify DB ==========
    #Inquiry for verify DB  
    ${resultSearchRoomManagement}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check Room Management    ${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_SEARCHALL}    null    ${ROOMMANAGEMENT_PROPERTYID_VALUE}    ${ROOMMANAGEMENT_BUILDINGID_VALUE}    null    ${ROOMMANAGEMENT_ORDERBY_VALUE}
	# Log To Console    resultSearchRoomManagement::${resultSearchRoomManagement} 


	${dataSearchRoomManagement}=    Set Variable    ${resultSearchRoomManagement}[0]
	Log To Console    [dataSearchRoomManagement] : ${dataSearchRoomManagement}
	${rowcountSearchRoomManagement}=    Set Variable    ${resultSearchRoomManagement}[1]
	Log To Console    [rowcount SearchRoomManagement] : ${rowcountSearchRoomManagement}


	${checkNodata}=    Run Keyword If    '${rowcountSearchRoomManagement}'!='0'    Check Value RoomList    ${DEFAULT_TH}     ${rowcountSearchRoomManagement}    ${dataSearchRoomManagement}
    # ...    ELSE IF    '${rowcountSearchAssetManagement}'!='0'    Check Value Table Check Asset Management    ${DEFAULT_TH}     ${rowcountSearchAssetManagement}    ${dataSearchAssetManagement}




Verify Action : click Room button and click X button
	#Click Room
	Click Element Page  ${ROOMMANAGEMENT_SEARCH_BTN_ROOMA101_LOCATOR}

	#Label: ห้อง XXX
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_HEADERPOPUP_ROOMA101_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_HEADERPOPUP_ROOMA101_TH}

	#Label: ประเภทห้อง
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_ROOMTYPE_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_ROOMTYPE_TH}


	#Label: สถานะห้อง
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_ROOMSTATUS_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_ROOMSTATUS_TH}


	#Label: ห้องโอนแล้ว
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_TRANSFERRED_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_TRANSFERRED_TH}


	#Label: ดูข้อมูลห้องพัก
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_ROOMDETAILS_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_ROOMDETAILS_TH}


	#Label: ดูข้อมูลเจ้าของห้อง
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_VIEWOWNERINFORMATION_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_VIEWOWNERINFORMATION_TH}


Verify Action : click X button in popup Room details
	#Click X
	Click Element Page  ${ROOMMANAGEMENT_BTN_CLOSE_LOCATOR}



Verify Action : click Room details button
	#Click Room
	Click Element Page  ${ROOMMANAGEMENT_SEARCH_BTN_ROOMA101_LOCATOR}

	#Click Room Detail
	Click Element Page  ${ROOMMANAGEMENT_SEARCH_LBL_ROOMDETAILS_LOCATOR}


	#Inquiry for verify DB  
    ${resultSearchRoomManagement}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check Room Management    ${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_DETAILROOM}    null    null    null    null
	Log To Console    resultSearchRoomManagement::${resultSearchRoomManagement} 


	${dataSearchRoomManagement}=    Set Variable    ${resultSearchRoomManagement}[0]
	Log To Console    [dataSearchRoomManagement] : ${dataSearchRoomManagement}
	${rowcountSearchRoomManagement}=    Set Variable    ${resultSearchRoomManagement}[1]
	Log To Console    [rowcount SearchRoomManagement] : ${rowcountSearchRoomManagement}

	FOR    ${i}    IN RANGE    ${rowcountSearchRoomManagement}

	${RoomNo}=    Set Variable    ${dataSearchRoomManagement}[${i}][5]
	${HouseNo}=    Set Variable    ${dataSearchRoomManagement}[${i}][6]
	${SArea}=    Set Variable    ${dataSearchRoomManagement}[${i}][9]
	${SArea}=    Convert To String    ${SArea}
	${ReplcaeDecimalSArea}=    Replace String    ${SArea}    .00    ${EMPTY}        
	${ProprietaryRatio}=    Set Variable    ${dataSearchRoomManagement}[${i}][10]
	${WaterMeterNo}=    Set Variable    ${dataSearchRoomManagement}[${i}][11]
	${WaterMeterNo}=    Convert To String    ${WaterMeterNo}
	${ElectricMeterNo}=    Set Variable    ${dataSearchRoomManagement}[${i}][12]
	${ElectricMeterNo}=    Convert To String    ${ElectricMeterNo}
	${WaterMeterlimitUnit}=    Set Variable    ${dataSearchRoomManagement}[${i}][13]
	${WaterMeterlimitUnit}=    Convert To String    ${WaterMeterlimitUnit}
	${ElectricMeterlimitUnit}=    Set Variable    ${dataSearchRoomManagement}[${i}][14]
	${ElectricMeterlimitUnit}=    Convert To String    ${ElectricMeterlimitUnit}      
	Log To Console    [RoomNo] : ${RoomNo}    
	Log To Console    [HouseNo] : ${HouseNo}
	Log To Console    [SArea] : ${SArea}
	Log To Console    [ProprietaryRatio] : ${ProprietaryRatio}
	Log To Console    [WaterMeterNo] : ${WaterMeterNo}
	Log To Console    [ElectricMeterNo] : ${ElectricMeterNo}
	Log To Console    [WaterMeterlimitUnit] : ${WaterMeterlimitUnit}
	Log To Console    [ElectricMeterlimitUnit] : ${ElectricMeterlimitUnit}

	END

	Wait Should Contain Get Element Attribute    ${ROOMMANAGEMENT_SEARCH_LBD_ROOM_NO_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${RoomNo}
	Wait Should Contain Get Element Attribute    ${ROOMMANAGEMENT_SEARCH_LBD_HOUSE_NO_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${HouseNo}
	Wait Should Contain Get Element Attribute    ${ROOMMANAGEMENT_SEARCH_LBD_SAREA_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${ReplcaeDecimalSArea}
	Wait Should Contain Get Element Attribute    ${ROOMMANAGEMENT_SEARCH_LBD_PROPRIETARYRATIO_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${ProprietaryRatio}
	Wait Should Contain Get Element Attribute    ${ROOMMANAGEMENT_SEARCH_LBD_WATERMETERNO_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${WaterMeterNo}
	Wait Should Contain Get Element Attribute    ${ROOMMANAGEMENT_SEARCH_LBD_ELECTRICMETERNO_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${ElectricMeterNo}
	Wait Should Contain Get Element Attribute    ${ROOMMANAGEMENT_SEARCH_LBD_WATERMETERLIMITUNIT_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${WaterMeterlimitUnit}
	Wait Should Contain Get Element Attribute    ${ROOMMANAGEMENT_SEARCH_LBD_ELECTRICMETERLIMITUNIT_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${ElectricMeterlimitUnit}

	#Click X
	Click Element Page  ${ROOMMANAGEMENT_BTN_CLOSE_LOCATOR}



Verify Action : click Create Room Owner button
	Click Element Page  ${ROOMMANAGEMENT_SEARCH_BTN_ROOMA102_LOCATOR}
	Click Element Page  ${ROOMMANAGEMENT_SEARCH_LBL_CREATEROOMOWNER_LOCATOR}
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_HEADERPOPUPCREATE_ROOMA102_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_HEADERPOPUPCREATE_ROOMA102_TH}

	#Click X
	Click Element Page  ${ROOMMANAGEMENT_BTN_CLOSE_LOCATOR}




Verify Action : click View owner information button
	Click Element Page  ${ROOMMANAGEMENT_SEARCH_BTN_ROOMA103_LOCATOR}

	Click Element Page    ${ROOMMANAGEMENT_SEARCH_LBL_VIEWOWNERINFORMATION_LOCATOR}

	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_HEADERPOPUPVIEW_OWNERINFORMATION_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_HEADERPOPUPVIEW_OWNERINFORMATION_TH}


	#Click X
	Click Element Page  ${ROOMMANAGEMENT_BTN_CLOSE_LOCATOR}


	#capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${ROOMMANAGEMENT_SEARCHUSER_M7_1_1_12_001_SUCCESS_SCREENSHOT}

	################### Close Browser ###################
    Close Browser









