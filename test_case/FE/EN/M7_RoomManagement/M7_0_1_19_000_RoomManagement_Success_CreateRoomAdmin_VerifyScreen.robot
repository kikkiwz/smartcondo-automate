*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***

M7_0_1_19_000_RoomManagement_Success_CreateRoomAdmin_VerifyScreen [ Verify Screen ]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click choose property
	...    4. choose dropdown
	...    5. click search button
	...    6. create floor 
	...    7. click create room button 

    [Setup]    Open Browser To Login Page SCUser EN
   	
   Log To Console    ${\n}=========== Search Room details [Admin] ===============


Verify screen page "Create Room"
    #Account
	Select Dropdown    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_ACCOUNT_LOCATOR}    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_ACCOUNT_LIST_LOCATOR}    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_ACCOUNT_CLASS_LOCATOR}    ${ROOMMANAGEMENT_ACCOUNT_EN_VALUE1}
	Sleep    0.5s
	#Property
	Select Dropdown    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_PROPERTY_LOCATOR}    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_PROPERTY_LIST_LOCATOR}    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_PROPERTY_CLASS_LOCATOR}    ${ROOMMANAGEMENT_PROPERTY_EN_VALUE1}
	Sleep    0.5s
	#Building
	Select Dropdown    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_BUILDING_LOCATOR}    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_BUILDING_LIST_LOCATOR}    ${ROOMMANAGEMENT_SEARCHADMIN_DDL_BUILDING_CLASS_LOCATOR}    ${ROOMMANAGEMENT_BUILDING_EN_VALUE1}
	Sleep    0.5s
	#Click Search
	Click Element Page    ${ROOMMANAGEMENT_SEARCH_BTN_SEARCH_LOCATOR}
	Sleep    1s

	Wait Element Visible    ${ROOMMANAGEMENT_SEARCHADMIN_LBL_REMARK_LOCATOR}

	#Click Add
	Click Element Page    ${ROOMMANAGEMENT_SEARCHADMIN_BTN_ADDROOM_LOCATOR}

	# Create room
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_CREATEROOM_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_CREATEROOM_EN}

	# Room no
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_ROOMNO_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_ROOMNO_EN}
	Wait Until Contains Element Should Be Enabled    ${ROOMMANAGEMENT_ADDEDITADMIN_TXT_ROOMNO_LOCATOR}

	# House no 
    Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_HOUSENO_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_HOUSENO_EN}
	Wait Until Contains Element Should Be Enabled    ${ROOMMANAGEMENT_ADDEDITADMIN_TXT_HOUSENO_LOCATOR}

	# Area (square meter) 
    Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_AREA_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_AREA_EN}
	Wait Until Contains Element Should Be Enabled    ${ROOMMANAGEMENT_ADDEDITADMIN_TXT_AREA_LOCATOR}

	# Proprietary ratio 
    Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_PROPRIETARYRATIO_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_PROPRIETARYRATIO_EN}
	Wait Until Contains Element Should Be Enabled    ${ROOMMANAGEMENT_ADDEDITADMIN_TXT_PROPRIETARYRATIO_LOCATOR}

	# Water meter no
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_WATERMETERNO_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_WATERMETERNO_EN}
	Wait Until Contains Element Should Be Enabled    ${ROOMMANAGEMENT_ADDEDITADMIN_TXT_WATERMETERNO_LOCATOR}

	# Electric meter no
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_ELECTRICMETERNO_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_ELECTRICMETERNO_EN}
	Wait Until Contains Element Should Be Enabled    ${ROOMMANAGEMENT_ADDEDITADMIN_TXT_ELECTRICMETERNO_LOCATOR}

	# Water meter limit unit
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_WATERMETERLIMITUNIT_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_WATERMETERLIMITUNIT_EN}
	Wait Until Contains Element Should Be Enabled    ${ROOMMANAGEMENT_ADDEDITADMIN_DDL_WATERMETERLIMITUNIT_LOCATOR}

	# Electric meter limit unit
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_ELECTRICMETERLIMITUNIT_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_ELECTRICMETERLIMITUNIT_EN}
	Wait Until Contains Element Should Be Enabled    ${ROOMMANAGEMENT_ADDEDITADMIN_DDL_ELECTRICMETERLIMITUNIT_LOCATOR}


	#Cancel button
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_BTN_CANCEL_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_BTN_CANCEL_EN} 
	#Save button
	Wait Until Contains Element Text Should Be    ${ROOMMANAGEMENT_ADDEDITADMIN_BTN_SAVE_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_BTN_SAVE_EN} 


Verify screen : legth 125 and type is string in Room no
	# maxlength="125"
	Wait Should Contain Get Element Attribute    ${ROOMMANAGEMENT_ADDEDITADMIN_TXT_ROOMNO_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 125 and type is string in House no
	# maxlength="125"
	Wait Should Contain Get Element Attribute    ${ROOMMANAGEMENT_ADDEDITADMIN_TXT_HOUSENO_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 125 and type is string in Water meter no
	# maxlength="125"
	Wait Should Contain Get Element Attribute    ${ROOMMANAGEMENT_ADDEDITADMIN_TXT_WATERMETERNO_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen : legth 125 and type is string in Electric meter no
	# maxlength="125"
	Wait Should Contain Get Element Attribute    ${ROOMMANAGEMENT_ADDEDITADMIN_TXT_ELECTRICMETERNO_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_125}

Verify screen save confirm popup

	Check Popup ConfirmSave EN    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_INCOMEDETAILS_LOCATOR}    ${ROOMMANAGEMENT_ADDEDITADMIN_LBL_INCOMEDETAILS_EN}

	#Click Close
	Click Element Page  ${ROOMMANAGEMENT_BTN_CLOSE_LOCATOR}

	#capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${ROOMMANAGEMENT_CREATEROOMADMIN_M7_0_1_19_000_SUCCESS_SCREENSHOT}

	################### Close Browser ###################
    close Browser