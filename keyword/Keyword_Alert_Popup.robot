*** Keywords ***
Check Text Alert 
    [Arguments]    ${locator_btn}    ${title}    ${content}
	Click Button Page    ${locator_btn}	
	Sleep    1s
    Wait Until Contains Element Text Should Be    ${ALERT_TITLE_LOCATOR}    ${title} 
    Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_LOCATOR}    ${content} 

Check Text Alert Confirm
    [Arguments]    ${locator_btn}    ${title}    ${content}    ${btnConfirm}    ${btnCancel}
	Click Element Page    ${locator_btn}	
	Sleep    1s
    Wait Until Contains Element Text Should Be    ${ALERT_TITLE_LOCATOR}    ${title} 
    Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_LOCATOR}    ${content} 
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CONFIRM_LOCATOR}    ${btnConfirm} 
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CANCEL_LOCATOR}    ${btnCancel}
	
Check Text Alert Confirm Two Content
    [Arguments]    ${locator_btn}    ${title}    ${content1}    ${content2}    ${btnConfirm}    ${btnCancel}
	Click Element Page    ${locator_btn}	
	Sleep    1s
    Wait Until Contains Element Text Should Be    ${ALERT_TITLE_LOCATOR}    ${title} 
    Wait Until Contains Element Text Should Be    ${ALERT_CONTENT1_LOCATOR}    ${content1} 
    Wait Until Contains Element Text Should Be    ${ALERT_CONTENT2_LOCATOR}    ${content2} 
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CONFIRM_LOCATOR}    ${btnConfirm} 
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CANCEL_LOCATOR}    ${btnCancel} 

Check Text Alert Confirm Three Content
    [Arguments]    ${locator_btn}    ${title}    ${content1}    ${content2}    ${content3}    ${btnConfirm}    ${btnCancel}
	Click Element Page    ${locator_btn}	
	Sleep    1s
    Wait Until Contains Element Text Should Be    ${ALERT_TITLE_LOCATOR}    ${title} 
    Wait Until Contains Element Text Should Be    ${ALERT_CONTENT1_LOCATOR}    ${content1} 
    Wait Until Contains Element Text Should Be    ${ALERT_CONTENT2_LOCATOR}    ${content2} 
    Wait Until Contains Element Text Should Be    ${ALERT_CONTENT3_LOCATOR}    ${content3} 
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CONFIRM_LOCATOR}    ${btnConfirm} 
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CANCEL_LOCATOR}    ${btnCancel} 
	
Check Text Alert Confirm Three Content have br content2 Next button
    [Arguments]    ${locator_btn}    ${title}    ${content1}    ${content2}    ${content3}    ${btnNext}    ${btnCancel}
	Click Element Page    ${locator_btn}	
	Sleep    1s
    Wait Until Contains Element Text Should Be    ${ALERT_TITLE_LOCATOR}    ${title} 
    Wait Until Contains Element Text Should Be    ${ALERT_CONTENT1_LOCATOR}    ${content1} 
    Wait Until Contains Get Text Split String Join    ${ALERT_CONTENT2_LOCATOR}    ${content2} 
    Wait Until Contains Element Text Should Be    ${ALERT_CONTENT3_LOCATOR}    ${content3} 
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_NEXT_LOCATOR}    ${btnNext} 
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CANCEL_LOCATOR}    ${btnCancel} 

Check Text Alert Confirm Delete Click Element
    [Arguments]    ${locator_btn}    ${title}    ${content}    ${btnConfirm}    ${btnCancel}
	Click Element Page    ${locator_btn}	
	Sleep    1s
    Wait Until Contains Element Text Should Be    ${ALERT_TITLE_LOCATOR}    ${title} 
    Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_LOCATOR}    ${content} 
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CONFIRM_LOCATOR}    ${btnConfirm} 
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CANCEL_LOCATOR}    ${btnCancel}
	
Check Text Alert Confirm Forgot Password
    [Arguments]    ${locator_btn}    ${title}    ${content}    ${btnSMS}    ${btnEmail}
	Click Element Page    ${locator_btn}	
	Sleep    1s
    Wait Until Contains Element Text Should Be    ${ALERT_TITLE_FORGOTPASSWORD_LOCATOR}    ${title} 
    Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_FORGOTPASSWORD_LOCATOR}    ${content} 
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_SMS_LOCATOR}    ${btnSMS} 
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_EMAIL_LOCATOR}    ${btnEmail}

Check Text Alert Confirm Not Click Button
    [Arguments]    ${title}    ${content}    ${btnConfirm}    ${btnCancel}
    Wait Until Contains Element Text Should Be    ${ALERT_TITLE_LOCATOR}    ${title} 
    Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_LOCATOR}    ${content} 
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CONFIRM_LOCATOR}    ${btnConfirm} 
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CANCEL_LOCATOR}    ${btnCancel}

Check Text Alert Confirm Not Click Button adn receive id
    [Arguments]    ${ID_TITLE_LOCATOR}    ${title}    ${ID_CONTENT_LOCATOR}    ${content}    ${btnConfirm}    ${btnCancel}
    Wait Until Contains Element Text Should Be    ${ID__TITLE_LOCATOR}    ${title} 
    Wait Until Contains Element Text Should Be    ${ID__CONTENT_LOCATOR}    ${content} 
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CONFIRM_LOCATOR}    ${btnConfirm} 
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CANCEL_LOCATOR}    ${btnCancel}

Check Text Alert Confirm Not Click Button and Check text expected
    [Arguments]    ${title}    ${content}    ${btnConfirm}    ${btnCancel}
    Element Should Contain Get Text    ${ALERT_TITLE_LOCATOR}    ${title}
    Element Should Contain Get Text    ${ALERT_CONTENT_LOCATOR}    ${content} 
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CONFIRM_LOCATOR}    ${btnConfirm} 
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CANCEL_LOCATOR}    ${btnCancel}

Click Text Alert 
    [Arguments]    ${locator_btn}    ${locatior_btnOk}    ${title}    ${content}    ${btnOk}
	Click Button Page    ${locator_btn}	
	Sleep    1s
    Wait Until Contains Element Text Should Be    ${ALERT_TITLE_LOCATOR}    ${title} 
    Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_LOCATOR}    ${content} 
	Wait Until Contains Element Text Should Be    ${ALERT_BTN_OK_LOCATOR}    ${btnOk}
    Click Button Page    ${locatior_btnOk}		

Click Text Alert Not Click Button
    [Arguments]    ${locatior_btnOk}    ${title}    ${content}    ${btnOk}
	Sleep    1s
    Wait Until Contains Element Text Should Be    ${ALERT_TITLE_LOCATOR}    ${title} 
    Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_LOCATOR}    ${content} 
	Wait Until Contains Element Text Should Be    ${ALERT_BTN_OK_LOCATOR}    ${btnOk}
    Click Button Page    ${locatior_btnOk}		

Click Text Alert Confirm Not Alert
    [Arguments]    ${locator_btn}    ${locator_btnConfirm}    ${titleConfirm}    ${contentConfirm}    ${btnConfirm}    ${btnCancel}
	Click Button Page    ${locator_btn}	
	Sleep    1s
    Wait Until Contains Element Text Should Be    ${ALERT_TITLE_LOCATOR}    ${titleConfirm} 
    Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_LOCATOR}    ${contentConfirm} 
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CONFIRM_LOCATOR}    ${btnConfirm} 
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CANCEL_LOCATOR}    ${btnCancel} 
    Click Button Page    ${locator_btnConfirm}	
	Sleep    2s

Click Text Alert Confirm Class Not Alert 
    [Arguments]    ${locator_btn}    ${locator_btnConfirm}    ${titleConfirm}    ${contentConfirm}    ${btnConfirm}    ${btnCancel}
	Click Button Page    ${locator_btn}	
	Sleep    1s
    Wait Until Contains Element Text Should Be    ${ALERT_TITLE_LOCATOR}    ${titleConfirm} 
    Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_LOCATOR}    ${contentConfirm} 
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CONFIRM_CLASS_LOCATOR}    ${btnConfirm} 
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CANCEL_CLASS_LOCATOR}    ${btnCancel} 
    Click Button Page    ${locator_btnConfirm}	
	Sleep    2s
	
Click Text Alert Confirm
    [Arguments]    ${locator_btn}    ${locator_btnConfirm}    ${titleConfirm}    ${contentConfirm}    ${titleAlert}    ${contentAlert}    ${btnConfirm}    ${btnCancel}
	Click Button Page    ${locator_btn}	
	Sleep    1s
    Wait Until Contains Element Text Should Be    ${ALERT_TITLE_LOCATOR}    ${titleConfirm} 
    Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_LOCATOR}    ${contentConfirm} 
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CONFIRM_LOCATOR}    ${btnConfirm} 
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CANCEL_LOCATOR}    ${btnCancel} 
    Click Button Page    ${locator_btnConfirm}	
	Sleep    2s
	Wait Until Contains Element Text Should Be    ${ALERT_TITLE_LOCATOR}    ${titleAlert} 
    Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_LOCATOR}    ${contentAlert} 

Click Text Alert Confirm And Ok
    [Arguments]    ${locator_btn}    ${locator_btnConfirm}    ${titleConfirm}    ${contentConfirm}    ${btnConfirm}    ${btnCancel}    ${locator_btnOk}    ${titleAlert}    ${contentAlert}    ${btnOk}
	Click Button Page    ${locator_btn}	
	Sleep    1s
    Wait Until Contains Element Text Should Be    ${ALERT_TITLE_LOCATOR}    ${titleConfirm} 
    Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_LOCATOR}    ${contentConfirm} 
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CONFIRM_LOCATOR}    ${btnConfirm} 
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CANCEL_LOCATOR}    ${btnCancel} 
    Click Button Page    ${locator_btnConfirm}	
	Sleep    2s
    Wait Until Contains Element Text Should Be    ${ALERT_TITLE_LOCATOR}    ${titleAlert} 
    Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_LOCATOR}    ${contentAlert} 
	Wait Until Contains Element Text Should Be    ${ALERT_BTN_OK_LOCATOR}    ${btnOk}
    Click Button Page    ${locator_btnOk}		

Click Delete and Check Text
    [Arguments]    ${locator_btnDelete}    ${title}    ${contentConfirm}    ${btnConfirm}    ${btnCancel}    ${alertButtom}
	Click Element Page    ${locator_btnDelete}	
	Sleep    1s
    Wait Until Contains Element Text Should Be    ${ALERT_TITLE_LOCATOR}    ${title} 
    Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_LOCATOR}    ${contentConfirm}
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CONFIRM_LOCATOR}    ${btnConfirm} 
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CANCEL_LOCATOR}    ${btnCancel} 
    Click Element Page    ${ALERT_BTN_CONFIRM_LOCATOR}	
	Sleep    2s
	#alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${alertButtom}

Check Popup Delete
    [Arguments]    ${locator_btnDelete}    ${title}    ${contentConfirm}    ${btnConfirm}    ${btnCancel}
	Click Element Page    ${locator_btnDelete}	
	Sleep    1s
    Wait Until Contains Element Text Should Be    ${ALERT_TITLE_LOCATOR}    ${title} 
    Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_LOCATOR}    ${contentConfirm}
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CONFIRM_LOCATOR}    ${btnConfirm} 
    Wait Until Contains Element Should Be Enabled    ${ALERT_BTN_CONFIRM_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CANCEL_LOCATOR}    ${btnCancel} 
    Wait Until Contains Element Should Be Enabled    ${ALERT_BTN_CANCEL_LOCATOR}
	Click Element Page    ${ALERT_BTN_CANCEL_LOCATOR}
    Sleep    2s

Check Popup Enable and Disable
    [Arguments]    ${locator_btnDelete}    ${title}    ${contentConfirm}    ${btnConfirm}    ${btnCancel}
	Click Element Page    ${locator_btnDelete}	
	Sleep    1s
    Wait Until Contains Element Text Should Be    ${ALERT_TITLE_LOCATOR}    ${title} 
    Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_LOCATOR}    ${contentConfirm}
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CONFIRM_LOCATOR}    ${btnConfirm} 
    Wait Until Contains Element Should Be Enabled    ${ALERT_BTN_CONFIRM_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CANCEL_LOCATOR}    ${btnCancel} 
    Wait Until Contains Element Should Be Enabled    ${ALERT_BTN_CANCEL_LOCATOR}
	Click Element Page    ${ALERT_BTN_CANCEL_LOCATOR}
    Sleep    2s


Click Enable and Disable and Check Text
    [Arguments]    ${locator_btnDelete}    ${title}    ${contentConfirm}    ${btnConfirm}    ${btnCancel}    ${alertButtom}
	Click Element Page    ${locator_btnDelete}	
	Sleep    1s
    Wait Until Contains Element Text Should Be    ${ALERT_TITLE_LOCATOR}    ${title} 
    Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_LOCATOR}    ${contentConfirm}
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CONFIRM_LOCATOR}    ${btnConfirm} 
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CANCEL_LOCATOR}    ${btnCancel} 
    Click Element Page    ${ALERT_BTN_CONFIRM_LOCATOR}	
	Sleep    2s
	#alert bottom
	Wait Until Contains Element Text Should Be    ${ALERT_BOTTOM_LBL_LOCATOR}    ${alertButtom}


Check MSG Popup and Click OK
    [Arguments]    ${locator_btn}    ${text_btn}    ${locator_text}    ${msg_expect}
	Sleep    1s
    Wait Until Contains Element Text Should Be Get Text    ${locator_text}    ${msg_expect} 
    Wait Until Contains Element Text Should Be    ${locator_btn}    ${text_btn}
	Click Element Page    ${locator_btn}
    Sleep    2s

Check Popup ConfirmSave
    [Arguments]    ${locator_btnDelete}    ${title}    ${contentConfirm}    ${btnConfirm}    ${btnCancel}
	Click Element Page    ${locator_btnDelete}	
	Sleep    1s
    Wait Until Contains Element Text Should Be    ${ALERT_TITLE_LOCATOR}    ${title} 
    Wait Until Contains Element Text Should Be    ${ALERT_CONTENT_LOCATOR}    ${contentConfirm}
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CONFIRM_LOCATOR}    ${btnConfirm} 
    Wait Until Contains Element Should Be Enabled    ${ALERT_BTN_CONFIRM_LOCATOR}
    Wait Until Contains Element Text Should Be    ${ALERT_BTN_CANCEL_LOCATOR}    ${btnCancel} 
    Wait Until Contains Element Should Be Enabled    ${ALERT_BTN_CANCEL_LOCATOR}
	Click Element Page    ${ALERT_BTN_CANCEL_LOCATOR}
    Sleep    2s