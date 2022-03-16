*** Settings ***
Resource    ../variables/Variables_Default.robot 
Resource    ../variables/Variables_Request.robot   
Resource    ../variables/Variables_Calendar.robot
Resource    ../variables/Variables_Datetime.robot
Resource    ../variables/Variables_Alert_Popup.robot 

#DB
Resource    ../variables/Variables_MySQL.robot 

#FE
Resource    ../variables/Variables_Login.robot 
Resource    ../variables/Variables_Logout.robot 
Resource    ../variables/Variables_HomeLogin.robot 
Resource    ../variables/Variables_Footer.robot 
Resource    ../variables/Variables_Menu.robot 
Resource    ../variables/Variables_Building_room.robot


Resource    ../variables/Variables_M1_LoginLogoutForgetPassword.robot
Resource    ../variables/Variables_M6_BuildingManagement.robot
Resource    ../variables/Variables_M8_BankAccountManagement.robot
Resource    ../variables/Variables_M9_ExpenseManagement.robot
Resource    ../variables/Variables_M10_MulctcodeManagement.robot
Resource    ../variables/Variables_M11_IncomeCodeManagement.robot
Resource    ../variables/Variables_M12_MulctMethodManagement.robot
Resource    ../variables/Variables_M13_RoomOwner.robot
Resource    ../variables/Variables_M16_Account.robot
Resource    ../variables/Variables_M32_EmployeeManagement.robot
Resource    ../variables/Variables_M22_CheckAssetManagement.robot
Resource    ../variables/Variables_M33_RepairEquipmentManagement.robot
Resource    ../variables/Variables_M2_RoleManagement.robot
Resource    ../variables/Variables_M3_UserAccount.robot
Resource    ../variables/Variables_M7_RoomManagement.robot



#Excel
Resource    ../variables/Variables_Excel.robot

#Mobile
Resource    ../variables/Variables_App.robot
Resource    ../variables/Variables_Login_Android.robot

#Api
Resource    ../variables/Variables_Data.robot

*** Variables ***

#Product
#${PAGE_URL}    https://condo.smartrms.net/
#Automate
#${PAGE_URL}    http://10.1.2.191:8085/
${PAGE_URL}    http://localhost:4200/

#Title
${TITLE_NAME}    SmartRMS for Condo

#Page
${PAGE_NAME}    Welcome to Robot Framwork
${PAGE_NAME_LOCATOR}    xpath=/html/body/app-root/app-auth/section/div[1]/div/div[2]/h2

#change language
${MENU_LINK_USERACCOUNT_LOCATOR}    id=btnUserAccount
${MENU_LINK_LANGUAGE_LOCATOR}    id=btnChangeLanguage

#path file
${PATH_FILE}    file\\
${FILE}    file
${PATH_FILE_IMPORT_PROPERTY}    /../file/Import โครงการ.xlsx
