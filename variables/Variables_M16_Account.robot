*** Variables ***
################################################################-- Account --################################################################
#Create button
${ACCOUNT_BTN_CREATE_TH}    เพิ่ม
${ACCOUNT_BTN_CREATE_EN}    Create
${ACCOUNT_BTN_CREATE_LOCATOR}    id=btnCreate

${ACCOUNT_BTN_MORE_LOCATOR}    id=btnMore1
# ${ACCOUNT_BTN_MORE2_LOCATOR}    id=btnMore3
${ACCOUNT_LBL_VIEW_TH}    ดูรายละเอียด
${ACCOUNT_LBL_VIEW_EN}    View
${ACCOUNT_LBL_VIEW_TH_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-0"]
${ACCOUNT_LBL_VIEW_EN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-0"]
# ${ACCOUNT_LBL_VIEW_EN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-577"]
${ACCOUNT_BTN_VIEW_LOCATOR}    id=btnView1 
${ACCOUNT_LBL_EDIT_TH}    แก้ไข
${ACCOUNT_LBL_EDIT_EN}    Edit
${ACCOUNT_LBL_EDIT_TH_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-1"]
${ACCOUNT_LBL_EDIT_EN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-1"]
# ${ACCOUNT_LBL_EDIT_EN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-578"]
${ACCOUNT_BTN_EDIT_LOCATOR}    id=btnEdit1
# ${ACCOUNT_BTN_EDIT2_LOCATOR}    id=btnEdit3
${ACCOUNT_LBL_DELETE_TH}    ลบ
${ACCOUNT_LBL_DELETE_EN}    Delete
${ACCOUNT_LBL_DELETE_TH_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-2"]
${ACCOUNT_LBL_DELETE_EN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-2"]
# ${ACCOUNT_LBL_DELETE_EN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-579"]
${ACCOUNT_BTN_DELETE_LOCATOR}    id=btnDelete1

${ACCOUNT_BTN_CLOSE_LOCATOR}    class=ant-modal-close-x

${ACCOUNT_BTN_20}    20
${ACCOUNT_BTN_20_LOCATOR}    xpath=//*[@id="roomListOptions"]/div/div[11]/div[1]/div[1]
${ACCOUNT_BTN_50}    50
${ACCOUNT_BTN_50_LOCATOR}    xpath=//*[@id="roomListOptions"]/div/div[11]/div[1]/div[2]
${ACCOUNT_BTN_100}    100
${ACCOUNT_BTN_100_LOCATOR}    xpath=//*[@id="roomListOptions"]/div/div[11]/div[1]/div[3]
${ACCOUNT_BTN_1000}    1000
${ACCOUNT_BTN_1000_LOCATOR}    xpath=//*[@id="roomListOptions"]/div/div[11]/div[1]/div[4]
${ACCOUNT_LBL_PagesXFromY_LOCATOR}    xpath=//*[@id="roomListOptions"]/div/div[11]/div[2]/div[1]
${ACCOUNT_ICON_ARRORWLEFT_LOCATOR}    xpath=//*[@id="roomListOptions"]/div/div[11]/div[2]/div[2]
${ACCOUNT_LBL_PAGE_1}    1
${ACCOUNT_LBL_PAGE_LOCATOR}    xpath=//*[@id="roomListOptions"]/div/div[11]/div[2]/div[3]
${ACCOUNT_ICON_ARRORWRIGHT_LOCATOR}    xpath=//*[@id="roomListOptions"]/div/div[11]/div[2]/div[4]

${ACCOUNT_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}    xpath=//*[@id="roomListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td[2]
  
#-------------------------------------------- Search Account --------------------------------------------#
############## Subnav ############## 
#Home Subnav
${ACCOUNT_SEARCH_LBL_HOME_SUBNAV_TH}    หน้าหลัก 
${ACCOUNT_SEARCH_LBL_HOME_SUBNAV_EN}    Home
${ACCOUNT_SEARCH_LBL_HOME_SUBNAV_LOCATOR}    id=lblSubNavHome
#Account Subnav
${ACCOUNT_SEARCH_LBL_ACCOUNT_SUBNAV_TH}    บัญชีผู้ใช้งาน 
${ACCOUNT_SEARCH_LBL_ACCOUNT_SUBNAV_EN}    Account
${ACCOUNT_SEARCH_LBL_ACCOUNT_SUBNAV_LOCATOR}    id=lblSubNavAccount
############## Header ############## 
#Account Header
${ACCOUNT_SEARCH_LBL_ACCOUNT_TH}    บัญชีผู้ใช้งาน
${ACCOUNT_SEARCH_LBL_ACCOUNT_EN}    Account
${ACCOUNT_SEARCH_LBL_ACCOUNT_LOCATOR}    id=lblHeaderAccount

#Start Date
${ACCOUNT_SEARCH_LBL_STARTDATE_TH}    วันที่เปิดใช้งาน
${ACCOUNT_SEARCH_LBL_STARTDATE_EN}    Start Date
${ACCOUNT_SEARCH_LBL_STARTDATE_LOCATOR}    id=lblStartDateSearch
${ACCOUNT_SEARCH_TXT_STARTDATE_LOCATOR}    id=dateStartDateSearch
${ACCOUNT_SEARCH_INPUT_STARTDATE_LOCATOR}    id=input_dateStartDateSearch
#Expire Date
${ACCOUNT_SEARCH_LBL_EXPIREDATE_TH}    วันที่หมดอายุ
${ACCOUNT_SEARCH_LBL_EXPIREDATE_EN}    Expire Date
${ACCOUNT_SEARCH_LBL_EXPIREDATE_LOCATOR}    id=lblExpireDateSearch
${ACCOUNT_SEARCH_TXT_EXPIREDATE_LOCATOR}    id=dateExpireDateSearch
${ACCOUNT_SEARCH_INPUT_EXPIREDATE_LOCATOR}    id=input_dateExpireDateSearch

#Account Name, Name, Phone
${ACCOUNT_SEARCH_LBL_ACCOUNTNAMENAMEPHONE_TH}    ชื่อผู้ใช้, ชื่อ, เบอร์โทรศัพท์
${ACCOUNT_SEARCH_LBL_ACCOUNTNAMENAMEPHONE_EN}    Account Name, Name, Phone
${ACCOUNT_SEARCH_LBL_ACCOUNTNAMENAMEPHONE_LOCATOR}    id=lblAccountNameNamePhoneSearch
${ACCOUNT_SEARCH_TXT_ACCOUNTNAMENAMEPHONE_LOCATOR}    id=input_txtAccountNameNamePhoneSearch
#Search
${ACCOUNT_SEARCH_BTN_SEARCH_TH}    ค้นหา
${ACCOUNT_SEARCH_BTN_SEARCH_EN}    Search
${ACCOUNT_SEARCH_BTN_SEARCH_LOCATOR}    id=btnSearch
#Clear
${ACCOUNT_SEARCH_BTN_CLEAR_TH}    คืนค่า
${ACCOUNT_SEARCH_BTN_CLEAR_EN}    Clear
${ACCOUNT_SEARCH_BTN_CLEAR_LOCATOR}    id=btnClear

############################ 
############## Table ############## 
#No
${ACCOUNT_SEARCH_LBL_RESULT_NO_TH}    ลำดับ
${ACCOUNT_SEARCH_LBL_RESULT_NO_EN}    No.
${ACCOUNT_SEARCH_LBL_RESULT_NO_LOCATOR}    id=dx-col-17
#Account Name
${ACCOUNT_SEARCH_LBL_RESULT_ACCOUNTNAME_TH}    ชื่อผู้ใช้
${ACCOUNT_SEARCH_LBL_RESULT_ACCOUNTNAME_EN}    Account Name
${ACCOUNT_SEARCH_LBL_RESULT_ACCOUNTNAME_LOCATOR}    id=dx-col-18
#Name
${ACCOUNT_SEARCH_LBL_RESULT_NAME_TH}    ชี่อ
${ACCOUNT_SEARCH_LBL_RESULT_NAME_EN}    Name
${ACCOUNT_SEARCH_LBL_RESULT_NAME_LOCATOR}    id=dx-col-19
#Phone
${ACCOUNT_SEARCH_LBL_RESULT_PHONE_TH}    เบอร์โทรศัพท์
${ACCOUNT_SEARCH_LBL_RESULT_PHONE_EN}    Phone
${ACCOUNT_SEARCH_LBL_RESULT_PHONE_LOCATOR}    id=dx-col-20
#Maximum Room
${ACCOUNT_SEARCH_LBL_RESULT_MAXIMUMROOM_TH}    สร้างห้องพักได้สูงสุด (ยูนิต)
${ACCOUNT_SEARCH_LBL_RESULT_MAXIMUMROOM_EN}    Maximum Room
${ACCOUNT_SEARCH_LBL_RESULT_MAXIMUMROOM_LOCATOR}    id=dx-col-21
#Start Date
${ACCOUNT_SEARCH_LBL_RESULT_STARTDATE_TH}    วันที่เปิดใช้งาน
${ACCOUNT_SEARCH_LBL_RESULT_STARTDATE_EN}    Start Date
${ACCOUNT_SEARCH_LBL_RESULT_STARTDATE_LOCATOR}    id=dx-col-22
#Expire Date
${ACCOUNT_SEARCH_LBL_RESULT_EXPIREDATE_TH}    วันที่หมดอายุ
${ACCOUNT_SEARCH_LBL_RESULT_EXPIREDATE_EN}    Expire Date
${ACCOUNT_SEARCH_LBL_RESULT_EXPIREDATE_LOCATOR}    id=dx-col-23
#No Data
${ACCOUNT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    xpath=//*[@id="roomListOptions"]/div/div[6]/span
#For check value table
${ACCOUNT_SEARCH_LBL_RESULT_DATA_LOCATOR_EN}    xpath=//*[@id="roomListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[row]/td[col]
${ACCOUNT_SEARCH_LBL_RESULT_DATA_LOCATOR_TH}    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div/div/table/tbody/tr[row]/td[col]

${ACCOUNT_SEARCH_NUMCOL}    7
@{ACCOUNT_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_TH}    no    identificationNo    name    phone    maximumRoom    startDate    expireDate
@{ACCOUNT_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_EN}    no    identificationNo    name    phone    maximumRoom    startDate    expireDate

############################ 
#-------------------------------------------- View Account --------------------------------------------#
#View Account
${ACCOUNT_VIEW_LBL_VIEWACCOUNT_TH}    ดูข้อมูลบัญชีผู้ใช้งาน 
${ACCOUNT_VIEW_LBL_VIEWACCOUNT_EN}    View Account
${ACCOUNT_VIEW_LBL_VIEWACCOUNT_LOCATOR}    id=lblViewAccount
#Account Name *
${ACCOUNT_VIEW_LBL_ACCOUNTNAME_TH}    ชื่อผู้ใช้ * 
${ACCOUNT_VIEW_LBL_ACCOUNTNAME_EN}    Account Name *
${ACCOUNT_VIEW_LBL_ACCOUNTNAME_LOCATOR}    id=lblAccountNameView
${ACCOUNT_VIEW_TXT_ACCOUNTNAME_LOCATOR}    id=txtAccountNameView
${ACCOUNT_VIEW_INPUT_ACCOUNTNAME_LOCATOR}    id=input_txtAccountNameView
#Name *
${ACCOUNT_VIEW_LBL_NAME_TH}    ชื่อ * 
${ACCOUNT_VIEW_LBL_NAME_EN}    Name *
${ACCOUNT_VIEW_LBL_NAME_LOCATOR}    id=lblNameView
${ACCOUNT_VIEW_TXT_NAME_LOCATOR}    id=txtNameView
${ACCOUNT_VIEW_INPUT_NAME_LOCATOR}    id=input_txtNameView
#Maximum Room *
${ACCOUNT_VIEW_LBL_MAXIMUMROOM_TH}    สร้างห้องพักได้สูงสุด (ยูนิต) *
${ACCOUNT_VIEW_LBL_MAXIMUMROOM_EN}    Maximum Room *
${ACCOUNT_VIEW_LBL_MAXIMUMROOM_LOCATOR}    id=lblMaximumRoomView
${ACCOUNT_VIEW_TXT_MAXIMUMROOM_LOCATOR}    id=txtMaximumRoomView
${ACCOUNT_VIEW_INPUT_MAXIMUMROOM_LOCATOR}    id=input_txtMaximumRoomView
#Phone *
${ACCOUNT_VIEW_LBL_PHONE_TH}    เบอร์โทรศัพท์ *
${ACCOUNT_VIEW_LBL_PHONE_EN}    Phone *
${ACCOUNT_VIEW_LBL_PHONE_LOCATOR}    id=lblPhoneView
${ACCOUNT_VIEW_TXT_PHONE_LOCATOR}    id=txtPhoneView
${ACCOUNT_VIEW_INPUT_PHONE_LOCATOR}    id=input_txtPhoneView
#Taxpayer Identification No *
${ACCOUNT_VIEW_LBL_TAXPAYERIDENTIFICATIONNO_TH}    เลขประจำตัวผู้เสียภาษี *
${ACCOUNT_VIEW_LBL_TAXPAYERIDENTIFICATIONNO_EN}    Taxpayer Identification No *
${ACCOUNT_VIEW_LBL_TAXPAYERIDENTIFICATIONNO_LOCATOR}    id=lblTaxpayerIdentificationNoView
${ACCOUNT_VIEW_TXT_TAXPAYERIDENTIFICATIONNO_LOCATOR}    id=txtTaxpayerIdentificationNoView
${ACCOUNT_VIEW_INPUT_TAXPAYERIDENTIFICATIONNO_LOCATOR}    id=input_txtTaxpayerIdentificationNoView
#Start Date *
${ACCOUNT_VIEW_LBL_STARTDATE_TH}    วันที่เปิดใช้งาน *
${ACCOUNT_VIEW_LBL_STARTDATE_EN}    Start Date *
${ACCOUNT_VIEW_LBL_STARTDATE_LOCATOR}    id=lblStartDateView
${ACCOUNT_VIEW_DATE_STARTDATE_LOCATOR}    id=dateStartDateView
${ACCOUNT_VIEW_DATE_STARTDATE_INPUT_LOCATOR}    id=input_dateStartDateView

#Expire Date 
${ACCOUNT_VIEW_LBL_EXPIREDATE_TH}    วันที่หมดอายุ
${ACCOUNT_VIEW_LBL_EXPIREDATE_EN}    Expire Date
${ACCOUNT_VIEW_LBL_EXPIREDATE_LOCATOR}    id=lblExpireDateView
${ACCOUNT_VIEW_DATE_EXPIREDATE_LOCATOR}    id=dateExpireDateView
${ACCOUNT_VIEW_DATE_EXPIREDATE_INPUT_LOCATOR}    id=input_dateExpireDateView
#Permanent 
${ACCOUNT_VIEW_LBL_PERMANENT_TH}    ถาวร
${ACCOUNT_VIEW_LBL_PERMANENT_EN}    Permanent
${ACCOUNT_VIEW_CHK_PERMANENT_LOCATOR}    id=chkPermanent
#Permission 
${ACCOUNT_VIEW_LBL_PERMISSION_TH}    สิทธิ์การใช้งาน
${ACCOUNT_VIEW_LBL_PERMISSION_EN}    Permission
${ACCOUNT_VIEW_LBL_PERMISSION_LOCATOR}    id=lblPermissionView
${ACCOUNT_VIEW_LBL_PERMISSION_MENU_VALID_LOCATOR}    id=lblPermissionListMenuListViewValid
${ACCOUNT_VIEW_CHK_PERMISSION0_ID_LOCATOR}    id=chkPermissionListMenuListView0
${ACCOUNT_VIEW_CHK_PERMISSION0_LOCATOR}    css=#chkPermissionListMenuListView0 span[class="dx-checkbox-icon"]
${ACCOUNT_VIEW_CHK_PERMISSION_MENU_LOCATOR}    css=#chkPermissionListMenuListView[index] span[class="dx-checkbox-icon"]
${ACCOUNT_VIEW_LBL_PERMISSION_MENU_LOCATOR}    css=#chkPermissionListMenuListView[index] span[class="dx-checkbox-text"]

${ACCOUNT_VIEW_ICON_PERMISSION_MENU_LOCATOR}    id=iconPermissionListMenuListView[index]
${ACCOUNT_VIEW_LBL_PERMISSION_MENU_TOOLTIP_LOCATOR}    id=lblPermissionListMenuListTooltipView[index]
${ACCOUNT_VIEW_LBL_PERMISSION_MENU_TOOLTIP_GROUPNAME_LOCATOR}    id=lblPermissionListMenuListTooltipGroupNameView[index]
${ACCOUNT_VIEW_LBL_PERMISSION_MENU_TOOLTIP_ROLE_LOCATOR}    id=lblPermissionListMenuListTooltipRoleView[index]
#Property
${ACCOUNT_VIEW_LBL_PROPERTY_TH}    โครงการ
${ACCOUNT_VIEW_LBL_PROPERTY_EN}    Property
${ACCOUNT_VIEW_LBL_PROPERTY_LOCATOR}    id=lblPropertyView
#No
${ACCOUNT_VIEW_LBL_RESULT_NO_TH}    ลำดับ
${ACCOUNT_VIEW_LBL_RESULT_NO_EN}    No.
${ACCOUNT_VIEW_LBL_RESULT_NO_LOCATOR}    id=dx-col-41
#Property Name
${ACCOUNT_VIEW_LBL_RESULT_PROPERTYNAME_TH}    ชื่อโครงการ
${ACCOUNT_VIEW_LBL_RESULT_PROPERTYNAME_EN}    Property Name
${ACCOUNT_VIEW_LBL_RESULT_PROPERTYNAME_LOCATOR}    id=dx-col-42

#dowload icon
${ACCOUNT_VIEW_ICON_DOWLOAD_LOCATOR}    id=iconDownloadPropertyImportFormatView
#upload icon
${ACCOUNT_VIEW_ICON_UPLOAD_LOCATOR}    id=iconUploadPropertyDataView

#-------------------------------------------- Create Account --------------------------------------------#
#Create Account
${ACCOUNT_ADD_LBL_CREATEACCOUNT_TH}    เพิ่มบัญชีผู้ใช้งาน 
${ACCOUNT_ADD_LBL_CREATEACCOUNT_EN}    Create Account
${ACCOUNT_ADD_LBL_CREATEACCOUNT_LOCATOR}    id=lblCreateAccount

#Name *
${ACCOUNT_ADD_LBL_NAME_TH}    ชื่อ *
${ACCOUNT_ADD_LBL_NAME_EN}    Name *
${ACCOUNT_ADD_LBL_NAME_LOCATOR}    id=lblNameCreate
${ACCOUNT_ADD_TXT_NAME_LOCATOR}    id=input_txtNameCreate
${ACCOUNT_ADD_LBL_NAME_VALID_LOCATOR}    id=lblNameCreateValid
#Maximum Room *
${ACCOUNT_ADD_LBL_MAXIMUMROOM_TH}    สร้างห้องพักได้สูงสุด (ยูนิต) *
${ACCOUNT_ADD_LBL_MAXIMUMROOM_EN}    Maximum Room *
${ACCOUNT_ADD_LBL_MAXIMUMROOM_LOCATOR}    id=lblMaximumRoomCreate
${ACCOUNT_ADD_TXT_MAXIMUMROOM_LOCATOR}    id=input_txtMaximumRoomCreate
${ACCOUNT_ADD_LBL_MAXIMUMROOM_VALID_LOCATOR}    id=lblMaximumRoomCreateValid
#Phone *
${ACCOUNT_ADD_LBL_PHONE_TH}    เบอร์โทรศัพท์ *
${ACCOUNT_ADD_LBL_PHONE_EN}    Phone *
${ACCOUNT_ADD_LBL_PHONE_LOCATOR}    id=lblPhoneCreate
${ACCOUNT_ADD_TXT_PHONE_LOCATOR}    id=input_txtPhoneCreate
${ACCOUNT_ADD_LBL_PHONE_VALID_LOCATOR}    id=lblPhoneCreateValid
${ACCOUNT_ADD_LBL_PHONE_FORMATVALID_LOCATOR}    id=lblPhoneCreatePhoneIsNotValid
#Taxpayer Identification No *
${ACCOUNT_ADD_LBL_TAXPAYERIDENTIFICATIONNO_TH}    เลขประจำตัวผู้เสียภาษี *
${ACCOUNT_ADD_LBL_TAXPAYERIDENTIFICATIONNO_EN}    Taxpayer Identification No *
${ACCOUNT_ADD_LBL_TAXPAYERIDENTIFICATIONNO_LOCATOR}    id=lblTaxpayerIdentificationNoCreate
${ACCOUNT_ADD_TXT_TAXPAYERIDENTIFICATIONNO_LOCATOR}    id=input_txtTaxpayerIdentificationNoCreate
${ACCOUNT_ADD_LBL_TAXPAYERIDENTIFICATIONNO_VALID_LOCATOR}    id=lblTaxpayerIdentificationNoCreateValid
#Start Date *
${ACCOUNT_ADD_LBL_STARTDATE_TH}    วันที่เปิดใช้งาน *
${ACCOUNT_ADD_LBL_STARTDATE_EN}    Start Date *
${ACCOUNT_ADD_LBL_STARTDATE_LOCATOR}    id=lblStartDateCreate
${ACCOUNT_ADD_DATE_STARTDATE_LOCATOR}    id=dateStartDateCreate
${ACCOUNT_ADD_DATE_STARTDATE_INPUT_LOCATOR}    id=input_dateStartDateCreate
${ACCOUNT_ADD_DATE_STARTDATE_VALID_LOCATOR}    id=lblStartDateCreateValid
${ACCOUNT_ADD_DATE_STARTDATE_BUTTON_LOCATOR}    xpath=//*[@id="dateStartDateCreate"]/div[1]/div/div[2]/div[2]/div/div
# ${ACCOUNT_ADD_DATE_STARTDATE_VALUE_DATE}    2020/11/01
${ACCOUNT_ADD_DATE_STARTDATE_FORMAT_DATE}    yyyy/mm/dd
${ACCOUNT_ADD_DATE_STARTDATE_SEPARATOR_DATE}    /
#Expire Date
${ACCOUNT_ADD_LBL_EXPIREDATE_TH}    วันที่หมดอายุ
${ACCOUNT_ADD_LBL_EXPIREDATE_EN}    Expire Date
${ACCOUNT_ADD_LBL_EXPIREDATE_LOCATOR}    id=lblExpireDateCreate
${ACCOUNT_ADD_DATE_EXPIREDATE_LOCATOR}    id=dateExpireDateCreate
${ACCOUNT_ADD_DATE_EXPIREDATE_INPUT_LOCATOR}    id=input_dateExpireDateCreate
${ACCOUNT_ADD_DATE_EXPIREDATE_VALID_LOCATOR}    id=lblExpireDateCreateValid
${ACCOUNT_ADD_DATE_EXPIREDATE_BUTTON_LOCATOR}    xpath=//*[@id="dateExpireDateCreate"]/div/div/div[2]/div[2]/div/div
# ${ACCOUNT_ADD_DATE_EXPIREDATE_VALUE_DATE}    2020/11/01
${ACCOUNT_ADD_DATE_EXPIREDATE_FORMAT_DATE}    yyyy/mm/dd
${ACCOUNT_ADD_DATE_EXPIREDATE_SEPARATOR_DATE}    /
#Permanent 
${ACCOUNT_ADD_LBL_PERMANENT_TH}    ถาวร
${ACCOUNT_ADD_LBL_PERMANENT_EN}    Permanent
${ACCOUNT_ADD_CHK_PERMANENT_LOCATOR}    id=chkPermanent
#Permission 
${ACCOUNT_ADD_LBL_PERMISSION_TH}    สิทธิ์การใช้งาน
${ACCOUNT_ADD_LBL_PERMISSION_EN}    Permission
${ACCOUNT_ADD_LBL_PERMISSION_LOCATOR}    id=lblPermissionCreate
${ACCOUNT_ADD_LBL_PERMISSION_MENU_VALID_LOCATOR}    id=lblPermissionListMenuListCreateValid
${ACCOUNT_ADD_CHK_PERMISSION0_ID_LOCATOR}    id=chkPermissionListMenuListCreate0
${ACCOUNT_ADD_CHK_PERMISSION0_LOCATOR}    css=#chkPermissionListMenuListCreate0 span[class="dx-checkbox-icon"]
${ACCOUNT_ADD_CHK_PERMISSION_MENU_LOCATOR}    css=#chkPermissionListMenuListCreate[index] span[class="dx-checkbox-icon"]
${ACCOUNT_ADD_LBL_PERMISSION_MENU_LOCATOR}    css=#chkPermissionListMenuListCreate[index] span[class="dx-checkbox-text"]

${ACCOUNT_ADD_ICON_PERMISSION_MENU_LOCATOR}    id=iconPermissionListMenuListCreate[index]
${ACCOUNT_ADD_LBL_PERMISSION_MENU_TOOLTIP_LOCATOR}    id=lblPermissionListMenuListTooltipCreate[index]
${ACCOUNT_ADD_LBL_PERMISSION_MENU_TOOLTIP_GROUPNAME_LOCATOR}    id=lblPermissionListMenuListTooltipGroupNameCreate[index]
${ACCOUNT_ADD_LBL_PERMISSION_MENU_TOOLTIP_ROLE_LOCATOR}    id=lblPermissionListMenuListTooltipRoleCreate[index]

#-------------------------------------------- Edit Account --------------------------------------------#
#Edit Account
${ACCOUNT_EDIT_LBL_EDITACCOUNT_TH}    แก้ไขบัญชีผู้ใช้งาน 
${ACCOUNT_EDIT_LBL_EDITACCOUNT_EN}    Edit Account
${ACCOUNT_EDIT_LBL_EDITACCOUNT_LOCATOR}    id=lblEditAccount

#Account Name*
${ACCOUNT_EDIT_LBL_ACCOUNTNAME_TH}    ชื่อผู้ใช้ *
${ACCOUNT_EDIT_LBL_ACCOUNTNAME_EN}    Account Name *
${ACCOUNT_EDIT_LBL_ACCOUNTNAME_LOCATOR}    id=lblAccountNameEdit
${ACCOUNT_EDIT_TXT_ACCOUNTNAME_LOCATOR}    id=txtAccountNameEdit
${ACCOUNT_EDIT_INPUT_ACCOUNTNAME_LOCATOR}    id=input_txtAccountNameEdit
#Name*
${ACCOUNT_EDIT_LBL_NAME_TH}    ชื่อ *
${ACCOUNT_EDIT_LBL_NAME_EN}    Name *
${ACCOUNT_EDIT_LBL_NAME_LOCATOR}    id=lblNameEdit
${ACCOUNT_EDIT_TXT_NAME_LOCATOR}    id=txtNameEdit
${ACCOUNT_EDIT_INPUT_NAME_LOCATOR}    id=input_txtNameEdit
${ACCOUNT_EDIT_LBL_NAME_VALID_LOCATOR}    id=lblNameEditValid
#Maximum Room*
${ACCOUNT_EDIT_LBL_MAXIMUMROOM_TH}    สร้างห้องพักได้สูงสุด (ยูนิต) *
${ACCOUNT_EDIT_LBL_MAXIMUMROOM_EN}    Maximum Room *
${ACCOUNT_EDIT_LBL_MAXIMUMROOM_LOCATOR}    id=lblMaximumRoomEdit
${ACCOUNT_EDIT_TXT_MAXIMUMROOM_LOCATOR}    id=txtMaximumRoomEdit
${ACCOUNT_EDIT_INPUT_MAXIMUMROOM_LOCATOR}    id=input_txtMaximumRoomEdit
${ACCOUNT_EDIT_LBL_MAXIMUMROOM_VALID_LOCATOR}    id=lblMaximumRoomEditValid
#Phone*
${ACCOUNT_EDIT_LBL_PHONE_TH}    เบอร์โทรศัพท์ *
${ACCOUNT_EDIT_LBL_PHONE_EN}    Phone *
${ACCOUNT_EDIT_LBL_PHONE_LOCATOR}    id=lblPhoneEdit
${ACCOUNT_EDIT_TXT_PHONE_LOCATOR}    id=txtPhoneEdit
${ACCOUNT_EDIT_INPUT_PHONE_LOCATOR}    id=input_txtPhoneEdit
${ACCOUNT_EDIT_LBL_PHONE_VALID_LOCATOR}    id=lblPhoneEditValid
${ACCOUNT_EDIT_LBL_PHONE_FORMATVALID_LOCATOR}    id=lblPhoneEditPhoneIsNotValid
#Taxpayer Identification No*
${ACCOUNT_EDIT_LBL_TAXPAYERIDENTIFICATIONNO_TH}    เลขประจำตัวผู้เสียภาษี *
${ACCOUNT_EDIT_LBL_TAXPAYERIDENTIFICATIONNO_EN}    Taxpayer Identification No *
${ACCOUNT_EDIT_LBL_TAXPAYERIDENTIFICATIONNO_LOCATOR}    id=lblTaxpayerIdentificationNoEdit
${ACCOUNT_EDIT_TXT_TAXPAYERIDENTIFICATIONNO_LOCATOR}    id=txtTaxpayerIdentificationNoEdit
${ACCOUNT_EDIT_INPUT_TAXPAYERIDENTIFICATIONNO_LOCATOR}    id=input_txtTaxpayerIdentificationNoEdit
${ACCOUNT_EDIT_LBL_TAXPAYERIDENTIFICATIONNO_VALID_LOCATOR}    id=lblTaxpayerIdentificationNoEditValid

#Start Date*
${ACCOUNT_EDIT_LBL_STARTDATE_TH}    วันที่เปิดใช้งาน *
${ACCOUNT_EDIT_LBL_STARTDATE_EN}    Start Date *
${ACCOUNT_EDIT_LBL_STARTDATE_LOCATOR}    id=lblStartDateEdit
${ACCOUNT_EDIT_DATE_STARTDATE_LOCATOR}    id=dateStartDateEdit
${ACCOUNT_EDIT_DATE_STARTDATE_INPUT_LOCATOR}    id=input_dateStartDateEdit
${ACCOUNT_EDIT_DATE_STARTDATE_VALID_LOCATOR}    id=lblStartDateEditValid
${ACCOUNT_EDIT_DATE_STARTDATE_BUTTON_LOCATOR}    css=#dateStartDateEdit div[class="dx-texteditor-buttons-container"]
# ${ACCOUNT_EDIT_DATE_STARTDATE_VALUE_DATE}    2021/11/01
${ACCOUNT_EDIT_DATE_STARTDATE_FORMAT_DATE}    dd/mm/yyyy
${ACCOUNT_EDIT_DATE_STARTDATE_SEPARATOR_DATE}    /
#Expire 
${ACCOUNT_EDIT_LBL_EXPIREDATE_TH}    วันที่หมดอายุ
${ACCOUNT_EDIT_LBL_EXPIREDATE_EN}    Expire Date
${ACCOUNT_EDIT_LBL_EXPIREDATE_LOCATOR}    id=lblExpireDateEdit
${ACCOUNT_EDIT_DATE_EXPIREDATE_LOCATOR}    id=dateExpireDateEdit
${ACCOUNT_EDIT_DATE_EXPIREDATE_INPUT_LOCATOR}    id=input_dateExpireDateEdit
${ACCOUNT_EDIT_DATE_EXPIREDATE_VALID_LOCATOR}    id=lblExpireDateEditValid
${ACCOUNT_EDIT_DATE_EXPIREDATE_BUTTON_LOCATOR}    xpath=//*[@id="dateExpireDateEdit"]/div/div/div[2]/div[2]/div/div
# ${ACCOUNT_EDIT_DATE_EXPIREDATE_VALUE_DATE}    01/10/2021
${ACCOUNT_EDIT_DATE_EXPIREDATE_FORMAT_DATE}    dd/mm/yyyy
${ACCOUNT_EDIT_DATE_EXPIREDATE_SEPARATOR_DATE}    /
#Permanent 
${ACCOUNT_EDIT_LBL_PERMANENT_TH}    ถาวร
${ACCOUNT_EDIT_LBL_PERMANENT_EN}    Permanent
${ACCOUNT_EDIT_CHK_PERMANENT_LOCATOR}    id=chkPermanent

#Permission 
${ACCOUNT_EDIT_LBL_PERMISSION_TH}    สิทธิ์การใช้งาน
${ACCOUNT_EDIT_LBL_PERMISSION_EN}    Permission
${ACCOUNT_EDIT_LBL_PERMISSION_LOCATOR}    id=lblPermissionEdit
${ACCOUNT_EDIT_LBL_PERMISSION_MENU_VALID_LOCATOR}    id=lblPermissionListMenuListEditValid
${ACCOUNT_EDIT_CHK_PERMISSION0_ID_LOCATOR}    id=chkPermissionListMenuListEdit0
${ACCOUNT_EDIT_CHK_PERMISSION1_ID_LOCATOR}    id=chkPermissionListMenuListEdit1
${ACCOUNT_EDIT_CHK_PERMISSION0_LOCATOR}    css=#chkPermissionListMenuListEdit0 span[class="dx-checkbox-icon"]
${ACCOUNT_EDIT_CHK_PERMISSION1_LOCATOR}    css=#chkPermissionListMenuListEdit1 span[class="dx-checkbox-icon"]
${ACCOUNT_EDIT_CHK_PERMISSION_MENU_LOCATOR}    css=#chkPermissionListMenuListEdit[index] span[class="dx-checkbox-icon"]
${ACCOUNT_EDIT_LBL_PERMISSION_MENU_LOCATOR}    css=#chkPermissionListMenuListEdit[index] span[class="dx-checkbox-text"]

${ACCOUNT_EDIT_ICON_PERMISSION_MENU_LOCATOR}    id=iconPermissionListMenuListEdit[index]
${ACCOUNT_EDIT_LBL_PERMISSION_MENU_TOOLTIP_LOCATOR}    id=lblPermissionListMenuListTooltipEdit[index]
${ACCOUNT_EDIT_LBL_PERMISSION_MENU_TOOLTIP_GROUPNAME_LOCATOR}    id=lblPermissionListMenuListTooltipGroupNameEdit[index]
${ACCOUNT_EDIT_LBL_PERMISSION_MENU_TOOLTIP_ROLE_LOCATOR}    id=lblPermissionListMenuListTooltipRoleEdit[index]

#dowload icon
${ACCOUNT_EDIT_LBL_DOWLOAD_TH}    ดาวน์โหลดข้อมูลตั้งต้นโครงการ
${ACCOUNT_EDIT_LBL_DOWLOAD_EN}    Download property import format
${ACCOUNT_EDIT_LBL_DOWLOAD_TH_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-65"]
${ACCOUNT_EDIT_LBL_DOWLOAD_TH_VERIFYSCREEN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-85"]
${ACCOUNT_EDIT_LBL_DOWLOAD_EN_VERIFYSCREEN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-85"]
${ACCOUNT_EDIT_ICON_DOWLOAD_LOCATOR}    id=iconDownloadPropertyImportFormatEdit
#upload icon
${ACCOUNT_EDIT_LBL_UPLOAD_TH}    อัพโหลดข้อมูลโครงการ
${ACCOUNT_EDIT_LBL_UPLOAD_EN}    Upload property data
${ACCOUNT_EDIT_LBL_UPLOAD_TH_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-66"]
${ACCOUNT_EDIT_LBL_UPLOAD_TH_VERIFYSCREEN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-86"]
${ACCOUNT_EDIT_LBL_UPLOAD_EN_VERIFYSCREEN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-86"]
${ACCOUNT_EDIT_ICON_UPLOAD_LOCATOR}    id=iconUploadPropertyDataEdit
${ACCOUNT_EDIT_INPUT_UPLOAD_LOCATOR}    id=file

#Property
${ACCOUNT_EDIT_LBL_PROPERTY_TH}    โครงการ
${ACCOUNT_EDIT_LBL_PROPERTY_EN}    Property
${ACCOUNT_EDIT_LBL_PROPERTY_LOCATOR}    id=lblPropertyEdit
#No
${ACCOUNT_EDIT_LBL_RESULT_NO_TH}    ลำดับ
${ACCOUNT_EDIT_LBL_RESULT_NO_EN}    No.
${ACCOUNT_EDIT_LBL_RESULT_NO_LOCATOR}    id=dx-col-25
${ACCOUNT_EDIT_LBL_RESULT_NO_VERIFYSCREEN_LOCATOR}    id=dx-col-41
#Property Name
${ACCOUNT_EDIT_LBL_RESULT_PROPERTYNAME_TH}    ชื่อโครงการ
${ACCOUNT_EDIT_LBL_RESULT_PROPERTYNAME_EN}    Property Name
${ACCOUNT_EDIT_LBL_RESULT_PROPERTYNAME_LOCATOR}    id=dx-col-26
${ACCOUNT_EDIT_LBL_RESULT_PROPERTYNAME_VERIFYSCREEN_LOCATOR}    id=dx-col-42

#No Data
${ACCOUNT_EDIT_LBL_RESULT_NODATA_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[6]/span
#For check value table
${ACCOUNT_EDIT_LBL_RESULT_DATA_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[row]/td[col]
${ACCOUNT_EDIT_NUMCOL}    2
@{ACCOUNT_EDIT_LBL_FIELD_HEADER_TABLE_VALUE_TH}    no    PropertyName
@{ACCOUNT_EDIT_LBL_FIELD_HEADER_TABLE_VALUE_EN}    no    PropertyName

${ACCOUNT_EDIT_LBL_RESULT_ROW1COL1_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td[2]
${ACCOUNT_EDIT_LBL_RESULT_ROW2COL1_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[2]/td[2]
#Enable icon
${ACCOUNT_EDIT_LBL_POPUPENABLE_TH}    เปิดการใช้งาน
${ACCOUNT_EDIT_LBL_POPUPENABLE_EN}    Enable
${ACCOUNT_EDIT_LBL_POPUPENABLE_TH_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-100"]
${ACCOUNT_EDIT_LBL_POPUPENABLE_TH_VERIFYSCREEN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-91"]
${ACCOUNT_EDIT_LBL_POPUPENABLE_EN_VERIFYSCREEN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-91"]
${ACCOUNT_EDIT_ICON_POPUPENABLE1_LOCATOR}    id=btnPopUpEnable1
#Disable icon
${ACCOUNT_EDIT_LBL_POPUPDISABLE_TH}    ปิดการใช้งาน
${ACCOUNT_EDIT_LBL_POPUPDISABLE_EN}    Disable
${ACCOUNT_EDIT_LBL_POPUPDISABLE_TH_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-102"]
${ACCOUNT_EDIT_LBL_POPUPDISABLE_TH_VERIFYSCREEN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-87"] 
${ACCOUNT_EDIT_LBL_POPUPDISABLE_EN_VERIFYSCREEN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-87"] 
${ACCOUNT_EDIT_ICON_POPUPDISABLE1_LOCATOR}    id=btnPopUpDisable1
#Edit icon
${ACCOUNT_EDIT_LBL_POPUPEDIT_TH}    แก้ไข
${ACCOUNT_EDIT_LBL_POPUPEDIT_EN}    Edit
${ACCOUNT_EDIT_LBL_POPUPEDIT_TH_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-101"]
${ACCOUNT_EDIT_LBL_POPUPEDIT_VERIFYSCREEN_TH_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-88"]
${ACCOUNT_EDIT_LBL_POPUPEDIT_VERIFYSCREEN_EN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-88"]
${ACCOUNT_EDIT_ICON_POPUPEDIT_LOCATOR}    id=btnPopUpEdit1
${ACCOUNT_EDIT_ICON_POPUPEDIT_FILE_LOCATOR}    id=file1

#No Data
${ACCOUNT_EDIT_LBL_RESULT_NODATA_PROPERTY_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[6]/span
#For check value table
${ACCOUNT_EDIT_LBL_RESULT_DATA_PROPERTY_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[row]/td[col]
${ACCOUNT_EDIT_NUMCOL_PROPERTY}    2
@{ACCOUNT_EDIT_LBL_FIELD_HEADER_TABLE_VALUE_PROPERTY_TH}    no    propertyName
@{ACCOUNT_EDIT_LBL_FIELD_HEADER_TABLE_VALUE_PROPERTY_EN}    no    propertyName

#Cancel
${ACCOUNT_ADDEDIT_BTN_CANCEL_TH}    ยกเลิก
${ACCOUNT_ADDEDIT_BTN_CANCEL_EN}    Cancel
${ACCOUNT_ADDEDIT_BTN_CANCEL_LOCATOR}    id=btnCancel
#Save
${ACCOUNT_ADDEDIT_BTN_SAVE_TH}    บันทึก
${ACCOUNT_ADDEDIT_BTN_SAVE_EN}    Save
${ACCOUNT_ADDEDIT_BTN_SAVE_LOCATOR}    id=btnSave
################################################################################################################################
################################################################-- Value --################################################################
#-------------------------------------------- data Search --------------------------------------------#
# #Start Date
# ${ACCOUNT_STARTDATE_VALUE}   30/09/2021
# ${ACCOUNT_STARTDATE_DB_VALUE}   2021-09-30
# #Expire Date
# ${ACCOUNT_EXPIREDATE_VALUE}   30/09/2021
# ${ACCOUNT_EXPIREDATE_DB_VALUE}   2021-09-30
# Account Name, Name, Phone
${ACCOUNT_ACCOUNTNAMENAMEPHONE_VALUE}   test
#-------------------------------------------- data Create --------------------------------------------#
#Name *
${ACCOUNT_NAME_VALUE}   NameAccount
# ${ACCOUNT_NAME_VALUE}   111111111113
#Maximum Room *
${ACCOUNT_MAXIMUMROOM_VALUE}    1
#Phone *
${ACCOUNT_PHONE_VALUE}    0812345678
${ACCOUNT_PHONE_INVALID_VALUE}    0
#Taxpayer Identification No *
${ACCOUNT_TAXPAYERIDENTIFICATIONNO_VALUE}    1234567890123
#Start Date *
${ACCOUNT_STARTDATE_VALUE}    22/11/2021
# ${ACCOUNT_STARTDATE_INPUT_DATE_VALUE}    2021/10/22
${ACCOUNT_STARTDATE_INPUT_DATE_VALUE}    2021/11/22
${ACCOUNT_STARTDATE_DB_VALUE}   2021-11-22
${ACCOUNT_STARTDATE_CHECK_VALUE}   2021-11-22T00:00:00.000Z

#Expire Date
${ACCOUNT_EXPIREDATE_VALUE}    30/10/2021
${ACCOUNT_EXPIREDATE_INPUT_DATE_VALUE}    2021/11/30
${ACCOUNT_EXPIREDATE_DB_VALUE}   2021-11-30
${ACCOUNT_EXPIREDATE_CHECK_VALUE}   2021-11-30T00:00:00.000Z

#-------------------------------------------- data Edit --------------------------------------------#
#Name *
${ACCOUNT_EDIT_NAME_VALUE}   NameAccountEdit
#Maximum Room *
${ACCOUNT_EDIT_MAXIMUMROOM_VALUE}    2
#Phone *
${ACCOUNT_EDIT_PHONE_VALUE}    0812345679
#Taxpayer Identification No *
${ACCOUNT_EDIT_TAXPAYERIDENTIFICATIONNO_VALUE}    1234567890124
#Start Date *
${ACCOUNT_EDIT_STARTDATE_VALUE}    01/12/2021
${ACCOUNT_EDIT_STARTDATE_INPUT_DATE_VALUE}    2021/12/01
${ACCOUNT_EDIT_STARTDATE_DB_VALUE}   2021-11-01
${ACCOUNT_EDIT_STARTDATE_CHECK_VALUE}   2021-12-01T00:00:00.000Z
#Expire Date
${ACCOUNT_EDIT_EXPIREDATE_VALUE}    30/12/2021
${ACCOUNT_EDIT_EXPIREDATE_INPUT_DATE_VALUE}    2021/12/30
${ACCOUNT_EDIT_EXPIREDATE_DB_VALUE}   2021-12-30
${ACCOUNT_EDIT_EXPIREDATE_CHECK_VALUE}   2021-12-30T00:00:00.000Z
#-------------------------------------------- delete data properties --------------------------------------------#
# StampDeleteUserRole
${ACCOUNT_STAMPDELETEPROPERTIES_DELETETAT_VALUE}    '2021-11-02 00:00:00'
${ACCOUNT_STAMPDELETEPROPERTIES_FILENAME_VALUE}    account_StampDelete.sql
################################################################-- capture page screenshot --################################################################
#-------------------------------------------- Search --------------------------------------------#	
${ACCOUNT_SEARCH_M16_0_1_1_000_SUCCESS_SCREENSHOT}    M16_0_1_1_000_Account_Success_Search_VerifyScreen_Screen.png
${ACCOUNT_SEARCH_M16_1_1_1_000_SUCCESS_SCREENSHOT}    M16_1_1_1_000_Account_Success_Search_VerifyAction_Screen.png
#-------------------------------------------- View --------------------------------------------#	
${ACCOUNT_VIEW_M16_0_1_5_000_SUCCESS_SCREENSHOT}    M16_0_1_5_000_Account_Success_View_VerifyScreen_Screen.png
${ACCOUNT_VIEW_M16_1_1_5_000_SUCCESS_SCREENSHOT}    M16_1_1_5_000_Account_Success_View_VerifyAction_Screen.png
#-------------------------------------------- Create --------------------------------------------#	
${ACCOUNT_CREATE_M16_0_0_2_000_ERROR_SCREENSHOT}    M16_0_0_2_000_Account_Error_Create_VerifyScreen_Screen.png

${ACCOUNT_CREATE_M16_0_1_2_000_SUCCESS_SCREENSHOT}    M16_0_1_2_000_Account_Success_Create_VerifyScreen_Screen.png
${ACCOUNT_CREATE_M16_1_1_2_000_SUCCESS_SCREENSHOT}    M16_1_1_2_000_Account_Success_Create_VerifyAction_Screen.png
#-------------------------------------------- Edit --------------------------------------------#	
${ACCOUNT_EDIT_M16_0_1_3_000_SUCCESS_SCREENSHOT}    M16_0_1_3_000_Account_Success_Edit_VerifyScreen_Screen.png
${ACCOUNT_EDIT_M16_1_1_3_000_SUCCESS_SCREENSHOT}    M16_1_1_3_000_Account_Success_Edit_VerifyAction_Screen.png
#-------------------------------------------- Delete --------------------------------------------#	
${ACCOUNT_DELETE_M16_0_1_4_000_SUCCESS_SCREENSHOT}    M16_0_1_4_000_Account_Success_Delete_VerifyScreen_Screen.png
${ACCOUNT_DELETE_M16_1_1_4_000_SUCCESS_SCREENSHOT}    M16_1_1_4_000_Account_Success_Delete_VerifyAction_Screen.png