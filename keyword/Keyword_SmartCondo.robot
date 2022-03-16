*** Keywords ***
################################################################-- Change Language EN --################################################################
Change Language EN
    #Click Lang EN
	Click Element Page    ${MENU_LBL_LANGUAGE_EN_LOCATOR}

################################################################-- Click Setting Menu --################################################################
Click Setting Menu
    [Arguments]    ${menuNameTop_locator}    ${menuNameTop}    ${menuNameSide_locator}    ${menuNameSide}    ${NameHader_locator}    ${NameHader}    ${NamePage_locator}    ${NamePage}
	
    #Click Setting menu
	Click Element Page    ${MENU_ICON_SETTING_LOCATOR}
	
	#menuNameTop 
	Wait Until Contains Element Text Should Be    ${menuNameTop_locator}    ${menuNameTop} 
	
	#Click menuNameTop
	Click Element Page    ${menuNameTop_locator}
	Sleep    0.5s

    #NameHader
	Wait Until Contains Element Text Should Be    ${NameHader_locator}    ${NameHader} 

	#NamePage
	Wait Until Contains Element Text Should Be    ${NamePage_locator}    ${NamePage} 

	#menuNameSide tab
	Wait Until Contains Element Text Should Be    ${menuNameSide_locator}    ${menuNameSide} 
	
	#Click menuNameSide tab
	Click Element Page    ${menuNameSide_locator}
	
	#NameHader
	Wait Until Contains Element Text Should Be    ${NameHader_locator}    ${NameHader} 
	
	#NamePage
	Wait Until Contains Element Text Should Be    ${NamePage_locator}    ${NamePage} 
################################################################################################################################
################################################################-- Click Setting Menu Master --################################################################
Click Setting Menu Master
    [Arguments]    ${menuNameTop_locator}    ${menuNameTop}    ${menuNameSide_locator}    ${menuNameSide}    ${NameHader_locator}    ${NameHader}    ${NamePage_locator}    ${NamePage}
	
    #Click Setting menu
	Click Element Page    ${MENU_ICON_SETTING_LOCATOR}
	
	#menuNameTop 
	Wait Until Contains Element Text Should Be    ${menuNameTop_locator}    ${menuNameTop} 
	
	#Click menuNameTop
	Click Element Page    ${menuNameTop_locator}
	Sleep    0.5s

	#menuNameSide tab
	Wait Until Contains Element Text Should Be    ${menuNameSide_locator}    ${menuNameSide} 
	
	#Click menuNameSide tab
	Click Element Page    ${menuNameSide_locator}
	
	#NameHader
	Wait Until Contains Element Text Should Be    ${NameHader_locator}    ${NameHader} 
	
	#NamePage
	Wait Until Contains Element Text Should Be    ${NamePage_locator}    ${NamePage} 
################################################################################################################################
################################################################-- Click Main Menu SC User --################################################################
Click Main Menu SCUser
    [Arguments]    ${menuName_locator}    ${menuName}    ${homeSubnav_locator}    ${homeSubnav}    ${nameSubnav_locator}    ${nameSubnav}

	#menu
	Wait Until Contains Element Text Should Be    ${menuName_locator}    ${menuName} 
	
    #Click Main menu
	Click Element Page    ${menuName_locator}

	#Home Subnav
	Wait Until Contains Element Text Should Be    ${homeSubnav_locator}    ${homeSubnav} 
	#Menu Subnav
	Wait Until Contains Element Text Should Be    ${nameSubnav_locator}    ${nameSubnav} 
	
################################################################################################################################
################################################################-- Paging Replace --################################################################
Paging Replace
    [Arguments]    ${num}
	
	${num}=    Convert To String    ${num}
	${replacePageingTH}=    Replace String    ${DEFAULT_LBL_PAGING_1_TH}    [num]    ${num}
	${replacePageingEN}=    Replace String    ${DEFAULT_LBL_PAGING_1_EN}    [num]    ${num}
	Log To Console    [replacePageingTH] : ${replacePageingTH}
	Log To Console    [replacePageingEN] : ${replacePageingEN}
	[Return]    ${replacePageingTH}    ${replacePageingEN}

Paging Replace1
    [Arguments]    ${limit}    ${num}
	${pageTo}=    Evaluate    math.ceil(${num}/${limit})
	${num}=    Convert To String    ${num}
	${pageTo}=    Convert To String    ${pageTo}
	${replacePageingTH_Num}=    Replace String    ${DEFAULT_LBL_PAGING_1_TH1}    [num]    ${num}
	${replacePageingTH}=    Replace String    ${replacePageingTH_Num}    [pageTo]    ${pageTo}
	${replacePageingEN_Num}=    Replace String    ${DEFAULT_LBL_PAGING_1_EN1}    [num]    ${num}
	${replacePageingEN}=    Replace String    ${replacePageingEN_Num}    [pageTo]    ${pageTo}

	Log To Console    [replacePageingTH] : ${replacePageingTH}
	Log To Console    [replacePageingEN] : ${replacePageingEN}
	[Return]    ${replacePageingTH}    ${replacePageingEN}
################################################################################################################################
################################################################-- Value Bankname --################################################################
Value Bankname
    [Arguments]    ${bankId}

	${resultBanks}=    Request DB Data Banks All
	${dataBanks}=    Set Variable    ${resultBanks}[0]
	# Log To Console    [dataBanks] : ${dataBanks}
	${rowcountBanks}=    Set Variable    ${resultBanks}[1]
	Log To Console    [rowcount Banks] : ${rowcountBanks}

	# Banks
	FOR    ${j}    IN RANGE    ${rowcountBanks}
	    ${banknameTh}=    Set Variable If    '${dataBanks[${j}]['bankId']}'=='${bankId}'    ${dataBanks[${j}]['nameTh']}
		${banknameEn}=    Set Variable If    '${dataBanks[${j}]['bankId']}'=='${bankId}'    ${dataBanks[${j}]['nameEn']}
		Exit For Loop If    '${dataBanks[${j}]['bankId']}'=='${bankId}'

    # Exit For Loop
	END
	# Log To Console    [banknameTh] : ${banknameTh}
	[Return]    ${banknameTh}    ${banknameEn}
################################################################################################################################
################################################################-- Check Value Table --################################################################
Check Value Table
    [Arguments]    ${locator}    ${numCol}    ${numRow}    ${arrNumCol}    ${arrNumfield}    ${fieldArrDataTable}    ${valArrDataTable}
	FOR    ${k}    IN RANGE    ${numCol}
        ${row}=    Convert To String    ${numRow+1}
		${col}=    Convert To String    ${arrNumCol[${k}]}
        ${replaceLocator}=    Replace String    ${locator}    row    ${row}
        ${replaceLocator}=    Replace String    ${replaceLocator}    col    ${col}
		# Log To Console    [replaceLocator] : ${replaceLocator}
		# Log To Console    [fieldArrDataTable] : ${fieldArrDataTable}
		# Log To Console    [valArrDataTable] : ${valArrDataTable}
		# Log To Console    [valArrDataTable] : ${arrNumfield}
        # Log To Console    [valArrDataTables] : ${valArrDataTable[${numRow}]['${fieldArrDataTable[${arrNumfield[${k}]}]}']}
		
        Wait Until Contains Element Should Be Equal Get Text nbsp    ${replaceLocator}    ${valArrDataTable[${numRow}]['${fieldArrDataTable[${arrNumfield[${k}]}]}']}
		# Wait Until Contains Element Text Should Be    ${replaceLocator}    ${valArrDataTable[${numRow}]['${fieldArrDataTable[${arrNumfield[${k}]}]}']}
        
        # Log To Console    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[${numRow+1}]/td[${arrNumCol[${k}]}]${valArrDataTable[${numRow}]['${fieldArrDataTable[${arrNumfield[${k}]}]}']}
        # Wait Until Contains Element Text Should Be    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[${numRow+1}]/td[${arrNumCol[${k}]}]    ${valArrDataTable[${numRow}]['${fieldArrDataTable[${arrNumfield[${k}]}]}']}
    # Exit For Loop
	END
################################################################################################################################
################################################################-- SearchDdlProperty --################################################################
SearchDdlProperty
    [Arguments]    ${accountId}
	Log To Console    ${\n}=========== Start : [SearchDdlProperty] =============== 

	#Properties
	${selectProperties}=    Request DB Data Properties Where AccountId    ${accountId}
    ${dataResultProperties}=    Set Variable    ${selectProperties}[0]
	${rowcountProperties}=    Set Variable    ${selectProperties}[1]
	# Log To Console    [dataResultProperties] : ${dataResultProperties}

	#Building       
	${selectBuildings}=    Request DB Data Buildings Where AccountId    ${accountId}
    ${dataResultBuildings}=    Set Variable    ${selectBuildings}[0]
	${rowcountBuildings}=    Set Variable    ${selectBuildings}[1]
	# Log To Console    [rowcountBuildings] : ${rowcountBuildings}
	# Log To Console    [dataResultBuildings] : ${dataResultBuildings}

	# searchDdlProperty
    @{valArrDataSearchDdlProperty}=    Create List
	@{valArrDataProperty}=    Create List
	@{valArrDataBuilding}=    Create List

	FOR    ${i}    IN RANGE    ${rowcountProperties}
        # Log To Console    [rowcountProperties] : ${rowcountProperties}
        ${arrDataBuilding}=    Buildings Group    ${i}    ${rowcountBuildings}    ${dataResultProperties}    ${dataResultBuildings}
		Set To Dictionary	${dataResultProperties[${i}]}    buildingDetail=${arrDataBuilding}
		# Log To Console    [buildingDetail] : ${dataResultProperties[${i}]['buildingDetail']}
		${countbuildingDetail}=    Get Length    ${dataResultProperties[${i}]['buildingDetail']}
		# Log To Console    [countbuildingDetail] : ${countbuildingDetail}
		# ${removeTextResponseObjectDetail}=    Remove String    ${dataResultProperties[${i}]['buildingDetail']}    '    ${EMPTY}
		run keyword If    '${countbuildingDetail}'!='0'    Append To List    ${valArrDataSearchDdlProperty}    ${dataResultProperties[${i}]}   
	END
	${countValArrDataSearchDdlProperty}=    Get Length    ${valArrDataSearchDdlProperty}

    # Log To Console    [arrDataBuilding] : ${arrDataBuilding}
	# Log To Console    [dataResultProperties] : ${dataResultProperties}
	Log    [valArrDataSearchDdlProperty] : ${valArrDataSearchDdlProperty}
	# Log To Console    [valArrDataSearchDdlProperty] : ${valArrDataSearchDdlProperty}

	Log To Console    ${\n}=========== End : [SearchDdlProperty] =============== 
	[Return]    ${countValArrDataSearchDdlProperty}    ${valArrDataSearchDdlProperty}

Buildings Group
    [Arguments]    ${countProperties}    ${countBuildings}    ${dataResultProperties}    ${dataResultBuildings}
	@{valArrDataBuilding}=    Create List
	FOR    ${j}    IN RANGE    ${countBuildings}
	    ${data}=    Evaluate    {"buildingId":"${dataResultBuildings[${j}]['buildingId']}", "buildingNameTh": "${dataResultBuildings[${j}]['buildingNameTh']}", "buildingNameEn": "${dataResultBuildings[${j}]['buildingNameEn']}"}
	    run keyword If    '${dataResultProperties[${countProperties}]['propertyId']}'=='${dataResultBuildings[${j}]['propertyId']}'    Append To List    ${valArrDataBuilding}    ${data}
    # Exit For Loop
	END
	# Log To Console    [valArrDataBuilding] : ${valArrDataBuilding}
	[Return]    ${valArrDataBuilding}
################################################################################################################################
################################################################-- Check Active For Projects --################################################################
Check Active For Projects
    [Arguments]    ${locator_ChkProperties}    ${locator_LblProperties}    ${locator_ChkBuildings}    ${locator_LblBuildings}

	${SearchDdlProperty}=    SearchDdlProperty    ${accountId}
    # Log To Console    [SearchDdlProperty] : ${SearchDdlProperty}
	${countSearchDdlProperty}=    Set Variable    ${SearchDdlProperty}[0]
	${valArrDataPropertyAndBuilding}=    Set Variable    ${SearchDdlProperty}[1]
    FOR    ${i}    IN RANGE    ${countSearchDdlProperty}
	  
		# Log To Console    [SearchDdlProperty] : ${locator_ChkProperties}${i+1}
        #Property
		# Wait Until Contains Element Should Be Visible    ${locator_ChkProperties}${i+1}
		# Wait Until Contains Element Should Be Visible    //*[@id="chkPropertyNameCreateEdit${i+1}"]
        Wait Until Contains Element Text Should Be    ${locator_LblProperties}${i+1}    ${valArrDataPropertyAndBuilding[${i}]['propertyNameTh']} 
        #์Building
		${countBuildingDetail}=    Get Length    ${valArrDataPropertyAndBuilding[${i}]['buildingDetail']}
		${dataBuildingDetail}=    Set Variable    ${valArrDataPropertyAndBuilding[${i}]['buildingDetail']}
		Check Buildings    ${locator_ChkBuildings}    ${locator_LblBuildings}    ${countBuildingDetail}    ${valArrDataPropertyAndBuilding[${i}]['buildingDetail']}
    END
 
Check Buildings
    [Arguments]    ${locator_ChkBuildings}    ${locator_LblBuildings}    ${countBuildingDetail}    ${value_BuildingDetail}
	FOR    ${j}    IN RANGE    ${countBuildingDetail}
	  
        #Building
	    Log To Console    ${value_BuildingDetail[${j}]['buildingId']}
		# Log To Console    ${value_BuildingDetail[${j}]['buildingId']}
		# Log To Console    ${value_BuildingDetail[${j}]['buildingNameTh']}
		# Wait Until Contains Element Should Be Visible    ${locator_ChkBuildings}${j+1}
        Wait Until Contains Element Text Should Be    ${locator_LblBuildings}${value_BuildingDetail[${j}]['buildingId']}    ${value_BuildingDetail[${j}]['buildingNameTh']}
	END
################################################################################################################################
################################################################-- Check For CheckAsset --################################################################
Check For CheckAsset
    [Arguments]    ${locator_list}    ${filedname}    ${locator_status_ChkReceived}    ${locator_status_ChkReceived_check}    ${chkReceived}    ${locator_status_ChkNotReceived}    ${locator_status_ChkNotReceived_check}    ${chkNotReceived}    ${locator_remark}

    ${select}=    Request DB Data CheckAsset
    ${data}=    Set Variable    ${select}[0]
	${rowcount}=    Set Variable    ${select}[1]

    FOR    ${i}    IN RANGE    ${rowcount}
	    ${index}=    Convert To String    ${i+1}
	    ${list}=    Replace String    ${locator_list}    [index]    ${index}
		# Received
	    ${replace_status_ChkReceived}=    Replace String    ${locator_status_ChkReceived}    index    ${index}
		${setStatusChkReceived}=    Set Variable    ${replace_status_ChkReceived}
		${status_ChkReceived_check}=    Replace String    ${locator_status_ChkReceived_check}    [index]    ${index}
		${setStatusChkReceivedCheck}=    Set Variable    ${status_ChkReceived_check}
		# NotReceived
		${replace_status_ChkNotReceived}=    Replace String    ${locator_status_ChkNotReceived}    index    ${index}
		${setStatusChkNotReceived}=    Set Variable    ${replace_status_ChkNotReceived}
		${status_ChkNotReceived_check}=    Replace String    ${locator_status_ChkNotReceived_check}    [index]    ${index}
		${setStatusChkNotReceivedCheck}=    Set Variable    ${status_ChkNotReceived_check}
	    
		${remark}=    Replace String    ${locator_remark}    [index]    ${index}
        # Log To Console    ${status_ChkReceived}
		Log To Console    ${status_ChkReceived_check}
		${get}=    Get Text String    ${status_ChkReceived_check}
		Log To Console    getgetget${get}

		# Log To Console    ${status_ChkNotReceived}
		Log To Console    ${status_ChkNotReceived_check}
		# list
	    Wait Until Contains Element Text Should Be    ${list}    ${data[${i}]['${filedname}']} 
		# Received
		Wait Until Contains Element Text Should Be    ${setStatusChkReceived}    ${chkReceived}
		Wait Should Contain Get Element Attribute    ${setStatusChkReceivedCheck}    ${ATTRIBUTE_ARIACHECKED}    ${TRUE_LOWWER}
		# NotReceived
		Wait Until Contains Element Text Should Be    ${setStatusChkNotReceived}    ${chkNotReceived}
		Wait Should Contain Get Element Attribute    ${setStatusChkNotReceivedCheck}    ${ATTRIBUTE_ARIACHECKED}    ${FALSE_LOWWER}
        # remark
		Wait Until Contains Element Should Be Visible    ${remark}
	END
################################################################-- Check For CheckRoomAsset Edit Owner --################################################################
Check For CheckRoomAsset Edit Owner
    [Arguments]    ${locator_list}    ${filedname}    ${locator_status_ChkReceived}    ${locator_status_ChkReceived_check}    ${chkReceived}    ${locator_status_ChkNotReceived}    ${locator_status_ChkNotReceived_check}    ${chkNotReceived}    ${locator_remark}    ${roomNo}

    # ${roomId}=    Set Variable    8000
    # ${roomId}=    Set Variable    7987
    # ${roomTransferId}=    Set Variable    230
    # ================ Verify DB [roomId] ================ 
    ${roomId}=    Request DB Data Rooms For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomNo}
    # ================ Verify DB [roomTransferId] ================    
    ${roomTransferId}=    Request DB Data Room Tranfer For id    ${PROPERTYE_ID_VALUE}    ${BUILDING_ID_VALUE}    ${roomId}

    ${select}=    Request DB Data CheckRoomAsset Edit Owner    ${roomTransferId}
    ${data}=    Set Variable    ${select}[0]
	${rowcount}=    Set Variable    ${select}[1]

    FOR    ${i}    IN RANGE    ${rowcount}
	    ${index}=    Convert To String    ${i+1}
	    ${list}=    Replace String    ${locator_list}    [index]    ${index}
		# Received
	    ${replace_status_ChkReceived}=    Replace String    ${locator_status_ChkReceived}    index    ${index}
		${setStatusChkReceived}=    Set Variable    ${replace_status_ChkReceived}
		${status_ChkReceived_check}=    Replace String    ${locator_status_ChkReceived_check}    [index]    ${index}
		${setStatusChkReceivedCheck}=    Set Variable    ${status_ChkReceived_check}
		# NotReceived
		${replace_status_ChkNotReceived}=    Replace String    ${locator_status_ChkNotReceived}    index    ${index}
		${setStatusChkNotReceived}=    Set Variable    ${replace_status_ChkNotReceived}
		${status_ChkNotReceived_check}=    Replace String    ${locator_status_ChkNotReceived_check}    [index]    ${index}
		${setStatusChkNotReceivedCheck}=    Set Variable    ${status_ChkNotReceived_check}
	    
		${remark}=    Replace String    ${locator_remark}    [index]    ${index}
        # Log To Console    ${status_ChkReceived}
		Log To Console    ${status_ChkReceived_check}
		${get}=    Get Text String    ${status_ChkReceived_check}
		Log To Console    getgetget${get}

		# Log To Console    ${status_ChkNotReceived}
		Log To Console    ${status_ChkNotReceived_check}
		# list
	    Wait Until Contains Element Text Should Be    ${list}    ${data[${i}]['${filedname}']} 
		# Received
		Wait Until Contains Element Text Should Be    ${setStatusChkReceived}    ${chkReceived}
		Wait Should Contain Get Element Attribute    ${setStatusChkReceivedCheck}    ${ATTRIBUTE_ARIACHECKED}    ${TRUE_LOWWER}
		# NotReceived
		Wait Until Contains Element Text Should Be    ${setStatusChkNotReceived}    ${chkNotReceived}
		Wait Should Contain Get Element Attribute    ${setStatusChkNotReceivedCheck}    ${ATTRIBUTE_ARIACHECKED}    ${FALSE_LOWWER}
        # remark
		Wait Until Contains Element Should Be Visible    ${remark}
	END
################################################################-- Click Delete --################################################################
Click Delete Data TH
    [Arguments]    ${locator_btnDelete}    ${value_delete}
    #Click delete button		
    Click Delete and Check Text    ${locator_btnDelete}    ${ALERT_TITLE_DELETE_TH}    ${ALERT_CONTENT_DELETE1_TH} ${value_delete} ${ALERT_CONTENT_DELETE2_TH}    ${ALERT_BTN_CONFIRM_TH}    ${ALERT_BTN_CANCEL_TH}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

Click Delete Data EN
    [Arguments]    ${locator_btnDelete}    ${value_delete}
    #Click delete button		
    Click Delete and Check Text    ${locator_btnDelete}    ${ALERT_TITLE_DELETE_EN}    ${ALERT_CONTENT_DELETE1_EN} ${value_delete} ${ALERT_CONTENT_DELETE2_EN}    ${ALERT_BTN_CONFIRM_EN}    ${ALERT_BTN_CANCEL_EN}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}


################################################################################################################################
################################################################-- Check Popup Delete --################################################################
Check Popup Delete TH
    [Arguments]    ${locator_btnDelete}    ${value_delete}
    #Click delete button		
    Check Popup Delete    ${locator_btnDelete}    ${ALERT_TITLE_DELETE_TH}    ${ALERT_CONTENT_DELETE1_TH} ${value_delete} ${ALERT_CONTENT_DELETE2_TH}    ${ALERT_BTN_CONFIRM_TH}    ${ALERT_BTN_CANCEL_TH}

Check Popup Delete EN
    [Arguments]    ${locator_btnDelete}    ${value_delete}
    #Click delete button		
    Check Popup Delete    ${locator_btnDelete}    ${ALERT_TITLE_DELETE_EN}    ${ALERT_CONTENT_DELETE1_EN} ${value_delete} ${ALERT_CONTENT_DELETE2_EN}    ${ALERT_BTN_CONFIRM_EN}    ${ALERT_BTN_CANCEL_EN}

Check Popup Delete Confirm EN
    [Arguments]    ${locator_btnDelete}    ${value_delete}
    #Click delete button		
    Check Popup Delete    ${locator_btnDelete}    ${ALERT_TITLE_DELETE_CONFIRM_EN}    ${ALERT_CONTENT_DELETE1_EN} ${value_delete} ${ALERT_CONTENT_DELETE2_EN}    ${ALERT_BTN_CONFIRM_EN}    ${ALERT_BTN_CANCEL_EN}

################################################################################################################################
################################################################-- Check Popup Enable --################################################################
Check Popup Enable TH
    [Arguments]    ${locator_btnEnable}    ${value_Enable}
    #Click Enable button		
    Check Popup Enable and Disable    ${locator_btnEnable}    ${ALERT_TITLE_ENABLE_TH}    ${ALERT_CONTENT_ENABLE1_TH} ${value_Enable} ${ALERT_CONTENT_ENABLE2_TH}    ${ALERT_BTN_CONFIRM_TH}    ${ALERT_BTN_CANCEL_TH}

Check Popup Enable EN
    [Arguments]    ${locator_btnEnable}    ${value_Enable}
    #Click Enable button		
    Check Popup Enable and Disable    ${locator_btnEnable}    ${ALERT_TITLE_ENABLE_EN}    ${ALERT_CONTENT_ENABLE1_EN} ${value_Enable}${ALERT_CONTENT_ENABLE2_EN}    ${ALERT_BTN_CONFIRM_EN}    ${ALERT_BTN_CANCEL_EN}

################################################################################################################################

################################################################-- Check Popup Disable --################################################################
Check Popup Disable TH
    [Arguments]    ${locator_btnDisable}    ${value_Disable}
    #Click Disable button		
    Check Popup Enable and Disable    ${locator_btnDisable}    ${ALERT_TITLE_DISABLE_TH}    ${ALERT_CONTENT_DISABLE1_TH} ${value_Disable} ${ALERT_CONTENT_DISABLE2_TH}    ${ALERT_BTN_CONFIRM_TH}    ${ALERT_BTN_CANCEL_TH}

Check Popup Disable EN
    [Arguments]    ${locator_btnDisable}    ${value_Disable}
    #Click Disable button		
    Check Popup Enable and Disable    ${locator_btnDisable}    ${ALERT_TITLE_DISABLE_EN}    ${ALERT_CONTENT_DISABLE1_EN} ${value_Disable} ${ALERT_CONTENT_DISABLE2_EN}    ${ALERT_BTN_CONFIRM_EN}    ${ALERT_BTN_CANCEL_EN}

################################################################################################################################
################################################################-- Click Enable --################################################################
Click Enable TH
    [Arguments]    ${locator_btnEnable}    ${value_Enable}
    #Click Enable button		
    Click Enable and Disable and Check Text    ${locator_btnEnable}    ${ALERT_TITLE_ENABLE_TH}    ${ALERT_CONTENT_ENABLE1_TH} ${value_Enable} ${ALERT_CONTENT_ENABLE2_TH}    ${ALERT_BTN_CONFIRM_TH}    ${ALERT_BTN_CANCEL_TH}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

Click Enable EN
    [Arguments]    ${locator_btnEnable}    ${value_Enable}
    #Click Enable button		
   Click Enable and Disable and Check Text    ${locator_btnEnable}    ${ALERT_TITLE_ENABLE_EN}    ${ALERT_CONTENT_ENABLE1_EN} ${value_Enable}${ALERT_CONTENT_ENABLE2_EN}    ${ALERT_BTN_CONFIRM_EN}    ${ALERT_BTN_CANCEL_EN}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

################################################################################################################################
################################################################-- Click Disable --################################################################
Click Disable TH
    [Arguments]    ${locator_btnDisable}    ${value_Disable}
    #Click Enable button		
    Click Enable and Disable and Check Text    ${locator_btnDisable}    ${ALERT_TITLE_DISABLE_TH}    ${ALERT_CONTENT_DISABLE1_TH} ${value_Disable} ${ALERT_CONTENT_DISABLE2_TH}    ${ALERT_BTN_CONFIRM_TH}    ${ALERT_BTN_CANCEL_TH}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

Click Disable EN
    [Arguments]    ${locator_btnDisable}    ${value_Disable}
    #Click Disable button		
   Click Enable and Disable and Check Text    ${locator_btnDisable}    ${ALERT_TITLE_DISABLE_EN}    ${ALERT_CONTENT_DISABLE1_EN} ${value_Disable} ${ALERT_CONTENT_DISABLE2_EN}    ${ALERT_BTN_CONFIRM_EN}    ${ALERT_BTN_CANCEL_EN}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

################################################################################################################################
################################################################-- Check Popup Confirm Delete --################################################################
Check Popup Confirm Delete TH
    [Arguments]    ${locator_btnDelete}    ${value_delete}
    #Click delete button		
    Check Popup Delete    ${locator_btnDelete}    ${ALERT_TITLE_CONFRIM_DELETE_TH}    ${ALERT_CONTENT_DELETE1_TH} ${value_delete} ${ALERT_CONTENT_DELETE2_TH}    ${ALERT_BTN_CONFIRM_TH}    ${ALERT_BTN_CANCEL_TH}

Check Popup Confirm Delete EN
    [Arguments]    ${locator_btnDelete}    ${value_delete}
    #Click delete button		
    Check Popup Delete    ${locator_btnDelete}    ${ALERT_TITLE_CONFRIM_DELETE_EN}    ${ALERT_CONTENT_DELETE1_EN} ${value_delete} ${ALERT_CONTENT_DELETE2_EN}    ${ALERT_BTN_CONFIRM_EN}    ${ALERT_BTN_CANCEL_EN}


Click building
	#Click Setting menu
	Click Element Page    ${PROPERTYE_LOCATOR}


################################################################################################################################
################################################################-- Check Popup ConfirmSave --################################################################
Check Popup ConfirmSave TH
    [Arguments]    ${locator_btnDelete}    ${value_delete}
    #Click delete button		
    Check Popup ConfirmSave    ${locator_btnDelete}    ${ALERT_TITLE_CONFIRMSAVE_TH}    ${ALERT_CONTENT_CONFIRMSAVE1_TH} ${value_delete} ${ALERT_CONTENT_CONFIRMSAVE2_TH}    ${ALERT_BTN_CONFIRM_TH}    ${ALERT_BTN_CANCEL_TH}

Check Popup ConfirmSave EN
    [Arguments]    ${locator_btnDelete}    ${value_delete}
    #Click delete button		
    Check Popup ConfirmSave    ${locator_btnDelete}    ${ALERT_TITLE_CONFIRMSAVE_EN}    ${ALERT_CONTENT_CONFIRMSAVE1_EN} ${value_delete} ${ALERT_CONTENT_CONFIRMSAVE2_EN}    ${ALERT_BTN_CONFIRM_EN}    ${ALERT_BTN_CANCEL_EN}


