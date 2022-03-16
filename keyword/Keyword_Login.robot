*** Keywords ***
################################################################-- Check Verify screen page Login --################################################################
Check Verify screen page Login
    
	#Open Browser & Maximize & title
    Open Browser To Page

    #Home
	Wait Until Contains Element Text Should Be    ${LOGIN_LBL_HOME_LOCATOR}    ${LOGIN_LBL_HOME_TH} 
	
	#Login
	Wait Until Contains Element Text Should Be    ${LOGIN_LBL_LOCATOR}    ${LOGIN_LBL_TH} 
    #Username *
	Wait Until Contains Get Text Split String Join    ${LOGIN_LBL_USERNAME_LOCATOR}    ${LOGIN_LBL_USERNAME_TH} 
	Selenium2Library.Wait Until Element Is Visible    ${LOGIN_TXT_USERNAME_LOCATOR}
	#Password *
	Wait Until Contains Get Text Split String Join    ${LOGIN_LBL_PASSWORD_LOCATOR}    ${LOGIN_LBL_PASSWORD_TH} 
	Selenium2Library.Wait Until Element Is Visible    ${LOGIN_TXT_PASSWORD_LOCATOR}
	#Login button
	Wait Until Contains Element Text Should Be    ${LOGIN_BTN_SIGNIN_LOCATOR}    ${LOGIN_BTN_SIGNIN_TH} 
	#Keep me signed in
	# Wait Until Contains Element Text Should Be    ${LOGIN_VIEW_CHK_KEEPMESIGNEDIN_LOCATOR}    ${LOGIN_VIEW_LBL_KEEPMESIGNEDIN_TH} 
	#Forgot password
	Wait Until Contains Element Text Should Be    ${LOGIN_LNK_FORGOTPASSWORD_LOCATOR}    ${LOGIN_LBL_FORGOTPASSWORD_TH} 

################################################################-- Open Browser To Login Page [SCUser] --################################################################
Open Browser To Login Page SCUser

    Check Verify screen page Login
	Sleep    2s
	Wait Until Contains Input Text    ${LOGIN_TXT_USERNAME_LOCATOR}    ${VALUE_USERNAME_SCUSER}
	Sleep    2s
	Wait Until Contains Input Text    ${LOGIN_TXT_PASSWORD_LOCATOR}    ${VALUE_PASSWORD_SCUSER}
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR}	
	Sleep    2s
	Wait Until Contains Element Text Should Be    ${MENU_LBL_ROOMDETAILS_LOCATOR}    ${MENU_LBL_ROOMDETAILS_TH} 
	Sleep    2s

	#====== Verify DB ==========
    #Inquiry for UserData LogIn 
	Request Verify DB Check Data Login    ${VALUE_USERNAME_SCUSER}    ${VALUE_PASSWORD_SCUSER}

################################################################-- Login Page [SCUser] --################################################################
Login Page SCUser

    #Home
	Wait Until Contains Element Text Should Be    ${LOGIN_LBL_HOME_LOCATOR}    ${LOGIN_LBL_HOME_TH} 
	
	#Login
	Wait Until Contains Element Text Should Be    ${LOGIN_LBL_LOCATOR}    ${LOGIN_LBL_TH} 
    #Username *
	Wait Until Contains Get Text Split String Join    ${LOGIN_LBL_USERNAME_LOCATOR}    ${LOGIN_LBL_USERNAME_TH} 
	Selenium2Library.Wait Until Element Is Visible    ${LOGIN_TXT_USERNAME_LOCATOR}
	#Password *
	Wait Until Contains Get Text Split String Join    ${LOGIN_LBL_PASSWORD_LOCATOR}    ${LOGIN_LBL_PASSWORD_TH} 
	Selenium2Library.Wait Until Element Is Visible    ${LOGIN_TXT_PASSWORD_LOCATOR}
	#Login button
	Wait Until Contains Element Text Should Be    ${LOGIN_BTN_SIGNIN_LOCATOR}    ${LOGIN_BTN_SIGNIN_TH} 
	#Keep me signed in
	# Wait Until Contains Element Text Should Be    ${LOGIN_VIEW_CHK_KEEPMESIGNEDIN_LOCATOR}    ${LOGIN_VIEW_LBL_KEEPMESIGNEDIN_TH} 
	#Forgot password
	Wait Until Contains Element Text Should Be    ${LOGIN_LNK_FORGOTPASSWORD_LOCATOR}    ${LOGIN_LBL_FORGOTPASSWORD_TH}
	Sleep    2s
	Wait Until Contains Input Text    ${LOGIN_TXT_USERNAME_LOCATOR}    ${VALUE_USERNAME_SCUSER}
	Sleep    2s
	Wait Until Contains Input Text    ${LOGIN_TXT_PASSWORD_LOCATOR}    ${VALUE_PASSWORD_SCUSER}
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR}	
	Sleep    2s
	Wait Until Contains Element Text Should Be    ${MENU_LBL_ROOMDETAILS_LOCATOR}    ${MENU_LBL_ROOMDETAILS_TH} 
	Sleep    2s

	#====== Verify DB ==========
    #Inquiry for UserData LogIn 
	Request Verify DB Check Data Login    ${VALUE_USERNAME_SCUSER}    ${VALUE_PASSWORD_SCUSER}

################################################################-- Open Browser To Login Page [Super Admin] --################################################################
Open Browser To Login Page Super Admin

    Check Verify screen page Login
	Sleep    2s
	Wait Until Contains Input Text    ${LOGIN_TXT_USERNAME_LOCATOR}    ${VALUE_USERNAME_SUPERADMIN}
	Sleep    2s
	Wait Until Contains Input Text    ${LOGIN_TXT_PASSWORD_LOCATOR}    ${VALUE_PASSWORD_SUPERADMIN}
	Sleep    2s
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR}	
	Sleep    2s
	#Project of Building
	Wait Until Contains Element Text Should Be    ${HOME_LBL_PROJECTOFBUILDING_LOCATOR}    ${HOME_LBL_PROJECTOFBUILDING_TH} 

	#====== Verify DB ==========
    #Inquiry for UserData LogIn 
	Request Verify DB Check Data Login    ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN}

################################################################-- Login Page [Super Admin] --################################################################
Login Page Super Admin

    #Home
	Wait Until Contains Element Text Should Be    ${LOGIN_LBL_HOME_LOCATOR}    ${LOGIN_LBL_HOME_TH} 
	
	#Login
	Wait Until Contains Element Text Should Be    ${LOGIN_LBL_LOCATOR}    ${LOGIN_LBL_TH} 
    #Username *
	Wait Until Contains Get Text Split String Join    ${LOGIN_LBL_USERNAME_LOCATOR}    ${LOGIN_LBL_USERNAME_TH} 
	Selenium2Library.Wait Until Element Is Visible    ${LOGIN_TXT_USERNAME_LOCATOR}
	#Password *
	Wait Until Contains Get Text Split String Join    ${LOGIN_LBL_PASSWORD_LOCATOR}    ${LOGIN_LBL_PASSWORD_TH} 
	Selenium2Library.Wait Until Element Is Visible    ${LOGIN_TXT_PASSWORD_LOCATOR}
	#Login button
	Wait Until Contains Element Text Should Be    ${LOGIN_BTN_SIGNIN_LOCATOR}    ${LOGIN_BTN_SIGNIN_TH} 
	#Keep me signed in
	# Wait Until Contains Element Text Should Be    ${LOGIN_VIEW_CHK_KEEPMESIGNEDIN_LOCATOR}    ${LOGIN_VIEW_LBL_KEEPMESIGNEDIN_TH} 
	#Forgot password
	Wait Until Contains Element Text Should Be    ${LOGIN_LNK_FORGOTPASSWORD_LOCATOR}    ${LOGIN_LBL_FORGOTPASSWORD_TH}
	Sleep    2s
	Wait Until Contains Input Text    ${LOGIN_TXT_USERNAME_LOCATOR}    ${VALUE_USERNAME_SUPERADMIN}
	Sleep    2s
	Wait Until Contains Input Text    ${LOGIN_TXT_PASSWORD_LOCATOR}    ${VALUE_PASSWORD_SUPERADMIN}
	Sleep    2s
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR}	
	Sleep    2s
	#Project of Building
	Wait Until Contains Element Text Should Be    ${HOME_LBL_PROJECTOFBUILDING_LOCATOR}    ${HOME_LBL_PROJECTOFBUILDING_TH} 

	#====== Verify DB ==========
    #Inquiry for UserData LogIn 
	Request Verify DB Check Data Login    ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN}

################################################################-- Open Browser To Login Page [Admin] --################################################################
Open Browser To Login Page Admin

    Check Verify screen page Login
	Sleep    2s
	Wait Until Contains Input Text    ${LOGIN_TXT_USERNAME_LOCATOR}    ${VALUE_USERNAME_ADMIN}
	Sleep    2s
	Wait Until Contains Input Text    ${LOGIN_TXT_PASSWORD_LOCATOR}    ${VALUE_PASSWORD_ADMIN}
	Sleep    2s
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR}	
	Sleep    2s
	#Project of Building
	Wait Until Contains Element Text Should Be    ${HOME_LBL_PROJECTOFBUILDING_LOCATOR}    ${HOME_LBL_PROJECTOFBUILDING_TH} 

    #====== Verify DB ==========
    #Inquiry for UserData LogIn 
	Request Verify DB Check Data Login    ${VALUE_USERNAME_ADMIN}    ${VALUE_PASSWORD_ADMIN}

################################################################-- Open Browser To Login Page [TaxId] --################################################################
Open Browser To Login Page TaxId

    Check Verify screen page Login
	Sleep    2s
	Wait Until Contains Input Text    ${LOGIN_TXT_USERNAME_LOCATOR}    ${VALUE_USERNAME_TAXID}
	Sleep    2s
	Wait Until Contains Input Text    ${LOGIN_TXT_PASSWORD_LOCATOR}    ${VALUE_PASSWORD_TAXID}
	Sleep    2s
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR}	
	Sleep    2s
	#Project of Building
	Wait Until Contains Element Text Should Be    ${HOME_LBL_PROJECTOFBUILDING_LOCATOR}    ${HOME_LBL_PROJECTOFBUILDING_TH} 

	#====== Verify DB ==========
    #Inquiry for UserData LogIn 
	Request Verify DB Check Data Login    ${VALUE_USERNAME_TAXID}    ${VALUE_PASSWORD_TAXID}

################################################################-- Open Browser To Login Page [FirstLogin] --################################################################
Open Browser To Login Page FirstLogin

    Check Verify screen page Login
	Sleep    2s
	Wait Until Contains Input Text    ${LOGIN_TXT_USERNAME_LOCATOR}    ${VALUE_USERNAME_FIRSTLOGIN}
	Sleep    2s
	Wait Until Contains Input Text    ${LOGIN_TXT_PASSWORD_LOCATOR}    ${VALUE_PASSWORD_FIRSTLOGIN}
	Sleep    2s
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR}	
	Sleep    2s

	#Terms and Conditions Header
	Wait Until Contains Element Text Should Be    ${LOGIN_LBL_TERMSANDCONDITIONS_HEADER_LOCATOR}    ${LOGIN_LBL_TERMSANDCONDITIONS_HEADER_TH} 
	
	Sleep    2s
	#checkbox
	Click Element Page    ${LOGIN_CHK_TERMSANDCONDITIONS_LOCATOR}	
	
	#Submit button
	Click Element Page    ${LOGIN_BTN_TERMSANDCONDITIONS_SUBMIT_LOCATOR}	

    #Project of Building
	Wait Until Contains Element Text Should Be    ${HOME_LBL_PROJECTOFBUILDING_LOCATOR}    ${HOME_LBL_PROJECTOFBUILDING_TH} 

	#====== Verify DB ==========
    #Inquiry for UserData LogIn 
	Request Verify DB Check Data Login    ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN}

################################################################-- Open Browser To Login Page [Click Building and Room] --################################################################
Open Browser To Login Page Click Building and Room
    
	[Arguments]    ${building_locator}    ${roomNo}
    
	Open Browser To Login Page Super Admin

	#Click Building
	Click Element Page    ${building_locator}    
	#Click Room
    Click Room    ${roomNo}

################################################################-- Open Browser To Login Page [Click icon Building for create Building] --################################################################
Open Browser To Login Page Click icon Building for create Building
    
	[Arguments]    ${iconBuilding_locator}
    
	Open Browser To Login Page Super Admin

	#Click icon Building
	Click Element Page    ${iconBuilding_locator}    

################################################################-- Check Verify screen page Login EN--################################################################
Check Verify screen page Login EN
    
	#Open Browser & Maximize & title
    Open Browser To Page

    # Change Language EN
    Change Language EN

    #Home
	Wait Until Contains Element Text Should Be    ${LOGIN_LBL_HOME_LOCATOR}    ${LOGIN_LBL_HOME_EN} 
	
	#Login
	Wait Until Contains Element Text Should Be    ${LOGIN_LBL_LOCATOR}    ${LOGIN_LBL_EN} 
    #Username *
	Wait Until Contains Get Text Split String Join    ${LOGIN_LBL_USERNAME_LOCATOR}    ${LOGIN_LBL_USERNAME_EN} 
	Selenium2Library.Wait Until Element Is Visible    ${LOGIN_TXT_USERNAME_LOCATOR}
	#Password *
	Wait Until Contains Get Text Split String Join    ${LOGIN_LBL_PASSWORD_LOCATOR}    ${LOGIN_LBL_PASSWORD_EN} 
	Selenium2Library.Wait Until Element Is Visible    ${LOGIN_TXT_PASSWORD_LOCATOR}
	#Login button
	Wait Until Contains Element Text Should Be    ${LOGIN_BTN_SIGNIN_LOCATOR}    ${LOGIN_BTN_SIGNIN_EN} 
	#Keep me signed in
	# Wait Until Contains Element Text Should Be    ${LOGIN_VIEW_CHK_KEEPMESIGNEDIN_LOCATOR}    ${LOGIN_VIEW_LBL_KEEPMESIGNEDIN_EN} 
	#Forgot password
	Wait Until Contains Element Text Should Be    ${LOGIN_LNK_FORGOTPASSWORD_LOCATOR}    ${LOGIN_LBL_FORGOTPASSWORD_EN} 

################################################################-- Open Browser To Login Page [SCUser EN] --################################################################
Open Browser To Login Page SCUser EN

    Check Verify screen page Login EN
	Sleep    2s
	Wait Until Contains Input Text    ${LOGIN_TXT_USERNAME_LOCATOR}    ${VALUE_USERNAME_SCUSER}
	Sleep    2s
	Wait Until Contains Input Text    ${LOGIN_TXT_PASSWORD_LOCATOR}    ${VALUE_PASSWORD_SCUSER}
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR}	
	Sleep    2s
	Wait Until Contains Element Text Should Be    ${MENU_LBL_ROOMDETAILS_LOCATOR}    ${MENU_LBL_ROOMDETAILS_EN} 
	Sleep    2s

	#====== Verify DB ==========
    #Inquiry for UserData LogIn 
	Request Verify DB Check Data Login    ${VALUE_USERNAME_SCUSER}    ${VALUE_PASSWORD_SCUSER}

################################################################-- Open Browser To Login Page [Super Admin EN] --################################################################
Open Browser To Login Page Super Admin EN

    Check Verify screen page Login EN
	Sleep    2s
	Wait Until Contains Input Text    ${LOGIN_TXT_USERNAME_LOCATOR}    ${VALUE_USERNAME_SUPERADMIN}
	Sleep    2s
	Wait Until Contains Input Text    ${LOGIN_TXT_PASSWORD_LOCATOR}    ${VALUE_PASSWORD_SUPERADMIN}
	Sleep    2s
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR}	
	Sleep    2s
	#Project of Building
	Wait Until Contains Element Text Should Be    ${HOME_LBL_PROJECTOFBUILDING_LOCATOR}    ${HOME_LBL_PROJECTOFBUILDING_EN} 

	#====== Verify DB ==========
    #Inquiry for UserData LogIn 
	Request Verify DB Check Data Login    ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN}

################################################################-- Open Browser To Login Page [Admin EN] --################################################################
Open Browser To Login Page Admin EN

    Check Verify screen page Login EN
	Sleep    2s
	Wait Until Contains Input Text    ${LOGIN_TXT_USERNAME_LOCATOR}    ${VALUE_USERNAME_ADMIN}
	Sleep    2s
	Wait Until Contains Input Text    ${LOGIN_TXT_PASSWORD_LOCATOR}    ${VALUE_PASSWORD_ADMIN}
	Sleep    2s
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR}	
	Sleep    2s
	#Project of Building
	Wait Until Contains Element Text Should Be    ${HOME_LBL_PROJECTOFBUILDING_LOCATOR}    ${HOME_LBL_PROJECTOFBUILDING_EN} 

    #====== Verify DB ==========
    #Inquiry for UserData LogIn 
	Request Verify DB Check Data Login    ${VALUE_USERNAME_ADMIN}    ${VALUE_PASSWORD_ADMIN}

################################################################-- Open Browser To Login Page [TaxId EN] --################################################################
Open Browser To Login Page TaxId EN

    Check Verify screen page Login EN
	Sleep    2s
	Wait Until Contains Input Text    ${LOGIN_TXT_USERNAME_LOCATOR}    ${VALUE_USERNAME_TAXID}
	Sleep    2s
	Wait Until Contains Input Text    ${LOGIN_TXT_PASSWORD_LOCATOR}    ${VALUE_PASSWORD_TAXID}
	Sleep    2s
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR}	
	Sleep    2s
	#Project of Building
	Wait Until Contains Element Text Should Be    ${HOME_LBL_PROJECTOFBUILDING_LOCATOR}    ${HOME_LBL_PROJECTOFBUILDING_EN} 

	#====== Verify DB ==========
    #Inquiry for UserData LogIn 
	Request Verify DB Check Data Login    ${VALUE_USERNAME_TAXID}    ${VALUE_PASSWORD_TAXID}

################################################################-- Open Browser To Login Page [FirstLogin EN] --################################################################
Open Browser To Login Page FirstLogin EN

    Check Verify screen page Login EN
	Sleep    2s
	Wait Until Contains Input Text    ${LOGIN_TXT_USERNAME_LOCATOR}    ${VALUE_USERNAME_FIRSTLOGIN}
	Sleep    2s
	Wait Until Contains Input Text    ${LOGIN_TXT_PASSWORD_LOCATOR}    ${VALUE_PASSWORD_FIRSTLOGIN}
	Sleep    2s
    Click Element Page    ${LOGIN_BTN_SIGNIN_LOCATOR}	
	Sleep    2s

	#Terms and Conditions Header
	Wait Until Contains Element Text Should Be    ${LOGIN_LBL_TERMSANDCONDITIONS_HEADER_LOCATOR}    ${LOGIN_LBL_TERMSANDCONDITIONS_HEADER_EN} 
	
	Sleep    2s
	#checkbox
	Click Element Page    ${LOGIN_CHK_TERMSANDCONDITIONS_LOCATOR}	
	
	#Submit button
	Click Element Page    ${LOGIN_BTN_TERMSANDCONDITIONS_SUBMIT_LOCATOR}	

    #Project of Building
	Wait Until Contains Element Text Should Be    ${HOME_LBL_PROJECTOFBUILDING_LOCATOR}    ${HOME_LBL_PROJECTOFBUILDING_EN} 

	#====== Verify DB ==========
    #Inquiry for UserData LogIn 
	Request Verify DB Check Data Login    ${VALUE_USERNAME_SUPERADMIN}    ${VALUE_PASSWORD_SUPERADMIN}
################################################################-- Open Browser To Login Page [Click Building and Room EN] --################################################################
Open Browser To Login Page Click Building and Room EN
    
	[Arguments]    ${building_locator}    ${roomNo}
    
	Open Browser To Login Page Super Admin EN

	#Click Building
	Click Element Page    ${building_locator}    
	#Click Room
    Click Room    ${roomNo}
################################################################-- Generic Test Case Teardown Login--################################################################
Generic Test Case Teardown FirstLogin	
	
	#${userId},${pdpa_flag},${namefile}
	Update tb users set papd flag    ${LOGIN_FIRSTLOGIN_USERID_VALUE}    ${LOGIN_FIRSTLOGIN_PDPAFLAG_VALUE}    ${LOGIN_FIRSTLOGIN_FILENAME_VALUE}

	################### Close Browser ###################
	Close Browser 		
################################################################################################################################
################################################################-- Generic Test Case Teardown StampDeleteUserRole--################################################################
Generic Test Case Teardown StampDeleteUserRole
	
	#${userId},${deletet_at},${namefile}
    Update tb user_role set delete_at    ${LOGIN_STAMPDELETEUSERROLE_USERID_VALUE}    null    ${LOGIN_STAMPDELETEUSERROLE_FILENAME_VALUE}

	################### Close Browser ###################
	Close Browser 		
################################################################################################################################
################################################################-- Generic Test Case Teardown UserHasBeenDeleted--################################################################
Generic Test Case Teardown UserHasBeenDeleted
	
	#${id},${deletet_at},${namefile}
    Update tb accounts set delete_at    ${LOGIN_USERHASBEENDELETED_ID_VALUE}    null    ${LOGIN_USERHASBEENDELETED_FILENAME_VALUE}

	################### Close Browser ###################
	Close Browser 		
################################################################################################################################
################################################################-- Generic Test Case Teardown UserExpire--################################################################
Generic Test Case Teardown UserExpire
	
	#${id},${expire_date},${namefile}
    Update tb accounts set expire_date    ${LOGIN_USEREXPIRE_ID_VALUE}    null    ${LOGIN_USEREXPIRE_FILENAME_VALUE}

	################### Close Browser ###################
	Close Browser 		
################################################################################################################################
