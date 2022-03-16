*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Edit] Account ###################
M16_0_1_3_000_Account_Success_Edit_VerifyScreen [Verify screen page "Edit Account"]
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

    #========== Click main Menu Account ======
    Click Main Menu SCUser    ${MENU_LBL_ACCOUNT_LOCATOR}    ${MENU_LBL_ACCOUNT_EN}    ${ACCOUNT_SEARCH_LBL_HOME_SUBNAV_LOCATOR}    ${ACCOUNT_SEARCH_LBL_HOME_SUBNAV_EN}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_SUBNAV_LOCATOR}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_SUBNAV_EN}

    #Account Header
    Wait Until Contains Element Text Should Be    ${ACCOUNT_SEARCH_LBL_ACCOUNT_LOCATOR}    ${ACCOUNT_SEARCH_LBL_ACCOUNT_EN} 
    
	#========== Create Account ======
	Log To Console    ${\n}=========== [Create] Account ===============
	#Create data
    Create Account input require field data EN

	Log To Console    ${\n}=========== [Edit] Account =============== 
	#Click Edit Account
    Wait Until Contains Element Should Be Visible    ${ACCOUNT_BTN_MORE_LOCATOR}
    Mouse Down    ${ACCOUNT_BTN_MORE_LOCATOR}
	Click Element Page    ${ACCOUNT_BTN_EDIT_LOCATOR}
	Sleep    0.5s
	
	#Edit Account
	Wait Until Contains Element Text Should Be    ${ACCOUNT_EDIT_LBL_EDITACCOUNT_LOCATOR}    ${ACCOUNT_EDIT_LBL_EDITACCOUNT_EN} 
	
	#close button
	Wait Until Contains Element Should Be Visible    ${ACCOUNT_BTN_CLOSE_LOCATOR}
    
    #Account Name*
    Wait Until Contains Get Text Split String Join    ${ACCOUNT_EDIT_LBL_ACCOUNTNAME_LOCATOR}    ${ACCOUNT_EDIT_LBL_ACCOUNTNAME_EN} 
    Wait Until Contains Element Should Be Visible    ${ACCOUNT_EDIT_INPUT_ACCOUNTNAME_LOCATOR}

	#Name*
    Wait Until Contains Get Text Split String Join    ${ACCOUNT_EDIT_LBL_NAME_LOCATOR}    ${ACCOUNT_EDIT_LBL_NAME_EN} 
    Wait Until Contains Element Should Be Visible    ${ACCOUNT_EDIT_INPUT_NAME_LOCATOR}
    
    #Maximum Room*
    Wait Until Contains Get Text Split String Join    ${ACCOUNT_EDIT_LBL_MAXIMUMROOM_LOCATOR}    ${ACCOUNT_EDIT_LBL_MAXIMUMROOM_EN} 
    Wait Until Contains Element Should Be Enabled    ${ACCOUNT_EDIT_INPUT_MAXIMUMROOM_LOCATOR}
    
    #Phone*
    Wait Until Contains Get Text Split String Join    ${ACCOUNT_EDIT_LBL_PHONE_LOCATOR}    ${ACCOUNT_EDIT_LBL_PHONE_EN} 
    Wait Until Contains Element Should Be Enabled    ${ACCOUNT_EDIT_INPUT_PHONE_LOCATOR}
    
    #Taxpayer Identification No*
    Wait Until Contains Get Text Split String Join    ${ACCOUNT_EDIT_LBL_TAXPAYERIDENTIFICATIONNO_LOCATOR}    ${ACCOUNT_EDIT_LBL_TAXPAYERIDENTIFICATIONNO_EN} 
    Wait Until Contains Element Should Be Visible    ${ACCOUNT_EDIT_INPUT_TAXPAYERIDENTIFICATIONNO_LOCATOR}
    
    #Start Date*
    Wait Until Contains Get Text Split String Join    ${ACCOUNT_EDIT_LBL_STARTDATE_LOCATOR}    ${ACCOUNT_EDIT_LBL_STARTDATE_EN} 
    Wait Until Contains Element Should Be Visible    ${ACCOUNT_EDIT_DATE_STARTDATE_INPUT_LOCATOR}
    
    #Expire Date 
    Wait Until Contains Get Text Split String Join    ${ACCOUNT_EDIT_LBL_EXPIREDATE_LOCATOR}    ${ACCOUNT_EDIT_LBL_EXPIREDATE_EN} 
    Wait Until Contains Element Should Be Visible    ${ACCOUNT_EDIT_DATE_EXPIREDATE_INPUT_LOCATOR}
    
    #Permanent 
    Wait Until Contains Element Text Should Be    ${ACCOUNT_EDIT_CHK_PERMANENT_LOCATOR}    ${ACCOUNT_EDIT_LBL_PERMANENT_EN} 

    #Permission
    Wait Until Contains Element Text Should Be    ${ACCOUNT_EDIT_LBL_PERMISSION_LOCATOR}    ${ACCOUNT_EDIT_LBL_PERMISSION_EN} 
    
    # Check Permission Menu    
    Check Permission Menu    ${ACCOUNT_EDIT_CHK_PERMISSION_MENU_LOCATOR}    ${ACCOUNT_EDIT_LBL_PERMISSION_MENU_LOCATOR}    ${ACCOUNT_EDIT_ICON_PERMISSION_MENU_LOCATOR}    ${ACCOUNT_EDIT_LBL_PERMISSION_MENU_TOOLTIP_GROUPNAME_LOCATOR}    ${ACCOUNT_EDIT_LBL_PERMISSION_MENU_TOOLTIP_ROLE_LOCATOR}

    #Property
    Wait Until Contains Element Text Should Be    ${ACCOUNT_EDIT_LBL_PROPERTY_LOCATOR}    ${ACCOUNT_EDIT_LBL_PROPERTY_EN} 

    #dowload icon
    Wait Until Contains Element Should Be Visible    ${ACCOUNT_EDIT_ICON_DOWLOAD_LOCATOR}
    Mouse Down    ${ACCOUNT_EDIT_ICON_DOWLOAD_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ACCOUNT_EDIT_LBL_DOWLOAD_EN_VERIFYSCREEN_LOCATOR}    ${ACCOUNT_EDIT_LBL_DOWLOAD_EN} 

    #upload icon 
    Wait Until Contains Element Should Be Visible    ${ACCOUNT_EDIT_ICON_UPLOAD_LOCATOR}
    Mouse Down    ${ACCOUNT_EDIT_ICON_UPLOAD_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ACCOUNT_EDIT_LBL_UPLOAD_EN_VERIFYSCREEN_LOCATOR}    ${ACCOUNT_EDIT_LBL_UPLOAD_EN} 

    #No
    Wait Until Contains Element Text Should Be    ${ACCOUNT_EDIT_LBL_RESULT_NO_VERIFYSCREEN_LOCATOR}    ${ACCOUNT_EDIT_LBL_RESULT_NO_EN} 
    #Property Name
    Wait Until Contains Element Text Should Be    ${ACCOUNT_EDIT_LBL_RESULT_PROPERTYNAME_VERIFYSCREEN_LOCATOR}    ${ACCOUNT_EDIT_LBL_RESULT_PROPERTYNAME_EN} 

    #Cancel button
    Wait Until Contains Element Text Should Be    ${ACCOUNT_ADDEDIT_BTN_CANCEL_LOCATOR}    ${ACCOUNT_ADDEDIT_BTN_CANCEL_EN} 
    #Save button
    Wait Until Contains Element Text Should Be    ${ACCOUNT_ADDEDIT_BTN_SAVE_LOCATOR}    ${ACCOUNT_ADDEDIT_BTN_SAVE_EN} 

Verify over 255 Length [Textbox : Name, Type : string]
    # maxlength="255"
    Wait Should Contain Get Element Attribute    ${ACCOUNT_EDIT_INPUT_NAME_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

    # Type : string 
    Wait Should Contain Get Element Attribute    ${ACCOUNT_EDIT_INPUT_NAME_LOCATOR}    ${ATTRIBUTE_TYPE}    ${DEFAULT_TYPE_TEXT} 
    Wait Until Contains Element Should Be Enabled    ${ACCOUNT_EDIT_INPUT_NAME_LOCATOR}

Verify over 11 Length [Textbox : Maximum Room, Type : int]
    # maxlength="11"
    Wait Should Contain Get Element Attribute    ${ACCOUNT_EDIT_INPUT_MAXIMUMROOM_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_11}
    
    # Type : string 
    Wait Should Contain Get Element Attribute    ${ACCOUNT_EDIT_INPUT_NAME_LOCATOR}    ${ATTRIBUTE_TYPE}    ${DEFAULT_TYPE_TEXT} 
    Wait Until Contains Element Should Be Enabled    ${ACCOUNT_EDIT_INPUT_NAME_LOCATOR}

Verify over 255 Length [Textbox : Phone, Type : string]
    # maxlength="255"
    Wait Should Contain Get Element Attribute    ${ACCOUNT_EDIT_INPUT_NAME_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

    # Type : string 
    Wait Should Contain Get Element Attribute    ${ACCOUNT_EDIT_INPUT_NAME_LOCATOR}    ${ATTRIBUTE_TYPE}    ${DEFAULT_TYPE_TEXT} 
    Wait Until Contains Element Should Be Enabled    ${ACCOUNT_EDIT_INPUT_NAME_LOCATOR}

Verify over 255 Length [Textbox : Taxpayer Identification No, Type : string]
    # maxlength="255"
    Wait Should Contain Get Element Attribute    ${ACCOUNT_EDIT_INPUT_NAME_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

    # Type : string 
    Wait Should Contain Get Element Attribute    ${ACCOUNT_EDIT_INPUT_NAME_LOCATOR}    ${ATTRIBUTE_TYPE}    ${DEFAULT_TYPE_TEXT} 
    Wait Until Contains Element Should Be Enabled    ${ACCOUNT_EDIT_INPUT_NAME_LOCATOR}

Verify [Textbox : Start Date, Type : string]

    # Type : string 
    Wait Should Contain Get Element Attribute    ${ACCOUNT_EDIT_DATE_STARTDATE_INPUT_LOCATOR}    ${ATTRIBUTE_TYPE}    ${DEFAULT_TYPE_TEXT} 
    Wait Until Contains Element Should Be Disabled    ${ACCOUNT_EDIT_DATE_STARTDATE_INPUT_LOCATOR}

Verify [Textbox : Expire Date, Type : string]

    # Type : string 
    Wait Should Contain Get Element Attribute    ${ACCOUNT_EDIT_DATE_EXPIREDATE_INPUT_LOCATOR}    ${ATTRIBUTE_TYPE}    ${DEFAULT_TYPE_TEXT} 
    Wait Until Contains Element Should Be Disabled    ${ACCOUNT_EDIT_DATE_EXPIREDATE_INPUT_LOCATOR}

    # Click Element Page    ${ACCOUNT_ADDEDIT_BTN_CANCEL_LOCATOR}

Verify tooltip in button [button : Disable ,Edit]

    # #Click Edit Account
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
    Log To Console    dataExcelColumn${dataExcelColumn}

    ${lengthDataExcel}=    Get Length    ${dataExcelColumn}
    # Log To Console    lengthDataExcel${lengthDataExcel}
    #valueTable
    @{valArrDataTable}=    Create List    
    FOR    ${i}    IN RANGE    ${lengthDataExcel}
    
        #================ Check Value Table ================
        #${numCol},${fieldArrDataTable},${arrNumfield},${arrNumCol}
        ${setData}=    Set Data for check value table Property in Account EN
        Log To Console    setData${setData}
        ${no}=    Convert To String    ${i+1}
        ${data}=    Evaluate    {"no":"${no}", "propertyName":"${dataExcelColumn[${i}]}"}

        Append To List    ${valArrDataTable}    ${data} 
        Log To Console    valArrDataTable${valArrDataTable}

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
    
    #button : Disable
    Wait Until Contains Element Should Be Visible    ${ACCOUNT_EDIT_ICON_POPUPDISABLE1_LOCATOR}
    Mouse Down    ${ACCOUNT_EDIT_ICON_POPUPDISABLE1_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ACCOUNT_EDIT_LBL_POPUPDISABLE_EN_VERIFYSCREEN_LOCATOR}    ${ACCOUNT_EDIT_LBL_POPUPDISABLE_EN} 
    
    #button : Edit
    Wait Until Contains Element Should Be Visible    ${ACCOUNT_EDIT_ICON_POPUPEDIT_LOCATOR}
    Mouse Down    ${ACCOUNT_EDIT_ICON_POPUPEDIT_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ACCOUNT_EDIT_LBL_POPUPEDIT_VERIFYSCREEN_EN_LOCATOR}    ${ACCOUNT_EDIT_LBL_POPUPEDIT_EN} 

Verify screen popup "confirm disable"
    ${nameProperty}=    Get Text String    ${ACCOUNT_EDIT_LBL_RESULT_ROW1COL1_LOCATOR}
	Log To Console    nameProperty${nameProperty}
    #Click disable button		
    Check Popup Enable and Disable    ${ACCOUNT_EDIT_ICON_POPUPDISABLE1_LOCATOR}    ${ALERT_TITLE_DISABLE_EN}    ${ALERT_CONTENT_DISABLE1_EN} ${nameProperty}${ALERT_CONTENT_DISABLE2_EN}    ${ALERT_BTN_CONFIRM_EN}    ${ALERT_BTN_CANCEL_EN}
    
Verify tooltip in button [button : Enable]    
    ${nameProperty}=    Get Text String    ${ACCOUNT_EDIT_LBL_RESULT_ROW1COL1_LOCATOR}
    Log To Console    nameProperty${nameProperty}
    #Click disable button        
    Click Enable and Disable and Check Text    ${ACCOUNT_EDIT_ICON_POPUPDISABLE1_LOCATOR}    ${ALERT_TITLE_DISABLE_EN}    ${ALERT_CONTENT_DISABLE1_EN} ${nameProperty}${ALERT_CONTENT_DISABLE2_EN}    ${ALERT_BTN_CONFIRM_EN}    ${ALERT_BTN_CANCEL_EN}    ${VALUE_RESULTDESCRIPTION_SUCCESS_EN}
    
    Sleep    1s
    #button : Enable
    Wait Until Contains Element Should Be Visible    ${ACCOUNT_EDIT_ICON_POPUPENABLE1_LOCATOR}
    Mouse Down    ${ACCOUNT_EDIT_ICON_POPUPENABLE1_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ACCOUNT_EDIT_LBL_POPUPENABLE_EN_VERIFYSCREEN_LOCATOR}    ${ACCOUNT_EDIT_LBL_POPUPENABLE_EN}
    
Verify screen popup "confirm enable"
    ${nameProperty}=    Get Text String    ${ACCOUNT_EDIT_LBL_RESULT_ROW1COL1_LOCATOR}
	Log To Console    nameProperty${nameProperty}
    #Click enable button		
    Check Popup Enable and Disable    ${ACCOUNT_EDIT_ICON_POPUPENABLE1_LOCATOR}    ${ALERT_TITLE_ENABLE_EN}    ${ALERT_CONTENT_ENABLE1_EN} ${nameProperty}${ALERT_CONTENT_DELETE2_EN}    ${ALERT_BTN_CONFIRM_EN}    ${ALERT_BTN_CANCEL_EN}

    Click Element Page    ${ACCOUNT_ADDEDIT_BTN_CANCEL_LOCATOR}

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${ACCOUNT_EDIT_M16_0_1_3_000_SUCCESS_SCREENSHOT}
	
################## Generic Test Case Teardown ###################
	[Teardown]    Generic Test Case Teardown Account And Delete Property EN    ${ACCOUNT_STAMPDELETEPROPERTIES_FILENAME_VALUE}

