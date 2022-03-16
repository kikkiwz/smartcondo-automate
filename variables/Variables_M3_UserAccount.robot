*** Variables ***
################################################################-- Check User Account information --################################################################
#Add button
${USERACCOUNT_BTN_ADD_TH}    เพิ่ม
${USERACCOUNT_BTN_ADD_EN}    Create
${USERACCOUNT_BTN_ADD_LOCATOR}    id=btnAddUserAccount

#Search button
${USERACCOUNT_BTN_SEARCH_TH}    ค้นหา
${USERACCOUNT_BTN_SEARCH_EN}    Search
${USERACCOUNT_BTN_SEARCH_LOCATOR}    id=btnSearch

#Clear button
${USERACCOUNT_BTN_CLEAR_TH}    คืนค่า
${USERACCOUNT_BTN_CLEAR_EN}    Clear
${USERACCOUNT_BTN_CLEAR_LOCATOR}    id=btnClear

#Button page
${USERACCOUNT_BTN_20}    20
${USERACCOUNT_BTN_20_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[11]/div[1]/div[1]
${USERACCOUNT_BTN_50}    50
${USERACCOUNT_BTN_50_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[11]/div[1]/div[2]
${USERACCOUNT_BTN_100}    100
${USERACCOUNT_BTN_100_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[11]/div[1]/div[3]
${USERACCOUNT_BTN_1000}    1000
${USERACCOUNT_BTN_1000_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[11]/div[1]/div[4]
${USERACCOUNT_BTN_NEXTPAGE_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[11]/div[2]/div[6]
${USERACCOUNT_BTN_PREVIOSPAGE_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[11]/div[2]/div[2]
${USERACCOUNT_LBL_PAGE_1}    1
${USERACCOUNT_LBL_PAGE_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[11]/div[2]/div[3]
${USERACCOUNT_LBL_PagesXFromY_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[11]/div[2]/div[1]
${USERACCOUNT_ICON_ARRORWLEFT_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[11]/div[2]/div[2]
${USERACCOUNT_ICON_ARRORWRIGHT_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[11]/div[2]/div[4]

#Edit Icon
${USERACCOUNT_ICON_EDIT_TH}    แก้ไข
${USERACCOUNT_ICON_EDIT_EN}    Edit
${USERACCOUNT_ICON_EDIT_LOCATOR}    id=btnEdit1
${USERACCOUNT_LBL_EDIT_TH_LOCATOR}    xpath=//*[@id="cdk-overlay-1"]
${USERACCOUNT_LBL_EDIT_EN_LOCATOR}    xpath=//*[@id="cdk-overlay-0"]
${USERACCOUNT_COLUMN_ACTION}    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div/div/table/tbody/tr[1]/td[5]

#Delete Icon
${USERACCOUNT_ICON_DELETE_TH}    ลบ
${USERACCOUNT_ICON_DELETE_EN}    Delete
${USERACCOUNT_ICON_DELETE_LOCATOR}    id=btnDelete1
${USERACCOUNT_LBL_DELETE_TH_LOCATOR}    xpath=//*[@id="cdk-overlay-2"]
${USERACCOUNT_LBL_DELETE_EN_LOCATOR}    xpath=//*[@id="cdk-overlay-1"]

#Icon X Close
${USERACCOUNT_BTN_CLOSE_LOCATOR}    class=ant-modal-close-x

#-------------------------------------------- Search Check User Account --------------------------------------------#
############## Header ############## 
${USERACCOUNT_MENUNAME_EN}    User Account
${USERACCOUNT_MENUNAME_TH}    บัญชีผู้ใช้งาน
#User Account Header
${USERACCOUNT_SEARCH_LBL_HEADER_TH}    บัญชีผู้ใช้งาน
${USERACCOUNT_SEARCH_LBL_HEADER_EN}    User Account
${USERACCOUNT_SEARCH_LBL_LOCATOR}    id=lblUserAccount    
${USERACCOUNT_SEARCH_LBL_HEADER_LOCATOR}    xpath=/html/body/app-root/app-layouts/div/app-account-setting/div[1]/div/div/h3 
#Check Property Manager
${USERACCOUNT_SEARCH_LBL_PROPERTYMANAGER_TH}    ผู้ดูแลโครงการ 
${USERACCOUNT_SEARCH_LBL_PROPERTYMANAGER_EN}    Property Manager
${USERACCOUNT_SEARCH_LBL_PROPERTYMANAGER_LOCATOR}    id=lblPropertyManager
${USERACCOUNT_SEARCH_DDL_PROPERTYMANAGER_LOCATOR}    id=txtProjectManager  
${USERACCOUNT_SEARCH_DDL_PROPERTYMANAGER_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div/div[2]/div[replace_indexList]/div[2]
${USERACCOUNT_SEARCH_DDL_PROPERTYMANAGER_CLASS_LOCATOR}    class=dx-list-select-all-label
${USERACCOUNT_SEARCH_DDL_PROPERTYMANAGER_PLACEHOLDER_LOCATOR}    xpath=/html/body/app-root/app-layouts/div/app-account-setting/div[2]/div/div/div/div/div[2]/div[2]/app-setting-user/div/div[2]/div/div[2]/dx-tag-box/div[1]/div/div[1]/div[1]/div
#Property Manager Value
${USERACCOUNT_SEARCH_EN_PROPERTYMANAGER_PLACEHOLDER_VALUE}    Select
${USERACCOUNT_SEARCH_TH_PROPERTYMANAGER_PLACEHOLDER_VALUE}    เลือก
${USERACCOUNT_SEARCH_EN_PROPERTYMANAGER_VALUE1}    All
${USERACCOUNT_SEARCH_EN_PROPERTYMANAGER_VALUE2}    SmartRmsCondo B
${USERACCOUNT_SEARCH_TH_PROPERTYMANAGER_VALUE2}    SmartRmsCondo B
#Check Search Filter
${USERACCOUNT_SEARCH_LBL_SEARCHFILTER_TH}    ชื่อ,นามสกุล,อีเมล,สิทธิ์ 
${USERACCOUNT_SEARCH_LBL_SEARCHFILTER_EN}    Firstname,Lastname,Email,Role
${USERACCOUNT_SEARCH_LBL_SEARCHFILTER_LOCATOR}    id=lblSearchFilter
${USERACCOUNT_SEARCH_TXT_SEARCHFILTER_LOCATOR}    id=txtSearch
${USERACCOUNT_SEARCH_TXT_SEARCHFILTER_AUTOCOMPLETE_LOCATOR}    id=input_txtSearch
${USERACCOUNT_SEARCH_PLACEHOLDER_SEARCHFILTER_LOCATOR}    id=//*[@id="txtSearch"]/div/div[1]/div
#No Data
${USERACCOUNT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[6]/span
#Firstname,Lastname,Email,Role
${USERACCOUNT_SEARCH_EN_SEARCHFILTER_PLACEHOLDER_VALUE}    Search
${USERACCOUNT_SEARCH_TH_SEARCHFILTER_PLACEHOLDER_VALUE}    ค้นหา
######################################### Table ##################################################### 
#No
${USERACCOUNT_SEARCH_LBL_RESULT_NO_TH}    ลำดับ
${USERACCOUNT_SEARCH_LBL_RESULT_NO_EN}    No.
${USERACCOUNT_SEARCH_LBL_RESULT_NO_LOCATOR}    id=dx-col-11
#First name - Last name
${USERACCOUNT_SEARCH_LBL_RESULT_NAME_TH}    ชื่อ - นามสกุล
${USERACCOUNT_SEARCH_LBL_RESULT_NAME_EN}    First name - Last name
${USERACCOUNT_SEARCH_LBL_RESULT_NAME_LOCATOR}    id=dx-col-12
#E-mail
${USERACCOUNT_SEARCH_LBL_RESULT_EMAIL_TH}    อีเมล
${USERACCOUNT_SEARCH_LBL_RESULT_EMAIL_EN}    E-mail
${USERACCOUNT_SEARCH_LBL_RESULT_EMAIL_LOCATOR}    id=dx-col-13
#License
${USERACCOUNT_SEARCH_LBL_RESULT_LICENSE_TH}    สิทธิ์
${USERACCOUNT_SEARCH_LBL_RESULT_LICENSE_EN}    License
${USERACCOUNT_SEARCH_LBL_RESULT_LICENSE_LOCATOR}    id=dx-col-14
${USERACCOUNT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[6]/span
#For check value table
${USERACCOUNT_SEARCH_LBL_RESULT_DATA_LOCATOR_TH}    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div/div/table/tbody/tr[row]/td[col]
${USERACCOUNT_SEARCH_LBL_RESULT_DATA_LOCATOR_EN}    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div/div/table/tbody/tr[row]/td[col]
@{USERACCOUNT_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_TH}    ลำดับ    ชื่อ - นามสกุล    อีเมล    สิทธิ์
@{USERACCOUNT_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_EN}    No    First name - Last name    E-mail    License
${USERACCOUNT_SEARCH_LBL_RESULT_DATA_ROW1_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div/div/table/tbody/tr[row]/td[col]
${USERACCOUNT_SEARCH_NUMCOL}    4

#-------------------------------------------- CreateEdit Check User Account --------------------------------------------#
#Header Create
${USERACCOUNT_ADDEDIT_LBL_HEADER_CREATEUSERACCOUNT_TH}    เพิ่มข้อมูลผู้ใช้งาน
${USERACCOUNT_ADDEDIT_LBL_HEADER_CREATEUSERACCOUNT_EN}    Create User Account
${USERACCOUNT_ADDEDIT_LBL_HEADER_CREATEUSERACCOUNT_LOCATOR}   id=lblAddInfo
#Header Edit
${USERACCOUNT_ADDEDIT_LBL_HEADER_EDITCREATEUSERACCOUNT_TH}    แก้ไขข้อมูลผู้ใช้งาน
${USERACCOUNT_ADDEDIT_LBL_HEADER_EDITCREATEUSERACCOUNT_EN}    Edit User Account
${USERACCOUNT_ADDEDIT_LBL_HEADER_EDITCREATEUSERACCOUNT_LOCATOR}   id=editUserInfo
#role
${USERACCOUNT_ADDEDIT_LBL_ROLE_TH}    สิทธิ์ *
${USERACCOUNT_ADDEDIT_LBL_ROLE_EN}    role *
${USERACCOUNT_ADDEDIT_LBL_ROLE_LOCATOR}    id=lblRole
${USERACCOUNT_ADDEDIT_DDL_ROLE_LOCATOR}    id=txtRoleName
${USERACCOUNT_ADDEDIT_TXT_ROLE_LOCATOR}    id=input_txtRoleName
${USERACCOUNT_ADDEDIT_DDL_ROLE_LIST_LOCATOR}    xpath=/html/body/div[2]/div/div/div/div[1]/div/div/div[2]/div[replace_indexList]/div
${USERACCOUNT_ADDEDIT_DDL_ROLE_CLASS_LOCATOR}    class=dx-list-item-content
${USERACCOUNT_ROLE_EN_VALUE1}    robot1
${USERACCOUNT_ROLE_EN_VALUE2}    Test1
${USERACCOUNT_ROLE_TH_VALUE1}    robot1
#Prefix
${USERACCOUNTADDEDIT_LBL_PREFIX_TH}    คำนำหน้า
${USERACCOUNT_ADDEDIT_LBL_PREFIX_EN}    Prefix
${USERACCOUNT_ADDEDIT_LBL_PREFIX_LOCATOR}    id=lblPrefix
${USERACCOUNT_ADDEDIT_DDL_PREFIX_LOCATOR}    id=ddlPrefix
${USERACCOUNT_ADDEDIT_TXT_PREFIX_LOCATOR}    id=input_ddlPrefix
${USERACCOUNT_ADDEDIT_DDL_PREFIX_LIST_LOCATOR}    xpath=/html/body/div[2]/div/div/div/div[1]/div/div/div[2]/div[replace_indexList]/div
${USERACCOUNT_ADDEDIT_DDL_PREFIX_CLASS_LOCATOR}    class=dx-item dx-list-item
${USERACCOUNT_ROLE_EN_VALUE_MR}    Mr.
${USERACCOUNT_ROLE_EN_VALUE_MRS}    Mrs.
${USERACCOUNT_ROLE_EN_VALUE_MISS}    Miss.
${USERACCOUNT_ROLE_TH_VALUE_MR}    นาย
${USERACCOUNT_ROLE_TH_VALUE_MRS}    นางสาว
#First name
${USERACCOUNT_ADDEDIT_LBL_FIRSTNAME_TH}    ชื่อ *
${USERACCOUNT_ADDEDIT_LBL_FIRSTNAME_EN}    First name *
${USERACCOUNT_ADDEDIT_LBL_FIRSTNAME_LOCATOR}    id=lblFirstName
${USERACCOUNT_ADDEDIT_TXT_FIRSTNAME_LOCATOR}    id=input_txtFirstName
${USERACCOUNT_ADDEDIT_TXT_FIRSTNAME_VALUE}    FirstName_
${USERACCOUNT_ADDEDIT_TXT_FIRSTNAME_VALUE_NOTFOUND}    FirstNamexxxxxxxxx_77586
#Last name
${USERACCOUNT_ADDEDIT_LBL_LASTNAME_TH}    นามสกุล
${USERACCOUNT_ADDEDIT_LBL_LASTNAME_EN}    Last name
${USERACCOUNT_ADDEDIT_LBL_LASTNAME_LOCATOR}    id=lblLastName
${USERACCOUNT_ADDEDIT_TXT_LASTNAME_LOCATOR}    id=input_txtLastName
${USERACCOUNT_ADDEDIT_TXT_LASTNAME_VALUE}    LastName_
#Phone number 
${USERACCOUNT_ADDEDIT_LBL_PHONENUMBER_TH}    เบอร์โทรศัพท์ *
${USERACCOUNT_ADDEDIT_LBL_PHONENUMBER_EN}    Phone number * 
${USERACCOUNT_ADDEDIT_LBL_PHONENUMBER_LOCATOR}    id=lblPhoneNumber
${USERACCOUNT_ADDEDIT_TXT_PHONENUMBER_LOCATOR}    id=input_txtPhoneNumber
${USERACCOUNT_ADDEDIT_TXT_PHONENUMBER_VALUE_PREFIX08}    08
#E-mail
${USERACCOUNT_ADDEDIT_LBL_EMAIL_TH}    อีเมล
${USERACCOUNT_ADDEDIT_LBL_EMAIL_EN}    E-mail 
${USERACCOUNT_ADDEDIT_LBL_EMAIL_LOCATOR}    id=lblEmail
${USERACCOUNT_ADDEDIT_TXT_EMAIL_LOCATOR}    id=input_txtEmail
#Identification No. / Passport No. 
${USERACCOUNT_ADDEDIT_LBL_IDENTITYFICATIONORPASSPORT_TH}    เลขบัตรประชาชน/เลขพาสปอร์ต *
${USERACCOUNT_ADDEDIT_LBL_IDENTITYFICATIONORPASSPORT_EN}    Identification No. / Passport No. *
${USERACCOUNT_ADDEDIT_LBL_IDENTITYFICATIONORPASSPORT_LOCATOR}    id=lblCardNumberOrPassportNumber
${USERACCOUNT_ADDEDIT_TXT_IDENTITYFICATIONORPASSPORT_LOCATOR}    id=input_txtPassport
#Project access 
${USERACCOUNT_ADDEDIT_LBL_PROJECTACCESS_TH}    สิทธิ์การเข้าถึงโครงการ
${USERACCOUNT_ADDEDIT_LBL_PROJECTACCESS_EN}    Project access
${USERACCOUNT_ADDEDIT_LBL_PROJECTACCESS_LOCATOR}    id=lblPropertyAccess
# Select / Unselect all
${USERACCOUNT_ADDEDIT_LBL_SELECTORUNSELECT_TH}    เลือก/ไม่เลือกทั้งหมด
${USERACCOUNT_ADDEDIT_LBL_SELECTORUNSELECT_EN}     Select / Unselect all
${USERACCOUNT_ADDEDIT_LBL_SELECTORUNSELECT_LOCATOR}    id=lblSelectOrUnSelectAllCreateEdit
${USERACCOUNT_ADDEDIT_RDL_SELECTORUNSELECT_LOCATOR}    id=chkSelectOrUnSelectAllCreateEdit
#Project of Building
${USERACCOUNT_ADDEDIT_LBL_PROPERTYNAME_LOCATOR}    id=lblPropertyNameCreateEdit
${USERACCOUNT_ADDEDIT_CHK_PROPERTYNAME_LOCATOR}    id=chkPropertyNameCreateEdit
${USERACCOUNT_ADDEDIT_CHK_PROPERTYNAME_LOCATOR_Value1}    id=lblPropertyNameCreateEdit11
${USERACCOUNT_ADDEDIT_CHK_PROPERTYNAME_LOCATOR_Value2}    id=lblPropertyNameCreateEdit21
#Cancel button
${USERACCOUNT_ADDEDIT_BTN_CANCEL_TH}    ยกเลิก
${USERACCOUNT_ADDEDIT_BTN_CANCEL_EN}    Cancel
${USERACCOUNT_ADDEDIT_BTN_CANCEL_LOCATOR}    id=btnCancel
#Save button
${USERACCOUNT_ADDEDIT_BTN_SAVE_TH}    บันทึก
${USERACCOUNT_ADDEDIT_BTN_SAVE_EN}    Save
${USERACCOUNT_ADDEDIT_BTN_SAVE_LOCATOR}    id=btnSave
#Close button
${USERACCOUNT_BTN_CLOSE_LOCATOR}    class=ant-modal-close-x

#-------------------------------------------- Delete User Account --------------------------------------------#
#Cancel
${USERACCOUNT_DELETE_BTN_CANCEL_TH}    ยกเลิก
${USERACCOUNT_DELETE_BTN_CANCEL_EN}    Cancel
${USERACCOUNT_DELETE_BTN_CANCEL_LOCATOR}    xpath=/html/body/div[2]/div/div[6]/button[1]
#Confirm
${USERACCOUNT_DELETE_BTN_CONFIRM_TH}    ยืนยัน
${USERACCOUNT_DELETE_BTN_CONFIRM_EN}    Confirm
${USERACCOUNT_DELETE_BTN_CONFIRM_LOCATOR}    xpath=/html/body/div[2]/div/div[6]/button[3]

################################################################-- Value --################################################################
#name file 
${USERACCOUNT_FILENAME_VALUE}    userAccount_Update_DeleteAt.sql
${USERACCOUNT_DELETETAT_VALUE}    '2021-10-20 15:15:38'

#capture page screenshot
${USERACCOUNT_SEARCH_M3_0_1_1_000_SUCCESS_SCREENSHOT}    M3_0_1_1_000_UserAccount_Search_VerifyScreen.png
${USERACCOUNT_SEARCH_M3_1_1_1_000_SUCCESS_SCREENSHOT}    M3_1_1_1_000_UserAccount_Search_VerifyAction.png
${USERACCOUNT_SEARCH_M3_0_1_4_000_SUCCESS_SCREENSHOT}    M3_0_1_4_000_UserAccount_Delete_VerifyScreen.png
${USERACCOUNT_SEARCH_M3_1_1_4_000_SUCCESS_SCREENSHOT}    M3_1_1_4_000_UserAccount_Delete_VerifyAction.png
${USERACCOUNT_SEARCH_M3_0_1_2_000_SUCCESS_SCREENSHOT}    M3_0_1_2_000_UserAccount_Create_VerifyScreen.png
${USERACCOUNT_SEARCH_M3_1_1_2_000_SUCCESS_SCREENSHOT}    M3_1_1_2_001_UserAccount_Create_VerifyAction.png
${USERACCOUNT_SEARCH_M3_0_1_10_000_SUCCESS_SCREENSHOT}    M3_0_1_10_000_UserInformation_Edit_VerifyScreen.png
${USERACCOUNT_SEARCH_M3_1_1_10_000_SUCCESS_SCREENSHOT}    M3_1_1_10_000_UserInformation_Edit_VerifyAction.png
${USERACCOUNT_SEARCH_M3_0_1_11_000_SUCCESS_SCREENSHOT}    M3_0_1_11_000_UserAccount_Edit_VerifyScreen.png
${USERACCOUNT_SEARCH_M3_1_1_11_000_SUCCESS_SCREENSHOT}    M3_1_1_11_000_UserAccount_Edit_VerifyAction.png
${USERACCOUNT_SEARCH_M3_0_1_7_000_SUCCESS_SCREENSHOT}    M3_0_1_7_000_ChangePassword_Edit_VerifyScreen.png
${USERACCOUNT_SEARCH_M3_1_1_7_000_SUCCESS_SCREENSHOT}    M3_1_1_7_000_ChangePassword_Edit_VerifyAction.png

#-------------------------------------------- API --------------------------------------------#
${USERACCOUNT_CREATE_ROLENAME}    Robot_UserAccount
${USERACCOUNT_CREATE_FIRSTNAME}    FirstName_

#-------------------------------------------- User Information --------------------------------------------#
#username login
${USERINFO_BTN_USERNAME_LOGIN_LOCATOR}    id=lblUsernameLogin

#-------------------------------------------- EditUserInformation --------------------------------------------#
${USERINFO_LBL_EDITUSERINFORMATION_EN}    Edit User Information
${USERINFO_LBL_EDITUSERINFORMATION_TH}    แก้ไขข้อมูลผู้ใช้งาน
${USERINFO_LBL_EDITUSERINFORMATION_LOCATOR}    id=lblMenuTopEditUserInformation
${USERINFO_BTN_EDITUSERINFORMATION_LOCATOR}    id=lblMenuTopChangePassword
${USERINFO_ICON_EDITUSERINFORMATION_LOCATOR}    id=iconMenuTopEditUserInformation

#Header Edit
${USERINFO_EDIT_LBL_HEADER_EDITUSERINFORMATION_TH}    แก้ไขข้อมูลผู้ใช้งาน
${USERINFO_EDIT_LBL_HEADER_EDITUSERINFORMATION_EN}    Edit User Information
${USERINFO_EDIT_LBL_HEADER_EDITUSERINFORMATION_LOCATOR}   id=lblEditUserInformation

#role
${USERINFO_ADDEDIT_LBL_ROLE_TH}    สิทธิ์
${USERINFO_ADDEDIT_LBL_ROLE_EN}    role
${USERINFO_ADDEDIT_LBL_ROLE_LOCATOR}    id=lblRole
${USERINFO_ADDEDIT_DDL_ROLE_LOCATOR}    id=txtRoleName

#Prefix
${USERINFO_ADDEDIT_LBL_PREFIX_TH}    คำนำหน้า
${USERINFO_ADDEDIT_LBL_PREFIX_EN}    Prefix
${USERINFO_ADDEDIT_LBL_PREFIX_LOCATOR}    id=lblPrefix
${USERINFO_ADDEDIT_DDL_PREFIX_LOCATOR}    id=ddlPrefix
${USERINFO_ADDEDIT_TXT_PREFIX_LOCATOR}    id=input_ddlPrefix
${USERINFO_ADDEDIT_DDL_PREFIX_LIST_LOCATOR}    xpath=/html/body/div[2]/div/div/div/div[1]/div/div/div[2]/div[replace_indexList]/div
${USERINFO_ADDEDIT_DDL_PREFIX_CLASS_LOCATOR}    class=dx-item dx-list-item
${USERINFO_ROLE_EN_VALUE_MR}    Mr.
${USERINFO_ROLE_EN_VALUE_MRS}    Mrs.
${USERINFO_ROLE_EN_VALUE_MISS}    Miss.
#First name
${USERINFO_ADDEDIT_LBL_FIRSTNAME_TH}    ชื่อ
${USERINFO_ADDEDIT_LBL_FIRSTNAME_EN}    First name
${USERINFO_ADDEDIT_LBL_FIRSTNAME_LOCATOR}    id=lblFirstName
${USERINFO_ADDEDIT_TXT_FIRSTNAME_LOCATOR}    id=inputFirst_name

#Last name
${USERINFO_ADDEDIT_LBL_LASTNAME_TH}    นามสกุล
${USERINFO_ADDEDIT_LBL_LASTNAME_EN}    Last name
${USERINFO_ADDEDIT_LBL_LASTNAME_LOCATOR}    id=lblLastName
${USERINFO_ADDEDIT_TXT_LASTNAME_LOCATOR}    id=inputLast_name

#Phone number 
${USERINFO_ADDEDIT_LBL_PHONENUMBER_TH}    เบอร์โทรศัพท์
${USERINFO_ADDEDIT_LBL_PHONENUMBER_EN}    Phone number 
${USERINFO_ADDEDIT_LBL_PHONENUMBER_LOCATOR}    id=lblPhoneNumberd
${USERINFO_ADDEDIT_TXT_PHONENUMBER_LOCATOR}    id=input_txtPhoneNumber

#E-mail
${USERINFO_ADDEDIT_LBL_EMAIL_TH}    อีเมล
${USERINFO_ADDEDIT_LBL_EMAIL_EN}    E-mail 
${USERINFO_ADDEDIT_LBL_EMAIL_LOCATOR}    id=lblEmail
${USERINFO_ADDEDIT_TXT_EMAIL_LOCATOR}    id=input_txtEmail

#Identification No. / Passport No. 
${USERINFO_ADDEDIT_LBL_IDENTITYFICATIONORPASSPORT_TH}    เลขบัตรประชาชน/เลขพาสปอร์ต
${USERINFO_ADDEDIT_LBL_IDENTITYFICATIONORPASSPORT_EN}    Identification No. / Passport No.
${USERINFO_ADDEDIT_LBL_IDENTITYFICATIONORPASSPORT_LOCATOR}    id=lblCardNumberOrPassportNumber
${USERINFO_ADDEDIT_TXT_IDENTITYFICATIONORPASSPORT_LOCATOR}    id=input_txtPassport


#Cancel button
${USERINFO_ADDEDIT_BTN_CANCEL_TH}    ยกเลิก
${USERINFO_ADDEDIT_BTN_CANCEL_EN}    Cancel
${USERINFO_ADDEDIT_BTN_CANCEL_LOCATOR}    id=btnCancel
#Save button
${USERINFO_ADDEDIT_BTN_SAVE_TH}    บันทึก
${USERINFO_ADDEDIT_BTN_SAVE_EN}    Save
${USERINFO_ADDEDIT_BTN_SAVE_LOCATOR}    id=btnSave
#Close button
${USERINFO_BTN_CLOSE_LOCATOR}    class=ant-modal-close-x

${USERINFO_SEARCH_LBL_RESULT_DATA_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div/div/table/tbody/tr[row]/td[col]

#-------------------------------------------- Change Password --------------------------------------------#
${CHANGEPASSWORD_LBL_EN}    Change Password
${CHANGEPASSWORD_LBL_TH}    เปลี่ยนรหัสผ่าน
${CHANGEPASSWORD_LBL_LOCATOR}    id=lblMenuTopChangePassword
${CHANGEPASSWORD_BTN_LOCATOR}    id=lblMenuTopChangePassword
${CHANGEPASSWORD_ICON_LOCATOR}    id=iconMenuTopChangePassword


#Header Edit
${CHANGEPASSWORD_HEADER_TH}    เปลี่ยนรหัสผ่าน
${CHANGEPASSWORD_HEADER_EN}    Change Password
${CHANGEPASSWORD_HEADER_LOCATOR}   id=lblChangePassword

#role
${CHANGEPASSWORD_LBL_ROLE_TH}    สิทธิ์
${CHANGEPASSWORD_LBL_ROLE_EN}    role
${CHANGEPASSWORD_LBL_ROLE_LOCATOR}    id=lblRole
${CHANGEPASSWORD_DDL_ROLE_LOCATOR}    id=txtRoleName

#Prefix
${CHANGEPASSWORD_LBL_PREFIX_TH}    คำนำหน้า
${CHANGEPASSWORD_LBL_PREFIX_EN}    Prefix
${CHANGEPASSWORD_LBL_PREFIX_LOCATOR}    id=lblPrefix
${CHANGEPASSWORD_TXT_PREFIX_LOCATOR}    id=input_ddlPrefix

#First name
${CHANGEPASSWORD_LBL_FIRSTNAME_TH}    ชื่อ
${CHANGEPASSWORD_LBL_FIRSTNAME_EN}    First name
${CHANGEPASSWORD_LBL_FIRSTNAME_LOCATOR}    id=lblFirstName
${CHANGEPASSWORD_TXT_FIRSTNAME_LOCATOR}    id=inputFirst_name

#Last name
${CHANGEPASSWORD_LBL_LASTNAME_TH}    นามสกุล
${CHANGEPASSWORD_LBL_LASTNAME_EN}    Last name
${CHANGEPASSWORD_LBL_LASTNAME_LOCATOR}    id=lblLastName
${CHANGEPASSWORD_TXT_LASTNAME_LOCATOR}    id=inputLast_name

#currentPassword
${CHANGEPASSWORD_LBL_CURRENTPASSWORD_TH}    รหัสผ่านปัจจุบัน
${CHANGEPASSWORD_LBL_CURRENTPASSWORD_EN}    Current Password 
${CHANGEPASSWORD_LBL_CURRENTPASSWORD_LOCATOR}    id=lblcurrentPassword
${CHANGEPASSWORD_TXT_CURRENTPASSWORD_LOCATOR}    id=inputOld_password

#newPassword 
${CHANGEPASSWORD_LBL_NEWPASSWORD_TH}    รหัสผ่านใหม่
${CHANGEPASSWORD_LBL_NEWPASSWORD_EN}    New Password
${CHANGEPASSWORD_LBL_NEWPASSWORD_LOCATOR}    id=lblnewPassword
${CHANGEPASSWORD_TXT_NEWPASSWORD_LOCATOR}    id=inputNew_password

#ConfirmNewPassword 
${CHANGEPASSWORD_LBL_CONFIRMNEWPASSWORD_TH}    ยืนยันรหัสผ่านใหม่
${CHANGEPASSWORD_LBL_CONFIRMNEWPASSWORD_EN}    Confirm New Password
${CHANGEPASSWORD_LBL_CONFIRMNEWPASSWORD_LOCATOR}    id=lblConfirmNewPassword
${CHANGEPASSWORD_TXT_CONFIRMNEWPASSWORD_LOCATOR}    id=inputConfirm_password

#Cancel button
${CHANGEPASSWORD_BTN_CANCEL_TH}    ยกเลิก
${CHANGEPASSWORD_BTN_CANCEL_EN}    Cancel
${CHANGEPASSWORD_BTN_CANCEL_LOCATOR}    id=btnCancel
#Save button
${CHANGEPASSWORD_BTN_SAVE_TH}    บันทึก
${CHANGEPASSWORD_BTN_SAVE_EN}    Save
${CHANGEPASSWORD_BTN_SAVE_LOCATOR}    id=btnSave
#Close button
${CHANGEPASSWORD_CLOSE_LOCATOR}    class=ant-modal-close-x
${CHANGEPASSWORD_BTN_OK_TH}    OK
${CHANGEPASSWORD_BTN_OK_EN}    OK
${CHANGEPASSWORD_BTN_OK_LOCATOR}    xpath=/html/body/div[2]/div/div[6]/button[1]
${CHANGEPASSWORD_BTN_MSG_LOCATOR}    xpath=/html/body/div[2]/div/div[2]
${CHANGEPASSWORD_BTN_MSG_TH}    ดำเนินการสำเร็จ กรุณาออกจากระบบ และเข้าสู่ระบบใหม่อีกครั้ง
${CHANGEPASSWORD_BTN_MSG_EN}    Success Please Log out and Login again.
#-------------------------------------------- Login --------------------------------------------#
${USERACCOUNT_LBL_LOGOUT_EN}    Logout
${USERACCOUNT_LBL_LOGOUT_TH}    ออกจากระบบ
${USERACCOUNT_LBL_LOGOUT_LOCATOR}    id=lblMenuTopLogOut
${USERACCOUNT_BTN_LOGOUT_LOCATOR}    id=logout
${USERACCOUNT_ICON_LOGOUT_LOCATOR}    id=iconMenuTopLogOut