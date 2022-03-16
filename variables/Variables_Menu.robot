*** Variables ***
############## menu Home before login ##############
#Home
${LOGIN_LBL_HOME_TH}    หน้าหลัก  
${LOGIN_LBL_HOME_EN}    Home 
# ${LOGIN_LBL_HOME_LOCATOR}    xpath=/html/body/app-root/app-layouts-login/div/header/div/div[2]/ul/li[1]/div/a/span
${LOGIN_LBL_HOME_LOCATOR}    id=home

#change language
${MENU_LBL_LANGUAGE_TH}    TH
${MENU_LBL_LANGUAGE_TH_LOCATOR}    id=menuTopChangeLanguageTH
${MENU_LBL_LANGUAGE_EN}    EN 
${MENU_LBL_LANGUAGE_EN_LOCATOR}    id=menuTopChangeLanguageEN

# #Other Service
# ${MENU_LBL_OTHERSERVICE_TH}    บริการเสริม
# ${MENU_LBL_OTHERSERVICE_EN}    Other Service
# ${MENU_LBL_OTHERSERVICE_LOCATOR}    id=menuTopService
# #Register for Workshop
# ${MENU_LBL_REGISWORKSHOP_TH}    ลงทะเบียน Workshop
# ${MENU_LBL_REGISWORKSHOP_EN}    Register for Workshop
# ${MENU_LBL_REGISWORKSHOP_LOCATOR}    id=menuTopRegister
# #FAQ
# ${MENU_LBL_FAQ_TH}    คำถามที่พบบ่อย
# ${MENU_LBL_FAQ_EN}    FAQ
# ${MENU_LBL_FAQ_LOCATOR}    id=menuTopQuestions
# #Feature SmartRMS
# ${MENU_LBL_FEATURESMARTRMS_TH}    Feature SmartRMS
# ${MENU_LBL_FEATURESMARTRMS_EN}    Feature SmartRMS
# ${MENU_LBL_FEATURESMARTRMS_LOCATOR}    id=menuTopFeaturesSmartRMS
# #Login
# ${MENU_LBL_LOGIN_TH}    เข้าสู่ระบบ
# ${MENU_LBL_LOGIN_EN}    Login
# ${MENU_LBL_LOGIN_LOCATOR}    id=menuTopLogin


############## menu Package before login ##############
#SmartRMS Package
${MENU_LBL_PACKAGE_SMARTRMSPACKAGE_TH}    Package จัดการข้อมูล
${MENU_LBL_PACKAGE_SMARTRMSPACKAGE_EN}    SmartRMS Package
${MENU_LBL_PACKAGE_SMARTRMSPACKAGE_LOCATOR}    id=menuSmartRMSPackage
#Package Support & Maintenance
${MENU_LBL_PACKAGE_PACKAGESUPPORTMAINTENANCE_TH}    แพคเกจซัพพอร์ท และจัดการ
${MENU_LBL_PACKAGE_PACKAGESUPPORTMAINTENANCE_EN}    Package Support & Maintenance
${MENU_LBL_PACKAGE_PACKAGESUPPORTMAINTENANCE_LOCATOR}    id=menuPackageSupportMaintenance
#Package Free
${MENU_LBL_PACKAGE_PACKAGEFREE_TH}    แพคเกจฟรี
${MENU_LBL_PACKAGE_PACKAGEFREE_EN}    Package Free
${MENU_LBL_PACKAGE_PACKAGEFREE_LOCATOR}    id=menuPackageFree

################################################################-- menu Home top after login [SC User] --################################################################
#User SC User
${MENU_LBL_HOMETOP_SCUSER_USER_TH}     sc_user SmartRmsCondo 
${MENU_LBL_HOMETOP_SCUSER_USER_EN}     sc_user SmartRmsCondo 
${MENU_LBL_HOMETOP_SCUSER_USER_LOCATOR}    id=lblUsernameLogin
#Edit User Information
${MENU_LBL_HOMETOP_SCUSER_EDITUSERINFORMATION_TH}    แก้ไขข้อมูลผู้ใช้งาน
${MENU_LBL_HOMETOP_SCUSER_EDITUSERINFORMATION_EN}    Edit User Information
${MENU_LBL_HOMETOP_SCUSER_EDITUSERINFORMATION_LOCATOR}    id=lblMenuTopEditUserInformation
${MENU_ICON_HOMETOP_SCUSER_EDITUSERINFORMATION_LOCATOR}    id=iconMenuTopEditUserInformation
#Change Password
${MENU_LBL_HOMETOP_SCUSER_CHANGEPASSWORD_TH}    เปลี่ยนรหัสผ่าน
${MENU_LBL_HOMETOP_SCUSER_CHANGEPASSWORD_EN}    Change Password
${MENU_LBL_HOMETOP_SCUSER_CHANGEPASSWORD_LOCATOR}    id=lblMenuTopChangePassword
${MENU_ICON_HOMETOP_SCUSER_CHANGEPASSWORD_LOCATOR}    id=iconMenuTopChangePassword
#Log Out
${MENU_LBL_HOMETOP_SCUSER_LOGOUT_TH}    ออกจากระบบ
${MENU_LBL_HOMETOP_SCUSER_LOGOUT_EN}    Log Out
${MENU_LBL_HOMETOP_SCUSER_LOGOUT_LOCATOR}    id=lblMenuTopLogOut
${MENU_ICON_HOMETOP_SCUSER_LOGOUT_LOCATOR}    id=iconMenuTopLogOut
#Main Page icon
${MENU_ICON_MAINPAGE_LOCATOR}    id=iconMenuTopMainPage
#User Manual icon
${MENU_ICON_USERMANUALICON_LOCATOR}    id=iconMenuTopUserManual

################################################################-- menu Home after login [SC User] --################################################################
#Room details
${MENU_LBL_ROOMDETAILS_TH}    ข้อมูลห้องพัก
${MENU_LBL_ROOMDETAILS_EN}    Room details
${MENU_LBL_ROOMDETAILS_LOCATOR}    id=SettingFloorandRoom
#Register Smart Condo
${MENU_LBL_REGISTERSMARTCONDO_TH}    ลงทะเบียนสนใจใช้งาน Smart Condo
${MENU_LBL_REGISTERSMARTCONDO_EN}    Register Smart Condo
${MENU_LBL_REGISTERSMARTCONDO_LOCATOR}    id=account-information
#Account
${MENU_LBL_ACCOUNT_TH}    บัญชีผู้ใช้งาน
${MENU_LBL_ACCOUNT_EN}    Account
${MENU_LBL_ACCOUNT_LOCATOR}    id=account
#SC User
${MENU_LBL_SCUSER_TH}    SC User
${MENU_LBL_SCUSER_EN}    SC User
${MENU_LBL_SCUSER_LOCATOR}    id=sc-user

################################################################################################################################
################################################################-- menu Home top after login [Admin] --################################################################
#User Admin
${MENU_LBL_HOMETOP_ADMIN_USER_TH}      User1  
${MENU_LBL_HOMETOP_ADMIN_USER_EN}      User1  
${MENU_LBL_HOMETOP_ADMIN_USER_LOCATOR}    id=lblUsernameLogin
#Edit User Information
${MENU_LBL_HOMETOP_ADMIN_EDITUSERINFORMATION_TH}    แก้ไขข้อมูลผู้ใช้งาน
${MENU_LBL_HOMETOP_ADMIN_EDITUSERINFORMATION_EN}    Edit User Information
${MENU_LBL_HOMETOP_ADMIN_EDITUSERINFORMATION_LOCATOR}    id=lblMenuTopEditUserInformation
${MENU_ICON_HOMETOP_ADMIN_EDITUSERINFORMATION_LOCATOR}    id=iconMenuTopEditUserInformation
#Change Password
${MENU_LBL_HOMETOP_ADMIN_CHANGEPASSWORD_TH}    เปลี่ยนรหัสผ่าน
${MENU_LBL_HOMETOP_ADMIN_CHANGEPASSWORD_EN}    Change Password
${MENU_LBL_HOMETOP_ADMIN_CHANGEPASSWORD_LOCATOR}    id=lblMenuTopChangePassword
${MENU_ICON_HOMETOP_ADMIN_CHANGEPASSWORD_LOCATOR}    id=iconMenuTopChangePassword
#Log Out
${MENU_LBL_HOMETOP_ADMIN_LOGOUT_TH}    ออกจากระบบ
${MENU_LBL_HOMETOP_ADMIN_LOGOUT_EN}    Log Out
${MENU_LBL_HOMETOP_ADMIN_LOGOUT_LOCATOR}    id=lblMenuTopLogOut
${MENU_ICON_HOMETOP_ADMIN_LOGOUT_LOCATOR}    id=iconMenuTopLogOut
#Main Page icon
${MENU_ICON_MAINPAGE_LOCATOR}    id=iconMenuTopMainPage
#Setting icon
${MENU_ICON_SETTING_LOCATOR}    id=iconMenuTopSetting
#Master Management
${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_TH}    ข้อมูลมาสเตอร์
${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_EN}    Master Management
${MENU_LBL_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    id=lblMenuTopHeadingManage
${MENU_ICON_HOMETOP_ADMIN_MASTERMANAGEMENT_LOCATOR}    id=iconMenuTopHeadingManage
#Bank Account Management
${MENU_LBL_HOMETOP_ADMIN_BANKACCOUNTMANAGEMENT_TH}    จัดการบัญชีธนาคาร
${MENU_LBL_HOMETOP_ADMIN_BANKACCOUNTMANAGEMENT_EN}    Bank Account Management
${MENU_LBL_HOMETOP_ADMIN_BANKACCOUNTMANAGEMENT_LOCATOR}    id=lblMenuTopManageBankAccount
${MENU_ICON_HOMETOP_ADMIN_BANKACCOUNTMANAGEMENT_LOCATOR}    id=iconMenuTopManageBankAccount
#User Account
${MENU_LBL_HOMETOP_ADMIN_USERACCOUNT_TH}    บัญชีผู้ใช้งาน
${MENU_LBL_HOMETOP_ADMIN_USERACCOUNT_EN}    User Account
${MENU_LBL_HOMETOP_ADMIN_USERACCOUNT_LOCATOR}    id=lblMenuTopUserAccount
${MENU_ICON_HOMETOP_ADMIN_USERACCOUNT_LOCATOR}    id=iconMenuTopUserAccount
#Role Management
${MENU_LBL_HOMETOP_ADMIN_ROLEMANAGEMENT_TH}    สิทธิ์การใช้งาน
${MENU_LBL_HOMETOP_ADMIN_ROLEMANAGEMENT_EN}    Role Management
${MENU_LBL_HOMETOP_ADMIN_ROLEMANAGEMENT_LOCATOR}    id=lblMenuTopRoleManagement
${MENU_ICON_HOMETOP_ADMIN_ROLEMANAGEMENT_LOCATOR}    id=iconMenuTopRoleManagement
#Room connection approval list
${MENU_LBL_HOMETOP_ADMIN_ROOMCONNECTIONAPPROVALLIST_TH}    รายการขออนุมัติการเชื่อมต่อห้อง
${MENU_LBL_HOMETOP_ADMIN_ROOMCONNECTIONAPPROVALLIST_EN}    Room connection approval list
${MENU_LBL_HOMETOP_ADMIN_ROOMCONNECTIONAPPROVALLIST_LOCATOR}    id=lblMenuTopRoomConnectionApprovalList
${MENU_ICON_HOMETOP_ADMIN_ROOMCONNECTIONAPPROVALLIST_LOCATOR}    id=iconMenuTopRoomConnectionApprovalList
#Check asset management
${MENU_LBL_HOMETOP_ADMIN_CHECKASSETMANAGEMENT_TH}    จัดการรายการส่งมอบอุปกรณ์
${MENU_LBL_HOMETOP_ADMIN_CHECKASSETMANAGEMENT_EN}    Check asset management
${MENU_LBL_HOMETOP_ADMIN_CHECKASSETMANAGEMENT_LOCATOR}    id=lblMenuTopCheckAssetManagement
${MENU_ICON_HOMETOP_ADMIN_CHECKASSETMANAGEMENT_LOCATOR}    id=iconMenuTopCheckAssetManagement
#Employee management
${MENU_LBL_HOMETOP_ADMIN_EMPLOYEEMANAGEMENT_TH}    จัดการพนักงาน
${MENU_LBL_HOMETOP_ADMIN_EMPLOYEEMANAGEMENT_EN}    Employee Management
${MENU_LBL_HOMETOP_ADMIN_EMPLOYEEMANAGEMENT_LOCATOR}    id=lblMenuTopEmployeeManagement
${MENU_ICON_HOMETOP_ADMIN_EMPLOYEEMANAGEMENT_LOCATOR}    id=iconMenuTopEmployeeManagement
#Repair equipment management 
${MENU_LBL_HOMETOP_ADMIN_REPAIREQUIPMENTMANAGEMENT_TH}    จัดการอุปกรณ์งานซ่อม
${MENU_LBL_HOMETOP_ADMIN_REPAIREQUIPMENTMANAGEMENT_EN}    Repair equipment management 
${MENU_LBL_HOMETOP_ADMIN_REPAIREQUIPMENTMANAGEMENT_LOCATOR}    id=lblMenuTopRepairEquipmentManagement
${MENU_ICON_HOMETOP_ADMIN_REPAIREQUIPMENTMANAGEMENT_LOCATOR}    id=iconMenuTopRepairEquipmentManagement
#User Manual icon
${MENU_ICON_USERMANUALICON_LOCATOR}    id=iconMenuTopUserManual

################################################################-- menu Tab slide Master Management [Admin] --################################################################
#Incomecode Management
${MENU_LBL_MASTERMANAGEMENT_INCOMECODEMANAGEMENT_TH}    จัดการรหัสรายได้
${MENU_LBL_MASTERMANAGEMENT_INCOMECODEMANAGEMENT_EN}    Incomecode Management
${MENU_LBL_MASTERMANAGEMENT_INCOMECODEMANAGEMENT_LOCATOR}    id=propertytype
#Mulctcode Management
${MENU_LBL_MASTERMANAGEMENT_MULCTCODEMANAGEMENT_TH}    จัดการรหัสค่าปรับ
${MENU_LBL_MASTERMANAGEMENT_MULCTCODEMANAGEMENT_EN}    Mulctcode Management
${MENU_LBL_MASTERMANAGEMENT_MULCTCODEMANAGEMENT_LOCATOR}    id=mulct
#Expense Management
${MENU_LBL_MASTERMANAGEMENT_EXPENSEMANAGEMENT_TH}    จัดการรหัสค่าใช้จ่าย
${MENU_LBL_MASTERMANAGEMENT_EXPENSEMANAGEMENT_EN}    Expense Management
${MENU_LBL_MASTERMANAGEMENT_EXPENSEMANAGEMENT_LOCATOR}    id=expense
#MulctMethod Management
${MENU_LBL_MASTERMANAGEMENT_MULCTMETHODMANAGEMENT_TH}    จัดการวิธีคำนวณค่าปรับ
${MENU_LBL_MASTERMANAGEMENT_MULCTMETHODMANAGEMENT_EN}    MulctMethod Management
${MENU_LBL_MASTERMANAGEMENT_MULCTMETHODMANAGEMENT_LOCATOR}    id=calculation-mulct

################################################################-- menu Tab slide Setting [Admin] --################################################################
#Bank Account Management
${MENU_LBL_SETTING_BANKACCOUNTMANAGEMENT_TH}    จัดการบัญชีธนาคาร
${MENU_LBL_SETTING_BANKACCOUNTMANAGEMENT_EN}    Bank Account Management
${MENU_LBL_SETTING_BANKACCOUNTMANAGEMENT_LOCATOR}    id=bank
#User Account
${MENU_LBL_SETTING_USERACCOUNT_TH}    บัญชีผู้ใช้งาน
${MENU_LBL_SETTING_USERACCOUNT_EN}    User Account
${MENU_LBL_SETTING_USERACCOUNT_LOCATOR}    id=user
#Role Management
${MENU_LBL_SETTING_ROLEMANAGEMENT_TH}    สิทธิ์การใช้งาน
${MENU_LBL_SETTING_ROLEMANAGEMENT_EN}    Role Management
${MENU_LBL_SETTING_ROLEMANAGEMENT_LOCATOR}    id=permission
#Room connection approval list
${MENU_LBL_SETTING_ROOMCONNECTIONAPPROVALLIST_TH}    รายการขออนุมัติการเชื่อมต่อห้อง
${MENU_LBL_SETTING_ROOMCONNECTIONAPPROVALLIST_EN}    Room connection approval list
${MENU_LBL_SETTING_ROOMCONNECTIONAPPROVALLIST_LOCATOR}    id=approve
#Check asset management
${MENU_LBL_SETTING_CHECKASSETMANAGEMENT_TH}    จัดการรายการส่งมอบอุปกรณ์
${MENU_LBL_SETTING_CHECKASSETMANAGEMENT_EN}    Check Asset Management
${MENU_LBL_SETTING_CHECKASSETMANAGEMENT_LOCATOR}    id=asset
#Employee management
${MENU_LBL_SETTING_EMPLOYEEMANAGEMENT_TH}    จัดการพนักงาน
${MENU_LBL_SETTING_EMPLOYEEMANAGEMENT_EN}    Employee management
${MENU_LBL_SETTING_EMPLOYEEMANAGEMENT_LOCATOR}    id=cleaner
#Repair equipment management 
${MENU_LBL_SETTING_REPAIREQUIPMENTMANAGEMENT_TH}    จัดการอุปกรณ์งานซ่อม
${MENU_LBL_SETTING_REPAIREQUIPMENTMANAGEMENT_EN}    Repair equipment management 
${MENU_LBL_SETTING_REPAIREQUIPMENTMANAGEMENT_LOCATOR}    id=equipment
#${MENU_LBL_SETTING_REPAIREQUIPMENTMANAGEMENT_LOCATOR}    /html/body/app-root/app-layouts/div/app-account-setting/div[2]/div/div/div/div/div[2]/div[1]/ul/li[7]/a

################################################################################################################################
################################################################-- Type Room [Admin] --################################################################
#Room details
${MENU_LBL_TYPEROOM_ROOMDETAILS_TH}    ดูข้อมูลห้องพัก
${MENU_LBL_TYPEROOM_ROOMDETAILS_EN}    Room details
${MENU_LBL_TYPEROOM_ROOMDETAILS_LOCATOR}    id=ViewRoomDetail
# Create room owner
${MENU_LBL_TYPEROOM_CREATEROOMOWNER_TH}    เพิ่มข้อมูลเจ้าของห้อง
${MENU_LBL_TYPEROOM_CREATEROOMOWNER_EN}    Create room owner
${MENU_LBL_TYPEROOM_CREATEROOMOWNER_LOCATOR}    id=CreateRoomOwner
#View owner information
${MENU_LBL_TYPEROOM_VIEWOWNERINFORMATION_TH}    ดูข้อมูลเจ้าของห้อง
${MENU_LBL_TYPEROOM_VIEWOWNERINFORMATION_EN}    View owner information
${MENU_LBL_TYPEROOM_VIEWOWNERINFORMATION_LOCATOR}    id=ViewOwnerInformation

# #Home
# ${MENU_LBL_HOMETOP_HOME_LOCATOR}    id=menuTopHome
# #Setting
# ${MENU_LBL_HOMETOP_SETTING_LOCATOR}    id=menuTopSetting
# ${MENU_LBL_HOMETOP_PROJECTOFBUILDINGTYPE_TH}    ประเภทโครงการ
# ${MENU_LBL_HOMETOP_PROJECTOFBUILDINGTYPE_EN}    Project of Building type
# ${MENU_LBL_HOMETOP_PROJECTOFBUILDINGTYPE_LOCATOR}    id=menuTopProjectOfBuildingType
# ${MENU_LBL_HOMETOP_CLEANINGSTAFF_TH}    พนักงานทำความสะอาด
# ${MENU_LBL_HOMETOP_CLEANINGSTAFF_EN}    Cleaning Staff
# ${MENU_LBL_HOMETOP_CLEANINGSTAFF_LOCATOR}    id=menuTopCleaningStaff
# ${MENU_LBL_HOMETOP_BANKACCOUNT_TH}    บัญชีธนาคาร
# ${MENU_LBL_HOMETOP_BANKACCOUNT_EN}    Bank account
# ${MENU_LBL_HOMETOP_BANKACCOUNT_LOCATOR}    id=menuTopBankAccount
# ${MENU_LBL_HOMETOP_USERACCOUNT_TH}    บัญชีผู้ใช้งาน
# ${MENU_LBL_HOMETOP_USERACCOUNT_EN}    User Account
# ${MENU_LBL_HOMETOP_USERACCOUNT_LOCATOR}    id=menuTopUserAccount
# #Basket
# ${MENU_LBL_HOMETOP_BASKET_LOCATOR}    id=menuTopBasket
# ${MENU_LBL_HOMETOP_PACKAGESMARTRMS_TH}    Package SmartRMS
# ${MENU_LBL_HOMETOP_PACKAGESMARTRMS_EN}    Package SmartRMS
# ${MENU_LBL_HOMETOP_PACKAGESMARTRMS_LOCATOR}    id=menuTopPackageSmartRMS
# ${MENU_LBL_HOMETOP_ORDERHISTORY_TH}    ประวัติการซื้อ                                       
# ${MENU_LBL_HOMETOP_ORDERHISTORY_EN}    Order history
# ${MENU_LBL_HOMETOP_ORDERHISTORY_LOCATOR}    id=menuTopOrderHistory
# #Manual
# ${MENU_LBL_HOMETOP_MANUAL_LOCATOR}    id=menuTopManual
# ${MENU_LBL_HOMETOP_FAQ_TH}    คำถามที่พบบ่อย
# ${MENU_LBL_HOMETOP_FAQ_EN}    FAQ
# ${MENU_LBL_HOMETOP_FAQ_LOCATOR}    id=menuTopFAQ
# ${MENU_LBL_HOMETOP_INSTRUCTIONMANUAL_TH}    คู่มือการใช้งาน
# ${MENU_LBL_HOMETOP_INSTRUCTIONMANUAL_EN}    Instruction manual
# ${MENU_LBL_HOMETOP_INSTRUCTIONMANUAL_LOCATOR}    id=menuTopInstructionManual
# ${MENU_LBL_HOMETOP_FORNEWUSERS_TH}    สำหรับผู้ใช้งานใหม่
# ${MENU_LBL_HOMETOP_FORNEWUSERS_EN}    For new users
# ${MENU_LBL_HOMETOP_FORNEWUSERS_LOCATOR}    id=menuTopForNewUsers
# ${MENU_LBL_HOMETOP_DOWNLOADPOSTER_TH}    ดาวน์โหลด Poster
# ${MENU_LBL_HOMETOP_DOWNLOADPOSTER_EN}    Download Poster
# ${MENU_LBL_HOMETOP_DOWNLOADPOSTER_LOCATOR}    id=menuTopDownloadPoster


# ############## menu Tab slide Setting Project  ##############
# ${MENU_LBL_SETTING_PROJECTOFBUILDINGTYPE_TH}    ประเภทโครงการ
# ${MENU_LBL_SETTING_PROJECTOFBUILDINGTYPE_EN}    Project of Building type
# ${MENU_LBL_SETTING_PROJECTOFBUILDINGTYPE_LOCATOR}    id=menuSettingProjectOfBuildingType
# ${MENU_LBL_SETTING_CLEANINGSTAFF_TH}    พนักงานทำความสะอาด
# ${MENU_LBL_SETTING_CLEANINGSTAFF_EN}    Cleaning Staff
# ${MENU_LBL_SETTING_CLEANINGSTAFF_LOCATOR}    id=menuSettingCleaningStaff
# ${MENU_LBL_SETTING_BANKACCOUNT_TH}    บัญชีธนาคาร
# ${MENU_LBL_SETTING_BANKACCOUNT_EN}    Bank account
# ${MENU_LBL_SETTING_BANKACCOUNT_LOCATOR}    id=menuSettingBankAccount
# ${MENU_LBL_SETTING_USERACCOUNT_TH}    บัญชีผู้ใช้งาน
# ${MENU_LBL_SETTING_USERACCOUNT_EN}    User Account
# ${MENU_LBL_SETTING_USERACCOUNT_LOCATOR}    id=menuSettingUserAccount

# ############## menu Building top ##############
# ### Room ###
# ${MENU_LBL_BUILDINGTOP_ROOM_TH}    ห้อง
# ${MENU_LBL_BUILDINGTOP_ROOM_EN}    Room
# ${MENU_LBL_BUILDINGTOP_ROOM_LOCATOR}    id=menuRoomListRoom

# ### Booking ###
# ${MENU_LBL_BUILDINGTOP_BOOKING_TH}    จองห้องพัก
# ${MENU_LBL_BUILDINGTOP_BOOKING_EN}    Booking
# ${MENU_LBL_BUILDINGTOP_BOOKING_LOCATOR}    id=menuRoomListBooking
# # menu Building Sub Booking
# ${MENU_LBL_BUILDINGTOP_BOOKING_DAILY_TH}    รายวัน
# ${MENU_LBL_BUILDINGTOP_BOOKING_DAILY_EN}    Daily
# ${MENU_LBL_BUILDINGTOP_BOOKING_DAILY_LOCATOR}    id=menuRoomListDaily
# ${MENU_LBL_BUILDINGTOP_BOOKING_MONTHLY_TH}    รายเดือน
# ${MENU_LBL_BUILDINGTOP_BOOKING_MONTHLY_EN}    Monthly
# ${MENU_LBL_BUILDINGTOP_BOOKING_MONTHLY_LOCATOR}    id=menuRoomListMonthly
# ${MENU_LBL_BUILDINGTOP_BOOKING_FINDABOOKINGPERSON_TH}    ค้นหาผู้จอง
# ${MENU_LBL_BUILDINGTOP_BOOKING_FINDABOOKINGPERSON_EN}    Find a booking person
# ${MENU_LBL_BUILDINGTOP_BOOKING_FINDABOOKINGPERSON_LOCATOR}    id=menuRoomListFindABookingPerson

# ### Waiting list - Tenant ###
# ${MENU_LBL_BUILDINGTOP_WAITINGLISTTENANT_TH}    ผู้จอง-ผู้เช่า
# ${MENU_LBL_BUILDINGTOP_WAITINGLISTTENANT_EN}    Waiting list - Tenant
# ${MENU_LBL_BUILDINGTOP_WAITINGLISTTENANT_LOCATOR}    id=menuRoomListWaitingListTenant
# #menu Building Sub Waiting list - Tenant
# ${MENU_LBL_BUILDINGTOP_WAITINGLISTTENANT_INTERESTEDPERSON_TH}    ผู้จอง (Waiting List)
# ${MENU_LBL_BUILDINGTOP_WAITINGLISTTENANT_INTERESTEDPERSON_EN}    Interested person (Waiting List)
# ${MENU_LBL_BUILDINGTOP_WAITINGLISTTENANT_INTERESTEDPERSON_LOCATOR}    id=menuRoomListInterestedPersonWaitingList
# ${MENU_LBL_BUILDINGTOP_WAITINGLISTTENANT_TENANTS_TH}    ผู้เช่า
# ${MENU_LBL_BUILDINGTOP_WAITINGLISTTENANT_TENANTS_EN}    Tenants
# ${MENU_LBL_BUILDINGTOP_WAITINGLISTTENANT_TENANTS_LOCATOR}    id=menuRoomListTenants

# ### Rent - Expense ###
# ${MENU_LBL_BUILDINGTOP_RENTEXPENSE_TH}    ค่าเช่า-ค่าใช้จ่าย
# ${MENU_LBL_BUILDINGTOP_RENTEXPENSE_EN}    Rent - Expense
# ${MENU_LBL_BUILDINGTOP_RENTEXPENSE_LOCATOR}    id=menuRoomListRentExpense
# # menu Building Sub Rent - Expense
# ${MENU_LBL_BUILDINGTOP_RENTEXPENSE_MANAGERENT_TH}    จัดการค่าเช่า
# ${MENU_LBL_BUILDINGTOP_RENTEXPENSE_MANAGERENT_EN}    Manage rent
# ${MENU_LBL_BUILDINGTOP_RENTEXPENSE_MANAGERENT_LOCATOR}    id=menuRoomListManageRent
# ${MENU_LBL_BUILDINGTOP_RENTEXPENSE_MANAGEOVERDUE_TH}    จัดการใบแจ้งหนี้ค้างชำระ
# ${MENU_LBL_BUILDINGTOP_RENTEXPENSE_MANAGEOVERDUE_EN}    Manage overdue
# ${MENU_LBL_BUILDINGTOP_RENTEXPENSE_MANAGEOVERDUE_LOCATOR}    id=menuRoomListManageOverdue
# ${MENU_LBL_BUILDINGTOP_RENTEXPENSE_MANAGEEXPENSE_TH}    จัดการค่าใช้จ่าย
# ${MENU_LBL_BUILDINGTOP_RENTEXPENSE_MANAGEEXPENSE_EN}    Manage expense
# ${MENU_LBL_BUILDINGTOP_RENTEXPENSE_MANAGEEXPENSE_LOCATOR}    id=menuRoomListManageExpense
# ${MENU_LBL_BUILDINGTOP_RENTEXPENSE_MANAGEOTHERINCOME_TH}    จัดการรายรับอื่นๆ
# ${MENU_LBL_BUILDINGTOP_RENTEXPENSE_MANAGEOTHERINCOME_EN}    Manage other income
# ${MENU_LBL_BUILDINGTOP_RENTEXPENSE_MANAGEOTHERINCOME_LOCATOR}    id=menuRoomListManageOtherIncome

# ### Approve ###
# ${MENU_LBL_BUILDINGTOP_APPROVE_TH}    อนุมัติ
# ${MENU_LBL_BUILDINGTOP_APPROVE_EN}    Approve
# ${MENU_LBL_BUILDINGTOP_APPROVE_LOCATOR}    id=menuRoomListApprove
# # menu Building Sub Approve
# ${MENU_LBL_BUILDINGTOP_APPROVE_APPROVINGTRANSFERPAYMENT_TH}    อนุมัติการโอนเงิน
# ${MENU_LBL_BUILDINGTOP_APPROVE_APPROVINGTRANSFERPAYMENT_EN}    Approving transfer payment
# ${MENU_LBL_BUILDINGTOP_APPROVE_APPROVINGTRANSFERPAYMENT_LOCATOR}    id=menuRoomListApprovingTransferPayment
# ${MENU_LBL_BUILDINGTOP_APPROVE_APPROVINGTRANSFERPAYMENT_LOCATORTEXT}    id=txtRoomListApprovingTransferPayment
# ${MENU_LBL_BUILDINGTOP_APPROVE_APPROVEDTENANTS_TH}    อนุมัติผู้เช่า
# ${MENU_LBL_BUILDINGTOP_APPROVE_APPROVEDTENANTS_EN}    Approved tenants
# ${MENU_LBL_BUILDINGTOP_APPROVE_APPROVEDTENANTS_LOCATOR}    id=menuRoomListApprovedTenants
# ${MENU_LBL_BUILDINGTOP_APPROVE_APPROVEDTENANTS_LOCATORTEXT}    id=txtRoomListApprovedTenants

# ### Finance ###
# ${MENU_LBL_BUILDINGTOP_FINANCE_TH}    การเงิน
# ${MENU_LBL_BUILDINGTOP_FINANCE_EN}    Finance
# ${MENU_LBL_BUILDINGTOP_FINANCE_LOCATOR}    id=menuRoomListFinance
# # menu Building Sub Finance
# ${MENU_LBL_BUILDINGTOP_FINANCE_INVOICES_TH}    ใบแจ้งหนี้
# ${MENU_LBL_BUILDINGTOP_FINANCE_INVOICES_EN}    Invoices
# ${MENU_LBL_BUILDINGTOP_FINANCE_INVOICES_LOCATOR}    id=menuRoomListInvoices
# ${MENU_LBL_BUILDINGTOP_FINANCE_RECEIPTS_TH}    ใบเสร็จรับเงิน
# ${MENU_LBL_BUILDINGTOP_FINANCE_RECEIPTS_EN}    Receipts
# ${MENU_LBL_BUILDINGTOP_FINANCE_RECEIPTS_LOCATOR}    id=menuRoomListReceipts
# ${MENU_LBL_BUILDINGTOP_FINANCE_TAXINVOICE_TH}    ใบกำกับภาษี
# ${MENU_LBL_BUILDINGTOP_FINANCE_TAXINVOICE_EN}    Tax invoice
# ${MENU_LBL_BUILDINGTOP_FINANCE_TAXINVOICE_LOCATOR}    id=menuRoomListTaxInvoice

# ### Notify ###
# ${MENU_LBL_BUILDINGTOP_NOTIFY_TH}    แจ้ง
# ${MENU_LBL_BUILDINGTOP_NOTIFY_EN}    Notify
# ${MENU_LBL_BUILDINGTOP_NOTIFY_LOCATOR}    id=menuRoomListNotify
# #menu Building Sub Notify
# ${MENU_LBL_BUILDINGTOPSUP_NOTIFY_ANNOUNCEMENT_TH}    แจ้งประกาศ
# ${MENU_LBL_BUILDINGTOPSUP_NOTIFY_ANNOUNCEMENT_EN}    Announcement
# ${MENU_LBL_BUILDINGTOPSUP_NOTIFY_ANNOUNCEMENT_LOCATOR}    id=menuRoomListAnnouncement
# ${MENU_LBL_BUILDINGTOPSUP_NOTIFY_NOTIFYPARCEL_TH}    แจ้งรับพัสดุ
# ${MENU_LBL_BUILDINGTOPSUP_NOTIFY_NOTIFYPARCEL_EN}    Notify parcel
# ${MENU_LBL_BUILDINGTOPSUP_NOTIFY_NOTIFYPARCEL_LOCATOR}    id=menuRoomListNotifyParcel
# ${MENU_LBL_BUILDINGTOPSUP_NOTIFY_BUILDINGREPORT_TH}    แจ้งอาคาร
# ${MENU_LBL_BUILDINGTOPSUP_NOTIFY_BUILDINGREPORT_EN}    Building Report
# ${MENU_LBL_BUILDINGTOPSUP_NOTIFY_BUILDINGREPORT_LOCATOR}    id=menuRoomListBuildingReport
# ${MENU_LBL_BUILDINGTOPSUP_NOTIFY_BUILDINGREPORT_LOCATORTEXT}    id=txtRoomListBuildingReport

# ### Report ###
# ${MENU_LBL_BUILDINGTOP_REPORT_TH}    รายงาน
# ${MENU_LBL_BUILDINGTOP_REPORT_EN}    Report
# ${MENU_LBL_BUILDINGTOP_REPORT_LOCATOR}    id=menuRoomListReport
# # menu Building Sub Report
# ${MENU_LBL_BUILDINGTOP_REPORT_PAYMENTREPORT_TH}    รายงานการชำระเงิน
# ${MENU_LBL_BUILDINGTOP_REPORT_PAYMENTREPORT_EN}    Payment Report
# ${MENU_LBL_BUILDINGTOP_REPORT_PAYMENTREPORT_LOCATOR}    id=menuRoomListPaymentReport
# ${MENU_LBL_BUILDINGTOP_REPORT_OUTSTANDINGREPORT_TH}    รายงานค้างชำระ
# ${MENU_LBL_BUILDINGTOP_REPORT_OUTSTANDINGREPORT_EN}    Outstanding Report
# ${MENU_LBL_BUILDINGTOP_REPORT_OUTSTANDINGREPORT_LOCATOR}    id=menuRoomListOutstandingReport
# ${MENU_LBL_BUILDINGTOP_REPORT_MOVEINREPORT_TH}    รายงานย้ายเข้า
# ${MENU_LBL_BUILDINGTOP_REPORT_MOVEINREPORT_EN}    Move in Report
# ${MENU_LBL_BUILDINGTOP_REPORT_MOVEINREPORT_LOCATOR}    id=menuRoomListMoveInReport
# ${MENU_LBL_BUILDINGTOP_REPORT_MOVEOUTREPORT_TH}    รายงานย้ายออก
# ${MENU_LBL_BUILDINGTOP_REPORT_MOVEOUTREPORT_EN}    Move out Report
# ${MENU_LBL_BUILDINGTOP_REPORT_MOVEOUTREPORT_LOCATOR}    id=menuRoomListMoveOutReport
# ${MENU_LBL_BUILDINGTOP_REPORT_MONTHLYINCOMEREPORT_TH}    รายงานรายรับประจำเดือน
# ${MENU_LBL_BUILDINGTOP_REPORT_MONTHLYINCOMEREPORT_EN}    Monthly income Report
# ${MENU_LBL_BUILDINGTOP_REPORT_MONTHLYINCOMEREPORT_LOCATOR}    id=menuRoomListMonthlyIncomeReport
# ${MENU_LBL_BUILDINGTOP_REPORT_ALLDEPOSITREPORT_TH}    รายงานเงินประกันทั้งหมด
# ${MENU_LBL_BUILDINGTOP_REPORT_ALLDEPOSITREPORT_EN}    All deposit Report
# ${MENU_LBL_BUILDINGTOP_REPORT_ALLDEPOSITREPORT_LOCATOR}    id=menuRoomListAllDepositReport
# ${MENU_LBL_BUILDINGTOP_REPORT_ALLRESERVEMONEYREPORT_TH}    รายงานเงินจองทั้งหมด
# ${MENU_LBL_BUILDINGTOP_REPORT_ALLRESERVEMONEYREPORT_EN}    All Reserve money Report
# ${MENU_LBL_BUILDINGTOP_REPORT_ALLRESERVEMONEYREPORT_LOCATOR}    id=menuRoomListAllReserveMoneyReport
# ${MENU_LBL_BUILDINGTOP_REPORT_DAILYROOMREPORT_TH}    รายงานห้องพักรายวัน
# ${MENU_LBL_BUILDINGTOP_REPORT_DAILYROOMREPORT_EN}    Daily room Report
# ${MENU_LBL_BUILDINGTOP_REPORT_DAILYROOMREPORT_LOCATOR}    id=menuRoomListDailyRoomReport
# ${MENU_LBL_BUILDINGTOP_REPORT_REPAIRHISTORYCLEANINGHISTORYREPORT_TH}    รายงานประวัติการซ่อมแซม - ทำความสะอาด
# ${MENU_LBL_BUILDINGTOP_REPORT_REPAIRHISTORYCLEANINGHISTORYREPORT_EN}    Repair History - Cleaning History Report
# ${MENU_LBL_BUILDINGTOP_REPORT_REPAIRHISTORYCLEANINGHISTORYREPORT_LOCATOR}    id=menuRoomListRepairHistoryCleaningHistoryReport
# ${MENU_LBL_BUILDINGTOP_REPORT_FACILITYUSAGEHISTORYREPORT_TH}    รายงานประวัติการใช้สิ่งอำนวยความสะดวก
# ${MENU_LBL_BUILDINGTOP_REPORT_FACILITYUSAGEHISTORYREPORT_EN}    Facility usage history Report
# ${MENU_LBL_BUILDINGTOP_REPORT_FACILITYUSAGEHISTORYREPORT_LOCATOR}    id=menuRoomListFacilityUsageHistoryReport
# ${MENU_LBL_BUILDINGTOP_REPORT_WATERUNITELECTRICUNITREPORT_TH}    รายงานหน่วยน้ำหน่วยไฟ
# ${MENU_LBL_BUILDINGTOP_REPORT_WATERUNITELECTRICUNITREPORT_EN}    Water unit, Electric unit Report
# ${MENU_LBL_BUILDINGTOP_REPORT_WATERUNITELECTRICUNITREPORT_LOCATOR}    id=menuRoomListWaterUnitElectricUnitReport

# ### Building Overview ###
# ${MENU_LBL_BUILDINGTOP_BUILDINGOVERVIEW_TH}    ภาพรวมอาคาร
# ${MENU_LBL_BUILDINGTOP_BUILDINGOVERVIEW_EN}    Building Overview
# ${MENU_LBL_BUILDINGTOP_BUILDINGOVERVIEW_LOCATOR}    id=menuRoomListBuildingOverview

# ### Setting Building #####
# ${MENU_LBL_BUILDINGTOP_SETTINGBUILDING_LOCATOR}    id=menuRoomListSettingBuilding

# ############## menu Tab slide Setting Building  ##############
# ${MENU_LBL_SETTING_BUILDINGINFORMATION_TH}    ข้อมูลอาคาร
# ${MENU_LBL_SETTING_BUILDINGINFORMATION_EN}    Building information
# ${MENU_LBL_SETTING_BUILDINGINFORMATION_LOCATOR}    id=menuSettingBuildingInformation
# ${MENU_LBL_SETTING_SETTINGFLOORANDROOM_TH}    ชั้นและห้อง
# ${MENU_LBL_SETTING_SETTINGFLOORANDROOM_EN}    Setting Floor and Room
# ${MENU_LBL_SETTING_SETTINGFLOORANDROOM_LOCATOR}    id=menuSettingFloorAndRoom
# ${MENU_LBL_SETTING_SETTINGCREATEEDITROOMTYPE_TH}    สร้างและแก้ไขประเภทห้อง
# ${MENU_LBL_SETTING_SETTINGCREATEEDITROOMTYPE_EN}    Setting Create, Edit room type
# ${MENU_LBL_SETTING_SETTINGCREATEEDITROOMTYPE_LOCATOR}    id=menuSettingCreateEditRoomType
# ${MENU_LBL_SETTING_SETTINGCHANGEROOMNAMEANDROOMTYPE_TH}    เปลี่ยนชื่อห้องและประเภทห้อง
# ${MENU_LBL_SETTING_SETTINGCHANGEROOMNAMEANDROOMTYPE_EN}    Setting Change Room name and Room type
# ${MENU_LBL_SETTING_SETTINGCHANGEROOMNAMEANDROOMTYPE_LOCATOR}    id=menuSettingChangeRoomNameAndRoomType
# ${MENU_LBL_SETTING_SETTINGFACILITYINTHEROOM_TH}    สิ่งอำนวยความสะดวกในห้องพัก
# ${MENU_LBL_SETTING_SETTINGFACILITYINTHEROOM_EN}    Setting Facility in the room
# ${MENU_LBL_SETTING_SETTINGFACILITYINTHEROOM_LOCATOR}    id=menuSettingFacilityInTheRoom
# ${MENU_LBL_SETTING_SETTINGFACILITYINTHEBUILDING_TH}    สิ่งอำนวยความสะดวกในอาคาร
# ${MENU_LBL_SETTING_SETTINGFACILITYINTHEBUILDING_EN}    Setting Facility in the building
# ${MENU_LBL_SETTING_SETTINGFACILITYINTHEBUILDING_LOCATOR}    id=menuSettingFacilityInTheBuilding
# ${MENU_LBL_SETTING_SETTINGWATERPRICEANDELECTRICPRICE_TH}    ค่าน้ำ ค่าไฟ
# ${MENU_LBL_SETTING_SETTINGWATERPRICEANDELECTRICPRICE_EN}    Setting Water price and Electric price
# ${MENU_LBL_SETTING_SETTINGWATERPRICEANDELECTRICPRICE_LOCATOR}    id=menuSettingWaterPriceAndElectricPrice
# ${MENU_LBL_SETTING_SETTINGMAXIMUMWATERUNITANDMAXIMUMELECTRICUNIT_TH}    หน่วยน้ำ หน่วยไฟสูงสุด
# ${MENU_LBL_SETTING_SETTINGMAXIMUMWATERUNITANDMAXIMUMELECTRICUNIT_EN}    Maximum Water unit and Maximum Electric unit
# ${MENU_LBL_SETTING_SETTINGMAXIMUMWATERUNITANDMAXIMUMELECTRICUNIT_LOCATOR}    id=menuSettingMaximumWaterUnitAndMaximumElectricUnit
# ${MENU_LBL_SETTING_SETTINGINVOICERECEIPTTAXINVOICE_TH}    ใบแจ้งหนี้/ใบเสร็จ/ใบกำกับภาษี
# ${MENU_LBL_SETTING_SETTINGINVOICERECEIPTTAXINVOICE_EN}    Setting Invoice/Receipt/Tax-Invoice
# ${MENU_LBL_SETTING_SETTINGINVOICERECEIPTTAXINVOICE_LOCATOR}    id=menuSettingInvoiceReceiptTaxInvoice
# ${MENU_LBL_SETTING_SETTINGUPLOADCONTRACT_TH}    อัพโหลดสัญญา
# ${MENU_LBL_SETTING_SETTINGUPLOADCONTRACT_EN}    Setting Upload contract
# ${MENU_LBL_SETTING_SETTINGUPLOADCONTRACT_LOCATOR}    id=menuSettingUploadContract

# ############## menu Tab Room Detail  ##############
# ${MENU_LBL_ROOMDETAIL_ROOM_TH}    ห้อง
# ${MENU_LBL_ROOMDETAIL_ROOM_EN}    Room
# ${MENU_LBL_ROOMDETAIL_ROOM_LOCATOR}    id=menuRoomDetail
# ${MENU_LBL_ROOMDETAIL_MOVEROOM_TH}    ย้ายห้อง
# ${MENU_LBL_ROOMDETAIL_MOVEROOM_EN}    Move Room
# ${MENU_LBL_ROOMDETAIL_MOVEROOM_LOCATOR}    id=menuRoomDetailMoveRoom
# ${MENU_LBL_ROOMDETAIL_BOOKINGLIST_TH}    รายการผู้จอง
# ${MENU_LBL_ROOMDETAIL_BOOKINGLIST_EN}    Booking list
# ${MENU_LBL_ROOMDETAIL_BOOKINGLIST_LOCATOR}    id=menuRoomDetailBookingList
# ${MENU_LBL_ROOMDETAIL_CONTRACTMOVEIN_TH}    สัญญาเช่า/ย้ายเข้า
# ${MENU_LBL_ROOMDETAIL_CONTRACTMOVEIN_EN}    Contract/Move in
# ${MENU_LBL_ROOMDETAIL_CONTRACTMOVEIN_LOCATOR}    id=menuRoomDetailContractMoveIn
# ${MENU_LBL_ROOMDETAIL_CLEANING_TH}    ทำความสะอาด
# ${MENU_LBL_ROOMDETAIL_CLEANING_EN}    Cleaning
# ${MENU_LBL_ROOMDETAIL_CLEANING_LOCATOR}    id=menuRoomDetailCleaning
# ${MENU_LBL_ROOMDETAIL_REPAIR_TH}    ซ่อมแซม
# ${MENU_LBL_ROOMDETAIL_REPAIR_EN}    Repair
# ${MENU_LBL_ROOMDETAIL_REPAIR_LOCATOR}    id=menuRoomDetailRepair
# ${MENU_LBL_ROOMDETAIL_OTHERSERVICE_TH}    บริการอื่น ๆ
# ${MENU_LBL_ROOMDETAIL_OTHERSERVICE_EN}    Other service
# ${MENU_LBL_ROOMDETAIL_OTHERSERVICE_LOCATOR}    id=menuRoomDetailOtherService
# ${MENU_LBL_ROOMDETAIL_MOVEOUT_TH}    ย้ายออก
# ${MENU_LBL_ROOMDETAIL_MOVEOUT_EN}    Move out
# ${MENU_LBL_ROOMDETAIL_MOVEOUT_LOCATOR}    id=menuRoomDetailMoveOut




