*** Variables ***
################################################################-- EmployeeManagement information --################################################################
#Add button
${EMPLOYEEMANAGEMENTINFORMATION_BTN_ADD_TH}    เพิ่ม
${EMPLOYEEMANAGEMENTINFORMATION_BTN_ADD_EN}    Add
${EMPLOYEEMANAGEMENTINFORMATION_BTN_ADD_LOCATOR}    xpath=/html/body/app-root/app-layouts/div/app-account-setting/div[2]/div/div/div/div/div[2]/div[2]/app-setting-employee/div/div[2]/div/div/div/dx-button/div/span
# ${EMPLOYEEMANAGEMENTINFORMATION_BTN_CREATE_LOCATOR}    id=btnAddEMPLOYEEMANAGEMENTINFORMATION

${EMPLOYEEMANAGEMENTINFORMATION_BTN_VIEW_LOCATOR}    id=btnView1
${EMPLOYEEMANAGEMENTINFORMATION_BTN_EDIT_LOCATOR}    id=btnEdit1

${EMPLOYEEMANAGEMENTINFORMATION_LBL_DELETE_TH}    ลบ
${EMPLOYEEMANAGEMENTINFORMATION_LBL_DELETE_EN}    delete
${EMPLOYEEMANAGEMENTINFORMATION_LBL_DELETE_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-13"]
${EMPLOYEEMANAGEMENTINFORMATION_BTN_DELETE_LOCATOR}    id=btnDelete1


#Button

${EMPLOYEEMANAGEMENTINFORMATION_BTN_20}    20
${EMPLOYEEMANAGEMENTINFORMATION_BTN_20_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[11]/div[1]/div[1]
${EMPLOYEEMANAGEMENTINFORMATION_BTN_50}    50
${EMPLOYEEMANAGEMENTINFORMATION_BTN_50_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[11]/div[1]/div[2]
${EMPLOYEEMANAGEMENTINFORMATION_BTN_100}    100
${EMPLOYEEMANAGEMENTINFORMATION_BTN_100_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[11]/div[1]/div[3]
${EMPLOYEEMANAGEMENTINFORMATION_BTN_1000}    1000
${EMPLOYEEMANAGEMENTINFORMATION_BTN_1000_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[11]/div[1]/div[4]

${EMPLOYEEMANAGEMENTINFORMATION_LBL_PAGE_1}    1
${EMPLOYEEMANAGEMENTINFORMATION_LBL_PAGE_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[11]/div[2]/div[3]

${EMPLOYEEMANAGEMENTINFORMATION_LBL_PagesXFromY_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[11]/div[2]/div[1]
${EMPLOYEEMANAGEMENTINFORMATION_ICON_ARRORWLEFT_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[11]/div[2]/div[2]
${EMPLOYEEMANAGEMENTINFORMATION_ICON_ARRORWRIGHT_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[11]/div[2]/div[4]


#Employee Type Value DropDown
#ALL
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_VALUE_DDL_ALL_TH}    ทั้งหมด 
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_VALUE_DDL_ALL_EN}    All
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_VALUE_DDL_ALL_LOCATOR}    xpath=//*[@id="dx-64b3e058-d762-76a6-9793-f1b52127e39e"]/div[1]/div/div[1]/div[2]/div[1]/div

#Cleaning staff
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_VALUE_DDL_CLEANINGSTAFF_TH}    พนักงานทำความสะอาด 
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_VALUE_DDL_CLEANINGSTAFF_EN}    Cleaning staff
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_VALUE_DDL_CLEANINGSTAFF_LOCATOR}    xpath=//*[@id="dx-64b3e058-d762-76a6-9793-f1b52127e39e"]/div[1]/div/div[1]/div[2]/div[2]/div


#Repair staff
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_VALUE_DDL_REPAIRSTAFF_TH}    พนักงานซ่อมแซม 
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_VALUE_DDL_REPAIRSTAFF_EN}    Repair staff
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_VALUE_DDL_REPAIRSTAFF_LOCATOR}    xpath=//*[@id="dx-64b3e058-d762-76a6-9793-f1b52127e39e"]/div[1]/div/div[1]/div[2]/div[3]/div


#Cleaning and Repair staff
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_VALUE_DDL_CLEANINGANDREPAIRSTAFF_TH}    พนักงานทำความสะอาดและพนักงานซ่อมแซม 
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_VALUE_DDL_CLEANINGANDREPAIRSTAFF_EN}    Cleaning and Repair staff
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_VALUE_DDL_CLEANINGANDREPAIRSTAFF_LOCATOR}    xpath=//*[@id="dx-64b3e058-d762-76a6-9793-f1b52127e39e"]/div[1]/div/div[1]/div[2]/div[4]/div



#Dropdown
@{TENANTS_SEARCH_DDL_EMPLOYEETYPE_TH}    ทั้งหมด    พนักงานทำความสะอาด    พนักงานซ่อมแซม    พนักงานทำความสะอาดและพนักงานซ่อมแซม  
@{TENANTS_SEARCH_DDL_EMPLOYEETYPE_EN}    All    Cleaning staff    Repair staff    Cleaning and Repair staff
${TENANTS_SEARCH_DDL_EMPLOYEETYPE_LOCATOR}    id=ddlEmployeeType
${TENANTS_SEARCH_DDL_EMPLOYEETYPE_LIST_LOCATOR}    xpath=//*[@id="ddlEmployeeType"]/div[1]/div/div[1]/input
${TENANTS_SEARCH_DDL_EMPLOYEETYPE_CLASS_LOCATOR}    class=dx-list-item-content



#-------------------------------------------- Search EmployeeManagement information --------------------------------------------#
############## Header ############## 
#Employee Management information Header
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_HEADER_TH}    จัดการพนักงาน 
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_HEADER_EN}    Employee Management
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_HEADER_LOCATOR}    xpath=/html/body/app-root/app-layouts/div/app-account-setting/div[1]/div/div/h3
#Employee Management information
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_TH}    จัดการพนักงาน 
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_EN}    Employee Management
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEEMANAGEMENTINFORMATION_LOCATOR}    id=lblEmployeeManagementHeaderPage

#Employee type
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEETYPE_TH}    ประเภทพนักงาน 
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEETYPE_EN}    Employee type
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_EMPLOYEETYPE_LOCATOR}    id=lblEmployeetype
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_DDL_EMPLOYEETYPE_LOCATOR}    id=ddlEmployeeType
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_DDL_EMPLOYEETYPE_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_DDL_EMPLOYEETYPE_CLASS_LOCATOR}    class=dx-list-item-content
@{EMPLOYEEMANAGEMENTINFORMATION_SEARCH_DDL_EMPLOYEETYPE_TH_VALUE}    ทั้งหมด    พนักงานทำความสะอาด    พนักงานซ่อมแซม    พนักงานทำความสะอาดและพนักงานซ่อมแซม
@{EMPLOYEEMANAGEMENTINFORMATION_SEARCH_DDL_EMPLOYEETYPE_EN_VALUE}    All    Cleaning staff    Repair staff    Cleaning and Repair staff


#Name - Surname
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_NAMESURNAME_TH}    ชื่อ - นามสกุล 
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_NAMESURNAME_EN}    Name - Surname
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_NAMESURNAME_LOCATOR}    id=lblNameSurname
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_TXT_NAMESURNAME_LOCATOR}    id=txtEmployeeNameSurname


#Phone number
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_PHONENUMBER_TH}    เบอร์โทรศัพท์ 
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_PHONENUMBER_EN}    Phone number
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_PHONENUMBER_LOCATOR}    id=lblPhonenumber
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_TXT_PHONENUMBER_LOCATOR}    id=txtPhoneNumber

#Search
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_BTN_SEARCH_TH}    ค้นหา
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_BTN_SEARCH_EN}    Search
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_BTN_SEARCH_LOCATOR}    id=btnSearch
#Clear
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_BTN_CLEAR_TH}    คืนค่า
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_BTN_CLEAR_EN}    Clear
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_BTN_CLEAR_LOCATOR}    id=btnClear

################################### 
############## Table ############## 
#No
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NO_TH}    ลำดับ
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NO_EN}    No.
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NO_LOCATOR}    id=dx-col-11

#Employee type
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_EMPLOYEETYPE_TH}    ประเภทพนักงาน
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_EMPLOYEETYPE_EN}    Employee type
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_EMPLOYEETYPE_LOCATOR}    id=dx-col-12

#Name - Surname
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NAMESURNAME_TH}    ชื่อ - นามสกุล
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NAMESURNAME_EN}    Name - Surname
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NAMESURNAME_LOCATOR}    id=dx-col-13

#Phone number
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_PHONENUMBER_TH}    เบอร์โทร
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_PHONENUMBER_EN}    Phone number
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_PHONENUMBER_LOCATOR}    id=dx-col-14


${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_NODATA_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[6]/span
#For check value table
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_RESULT_DATA_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[row]/td[col]
@{EMPLOYEEMANAGEMENTINFORMATION_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE}    no    employeetype    namesurname    phonenumber

${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_NUMCOL}    4



#-------------------------------------------- CreateUpdate EmployeeManagement information --------------------------------------------#


#Header
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_ADDEMPLOYEE_TH}    เพิ่มพนักงาน
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_ADDEMPLOYEE_EN}    Add employee
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_HEADER_ADDEMPLOYEE_LOCATOR}   id=lblAddEmployee

#Header
${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_HEADER_EDITEMPLOYEEDETAIL_TH}    แก้ไขข้อมูลพนักงาน
${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_HEADER_EDITEMPLOYEEDETAIL_EN}    Edit employee detail
${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_HEADER_EDITEMPLOYEEDETAIL_LOCATOR}    id=lblEditEmployee

#Employee Type
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_EMPLOYEETYPE_TH}    ประเภทพนักงาน
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_EMPLOYEETYPE_EN}    Employee Type
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_EMPLOYEETYPE_LOCATOR}    id=lblEmployeeType 
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_DDL_EMPLOYEETYPE_LOCATOR}    id=ddlEmployeeTypeCreate 
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_EMPLOYEETYPE_PLEASEINPUTDATA_LOCATOR}    id=validInputemployeeType
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_EMPLOYEETYPE_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_EMPLOYEETYPE_CLASS_LOCATOR}    class=dx-list-item-content
@{EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_EMPLOYEETYPE_TH_VALUE}    พนักงานทำความสะอาด    พนักงานซ่อมแซม    พนักงานทำความสะอาดและพนักงานซ่อมแซม
@{EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_EMPLOYEETYPE_EN_VALUE}    Cleaning staff    Repair staff    Cleaning and Repair staff

#Cleaning staff
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_CLEANINGSTAFF_TH}    พนักงานทำความสะอาด 
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_CLEANINGSTAFF_EN}    Cleaning staff
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_EMPLOYEETYPE_VALUE1}    1

#Repair staff
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_REPAIRSTAFF_TH}    พนักงานซ่อมแซม 
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_REPAIRSTAFF_EN}    Repair staff
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_EMPLOYEETYPE_VALUE2}    2


#Cleaning and Repair staff
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_CLEANINGANDREPAIRSTAFF_TH}    พนักงานทำความสะอาดและพนักงานซ่อมแซม 
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_CLEANINGANDREPAIRSTAFF_EN}    Cleaning and Repair staff
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_EMPLOYEETYPE_VALUE3}    3


#Title
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_TITLE_TH}    คำนำหน้า 
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_TITLE_EN}    Title
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_TITLE_LOCATOR}    id=lblPrefix
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_DDL_TITLE_LOCATOR}    id=ddlPrefix
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_TITLE_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_TITLE_CLASS_LOCATOR}    class=dx-list-item-content


#นาย
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_MR_TH}    นาย 
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_VALUE_DDL_MR_EN}    Mr.
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_PREFIX_VALUE1}    1


#First name
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_FIRSTNAME_TH}    ชื่อ
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_FIRSTNAME_EN}    First name
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_FIRSTNAME_LOCATOR}    id=lblFirstname
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_FIRSTNAME_LOCATOR}    id=input_txtFirstName
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_FIRSTNAME_PLEASEINPUTDATA_LOCATOR}    id=validInputFirstname
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_FIRSTNAME_VALUE}    Johnson
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_FIRSTNAME_VALUE2}    JohnWick


#Last name
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_LASTNAME_TH}    นามสกุล
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_LASTNAME_EN}    Last name
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_LASTNAME_LOCATOR}    id=lblLastname
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_LASTNAME_LOCATOR}    id=input_txtLastname
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_LASTNAME_PLEASEINPUTDATA_LOCATOR}    id=validInputLastname
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LASTNAME_VALUE}    Pluto
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LASTNAME_VALUE2}    Yellow

#Phone number
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_PHONENUMBER_TH}    เบอร์โทร
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_PHONENUMBER_EN}    Phone number
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_PHONENUMBER_LOCATOR}    id=lblAssetPhoneNumber
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_PHONENUMBER_LOCATOR}    id=input_txtAssetPhoneNumber
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_TXT_PHONENUMBER_PLEASEINPUTDATA_LOCATOR}    id=validInputPhonenumber
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_PHONENUMBER_VALUE}    0998887456
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_PHONENUMBER_VALUE2}    0885556677


#Active For Projects
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_ACTIVEFORPROJECTS_TH}    ใช้งานสำหรับ
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_ACTIVEFORPROJECTS_EN}    Active For Projects
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_ACTIVEFORPROJECTS_LOCATOR}    xpath=//*[@id="cdk-overlay-0"]/nz-modal-container/div/div/div[2]/div/div[2]/div[1]/div/span

#Select / Unselect all
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_SELECTUNSELECTALL_TH}    เลือก/ไม่เลือกทั้งหมด
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_SELECTUNSELECTALL_EN}    Select / Unselect all
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_SELECTUNSELECTALL_LOCATOR}    xpath=//*[@id="cdk-overlay-0"]/nz-modal-container/div/div/div[2]/div/div[2]/div[1]/div/a/span


#Button ยกเลิก
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_BTN_CANCEL_TH}    ยกเลิก
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_BTN_CANCEL_EN}    Cancel
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_BTN_CANCEL_LOCATOR}    id=btnCancel


#Button บันทึก
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_TH}    บันทึก
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_EN}    Save
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_BTN_SAVE_LOCATOR}    id=btnSave






#Project of Building 
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_PROPERTYNAME_LOCATOR}    id=lblPropertyNameCreateEdit
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_CHK_PROPERTYNAME_LOCATOR}    id=chkPropertyNameCreateEdit
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_LBL_BUILDINGNAME_LOCATOR}    id=lblBuildingNameCreateEdit
${EMPLOYEEMANAGEMENTINFORMATION_ADDEDIT_CHK_BUILDINGNAME_LOCATOR}    id=chkBuildingNameCreateEdit



#-------------------------------------------- Update EmployeeManagement information --------------------------------------------#
#Header
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_HEADER_EDITEMPLOYEEDETAIL_TH}    แก้ไขข้อมูลพนักงาน
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_HEADER_EDITEMPLOYEEDETAIL_EN}    Edit employee detail
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_HEADER_EDITEMPLOYEEDETAIL_LOCATOR}    id=lblEditEmployee

# #Employee Type
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_EMPLOYEETYPE_TH}    ประเภทพนักงาน
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_EMPLOYEETYPE_EN}    Employee Type
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_EMPLOYEETYPE_LOCATOR}    id=lblEmployeeType

# #Title
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_TITLE_TH}    คำนำหน้า
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_TITLE_EN}    Title
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_TITLE_LOCATOR}    id=lblPrefix

# #First name
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_FIRSTNAME_TH}    ชื่อ
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_FIRSTNAME_EN}    First name
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_FIRSTNAME_LOCATOR}    id=lblFirstname
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_TXT_FIRSTNAME_LOCATOR}    id=input_txtFirstName


# #Last name
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_LASTNAME_TH}    นามสกุล
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_LASTNAME_EN}    Last name
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_LASTNAME_LOCATOR}    id=lblLastname
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_TXT_LASTNAME_LOCATOR}    id=input_txtLastname


# #Phone number
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_PHONENUMBER_TH}    เบอร์โทร
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_PHONENUMBER_EN}    Phone number
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_PHONENUMBER_LOCATOR}    id=lblAssetPhoneNumber
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_TXT_PHONENUMBER_LOCATOR}    id=input_txtAssetPhoneNumber


# #Active For Projects
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_ACTIVEFORPROJECTS_TH}    ใช้งานสำหรับ
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_ACTIVEFORPROJECTS_EN}    Active For Projects
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_ACTIVEFORPROJECTS_LOCATOR}    id=lblActiveFor

# #Select / Unselect all
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_SELECTUNSELECTALL_TH}    เลือก/ไม่เลือกทั้งหมด
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_SELECTUNSELECTALL_EN}    Select / Unselect all
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_LBL_SELECTUNSELECTALL_LOCATOR}    id=lblSelectOrUnSelect


# #Button ยกเลิก
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_BTN_CANCEL_TH}    ยกเลิก
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_BTN_CANCEL_EN}    Cancel
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_BTN_CANCEL_LOCATOR}    id=btnCancel


# #Button บันทึก
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_BTN_SAVE_TH}    บันทึก
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_BTN_SAVE_EN}    Save
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_BTN_SAVE_LOCATOR}    id=btnSave

# #Button Close
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_BTN_CLOSE_LOCATOR}    xpath=/html/body/div[2]/div[2]/div/nz-modal-container/div/div/button/span/i/svg/path

# #capture page screenshot
# ${EMPLOYEEMANAGEMENTINFORMATION_UPDATE_M32_0_1_3_000_SCREENSHOT}    M32_0_1_3_000_EmpolyeeManagement_Create_Screen.png


#-------------------------------------------- Delete EmployeeManagement information --------------------------------------------#

#ICON
${EMPLOYEEMANAGEMENTINFORMATION_DELETE_ICON_LOCATOR}    xpath=/html/body/div/div/div[1]


#Confirm delete
${EMPLOYEEMANAGEMENTINFORMATION_DELETE_BTN_CONFIRMDELETE_TH}    ยืนยันการลบข้อมูล
${EMPLOYEEMANAGEMENTINFORMATION_DELETE_BTN_CONFIRMDELETE_EN}    Confirm delete
${EMPLOYEEMANAGEMENTINFORMATION_DELETE_BTN_CONFIRMDELETE_LOCATOR}    xpath=//*[@id="swal2-title"]


#Do you want to delete
${EMPLOYEEMANAGEMENTINFORMATION_DELETE_BTN_DOYOUWANTTODELETE_TH}    คุณต้องการลบข้อมูล [Name] [EmployeeType] หรือไม่ ?
${EMPLOYEEMANAGEMENTINFORMATION_DELETE_BTN_DOYOUWANTTODELETE_EN}    Do you want to delete Mom Chao (M.C.)ประสบ ภิบัติ Cleaning staff ?
${EMPLOYEEMANAGEMENTINFORMATION_DELETE_BTN_DOYOUWANTTODELETE_LOCATOR}    id=btnCancel


#Cancel
${EMPLOYEEMANAGEMENTINFORMATION_DELETE_BTN_CANCEL_TH}    ยกเลิก
${EMPLOYEEMANAGEMENTINFORMATION_DELETE_BTN_CANCEL_EN}    Cancel
${EMPLOYEEMANAGEMENTINFORMATION_DELETE_BTN_CANCEL_LOCATOR}    xpath=/html/body/div[2]/div/div[6]/button[1]


#Confirm
${EMPLOYEEMANAGEMENTINFORMATION_DELETE_BTN_CONFIRM_TH}    ยืนยัน
${EMPLOYEEMANAGEMENTINFORMATION_DELETE_BTN_CONFIRM_EN}    Confirm
${EMPLOYEEMANAGEMENTINFORMATION_DELETE_BTN_CONFIRM_LOCATOR}    xpath=/html/body/div[2]/div/div[6]/button[3]


#-------------------------------------------- View EmployeeManagement information --------------------------------------------#
#Header
${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_HEADER_VIEWEMPLOYEEDETAIL_TH}    ดูข้อมูลพนักงาน
${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_HEADER_VIEWEMPLOYEEDETAIL_EN}    View employee detail
${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_HEADER_VIEWEMPLOYEEDETAIL_LOCATOR}    id=lblViewEmployeeDetail

#Employee Type
${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_EMPLOYEETYPE_TH}    ประเภทพนักงาน
${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_EMPLOYEETYPE_EN}    Employee Type
${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_EMPLOYEETYPE_LOCATOR}    id=lblEmployeeType

#Title
${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_TITLE_TH}    คำนำหน้า
${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_TITLE_EN}    Title
${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_TITLE_LOCATOR}    id=lblPrefix

#First name
${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_FIRSTNAME_TH}    ชื่อ
${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_FIRSTNAME_EN}    First name
${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_FIRSTNAME_LOCATOR}    id=lblFirstname



#Last name
${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_LASTNAME_TH}    นามสกุล
${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_LASTNAME_EN}    Last name
${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_LASTNAME_LOCATOR}    id=lblLastname



#Phone number
${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_PHONENUMBER_TH}    เบอร์โทร
${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_PHONENUMBER_EN}    Phone number
${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_PHONENUMBER_LOCATOR}    id=lblAssetPhoneNumber



#Active For Projects
${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_ACTIVEFORPROJECTS_TH}    ใช้งานสำหรับ
${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_ACTIVEFORPROJECTS_EN}    Active For Projects
${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_ACTIVEFORPROJECTS_LOCATOR}    id=lblActiveFor


#Checkbox
${EMPLOYEEMANAGEMENTINFORMATION_VIEW_CHECKBOX_LOCATOR}    id=chkProjectName


#Project of Building
${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_PROPERTYNAME_LOCATOR}    id=lblPropertyNameView1
${EMPLOYEEMANAGEMENTINFORMATION_VIEW_CHK_PROPERTYNAME_LOCATOR}    id=chkPropertyNameView1
${EMPLOYEEMANAGEMENTINFORMATION_VIEW_LBL_BUILDINGNAME_LOCATOR}    id=lblBuildingNameView1
${EMPLOYEEMANAGEMENTINFORMATION_VIEW_CHK_BUILDINGNAME_LOCATOR}    id=chkBuildingNameView1



#Property Building 
${EMPLOYEEMANAGEMENTINFORMATION_PROPERTY_TH_VALUE}    SmartRmsCondo B
${EMPLOYEEMANAGEMENTINFORMATION_PROPERTY_EN_VALUE}    SmartRmsCondo B
${EMPLOYEEMANAGEMENTINFORMATION_BUIBING_TH_VALUE}    ศุภากรเพลส
${EMPLOYEEMANAGEMENTINFORMATION_BUIBING_EN_VALUE}    ศุภากรเพลส
@{EMPLOYEEMANAGEMENTINFORMATION_PROPERTYID_VALUE}    8
@{EMPLOYEEMANAGEMENTINFORMATION_BUIBINGID_VALUE}    19


${EMPLOYEEMANAGEMENTINFORMATION_BTN_CLOSE_LOCATOR}    class=ant-modal-close-x

#capture page screenshot
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_M32_0_1_1_000_SUCCESS_SCREENSHOT}    M32_0_1_1_000_EmployeeManagement_Success_Search_VerifyScreen.png
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_M32_1_1_1_000_SUCCESS_SCREENSHOT}    M32_1_1_1_000_EmployeeManagement_Success_Search_VerifyAction.png
${EMPLOYEEMANAGEMENTINFORMATION_SEARCH_M32_1_0_1_000_ERROR_SCREENSHOT}    M32_1_0_1_000_EmployeeManagement_Error_Search_VerifyResultSearchEmployeeManagement.png
#-------------------------------------------- View --------------------------------------------#	
${EMPLOYEEMANAGEMENTINFORMATION_VIEW_M32_0_1_5_000_SUCCESS_SCREENSHOT}    M32_0_1_5_000_EmployeeManagement_Success_View_VerifyScreen.png
${EMPLOYEEMANAGEMENTINFORMATION_VIEW_M32_1_1_5_000_SUCCESS_SCREENSHOT}    M32_1_1_5_000_EmployeeManagement_Success_View_VerifyAction.png
${EMPLOYEEMANAGEMENTINFORMATION_VIEW_M32_1_0_5_000_ERROR_SCREENSHOT}    M32_1_0_5_000_EmployeeManagement_Error_View_VerifyResultAfterClickViewButton.png

#-------------------------------------------- Create --------------------------------------------#	
${EMPLOYEEMANAGEMENTINFORMATION_CREATE_M32_1_0_2_000_SUCCESS_SCREENSHOT}    M32_1_0_2_000_EmployeeManagement_Success_Create_VerifyScreen.png
${EMPLOYEEMANAGEMENTINFORMATION_CREATE_M32_1_1_2_000_SUCCESS_SCREENSHOT}    M32_1_1_2_000_EmployeeManagement_Success_Create_VerifyAction.png
${EMPLOYEEMANAGEMENTINFORMATION_CREATE_M32_0_0_2_000_ERROR_SCREENSHOT}    M32_0_0_2_000_EmployeeManagement_Error_Create_VerifyScreen.png
#-------------------------------------------- Edit --------------------------------------------#	
${EMPLOYEEMANAGEMENTINFORMATION_EDIT_M32_0_1_3_000_SUCCESS_SCREENSHOT}    M32_0_1_3_000_EmployeeManagement_Success_Edit_VerifyScreen.png
${EMPLOYEEMANAGEMENTINFORMATION_EDIT_M32_1_1_3_000_SUCCESS_SCREENSHOT}    M32_1_1_3_000_EmployeeManagement_Success_Edit_VerifyAction.png
${EMPLOYEEMANAGEMENTINFORMATION_EDIT_M32_1_0_3_006_ERROR_SCREENSHOT}    M32_1_0_3_006_EmployeeManagement_Error_Update_VerifyResultAfterClickSaveButton.png
#-------------------------------------------- Delete --------------------------------------------#	
${EMPLOYEEMANAGEMENTINFORMATION_DELETE_M32_0_1_4_000_SUCCESS_SCREENSHOT}    M32_0_1_4_000_EmployeeManagement_Success_Delete_VerifyScreen.png
${EMPLOYEEMANAGEMENTINFORMATION_DELETE_M32_1_1_4_000_SUCCESS_SCREENSHOT}    M32_1_1_4_000_EmployeeManagement_Success_Delete_VerifyAction.png
${EMPLOYEEMANAGEMENTINFORMATION_DELETE_M32_1_0_4_004_ERROR_SCREENSHOT}    M32_1_0_4_004_EmployeeManagement_Error_Delete_VerifyResultAfterClickConfirmButton.png