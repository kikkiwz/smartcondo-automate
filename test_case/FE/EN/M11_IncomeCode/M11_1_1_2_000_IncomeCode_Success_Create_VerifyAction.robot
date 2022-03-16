*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [Create] IncomeCodeManagement ###################
M11_1_1_2_000_IncomeCode_Success_Create_VerifyAction [VerifyAction "Create Income Code"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Income Code
    ...    5. click create button
    ...    6. click delete button
    
    [Setup]    Open Browser To Login Page Super Admin EN
        
    Log To Console    ${\n}=========== [Create] IncomeCodeManagement =============== 

    #========== Click Setting Menu IncomecodeManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_EN}    ${MENU_LBL_MASTERMANAGEMENT_INCOMECODEMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_INCOMECODEMANAGEMENT_EN}   ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_HEADER_LOCATOR}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_HEADER_EN}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_LOCATOR}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_EN}

    #========== Check IncomeCodeManagement ======
    #Click Create IncomeCode
    Click Element Page    ${INCOMECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s

    #Create IncomeCode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_EN}

Verify action : click Create [check Value in dropdown Group Type]
    
	# Wait Should Contain Get Element Attribute    ${SETTINGBANKACCOUNT_ADDEDIT_LBL_BANKACCOUNT_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${DEFAULT_DDL_SELECTBANKACCOUNT_EN} 
	${selectGroupType}=    Request DB Data GroupType
    ${dataGroupType}=    Set Variable    ${selectGroupType}[0]
	@{valArrDataNameTh}=    Set Variable    ${selectGroupType}[2]
	@{valArrDataNameEn}=    Set Variable    ${selectGroupType}[3]
	# Log To Console    [dataGroupType] : ${dataGroupType}
	# Log To Console    [valArrDataNameTh] : ${valArrDataNameTh}
	# Log To Console    [valArrDataNameEn] : ${valArrDataNameEn}
	Element Text Should Be Value Dropdown    ${INCOMECODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${INCOMECODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${INCOMECODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${valArrDataNameEn}
	#close dropdrown

	#Click X
    Click Element Page    ${INCOMECODE_BTN_CLOSE_LOCATOR}
    Sleep    0.5s

Verify Action : click Create Mulctcode [please fill require information ,select dropdown require and show toase success message ]

    #Create data
    Create IncomeCode input require field data EN 

    Generic Test Case Teardown IncomeCode not Close Browser EN    ${DATA_MULCTMETHOD_NAMETH_VALUE}    ${mulctCodeId}    ${mulctMethodId}

Verify Action : click Create Mulctcode [please all fill and select data.]

    # Create data
    Create IncomeCode input all field data EN 

Verify Action : click X button   
    #Click Create Mulctcode
    Click Element Page    ${INCOMECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create IncomeCode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_EN}

    #Click X button    
    Click Element Page    ${INCOMECODE_BTN_CLOSE_LOCATOR}

    #NameHader
    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_HEADER_LOCATOR}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_HEADER_EN} 
    
    #NamePage
    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_LOCATOR}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_EN} 

Verify Action : click cancel button

    #Click Create Mulctcode
    Click Element Page    ${INCOMECODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create IncomeCode
    Wait Until Contains Element Text Should Be    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_LOCATOR}    ${INCOMECODE_ADD_LBL_CREATEINCOMECODE_EN}

    #Click Cancel button
    Click Element Page    ${INCOMECODE_ADDEDIT_BTN_CANCEL_LOCATOR}

    #NameHader
    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_HEADER_LOCATOR}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_HEADER_EN} 
    
    #NamePage
    Wait Until Contains Element Text Should Be    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_LOCATOR}    ${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_EN} 

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${INCOMECODE_CREATE_M11_1_1_2_000_SUCCESS_SCREENSHOT}
    
################### Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown IncomeCode EN    ${DATA_MULCTMETHOD_NAMETH_VALUE}    ${mulctCodeId}    ${mulctMethodId}

