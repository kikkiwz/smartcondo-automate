*** Keywords ***
################################################################-- Request DB Data Banks All --################################################################
Request DB Data Banks All
    
    Log To Console    ${\n}=========== Start DB : [banks] =============== 
    # ${DB_SELECTSTATEMENT_BANKS}    SELECT * FROM banks

    #[(), 0]
    # queryResults,rowCount
    @{resultBanks}=    Start Connect To MySql Query All List    ${DB_SELECTSTATEMENT_BANKS}    ${DB_SELECTSTATEMENT_BANKS}
    # Log To Console    [banks] Request DB Data Banks All : ${resultBanks}
    ${dataResultBanks}=    Set Variable    ${resultBanks}[0]
    # Log To Console    [result : banks] : ${dataResultBanks}
    ${rowCountBanks}=    Set Variable    ${resultBanks}[1]
    Log To Console    [rowCount : banks] : ${rowCountBanks}

    # Banks
    @{valArrDataBanks}=    Create List
    @{valArrDataBanksNameTh}=    Create List
    @{valArrDataBanksNameEn}=    Create List
    FOR    ${i}    IN RANGE    ${rowCountBanks}

        ${data}=    Evaluate    {"bankId":"${dataResultBanks}[${i}][0]", "nameTh": "${dataResultBanks}[${i}][1]", "nameEn": "${dataResultBanks}[${i}][2]"}
        Append To List    ${valArrDataBanks}    ${data}        #Add data to array set at valArrData
        Append To List    ${valArrDataBanksNameTh}    ${dataResultBanks}[${i}][1]        #Add data to array set at valArrData
        Append To List    ${valArrDataBanksNameEn}    ${dataResultBanks}[${i}][2]        #Add data to array set at valArrData
    # Exit For Loop
    END
    #menu
    # Log To Console    [Banks] : ${valArrDataBanks}
    Set Global Variable    ${Banks}    ${valArrDataBanks}
    Log    Banks All : ${Banks}
    
    Log To Console    ${\n}=========== End DB : [banks] =============== 
    [Return]    ${valArrDataBanks}    ${rowCountBanks}    ${valArrDataBanksNameTh}    ${valArrDataBanksNameEn}

################################################################-- Request DB Data Properties All --################################################################
Request DB Data Properties All
    
    Log To Console    ${\n}=========== Start DB : [properties] =============== 
    #${DB_SELECTSTATEMENT_PROPERTIES}    SELECT * FROM properties

    #[(), 0]
    # queryResults,rowCount
    @{resultProperties}=    Start Connect To MySql Query All List    ${DB_SELECTSTATEMENT_PROPERTIES}    ${DB_SELECTSTATEMENT_PROPERTIES}
    # Log To Console    [properties] Request DB Data Properties All : ${resultProperties}
    ${dataResultProperties}=    Set Variable    ${resultProperties}[0]
    Log To Console    [result : properties] : ${dataResultProperties}
    ${rowCountProperties}=    Set Variable    ${resultProperties}[1]
    Log To Console    [rowCount : properties] : ${rowCountProperties}

    # Properties
    @{valArrDataProperties}=    Create List
    @{valArrDataPropertyNameTh}=    Create List
    @{valArrDataPropertyNameEn}=    Create List
    FOR    ${i}    IN RANGE    ${rowCountProperties}

        ${data}=    Evaluate    {"propertyId":"${dataResultProperties}[${i}][0]", "propertyNameTh": "${dataResultProperties}[${i}][1]", "propertyNameEn": "${dataResultProperties}[${i}][2]", "branchNo": "${dataResultProperties}[${i}][3]"}
        Append To List    ${valArrDataProperties}    ${data}        #Add data to array set at valArrData
        Append To List    ${valArrDataPropertyNameTh}    ${dataResultProperties}[${i}][1]        #Add data to array set at valArrData
        Append To List    ${valArrDataPropertyNameEn}    ${dataResultProperties}[${i}][2]        #Add data to array set at valArrData
    # Exit For Loop
    END
    #menu
    Log To Console    [properties] : ${valArrDataProperties}
    Set Global Variable    ${Properties}    ${valArrDataProperties}
    Log    Properties All : ${Properties}
    
    Log To Console    ${\n}=========== End DB : [properties] =============== 
    [Return]    ${valArrDataProperties}    ${rowCountproperties}    ${valArrDataPropertyNameTh}    ${valArrDataPropertyNameEn}

################################################################-- Request DB Data Properties Where AccountId --################################################################
Request DB Data Properties Where AccountId
    [Arguments]    ${accountId}
    
    Log To Console    ${\n}=========== Start DB : [properties] =============== 
    # ${DB_SELECTSTATEMENT_PROPERTIES_WHEREACCOUNTID}    SELECT * FROM properties WHERE account_id = [accountId]

    ${accountId}=    Convert To String    ${accountId}
    ${selectStatementProperties}=    Replace String    ${DB_SELECTSTATEMENT_PROPERTIES_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console    [properties : resultQuery] : ${selectStatementProperties}

    #[(), 0]
    # queryResults,rowCount
    @{resultProperties}=    Start Connect To MySql Query All List    ${selectStatementProperties}    ${selectStatementProperties}
    # Log To Console    [properties]  : Request DB Data Properties Where AccountId ${resultProperties}
    ${dataResultProperties}=    Set Variable    ${resultProperties}[0]
    Log To Console    [result : properties] : ${dataResultProperties}
    ${rowCountProperties}=    Set Variable    ${resultProperties}[1]
    Log To Console    [rowCount : properties] : ${rowCountProperties}

    # Properties
    @{valArrDataProperties}=    Create List
    @{valArrDataPropertyNameTh}=    Create List
    @{valArrDataPropertyNameEn}=    Create List
    FOR    ${i}    IN RANGE    ${rowCountProperties}

        ${data}=    Evaluate    {"propertyId":"${dataResultProperties}[${i}][0]", "propertyNameTh": "${dataResultProperties}[${i}][1]", "propertyNameEn": "${dataResultProperties}[${i}][2]", "branchNo": "${dataResultProperties}[${i}][3]"}
        Append To List    ${valArrDataProperties}    ${data}        #Add data to array set at valArrData
        Append To List    ${valArrDataPropertyNameTh}    ${dataResultProperties}[${i}][1]        #Add data to array set at valArrData
        Append To List    ${valArrDataPropertyNameEn}    ${dataResultProperties}[${i}][2]        #Add data to array set at valArrData
    # Exit For Loop
    END
    #menu
    Log To Console    [properties] : ${valArrDataProperties}
    Set Global Variable    ${Properties}    ${valArrDataProperties}
    Log    Properties Where AccountId : ${Properties}

    Log To Console    ${\n}=========== End DB : [properties] =============== 
    [Return]    ${valArrDataProperties}    ${rowCountproperties}    ${valArrDataPropertyNameTh}    ${valArrDataPropertyNameEn}

################################################################-- Request DB Data Buildings All --################################################################
Request DB Data Buildings All
    
    Log To Console    ${\n}=========== Start DB : [buildings] =============== 
    #${DB_SELECTSTATEMENT_BUILDINGS}    SELECT * FROM buildings

    #[(), 0]
    # queryResults,rowCount
    @{resultBuildings}=    Start Connect To MySql Query All List    ${DB_SELECTSTATEMENT_BUILDINGS}    ${DB_SELECTSTATEMENT_BUILDINGS}
    # Log To Console    [buildings] Request DB Data Buildings All : ${resultBuildings}
    ${dataResultBuildings}=    Set Variable    ${resultBuildings}[0]
    # Log To Console    [result : buildings] : ${dataResultBuildings}
    ${rowCountBuildings}=    Set Variable    ${resultBuildings}[1]
    Log To Console    [rowCount : buildings] : ${rowCountBuildings}

    # Buildings
    @{valArrDataBuildings}=    Create List
    @{valArrDataBuildingNameTh}=    Create List
    @{valArrDataBuildingNameEn}=    Create List
    FOR    ${i}    IN RANGE    ${rowCountBuildings}

        ${data}=    Evaluate    {"buildingId":"${dataResultBuildings}[${i}][0]", "propertyId":"${dataResultBuildings}[${i}][1]", "buildingNameTh": "${dataResultBuildings}[${i}][2]", "buildingNameEn": "${dataResultBuildings}[${i}][3]"}
        Append To List    ${valArrDataBuildings}    ${data}        #Add data to array set at valArrData
        Append To List    ${valArrDataBuildingNameTh}    ${dataResultBuildings}[${i}][1]        #Add data to array set at valArrData
        Append To List    ${valArrDataBuildingNameEn}    ${dataResultBuildings}[${i}][2]        #Add data to array set at valArrData
    # Exit For Loop
    END
    #menu
    # Log To Console    [buildings] : ${valArrDataBuildings}
    Set Global Variable    ${Buildings}    ${valArrDataBuildings}
    Log    Buildings All : ${Buildings}

    Log To Console    ${\n}=========== End DB : [buildings] =============== 
    [Return]    ${valArrDataBuildings}    ${rowCountBuildings}    ${valArrDataBuildingNameTh}    ${valArrDataBuildingNameEn}

################################################################-- Request DB Data Buildings Where AccountId --################################################################
Request DB Data Buildings Where AccountId
    [Arguments]    ${accountId}
    
    Log To Console    ${\n}=========== Start DB : [buildings] =============== 
    # ${DB_SELECTSTATEMENT_BUILDINGS_WHEREACCOUNTID}    SELECT * FROM buildings WHERE account_id = [accountId]

    ${accountId}=    Convert To String    ${accountId}
    ${selectStatementBuildings}=    Replace String    ${DB_SELECTSTATEMENT_BUILDINGS_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console    [buildings : resultQuery] : ${selectStatementBuildings}

    #[(), 0]
    # queryResults,rowCount
    @{resultBuildings}=    Start Connect To MySql Query All List    ${selectStatementBuildings}    ${selectStatementBuildings}
    # Log To Console    [buildings] Request DB Data Buildings Where AccountId : ${resultBuildings}
    ${dataResultBuildings}=    Set Variable    ${resultBuildings}[0]
    # Log To Console    [result : buildings] : ${dataResultBuildings}
    ${rowCountBuildings}=    Set Variable    ${resultBuildings}[1]
    Log To Console    [rowCount : buildings] : ${rowCountBuildings}

    # Buildings
    @{valArrDataBuildings}=    Create List
    @{valArrDataBuildingNameTh}=    Create List
    @{valArrDataBuildingNameEn}=    Create List
    FOR    ${i}    IN RANGE    ${rowCountBuildings}

        ${data}=    Evaluate    {"buildingId":"${dataResultBuildings}[${i}][0]", "propertyId":"${dataResultBuildings}[${i}][1]", "buildingNameTh": "${dataResultBuildings}[${i}][2]", "buildingNameEn": "${dataResultBuildings}[${i}][3]"}
        Append To List    ${valArrDataBuildings}    ${data}        #Add data to array set at valArrData
        Append To List    ${valArrDataBuildingNameTh}    ${dataResultBuildings}[${i}][1]        #Add data to array set at valArrData
        Append To List    ${valArrDataBuildingNameEn}    ${dataResultBuildings}[${i}][2]        #Add data to array set at valArrData
    # Exit For Loop
    END
    #menu
    # Log To Console    [buildings] : ${valArrDataBuildings}
    Set Global Variable    ${Buildings}    ${valArrDataBuildings}
    Log    Buildings Where AccountId : ${Buildings}
    
    Log To Console    ${\n}=========== End DB : [buildings] =============== 
    [Return]    ${valArrDataBuildings}    ${rowCountBuildings}    ${valArrDataBuildingNameTh}    ${valArrDataBuildingNameEn}

################################################################-- Request DB Data Titles All --################################################################
Request DB Data Titles All
    
    Log To Console    ${\n}=========== Start DB : [Titles] =============== 
    #${DB_SELECTSTATEMENT_TITLES}    SELECT * FROM title

    #[(), 0]
    # queryResults,rowCount,valArrDataTitlesnameTh,valArrDataTitlesnameEn
    @{resultTitles}=    Start Connect To MySql Query All List    ${DB_SELECTSTATEMENT_TITLES}    ${DB_SELECTSTATEMENT_TITLES}
    # Log To Console    [prefix] Request DB Data Titles All : ${resultTitles}
    ${dataResultTitles}=    Set Variable    ${resultTitles}[0]
    # Log To Console    [result : prefix] : ${dataResultTitles}
    ${rowCountTitles}=    Set Variable    ${resultTitles}[1]
    Log To Console    [rowCount : prefix] : ${rowCountTitles}

    # Titles
    @{valArrDataTitles}=    Create List
    @{valArrDataTitlesNameTh}=    Create List
    @{valArrDataTitlesNameEn}=    Create List
    FOR    ${i}    IN RANGE    ${rowCountTitles}

        ${data}=    Evaluate    {"Id":"${dataResultTitles}[${i}][0]", "nameTh": "${dataResultTitles}[${i}][1]", "nameEn": "${dataResultTitles}[${i}][2]"}
        Append To List    ${valArrDataTitles}    ${data}        #Add data to array set at valArrData
        Append To List    ${valArrDataTitlesNameTh}    ${dataResultTitles}[${i}][1]        #Add data to array set at valArrData
        Append To List    ${valArrDataTitlesNameEn}    ${dataResultTitles}[${i}][2]        #Add data to array set at valArrData
    # Exit For Loop
    END
    #menu
    # Log To Console    [Titles] : ${valArrDataTitles}
    Set Global Variable    ${Titles}    ${valArrDataTitles}
    Log    Titles All : ${valArrDataTitles}
    
    Log To Console    ${\n}=========== End DB : [Titles] =============== 
    [Return]    ${valArrDataTitles}    ${rowCountTitles}    ${valArrDataTitlesNameTh}    ${valArrDataTitlesNameEn}

################################################################-- Request DB Data Group Menu --################################################################
Request DB Data Group Menu
    
    Log To Console    ${\n}=========== Start DB : [group_menu] =============== 
    # ${DB_SELECTSTATEMENT_GROUPMENU}    SELECT * FROM group_menu

    #[(), 0]
    # queryResults,rowCount
    @{resultGroupMenu}=    Start Connect To MySql Query All List    ${DB_SELECTSTATEMENT_GROUPMENU}    ${DB_SELECTSTATEMENT_GROUPMENU}
    # Log To Console    [group_menu] Request DB Data Group Menu : ${resultGroupMenu}
    ${dataResultGroupMenu}=    Set Variable    ${resultGroupMenu}[0]
    # Log To Console    [result : group_menu] : ${dataResultGroupMenu}
    ${rowCountGroupMenu}=    Set Variable    ${resultGroupMenu}[1]
    Log To Console    [rowCount : group_menu] : ${rowCountGroupMenu}

    # group_menu
    @{valArrDataGroupMenu}=    Create List
    FOR    ${i}    IN RANGE    ${rowCountGroupMenu}
        ${data}=    Evaluate    {"id":"${dataResultGroupMenu}[${i}][0]", "name": "${dataResultGroupMenu}[${i}][1]", "menu_id": "${dataResultGroupMenu}[${i}][2]"}
        Append To List    ${valArrDataGroupMenu}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    #menu
    # Log To Console    [group_menu] : ${valArrDataGroupMenu}
    Set Global Variable    ${GroupMenu}    ${valArrDataGroupMenu}
    Log    GroupMenu : ${GroupMenu}
    
    Log To Console    ${\n}=========== End DB : [group_menu] =============== 
    [Return]    ${valArrDataGroupMenu}    ${rowCountGroupMenu}

################################################################-- Request DB Data Menu --################################################################
Request DB Data Menu
    
    Log To Console    ${\n}=========== Start DB : [menu] =============== 
    # ${DB_SELECTSTATEMENT_MENU}    SELECT * FROM menu

    #[(), 0]
    # queryResults,rowCount
    @{resultMenu}=    Start Connect To MySql Query All List    ${DB_SELECTSTATEMENT_MENU}    ${DB_SELECTSTATEMENT_MENU}
    # Log To Console    [menu] Request DB Data Menu : ${resultMenu}
    ${dataResultMenu}=    Set Variable    ${resultMenu}[0]
    # Log To Console    [result : menu] : ${dataResultMenu}
    ${rowCountMenu}=    Set Variable    ${resultMenu}[1]
    Log To Console    [rowCount : menu] : ${rowCountMenu}

    # menu
    @{valArrDataMenu}=    Create List
    FOR    ${i}    IN RANGE    ${rowCountMenu}
        ${data}=    Evaluate    {"id":"${dataResultMenu}[${i}][0]", "menuName": "${dataResultMenu}[${i}][1]"}
        Append To List    ${valArrDataMenu}    ${data}        #Add data to array set at valArrData
    # Exit For Loop
    END
    #menu
    # Log To Console    [menu] : ${valArrDataMenu}
    Set Global Variable    ${menu}    ${valArrDataMenu}
    Log    menu : ${menu}
    
    Log To Console    ${\n}=========== End DB : [menu] =============== 
    [Return]    ${valArrDataMenu}    ${rowCountMenu}

################################################################-- Request DB Data GroupType --################################################################
Request DB Data GroupType
    
    Log To Console    ${\n}=========== Start DB : [group_type] =============== 
    # ${DB_SELECTSTATEMENT_GROUPTYPE}    SELECT * FROM group_type

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${DB_SELECTSTATEMENT_GROUPTYPE}    ${DB_SELECTSTATEMENT_GROUPTYPE}
    # Log To Console    [group_type]  : Request DB Data GroupType ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : group_type] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : group_type] : ${rowCount}

    # Properties
    @{valArrData}=    Create List
    @{valArrDataNameTh}=    Create List
    @{valArrDataNameEn}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}

        ${data}=    Evaluate    {"groupTypeId":"${dataResult}[${i}][0]", "nameTh": "${dataResult}[${i}][1]", "nameEn": "${dataResult}[${i}][2]"}
        Append To List    ${valArrData}    ${data}        #Add data to array set at valArrData
        Append To List    ${valArrDataNameTh}    ${dataResult}[${i}][1]        #Add data to array set at valArrData
        Append To List    ${valArrDataNameEn}    ${dataResult}[${i}][2]        #Add data to array set at valArrData
    # Exit For Loop
    END
    #menu
    Log To Console    [group_type] : ${valArrData}
    Set Global Variable    ${groupTypeId}    ${valArrData}
    Log    GroupType : ${groupTypeId}

    Log To Console    ${\n}=========== End DB : [group_type] =============== 
    [Return]    ${valArrData}    ${rowCount}    ${valArrDataNameTh}    ${valArrDataNameEn}

################################################################-- Request DB Data mulct_method --################################################################
Request DB Data MulctMethod
    
    Log To Console    ${\n}=========== Start DB : [mulct_method] =============== 
    #${DB_SELECTSTATEMENT_MULCTMETHOD_WHEREACCOUNTID}    SELECT * FROM mulct_method WHERE account_Id = [accountId] and deleted_at IS null
    
    ${accountId}=    Convert To String    ${accountId}
    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_MULCTMETHOD_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console    [mulct_method : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [mulct_method]  : Request DB Data MulctMethod ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : mulct_method] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : mulct_method] : ${rowCount}

    # Properties
    @{valArrData}=    Create List
    @{valArrDataNameTh}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}

        ${data}=    Evaluate    {"mulctMethodId":"${dataResult}[${i}][0]", "adjustmentRateType": "${dataResult}[${i}][2]", "nameTh": "${dataResult}[${i}][6]", "remark": "${dataResult}[${i}][7]", "status": "${dataResult}[${i}][8]", "unitFromTo": "${dataResult}[${i}][5]"}
        Append To List    ${valArrData}    ${data}        #Add data to array set at valArrData
        Append To List    ${valArrDataNameTh}    ${dataResult}[${i}][6]        #Add data to array set at valArrData
    # Exit For Loop
    END
    #menu
    Log To Console    [mulct_method] : ${valArrData}
    Set Global Variable    ${groupTypeId}    ${valArrData}
    Log    GroupType : ${groupTypeId}

    Log To Console    ${\n}=========== End DB : [group_type] =============== 
    [Return]    ${valArrData}    ${rowCount}    ${valArrDataNameTh}

################################################################-- Request DB Data Calculation Method --################################################################
Request DB Data CalculationMethod
    
    Log To Console    ${\n}=========== Start DB : [calculation_method] =============== 
    # ${DB_SELECTSTATEMENT_CALCULATIONMETHOD}    SELECT * FRO M calculation_method

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${DB_SELECTSTATEMENT_CALCULATIONMETHOD}    ${DB_SELECTSTATEMENT_CALCULATIONMETHOD}
    # Log To Console    [calculation_method]  : Request DB Data CalculationMethod ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : calculation_method] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : calculation_method] : ${rowCount}

    # Properties
    @{valArrData}=    Create List
    @{valArrDataNameTh}=    Create List
    @{valArrDataNameEn}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}

        ${data}=    Evaluate    {"groupTypeId":"${dataResult}[${i}][0]", "nameTh": "${dataResult}[${i}][1]", "nameEn": "${dataResult}[${i}][2]"}
        Append To List    ${valArrData}    ${data}        #Add data to array set at valArrData
        Append To List    ${valArrDataNameTh}    ${dataResult}[${i}][1]        #Add data to array set at valArrData
        Append To List    ${valArrDataNameEn}    ${dataResult}[${i}][2]        #Add data to array set at valArrData
    # Exit For Loop
    END
    #menu
    Log To Console    [calculation_method] : ${valArrData}
    Set Global Variable    ${alculationMethodId}    ${valArrData}
    Log    CalculationMethod : ${alculationMethodId}

    Log To Console    ${\n}=========== End DB : [calculation_method] =============== 
    [Return]    ${valArrData}    ${rowCount}    ${valArrDataNameTh}    ${valArrDataNameEn}

################################################################-- Request DB Data mulct_code --################################################################
Request DB Data MulctCode
    
    Log To Console    ${\n}=========== Start DB : [mulct_code] =============== 
    #${DB_SELECTSTATEMENT_MULCTCODE_WHEREACCOUNTID}    SELECT * FROM mulct_code WHERE account_Id = [accountId] and deleted_at IS null
    
    ${accountId}=    Convert To String    ${accountId}
    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_MULCTCODE_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console    [mulct_code : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [mulct_code]  : Request DB Data MulctCode ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : mulct_code] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : mulct_code] : ${rowCount}

    # Properties
    @{valArrData}=    Create List
    @{valArrDataNameTh}=    Create List
    @{valArrDataNameEn}=    Create List
    @{valArrDataMulctCodeNameTh}=    Create List
    @{valArrDataMulctCodeNameEn}=    Create List

    FOR    ${i}    IN RANGE    ${rowCount}

        ${data}=    Evaluate    {"mulctCoeId":"${dataResult}[${i}][0]", "mulctCode": "${dataResult}[${i}][3]", "nameTh": "${dataResult}[${i}][4]", "nameEn": "${dataResult}[${i}][5]", "remark": "${dataResult}[${i}][9]", "status": "${dataResult}[${i}][6]"}
        Append To List    ${valArrData}    ${data}        #Add data to array set at valArrData
        Append To List    ${valArrDataNameTh}    ${dataResult}[${i}][4]        #Add data to array set at valArrData
        Append To List    ${valArrDataNameEn}    ${dataResult}[${i}][5]        #Add data to array set at valArrData
        Append To List    ${valArrDataMulctCodeNameTh}    ${dataResult}[${i}][3] - ${dataResult}[${i}][4]        #Add data to array set at valArrData
        Append To List    ${valArrDataMulctCodeNameEn}    ${dataResult}[${i}][3] - ${dataResult}[${i}][5]        #Add data to array set at valArrData
    # Exit For Loop
    END
    #menu
    Log To Console    [mulct_code] : ${valArrData}
    Log    MulctCode : ${valArrData}

    Log To Console    ${\n}=========== End DB : [mulct_code] =============== 
    [Return]    ${valArrData}    ${rowCount}    ${valArrDataNameTh}    ${valArrDataNameEn}    ${valArrDataMulctCodeNameTh}    ${valArrDataMulctCodeNameEn}

################################################################-- Request DB Data check_asset --################################################################
Request DB Data CheckAsset
    
    Log To Console    ${\n}=========== Start DB : [check_asset] =============== 
    #${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    SELECT * FROM check_asset WHERE account_id = [accountId] AND deleted_at IS null
    
    ${accountId}=    Convert To String    ${accountId}
    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_CHECKASSET_WHEREACCOUNTID}    [accountId]    ${accountId}
    Log To Console    [check_asset : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [check_asset]  : Request DB Data CheckAsset ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_asset] : ${rowCount}

    # Properties
    @{valArrData}=    Create List
    @{valArrDataNameTh}=    Create List
    @{valArrDataNameEN}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}

        ${data}=    Evaluate    {"id":"${dataResult}[${i}][0]", "nameTh": "${dataResult}[${i}][2]", "nameEn": "${dataResult}[${i}][3]", "remark": "${dataResult}[${i}][4]", "status": "${dataResult}[${i}][5]"}
        Append To List    ${valArrData}    ${data}        #Add data to array set at valArrData
        Append To List    ${valArrDataNameTh}    ${dataResult}[${i}][2]        #Add data to array set at valArrData
        Append To List    ${valArrDataNameEN}    ${dataResult}[${i}][3]        #Add data to array set at valArrData
    # Exit For Loop
    END
    #menu
    Log To Console    [check_asset] : ${valArrData}
    # Set Global Variable    ${checkAssetId}    ${valArrData}
    # Log    CheckAsset : ${checkAssetId}

    Log To Console    ${\n}=========== End DB : [check_asset] =============== 
    [Return]    ${valArrData}    ${rowCount}    ${valArrDataNameTh}    ${valArrDataNameEN}

################################################################-- Request DB Data check_room_asset --################################################################
Request DB Data CheckRoomAsset Edit Owner
    [Arguments]    ${roomTransferId}
    Log To Console    ${\n}=========== Start DB : [check_asset] =============== 
    #${DB_SELECTSTATEMENT_ROOMOWNER_EDIT_CHECKROOMASSET_WHEREACCOUNTIDROOMTRANSFER}    SELECT * FROM check_asset ca LEFT JOIN check_room_asset cra ON ca.id = cra.check_asset_id WHERE ca.account_id = [accountId] AND ca.deleted_at IS null AND cra.room_transfer_id = [roomTransferId] AND cra.deleted_at IS null

    ${accountId}=    Convert To String    ${accountId}
    ${roomTransferId}=    Convert To String    ${roomTransferId}
    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_ROOMOWNER_EDIT_CHECKROOMASSET_WHEREACCOUNTIDROOMTRANSFER}    [accountId]    ${accountId}
    ${selectStatement}=    Replace String    ${selectStatement}    [roomTransferId]    ${roomTransferId}
    Log To Console    [check_asset : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [check_asset]  : Request DB Data CheckAsset ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : check_asset] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : check_asset] : ${rowCount}

    # Properties
    @{valArrData}=    Create List
    @{valArrDataNameTh}=    Create List
    @{valArrDataNameEN}=    Create List
    FOR    ${i}    IN RANGE    ${rowCount}

        ${data}=    Evaluate    {"id":"${dataResult}[${i}][0]", "nameTh": "${dataResult}[${i}][2]", "nameEn": "${dataResult}[${i}][3]", "remark": "${dataResult}[${i}][4]", "status": "${dataResult}[${i}][5]"}
        Append To List    ${valArrData}    ${data}        #Add data to array set at valArrData
        Append To List    ${valArrDataNameTh}    ${dataResult}[${i}][2]        #Add data to array set at valArrData
        Append To List    ${valArrDataNameEN}    ${dataResult}[${i}][3]        #Add data to array set at valArrData
    # Exit For Loop
    END
    #menu
    Log To Console    [check_asset] : ${valArrData}
    # Set Global Variable    ${checkAssetId}    ${valArrData}
    # Log    CheckAsset : ${checkAssetId}

    Log To Console    ${\n}=========== End DB : [check_asset] =============== 
    [Return]    ${valArrData}    ${rowCount}    ${valArrDataNameTh}    ${valArrDataNameEN}    
################################################################-- Request DB Data occupation --################################################################
Request DB Data Occupation
    
    Log To Console    ${\n}=========== Start DB : [occupation] =============== 
    #${DB_SELECTSTATEMENT_OCCUPATION}    SELECT * FROM occupation

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${DB_SELECTSTATEMENT_OCCUPATION}    ${DB_SELECTSTATEMENT_OCCUPATION}
    # Log To Console    [occupation]  : Request DB Data Occupation ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : occupation] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : occupation] : ${rowCount}

    # Properties
    @{valArrData}=    Create List
    @{valArrDataNameTh}=    Create List
    @{valArrDataNameEn}=    Create List

    FOR    ${i}    IN RANGE    ${rowCount}

        ${data}=    Evaluate    {"occupationId":"${dataResult}[${i}][0]", "nameTh": "${dataResult}[${i}][1]", "nameEn": "${dataResult}[${i}][2]"}
        Append To List    ${valArrData}    ${data}        #Add data to array set at valArrData
        Append To List    ${valArrDataNameTh}    ${dataResult}[${i}][1]        #Add data to array set at valArrData
        Append To List    ${valArrDataNameEn}    ${dataResult}[${i}][2]        #Add data to array set at valArrData
        # Exit For Loop
    END
    #menu
    Log To Console    [occupation] : ${valArrData}
    Log    MulctCode : ${valArrData}

    Log To Console    ${\n}=========== End DB : [occupation] =============== 
    [Return]    ${valArrData}    ${rowCount}    ${valArrDataNameTh}    ${valArrDataNameEn}

################################################################-- Request DB Data Rooms For id --################################################################
Request DB Data Rooms For id
    [Arguments]    ${propertyId}    ${buildingId}    ${roomNo}
    
    Log To Console    ${\n}=========== Start DB : [rooms] =============== 
    #${DB_SELECTSTATEMENT_ROOMS_ACCOUNTID_PROPERTY_BUILDING_ROOMNAME}    SELECT * FROM rooms WHERE account_id = [account_id] and property_id = [property_id] and building_id = [building_id] and room_no = '[room_no]' and deleted_at IS NULL

    ${accountId}=    Convert To String    ${accountId}
    ${propertyId}=    Convert To String    ${propertyId}
    ${buildingId}=    Convert To String    ${buildingId}
    ${roomNo}=    Convert To String    ${roomNo}
    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMENT_ROOMS_ACCOUNTID_PROPERTY_BUILDING_ROOMNAME}    [account_id]    ${accountId}
    ${selectStatement}=    Replace String    ${selectStatement}    [property_id]    ${propertyId}
    ${selectStatement}=    Replace String    ${selectStatement}    [building_id]    ${buildingId}
    ${selectStatement}=    Replace String    ${selectStatement}    [room_no]    ${roomNo}
    Log To Console    [check_asset : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [rooms]  : Request DB Data Rooms For id ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : rooms] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : rooms] : ${rowCount}

    ${room_id}=    Set Variable    ${dataResult}[0][0]
    Log To Console    [rooms] : ${room_id}
    Log    room_id : ${room_id}

    Log To Console    ${\n}=========== End DB : [rooms] =============== 
    [Return]    ${room_id}
################################################################-- Request DB Data Room Tranfer For id --################################################################
Request DB Data Room Tranfer For id
    [Arguments]    ${propertyId}    ${buildingId}    ${roomId}
    
    Log To Console    ${\n}=========== Start DB : [room_transfer] =============== 
    #${DB_SELECTSTATEMEN_ROOMTRANSFER_PROPERTY_BUILDING_ROOMID}    SELECT * FROM room_transfer WHERE property_id = [property_id] and building_id = [building_id] and room_id = [room_id] and deleted_at IS NULL

    ${propertyId}=    Convert To String    ${propertyId}
    ${buildingId}=    Convert To String    ${buildingId}
    ${roomId}=    Convert To String    ${roomId}
    ${selectStatement}=    Replace String    ${DB_SELECTSTATEMEN_ROOMTRANSFER_PROPERTY_BUILDING_ROOMID}    [property_id]    ${propertyId}
    ${selectStatement}=    Replace String    ${selectStatement}    [building_id]    ${buildingId}
    ${selectStatement}=    Replace String    ${selectStatement}    [room_id]    ${roomId}
    Log To Console    [check_asset : resultQuery] : ${selectStatement}

    #[(), 0]
    # queryResults,rowCount
    @{result}=    Start Connect To MySql Query All List    ${selectStatement}    ${selectStatement}
    # Log To Console    [room_transfer]  : Request DB Data Rooms For id ${result}
    ${dataResult}=    Set Variable    ${result}[0]
    Log To Console    [result : room_transfer] : ${dataResult}
    ${rowCount}=    Set Variable    ${result}[1]
    Log To Console    [rowCount : room_transfer] : ${rowCount}

    ${roomTranfer_id}=    Set Variable    ${dataResult}[0][0]
    Log To Console    [room_transfer] : ${roomTranfer_id}
    Log    roomTranfer_id : ${roomTranfer_id}

    Log To Console    ${\n}=========== End DB : [room_transfer] =============== 
    [Return]    ${roomTranfer_id}

# ################################################################-- Request DB Data CheckAsset For id --################################################################
# Request DB Data CheckAsset For id
#     [Arguments]    ${name}
#     Log To Console    ${\n}=========== Start DB : [check_asset] =============== 
#     #${DB_SELECTSTATEMEN_CHECKASSET_NAME_ACCOUNTID}    SELECT * FROM check_asset WHERE (name_th LIKE '%[name]%' OR name_en LIKE '%[name]%') and account_id = [account_id]] and deleted_at IS NULL
    
#     ${accountId}=    Convert To String    ${accountId}
#     ${selectStatement}=    Replace String    ${DB_SELECTSTATEMEN_CHECKASSET_NAME_ACCOUNTID}    [account_id]    ${accountId}
#     ${selectStatement}=    Replace String    ${selectStatement}    [name]    ${name}
#     Log To Console    [check_asset : resultQuery] : ${selectStatement}

#     ${checkAsset_id}=    Set Variable    ${dataResult}[0][0]
#     Log To Console    [check_asset] : ${checkAsset_id}
#     Log    checkAsset_id : ${checkAsset_id}

#     Log To Console    ${\n}=========== End DB : [check_asset] =============== 
#     [Return]    ${checkAsset_id} 