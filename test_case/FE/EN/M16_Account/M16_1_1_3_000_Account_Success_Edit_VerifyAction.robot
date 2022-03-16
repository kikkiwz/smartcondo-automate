*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [Edit] Account ###################
M16_1_1_3_000_Account_Success_Edit_VerifyAction [VerifyAction "Edit Account"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. click main Menu Account
    ...    4. click Account
    ...    5. click create button
    ...    6. click edit button
    ...    7. click delete button

    [Setup]    Open Browser To Login Page SCUser EN
        
    Log To Console    ${\n}=========== [Create] Account =============== 

    # ========== Click main Menu Account ======
    Click Main Menu SCUser    ${MENU_LBL_ACCOUNT_LOCATOR}    ${MENU_LBL_ACCOUNT_EN}    ${ACCOUNT_SEARCH_LBL_HOME_SUBNAV_LOCATOR}    ${ACCOUNT_SEARCH_LBL_HOME_SUBNAV_EN}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_SUBNAV_LOCATOR}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_SUBNAV_EN}

    #Account Header
    Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_ACCOUNT_LOCATOR}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_EN} 
    
    # ========== Create Account ======
    Log To Console    ${\n}=========== [Create] Account ===============
    #Create data
    Create Account input require field data EN 

    #========== Edit Account ======
    Log To Console    ${\n}=========== [Edit] Account ===============

    #Click Edit Account
    Wait Until Contains Element Should Be Visible    ${ACCOUNT_BTN_MORE_LOCATOR}
    Mouse Down    ${ACCOUNT_BTN_MORE_LOCATOR}
    Click Element Page    ${ACCOUNT_BTN_EDIT_LOCATOR}
    Sleep    0.5s

    ${identificationNo}=    Get Text String    ${ACCOUNT_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    identificationNo${identificationNo}

    #Account Name* [Value]
    Wait Should Contain Get Element Attribute    ${ACCOUNT_EDIT_TXT_ACCOUNTNAME_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${identificationNo}

    #Name* [Value]
    Wait Should Contain Get Element Attribute    ${ACCOUNT_EDIT_TXT_NAME_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${ACCOUNT_NAME_VALUE}
    
    #Maximum Room* [Value]
    Wait Should Contain Get Element Attribute    ${ACCOUNT_EDIT_TXT_MAXIMUMROOM_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${ACCOUNT_MAXIMUMROOM_VALUE}
    
    #Phone* [Value]
    Wait Should Contain Get Element Attribute    ${ACCOUNT_EDIT_TXT_PHONE_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${ACCOUNT_PHONE_VALUE}
    
    #Taxpayer Identification No* [Value]
    Wait Should Contain Get Element Attribute    ${ACCOUNT_EDIT_TXT_TAXPAYERIDENTIFICATIONNO_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${ACCOUNT_TAXPAYERIDENTIFICATIONNO_VALUE}
    
    #Start Date* [Value]
    #2021-11-22T00:00:00.000Z
    ${startDateNowYYYYMMDD_FORMAT_T}=    Change format date now    ${YYYYMMDDD_NOW_-}
    Log To Console    startDateNowYYYYMMDD_FORMAT_T${startDateNowYYYYMMDD_FORMAT_T}
    Wait Should Contain Get Element Attribute    ${ACCOUNT_EDIT_DATE_STARTDATE_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${startDateNowYYYYMMDD_FORMAT_T}${HMS_TZ}
    
    #Expire Date [Value]
    Wait Should Contain Get Element Attribute    ${ACCOUNT_EDIT_DATE_EXPIREDATE_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${NONE}

    # Check Permission Menu    
    Check Permission Menu    ${ACCOUNT_EDIT_CHK_PERMISSION_MENU_LOCATOR}    ${ACCOUNT_EDIT_LBL_PERMISSION_MENU_LOCATOR}    ${ACCOUNT_EDIT_ICON_PERMISSION_MENU_LOCATOR}    ${ACCOUNT_EDIT_LBL_PERMISSION_MENU_TOOLTIP_GROUPNAME_LOCATOR}    ${ACCOUNT_EDIT_LBL_PERMISSION_MENU_TOOLTIP_ROLE_LOCATOR}
    # value
    Wait Should Contain Get Element Attribute    ${ACCOUNT_EDIT_CHK_PERMISSION0_ID_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${TRUE_LOWWER}
    
    #Click Cancel button
    Click Element Page    ${ACCOUNT_ADDEDIT_BTN_CANCEL_LOCATOR}

Verify action : click Edit - Account [Edit data input new,Name,Maximum Room,Phone,Taxpayer Identification No,Start Date,Expire Date]

    #Edit data
    Edit Account input all field data EN

    #Click Edit Account
    Wait Until Contains Element Should Be Visible    ${ACCOUNT_BTN_MORE_LOCATOR}
    Mouse Down    ${ACCOUNT_BTN_MORE_LOCATOR}
    Click Element Page    ${ACCOUNT_BTN_EDIT_LOCATOR}
    Sleep    0.5s

    ${identificationNo}=    Get Text String    ${ACCOUNT_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # Log To Console    identificationNo${identificationNo}

    #Account Name* [Value]
    Wait Should Contain Get Element Attribute    ${ACCOUNT_EDIT_TXT_ACCOUNTNAME_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${identificationNo}

    #Name* [Value]
    Wait Should Contain Get Element Attribute    ${ACCOUNT_EDIT_TXT_NAME_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${ACCOUNT_EDIT_NAME_VALUE}
    
    #Maximum Room* [Value]
    Wait Should Contain Get Element Attribute    ${ACCOUNT_EDIT_TXT_MAXIMUMROOM_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${ACCOUNT_EDIT_MAXIMUMROOM_VALUE}
    
    #Phone* [Value]
    Wait Should Contain Get Element Attribute    ${ACCOUNT_EDIT_TXT_PHONE_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${ACCOUNT_EDIT_PHONE_VALUE}
    
    #Taxpayer Identification No* [Value]
    Wait Should Contain Get Element Attribute    ${ACCOUNT_EDIT_TXT_TAXPAYERIDENTIFICATIONNO_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${ACCOUNT_EDIT_TAXPAYERIDENTIFICATIONNO_VALUE}
    
    #Start Date* [Value]
    # 01/12/2021
    ${startDateNowYYYYMMDD_FORMAT_T}=    Change format date now    ${YYYYMMDDD_NOW_-}
    Log To Console    startDateNowYYYYMMDD_FORMAT_T${startDateNowYYYYMMDD_FORMAT_T}
    Wait Should Contain Get Element Attribute    ${ACCOUNT_EDIT_DATE_STARTDATE_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${startDateNowYYYYMMDD_FORMAT_T}${HMS_TZ}
    
    #Expire Date [Value]
    #2021-11-22T00:00:00.000Z
    ${expireDateNowDDMMYYYY_ADDSUB}=    Value Add date    ${YYYYMMDD_-_ADDSUB}    ${DATE_TYPE_ADD}    ${RANGE_DAY} 
    Log To Console    expireDateNowDDMMYYYY_ADDSUB${expireDateNowDDMMYYYY_ADDSUB}
    Wait Should Contain Get Element Attribute    ${ACCOUNT_EDIT_DATE_EXPIREDATE_LOCATOR}    ${ATTRIBUTE_VALUE_DX}    ${expireDateNowDDMMYYYY_ADDSUB}${HMS_TZ}

    # Check Permission Menu    
    Check Permission Menu    ${ACCOUNT_EDIT_CHK_PERMISSION_MENU_LOCATOR}    ${ACCOUNT_EDIT_LBL_PERMISSION_MENU_LOCATOR}    ${ACCOUNT_EDIT_ICON_PERMISSION_MENU_LOCATOR}    ${ACCOUNT_EDIT_LBL_PERMISSION_MENU_TOOLTIP_GROUPNAME_LOCATOR}    ${ACCOUNT_EDIT_LBL_PERMISSION_MENU_TOOLTIP_ROLE_LOCATOR}
    # value
    Wait Should Contain Get Element Attribute    ${ACCOUNT_EDIT_CHK_PERMISSION0_ID_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${TRUE_LOWWER}
    Wait Should Contain Get Element Attribute    ${ACCOUNT_EDIT_CHK_PERMISSION1_ID_LOCATOR}    ${ATTRIBUTE_ARIACHECKED}    ${TRUE_LOWWER}
    
    #Click Cancel button
    Click Element Page    ${ACCOUNT_ADDEDIT_BTN_CANCEL_LOCATOR}

    
Verify Action : click X button   

    #Click Edit Account
    Wait Until Contains Element Should Be Visible    ${ACCOUNT_BTN_MORE_LOCATOR}
    Mouse Down    ${ACCOUNT_BTN_MORE_LOCATOR}
    Click Element Page    ${ACCOUNT_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit Account
    Wait Until Contains Element Text Should Be    ${ACCOUNT_EDIT_LBL_EDITACCOUNT_LOCATOR}    ${ACCOUNT_EDIT_LBL_EDITACCOUNT_EN} 

    #Click X button    
    Click Element Page    ${ACCOUNT_BTN_CLOSE_LOCATOR}

    #Account Header
    Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_ACCOUNT_LOCATOR}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_EN} 

Verify Action : click cancel button

    #Click Edit Account
    Wait Until Contains Element Should Be Visible    ${ACCOUNT_BTN_MORE_LOCATOR}
    Mouse Down    ${ACCOUNT_BTN_MORE_LOCATOR}
    Click Element Page    ${ACCOUNT_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    
    #Edit Account
    Wait Until Contains Element Text Should Be    ${ACCOUNT_EDIT_LBL_EDITACCOUNT_LOCATOR}    ${ACCOUNT_EDIT_LBL_EDITACCOUNT_EN} 

    #Click Cancel button
    Click Element Page    ${ACCOUNT_ADDEDIT_BTN_CANCEL_LOCATOR}

    #Account Header
    Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_ACCOUNT_LOCATOR}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_EN} 

Verify Action : click Download property import format button
    #Click Edit Account
    Wait Until Contains Element Should Be Visible    ${ACCOUNT_BTN_MORE_LOCATOR}
    Mouse Down    ${ACCOUNT_BTN_MORE_LOCATOR}
    Click Element Page    ${ACCOUNT_BTN_EDIT_LOCATOR}
    Sleep    0.5s

    Click Element Page    ${ACCOUNT_EDIT_ICON _DOWLOAD_LOCATOR}    # downloads a file

Verify Action : click Upload property data button

    # Click Edit Account
    # Wait Until Contains Element Should Be Visible    ${ACCOUNT_BTN_MORE_LOCATOR}
    # Mouse Down    ${ACCOUNT_BTN_MORE_LOCATOR}
    # Click Element Page    ${ACCOUNT_BTN_EDIT_LOCATOR}
    # Sleep    0.5s

    Import Path File    ${ACCOUNT_EDIT_INPUT_UPLOAD_LOCATOR}    ${EXCEL_PROPERTY_IMPORT_FILENAME}
    
    Sleep    2s
    #alert bottom
    Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

    ${pathFile}=    Replace Path File
    # Log To Console    pathFile${pathFile}
    # Log To Console    CURDIR${CURDIR}
    ${dataExcelColumn}=    Open Read Excel Column    ${EXCEL_PROPERTY_IMPORT_FILENAME}     ${pathFile}    ${EXCEL_PROPERTY_IMPORT_COLNUM_2}    ${EXCEL_PROPERTY_IMPORT_MAXNUM_3}    ${EXCEL_PROPERTY_IMPORT_SHEETNAME}
    # Log To Console    dataExcelColumn${dataExcelColumn}

    ${lengthDataAll}=    Get Length    ${dataExcelColumn}

    ${removedataExcelHeader}=    Remove From List    ${dataExcelColumn}    0
    # Log To Console    removedataExcelHeader${removedataExcelHeader}
    # Log To Console    dataExcel${dataExcel}

    ${lengthDataExcel}=    Get Length    ${dataExcelColumn}
    # Log To Console    lengthDataExcel${lengthDataExcel}
    #valueTable
    @{valArrDataTable}=    Create List    
    FOR    ${i}    IN RANGE    ${lengthDataExcel}
    
        #================ Check Value Table ================
        #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
        ${setData}=    Set Data for check value table Property in Account
        Log To Console    setData${setData}
        ${no}=    Convert To String    ${i+1}
        ${data}=    Evaluate    {"no":"${no}", "propertyName":"${dataExcelColumn[${i}]}"}

        Append To List    ${valArrDataTable}    ${data} 
        # Log To Console    valArrDataTable${valArrDataTable}

        Check Value Table    ${ACCOUNT_EDIT_LBL_RESULT_DATA_PROPERTY_LOCATOR}    ${setData}[0]    ${i}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}
    # Exit For Loop
    END

    # Log To Console    lengthDataAll${lengthDataAll}

    @{valArrDataTableMobileArray}=    Create List   
    @{valArrDataTableMobile}=    Create List   
    FOR    ${m}    IN RANGE    ${lengthDataAll}
        Log To Console    ${m}
        
        ${dataExcelRow}=    Open Read Excel Row    ${EXCEL_PROPERTY_IMPORT_FILENAME}     ${pathFile}    ${m+1}    ${EXCEL_PROPERTY_IMPORT_MAXNUM_30}    ${EXCEL_PROPERTY_IMPORT_SHEETNAME}
        # Log To Console    dataExcelRow${dataExcelRow}

        @{valArrDataTableMobileArray}=    Create List   
        Run Keyword If    '${m}'!='0' and '${dataExcelRow[4]}'!='${NONE}'    Append To List    ${valArrDataTableMobileArray}    ${dataExcelRow[4]}
        Run Keyword If    '${m}'!='0' and '${dataExcelRow[5]}'!='${NONE}'    Append To List    ${valArrDataTableMobileArray}    ${dataExcelRow[5]}
        Run Keyword If    '${m}'!='0' and '${dataExcelRow[6]}'!='${NONE}'    Append To List    ${valArrDataTableMobileArray}    ${dataExcelRow[6]}
        Run Keyword If    '${m}'!='0' and '${dataExcelRow[7]}'!='${NONE}'    Append To List    ${valArrDataTableMobileArray}    ${dataExcelRow[7]}
        Run Keyword If    '${m}'!='0' and '${dataExcelRow[8]}'!='${NONE}'    Append To List    ${valArrDataTableMobileArray}    ${dataExcelRow[8]}
        Run Keyword If    '${m}'!='0' and '${dataExcelRow[9]}'!='${NONE}'    Append To List    ${valArrDataTableMobileArray}    ${dataExcelRow[9]}
        Run Keyword If    '${m}'!='0' and '${dataExcelRow[10]}'!='${NONE}'    Append To List    ${valArrDataTableMobileArray}    ${dataExcelRow[10]}
        Run Keyword If    '${m}'!='0' and '${dataExcelRow[11]}'!='${NONE}'    Append To List    ${valArrDataTableMobileArray}    ${dataExcelRow[11]}
        Run Keyword If    '${m}'!='0' and '${dataExcelRow[12]}'!='${NONE}'    Append To List    ${valArrDataTableMobileArray}    ${dataExcelRow[12]}
        Run Keyword If    '${m}'!='0' and '${dataExcelRow[13]}'!='${NONE}'    Append To List    ${valArrDataTableMobileArray}    ${dataExcelRow[13]}
        
        ${convertListToString}=   Evaluate    ",".join(${valArrDataTableMobileArray})
        # Log To Console    convertListToString${convertListToString}

        Append To List    ${valArrDataTableMobile}    ${convertListToString}

    # Exit For Loop
    END

    # Log To Console    valArrDataTableMobileArray${valArrDataTableMobileArray}
    # Log To Console    valArrDataTableMobile${valArrDataTableMobile}

    @{valArrDataTableExcel}=    Create List   
    FOR    ${j}    IN RANGE    ${lengthDataAll}
        # Log To Console    ${j}
        
        ${dataExcelRow}=    Open Read Excel Row    ${EXCEL_PROPERTY_IMPORT_FILENAME}     ${pathFile}    ${j+1}    ${EXCEL_PROPERTY_IMPORT_MAXNUM_30}    ${EXCEL_PROPERTY_IMPORT_SHEETNAME}
        Log To Console    dataExcelRow${dataExcelRow}

        ${data}=    Set Variable If    '${j}'!='0'    {"no":"${j}", "nameTh":"${dataExcelRow[0]}", "nameEn":"${dataExcelRow[1]}", "shortName":"${dataExcelRow[2]}", "taxId":"${dataExcelRow[3]}", "mobile":"${valArrDataTableMobile[${j}]}", "address":"${dataExcelRow[14]}", "roomAmount":"${dataExcelRow[15]}", "shopAmount":"${dataExcelRow[16]}", "parkingAmount":"${dataExcelRow[17]}", "proprietaryRatio":"${dataExcelRow[18]}", "area":"${dataExcelRow[19]}", "juristicId":"${dataExcelRow[20]}", "registartionDate":"${dataExcelRow[21]}", "waterelecAverage":"${dataExcelRow[22]}", "deadline":"${dataExcelRow[23]}", "billPaymentStatus":"${dataExcelRow[24]}", "billPaymentBank":"${dataExcelRow[25]}", "billerName":"${dataExcelRow[26]}", "billerNameBillerIDTQRCChannel":"${dataExcelRow[27]}", "billerIDOtherBankChannel":"${dataExcelRow[28]}", "billerIDQRTag30Channel":"${dataExcelRow[29]}"}
        # Log To Console    data${data}
        Run Keyword If    '${j}'!='0'    Append To List    ${valArrDataTableExcel}    ${data} 

        Run Keyword If    '${j}'!='0'    Request Verify DB Check Data Properties Account    ${MYSQL_TYPE_CREATE}    ${dataExcelRow[0]}    ${dataExcelRow[1]}    ${dataExcelRow[2]}    ${dataExcelRow[3]}    ${valArrDataTableMobile[${j}]}   ${dataExcelRow[14]}    ${dataExcelRow[15]}    ${dataExcelRow[16]}    ${dataExcelRow[17]}    ${dataExcelRow[18]}    ${dataExcelRow[19]}    ${dataExcelRow[20]}    ${dataExcelRow[21]}    ${dataExcelRow[22]}    ${dataExcelRow[23]}    ${dataExcelRow[24]}    ${dataExcelRow[25]}    ${dataExcelRow[26]}    ${dataExcelRow[27]}    ${dataExcelRow[28]}    ${dataExcelRow[29]}

    # Exit For Loop
    END

    # Log To Console    valArrDataTable${valArrDataTable}
   
Verify Action : click Disable button
    ${nameProperty}=    Get Text String    ${ACCOUNT_EDIT_LBL_RESULT_ROW1COL1_LOCATOR}
    Log To Console    nameProperty${nameProperty}
    #Click disable button        
    Check Popup Enable and Disable    ${ACCOUNT_EDIT_ICON_POPUPDISABLE1_LOCATOR}    ${ALERT_TITLE_DISABLE_EN}    ${ALERT_CONTENT_DISABLE1_EN} ${nameProperty}${ALERT_CONTENT_DISABLE2_EN}    ${ALERT_BTN_CONFIRM_EN}    ${ALERT_BTN_CANCEL_EN}
   
Verify Action : click confirm Disable button
    ${nameProperty}=    Get Text String    ${ACCOUNT_EDIT_LBL_RESULT_ROW1COL1_LOCATOR}
    Log To Console    nameProperty${nameProperty}
    #Click disable button        
    Click Enable and Disable and Check Text    ${ACCOUNT_EDIT_ICON_POPUPDISABLE1_LOCATOR}    ${ALERT_TITLE_DISABLE_EN}    ${ALERT_CONTENT_DISABLE1_EN} ${nameProperty}${ALERT_CONTENT_DISABLE2_EN}    ${ALERT_BTN_CONFIRM_EN}    ${ALERT_BTN_CANCEL_EN}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}
    
Verify Action : click Enable button
    ${nameProperty}=    Get Text String    ${ACCOUNT_EDIT_LBL_RESULT_ROW1COL1_LOCATOR}
    Log To Console    nameProperty${nameProperty}
    #Click enable button        
    Check Popup Enable and Disable    ${ACCOUNT_EDIT_ICON_POPUPENABLE1_LOCATOR}    ${ALERT_TITLE_ENABLE_EN}    ${ALERT_CONTENT_ENABLE1_EN} ${nameProperty}${ALERT_CONTENT_DELETE2_EN}    ${ALERT_BTN_CONFIRM_EN}    ${ALERT_BTN_CANCEL_EN}

Verify Action : click confirm Enable button
    ${nameProperty}=    Get Text String    ${ACCOUNT_EDIT_LBL_RESULT_ROW1COL1_LOCATOR}
    Log To Console    nameProperty${nameProperty}
    #Click enable button        
    Click Enable and Disable and Check Text    ${ACCOUNT_EDIT_ICON_POPUPENABLE1_LOCATOR}    ${ALERT_TITLE_ENABLE_EN}    ${ALERT_CONTENT_ENABLE1_EN} ${nameProperty}${ALERT_CONTENT_DELETE2_EN}    ${ALERT_BTN_CONFIRM_EN}    ${ALERT_BTN_CANCEL_EN}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}

Verify Action : click edit button
    #Click Edit Account
    # Wait Until Contains Element Should Be Visible    ${ACCOUNT_BTN_MORE_LOCATOR}
    # Mouse Down    ${ACCOUNT_BTN_MORE_LOCATOR}
    # Click Element Page    ${ACCOUNT_BTN_EDIT_LOCATOR}
    # Sleep    0.5s

    Import Path File    ${ACCOUNT_EDIT_ICON_POPUPEDIT_FILE_LOCATOR}    ${EXCEL_PROPERTY_IMPORT_FILENAME_EDIT}
    
    # Sleep    2s
    # #alert bottom
    # Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}
    ${pathFile}=    Replace Path File
    Log To Console    ${pathFile}
    ${dataExcelColumn}=    Open Read Excel Column    ${EXCEL_PROPERTY_IMPORT_FILENAME_EDIT}     ${pathFile}    ${EXCEL_PROPERTY_IMPORT_COLNUM_2}    ${EXCEL_PROPERTY_IMPORT_MAXNUM_3}    ${EXCEL_PROPERTY_IMPORT_SHEETNAME}
    Log To Console    dataExcelColumn${dataExcelColumn}

    # ${lengthDataAll}=    Get Length    ${dataExcelColumn}

    ${removedataExcelHeader}=    Remove From List    ${dataExcelColumn}    0
    # Log To Console    removedataExcelHeader${removedataExcelHeader}
    # Log To Console    dataExcel${dataExcel}

    ${lengthDataExcel}=    Get Length    ${dataExcelColumn}
    Log To Console    lengthDataExcel${lengthDataExcel}

    #================ Check Value Table ================
    #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
    ${setData}=    Set Data for check value table Property in Account
    Log To Console    setData${setData}
    ${no}=    Convert To String    1
    ${data}=    Evaluate    {"no":"${no}", "propertyName":"${dataExcelColumn[0]}"}
    @{valArrDataTable}=    Create List
    Append To List    ${valArrDataTable}    ${data} 
    Log To Console    valArrDataTable${valArrDataTable}
    ${numRow}=    Convert To Integer    0
    Log To Console    numRow${numRow}
    # Check Value Table    ${ACCOUNT_EDIT_LBL_RESULT_DATA_PROPERTY_LOCATOR}    ${setData}[0]    ${numRow}    ${setData}[3]    ${setData}[2]    ${setData}[1]    ${valArrDataTable}

    Log To Console    valArrDataTable${valArrDataTable}

    @{valArrDataTableMobileArray}=    Create List   
    @{valArrDataTableMobile}=    Create List   
     Log To Console    lengthDataExcel${lengthDataExcel}
    FOR    ${m}    IN RANGE    ${lengthDataExcel}
        Log To Console    ${m}
        
        ${dataExcelRow}=    Open Read Excel Row    ${EXCEL_PROPERTY_IMPORT_FILENAME_EDIT}     ${pathFile}    ${m+1}    ${EXCEL_PROPERTY_IMPORT_MAXNUM_30}    ${EXCEL_PROPERTY_IMPORT_SHEETNAME}
        Log To Console    dataExcelRow${dataExcelRow}

        @{valArrDataTableMobileArray}=    Create List   
        Run Keyword If    '${m}'!='0' and '${dataExcelRow[4]}'!='${NONE}'    Append To List    ${valArrDataTableMobileArray}    ${dataExcelRow[4]}
        Run Keyword If    '${m}'!='0' and '${dataExcelRow[5]}'!='${NONE}'    Append To List    ${valArrDataTableMobileArray}    ${dataExcelRow[5]}
        Run Keyword If    '${m}'!='0' and '${dataExcelRow[6]}'!='${NONE}'    Append To List    ${valArrDataTableMobileArray}    ${dataExcelRow[6]}
        Run Keyword If    '${m}'!='0' and '${dataExcelRow[7]}'!='${NONE}'    Append To List    ${valArrDataTableMobileArray}    ${dataExcelRow[7]}
        Run Keyword If    '${m}'!='0' and '${dataExcelRow[8]}'!='${NONE}'    Append To List    ${valArrDataTableMobileArray}    ${dataExcelRow[8]}
        Run Keyword If    '${m}'!='0' and '${dataExcelRow[9]}'!='${NONE}'    Append To List    ${valArrDataTableMobileArray}    ${dataExcelRow[9]}
        Run Keyword If    '${m}'!='0' and '${dataExcelRow[10]}'!='${NONE}'    Append To List    ${valArrDataTableMobileArray}    ${dataExcelRow[10]}
        Run Keyword If    '${m}'!='0' and '${dataExcelRow[11]}'!='${NONE}'    Append To List    ${valArrDataTableMobileArray}    ${dataExcelRow[11]}
        Run Keyword If    '${m}'!='0' and '${dataExcelRow[12]}'!='${NONE}'    Append To List    ${valArrDataTableMobileArray}    ${dataExcelRow[12]}
        Run Keyword If    '${m}'!='0' and '${dataExcelRow[13]}'!='${NONE}'    Append To List    ${valArrDataTableMobileArray}    ${dataExcelRow[13]}
        
        ${convertListToString}=   Evaluate    ",".join(${valArrDataTableMobileArray})
        Log To Console    convertListToString${convertListToString}

        Append To List    ${valArrDataTableMobile}    ${convertListToString}

    # Exit For Loop
    END

    # Log To Console    valArrDataTableMobileArray${valArrDataTableMobileArray}
    # Log To Console    valArrDataTableMobile${valArrDataTableMobile}

    @{valArrDataTableExcel}=    Create List   
    FOR    ${j}    IN RANGE    ${lengthDataExcel}
        Log To Console    ${j}
        
        ${dataExcelRow}=    Open Read Excel Row    ${EXCEL_PROPERTY_IMPORT_FILENAME_EDIT}     ${pathFile}    ${j+1}    ${EXCEL_PROPERTY_IMPORT_MAXNUM_30}    ${EXCEL_PROPERTY_IMPORT_SHEETNAME}
        Log To Console    dataExcelRow${dataExcelRow}

        # ${no}=    Run Keyword If    '${j}'!='0'    Convert To String    ${j}
        ${data}=    Set Variable If    '${j}'!='0'    {"no":"${j}", "nameTh":"${dataExcelRow[0]}", "nameEn":"${dataExcelRow[1]}", "shortName":"${dataExcelRow[2]}", "taxId":"${dataExcelRow[3]}", "mobile":"${valArrDataTableMobile[${j}]}", "address":"${dataExcelRow[14]}", "roomAmount":"${dataExcelRow[15]}", "shopAmount":"${dataExcelRow[16]}", "parkingAmount":"${dataExcelRow[17]}", "proprietaryRatio":"${dataExcelRow[18]}", "area":"${dataExcelRow[19]}", "juristicId":"${dataExcelRow[20]}", "registartionDate":"${dataExcelRow[21]}", "waterelecAverage":"${dataExcelRow[22]}", "deadline":"${dataExcelRow[23]}", "billPaymentStatus":"${dataExcelRow[24]}", "billPaymentBank":"${dataExcelRow[25]}", "billerName":"${dataExcelRow[26]}", "billerNameBillerIDTQRCChannel":"${dataExcelRow[27]}", "billerIDOtherBankChannel":"${dataExcelRow[28]}", "billerIDQRTag30Channel":"${dataExcelRow[29]}"}
        Log To Console    data${data}
        Run Keyword If    '${j}'!='0'    Append To List    ${valArrDataTableExcel}    ${data} 

        Run Keyword If    '${j}'!='0'    Request Verify DB Check Data Properties Account    ${MYSQL_TYPE_EDIT}    ${dataExcelRow[0]}    ${dataExcelRow[1]}    ${dataExcelRow[2]}    ${dataExcelRow[3]}    ${valArrDataTableMobile[${j}]}   ${dataExcelRow[14]}    ${dataExcelRow[15]}    ${dataExcelRow[16]}    ${dataExcelRow[17]}    ${dataExcelRow[18]}    ${dataExcelRow[19]}    ${dataExcelRow[20]}    ${dataExcelRow[21]}    ${dataExcelRow[22]}    ${dataExcelRow[23]}    ${dataExcelRow[24]}    ${dataExcelRow[25]}    ${dataExcelRow[26]}    ${dataExcelRow[27]}    ${dataExcelRow[28]}    ${dataExcelRow[29]}

    # Exit For Loop
    END

    # Log To Console    valArrDataTable${valArrDataTable}
    Sleep    2s
    #Click Cancel button
    Click Element Page    ${ACCOUNT_ADDEDIT_BTN_CANCEL_LOCATOR}

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${ACCOUNT_EDIT_M16_1_1_3_000_SUCCESS_SCREENSHOT}
    
################### Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown Account And Delete Property EN    ${ACCOUNT_STAMPDELETEPROPERTIES_FILENAME_VALUE}