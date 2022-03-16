*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Edit] RepairEquipmentManagement ###################
M33_0_1_3_000_RepairEquipmentManagement_Success_Edit_VerifyScreen [Verify Action page "Search Repair equipment management"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. click setting
    ...    4. click master 
    ...    5. click menu Repair equipment management s
    ...    6. click Edit button 

    [Setup]    Open Browser To Login Page Super Admin

    #-------- Click Setting Menu Repair Equipment Management --------
    Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_REPAIREQUIPMENTMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_REPAIREQUIPMENTMANAGEMENT_TH}    ${MENU_LBL_SETTING_REPAIREQUIPMENTMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_REPAIREQUIPMENTMANAGEMENT_TH}   ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_REPAIREQUIPMENTINFORMATION_HEADER_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_REPAIREQUIPMENTINFORMATION_HEADER_TH}    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_REPAIREQUIPMENTINFORMATION_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_REPAIREQUIPMENTINFORMATION_TH}

    ########################## Create Data ###########################
    Create Repair Equipment Information input all data

Verify screen page "Edit employee management system"
    #Click Button Create
    Click Element Page    ${REPAIREQUIPMENTINFORMATION_BTN_EDIT_LOCATOR}

    #Create Repair Equipment Information
	Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_ADD_LBL_EDITREPAIREQUIPMENTINFORMATION_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_ADD_LBL_EDITREPAIREQUIPMENTINFORMATION_TH} 
   
	# ชื่อ ภาษาไทย
	Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_LBL_DEVICENAMETH_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_TXT_DEVICENAMETH_TH}
	Wait Until Contains Element Should Be Enabled    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_TXT_DEVICENAMETH_LOCATOR}

    # ชื่อ อังกฤษ
	Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_LBL_DEVICENAMEEN_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_TXT_DEVICENAMEEN_TH}
	Wait Until Contains Element Should Be Enabled    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_TXT_DEVICENAMEEN_LOCATOR}

    # หมายเหตุ
	Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_LBL_REMARK_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_TXT_REMARK_TH}
	Wait Until Contains Element Should Be Enabled    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_TXT_REMARK_LOCATOR}

    # Button Save
    Wait Until Contains Element Should Be Enabled    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}

    # Button Cancel
    Wait Until Contains Element Should Be Enabled    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_BTN_CANCEL_LOCATOR}

Verify screen : legth 255 and type is String in - Name (Thai) - Name (English)

    #legth 255 and type is String in - Name (Thai)
    Wait Should Contain Get Element Attribute    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_TXT_DEVICENAMETH_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

    #legth 255 and type is String in - Name (English)
    Wait Should Contain Get Element Attribute    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_TXT_DEVICENAMEEN_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

    #Click Cancel
    Click Element Page    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_BTN_CANCEL_LOCATOR}


    #Click delete button
    Click Delete Data TH    ${REPAIREQUIPMENTINFORMATION_BTN_DELETE_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_DEVICENAMETH_VALUE1}



	#capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${REPAIREQUIPMENTINFORMATION_EDIT_M33_0_1_3_000_SUCCESS_SCREENSHOT}

 ################### Close Browser ###################
    Close Browser
