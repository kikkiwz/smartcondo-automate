*** Variables ***
################################################################-- Check Role Management information --################################################################

#Add button
${ROLEMANAGEMENTINFORMATION_BTN_ADD_TH}    เพิ่ม
${ROLEMANAGEMENTINFORMATION_BTN_ADD_EN}    Create
${ROLEMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}    id=btnCreateRole

#Search button
${ROLEMANAGEMENTINFORMATION_BTN_SEARCH_TH}    ค้นหา
${ROLEMANAGEMENTINFORMATION_BTN_SEARCH_EN}    Search
${ROLEMANAGEMENTINFORMATION_BTN_SEARCH_LOCATOR}    id=btnSearch

#Clear button
${ROLEMANAGEMENTINFORMATION_BTN_CLEAR_TH}    คืนค่า
${ROLEMANAGEMENTINFORMATION_BTN_CLEAR_EN}    Clear
${ROLEMANAGEMENTINFORMATION_BTN_CLEAR_LOCATOR}    id=btnClear


#Button page
${ROLEMANAGEMENTINFORMATION_BTN_20}    20
${ROLEMANAGEMENTINFORMATION_BTN_20_LOCATOR}    xpath=//*[@id="roomListOptions"]/div/div[11]/div[1]/div[1]
${ROLEMANAGEMENTINFORMATION_BTN_50}    50
${ROLEMANAGEMENTINFORMATION_BTN_50_LOCATOR}    xpath=//*[@id="roomListOptions"]/div/div[11]/div[1]/div[2]
${ROLEMANAGEMENTINFORMATION_BTN_100}    100
${ROLEMANAGEMENTINFORMATION_BTN_100_LOCATOR}    xpath=//*[@id="roomListOptions"]/div/div[11]/div[1]/div[3]
${ROLEMANAGEMENTINFORMATION_BTN_1000}    1000
${ROLEMANAGEMENTINFORMATION_BTN_1000_LOCATOR}    xpath=//*[@id="roomListOptions"]/div/div[11]/div[1]/div[4]

${ROLEMANAGEMENTINFORMATION_LBL_PAGE_1}    1
${ROLEMANAGEMENTINFORMATION_LBL_PAGE_LOCATOR}    xpath=//*[@id="roomListOptions"]/div/div[11]/div[2]/div[3]


${ROLEMANAGEMENTINFORMATION_LBL_PagesXFromY_LOCATOR}    xpath=//*[@id="roomListOptions"]/div/div[11]/div[2]/div[1]
${ROLEMANAGEMENTINFORMATION_ICON_ARRORWLEFT_LOCATOR}    xpath=//*[@id="roomListOptions"]/div/div[11]/div[2]/div[2]
${ROLEMANAGEMENTINFORMATION_ICON_ARRORWRIGHT_LOCATOR}    xpath=//*[@id="roomListOptions"]/div/div[11]/div[2]/div[4]


#View Icon
${ROLEMANAGEMENTINFORMATION_ICON_VIEW_TH}    ดู
${ROLEMANAGEMENTINFORMATION_ICON_VIEW_EN}    View
${ROLEMANAGEMENTINFORMATION_ICON_VIEW_LOCATOR}    id=btnView1
${ROLEMANAGEMENTINFORMATION_LBL_VIEW_TH_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-10"]
${ROLEMANAGEMENTINFORMATION_LBL_VIEW_EN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-10"]


#Edit Icon
${ROLEMANAGEMENTINFORMATION_ICON_EDIT_TH}    แก้ไข
${ROLEMANAGEMENTINFORMATION_ICON_EDIT_EN}    Edit
${ROLEMANAGEMENTINFORMATION_ICON_EDIT_LOCATOR}    id=btnEdit1
${ROLEMANAGEMENTINFORMATION_LBL_EDIT_TH_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-11"]
${ROLEMANAGEMENTINFORMATION_LBL_EDIT_EN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-11"]


#Delete Icon
${ROLEMANAGEMENTINFORMATION_ICON_DELETE_TH}    ลบ
${ROLEMANAGEMENTINFORMATION_ICON_DELETE_EN}    Delete
${ROLEMANAGEMENTINFORMATION_ICON_DELETE_LOCATOR}    id=btnDelete1
${ROLEMANAGEMENTINFORMATION_LBL_DELETE_TH_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-12"]
${ROLEMANAGEMENTINFORMATION_LBL_DELETE_EN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-12"]


#Icon X Close
${ROLEMANAGEMENTINFORMATION_BTN_CLOSE_LOCATOR}    class=ant-modal-close-x


#-------------------------------------------- Search Role Management information --------------------------------------------#
############## Header ############## 
#Role Management information Header
${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_HEADER_TH}    สิทธิ์การใช้งาน 
${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_HEADER_EN}    Role Management
${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_HEADER_LOCATOR}    xpath=/html/body/app-root/app-layouts/div/app-account-setting/div[1]/div/div/h3


#Check asset management information
${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_TH}    สิทธิ์การใช้งาน 
${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_EN}    Role Management
${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENTINFORMATION_LOCATOR}    id=lblHeaderRoleManagement



#Role Management
${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENT_TH}    สิทธิ์การใช้งาน 
${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENT_EN}    Role Management
${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_ROLEMANAGEMENT_LOCATOR}    id=lblRoleManagement
${ROLEMANAGEMENTINFORMATION_SEARCH_TXT_ROLEMANAGEMENT_LOCATOR}    id=input_txtRoleManagement
${ROLEMANAGEMENTINFORMATION_SEARCH_PLACEHODER_ROLEMANAGEMENT_LOCATOR}    xpath=//*[@id="txtRoleName"]/div/div[1]/div


######################################### Table ##################################################### 
#No
${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NO_TH}    ลำดับ
${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NO_EN}    No.
${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NO_LOCATOR}    id=dx-col-7

#Role Name
${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_ROLENAME_TH}    สิทธิ์การใช้งาน
${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_ROLENAME_EN}    Role Name
${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_ROLENAME_LOCATOR}    id=dx-col-8


${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[6]/span
#For check value table
${ROLEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_DATA_LOCATOR}    xpath=//*[@id="roomListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[row]/td[col]

                                                                     
@{ROLEMANAGEMENTINFORMATION_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE}    no    rolename

${ROLEMANAGEMENTINFORMATION_SEARCH_NUMCOL}    2



#-------------------------------------------- CreateEdit Role Management information --------------------------------------------#

#Header Create
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEROLE_TH}    เพิ่มสิทธิ์การใช้งาน
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEROLE_EN}    Create Role
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_CREATEROLE_LOCATOR}   id=lblCreateRole

#Header Edit
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_EDITROLE_TH}    แก้ไขสิทธิ์การใช้งาน
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_EDITROLE_EN}    Edit Role
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_EDITROLE_LOCATOR}   id=lblEditRole

#Header View
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_VIEWROLE_TH}    ดูสิทธิ์การใช้งาน
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_VIEWROLE_EN}    View Role
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_VIEWROLE_LOCATOR}   id=lblViewRole


#Icon X Close
${ROLEMANAGEMENTINFORMATION_BTN_CLOSE_LOCATOR}    class=ant-modal-close-x

#ชื่อ*
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_ROLENAME_TH}    ชื่อ *
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_ROLENAME_EN}    Role Name *
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_ROLENAME_LOCATOR}   id=lblRoleName
${ROLEMANAGEMENTINFORMATION_ADDEDIT_TXT_ROLENAME_LOCATOR}    id=input_txtRoleName
${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE1}    TestUser
${ROLEMANAGEMENTINFORMATION_ADDEDIT_ROLENAME_VALUE2}    TestUser2


#สิทธิ์การใช้งาน*
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_PERMISSION_TH}    สิทธิ์การใช้งาน*
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_PERMISSION_EN}    Permission*
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_PERMISSION_LOCATOR}   id=lblPermission


#Table
${ROLEMANAGEMENTINFORMATION_ADDEDIT_NAMEMENU_LOCATOR}   xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/app-edit/div/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[[index]]/td[1]



#ชื่อเมนู
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_MENUNAME_TH}    ชื่อเมนู
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_MENUNAME_EN}    Menu Name
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_MENUNAME_LOCATOR}    id=dx-col-10

#ดู
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_VIEW_TH}    ดู
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_VIEW_EN}    View
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_VIEW_LOCATOR}    id=dx-col-11


#เพิ่ม
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_CREATE_TH}    เพิ่ม
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_CREATE_EN}    Create
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_CREATE_LOCATOR}    id=dx-col-12


#แก้ไข
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_EDIT_TH}    แก้ไข
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_EDIT_EN}    Edit
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_EDIT_LOCATOR}    id=dx-col-13


#ลบ
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_DELETE_TH}    ลบ
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_DELETE_EN}    Delete
${ROLEMANAGEMENTINFORMATION_ADDEDIT_LBL_RESULT_DELETE_LOCATOR}    id=dx-col-14


#Cancel button
${ROLEMANAGEMENTINFORMATION_ADDEDIT_BTN_CANCEL_TH}    ยกเลิก
${ROLEMANAGEMENTINFORMATION_ADDEDIT_BTN_CANCEL_EN}    Cancel
${ROLEMANAGEMENTINFORMATION_ADDEDIT_BTN_CANCEL_LOCATOR}    id=btnCancel

#Save button
${ROLEMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_TH}    บันทึก
${ROLEMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_EN}    Save
${ROLEMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}    id=btnSave


${ROLEMANAGEMENTINFORMATION_CHECKBOX_LOCATOR}    xpath=//*[@id="roomListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td[2]/div/dx-check-box

${ROLEMANAGEMENTINFORMATION_CHECKBOXEDIT_LOCATOR}    xpath=//*[@id="roomListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[2]/td[3]/div/dx-check-box/div/span

${ROLEMANAGEMENTINFORMATION_CHECKEDVIEW_LOCATOR}    id=chkView[index]
${ROLEMANAGEMENTINFORMATION_CHECKEDCREATE_LOCATOR}    id=chkCreate[index]
${ROLEMANAGEMENTINFORMATION_CHECKEDEDIT_LOCATOR}    id=chkEdit[index]
${ROLEMANAGEMENTINFORMATION_CHECKEDDELETE_LOCATOR}    id=chkDelete[index]




#capture page screenshot
${ROLEMANAGEMENTINFORMATION_SEARCH_M2_0_1_1_000_SUCCESS_SCREENSHOT}    M2_0_1_1_000_RoleManagement_Success_Search_VerifyScreen.png
${ROLEMANAGEMENTINFORMATION_SEARCH_M2_1_1_1_001_SUCCESS_SCREENSHOT}    M2_1_1_1_001_RoleManagement_Success_Search_VerifyAction.png
${ROLEMANAGEMENTINFORMATION_SEARCH_M2_1_1_1_000_SUCCESS_SCREENSHOT}    M2_1_1_1_000_RoleManagement_Search_VerifyAPIOnloadAndMappingData.png


${ROLEMANAGEMENTINFORMATION_CREATE_M2_0_1_2_000_SUCCESS_SCREENSHOT}    M2_0_1_2_000_RoleManagement_Success_Create_VerifyScreen.png
${ROLEMANAGEMENTINFORMATION_CREATE_M2_1_1_2_001_SUCCESS_SCREENSHOT}    M2_1_1_2_001_RoleManagement_Success_Create_VerifyAction.png
${ROLEMANAGEMENTINFORMATION_CREATE_M2_1_1_2_000_SUCCESS_SCREENSHOT}    M2_1_1_2_000_RoleManagement_Success_Create_VerifyAPIOnloadAndMappingData.png


${ROLEMANAGEMENTINFORMATION_EDIT_M2_0_1_3_000_SUCCESS_SCREENSHOT}    M2_0_1_3_000_RoleManagement_Success_Edit_VerifyScreen.png
${ROLEMANAGEMENTINFORMATION_EDIT_M2_1_1_3_001_SUCCESS_SCREENSHOT}    M2_1_1_3_001_RoleManagement_Success_Edit_VerifyAction.png
${ROLEMANAGEMENTINFORMATION_EDIT_M2_1_1_3_000_SUCCESS_SCREENSHOT}    M2_1_1_3_000_RoleManagement_Edit_VerifyAPIOnloadAndMappingData.png



${ROLEMANAGEMENTINFORMATION_VIEW_M2_1_0_5_000_SUCCESS_SCREENSHOT}    M2_1_0_5_000_RoleManagement_Success_View_VerifyScreen.png
${ROLEMANAGEMENTINFORMATION_VIEW_M2_1_1_5_000_SUCCESS_SCREENSHOT}    M2_1_1_5_000_RoleManagement_Success_View_VerifyAction.png



${ROLEMANAGEMENTINFORMATION_DELETE_M2_0_1_4_000_SUCCESS_SCREENSHOT}    M2_0_1_4_000_RoleManagement_Success_Delete_VerifyScreen.png
${ROLEMANAGEMENTINFORMATION_DELETE_M2_1_1_4_000_SUCCESS_SCREENSHOT}    M2_1_1_4_000_RoleManagement_Delete_VerifyAction.png




