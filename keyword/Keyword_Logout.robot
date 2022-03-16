*** Keywords ***
################################################################-- Open Browser To Logout Page Admin--################################################################
Open Browser To Logout Page Admin
	Click Element Page    ${MENU_LBL_HOMETOP_ADMIN_USER_LOCATOR}
    Wait Until Contains Element Text Should Be    ${MENU_LBL_HOMETOP_ADMIN_LOGOUT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_LOGOUT_TH} 
    Click Element Page    ${MENU_LBL_HOMETOP_ADMIN_LOGOUT_LOCATOR}
	Sleep    1s
	Wait Until Contains Element Text Should Be    ${LOGIN_LBL_LOCATOR}    ${LOGIN_LBL_TH} 

################################################################-- Open Browser To Logout Page Admin EN--################################################################
Open Browser To Logout Page Admin EN
	Click Element Page    ${MENU_LBL_HOMETOP_ADMIN_USER_LOCATOR}
    Wait Until Contains Element Text Should Be    ${MENU_LBL_HOMETOP_ADMIN_LOGOUT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_LOGOUT_EN} 
    Click Element Page    ${MENU_LBL_HOMETOP_ADMIN_LOGOUT_LOCATOR}
	Sleep    1s
	Wait Until Contains Element Text Should Be    ${LOGIN_LBL_LOCATOR}    ${LOGIN_LBL_EN} 

# ################################################################-- Open Browser To Logout Page Admin--################################################################
# Open Browser To Logout Page Admin
# 	Click Element Page    ${MENU_LBL_HOMETOP_ADMIN_USER_LOCATOR}
#     Wait Until Contains Element Text Should Be    ${MENU_LBL_HOMETOP_ADMIN_LOGOUT_LOCATOR}    ${MENU_LBL_HOMETOP_ADMIN_LOGOUT_TH} 
#     Click Element Page    ${MENU_LBL_HOMETOP_ADMIN_LOGOUT_LOCATOR}
# 	Sleep    1s
# 	# Wait Until Contains Element Text Should Be    ${LOGIN_LBL_LOCATOR}    ${LOGIN_LBL_TH}
