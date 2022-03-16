*** Variables ***
################################################################-- Expense Management --################################################################
#Create button
${EXPENSECODE_BTN_CREATE_TH}    เพิ่ม
${EXPENSECODE_BTN_CREATE_EN}    Create
${EXPENSECODE_BTN_CREATE_LOCATOR}    id=btnCreate

${EXPENSECODE_BTN_MORE_LOCATOR}    id=btnMore1
${EXPENSECODE_LBL_VIEW_TH}    ดูรายละเอียด
${EXPENSECODE_LBL_VIEW_EN}    View
${EXPENSECODE_LBL_VIEW_TH_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-15"]
${EXPENSECODE_LBL_VIEW_EN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-15"]
${EXPENSECODE_BTN_VIEW_LOCATOR}    id=btnView1 
${EXPENSECODE_LBL_EDIT_TH}    แก้ไข
${EXPENSECODE_LBL_EDIT_EN}    Edit
${EXPENSECODE_LBL_EDIT_TH_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-16"]
${EXPENSECODE_LBL_EDIT_EN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-16"]
${EXPENSECODE_BTN_EDIT_LOCATOR}    id=btnEdit1
${EXPENSECODE_LBL_DELETE_TH}    ลบ
${EXPENSECODE_LBL_DELETE_EN}    Delete
${EXPENSECODE_LBL_DELETE_TH_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-17"]
${EXPENSECODE_LBL_DELETE_EN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-17"]
${EXPENSECODE_BTN_DELETE_LOCATOR}    id=btnDelete1

${EXPENSECODE_BTN_CLOSE_LOCATOR}    class=ant-modal-close-x

${EXPENSECODE_BTN_20}    20
${EXPENSECODE_BTN_20_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[1]/div[1]
${EXPENSECODE_BTN_50}    50
${EXPENSECODE_BTN_50_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[1]/div[2]
${EXPENSECODE_BTN_100}    100
${EXPENSECODE_BTN_100_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[1]/div[3]
${EXPENSECODE_BTN_1000}    1000
${EXPENSECODE_BTN_1000_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[1]/div[4]
${EXPENSECODE_LBL_PagesXFromY_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[2]/div[1]
${EXPENSECODE_ICON_ARRORWLEFT_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[2]/div[2]
${EXPENSECODE_LBL_PAGE_1}    1
${EXPENSECODE_LBL_PAGE_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[2]/div[3]
${EXPENSECODE_ICON_ARRORWRIGHT_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[2]/div[4]

${EXPENSECODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td[3]

#-------------------------------------------- Search Expense Management --------------------------------------------#
############## Header ############## 
#Expense Management Header
${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_HEADER_TH}    จัดการรหัสค่าใช้จ่าย 
${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_HEADER_EN}    Expense Management
${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_HEADER_LOCATOR}    xpath=/html/body/app-root/app-layouts/div/app-master/div[1]/div/div/h3
#Expense Management
${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_TH}    จัดการรหัสค่าใช้จ่าย 
${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_EN}    Expense Management
${EXPENSECODE_SEARCH_LBL_EXPENSEMANAGEMENT_LOCATOR}    id=lblExpenseManagementHeaderPage

#Expense Code
${EXPENSECODE_SEARCH_LBL_EXPENSECODE_TH}    รหัสค่าใช้จ่าย
${EXPENSECODE_SEARCH_LBL_EXPENSECODE_EN}    Expense Code
${EXPENSECODE_SEARCH_LBL_EXPENSECODE_LOCATOR}    id=lblExpenseCodeSearch
${EXPENSECODE_SEARCH_INPUT_EXPENSECODE_LOCATOR}    id=input_txtExpenseCodeSearch
${EXPENSECODE_SEARCH_TXT_EXPENSECODE_LOCATOR}    id=txtExpenseCodeSearch
#ExpenseCode Name
${EXPENSECODE_SEARCH_LBL_EXPENSECODENAME_TH}    ชื่อค่าใช้จ่าย
${EXPENSECODE_SEARCH_LBL_EXPENSECODENAME_EN}    ExpenseCode Name
${EXPENSECODE_SEARCH_LBL_EXPENSECODENAME_LOCATOR}    id=lblExpenseCodeNameSearch
${EXPENSECODE_SEARCH_INPUT_EXPENSECODENAME_LOCATOR}    id=input_txtExpenseCodeNameSearch
${EXPENSECODE_SEARCH_TXT_EXPENSECODENAME_LOCATOR}    id=txtExpenseCodeNameSearch
#Status
${EXPENSECODE_SEARCH_LBL_STATUS_TH}    สถานะ
${EXPENSECODE_SEARCH_LBL_STATUS_EN}    Status
${EXPENSECODE_SEARCH_LBL_STATUS_LOCATOR}    id=lblStatusSearch
${EXPENSECODE_SEARCH_DDL_STATUS_PLACEHOLDER_VALUE}    2
# ${EXPENSECODE_SEARCH_DDL_STATUS_PLACEHOLDER_LOCATOR}    css=#ddlStatusSearch div[class="dx-placeholder"]
${EXPENSECODE_SEARCH_DDL_STATUS_PLACEHOLDER_LOCATOR}    css=#ddlStatusSearch div[class="dx-placeholder"]
${EXPENSECODE_SEARCH_DDL_STATUS_LOCATOR}    id=ddlStatusSearch 
${EXPENSECODE_SEARCH_DDL_STATUS_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${EXPENSECODE_SEARCH_DDL_STATUS_CLASS_LOCATOR}    class=dx-list-item-content
@{EXPENSECODE_SEARCH_DDL_STATUS_TH_VALUE}    ไม่ใช้งาน    ใช้งาน
@{EXPENSECODE_SEARCH_DDL_STATUS_EN_VALUE}    Inactive    Active

#Search
${EXPENSECODE_SEARCH_BTN_SEARCH_TH}    ค้นหา
${EXPENSECODE_SEARCH_BTN_SEARCH_EN}    Search
${EXPENSECODE_SEARCH_BTN_SEARCH_LOCATOR}    id=btnSearch
#Clear
${EXPENSECODE_SEARCH_BTN_CLEAR_TH}    คืนค่า
${EXPENSECODE_SEARCH_BTN_CLEAR_EN}    Clear
${EXPENSECODE_SEARCH_BTN_CLEAR_LOCATOR}    id=btnClear

############################ 
############## Table ############## 
#No
${EXPENSECODE_SEARCH_LBL_RESULT_NO_TH}    ลำดับ
${EXPENSECODE_SEARCH_LBL_RESULT_NO_EN}    No.
${EXPENSECODE_SEARCH_LBL_RESULT_NO_LOCATOR}    id=dx-col-11
#Expense Code 
${EXPENSECODE_SEARCH_LBL_RESULT_EXPENSECODE_TH}    รหัสค่าใช้จ่าย
${EXPENSECODE_SEARCH_LBL_RESULT_EXPENSECODE_EN}    Expense Code 
${EXPENSECODE_SEARCH_LBL_RESULT_EXPENSECODE_LOCATOR}    id=dx-col-12
#ExpenseCode Name
${EXPENSECODE_SEARCH_LBL_RESULT_EXPENSECODENAME_TH}    ชื่อค่าใช้จ่าย
${EXPENSECODE_SEARCH_LBL_RESULT_EXPENSECODENAME_EN}    ExpenseCode Name
${EXPENSECODE_SEARCH_LBL_RESULT_EXPENSECODENAME_LOCATOR}    id=dx-col-13
#Status
${EXPENSECODE_SEARCH_LBL_RESULT_STATUS_TH}    สถานะ
${EXPENSECODE_SEARCH_LBL_RESULT_STATUS_EN}    Status
${EXPENSECODE_SEARCH_LBL_RESULT_STATUS_LOCATOR}    id=dx-col-14
#No Data
${EXPENSECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[6]/span
#For check value table 
${EXPENSECODE_SEARCH_LBL_RESULT_DATA_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[row]/td[col]
${EXPENSECODE_SEARCH_NUMCOL}    4
@{EXPENSECODE_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_TH}    no    expenseCode    expenseCodeNameTh    status
@{EXPENSECODE_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_EN}    no    expenseCode    expenseCodeNameEn    status

############################ 
#-------------------------------------------- View Expense --------------------------------------------#
#Expensecode Details
${EXPENSECODE_VIEW_LBL_EXPENSECODEDETAILS_TH}    ดูรายละเอียดรหัสค่าใช้จ่าย 
${EXPENSECODE_VIEW_LBL_EXPENSECODEDETAILS_EN}    Expensecode Details
${EXPENSECODE_VIEW_LBL_EXPENSECODEDETAILS_LOCATOR}    id=lblExpensecodeDetails
#Expensecode NameTh
${EXPENSECODE_VIEW_LBL_EXPENSECODENAMETH_TH}    ชื่อค่าใช้จ่าย ภาษาไทย
${EXPENSECODE_VIEW_LBL_EXPENSECODENAMETH_EN}    Expensecode NameTh
${EXPENSECODE_VIEW_LBL_EXPENSECODENAMETH_LOCATOR}    id=lblExpensecodeNameThView
${EXPENSECODE_VIEW_LBD_EXPENSECODENAMETH_LOCATOR}    id=lbdExpensecodeNameThView
#Expensecode NameEn
${EXPENSECODE_VIEW_LBL_EXPENSECODENAMEEN_TH}    ชื่อค่าใช้จ่าย ภาษาอังกฤษ
${EXPENSECODE_VIEW_LBL_EXPENSECODENAMEEN_EN}    Expensecode NameEn
${EXPENSECODE_VIEW_LBL_EXPENSECODENAMEEN_LOCATOR}    id=lblExpensecodeNameEnView
${EXPENSECODE_VIEW_LBD_EXPENSECODENAMEEN_LOCATOR}    id=lbdExpensecodeNameEnView
#Expensecode
${EXPENSECODE_VIEW_LBL_EXPENSECODE_TH}    รหัสค่าใช้จ่าย
${EXPENSECODE_VIEW_LBL_EXPENSECODE_EN}    Expensecode
${EXPENSECODE_VIEW_LBL_EXPENSECODE_LOCATOR}    id=lblExpenseCodeView
${EXPENSECODE_VIEW_LBD_EXPENSECODE_LOCATOR}    id=lbdExpenseCodeView
#Status
${EXPENSECODE_VIEW_LBL_STATUS_TH}    สถานะ
${EXPENSECODE_VIEW_LBL_STATUS_EN}    Status
${EXPENSECODE_VIEW_LBL_STATUS_LOCATOR}    id=lblStatusView
${EXPENSECODE_VIEW_LBD_STATUS_LOCATOR}    id=lbdStatusView
#Group Type
${EXPENSECODE_VIEW_LBL_GROUPTYPE_TH}    ประเภทกลุ่มรหัส
${EXPENSECODE_VIEW_LBL_GROUPTYPE_EN}    Group Type
${EXPENSECODE_VIEW_LBL_GROUPTYPE_LOCATOR}    id=lblGroupTypeView
${EXPENSECODE_VIEW_LBD_GROUPTYPE_LOCATOR}    id=lbdGroupTypeView
#Price Per Unit
${EXPENSECODE_VIEW_LBL_PRICEPERUNIT_TH}    ราคาต่อหน่วย
${EXPENSECODE_VIEW_LBL_PRICEPERUNIT_EN}    Price Per Unit
${EXPENSECODE_VIEW_LBL_PRICEPERUNIT_LOCATOR}    id=lblPricePerUnitView
${EXPENSECODE_VIEW_LBD_PRICEPERUNIT_LOCATOR}    id=lbdPricePerUnitView
#Vat.(%)
${EXPENSECODE_VIEW_LBL_VAT_TH}    ภาษีมูลค่าเพิ่ม (%)
${EXPENSECODE_VIEW_LBL_VAT_EN}    Vat.(%)
${EXPENSECODE_VIEW_LBL_VAT_LOCATOR}    id=lblVatView
${EXPENSECODE_VIEW_LBD_VAT_LOCATOR}    id=lbdVatView
#Tax.(%)
${EXPENSECODE_VIEW_LBL_TAX_TH}    ภาษีถูกหัก ณ ที่จ่าย (%)
${EXPENSECODE_VIEW_LBL_TAX_EN}    Tax.(%)
${EXPENSECODE_VIEW_LBL_TAX_LOCATOR}    id=lblTaxView
${EXPENSECODE_VIEW_LBD_TAX_LOCATOR}    id=lbdTaxView
#Remark 
${EXPENSECODE_VIEW_LBL_REMARK_TH}    หมายเหตุ
${EXPENSECODE_VIEW_LBL_REMARK_EN}    Remark
${EXPENSECODE_VIEW_LBL_REMARK_LOCATOR}    id=lblRemarkView
${EXPENSECODE_VIEW_LBD_REMARK_LOCATOR}    id=lbdRemarkView

#-------------------------------------------- Create Expense --------------------------------------------#
#Create Expensecode
${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_TH}    เพิ่มรหัสค่าใช้จ่าย 
${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_EN}    Create Expensecode
${EXPENSECODE_ADD_LBL_CREATEEXPENSECODE_LOCATOR}    id=lblCreateExpensecode

#Expensecode NameTh *
${EXPENSECODE_ADD_LBL_EXPENSECODENAMETH_TH}    ชื่อค่าใช้จ่าย ภาษาไทย
${EXPENSECODE_ADD_LBL_EXPENSECODENAMETH_EN}    Expensecode NameTh
${EXPENSECODE_ADD_LBL_EXPENSECODENAMETH_LOCATOR}    id=lblExpenseNameThCreate
${EXPENSECODE_ADD_LBL_EXPENSECODENAMETH_VALID_LOCATOR}    id=lblExpenseNameThCreateValid
${EXPENSECODE_ADD_TXT_EXPENSECODENAMETH_LOCATOR}    id=txtExpenseNameThCreate
#Expensecode NameEn
${EXPENSECODE_ADD_LBL_EXPENSECODENAMEEN_TH}    ชื่อค่าใช้จ่าย ภาษาอังกฤษ
${EXPENSECODE_ADD_LBL_EXPENSECODENAMEEN_EN}    Expensecode NameEn
${EXPENSECODE_ADD_LBL_EXPENSECODENAMEEN_LOCATOR}    id=lblExpenseNameEnCreate
${EXPENSECODE_ADD_TXT_EXPENSECODENAMEEN_LOCATOR}    id=txtExpenseNameEnCreate
#Expensecode *
${EXPENSECODE_ADD_LBL_EXPENSECODE_TH}    รหัสค่าใช้จ่าย
${EXPENSECODE_ADD_LBL_EXPENSECODE_EN}    Expensecode
${EXPENSECODE_ADD_LBL_EXPENSECODE_LOCATOR}    id=lblExpensecodeCreate
${EXPENSECODE_ADD_LBL_EXPENSECODE_VALID_LOCATOR}    id=lblExpensecodeCreateValid
${EXPENSECODE_ADD_TXT_EXPENSECODE_LOCATOR}    id=txtExpensecodeCreate
#Status *
${EXPENSECODE_ADD_LBL_STATUS_TH}    สถานะ
${EXPENSECODE_ADD_LBL_STATUS_EN}    Status
${EXPENSECODE_ADD_LBL_STATUS_LOCATOR}    id=lblStatusCreate
${EXPENSECODE_ADD_LBL_STATUS_VALID_LOCATOR}    id=lblStatusCreateValid
${EXPENSECODE_ADD_LBL_STATUS_PLACEHOLDER_VALUE}    1
${EXPENSECODE_ADD_LBL_STATUS_PLACEHOLDER_LOCATOR}    css=#ddlStatus div[class="dx-placeholder dx-state-invisible"]
${EXPENSECODE_ADD_TXT_STATUS_LOCATOR}    id=//*[@id="ddlStatusCreate"]/nz-select-top-control/nz-select-search/input
${EXPENSECODE_ADD_DDL_STATUS_LOCATOR}    id=ddlStatusCreate
${EXPENSECODE_ADD_DDL_STATUS_LIST_LOCATOR}    xpath=/html/body/div/div[3]/div/nz-option-container/div/cdk-virtual-scroll-viewport/div[1]/nz-option-item[replace_indexList]/div/span
${EXPENSECODE_ADD_DDL_STATUS_CLASS_LOCATOR}    class=ant-select-item-option-content
@{EXPENSECODE_ADD_DDL_STATUS_TH_VALUE}    ไม่ใช้งาน    ใช้งาน
@{EXPENSECODE_ADD_DDL_STATUS_EN_VALUE}    Inactive    Active
#Group Type *
${EXPENSECODE_ADD_LBL_GROUPTYPE_TH}    ประเภทกลุ่มรหัส
${EXPENSECODE_ADD_LBL_GROUPTYPE_EN}    Group Type
${EXPENSECODE_ADD_LBL_GROUPTYPE_LOCATOR}    id=lblGroupTypeCreate
${EXPENSECODE_ADD_LBL_GROUPTYPE_VALID_LOCATOR}    id=lblGroupTypeCreateValid
${EXPENSECODE_ADD_LBL_GROUPTYPE_PLACEHOLDER_LOCATOR}    css=#ddlGroupTypeCreate div[class="dx-placeholder"]
${EXPENSECODE_ADD_TXT_GROUPTYPE_LOCATOR}    id=//*[@id="ddlGroupTypeCreate"]/nz-select-top-control/nz-select-search/input
${EXPENSECODE_ADD_TXT_GROUPTYPE_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlGroupTypeCreate"]/div[2]/div/div
${EXPENSECODE_ADD_DDL_GROUPTYPE_LOCATOR}    id=ddlGroupTypeCreate
${EXPENSECODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    xpath=/html/body/div/div[3]/div/nz-option-container/div/cdk-virtual-scroll-viewport/div[1]/nz-option-item[replace_indexList]/div/span
# ${EXPENSECODE_ADD_DDL_GROUPTYPE_FORCREATE2DATA_LIST_LOCATOR}    xpath=//*[@id="cdk-overlay-6"]/nz-option-container/div/cdk-virtual-scroll-viewport/div[1]/nz-option-item[replace_indexList]/div/span
${EXPENSECODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    class=ant-select-item-option-content
#Price Per Unit *
${EXPENSECODE_ADD_LBL_PRICEPERUNIT_TH}    ราคาต่อหน่วย
${EXPENSECODE_ADD_LBL_PRICEPERUNIT_EN}    Price Per Unit
${EXPENSECODE_ADD_LBL_PRICEPERUNIT_LOCATOR}    id=lblPricePerUnitCreate
${EXPENSECODE_ADD_LBL_PRICEPERUNIT_VALID_LOCATOR}    id=lblPricePerUnitCreateValid
${EXPENSECODE_ADD_TXT_PRICEPERUNIT_LOCATOR}    id=txtPricePerUnitCreate
${EXPENSECODE_ADD_INPUT_PRICEPERUNIT_LOCATOR}    id=input_txtPricePerUnitCreate
#Vat.(%) *
${EXPENSECODE_ADD_LBL_VAT_TH}    ภาษีมูลค่าเพิ่ม (%)
${EXPENSECODE_ADD_LBL_VAT_EN}    Vat.(%)
${EXPENSECODE_ADD_LBL_VAT_LOCATOR}    id=lblVatCreate
${EXPENSECODE_ADD_LBL_VAT_VALID_LOCATOR}    id=lblVatCreateValid
${EXPENSECODE_ADD_INPUT_VAT_LOCATOR}    id=input_txtVatCreate
${EXPENSECODE_ADD_TXT_VAT_LOCATOR}    id=txtVatCreate
#Tax.(%) *
${EXPENSECODE_ADD_LBL_TAX_TH}    ภาษีถูกหัก ณ ที่จ่าย (%)
${EXPENSECODE_ADD_LBL_TAX_EN}    Tax.(%)
${EXPENSECODE_ADD_LBL_TAX_LOCATOR}    id=lblTaxCreate
${EXPENSECODE_ADD_LBL_TAX_VALID_LOCATOR}    id=lblTaxCreateValid
${EXPENSECODE_ADD_INPUT_TAX_LOCATOR}    id=input_txtTaxCreate
${EXPENSECODE_ADD_TXT_TAX_LOCATOR}    id=txtTaxCreate
#Remark 
${EXPENSECODE_ADD_LBL_REMARK_TH}    หมายเหตุ
${EXPENSECODE_ADD_LBL_REMARK_EN}    Remark
${EXPENSECODE_ADD_LBL_REMARK_LOCATOR}    id=lblRemarkCreate
${EXPENSECODE_ADD_TXTAREA_REMARK_LOCATOR}    id=txtareaRemarkCreate

#-------------------------------------------- Edit Expense --------------------------------------------#
#Edit Expensecode
${EXPENSECODE_EDIT_LBL_EDITEXPENSECODE_TH}    แก้ไขรหัสค่าใช้จ่าย
${EXPENSECODE_EDIT_LBL_EDITEXPENSECODE_EN}    Edit Expensecode
${EXPENSECODE_EDIT_LBL_EDITEXPENSECODE_LOCATOR}    id=lblEditExpensecode

#Expensecode NameTh *
${EXPENSECODE_EDIT_LBL_EXPENSECODENAMETH_TH}    ชื่อค่าใช้จ่าย ภาษาไทย
${EXPENSECODE_EDIT_LBL_EXPENSECODENAMETH_EN}    Expensecode NameTh
${EXPENSECODE_EDIT_LBL_EXPENSECODENAMETH_LOCATOR}    id=lblExpenseNameThEdit
${EXPENSECODE_EDIT_LBL_EXPENSECODENAMETH_VALID_LOCATOR}    id=lblExpenseNameThEditValid
${EXPENSECODE_EDIT_TXT_EXPENSECODENAMETH_LOCATOR}    id=txtExpenseNameThEdit
#Expensecode NameEn
${EXPENSECODE_EDIT_LBL_EXPENSECODENAMEEN_TH}    ชื่อค่าใช้จ่าย ภาษาอังกฤษ
${EXPENSECODE_EDIT_LBL_EXPENSECODENAMEEN_EN}    Expensecode NameEn
${EXPENSECODE_EDIT_LBL_EXPENSECODENAMEEN_LOCATOR}    id=lblExpenseNameEnEdit
${EXPENSECODE_EDIT_TXT_EXPENSECODENAMEEN_LOCATOR}    id=txtExpenseNameEnEdit
#Expensecode *
${EXPENSECODE_EDIT_LBL_EXPENSECODE_TH}    รหัสค่าใช้จ่าย
${EXPENSECODE_EDIT_LBL_EXPENSECODE_EN}    Expensecode
${EXPENSECODE_EDIT_LBL_EXPENSECODE_LOCATOR}    id=lblExpensecodeEdit
${EXPENSECODE_EDIT_LBL_EXPENSECODE_VALID_LOCATOR}    id=lblExpensecodeEditValid
${EXPENSECODE_EDIT_TXT_EXPENSECODE_LOCATOR}    id=txtExpensecodeEdit
#Status *
${EXPENSECODE_EDIT_LBL_STATUS_TH}    สถานะ
${EXPENSECODE_EDIT_LBL_STATUS_EN}    Status
${EXPENSECODE_EDIT_LBL_STATUS_LOCATOR}    id=lblStatusEdit
${EXPENSECODE_EDIT_LBL_STATUS_VALID_LOCATOR}    id=lblStatusEditValid
${EXPENSECODE_EDIT_LBL_STATUS_PLACEHOLDER_VALUE}    1
${EXPENSECODE_EDIT_LBL_STATUS_PLACEHOLDER_LOCATOR}    css=#ddlStatus div[class="dx-placeholder dx-state-invisible"]
${EXPENSECODE_EDIT_TXT_STATUS_LOCATOR}    xpath=//*[@id="ddlStatusEdit"]/nz-select-top-control/nz-select-search/input
${EXPENSECODE_EDIT_DDL_STATUS_LOCATOR}    id=ddlStatusEdit
${EXPENSECODE_EDIT_DDL_STATUS_LIST_LOCATOR}    xpath=/html/body/div/div[3]/div/nz-option-container/div/cdk-virtual-scroll-viewport/div[1]/nz-option-item[replace_indexList]/div/span
${EXPENSECODE_EDIT_DDL_STATUS_CLASS_LOCATOR}    class=ant-select-item-option-content
@{EXPENSECODE_EDIT_DDL_STATUS_TH_VALUE}    ไม่ใช้งาน    ใช้งาน
@{EXPENSECODE_EDIT_DDL_STATUS_EN_VALUE}    Inactive    Active
#Group Type *
${EXPENSECODE_EDIT_LBL_GROUPTYPE_TH}    ประเภทกลุ่มรหัส
${EXPENSECODE_EDIT_LBL_GROUPTYPE_EN}    Group Type
${EXPENSECODE_EDIT_LBL_GROUPTYPE_LOCATOR}    id=lblGroupTypeEdit
${EXPENSECODE_EDIT_LBL_GROUPTYPE_VALID_LOCATOR}    id=lblGroupTypeEditValid
${EXPENSECODE_EDIT_LBL_GROUPTYPE_PLACEHOLDER_LOCATOR}    css=#ddlGroupTypeEdit div[class="dx-placeholder"]
${EXPENSECODE_EDIT_TXT_GROUPTYPE_LOCATOR}    xpath=//*[@id="ddlGroupTypeEdit"]/nz-select-top-control/nz-select-search/input
${EXPENSECODE_EDIT_TXT_GROUPTYPE_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlGroupTypeEdit"]/div[2]/div/div
${EXPENSECODE_EDIT_DDL_GROUPTYPE_LOCATOR}    id=ddlGroupTypeEdit
# ${EXPENSECODE_EDIT_DDL_GROUPTYPE_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${EXPENSECODE_EDIT_DDL_GROUPTYPE_LIST_LOCATOR}    xpath=/html/body/div/div[3]/div/nz-option-container/div/cdk-virtual-scroll-viewport/div[1]/nz-option-item[replace_indexList]/div/span
${EXPENSECODE_EDIT_DDL_GROUPTYPE_CLASS_LOCATOR}    class=ant-select-item-option-content
#Price Per Unit *
${EXPENSECODE_EDIT_LBL_PRICEPERUNIT_TH}    ราคาต่อหน่วย
${EXPENSECODE_EDIT_LBL_PRICEPERUNIT_EN}    Price Per Unit
${EXPENSECODE_EDIT_LBL_PRICEPERUNIT_LOCATOR}    id=lblPricePerUnitEdit
${EXPENSECODE_EDIT_LBL_PRICEPERUNIT_VALID_LOCATOR}    id=lblPricePerUnitEditValid
${EXPENSECODE_EDIT_TXT_PRICEPERUNIT_LOCATOR}    id=txtPricePerUnitEdit
${EXPENSECODE_EDIT_INPUT_PRICEPERUNIT_LOCATOR}    id=input_txtPricePerUnitEdit
#Vat.(%) *
${EXPENSECODE_EDIT_LBL_VAT_TH}    ภาษีมูลค่าเพิ่ม (%)
${EXPENSECODE_EDIT_LBL_VAT_EN}    Vat.(%)
${EXPENSECODE_EDIT_LBL_VAT_LOCATOR}    id=lblVatEdit
${EXPENSECODE_EDIT_LBL_VAT_VALID_LOCATOR}    id=lblVatEdit
${EXPENSECODE_EDIT_INPUT_VAT_LOCATOR}    id=input_txtVatEdit
${EXPENSECODE_EDIT_TXT_VAT_LOCATOR}    id=txtVatEdit
${EXPENSECODE_EDIT_TXT_VAT_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="txtAccountPromptPayNumber"]/div[2]/div/div
#Tax.(%) *
${EXPENSECODE_EDIT_LBL_TAX_TH}    ภาษีถูกหัก ณ ที่จ่าย (%)
${EXPENSECODE_EDIT_LBL_TAX_EN}    Tax.(%)
${EXPENSECODE_EDIT_LBL_TAX_LOCATOR}    id=lblTaxEdit
${EXPENSECODE_EDIT_LBL_TAX_VALID_LOCATOR}    id=lblTaxEditValid
${EXPENSECODE_EDIT_INPUT_TAX_LOCATOR}    id=input_txtTaxEdit
${EXPENSECODE_EDIT_TXT_TAX_LOCATOR}    id=txtTaxEdit
${EXPENSECODE_EDIT_TXT_TAX_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="txtAccountPromptPayNumber"]/div[2]/div/div
#Remark 
${EXPENSECODE_EDIT_LBL_REMARK_TH}    หมายเหตุ
${EXPENSECODE_EDIT_LBL_REMARK_EN}    Remark
${EXPENSECODE_EDIT_LBL_REMARK_LOCATOR}    id=lblRemarkEdit
${EXPENSECODE_EDIT_TXTAREA_REMARK_LOCATOR}    id=txtareaRemarkEdit

#Cancel
${EXPENSECODE_ADDEDIT_BTN_CANCEL_TH}    ยกเลิก
${EXPENSECODE_ADDEDIT_BTN_CANCEL_EN}    Cancel
${EXPENSECODE_ADDEDIT_BTN_CANCEL_LOCATOR}    id=btnCancel
#Save
${EXPENSECODE_ADDEDIT_BTN_SAVE_TH}    บันทึก
${EXPENSECODE_ADDEDIT_BTN_SAVE_EN}    Save
${EXPENSECODE_ADDEDIT_BTN_SAVE_LOCATOR}    id=btnSave
################################################################################################################################
################################################################-- Value --################################################################
#-------------------------------------------- data Create --------------------------------------------#
#Expensecode NameTh *
${EXPENSECODE_EXPENSECODENAMETH_VALUE}    ชื่อค่าใช้จ่าย ภาษาไทย
${EXPENSECODE_EXPENSECODENAMETH2_VALUE}    ชื่อค่าใช้จ่าย ภาษาไทย2
#Expensecode NameEn
${EXPENSECODE_EXPENSECODENAMEEN_VALUE}    ชื่อค่าใช้จ่าย ภาษาอังกฤษ
${EXPENSECODE_EXPENSECODENAMEEN_VALUE_EMPTY}    ""
${EXPENSECODE_EXPENSECODENAMEEN_VALUE_NONE}    None
#Expensecode *
${EXPENSECODE_EXPENSECODE_VALUE}    รหัสค่าใช้จ่าย
${EXPENSECODE_EXPENSECODE2_VALUE}    รหัสค่าใช้จ่าย2
#Price Per Unit *
${EXPENSECODE_PRICEPERUNIT_VALUE}    3.00
${EXPENSECODE_PRICEPERUNIT_VIEW_VALUE}    3
${EXPENSECODE_PRICEPERUNIT2_VALUE}    5.00
${EXPENSECODE_PRICEPERUNIT2_VIEW_VALUE}    5
#Vat.(%) *
${EXPENSECODE_VAT_VALUE}    1.00
${EXPENSECODE_VAT_VIEW_VALUE}    1
${EXPENSECODE_VAT2_VALUE}    3.00
#Tax.(%) *
${EXPENSECODE_TAX_VALUE}    2.00
${EXPENSECODE_TAX_VIEW_VALUE}    2
${EXPENSECODE_TAX2_VALUE}    4.00
#Status *
${EXPENSECODE_STATUS_TH_VALUE1}    ใช้งาน
${EXPENSECODE_STATUS_EN_VALUE1}    Active
${EXPENSECODE_STATUSID_VALUE1}    1
${EXPENSECODE_STATUS_TH_VALUE2}    ไม่ใช้งาน
${EXPENSECODE_STATUS_EN_VALUE2}    Inactive
${EXPENSECODE_STATUSID_VALUE2}    0
#Group Type *
${EXPENSECODE_GROUPTYPE_TH_VALUE1}    ค่าน้ำ   
${EXPENSECODE_GROUPTYPE_EN_VALUE1}    Water bill
${EXPENSECODE_GROUPTYPEID_VALUE1}    1
${EXPENSECODE_GROUPTYPE_TH_VALUE2}    ค่าไฟ   
${EXPENSECODE_GROUPTYPE_EN_VALUE2}    Electricity bill
${EXPENSECODE_GROUPTYPEID_VALUE2}    2
#Remark 
${EXPENSECODE_REMARK_VALUE}    หมายเหตุ1
${EXPENSECODE_REMARK_VALUE_NONE}    None

################################################################-- capture page screenshot --################################################################
#-------------------------------------------- Search --------------------------------------------#	
${EXPENSECODE_SEARCH_M9_0_1_1_000_SUCCESS_SCREENSHOT}    M9_0_1_1_000_ExpenseCode_Search_VerifyScreen_Screen.png
${EXPENSECODE_SEARCH_M9_1_1_1_000_SUCCESS_SCREENSHOT}    M9_1_1_1_000_ExpenseCode_Search_VerifyAction_Screen.png
#-------------------------------------------- View --------------------------------------------#	
${EXPENSECODE_VIEW_M9_0_1_5_000_SUCCESS_SCREENSHOT}    M9_0_1_5_000_ExpenseCode_View_VerifyScreen_Screen.png
${EXPENSECODE_VIEW_M9_1_1_5_000_SUCCESS_SCREENSHOT}    M9_1_1_5_000_ExpenseCode_View_VerifyAction_Screen.png
#-------------------------------------------- Create --------------------------------------------#	
${EXPENSECODE_CREATE_M9_0_1_2_000_SUCCESS_SCREENSHOT}    M9_0_1_2_000_ExpenseCode_Create_VerifyScreen_Screen.png
${EXPENSECODE_CREATE_M9_1_1_2_000_SUCCESS_SCREENSHOT}    M9_1_1_2_000_ExpenseCode_Create_VerifyAction_Screen.png
#-------------------------------------------- Edit --------------------------------------------#	
${EXPENSECODE_EDIT_M9_0_1_3_000_SUCCESS_SCREENSHOT}    M9_0_1_3_000_ExpenseCode_Edit_VerifyScreen_Screen.png
${EXPENSECODE_EDIT_M9_1_1_3_000_SUCCESS_SCREENSHOT}    M9_1_1_3_000_ExpenseCode_Edit_VerifyAction_Screen.png
#-------------------------------------------- Delete --------------------------------------------#	
${EXPENSECODE_DELETE_M9_0_1_4_000_SUCCESS_SCREENSHOT}    M9_0_1_4_000_ExpenseCode_Delete_VerifyScreen_Screen.png
${EXPENSECODE_DELETE_M9_1_1_4_000_SUCCESS_SCREENSHOT}    M9_1_1_4_000_ExpenseCode_Delete_VerifyAction_Screen.png























