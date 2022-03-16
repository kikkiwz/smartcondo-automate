*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Edit] RepairEquipmentManagement ###################
M33_1_1_3_000_RepairEquipmentManagement_Success_Edit_VerifyAction [Verify Action page "Search Repair equipment management"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. click setting
    ...    4. click master 
    ...    5. click menu Repair equipment management 
    ...    6. click edit button 

    [Setup]    Open Browser To Login Page Super Admin

    #-------- Click Setting Menu Repair Equipment Management --------
    Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_REPAIREQUIPMENTMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_REPAIREQUIPMENTMANAGEMENT_TH}    ${MENU_LBL_SETTING_REPAIREQUIPMENTMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_REPAIREQUIPMENTMANAGEMENT_TH}   ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_REPAIREQUIPMENTINFORMATION_HEADER_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_REPAIREQUIPMENTINFORMATION_HEADER_TH}    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_REPAIREQUIPMENTINFORMATION_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_REPAIREQUIPMENTINFORMATION_TH}



Verify Action : click save button- input all field data 

    ########################### Create Data ###########################
    Create Repair Equipment Information input all data

    Edit Repair Equipment Information input all data


Verify Action : click X button
    #Click Button Edit
    Click Element Page    ${REPAIREQUIPMENTINFORMATION_BTN_EDIT_LOCATOR}

    #Edit Repair Equipment Information
	Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_ADD_LBL_EDITREPAIREQUIPMENTINFORMATION_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_ADD_LBL_EDITREPAIREQUIPMENTINFORMATION_TH} 

    #Click Close
    Click Element Page    ${REPAIREQUIPMENTINFORMATION_BTN_CLOSE_LOCATOR}

Verify Action : click cancel button
    #Click Button Edit
    Click Element Page    ${REPAIREQUIPMENTINFORMATION_BTN_EDIT_LOCATOR}

    #Edit Repair Equipment Information
	Wait Until Contains Element Text Should Be    ${REPAIREQUIPMENTINFORMATION_ADD_LBL_EDITREPAIREQUIPMENTINFORMATION_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_ADD_LBL_EDITREPAIREQUIPMENTINFORMATION_TH} 

    #Click Cancel
    Click Element Page    ${REPAIREQUIPMENTINFORMATION_ADDEDIT_BTN_CANCEL_LOCATOR}

    #Click delete button
    Click Delete Data TH    ${REPAIREQUIPMENTINFORMATION_BTN_DELETE_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_DEVICENAMETH_VALUE2}



Verify Action : click save button- input require field data
    ########################## Create Data ###########################
    Create Repair Equipment Information input require field data
    sleep    3s
    Edit Repair Equipment Information input require field data

    # Click delete button
    Click Delete Data TH    ${REPAIREQUIPMENTINFORMATION_BTN_DELETE_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_DEVICENAMETH_VALUE2}


	#capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${REPAIREQUIPMENTINFORMATION_EDIT_M33_1_1_3_000_SUCCESS_SCREENSHOT}

 ################### Close Browser ###################
    Close Browser
