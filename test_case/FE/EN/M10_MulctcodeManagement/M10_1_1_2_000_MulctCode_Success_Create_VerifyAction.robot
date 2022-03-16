*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
    
*** Test Cases ***
################### [Create] MulctcodeManagement ###################
M10_1_1_2_000_MulctCode_Success_Create_VerifyAction [VerifyAction "Create Mulctcode"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. main menu MasterSetting
    ...    4. click menu Mulct Code
    ...    5. click create button
    ...    6. Create data
    ...    7. click delete button
    
    [Setup]    Open Browser To Login Page Super Admin EN
        
    Log To Console    ${\n}=========== [Create] MulctcodeManagement =============== 

    #========== Click Setting Menu MulctcodeManagement ======
    Click Setting Menu Master   ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_EN}    ${MENU_LBL_MASTERMANAGEMENT_MULCTCODEMANAGEMENT_LOCATOR}    ${MENU_LBL_MASTERMANAGEMENT_MULCTCODEMANAGEMENT_EN}   ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_HEADER_LOCATOR}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_HEADER_EN}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_LOCATOR}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_EN}
    
	${mulctConditionDetail}=    Set Variable    [{"timePastDeadline": 1, "dateToFlag": ${FALSE_LOWWER}, "total": 100 }, {"dateToFlag": ${TRUE_LOWWER}, "timePastDeadline": 9999, "total": 1}]
    #Create data MulctMethod receive mulctMethodId Set Global
    Run keyword And Continue On Failure    Request CreateData for MulctMethod      ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    1    1    1    1    1    ${mulctConditionDetail}    ค่าปรับ

    #========== Check MulctcodeManagement ======
    #Click Create Mulctcode
    Click Element Page    ${MULCTCODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create Mulctcode
    Wait Until Contains Element Text Should Be    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_LOCATOR}    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_EN} 


Verify action : click Create [check Value in dropdown Group Type]
    
	# Wait Should Contain Get Element Attribute    ${SETTINGBANKACCOUNT_ADDEDIT_LBL_BANKACCOUNT_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${DEFAULT_DDL_SELECTBANKACCOUNT_EN} 
	${selectGroupType}=    Request DB Data GroupType
    ${dataGroupType}=    Set Variable    ${selectGroupType}[0]
	@{valArrDataNameTh}=    Set Variable    ${selectGroupType}[2]
	@{valArrDataNameEn}=    Set Variable    ${selectGroupType}[3]
	# Log To Console    [dataGroupType] : ${dataGroupType}
	# Log To Console    [valArrDataNameTh] : ${valArrDataNameTh}
	# Log To Console    [valArrDataNameEn] : ${valArrDataNameEn}
	Element Text Should Be Value Dropdown    ${MULCTCODE_ADD_DDL_GROUPTYPE_LOCATOR}    ${MULCTCODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    ${valArrDataNameEn}
	#close dropdrown

	#Click Cancel Mulctcode
    Click Element Page    ${MULCTCODE_ADDEDIT_BTN_CANCEL_LOCATOR}
    Sleep    0.5s

Verify action : click Create [check Value in dropdown Mulct Method]
    
    #Click Create Mulctcode
    Click Element Page    ${MULCTCODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s

    #Create Mulctcode
    Wait Until Contains Element Text Should Be    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_LOCATOR}    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_EN} 

	# Wait Should Contain Get Element Attribute    ${SETTINGBANKACCOUNT_ADDEDIT_LBL_BANKACCOUNT_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${DEFAULT_DDL_SELECTBANKACCOUNT_EN} 
	${selectMulctMethod}=    Request DB Data MulctMethod
    ${dataMulctMethod}=    Set Variable    ${selectMulctMethod}[0]
	@{valArrDataNameTh}=    Set Variable    ${selectMulctMethod}[2]
	Log To Console    [dataMulctMethod] : ${dataMulctMethod}
	Log To Console    [valArrDataNameTh] : ${valArrDataNameTh}
    Element Text Should Be Value Dropdown    ${MULCTCODE_ADD_DDL_MULCTMETHOD_LOCATOR}    ${MULCTCODE_ADD_DDL_MULCTMETHOD_LIST_LOCATOR}    ${MULCTCODE_ADD_DDL_MULCTMETHOD_CLASS_LOCATOR}    ${valArrDataNameTh}
	#close dropdrown

    #Delete MulctMethod
    Request DeleteData for MulctMethod     ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${mulctMethodId}

	#Click Cancel Mulctcode
    Click Element Page    ${MULCTCODE_ADDEDIT_BTN_CANCEL_LOCATOR}
    Sleep    0.5s

Verify Action : click Create Mulctcode [please fill require information ,select dropdown require and show toase success message ]

    #Create data
    Create MulctCode input require field data EN

    #Click delete button
    ${MulctCode}=    Get Text String    ${MULCTCODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # ${MulctCode}=    Set Variable    null
    # Log To Console    MulctCode${MulctCode}
    Click Delete Data Confirm EN     ${MULCTCODE_BTN_DELETE_LOCATOR}    ${MulctCode}

    #Delete MulctMethod
    Request DeleteData for MulctMethod     ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${mulctMethodId}
  
Verify Action : click Create Mulctcode [please all fill and select data.]

    #Create data
    Create MulctCode input all field data EN

    # #Click delete button
    # ${MulctCode}=    Get Text String    ${MULCTCODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}
    # # Log To Console    MulctCode${MulctCode}

    # #Click delete button
    # Click Delete Data TH    ${MULCTCODE_BTN_DELETE_LOCATOR}    ${MulctCode}

Verify Action : click X button   
    #Click Create Mulctcode
    Click Element Page    ${MULCTCODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create Mulctcode
    Wait Until Contains Element Text Should Be    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_LOCATOR}    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_EN}

    #Click X button    
    Click Element Page    ${MULCTCODE_BTN_CLOSE_LOCATOR}

    #NameHader
    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_HEADER_LOCATOR}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_HEADER_EN} 
    
    #NamePage
    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_LOCATOR}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_EN} 

Verify Action : click cancel button

    #Click Create Mulctcode
    Click Element Page    ${MULCTCODE_BTN_CREATE_LOCATOR}
    Sleep    0.5s
    
    #Create Mulctcode
    Wait Until Contains Element Text Should Be    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_LOCATOR}    ${MULCTCODE_ADD_LBL_CREATEMULCTCODE_EN}

    #Click Cancel button
    Click Element Page    ${MULCTCODE_ADDEDIT_BTN_CANCEL_LOCATOR}

    #NameHader
    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_HEADER_LOCATOR}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_HEADER_EN} 
    
    #NamePage
    Wait Until Contains Element Text Should Be    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_LOCATOR}    ${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_EN} 

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${MULCTCODE_CREATE_M10_1_1_2_000_SUCCESS_SCREENSHOT}
    
################### Generic Test Case Teardown ###################
    [Teardown]    Generic Test Case Teardown MulctCode EN    ${MULCTCODE_MULCTMETHOD_NAMETH_VALUE}    ${mulctMethodId}
