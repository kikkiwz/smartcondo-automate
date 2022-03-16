*** Variables ***
################################################################-- Building Management --################################################################
#Create button
${BUILDINGMANAGEMENT_BTN_CREATE_TH}    เพิ่ม
${BUILDINGMANAGEMENT_BTN_CREATE_EN}    Create
${BUILDINGMANAGEMENT_BTN_CREATE_LOCATOR}    id=btnCreate

#Download room import format button
${BUILDINGMANAGEMENT_BTN_DOWNLOADROOMIMPORTFORMAT_TH}    ดาวน์โหลดข้อมูลตั้งต้นห้องพัก
${BUILDINGMANAGEMENT_BTN_DOWNLOADROOMIMPORTFORMAT_EN}    Download room import format
${BUILDINGMANAGEMENT_BTN_DOWNLOADROOMIMPORTFORMAT_LOCATOR}    id=btnDownloadRoomInportFormat

#Income code list button
${BUILDINGMANAGEMENT_BTN_INCOMECODELIST_TH}    ข้อมูลรหัสรายได้
${BUILDINGMANAGEMENT_BTN_INCOMECODELIST_EN}    Income code list
${BUILDINGMANAGEMENT_BTN_INCOMECODELIST_LOCATOR}    id=btnViewIncomecode

${BUILDINGMANAGEMENT_LBL_EDIT_TH}    แก้ไข
${BUILDINGMANAGEMENT_LBL_EDIT_EN}    Edit
${BUILDINGMANAGEMENT_LBL_EDIT_TH_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-10"]
${BUILDINGMANAGEMENT_LBL_EDIT_EN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-10"]
${BUILDINGMANAGEMENT_BTN_EDIT_LOCATOR}    id=btnEdit1
${BUILDINGMANAGEMENT_LBL_DELETE_TH}    ลบ
${BUILDINGMANAGEMENT_LBL_DELETE_EN}    Delete
${BUILDINGMANAGEMENT_LBL_DELETE_TH_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-11"]
${BUILDINGMANAGEMENT_LBL_DELETE_EN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-11"]
${BUILDINGMANAGEMENT_BTN_DELETE_LOCATOR}    id=btnDelete1

${BUILDINGMANAGEMENT_BTN_CLOSE_LOCATOR}    class=ant-modal-close-x

${BUILDINGMANAGEMENT_BTN_20}    20
${BUILDINGMANAGEMENT_BTN_20_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[1]/div[1]
${BUILDINGMANAGEMENT_BTN_50}    50
${BUILDINGMANAGEMENT_BTN_50_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[1]/div[2]
${BUILDINGMANAGEMENT_BTN_100}    100
${BUILDINGMANAGEMENT_BTN_100_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[1]/div[3]
${BUILDINGMANAGEMENT_BTN_1000}    1000
${BUILDINGMANAGEMENT_BTN_1000_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[1]/div[4]
${BUILDINGMANAGEMENT_LBL_PagesXFromY_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[2]/div[1]
${BUILDINGMANAGEMENT_ICON_ARRORWLEFT_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[2]/div[2]
${BUILDINGMANAGEMENT_LBL_PAGE_1}    1
${BUILDINGMANAGEMENT_LBL_PAGE_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[2]/div[3]
${BUILDINGMANAGEMENT_ICON_ARRORWRIGHT_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[2]/div[4]

${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td[2]

#-------------------------------------------- Search Building Management --------------------------------------------#
############## Header ############## 
#Building Management
${BUILDINGMANAGEMENT_SEARCH_LBL_INCOMECODEMANAGEMENT_TH}    จัดการอาคาร 
${BUILDINGMANAGEMENT_SEARCH_LBL_INCOMECODEMANAGEMENT_EN}    Building Management
${BUILDINGMANAGEMENT_SEARCH_LBL_INCOMECODEMANAGEMENT_LOCATOR}    id=lblBuildingManagementPage

#Building name
${BUILDINGMANAGEMENT_SEARCH_LBL_BUILDINGNAME_TH}    ชื่ออาคาร
${BUILDINGMANAGEMENT_SEARCH_LBL_BUILDINGNAME_EN}    Building name
${BUILDINGMANAGEMENT_SEARCH_LBL_BUILDINGNAME_LOCATOR}    id=lblBuildingNameSearch
# ${BUILDINGMANAGEMENT_SEARCH_INPUT_BUILDINGNAME_LOCATOR}    id=input_txtBuildingNameSearch
${BUILDINGMANAGEMENT_SEARCH_TXT_BUILDINGNAME_LOCATOR}    id=txtBuildingNameSearch

#Search
${BUILDINGMANAGEMENT_SEARCH_BTN_SEARCH_TH}    ค้นหา
${BUILDINGMANAGEMENT_SEARCH_BTN_SEARCH_EN}    Search
${BUILDINGMANAGEMENT_SEARCH_BTN_SEARCH_LOCATOR}    id=btnSearch
#Clear
${BUILDINGMANAGEMENT_SEARCH_BTN_CLEAR_TH}    คืนค่า
${BUILDINGMANAGEMENT_SEARCH_BTN_CLEAR_EN}    Clear
${BUILDINGMANAGEMENT_SEARCH_BTN_CLEAR_LOCATOR}    id=btnClear

############################ 
############## Table ############## 
#No
${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_NO_TH}    ลำดับ
${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_NO_EN}    No.
${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_NO_LOCATOR}    id=dx-col-5
#Building name
${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_BUILDINGNAME_TH}    ชื่ออาคาร
${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_BUILDINGNAME_EN}    Building name
${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_BUILDINGNAME_LOCATOR}    id=dx-col-6
#Phone number
${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_PHONENUMBER_TH}    เบอร์โทรศัพท์
${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_PHONENUMBER_EN}    Phone number
${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_PHONENUMBER_LOCATOR}    id=dx-col-7
#No Data
${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_NODATA_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[6]/span
#For check value table 
${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_DATA_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[row]/td[col]
${BUILDINGMANAGEMENT_SEARCH_NUMCOL}    3
@{BUILDINGMANAGEMENT_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_TH}    no    buildingNameTh    phone
@{BUILDINGMANAGEMENT_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_EN}    no    buildingNameEn    phone

############################ 
#-------------------------------------------- Incomecode list --------------------------------------------#
#Incomecode list
${BUILDINGMANAGEMENT_INCOMECODE_LBL_INCOMECODELIST_TH}    ข้อมูลรหัสรายได้
${BUILDINGMANAGEMENT_INCOMECODE_LBL_INCOMECODELIST_EN}    Incomecode
${BUILDINGMANAGEMENT_INCOMECODE_LBL_INCOMECODELIST_LOCATOR}    id=lblIncomecodeList
############## Table ############## 
#IncomeCode
${BUILDINGMANAGEMENT_INCOMECODE_SEARCH_LBL_RESULT_INCOMECODE_TH}    รหัสรายได้
${BUILDINGMANAGEMENT_INCOMECODE_SEARCH_LBL_RESULT_INCOMECODE_EN}    Incomecode
${BUILDINGMANAGEMENT_INCOMECODE_SEARCH_LBL_RESULT_INCOMECODE_LOCATOR}    id=dx-col-12
#Name
${BUILDINGMANAGEMENT_INCOMECODE_SEARCH_LBL_RESULT_INCOMENAME_TH}    ชื่อ
${BUILDINGMANAGEMENT_INCOMECODE_SEARCH_LBL_RESULT_INCOMENAME_EN}    Name
${BUILDINGMANAGEMENT_INCOMECODE_SEARCH_LBL_RESULT_INCOMENAME_LOCATOR}    id=dx-col-13

${BUILDINGMANAGEMENT_BTN_COPY_LOCATOR}    id=btnCopy1
#No Data
# ${BUILDINGMANAGEMENT_INCOMECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[6]/span
#For check value table 
${BUILDINGMANAGEMENT_INCOMECODE_SEARCH_LBL_RESULT_DATA_LOCATOR}    xpath=//*[@id="incomeCodeListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[row]/td[col]
${BUILDINGMANAGEMENT_INCOMECODE_SEARCH_NUMCOL}    4
@{BUILDINGMANAGEMENT_INCOMECODE_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_TH}    incomeCode    incomeNameTh
@{BUILDINGMANAGEMENT_INCOMECODE_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_EN}    incomeCode    incomeNameEn
############################ 
#-------------------------------------------- Create building --------------------------------------------#
#Create building
${BUILDINGMANAGEMENT_ADD_LBL_CREATEBUILDING_TH}    เพิ่มอาคาร 
${BUILDINGMANAGEMENT_ADD_LBL_CREATEBUILDING_EN}    Create building
${BUILDINGMANAGEMENT_ADD_LBL_CREATEBUILDING_LOCATOR}    id=CreateIncomecode

#Building name (Thai) *
${BUILDINGMANAGEMENT_ADD_LBL_BUILDINGNAMETH_TH}    ชื่ออาคาร ภาษาไทย
${BUILDINGMANAGEMENT_ADD_LBL_BUILDINGNAMETH_EN}    Building name (Thai)
${BUILDINGMANAGEMENT_ADD_LBL_BUILDINGNAMETH_LOCATOR}    id=lblBuildingNameTh
${BUILDINGMANAGEMENT_ADD_LBL_BUILDINGNAMETH_VALID_LOCATOR}    id=lblBuildingNameThValid
${BUILDINGMANAGEMENT_ADD_TXT_BUILDINGNAMETH_LOCATOR}    id=txtBuildingNameTh
${BUILDINGMANAGEMENT_ADD_INPUT_BUILDINGNAMETH_LOCATOR}    id=input_txtBuildingNameTh
#Building name (English)
${BUILDINGMANAGEMENT_ADD_LBL_BUILDINGNAMEEN_TH}    ชื่ออาคาร ภาษาอังกฤษ
${BUILDINGMANAGEMENT_ADD_LBL_BUILDINGNAMEEN_EN}    Building name (English)
${BUILDINGMANAGEMENT_ADD_LBL_BUILDINGNAMEEN_LOCATOR}    id=lblBuildingNameEn
${BUILDINGMANAGEMENT_ADD_TXT_BUILDINGNAMEEN_LOCATOR}    id=txtBuildingNameEn
${BUILDINGMANAGEMENT_ADD_INPUT_BUILDINGNAMEEN_LOCATOR}    id=input_txtBuildingNameEn
#Phone number
${BUILDINGMANAGEMENT_ADD_LBL_PHONENUMBER_TH}    เบอร์โทรศัพท์
${BUILDINGMANAGEMENT_ADD_LBL_PHONENUMBER_EN}    Phone number
${BUILDINGMANAGEMENT_ADD_LBL_PHONENUMBER_LOCATOR}    id=lblPhoneNumber
${BUILDINGMANAGEMENT_ADD_LBL_PHONENUMBER_VALID_LOCATOR}    id=lblPhoneNumberValid
${BUILDINGMANAGEMENT_ADD_TXT_PHONENUMBER_LOCATOR}    id=txtPhoneNumber1
${BUILDINGMANAGEMENT_ADD_INPUT_PHONENUMBER_LOCATOR}    id=input_txtPhoneNumber1
${BUILDINGMANAGEMENT_ADD_BTN_ADDPHONENUMBER_LOCATOR}    id=btnAddPhoneNumber1
${BUILDINGMANAGEMENT_ADD_BTN_DELETEPHONENUMBER_LOCATOR}    id=btnDeletePhoneNumber1
#Remark 
${BUILDINGMANAGEMENT_ADD_LBL_REMARK_TH}    หมายเหตุ
${BUILDINGMANAGEMENT_ADD_LBL_REMARK_EN}    Remark
${BUILDINGMANAGEMENT_ADD_LBL_REMARK_LOCATOR}    id=lblRemark
${BUILDINGMANAGEMENT_ADD_TXTAREA_REMARK_LOCATOR}    id=txtareaRemark
${BUILDINGMANAGEMENT_ADD_INPUT_REMARK_LOCATOR}    id=input_txtareaRemark

#Number of remaining rooms
${BUILDINGMANAGEMENT_ADD_LBL_NUMBEROFREMAININGROOMS_TH}    จำนวนห้องที่สามารถสร้างได้
${BUILDINGMANAGEMENT_ADD_LBL_NUMBEROFREMAININGROOMS_EN}    Number of remaining rooms
${BUILDINGMANAGEMENT_ADD_LBL_NUMBEROFREMAININGROOMS_LOCATOR}    id=lblRemark
#Remark : Please contact 02-026-1911. If you would like to create more rooms than are allowed.
${BUILDINGMANAGEMENT_ADD_LBL_REMARK_PLEASECONTACT_TH}    หมายเหตุ : ถ้าหากท่านต้องการสร้างห้องมากกว่าจำนวนห้องที่สามารถสร้างได้ กรุณาติดต่อ 02-026-1911
${BUILDINGMANAGEMENT_ADD_LBL_REMARK_PLEASECONTACT_EN}    Remark : Please contact 02-026-1911. If you would like to create more rooms than are allowed.
${BUILDINGMANAGEMENT_ADD_LBL_REMARK_PLEASECONTACT_LOCATOR}    id=lblRemarkPleaseContact
#Upload room data 
${BUILDINGMANAGEMENT_ADD_LBL_UPLOADROOMDATA_TH}    อัพโหลดข้อมูลห้อง
${BUILDINGMANAGEMENT_ADD_LBL_UPLOADROOMDATA_EN}    Upload room data
${BUILDINGMANAGEMENT_ADD_LBL_UPLOADROOMDATA_LOCATOR}    id=btnUploadRoomData
${BUILDINGMANAGEMENT_ADD_INPUT_UPLOADROOMDATA_LOCATOR}    id=uploadCaptureInputFileTh
#File should be .xlx or .xlxs
${BUILDINGMANAGEMENT_ADD_LBL_FILESHOULDBEXLXORXLXS_TH}    สามารถอัพโหลดไฟล์ .xlx .xlxs เท่านั้น
${BUILDINGMANAGEMENT_ADD_LBL_FILESHOULDBEXLXORXLXS_EN}    File should be .xlx or .xlxs
${BUILDINGMANAGEMENT_ADD_LBL_FILESHOULDBEXLXORXLXS_LOCATOR}    id=lblUploadRemark
#* File should be .xlx or .xlxs
${BUILDINGMANAGEMENT_ADD_LBL_REMARK_TH}    * นามสกุลไฟล์ไม่ใช่ .xlx หรือ .xlxs
${BUILDINGMANAGEMENT_ADD_LBL_REMARK_EN}    * File should be .xlx or .xlxs
${BUILDINGMANAGEMENT_ADD_LBL_REMARK_LOCATOR}    id=lblRemark
#* The file format is not valid. Please download room import format from building list page
${BUILDINGMANAGEMENT_ADD_LBL_REMARK_TH}    * รูปแบบไฟล์ไม่ถูกต้อง กรุณาดาวน์โหลดข้อมูลตั้งต้นห้องพัก จากหน้ารายการอาคาร
${BUILDINGMANAGEMENT_ADD_LBL_REMARK_EN}    * The file format is not valid. Please download room import format from building list page
${BUILDINGMANAGEMENT_ADD_LBL_REMARK_LOCATOR}    id=lblRemark
#-------------------------------------------- Edit Incomecode --------------------------------------------#
#Edit Incomecode
${BUILDINGMANAGEMENT_EDIT_LBL_EDITINCOMECODE_TH}    แก้ไขจัดการรหัสรายได้
${BUILDINGMANAGEMENT_EDIT_LBL_EDITINCOMECODE_EN}    Edit Incomecode
${BUILDINGMANAGEMENT_EDIT_LBL_EDITINCOMECODE_LOCATOR}    id=lblEditIncomecode

#Incomecode NameTh *
${BUILDINGMANAGEMENT_EDIT_LBL_BUILDINGNAMETH_TH}    ชื่อรายได้ ภาษาไทย
${BUILDINGMANAGEMENT_EDIT_LBL_BUILDINGNAMETH_EN}    Incomecode NameTh
${BUILDINGMANAGEMENT_EDIT_LBL_BUILDINGNAMETH_LOCATOR}    id=lblIncomecodeNameThEdit
${BUILDINGMANAGEMENT_EDIT_LBL_BUILDINGNAMETH_VALID_LOCATOR}    id=lblIncomecodeNameThEditValid
${BUILDINGMANAGEMENT_EDIT_TXT_BUILDINGNAMETH_LOCATOR}    id=txtIncomecodeNameThEdit
#Incomecode NameEn
${BUILDINGMANAGEMENT_EDIT_LBL_BUILDINGNAMEEN_TH}    ชื่อรายได้ ภาษาอังกฤษ
${BUILDINGMANAGEMENT_EDIT_LBL_BUILDINGNAMEEN_EN}    Incomecode NameEn
${BUILDINGMANAGEMENT_EDIT_LBL_BUILDINGNAMEEN_LOCATOR}    id=lblIncomecodeNameEnEdit
${BUILDINGMANAGEMENT_EDIT_TXT_BUILDINGNAMEEN_LOCATOR}    id=txtIncomecodeNameEnEdit
#Incomecode *
${BUILDINGMANAGEMENT_EDIT_LBL_INCOMECODE_TH}    รหัสรายได้
${BUILDINGMANAGEMENT_EDIT_LBL_INCOMECODE_EN}    Income code
${BUILDINGMANAGEMENT_EDIT_LBL_INCOMECODE_LOCATOR}    id=lblIncomecodeEdit
${BUILDINGMANAGEMENT_EDIT_LBL_INCOMECODE_VALID_LOCATOR}    id=lblIncomecodeEditValid
${BUILDINGMANAGEMENT_EDIT_TXT_INCOMECODE_LOCATOR}    id=txtIncomecodeEdit
#Status *
${BUILDINGMANAGEMENT_EDIT_LBL_STATUS_TH}    สถานะ
${BUILDINGMANAGEMENT_EDIT_LBL_STATUS_EN}    Status
${BUILDINGMANAGEMENT_EDIT_LBL_STATUS_LOCATOR}    id=lblStatusEdit
${BUILDINGMANAGEMENT_EDIT_LBL_STATUS_VALID_LOCATOR}    id=lblStatusEditValid
${BUILDINGMANAGEMENT_EDIT_LBL_STATUS_PLACEHOLDER_VALUE}    1
${BUILDINGMANAGEMENT_EDIT_LBL_STATUS_PLACEHOLDER_LOCATOR}    css=#ddlStatus div[class="dx-placeholder dx-state-invisible"]
${BUILDINGMANAGEMENT_EDIT_TXT_STATUS_LOCATOR}    xpath=//*[@id="ddlStatusEdit"]/nz-select-top-control/nz-select-search/input
${BUILDINGMANAGEMENT_EDIT_DDL_STATUS_LOCATOR}    id=ddlStatusEdit
${BUILDINGMANAGEMENT_EDIT_DDL_STATUS_LIST_LOCATOR}    xpath=/html/body/div/div[3]/div/nz-option-container/div/cdk-virtual-scroll-viewport/div[1]/nz-option-item[replace_indexList]/div/span
${BUILDINGMANAGEMENT_EDIT_DDL_STATUS_CLASS_LOCATOR}    class=ant-select-item-option-content
@{BUILDINGMANAGEMENT_EDIT_DDL_STATUS_TH_VALUE}    ไม่ใช้งาน    ใช้งาน
@{BUILDINGMANAGEMENT_EDIT_DDL_STATUS_EN_VALUE}    Inactive    Active
#Group Type *
${BUILDINGMANAGEMENT_EDIT_LBL_GROUPTYPE_TH}    ประเภทกลุ่มรหัส
${BUILDINGMANAGEMENT_EDIT_LBL_GROUPTYPE_EN}    Group Type
${BUILDINGMANAGEMENT_EDIT_LBL_GROUPTYPE_LOCATOR}    id=lblGroupTypeEdit
${BUILDINGMANAGEMENT_EDIT_LBL_GROUPTYPE_VALID_LOCATOR}    id=lblGroupTypeEditValid
${BUILDINGMANAGEMENT_EDIT_LBL_GROUPTYPE_PLACEHOLDER_LOCATOR}    css=#ddlGroupTypeEdit div[class="dx-placeholder"]
${BUILDINGMANAGEMENT_EDIT_TXT_GROUPTYPE_LOCATOR}    xpath=//*[@id="ddlGroupTypeEdit"]/nz-select-top-control/nz-select-search/input
${BUILDINGMANAGEMENT_EDIT_TXT_GROUPTYPE_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlGroupTypeEdit"]/div[2]/div/div
${BUILDINGMANAGEMENT_EDIT_DDL_GROUPTYPE_LOCATOR}    id=ddlGroupTypeEdit
# ${BUILDINGMANAGEMENT_EDIT_DDL_GROUPTYPE_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${BUILDINGMANAGEMENT_EDIT_DDL_GROUPTYPE_LIST_LOCATOR}    xpath=/html/body/div/div[3]/div/nz-option-container/div/cdk-virtual-scroll-viewport/div[1]/nz-option-item[replace_indexList]/div/span
${BUILDINGMANAGEMENT_EDIT_DDL_GROUPTYPE_CLASS_LOCATOR}    class=ant-select-item-option-content
#Price Per Unit *
${BUILDINGMANAGEMENT_EDIT_LBL_PRICEPERUNIT_TH}    ราคาต่อหน่วย
${BUILDINGMANAGEMENT_EDIT_LBL_PRICEPERUNIT_EN}    Price Per Unit
${BUILDINGMANAGEMENT_EDIT_LBL_PRICEPERUNIT_LOCATOR}    id=lblPricePerUnitEdit
${BUILDINGMANAGEMENT_EDIT_LBL_PRICEPERUNIT_VALID_LOCATOR}    id=lblPricePerUnitEditValid
${BUILDINGMANAGEMENT_EDIT_TXT_PRICEPERUNIT_LOCATOR}    id=txtPricePerUnitEdit
${BUILDINGMANAGEMENT_EDIT_INPUT_PRICEPERUNIT_LOCATOR}    id=input_txtPricePerUnitEdit
#Calculation type (every specified month)
${BUILDINGMANAGEMENT_EDIT_LBL_CALCULATIONTYPE_TH}    ประเภทการคำนวณ (ทุกเดือนที่กำหนด)
${BUILDINGMANAGEMENT_EDIT_LBL_CALCULATIONTYPE_EN}    Calculation type (every specified month)
${BUILDINGMANAGEMENT_EDIT_LBL_CALCULATIONTYPE_LOCATOR}    id=lblCalculationtypeEdit
# ${BUILDINGMANAGEMENT_EDIT_LBL_CALCULATIONTYPE_VALID_LOCATOR}    id=lblCalculationtypeEditValid
${BUILDINGMANAGEMENT_EDIT_LBL_CALCULATIONTYPE_PLACEHOLDER_LOCATOR}    css=#ddlCalculationtypeEdit div[class="dx-placeholder"]
${BUILDINGMANAGEMENT_EDIT_TXT_CALCULATIONTYPE_LOCATOR}    xpath=//*[@id="ddlCalculationtypeEdit"]/nz-select-top-control/nz-select-search/input
${BUILDINGMANAGEMENT_EDIT_TXT_CALCULATIONTYPE_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlMulctMethodId"]/div[2]/div/div
${BUILDINGMANAGEMENT_EDIT_DDL_CALCULATIONTYPE_LOCATOR}    id=ddlCalculationtypeEdit
# ${BUILDINGMANAGEMENT_EDIT_DDL_CALCULATIONTYPE_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${BUILDINGMANAGEMENT_EDIT_DDL_CALCULATIONTYPE_LIST_LOCATOR}    xpath=/html/body/div/div[3]/div/nz-option-container/div/cdk-virtual-scroll-viewport/div[1]/nz-option-item[replace_indexList]/div/span
${BUILDINGMANAGEMENT_EDIT_DDL_CALCULATIONTYPE_CLASS_LOCATOR}    class=ant-select-item-option-content
#Payment Order *
${BUILDINGMANAGEMENT_EDIT_LBL_PAYMENTORDER_TH}    ลำดับชำระเงิน
${BUILDINGMANAGEMENT_EDIT_LBL_PAYMENTORDER_EN}    Payment Order
${BUILDINGMANAGEMENT_EDIT_LBL_PAYMENTORDER_LOCATOR}    id=lblPaymentOrderEdit
${BUILDINGMANAGEMENT_EDIT_LBL_PAYMENTORDER_VALID_LOCATOR}    id=lblPaymentOrderEditValid
${BUILDINGMANAGEMENT_EDIT_TXT_PAYMENTORDER_LOCATOR}    id=txtPaymentOrderEdit
${BUILDINGMANAGEMENT_EDIT_INPUT_PAYMENTORDER_LOCATOR}    id=input_txtPaymentOrderEdit
#Calculation Method *
${BUILDINGMANAGEMENT_EDIT_LBL_CALCULATIONMETHOD_TH}    การคำนวณ
${BUILDINGMANAGEMENT_EDIT_LBL_CALCULATIONMETHOD_EN}    Calculation Method
${BUILDINGMANAGEMENT_EDIT_LBL_CALCULATIONMETHOD_LOCATOR}    id=lblCalculationMethodEdit
${BUILDINGMANAGEMENT_EDIT_LBL_CALCULATIONMETHOD_VALID_LOCATOR}    id=lblCalculationMethodValid
${BUILDINGMANAGEMENT_EDIT_LBL_CALCULATIONMETHOD_PLACEHOLDER_LOCATOR}    css=#ddlCalculationMethodEdit div[class="dx-placeholder"]
${BUILDINGMANAGEMENT_EDIT_TXT_CALCULATIONMETHOD_LOCATOR}    id=//*[@id="ddlCalculationMethodEdit"]/nz-select-top-control/nz-select-search/input
${BUILDINGMANAGEMENT_EDIT_TXT_CALCULATIONMETHOD_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlCalculationMethodEdit"]/div[2]/div/div
${BUILDINGMANAGEMENT_EDIT_DDL_CALCULATIONMETHOD_LOCATOR}    id=ddlCalculationMethodEdit
# ${BUILDINGMANAGEMENT_EDIT_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${BUILDINGMANAGEMENT_EDIT_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    xpath=/html/body/div/div[3]/div/nz-option-container/div/cdk-virtual-scroll-viewport/div[1]/nz-option-item[replace_indexList]/div/span
${BUILDINGMANAGEMENT_EDIT_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    class=ant-select-item-option-content
#Minimum Unit *
${BUILDINGMANAGEMENT_EDIT_LBL_MINIMUMUNIT_TH}    ขั้นต่ำจำนวนหน่วย
${BUILDINGMANAGEMENT_EDIT_LBL_MINIMUMUNIT_EN}    Minimum Unit
${BUILDINGMANAGEMENT_EDIT_LBL_MINIMUMUNIT_LOCATOR}    id=lblMinimumUnitEdit
${BUILDINGMANAGEMENT_EDIT_LBL_MINIMUMUNIT_VALID_LOCATOR}    id=lblMinimumUnitEditValid
${BUILDINGMANAGEMENT_EDIT_TXT_MINIMUMUNIT_LOCATOR}    id=txtMinimumUnitEdit
${BUILDINGMANAGEMENT_EDIT_INPUT_MINIMUMUNIT_LOCATOR}    id=input_txtMinimumUnit
#Minimum Price *
${BUILDINGMANAGEMENT_EDIT_LBL_MINIMUMPRICE_TH}    ขั้นต่ำจำนวนเงิน
${BUILDINGMANAGEMENT_EDIT_LBL_MINIMUMPRICE_EN}    Minimum Price
${BUILDINGMANAGEMENT_EDIT_LBL_MINIMUMPRICE_LOCATOR}    id=lblMinimumPriceEdit
${BUILDINGMANAGEMENT_EDIT_LBL_MINIMUMPRICE_VALID_LOCATOR}    id=lblMinimumPriceEditValid
${BUILDINGMANAGEMENT_EDIT_TXT_MINIMUMPRICE_LOCATOR}    id=txtMinimumPriceEdit
${BUILDINGMANAGEMENT_EDIT_INPUT_MINIMUMPRICE_LOCATOR}    id=input_txtMinimumPriceEdit
#Vat.(%) *
${BUILDINGMANAGEMENT_EDIT_LBL_VAT_TH}    ภาษีมูลค่าเพิ่ม (%)
${BUILDINGMANAGEMENT_EDIT_LBL_VAT_EN}    Vat.(%)
${BUILDINGMANAGEMENT_EDIT_LBL_VAT_LOCATOR}    id=lblVatEdit
${BUILDINGMANAGEMENT_EDIT_LBL_VAT_VALID_LOCATOR}    id=lblVatEditValid
${BUILDINGMANAGEMENT_EDIT_INPUT_VAT_LOCATOR}    id=input_txtVatEdit
${BUILDINGMANAGEMENT_EDIT_TXT_VAT_LOCATOR}    id=txtVatEdit
${BUILDINGMANAGEMENT_EDIT_TXT_VAT_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="txtAccountPromptPayNumber"]/div[2]/div/div
#Tax.(%) *
${BUILDINGMANAGEMENT_EDIT_LBL_TAX_TH}    ภาษีถูกหัก ณ ที่จ่าย (%)
${BUILDINGMANAGEMENT_EDIT_LBL_TAX_EN}    Tax.(%)
${BUILDINGMANAGEMENT_EDIT_LBL_TAX_LOCATOR}    id=lblTaxEdit
${BUILDINGMANAGEMENT_EDIT_LBL_TAX_VALID_LOCATOR}    id=lblTaxEditValid
${BUILDINGMANAGEMENT_EDIT_INPUT_TAX_LOCATOR}    id=input_txtTaxEdit
${BUILDINGMANAGEMENT_EDIT_TXT_TAX_LOCATOR}    id=txtTaxEdit
${BUILDINGMANAGEMENT_EDIT_TXT_TAX_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="txtAccountPromptPayNumber"]/div[2]/div/div
#Charge a mulct *
${BUILDINGMANAGEMENT_EDIT_LBL_CHAGEAMULCT_TH}    คิดค่าปรับ
${BUILDINGMANAGEMENT_EDIT_LBL_CHAGEAMULCT_EN}    Charge a mulct
${BUILDINGMANAGEMENT_EDIT_LBL_CHAGEAMULCT_LOCATOR}    id=lblChargeAMulctEdit
${BUILDINGMANAGEMENT_EDIT_LBL_CHAGEAMULCT_NOPENALTYCHARGE_TH}    ไม่คิดค่าปรับ
${BUILDINGMANAGEMENT_EDIT_LBL_CHAGEAMULCT_NOPENALTYCHARGE_EN}    No penalty charge
${BUILDINGMANAGEMENT_EDIT_LBL_CHAGEAMULCT_NOPENALTYCHARGE_LOCATOR}    xpath=//*[@id="rdlChargeAMulctEdit"]/div/div[1]/div[2]
${BUILDINGMANAGEMENT_EDIT_RDL_CHAGEAMULCT_NOPENALTYCHARGE_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/form/div/div[7]/div/div/dx-radio-group/div/div[1]/div[1]/div/div
${BUILDINGMANAGEMENT_EDIT_LBL_CHAGEAMULCT_CHARGEAFINE_TH}    คิดค่าปรับ 
${BUILDINGMANAGEMENT_EDIT_LBL_CHAGEAMULCT_CHARGEAFINE_EN}    Charge a fine
${BUILDINGMANAGEMENT_EDIT_LBL_CHAGEAMULCT_CHARGEAFINE_LOCATOR}    xpath=//*[@id="rdlChargeAMulctEdit"]/div/div[2]/div[2]
${BUILDINGMANAGEMENT_EDIT_RDL_CHAGEAMULCT_CHARGEAFINE_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/form/div/div[7]/div/div/dx-radio-group/div/div[2]/div[1]/div
${BUILDINGMANAGEMENT_EDIT_LBL_CHAGEAMULCT_VALID_LOCATOR}    id=lblChargeAMulctEditValid
${BUILDINGMANAGEMENT_EDIT_RDL_CHAGEAMULCT_LOCATOR}    id=rdlChargeAMulctEdit
#Mulctcode *
${BUILDINGMANAGEMENT_EDIT_LBL_MULCTCODE_TH}    รหัสค่าปรับ
${BUILDINGMANAGEMENT_EDIT_LBL_MULCTCODE_EN}    Mulctcode
${BUILDINGMANAGEMENT_EDIT_LBL_MULCTCODE_LOCATOR}    id=lblMulctcodeEdit
${BUILDINGMANAGEMENT_EDIT_LBL_MULCTCODE_VALID_LOCATOR}    id=lblMulctCodeEditValid
${BUILDINGMANAGEMENT_EDIT_LBL_MULCTCODE_PLACEHOLDER_LOCATOR}    css=#ddlMulctcodeEdit div[class="dx-placeholder"]
${BUILDINGMANAGEMENT_EDIT_TXT_MULCTCODE_LOCATOR}    id=//*[@id="ddlMulctcodeEdit"]/nz-select-top-control/nz-select-search/input
${BUILDINGMANAGEMENT_EDIT_TXT_MULCTCODE_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlMulctcodeEdit"]/div[2]/div/div
${BUILDINGMANAGEMENT_EDIT_DDL_MULCTCODE_LOCATOR}    id=ddlMulctcodeEdit
# ${BUILDINGMANAGEMENT_EDIT_DDL_MULCTCODE_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${BUILDINGMANAGEMENT_EDIT_DDL_MULCTCODE_LIST_LOCATOR}    xpath=/html/body/div/div[3]/div/nz-option-container/div/cdk-virtual-scroll-viewport/div[replace_indexList]/nz-option-item/div/span
${BUILDINGMANAGEMENT_EDIT_DDL_MULCTCODE_CLASS_LOCATOR}    class=ant-select-item-option-content
#Remark 
${BUILDINGMANAGEMENT_EDIT_LBL_REMARK_TH}    หมายเหตุ
${BUILDINGMANAGEMENT_EDIT_LBL_REMARK_EN}    Remark
${BUILDINGMANAGEMENT_EDIT_LBL_REMARK_LOCATOR}    id=lblRemarkEdit
${BUILDINGMANAGEMENT_EDIT_TXTAREA_REMARK_LOCATOR}    id=txtareaRemarkEdit

#Cancel
${BUILDINGMANAGEMENT_ADDEDIT_BTN_CANCEL_TH}    ยกเลิก
${BUILDINGMANAGEMENT_ADDEDIT_BTN_CANCEL_EN}    Cancel
${BUILDINGMANAGEMENT_ADDEDIT_BTN_CANCEL_LOCATOR}    id=btnCancel
#Save
${BUILDINGMANAGEMENT_ADDEDIT_BTN_SAVE_TH}    บันทึก
${BUILDINGMANAGEMENT_ADDEDIT_BTN_SAVE_EN}    Save
${BUILDINGMANAGEMENT_ADDEDIT_BTN_SAVE_LOCATOR}    id=btnSave

# #-------------------------------------------- View Incomecode --------------------------------------------#
# #Incomecode Details
# ${BUILDINGMANAGEMENT_VIEW_LBL_INCOMECODEDETAILS_TH}    ดูรายละเอียดรหัสรายได้ 
# ${BUILDINGMANAGEMENT_VIEW_LBL_INCOMECODEDETAILS_EN}    Incomecode Details
# ${BUILDINGMANAGEMENT_VIEW_LBL_INCOMECODEDETAILS_LOCATOR}    id=lblIncomecodeDetails
# #Incomecode NameTh
# ${BUILDINGMANAGEMENT_VIEW_LBL_INCOMECODENAMETH_TH}    ชื่อรายได้ ภาษาไทย
# ${BUILDINGMANAGEMENT_VIEW_LBL_INCOMECODENAMETH_EN}    Incomecode NameTh
# ${BUILDINGMANAGEMENT_VIEW_LBL_INCOMECODENAMETH_LOCATOR}    id=lblIncomecodeNameThView
# ${BUILDINGMANAGEMENT_VIEW_LBD_INCOMECODENAMETH_LOCATOR}    id=lbdIncomecodeNameThView
# #Incomecode NameEn
# ${BUILDINGMANAGEMENT_VIEW_LBL_BUILDINGNAMEEN_TH}    ชื่อรายได้ ภาษาอังกฤษ
# ${BUILDINGMANAGEMENT_VIEW_LBL_BUILDINGNAMEEN_EN}    Incomecode NameEn
# ${BUILDINGMANAGEMENT_VIEW_LBL_BUILDINGNAMEEN_LOCATOR}    id=lblIncomecodeNameEnView
# ${BUILDINGMANAGEMENT_VIEW_LBD_BUILDINGNAMEEN_LOCATOR}    id=lbdIncomecodeNameEnView
# #Income code
# ${BUILDINGMANAGEMENT_VIEW_LBL_INCOMECODE_TH}    รหัสรายได้
# ${BUILDINGMANAGEMENT_VIEW_LBL_INCOMECODE_EN}    Income code
# ${BUILDINGMANAGEMENT_VIEW_LBL_INCOMECODE_LOCATOR}    id=lblIncomeCodeView
# ${BUILDINGMANAGEMENT_VIEW_LBD_INCOMECODE_LOCATOR}    id=lbdIncomeCodeView
# #Status
# ${BUILDINGMANAGEMENT_VIEW_LBL_STATUS_TH}    สถานะ
# ${BUILDINGMANAGEMENT_VIEW_LBL_STATUS_EN}    Status
# ${BUILDINGMANAGEMENT_VIEW_LBL_STATUS_LOCATOR}    id=lblStatusView
# ${BUILDINGMANAGEMENT_VIEW_LBD_STATUS_LOCATOR}    id=lbdStatusView
# #Group Type
# ${BUILDINGMANAGEMENT_VIEW_LBL_GROUPTYPE_TH}    ประเภทกลุ่มรหัส
# ${BUILDINGMANAGEMENT_VIEW_LBL_GROUPTYPE_EN}    Group Type
# ${BUILDINGMANAGEMENT_VIEW_LBL_GROUPTYPE_LOCATOR}    id=lblGroupTypeView
# ${BUILDINGMANAGEMENT_VIEW_LBD_GROUPTYPE_LOCATOR}    id=lbdGroupTypeView
# #Price Per Unit
# ${BUILDINGMANAGEMENT_VIEW_LBL_PRICEPERUNIT_TH}    ราคาต่อหน่วย
# ${BUILDINGMANAGEMENT_VIEW_LBL_PRICEPERUNIT_EN}    Price Per Unit
# ${BUILDINGMANAGEMENT_VIEW_LBL_PRICEPERUNIT_LOCATOR}    id=lblPricePerUnitView
# ${BUILDINGMANAGEMENT_VIEW_LBD_PRICEPERUNIT_LOCATOR}    id=lbdPricePerUnitView
# #Calculation Type (every specified month)
# ${BUILDINGMANAGEMENT_VIEW_LBL_GROUPTYPE_TH}    ประเภทการคำนวณ (ทุกเดือนที่กำหนด)
# ${BUILDINGMANAGEMENT_VIEW_LBL_GROUPTYPE_EN}    Calculation Type (every specified month)
# ${BUILDINGMANAGEMENT_VIEW_LBL_GROUPTYPE_LOCATOR}    id=lblCalculationTypeView
# ${BUILDINGMANAGEMENT_VIEW_LBD_GROUPTYPE_LOCATOR}    id=lbdCalculationTypeView
# #Calculation Method
# ${BUILDINGMANAGEMENT_VIEW_LBL_CALCULATIONMETHOD_TH}    การคำนวณ
# ${BUILDINGMANAGEMENT_VIEW_LBL_MULCTMETHOD_EN}    Calculation Method
# ${BUILDINGMANAGEMENT_VIEW_LBL_MULCTMETHOD_LOCATOR}    id=lblCalulationMethodView
# ${BUILDINGMANAGEMENT_VIEW_LBD_MULCTMETHOD_LOCATOR}    id=lbdCalulationMethodView
# #Payment Order 
# ${BUILDINGMANAGEMENT_VIEW_LBL_PAYMENTORDER_TH}    ลำดับชำระเงิน
# ${BUILDINGMANAGEMENT_VIEW_LBL_PAYMENTORDER_EN}    Payment Order 
# ${BUILDINGMANAGEMENT_VIEW_LBL_PAYMENTORDER_LOCATOR}    id=lblPaymentOrderView
# ${BUILDINGMANAGEMENT_VIEW_LBD_PAYMENTORDER_LOCATOR}    id=lbdPaymentOrderView
# #Minimum Unit
# ${BUILDINGMANAGEMENT_VIEW_LBL_MINIMUMUNIT_TH}    ขั้นต่ำจำนวนหน่วย
# ${BUILDINGMANAGEMENT_VIEW_LBL_MINIMUMUNIT_EN}    Minimum Unit
# ${BUILDINGMANAGEMENT_VIEW_LBL_MINIMUMUNIT_LOCATOR}    id=lblMinimumUnitView
# ${BUILDINGMANAGEMENT_VIEW_LBD_MINIMUMUNIT_LOCATOR}    id=lbdMinimumUnitView
# #Minimum Price
# ${BUILDINGMANAGEMENT_VIEW_LBL_MINIMUMPRICE_TH}    ขั้นต่ำจำนวนเงิน
# ${BUILDINGMANAGEMENT_VIEW_LBL_MINIMUMPRICE_EN}    Minimum Price
# ${BUILDINGMANAGEMENT_VIEW_LBL_MINIMUMPRICE_LOCATOR}    id=lblMinimumPriceView
# ${BUILDINGMANAGEMENT_VIEW_LBD_MINIMUMPRICE_LOCATOR}    id=lbdMinimumPriceView
# #Vat.(%)
# ${BUILDINGMANAGEMENT_VIEW_LBL_VAT_TH}    ภาษีมูลค่าเพิ่ม (%)
# ${BUILDINGMANAGEMENT_VIEW_LBL_VAT_EN}    Vat.(%)
# ${BUILDINGMANAGEMENT_VIEW_LBL_VAT_LOCATOR}    id=lblVatView
# ${BUILDINGMANAGEMENT_VIEW_LBD_VAT_LOCATOR}    id=lbdVatView
# #Tax.(%)
# ${BUILDINGMANAGEMENT_VIEW_LBL_TAX_TH}    ภาษีถูกหัก ณ ที่จ่าย (%)
# ${BUILDINGMANAGEMENT_VIEW_LBL_TAX_EN}    Tax.(%)
# ${BUILDINGMANAGEMENT_VIEW_LBL_TAX_LOCATOR}    id=lblTaxView
# ${BUILDINGMANAGEMENT_VIEW_LBD_TAX_LOCATOR}    id=lbdTaxView

# #Charge a mulct
# ${BUILDINGMANAGEMENT_VIEW_LBL_CHARGEAMULCT_TH}    คิดค่าปรับ
# ${BUILDINGMANAGEMENT_VIEW_LBL_CHARGEAMULCT_EN}    Charge a mulct
# ${BUILDINGMANAGEMENT_VIEW_LBL_CHARGEAMULCT_LOCATOR}    id=lblChargeAMuclctView
# ${BUILDINGMANAGEMENT_VIEW_LBD_CHARGEAMULCT_LOCATOR}    id=lbdChargeAMuclctView
# #Mulctcode
# ${BUILDINGMANAGEMENT_VIEW_LBL_MULCTCODE_TH}    รหัสค่าปรับ
# ${BUILDINGMANAGEMENT_VIEW_LBL_MULCTCODE_EN}    Mulctcode
# ${BUILDINGMANAGEMENT_VIEW_LBL_MULCTCODE_LOCATOR}    id=lblMulctcodeView
# ${BUILDINGMANAGEMENT_VIEW_LBD_MULCTCODE_LOCATOR}    id=lbdMulctcodeView
# #Remark 
# ${BUILDINGMANAGEMENT_VIEW_LBL_REMARK_TH}    หมายเหตุ
# ${BUILDINGMANAGEMENT_VIEW_LBL_REMARK_EN}    Remark
# ${BUILDINGMANAGEMENT_VIEW_LBL_REMARK_LOCATOR}    id=lblRemarkView
# ${BUILDINGMANAGEMENT_VIEW_LBD_REMARK_LOCATOR}    id=lbdRemarkView
################################################################################################################################
################################################################-- Value --################################################################
#-------------------------------------------- data Create --------------------------------------------#
#Incomecode NameTh *
${BUILDINGMANAGEMENT_BUILDINGNAMETH_VALUE}    ชื่อรายได้ ภาษาไทย
${BUILDINGMANAGEMENT_BUILDINGNAMETH2_VALUE}    ชื่อรายได้ ภาษาไทย2
#Incomecode NameEn
${BUILDINGMANAGEMENT_BUILDINGNAMEEN_VALUE}    ชื่อรายได้ ภาษาอังกฤษ
${BUILDINGMANAGEMENT_BUILDINGNAMEEN_VALUE_EMPTY}    ""
${BUILDINGMANAGEMENT_BUILDINGNAMEEN_VALUE_NONE}    None
#Incomecode *
${BUILDINGMANAGEMENT_INCOMECODE_VALUE}    1234
${BUILDINGMANAGEMENT_INCOMECODE2_VALUE}    4321
#Price Per Unit *
${BUILDINGMANAGEMENT_PRICEPERUNIT_VALUE}    3.00
${BUILDINGMANAGEMENT_PRICEPERUNIT_VIEW_VALUE}    3
${BUILDINGMANAGEMENT_PRICEPERUNIT2_VALUE}    5.00
${BUILDINGMANAGEMENT_PRICEPERUNIT2_VIEW_VALUE}    5
#Vat.(%) *
${BUILDINGMANAGEMENT_VAT_VALUE}    1.00
${BUILDINGMANAGEMENT_VAT_VIEW_VALUE}    1
${BUILDINGMANAGEMENT_VAT2_VALUE}    3.00
${BUILDINGMANAGEMENT_VAT2_VIEW_VALUE}    3
#Tax.(%) *
${BUILDINGMANAGEMENT_TAX_VALUE}    2.00
${BUILDINGMANAGEMENT_TAX_VIEW_VALUE}    2
${BUILDINGMANAGEMENT_TAX2_VALUE}    4.00
${BUILDINGMANAGEMENT_TAX2_VIEW_VALUE}    4
#Status *
${BUILDINGMANAGEMENT_STATUS_TH_VALUE1}    ใช้งาน
${BUILDINGMANAGEMENT_STATUS_EN_VALUE1}    Active
${BUILDINGMANAGEMENT_STATUSID_VALUE1}    1
${BUILDINGMANAGEMENT_STATUS_TH_VALUE2}    ไม่ใช้งาน
${BUILDINGMANAGEMENT_STATUS_EN_VALUE2}    Inactive
${BUILDINGMANAGEMENT_STATUSID_VALUE2}    0
#Group Type *
${BUILDINGMANAGEMENT_GROUPTYPE_TH_VALUE1}    ค่าน้ำ   
${BUILDINGMANAGEMENT_GROUPTYPE_EN_VALUE1}    Water bill
${BUILDINGMANAGEMENT_GROUPTYPE_ID_VALUE1}    1
${BUILDINGMANAGEMENT_GROUPTYPE_TH_VALUE2}    ค่าไฟ   
${BUILDINGMANAGEMENT_GROUPTYPE_EN_VALUE2}    Electricity bill
${BUILDINGMANAGEMENT_GROUPTYPE_ID_VALUE2}    2
#Calculation type (every specified month)
${BUILDINGMANAGEMENT_CALCULATIONTYPE_TH_VALUE}    กรกฏาคม   
${BUILDINGMANAGEMENT_CALCULATIONTYPE_EN_VALUE}    July   
${BUILDINGMANAGEMENT_CALCULATIONTYPE_ID}    7   
#Calculation Method *
${BUILDINGMANAGEMENT_CALCULATIONMETHOD_TH_VALUE1}    คิดตามจริง   
${BUILDINGMANAGEMENT_CALCULATIONMETHOD_EN_VALUE1}    Actually think   
${BUILDINGMANAGEMENT_CALCULATIONMETHOD_ID_VALUE1}    1   
${BUILDINGMANAGEMENT_CALCULATIONMETHOD_TH_VALUE2}    คิดตามจริง ขั้นต่ำจำนวนหน่วย   
${BUILDINGMANAGEMENT_CALCULATIONMETHOD_EN_VALUE2}    Actual thinking minimum number of units
${BUILDINGMANAGEMENT_CALCULATIONMETHOD_ID_VALUE2}    2
${BUILDINGMANAGEMENT_CALCULATIONMETHOD_TH_VALUE3}    คิดตามจริง ขั้นต่ำจำนวนเงิน   
${BUILDINGMANAGEMENT_CALCULATIONMETHOD_EN_VALUE3}    Actual thinking, minimum amount
${BUILDINGMANAGEMENT_CALCULATIONMETHOD_ID_VALUE3}    3
#Minimum Unit *
${BUILDINGMANAGEMENT_MINIMUMUNIT_VALUE}    6.00   
${BUILDINGMANAGEMENT_MINIMUMUNIT_VIEW_VALUE}    6
#Minimum Price *
${BUILDINGMANAGEMENT_MINIMUMPRICE_VALUE}    7.00   
${BUILDINGMANAGEMENT_MINIMUMPRICE_VIEW_VALUE}    7   
#Charge a mulct *
${BUILDINGMANAGEMENT_CHARGEAMULCT_NOPENALTYCHARGE_TH_VALUE}    ไม่คิดค่าปรับ
${BUILDINGMANAGEMENT_CHARGEAMULCT_NOPENALTYCHARGE_EN_VALUE}    No penalty charge  
${BUILDINGMANAGEMENT_CHARGEAMULCT_CHARGEAFINE_TH_VALUE}    คิดค่าปรับ
${BUILDINGMANAGEMENT_CHARGEAMULCT_CHARGEAFINE_EN_VALUE}    Charge a fine
#Mulct Method *
${BUILDINGMANAGEMENT_MULCTMETHOD_TH_VALUE}    ค่าปรับ   
${BUILDINGMANAGEMENT_MULCTMETHOD_EN_VALUE}    ค่าปรับ   
#Payment Order 
${BUILDINGMANAGEMENT_PAYMENTORDER_VALUE}    1   

#Remark 
${BUILDINGMANAGEMENT_REMARK_VALUE}    หมายเหตุ1
${BUILDINGMANAGEMENT_REMARK_VALUE_NONE}    None

################################################################-- capture page screenshot --################################################################
#-------------------------------------------- Search --------------------------------------------#	
${BUILDINGMANAGEMENT_SEARCH_M6_0_1_1_000_SUCCESS_SCREENSHOT}    M6_0_1_1_000_BuildingManagement_Success_Search_VerifyScreen_Screen.png
${BUILDINGMANAGEMENT_SEARCH_M11_1_1_1_000_SUCCESS_SCREENSHOT}    M11_1_1_1_000_IncomeCode_Success_Search_VerifyAction_Screen.png
#-------------------------------------------- View --------------------------------------------#	
${BUILDINGMANAGEMENT_VIEW_M11_0_1_5_000_SUCCESS_SCREENSHOT}    M11_0_1_5_000_IncomeCode_Success_View_VerifyScreen_Screen.png
${BUILDINGMANAGEMENT_VIEW_M11_1_1_5_000_SUCCESS_SCREENSHOT}    M11_1_1_5_000_IncomeCode_Success_View_VerifyAction_Screen.png
#-------------------------------------------- Create --------------------------------------------#	
${BUILDINGMANAGEMENT_CREATE_M11_0_1_2_000_SUCCESS_SCREENSHOT}    M11_0_1_2_000_IncomeCode_Success_Create_VerifyScreen_Screen.png
${BUILDINGMANAGEMENT_CREATE_M11_1_1_2_000_SUCCESS_SCREENSHOT}    M11_1_1_2_000_IncomeCode_Success_Create_VerifyAction_Screen.png
#-------------------------------------------- Edit --------------------------------------------#	
${BUILDINGMANAGEMENT_EDIT_M11_0_1_3_000_SUCCESS_SCREENSHOT}    M11_0_1_3_000_IncomeCode_Success_Edit_VerifyScreen_Screen.png
${BUILDINGMANAGEMENT_EDIT_M11_1_1_3_000_SUCCESS_SCREENSHOT}    M11_1_1_3_000_IncomeCode_Success_Edit_VerifyAction_Screen.png
#-------------------------------------------- Delete --------------------------------------------#	
${BUILDINGMANAGEMENT_DELETE_M11_0_1_4_000_SUCCESS_SCREENSHOT}    M11_0_1_4_000_IncomeCode_Success_Delete_VerifyScreen_Screen.png
${BUILDINGMANAGEMENT_DELETE_M11_1_1_4_000_SUCCESS_SCREENSHOT}    M11_1_1_4_000_IncomeCode_Success_Delete_VerifyAction_Screen.png






















