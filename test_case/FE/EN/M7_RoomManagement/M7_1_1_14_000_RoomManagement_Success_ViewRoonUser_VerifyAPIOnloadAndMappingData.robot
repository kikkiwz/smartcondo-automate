*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Search] Room Management ###################
M7_1_1_14_000_RoomManagement_Success_ViewRoonUser_VerifyAPIOnloadAndMappingData [Verify Action "View Action"]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click User Account

    [Setup]    Open Browser To Login Page Super Admin EN
   	
    #========== Click Building ======
	Click building 
	



Verify API Onload and mapping data
    #Click Room
	Click Element Page  ${ROOMMANAGEMENT_SEARCH_BTN_ROOMA101_LOCATOR}

	#Click Room Detail
	Click Element Page  ${ROOMMANAGEMENT_SEARCH_LBL_ROOMDETAILS_LOCATOR}

    #Room detail
    Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_ROOMDETAIL_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_ROOMDETAIL_EN}

    #Income details
    Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_SEARCH_LBL_INCOMEDETAILS_LOCATOR}    ${ROOMMANAGEMENT_SEARCH_LBL_INCOMEDETAILS_EN}


	#Inquiry for verify DB  
    ${resultSearchRoomManagement}=    Run keyword And Continue On Failure    Request Verify DB Check Data Search Check Room Management    ${MYSQL_TYPE_CHECKROOMMANAGEMENT_SEARCH_DETAILROOM}    null    null    null    null    null   
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


	#capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${ROOMMANAGEMENT_VIEWROOMUSER_M7_1_1_14_000_SUCCESS_SCREENSHOT}

	################### Close Browser ###################
    Close Browser


