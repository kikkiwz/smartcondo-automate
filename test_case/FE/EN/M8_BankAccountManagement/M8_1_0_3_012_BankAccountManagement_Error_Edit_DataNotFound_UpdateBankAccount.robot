*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
	
*** Test Cases ***
################### [Edit] BankAccountManagement ###################
M8_1_0_3_012_BankAccountManagement_Error_Edit_DataNotFound_UpdateBankAccount [Data Not Found : updateBankAccount]
    [Documentation]    Step is :    
	...    1. open link : https://login.smartcondo.net/en  
	...    2. login
	...    3. click setting
	...    4. click Bank Account Management
	...    5. Create Data
	...    6. Delete Data
    ...    7. click edit button

    [Setup]    Open Browser To Login Page Super Admin EN

    #========== Click Setting Menu BankAccountManagement ======
	Click Setting Menu    ${MENU_LBL_HOMETOP_ADMIN_BANKACCOUNTMANAGEMENT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_BANKACCOUNTMANAGEMENT_EN}    ${MENU_LBL_SETTING_BANKACCOUNTMANAGEMENT_LOCATOR}    ${MENU_LBL_SETTING_BANKACCOUNTMANAGEMENT_EN}   ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_HEADER_EN}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_LOCATOR}    ${BANKACCOUNTINFORMATION_SEARCH_LBL_BANKACCOUNTINFORMATION_EN}
	
	#========== Create Bank Account Management ======
	Log To Console    ${\n}=========== [Create] BankAccountManagement ===============
	Create Bank Account Management input require field data EN

	Log To Console    ${\n}=========== [Edit] BankAccountManagement =============== 
	
    #Click Edit Bank account
	Click Element Page    ${BANKACCOUNTINFORMATION_BTN_EDIT_LOCATOR}
	Sleep    2s
	
	#Edit Bank Account Information
	Wait Until Contains Element Text Should Be    ${BANKACCOUNTINFORMATION_EDIT_LBL_EDITBANKACCOUNTINFORMATION_LOCATOR}    ${BANKACCOUNTINFORMATION_EDIT_LBL_EDITBANKACCOUNTINFORMATION_EN} 

    #Delete data
    Request DeleteData for Delete Bank Account     ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN_ENCODE}    ${bankAccountId}

	#Click Save button
    Click Element Page    ${BANKACCOUNTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}
    
	Sleep    2s
	#alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${VALUE_RESULTDESCRIPTION_DATANOTFOUND_EN}

    #Click Cancel button
	Click Element Page    ${BANKACCOUNTINFORMATION_ADDEDIT_BTN_CANCEL_LOCATOR}

	#capture page screenshot
	Selenium2Library.Capture Page Screenshot    ${BANKACCOUNTINFORMATION_EDIT_M8_1_0_3_012_ERROR_SCREENSHOT}
	
################### Close Browser ###################
    [Teardown]    Close Browser 
