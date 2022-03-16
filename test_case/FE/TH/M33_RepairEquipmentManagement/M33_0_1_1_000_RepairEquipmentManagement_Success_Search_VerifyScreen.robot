*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot

*** Test Case ***
################### [Search] RepairEquipmentManagement ###################
M33_0_1_1_000_RepairEquipmentManagement_Success_Search_VerifyScreen [Verify screen page "Search Repair equipment management"]
    [Documentation]    Step is :
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. click setting
    ...    4. click menu Repair Equipment Management

    [Setup]    Open Browser To Login Page Super Admin

    Log To Console    ${\n}=========== [Search] RepairEquipmentManagement ===============

    #========== Click Setting Menu Repair Equipment Management ======
    Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_REPAIREQUIPMENTMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_REPAIREQUIPMENTMANAGEMENT_TH}    ${MENU_LBL_SETTING_REPAIREQUIPMENTMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_REPAIREQUIPMENTMANAGEMENT_TH}   ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_REPAIREQUIPMENTINFORMATION_HEADER_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_REPAIREQUIPMENTINFORMATION_HEADER_TH}    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_REPAIREQUIPMENTINFORMATION_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_REPAIREQUIPMENTINFORMATION_TH}

Verify screen page Search Repair equipment management
    #========== Check Repair Equipment Management Screen ==========
    #Add Equipment button
    Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_BTN_CREATE_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_BTN_CREATE_TH}
    Wait Until Contains Element Should Be Enabled    ${REPAIREQUIPMENTINFORMATION_BTN_CREATE_LOCATOR}

    #Textbox Device name
    Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_DEVICENAME_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_DEVICENAME_TH}

    #Dropdown List Status
    Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_STATUS_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_STATUS_TH}
    Element Text Should Be Value Dropdown    ${REPAIREQUIPMENTINFORMATION_SEARCH_DDL_STATUS_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_SEARCH_DDL_STATUS_LIST_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_SEARCH_DDL_CLASS_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_SEARCH_DDL_STATUS_TH_VALUE}
    #Close button
    Press Keys    ${NONE}    ${ESC}
    Sleep    0.5s

    #Search button
    Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_SEARCH_BTN_SEARCH_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_SEARCH_BTN_SEARCH_TH} 
	Wait Until Contains Element Should Be Enabled    ${REPAIREQUIPMENTINFORMATION_SEARCH_BTN_SEARCH_LOCATOR}
	#Clear button
	Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_SEARCH_BTN_CLEAR_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_SEARCH_BTN_CLEAR_TH} 
	Wait Until Contains Element Should Be Enabled    ${REPAIREQUIPMENTINFORMATION_SEARCH_BTN_CLEAR_LOCATOR}
    
    #Column No.
    Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_RESULT_NO_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_RESULT_NO_TH}

    #Column Device Name
    Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_RESULT_DEVICENAME_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_RESULT_DEVICENAME_TH}

    #Column Remark
    Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_RESULT_REMARK_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_RESULT_REMARK_TH}

    #Column Status
    Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_RESULT_STATUS_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_RESULT_STATUS_TH}

Verify screen : legth 125 and type is string in Device name
    Wait Should Contain Get Element Attribute    ${REPAIREQUIPMENTINFORMATION_SEARCH_TXT_DEVICENAME_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify tooltip in button
    #button : Enable icon, Disable icon, Edit icon, Delete icon
    #------- Create data -------
    Log To Console    ${\n}========== [Create] Repaire Equipment Information ==========
    Create Repair Equipment Information input all data
    
    #------- Check Value in Result Table -------
    Check Value Table Repair Equipment Management
	Sleep    0.5s

    #Disable icon
    Wait Until Contains Element Should Be Visible    ${REPAIREQUIPMENTINFORMATION_BTN_DISABLE_LOCATOR}
    Mouse Down    ${REPAIREQUIPMENTINFORMATION_BTN_DISABLE_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_LBL_DISABLE_TH_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_LBL_DISABLE_TH}
    #Edit icon
    Wait Until Contains Element Should Be Visible    ${REPAIREQUIPMENTINFORMATION_BTN_EDIT_LOCATOR}
    Mouse Down    ${REPAIREQUIPMENTINFORMATION_BTN_EDIT_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_LBL_EDIT_TH_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_LBL_EDIT_TH}
    #Delete icon
    Wait Until Contains Element Should Be Visible    ${REPAIREQUIPMENTINFORMATION_BTN_DELETE_LOCATOR}
    Mouse Down    ${REPAIREQUIPMENTINFORMATION_BTN_DELETE_LOCATOR}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_LBL_DELETE_TH_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_LBL_DELETE_TH}

    #Enable icon
    # Click Change Status Disable To Enable
    # Sleep    1s
    # Wait Until Contains Element Should Be Visible    ${REPAIREQUIPMENTINFORMATION_BTN_ENABLE_LOCATOR}
    # Mouse Down    ${REPAIREQUIPMENTINFORMATION_BTN_ENABLE_LOCATOR}
	# Sleep    0.5s
	# Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_LBL_ENABLE_TH_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_LBL_ENABLE_TH}

Verify default number button
    #Limit 20
    Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_BTN_20_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_BTN_20}
    ${CheckDefault}=    Selenium2Library.Get Element Attribute    ${REPAIREQUIPMENTINFORMATION_BTN_20_LOCATOR}    class
    Should Be Equal    dx-page-size dx-selection    ${CheckDefault}
    #Limit 50
    Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_BTN_50_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_BTN_50}
    #Limit 100
    Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_BTN_100_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_BTN_100}
    #Limit 1000
    Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_BTN_1000_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_BTN_1000}

    #Check Paging
    ${replacePage}=    Paging Replace    ${rowcountSearchRepairEquipment}
	${paging}=    Set Variable    ${replacePage[0]}
	Sleep    0.5s
	Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_LBL_PagesXFromY_LOCATOR}    ${paging}

	Wait Until Contains Element Should Be Visible    ${REPAIREQUIPMENTINFORMATION_ICON_ARRORWLEFT_LOCATOR}
	Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_LBL_PAGE_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_LBL_PAGE_1}
	Wait Until Contains Element Should Be Visible    ${REPAIREQUIPMENTINFORMATION_ICON_ARRORWRIGHT_LOCATOR}

Verify list and default in Status dropdown
    Wait Should Contain Get Element Attribute    ${REPAIREQUIPMENTINFORMATION_SEARCH_DDL_STATUS_PLACEHOLDER_LOCATOR}    ${ATTRIBUTE_PLACEHOLDER_DX}    ${REPAIREQUIPMENTINFORMATION_SEARCH_DDL_STATUS_PLACEHOLDER_VALUE} 

# Verify screen popup "confirm disable"
    #รอแก้บัค titel
    #  Check Popup Disable TH    ${REPAIREQUIPMENTINFORMATION_BTN_DISABLE_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_DEVICENAMETH_VALUE1}
#     ${enableDevice}=    Selenium2Library.Get Text    ${REPAIREQUIPMENTINFORMATION_SEARCH_DEVICENAME_VALUE_LOCATOR}
#     ${enableContent}=    Set Variable    คุณต้องการเปิดใช้งาน ${enableDevice} หรือไม่ ?
#     Click Enable and Disable and Check Text    ${REPAIREQUIPMENTINFORMATION_BTN_ENABLE_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_CHANGESTATUS_LBL_TITLE_TH}    ${enableContent}    ${REPAIREQUIPMENTINFORMATION_CHANGESTATUS_BTN_CONFIRM_TH}    ${REPAIREQUIPMENTINFORMATION_CHANGESTATUS_BTN_CANCEL_TH}    ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}

# Verify screen popup "confirm disable"
#     ${disableDevice}=    Selenium2Library.Get Text    ${REPAIREQUIPMENTINFORMATION_SEARCH_DEVICENAME_VALUE_LOCATOR}
#     ${disableContent}=    Set Variable    คุณต้องการปิดใช้งาน ${disableDevice} หรือไม่ ?
#     Check Popup Enable and Disable    ${REPAIREQUIPMENTINFORMATION_BTN_DISABLE_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_CHANGESTATUS_LBL_TITLE_TH}    ${disableContent}    ${REPAIREQUIPMENTINFORMATION_CHANGESTATUS_BTN_CONFIRM_TH}    ${REPAIREQUIPMENTINFORMATION_CHANGESTATUS_BTN_CANCEL_TH}

# 	#capture page screenshot
#     Selenium2Library.Capture Page Screenshot    ${REPAIREQUIPMENTINFORMATION_SEARCH_M33_0_1_1_000_SUCCESS_SCREENSHOT}

# ################### Close Browser ###################
#     # [Teardown]    Generic Test Case Teardown Repair Equipment Management    ${REPAIREQUIPMENTINFORMATION_DEVICENAMETH_VALUE1}
    [Teardown]    Delete Test Data and Close Browser    ${REPAIREQUIPMENTINFORMATION_BTN_DELETE_LOCATOR}    ${ALERT_TITLE_DELETE_TH}   ${VALUE_RESULTDESCRIPTION_SUCCESS_TH}