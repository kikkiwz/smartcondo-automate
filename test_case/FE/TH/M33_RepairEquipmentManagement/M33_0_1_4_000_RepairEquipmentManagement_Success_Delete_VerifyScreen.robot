*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Delete] RepairEquipmentManagement ###################
M33_0_1_4_000_RepairEquipmentManagement_Success_Delete_VerifyScreen [Verify Action page "Search Repair equipment management"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. click setting
    ...    4. click master 
    ...    5. click menu Repair equipment management s
    ...    6. click Delete button 

    [Setup]    Open Browser To Login Page Super Admin

    #-------- Click Setting Menu Repair Equipment Management --------
    Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_REPAIREQUIPMENTMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_REPAIREQUIPMENTMANAGEMENT_TH}    ${MENU_LBL_SETTING_REPAIREQUIPMENTMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_REPAIREQUIPMENTMANAGEMENT_TH}   ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_REPAIREQUIPMENTINFORMATION_HEADER_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_REPAIREQUIPMENTINFORMATION_HEADER_TH}    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_REPAIREQUIPMENTINFORMATION_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_SEARCH_LBL_REPAIREQUIPMENTINFORMATION_TH}

    ########################## Create Data ###########################
    Create Repair Equipment Information input all data


Verify screen popup confirm delete 
    #Check popup
    Check Popup Delete TH    ${REPAIREQUIPMENTINFORMATION_BTN_DELETE_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_DEVICENAMETH_VALUE1}
    #Click delete button
    Click Delete Data TH    ${REPAIREQUIPMENTINFORMATION_BTN_DELETE_LOCATOR}    ${REPAIREQUIPMENTINFORMATION_DEVICENAMETH_VALUE1}



	#capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${REPAIREQUIPMENTINFORMATION_DELETE_M33_0_1_4_000_SUCCESS_SCREENSHOT}

 ################### Close Browser ###################
    Close Browser
