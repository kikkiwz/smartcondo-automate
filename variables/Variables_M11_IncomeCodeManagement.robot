*** Variables ***
################################################################-- Incomecode Management --################################################################
#Create button
${INCOMECODE_BTN_CREATE_TH}    เพิ่ม
${INCOMECODE_BTN_CREATE_EN}    Create
${INCOMECODE_BTN_CREATE_LOCATOR}    id=btnCreate

${INCOMECODE_BTN_MORE_LOCATOR}    id=btnMore1
${INCOMECODE_LBL_VIEW_TH}    ดูรายละเอียด
${INCOMECODE_LBL_VIEW_EN}    View
${INCOMECODE_LBL_VIEW_TH_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-19"]
${INCOMECODE_LBL_VIEW_EN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-19"]
${INCOMECODE_BTN_VIEW_LOCATOR}    id=btnView1 
${INCOMECODE_LBL_EDIT_TH}    แก้ไข
${INCOMECODE_LBL_EDIT_EN}    Edit
${INCOMECODE_LBL_EDIT_TH_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-20"]
${INCOMECODE_LBL_EDIT_EN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-20"]
${INCOMECODE_BTN_EDIT_LOCATOR}    id=btnEdit1
${INCOMECODE_LBL_DELETE_TH}    ลบ
${INCOMECODE_LBL_DELETE_EN}    Delete
${INCOMECODE_LBL_DELETE_TH_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-21"]
${INCOMECODE_LBL_DELETE_EN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-21"]
${INCOMECODE_BTN_DELETE_LOCATOR}    id=btnDelete1

${INCOMECODE_BTN_CLOSE_LOCATOR}    class=ant-modal-close-x

${INCOMECODE_BTN_20}    20
${INCOMECODE_BTN_20_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[1]/div[1]
${INCOMECODE_BTN_50}    50
${INCOMECODE_BTN_50_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[1]/div[2]
${INCOMECODE_BTN_100}    100
${INCOMECODE_BTN_100_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[1]/div[3]
${INCOMECODE_BTN_1000}    1000
${INCOMECODE_BTN_1000_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[1]/div[4]
${INCOMECODE_LBL_PagesXFromY_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[2]/div[1]
${INCOMECODE_ICON_ARRORWLEFT_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[2]/div[2]
${INCOMECODE_LBL_PAGE_1}    1
${INCOMECODE_LBL_PAGE_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[2]/div[3]
${INCOMECODE_ICON_ARRORWRIGHT_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[2]/div[4]

${INCOMECODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td[2]

#-------------------------------------------- Search Incomecode Management --------------------------------------------#
############## Header ############## 
#Incomecode Management Header
${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_HEADER_TH}    จัดการรหัสรายได้ 
${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_HEADER_EN}    Incomecode Management
${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_HEADER_LOCATOR}    xpath=/html/body/app-root/app-layouts/div/app-master/div[1]/div/div/h3
#Incomecode Management
${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_TH}    จัดการรหัสรายได้ 
${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_EN}    Incomecode Management
${INCOMECODE_SEARCH_LBL_INCOMECODEMANAGEMENT_LOCATOR}    id=lblIncomeCodeManagementHeaderPage

#Income Code
${INCOMECODE_SEARCH_LBL_INCOMECODE_TH}    รหัสรายได้
${INCOMECODE_SEARCH_LBL_INCOMECODE_EN}    Income Code
${INCOMECODE_SEARCH_LBL_INCOMECODE_LOCATOR}    id=lblIncomeCodeSearch
${INCOMECODE_SEARCH_INPUT_INCOMECODE_LOCATOR}    id=input_txtIncomeCodeSearch
${INCOMECODE_SEARCH_TXT_INCOMECODE_LOCATOR}    id=txtIncomeCodeSearch
#Income Name
${INCOMECODE_SEARCH_LBL_INCOMENAME_TH}    ชื่อรายได้
${INCOMECODE_SEARCH_LBL_INCOMENAME_EN}    Income Name
${INCOMECODE_SEARCH_LBL_INCOMENAME_LOCATOR}    id=lblIncomeNameSearch
${INCOMECODE_SEARCH_INPUT_INCOMENAME_LOCATOR}    id=input_txtIncomeNameSearch
${INCOMECODE_SEARCH_TXT_INCOMENAME_LOCATOR}    id=txtIncomeNameSearch
#Status
${INCOMECODE_SEARCH_LBL_STATUS_TH}    สถานะ
${INCOMECODE_SEARCH_LBL_STATUS_EN}    Status
${INCOMECODE_SEARCH_LBL_STATUS_LOCATOR}    id=lblStatusSearch
${INCOMECODE_SEARCH_DDL_STATUS_PLACEHOLDER_VALUE}    2
${INCOMECODE_SEARCH_DDL_STATUS_PLACEHOLDER_LOCATOR}    css=#ddlStatusSearch div[class="dx-placeholder"]
${INCOMECODE_SEARCH_DDL_STATUS_LOCATOR}    id=ddlStatusSearch 
${INCOMECODE_SEARCH_DDL_STATUS_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${INCOMECODE_SEARCH_DDL_STATUS_CLASS_LOCATOR}    class=dx-list-item-content
@{INCOMECODE_SEARCH_DDL_STATUS_TH_VALUE}    ไม่ใช้งาน    ใช้งาน
@{INCOMECODE_SEARCH_DDL_STATUS_EN_VALUE}    Inactive    Active

#Payment order The system will pay the earnings encoded in a predetermined order.
${INCOMECODE_SEARCH_LBL_NOTE_TH}    ลำดับชำระเงิน ระบบจะชำระเงินเข้ารหัสรายได้ตามลำดับที่กำหนดไว้
${INCOMECODE_SEARCH_LBL_NOTE_EN}    Payment order The system will pay the earnings encoded in a predetermined order.
${INCOMECODE_SEARCH_LBL_NOTE_LOCATOR}    id=lblNoteSearch

#Search
${INCOMECODE_SEARCH_BTN_SEARCH_TH}    ค้นหา
${INCOMECODE_SEARCH_BTN_SEARCH_EN}    Search
${INCOMECODE_SEARCH_BTN_SEARCH_LOCATOR}    id=btnSearch
#Clear
${INCOMECODE_SEARCH_BTN_CLEAR_TH}    คืนค่า
${INCOMECODE_SEARCH_BTN_CLEAR_EN}    Clear
${INCOMECODE_SEARCH_BTN_CLEAR_LOCATOR}    id=btnClear

############################ 
############## Table ############## 
# #No
# ${INCOMECODE_SEARCH_LBL_RESULT_NO_TH}    ลำดับ
# ${INCOMECODE_SEARCH_LBL_RESULT_NO_EN}    No.
# ${INCOMECODE_SEARCH_LBL_RESULT_NO_LOCATOR}    id=dx-col-6
#Income Code
${INCOMECODE_SEARCH_LBL_RESULT_INCOMECODE_TH}    รหัสรายได้
${INCOMECODE_SEARCH_LBL_RESULT_INCOMECODE_EN}    Income code
${INCOMECODE_SEARCH_LBL_RESULT_INCOMECODE_LOCATOR}    id=dx-col-11
#Income Name
${INCOMECODE_SEARCH_LBL_RESULT_INCOMENAME_TH}    ชื่อรายได้
${INCOMECODE_SEARCH_LBL_RESULT_INCOMENAME_EN}    Income Name
${INCOMECODE_SEARCH_LBL_RESULT_INCOMENAME_LOCATOR}    id=dx-col-12
#Payment Order
${INCOMECODE_SEARCH_LBL_RESULT_PAYMENTORDER_TH}    ลำดับชำระเงิน
${INCOMECODE_SEARCH_LBL_RESULT_PAYMENTORDER_EN}    Payment Order
${INCOMECODE_SEARCH_LBL_RESULT_PAYMENTORDER_LOCATOR}    id=dx-col-13
#Status
${INCOMECODE_SEARCH_LBL_RESULT_STATUS_TH}    สถานะ
${INCOMECODE_SEARCH_LBL_RESULT_STATUS_EN}    Status
${INCOMECODE_SEARCH_LBL_RESULT_STATUS_LOCATOR}    id=dx-col-14
#No Data
${INCOMECODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[6]/span
#For check value table 
${INCOMECODE_SEARCH_LBL_RESULT_DATA_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[row]/td[col]
${INCOMECODE_SEARCH_NUMCOL}    4
@{INCOMECODE_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_TH}    incomeCode    incomeNameTh    paymentOrder    status
@{INCOMECODE_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_EN}    incomeCode    incomeNameEn    paymentOrder    status

############################ 
#-------------------------------------------- View Incomecode --------------------------------------------#
#Incomecode Details
${INCOMECODE_VIEW_LBL_INCOMECODEDETAILS_TH}    ดูรายละเอียดรหัสรายได้ 
${INCOMECODE_VIEW_LBL_INCOMECODEDETAILS_EN}    Incomecode Details
${INCOMECODE_VIEW_LBL_INCOMECODEDETAILS_LOCATOR}    id=lblIncomecodeDetails
#Incomecode NameTh
${INCOMECODE_VIEW_LBL_INCOMECODENAMETH_TH}    ชื่อรายได้ ภาษาไทย
${INCOMECODE_VIEW_LBL_INCOMECODENAMETH_EN}    Incomecode NameTh
${INCOMECODE_VIEW_LBL_INCOMECODENAMETH_LOCATOR}    id=lblIncomecodeNameThView
${INCOMECODE_VIEW_LBD_INCOMECODENAMETH_LOCATOR}    id=lbdIncomecodeNameThView
#Incomecode NameEn
${INCOMECODE_VIEW_LBL_INCOMECODENAMEEN_TH}    ชื่อรายได้ ภาษาอังกฤษ
${INCOMECODE_VIEW_LBL_INCOMECODENAMEEN_EN}    Incomecode NameEn
${INCOMECODE_VIEW_LBL_INCOMECODENAMEEN_LOCATOR}    id=lblIncomecodeNameEnView
${INCOMECODE_VIEW_LBD_INCOMECODENAMEEN_LOCATOR}    id=lbdIncomecodeNameEnView
#Income code
${INCOMECODE_VIEW_LBL_INCOMECODE_TH}    รหัสรายได้
${INCOMECODE_VIEW_LBL_INCOMECODE_EN}    Income code
${INCOMECODE_VIEW_LBL_INCOMECODE_LOCATOR}    id=lblIncomeCodeView
${INCOMECODE_VIEW_LBD_INCOMECODE_LOCATOR}    id=lbdIncomeCodeView
#Status
${INCOMECODE_VIEW_LBL_STATUS_TH}    สถานะ
${INCOMECODE_VIEW_LBL_STATUS_EN}    Status
${INCOMECODE_VIEW_LBL_STATUS_LOCATOR}    id=lblStatusView
${INCOMECODE_VIEW_LBD_STATUS_LOCATOR}    id=lbdStatusView
#Group Type
${INCOMECODE_VIEW_LBL_GROUPTYPE_TH}    ประเภทกลุ่มรหัส
${INCOMECODE_VIEW_LBL_GROUPTYPE_EN}    Group Type
${INCOMECODE_VIEW_LBL_GROUPTYPE_LOCATOR}    id=lblGroupTypeView
${INCOMECODE_VIEW_LBD_GROUPTYPE_LOCATOR}    id=lbdGroupTypeView
#Price Per Unit
${INCOMECODE_VIEW_LBL_PRICEPERUNIT_TH}    ราคาต่อหน่วย
${INCOMECODE_VIEW_LBL_PRICEPERUNIT_EN}    Price Per Unit
${INCOMECODE_VIEW_LBL_PRICEPERUNIT_LOCATOR}    id=lblPricePerUnitView
${INCOMECODE_VIEW_LBD_PRICEPERUNIT_LOCATOR}    id=lbdPricePerUnitView
#Calculation Type (every specified month)
${INCOMECODE_VIEW_LBL_GROUPTYPE_TH}    ประเภทการคำนวณ (ทุกเดือนที่กำหนด)
${INCOMECODE_VIEW_LBL_GROUPTYPE_EN}    Calculation Type (every specified month)
${INCOMECODE_VIEW_LBL_GROUPTYPE_LOCATOR}    id=lblCalculationTypeView
${INCOMECODE_VIEW_LBD_GROUPTYPE_LOCATOR}    id=lbdCalculationTypeView
#Calculation Method
${INCOMECODE_VIEW_LBL_CALCULATIONMETHOD_TH}    การคำนวณ
${INCOMECODE_VIEW_LBL_MULCTMETHOD_EN}    Calculation Method
${INCOMECODE_VIEW_LBL_MULCTMETHOD_LOCATOR}    id=lblCalulationMethodView
${INCOMECODE_VIEW_LBD_MULCTMETHOD_LOCATOR}    id=lbdCalulationMethodView
#Payment Order 
${INCOMECODE_VIEW_LBL_PAYMENTORDER_TH}    ลำดับชำระเงิน
${INCOMECODE_VIEW_LBL_PAYMENTORDER_EN}    Payment Order 
${INCOMECODE_VIEW_LBL_PAYMENTORDER_LOCATOR}    id=lblPaymentOrderView
${INCOMECODE_VIEW_LBD_PAYMENTORDER_LOCATOR}    id=lbdPaymentOrderView
#Minimum Unit
${INCOMECODE_VIEW_LBL_MINIMUMUNIT_TH}    ขั้นต่ำจำนวนหน่วย
${INCOMECODE_VIEW_LBL_MINIMUMUNIT_EN}    Minimum Unit
${INCOMECODE_VIEW_LBL_MINIMUMUNIT_LOCATOR}    id=lblMinimumUnitView
${INCOMECODE_VIEW_LBD_MINIMUMUNIT_LOCATOR}    id=lbdMinimumUnitView
#Minimum Price
${INCOMECODE_VIEW_LBL_MINIMUMPRICE_TH}    ขั้นต่ำจำนวนเงิน
${INCOMECODE_VIEW_LBL_MINIMUMPRICE_EN}    Minimum Price
${INCOMECODE_VIEW_LBL_MINIMUMPRICE_LOCATOR}    id=lblMinimumPriceView
${INCOMECODE_VIEW_LBD_MINIMUMPRICE_LOCATOR}    id=lbdMinimumPriceView
#Vat.(%)
${INCOMECODE_VIEW_LBL_VAT_TH}    ภาษีมูลค่าเพิ่ม (%)
${INCOMECODE_VIEW_LBL_VAT_EN}    Vat.(%)
${INCOMECODE_VIEW_LBL_VAT_LOCATOR}    id=lblVatView
${INCOMECODE_VIEW_LBD_VAT_LOCATOR}    id=lbdVatView
#Tax.(%)
${INCOMECODE_VIEW_LBL_TAX_TH}    ภาษีถูกหัก ณ ที่จ่าย (%)
${INCOMECODE_VIEW_LBL_TAX_EN}    Tax.(%)
${INCOMECODE_VIEW_LBL_TAX_LOCATOR}    id=lblTaxView
${INCOMECODE_VIEW_LBD_TAX_LOCATOR}    id=lbdTaxView

#Charge a mulct
${INCOMECODE_VIEW_LBL_CHARGEAMULCT_TH}    คิดค่าปรับ
${INCOMECODE_VIEW_LBL_CHARGEAMULCT_EN}    Charge a mulct
${INCOMECODE_VIEW_LBL_CHARGEAMULCT_LOCATOR}    id=lblChargeAMuclctView
${INCOMECODE_VIEW_LBD_CHARGEAMULCT_LOCATOR}    id=lbdChargeAMuclctView
#Mulctcode
${INCOMECODE_VIEW_LBL_MULCTCODE_TH}    รหัสค่าปรับ
${INCOMECODE_VIEW_LBL_MULCTCODE_EN}    Mulctcode
${INCOMECODE_VIEW_LBL_MULCTCODE_LOCATOR}    id=lblMulctcodeView
${INCOMECODE_VIEW_LBD_MULCTCODE_LOCATOR}    id=lbdMulctcodeView
#Remark 
${INCOMECODE_VIEW_LBL_REMARK_TH}    หมายเหตุ
${INCOMECODE_VIEW_LBL_REMARK_EN}    Remark
${INCOMECODE_VIEW_LBL_REMARK_LOCATOR}    id=lblRemarkView
${INCOMECODE_VIEW_LBD_REMARK_LOCATOR}    id=lbdRemarkView

#-------------------------------------------- Create Incomecode --------------------------------------------#
#Create Incomecode
${INCOMECODE_ADD_LBL_CREATEINCOMECODE_TH}    เพิ่มรหัสรายได้ 
${INCOMECODE_ADD_LBL_CREATEINCOMECODE_EN}    Create Incomecode
${INCOMECODE_ADD_LBL_CREATEINCOMECODE_LOCATOR}    id=CreateIncomecode

#Incomecode NameTh *
${INCOMECODE_ADD_LBL_INCOMECODENAMETH_TH}    ชื่อรายได้ ภาษาไทย
${INCOMECODE_ADD_LBL_INCOMECODENAMETH_EN}    Incomecode NameTh
${INCOMECODE_ADD_LBL_INCOMECODENAMETH_LOCATOR}    id=lblIncomecodeNameThCreate
${INCOMECODE_ADD_LBL_INCOMECODENAMETH_VALID_LOCATOR}    id=lblIncomecodeNameThCreateValid
${INCOMECODE_ADD_TXT_INCOMECODENAMETH_LOCATOR}    id=txtIncomecodeNameThCreate
#Incomecode NameEn
${INCOMECODE_ADD_LBL_INCOMECODENAMEEN_TH}    ชื่อรายได้ ภาษาอังกฤษ
${INCOMECODE_ADD_LBL_INCOMECODENAMEEN_EN}    Incomecode NameEn
${INCOMECODE_ADD_LBL_INCOMECODENAMEEN_LOCATOR}    id=lblIncomecodeNameEnCreate
${INCOMECODE_ADD_TXT_INCOMECODENAMEEN_LOCATOR}    id=txtIncomecodeNameEnCreate
#Incomecode *
${INCOMECODE_ADD_LBL_INCOMECODE_TH}    รหัสรายได้
${INCOMECODE_ADD_LBL_INCOMECODE_EN}    Income code
${INCOMECODE_ADD_LBL_INCOMECODE_LOCATOR}    id=lblIncomecodeCreate
${INCOMECODE_ADD_LBL_INCOMECODE_VALID_LOCATOR}    id=lblIncomecodeCreateValid
${INCOMECODE_ADD_TXT_INCOMECODE_LOCATOR}    id=txtIncomecodeCreate
#Status *
${INCOMECODE_ADD_LBL_STATUS_TH}    สถานะ
${INCOMECODE_ADD_LBL_STATUS_EN}    Status
${INCOMECODE_ADD_LBL_STATUS_LOCATOR}    id=lblStatusCreate
${INCOMECODE_ADD_LBL_STATUS_VALID_LOCATOR}    id=lblStatusCreateValid
${INCOMECODE_ADD_LBL_STATUS_PLACEHOLDER_VALUE}    1
${INCOMECODE_ADD_LBL_STATUS_PLACEHOLDER_LOCATOR}    css=#ddlStatus div[class="dx-placeholder dx-state-invisible"]
${INCOMECODE_ADD_TXT_STATUS_LOCATOR}    id=//*[@id="ddlStatusCreate"]/nz-select-top-control/nz-select-search/input
${INCOMECODE_ADD_DDL_STATUS_LOCATOR}    id=ddlStatusCreate
${INCOMECODE_ADD_DDL_STATUS_LIST_LOCATOR}    xpath=/html/body/div/div[3]/div/nz-option-container/div/cdk-virtual-scroll-viewport/div[1]/nz-option-item[replace_indexList]/div/span
${INCOMECODE_ADD_DDL_STATUS_CLASS_LOCATOR}    class=ant-select-item-option-content
@{INCOMECODE_ADD_DDL_STATUS_TH_VALUE}    ไม่ใช้งาน    ใช้งาน
@{INCOMECODE_ADD_DDL_STATUS_EN_VALUE}    Inactive    Active
#Group Type *
${INCOMECODE_ADD_LBL_GROUPTYPE_TH}    ประเภทกลุ่มรหัส
${INCOMECODE_ADD_LBL_GROUPTYPE_EN}    Group Type
${INCOMECODE_ADD_LBL_GROUPTYPE_LOCATOR}    id=lblGroupTypeCreate
${INCOMECODE_ADD_LBL_GROUPTYPE_VALID_LOCATOR}    id=lblGroupTypeCreateValid
${INCOMECODE_ADD_LBL_GROUPTYPE_PLACEHOLDER_LOCATOR}    css=#ddlGroupTypeCreate div[class="dx-placeholder"]
${INCOMECODE_ADD_TXT_GROUPTYPE_LOCATOR}    id=//*[@id="ddlGroupTypeCreate"]/nz-select-top-control/nz-select-search/input
${INCOMECODE_ADD_TXT_GROUPTYPE_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlGroupTypeCreate"]/div[2]/div/div
${INCOMECODE_ADD_DDL_GROUPTYPE_LOCATOR}    id=ddlGroupTypeCreate
${INCOMECODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    xpath=/html/body/div/div[3]/div/nz-option-container/div/cdk-virtual-scroll-viewport/div[1]/nz-option-item[replace_indexList]/div/span
# ${INCOMECODE_ADD_DDL_GROUPTYPE_FORCREATE2DATA_LIST_LOCATOR}    xpath=//*[@id="cdk-overlay-6"]/nz-option-container/div/cdk-virtual-scroll-viewport/div[1]/nz-option-item[replace_indexList]/div/span
${INCOMECODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    class=ant-select-item-option-content
#Price Per Unit *
${INCOMECODE_ADD_LBL_PRICEPERUNIT_TH}    ราคาต่อหน่วย
${INCOMECODE_ADD_LBL_PRICEPERUNIT_EN}    Price Per Unit
${INCOMECODE_ADD_LBL_PRICEPERUNIT_LOCATOR}    id=lblPricePerUnitCreate
${INCOMECODE_ADD_LBL_PRICEPERUNIT_VALID_LOCATOR}    id=lblPricePerUnitCreateValid
${INCOMECODE_ADD_TXT_PRICEPERUNIT_LOCATOR}    id=txtPricePerUnitCreate
${INCOMECODE_ADD_INPUT_PRICEPERUNIT_LOCATOR}    id=input_txtPricePerUnitCreate
#Calculation type (every specified month)
${INCOMECODE_ADD_LBL_CALCULATIONTYPE_TH}    ประเภทการคำนวณ (ทุกเดือนที่กำหนด)
${INCOMECODE_ADD_LBL_CALCULATIONTYPE_EN}    Calculation type (every specified month)
${INCOMECODE_ADD_LBL_CALCULATIONTYPE_LOCATOR}    id=lblCalculationTypeCreate
# ${INCOMECODE_ADD_LBL_CALCULATIONTYPE_VALID_LOCATOR}    id=lblCalculationTypeCreateValid
# ${INCOMECODE_ADD_LBL_CALCULATIONTYPE_PLACEHOLDER_LOCATOR}    css=#ddlCalculationTypeCreate div[class="dx-placeholder"]
${INCOMECODE_ADD_TXT_CALCULATIONTYPE_LOCATOR}    id=//*[@id="ddlCalculationTypeCreate"]/nz-select-top-control/nz-select-search/input
${INCOMECODE_ADD_TXT_CALCULATIONTYPE_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlGroupTypeCreate"]/div[2]/div/div
${INCOMECODE_ADD_DDL_CALCULATIONTYPE_LOCATOR}    id=ddlCalculationTypeCreate
${INCOMECODE_ADD_DDL_CALCULATIONTYPE_LIST_LOCATOR}    xpath=/html/body/div/div[3]/div/nz-option-container/div/cdk-virtual-scroll-viewport/div[1]/nz-option-item[replace_indexList]/div/span
# ${INCOMECODE_ADD_DDL_CALCULATIONTYPE_FORCREATE2DATA_LIST_LOCATOR}    xpath=//*[@id="cdk-overlay-6"]/nz-option-container/div/cdk-virtual-scroll-viewport/div[1]/nz-option-item[replace_indexList]/div/span
${INCOMECODE_ADD_DDL_CALCULATIONTYPE_CLASS_LOCATOR}    class=ant-select-item-option-content
#Calculation Method *
${INCOMECODE_ADD_LBL_CALCULATIONMETHOD_TH}    การคำนวณ
${INCOMECODE_ADD_LBL_CALCULATIONMETHOD_EN}    Calculation Method
${INCOMECODE_ADD_LBL_CALCULATIONMETHOD_LOCATOR}    id=lblCalculationMethodCreate
${INCOMECODE_ADD_LBL_CALCULATIONMETHOD_VALID_LOCATOR}    id=lblCalculationMethodCreateValid
${INCOMECODE_ADD_LBL_CALCULATIONMETHOD_PLACEHOLDER_LOCATOR}    css=#ddlCalculationMethodCreate div[class="dx-placeholder"]
${INCOMECODE_ADD_TXT_CALCULATIONMETHOD_LOCATOR}    id=//*[@id="ddlCalculationMethodCreate"]/nz-select-top-control/nz-select-search/input
${INCOMECODE_ADD_TXT_CALCULATIONMETHOD_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlMulctMethodCreate"]/div[2]/div/div
${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LOCATOR}    id=ddlCalculationMethodCreate
# ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
# ${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    xpath=/html/body/div/div[3]/div/nz-option-container/div/cdk-virtual-scroll-viewport/div[replace_indexList]/nz-option-item/div/span
${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    xpath=/html/body/div/div[3]/div/nz-option-container/div/cdk-virtual-scroll-viewport/div[1]/nz-option-item[replace_indexList]/div/span
${INCOMECODE_ADD_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    class=ant-select-item-option-content
#Minimum Unit * 
${INCOMECODE_ADD_LBL_MINIMUMUNIT_TH}    ขั้นต่ำจำนวนหน่วย
${INCOMECODE_ADD_LBL_MINIMUMUNIT_EN}    Minimum Unit
${INCOMECODE_ADD_LBL_MINIMUMUNIT_LOCATOR}    id=lblMinimumUnitCreate
${INCOMECODE_ADD_LBL_MINIMUMUNIT_VALID_LOCATOR}    id=lblMinimumUnitCreateValid
${INCOMECODE_ADD_TXT_MINIMUMUNIT_LOCATOR}    id=txtMinimumUnitCreate
${INCOMECODE_ADD_INPUT_MINIMUMUNIT_LOCATOR}    id=input_txtMinimumUnitCreate
#Minimum Price *
${INCOMECODE_ADD_LBL_MINIMUMPRICE_TH}    ขั้นต่ำจำนวนเงิน
${INCOMECODE_ADD_LBL_MINIMUMPRICE_EN}    Minimum Price
${INCOMECODE_ADD_LBL_MINIMUMPRICE_LOCATOR}    id=lblMinimumPriceCreate
${INCOMECODE_ADD_LBL_MINIMUMPRICE_VALID_LOCATOR}    id=lblMinimumPriceCreateValid
${INCOMECODE_ADD_TXT_MINIMUMPRICE_LOCATOR}    id=txtMinimumPriceCreate
${INCOMECODE_ADD_INPUT_MINIMUMPRICE_LOCATOR}    id=input_txtMinimumPriceCreate
#Vat.(%) *
${INCOMECODE_ADD_LBL_VAT_TH}    ภาษีมูลค่าเพิ่ม (%)
${INCOMECODE_ADD_LBL_VAT_EN}    Vat.(%)
${INCOMECODE_ADD_LBL_VAT_LOCATOR}    id=lblVatCreate
${INCOMECODE_ADD_LBL_VAT_VALID_LOCATOR}    id=lblVatCreateValid
${INCOMECODE_ADD_INPUT_VAT_LOCATOR}    id=input_txtVatCreate
${INCOMECODE_ADD_TXT_VAT_LOCATOR}    id=txtVatCreate
#Tax.(%) *
${INCOMECODE_ADD_LBL_TAX_TH}    ภาษีถูกหัก ณ ที่จ่าย (%)
${INCOMECODE_ADD_LBL_TAX_EN}    Tax.(%)
${INCOMECODE_ADD_LBL_TAX_LOCATOR}    id=lblTaxCreate
${INCOMECODE_ADD_LBL_TAX_VALID_LOCATOR}    id=lblTaxCreateValid
${INCOMECODE_ADD_INPUT_TAX_LOCATOR}    id=input_txtTaxCreate
${INCOMECODE_ADD_TXT_TAX_LOCATOR}    id=txtTaxCreate
#Charge a mulct *
${INCOMECODE_ADD_LBL_CHAGEAMULCT_TH}    คิดค่าปรับ
${INCOMECODE_ADD_LBL_CHAGEAMULCT_EN}    Charge a mulct
${INCOMECODE_ADD_LBL_CHAGEAMULCT_LOCATOR}    id=lblChargeAMulctCreate
${INCOMECODE_ADD_LBL_CHAGEAMULCT_NOPENALTYCHARGE_TH}    ไม่คิดค่าปรับ
${INCOMECODE_ADD_LBL_CHAGEAMULCT_NOPENALTYCHARGE_EN}    No penalty charge
${INCOMECODE_ADD_LBL_CHAGEAMULCT_NOPENALTYCHARGE_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/form/div/div[7]/div/div/dx-radio-group/div/div[1]/div[2]
${INCOMECODE_ADD_RDL_CHAGEAMULCT_NOPENALTYCHARGE_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/form/div/div[7]/div/div/dx-radio-group/div/div[1]/div[1]/div
${INCOMECODE_ADD_LBL_CHAGEAMULCT_CHARGEAFINE_TH}    คิดค่าปรับ 
${INCOMECODE_ADD_LBL_CHAGEAMULCT_CHARGEAFINE_EN}    Charge a fine
${INCOMECODE_ADD_LBL_CHAGEAMULCT_CHARGEAFINE_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/form/div/div[7]/div/div/dx-radio-group/div/div[2]/div[2]
${INCOMECODE_ADD_RDL_CHAGEAMULCT_CHARGEAFINE_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/form/div/div[7]/div/div/dx-radio-group/div/div[2]/div[1]/div
${INCOMECODE_ADD_LBL_CHAGEAMULCT_VALID_LOCATOR}    id=lblChargeAMulctCreateValid
${INCOMECODE_ADD_RDL_CHAGEAMULCT_LOCATOR}    id=rdlChargeamulctCreate
#Mulctcode * 
${INCOMECODE_ADD_LBL_MULCTCODE_TH}    รหัสค่าปรับ
${INCOMECODE_ADD_LBL_MULCTCODE_EN}    Mulctcode
${INCOMECODE_ADD_LBL_MULCTCODE_LOCATOR}    id=lblMulctcodeCreate
${INCOMECODE_ADD_LBL_MULCTCODE_VALID_LOCATOR}    id=lblMulctCodeCreateValid
${INCOMECODE_ADD_LBL_MULCTCODE_PLACEHOLDER_LOCATOR}    css=#ddlMulctcodeCreate div[class="dx-placeholder"]
${INCOMECODE_ADD_TXT_MULCTCODE_LOCATOR}    id=//*[@id="ddlMulctcodeCreate"]/nz-select-top-control/nz-select-search/input
${INCOMECODE_ADD_TXT_MULCTCODE_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlMulctMethodCreate"]/div[2]/div/div
${INCOMECODE_ADD_DDL_MULCTCODE_LOCATOR}    id=ddlMulctcodeCreate
# ${INCOMECODE_ADD_DDL_MULCTCODE_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${INCOMECODE_ADD_DDL_MULCTCODE_LIST_LOCATOR}    xpath=/html/body/div/div[3]/div/nz-option-container/div/cdk-virtual-scroll-viewport/div[replace_indexList]/nz-option-item/div/span
${INCOMECODE_ADD_DDL_MULCTCODE_CLASS_LOCATOR}    class=ant-select-item-option-content

#Remark 
${INCOMECODE_ADD_LBL_REMARK_TH}    หมายเหตุ
${INCOMECODE_ADD_LBL_REMARK_EN}    Remark
${INCOMECODE_ADD_LBL_REMARK_LOCATOR}    id=lblRemarkCreate
${INCOMECODE_ADD_TXTAREA_REMARK_LOCATOR}    id=txtareaRemarkCreate

#-------------------------------------------- Edit Incomecode --------------------------------------------#
#Edit Incomecode
${INCOMECODE_EDIT_LBL_EDITINCOMECODE_TH}    แก้ไขจัดการรหัสรายได้
${INCOMECODE_EDIT_LBL_EDITINCOMECODE_EN}    Edit Incomecode
${INCOMECODE_EDIT_LBL_EDITINCOMECODE_LOCATOR}    id=lblEditIncomecode

#Incomecode NameTh *
${INCOMECODE_EDIT_LBL_INCOMECODENAMETH_TH}    ชื่อรายได้ ภาษาไทย
${INCOMECODE_EDIT_LBL_INCOMECODENAMETH_EN}    Incomecode NameTh
${INCOMECODE_EDIT_LBL_INCOMECODENAMETH_LOCATOR}    id=lblIncomecodeNameThEdit
${INCOMECODE_EDIT_LBL_INCOMECODENAMETH_VALID_LOCATOR}    id=lblIncomecodeNameThEditValid
${INCOMECODE_EDIT_TXT_INCOMECODENAMETH_LOCATOR}    id=txtIncomecodeNameThEdit
#Incomecode NameEn
${INCOMECODE_EDIT_LBL_INCOMECODENAMEEN_TH}    ชื่อรายได้ ภาษาอังกฤษ
${INCOMECODE_EDIT_LBL_INCOMECODENAMEEN_EN}    Incomecode NameEn
${INCOMECODE_EDIT_LBL_INCOMECODENAMEEN_LOCATOR}    id=lblIncomecodeNameEnEdit
${INCOMECODE_EDIT_TXT_INCOMECODENAMEEN_LOCATOR}    id=txtIncomecodeNameEnEdit
#Incomecode *
${INCOMECODE_EDIT_LBL_INCOMECODE_TH}    รหัสรายได้
${INCOMECODE_EDIT_LBL_INCOMECODE_EN}    Income code
${INCOMECODE_EDIT_LBL_INCOMECODE_LOCATOR}    id=lblIncomecodeEdit
${INCOMECODE_EDIT_LBL_INCOMECODE_VALID_LOCATOR}    id=lblIncomecodeEditValid
${INCOMECODE_EDIT_TXT_INCOMECODE_LOCATOR}    id=txtIncomecodeEdit
#Status *
${INCOMECODE_EDIT_LBL_STATUS_TH}    สถานะ
${INCOMECODE_EDIT_LBL_STATUS_EN}    Status
${INCOMECODE_EDIT_LBL_STATUS_LOCATOR}    id=lblStatusEdit
${INCOMECODE_EDIT_LBL_STATUS_VALID_LOCATOR}    id=lblStatusEditValid
${INCOMECODE_EDIT_LBL_STATUS_PLACEHOLDER_VALUE}    1
${INCOMECODE_EDIT_LBL_STATUS_PLACEHOLDER_LOCATOR}    css=#ddlStatus div[class="dx-placeholder dx-state-invisible"]
${INCOMECODE_EDIT_TXT_STATUS_LOCATOR}    xpath=//*[@id="ddlStatusEdit"]/nz-select-top-control/nz-select-search/input
${INCOMECODE_EDIT_DDL_STATUS_LOCATOR}    id=ddlStatusEdit
${INCOMECODE_EDIT_DDL_STATUS_LIST_LOCATOR}    xpath=/html/body/div/div[3]/div/nz-option-container/div/cdk-virtual-scroll-viewport/div[1]/nz-option-item[replace_indexList]/div/span
${INCOMECODE_EDIT_DDL_STATUS_CLASS_LOCATOR}    class=ant-select-item-option-content
@{INCOMECODE_EDIT_DDL_STATUS_TH_VALUE}    ไม่ใช้งาน    ใช้งาน
@{INCOMECODE_EDIT_DDL_STATUS_EN_VALUE}    Inactive    Active
#Group Type *
${INCOMECODE_EDIT_LBL_GROUPTYPE_TH}    ประเภทกลุ่มรหัส
${INCOMECODE_EDIT_LBL_GROUPTYPE_EN}    Group Type
${INCOMECODE_EDIT_LBL_GROUPTYPE_LOCATOR}    id=lblGroupTypeEdit
${INCOMECODE_EDIT_LBL_GROUPTYPE_VALID_LOCATOR}    id=lblGroupTypeEditValid
${INCOMECODE_EDIT_LBL_GROUPTYPE_PLACEHOLDER_LOCATOR}    css=#ddlGroupTypeEdit div[class="dx-placeholder"]
${INCOMECODE_EDIT_TXT_GROUPTYPE_LOCATOR}    xpath=//*[@id="ddlGroupTypeEdit"]/nz-select-top-control/nz-select-search/input
${INCOMECODE_EDIT_TXT_GROUPTYPE_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlGroupTypeEdit"]/div[2]/div/div
${INCOMECODE_EDIT_DDL_GROUPTYPE_LOCATOR}    id=ddlGroupTypeEdit
# ${INCOMECODE_EDIT_DDL_GROUPTYPE_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${INCOMECODE_EDIT_DDL_GROUPTYPE_LIST_LOCATOR}    xpath=/html/body/div/div[3]/div/nz-option-container/div/cdk-virtual-scroll-viewport/div[1]/nz-option-item[replace_indexList]/div/span
${INCOMECODE_EDIT_DDL_GROUPTYPE_CLASS_LOCATOR}    class=ant-select-item-option-content
#Price Per Unit *
${INCOMECODE_EDIT_LBL_PRICEPERUNIT_TH}    ราคาต่อหน่วย
${INCOMECODE_EDIT_LBL_PRICEPERUNIT_EN}    Price Per Unit
${INCOMECODE_EDIT_LBL_PRICEPERUNIT_LOCATOR}    id=lblPricePerUnitEdit
${INCOMECODE_EDIT_LBL_PRICEPERUNIT_VALID_LOCATOR}    id=lblPricePerUnitEditValid
${INCOMECODE_EDIT_TXT_PRICEPERUNIT_LOCATOR}    id=txtPricePerUnitEdit
${INCOMECODE_EDIT_INPUT_PRICEPERUNIT_LOCATOR}    id=input_txtPricePerUnitEdit
#Calculation type (every specified month)
${INCOMECODE_EDIT_LBL_CALCULATIONTYPE_TH}    ประเภทการคำนวณ (ทุกเดือนที่กำหนด)
${INCOMECODE_EDIT_LBL_CALCULATIONTYPE_EN}    Calculation type (every specified month)
${INCOMECODE_EDIT_LBL_CALCULATIONTYPE_LOCATOR}    id=lblCalculationtypeEdit
# ${INCOMECODE_EDIT_LBL_CALCULATIONTYPE_VALID_LOCATOR}    id=lblCalculationtypeEditValid
${INCOMECODE_EDIT_LBL_CALCULATIONTYPE_PLACEHOLDER_LOCATOR}    css=#ddlCalculationtypeEdit div[class="dx-placeholder"]
${INCOMECODE_EDIT_TXT_CALCULATIONTYPE_LOCATOR}    xpath=//*[@id="ddlCalculationtypeEdit"]/nz-select-top-control/nz-select-search/input
${INCOMECODE_EDIT_TXT_CALCULATIONTYPE_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlMulctMethodId"]/div[2]/div/div
${INCOMECODE_EDIT_DDL_CALCULATIONTYPE_LOCATOR}    id=ddlCalculationtypeEdit
# ${INCOMECODE_EDIT_DDL_CALCULATIONTYPE_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${INCOMECODE_EDIT_DDL_CALCULATIONTYPE_LIST_LOCATOR}    xpath=/html/body/div/div[3]/div/nz-option-container/div/cdk-virtual-scroll-viewport/div[1]/nz-option-item[replace_indexList]/div/span
${INCOMECODE_EDIT_DDL_CALCULATIONTYPE_CLASS_LOCATOR}    class=ant-select-item-option-content
#Payment Order *
${INCOMECODE_EDIT_LBL_PAYMENTORDER_TH}    ลำดับชำระเงิน
${INCOMECODE_EDIT_LBL_PAYMENTORDER_EN}    Payment Order
${INCOMECODE_EDIT_LBL_PAYMENTORDER_LOCATOR}    id=lblPaymentOrderEdit
${INCOMECODE_EDIT_LBL_PAYMENTORDER_VALID_LOCATOR}    id=lblPaymentOrderEditValid
${INCOMECODE_EDIT_TXT_PAYMENTORDER_LOCATOR}    id=txtPaymentOrderEdit
${INCOMECODE_EDIT_INPUT_PAYMENTORDER_LOCATOR}    id=input_txtPaymentOrderEdit
#Calculation Method *
${INCOMECODE_EDIT_LBL_CALCULATIONMETHOD_TH}    การคำนวณ
${INCOMECODE_EDIT_LBL_CALCULATIONMETHOD_EN}    Calculation Method
${INCOMECODE_EDIT_LBL_CALCULATIONMETHOD_LOCATOR}    id=lblCalculationMethodEdit
${INCOMECODE_EDIT_LBL_CALCULATIONMETHOD_VALID_LOCATOR}    id=lblCalculationMethodValid
${INCOMECODE_EDIT_LBL_CALCULATIONMETHOD_PLACEHOLDER_LOCATOR}    css=#ddlCalculationMethodEdit div[class="dx-placeholder"]
${INCOMECODE_EDIT_TXT_CALCULATIONMETHOD_LOCATOR}    id=//*[@id="ddlCalculationMethodEdit"]/nz-select-top-control/nz-select-search/input
${INCOMECODE_EDIT_TXT_CALCULATIONMETHOD_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlCalculationMethodEdit"]/div[2]/div/div
${INCOMECODE_EDIT_DDL_CALCULATIONMETHOD_LOCATOR}    id=ddlCalculationMethodEdit
# ${INCOMECODE_EDIT_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${INCOMECODE_EDIT_DDL_CALCULATIONMETHOD_LIST_LOCATOR}    xpath=/html/body/div/div[3]/div/nz-option-container/div/cdk-virtual-scroll-viewport/div[1]/nz-option-item[replace_indexList]/div/span
${INCOMECODE_EDIT_DDL_CALCULATIONMETHOD_CLASS_LOCATOR}    class=ant-select-item-option-content
#Minimum Unit *
${INCOMECODE_EDIT_LBL_MINIMUMUNIT_TH}    ขั้นต่ำจำนวนหน่วย
${INCOMECODE_EDIT_LBL_MINIMUMUNIT_EN}    Minimum Unit
${INCOMECODE_EDIT_LBL_MINIMUMUNIT_LOCATOR}    id=lblMinimumUnitEdit
${INCOMECODE_EDIT_LBL_MINIMUMUNIT_VALID_LOCATOR}    id=lblMinimumUnitEditValid
${INCOMECODE_EDIT_TXT_MINIMUMUNIT_LOCATOR}    id=txtMinimumUnitEdit
${INCOMECODE_EDIT_INPUT_MINIMUMUNIT_LOCATOR}    id=input_txtMinimumUnit
#Minimum Price *
${INCOMECODE_EDIT_LBL_MINIMUMPRICE_TH}    ขั้นต่ำจำนวนเงิน
${INCOMECODE_EDIT_LBL_MINIMUMPRICE_EN}    Minimum Price
${INCOMECODE_EDIT_LBL_MINIMUMPRICE_LOCATOR}    id=lblMinimumPriceEdit
${INCOMECODE_EDIT_LBL_MINIMUMPRICE_VALID_LOCATOR}    id=lblMinimumPriceEditValid
${INCOMECODE_EDIT_TXT_MINIMUMPRICE_LOCATOR}    id=txtMinimumPriceEdit
${INCOMECODE_EDIT_INPUT_MINIMUMPRICE_LOCATOR}    id=input_txtMinimumPriceEdit
#Vat.(%) *
${INCOMECODE_EDIT_LBL_VAT_TH}    ภาษีมูลค่าเพิ่ม (%)
${INCOMECODE_EDIT_LBL_VAT_EN}    Vat.(%)
${INCOMECODE_EDIT_LBL_VAT_LOCATOR}    id=lblVatEdit
${INCOMECODE_EDIT_LBL_VAT_VALID_LOCATOR}    id=lblVatEditValid
${INCOMECODE_EDIT_INPUT_VAT_LOCATOR}    id=input_txtVatEdit
${INCOMECODE_EDIT_TXT_VAT_LOCATOR}    id=txtVatEdit
${INCOMECODE_EDIT_TXT_VAT_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="txtAccountPromptPayNumber"]/div[2]/div/div
#Tax.(%) *
${INCOMECODE_EDIT_LBL_TAX_TH}    ภาษีถูกหัก ณ ที่จ่าย (%)
${INCOMECODE_EDIT_LBL_TAX_EN}    Tax.(%)
${INCOMECODE_EDIT_LBL_TAX_LOCATOR}    id=lblTaxEdit
${INCOMECODE_EDIT_LBL_TAX_VALID_LOCATOR}    id=lblTaxEditValid
${INCOMECODE_EDIT_INPUT_TAX_LOCATOR}    id=input_txtTaxEdit
${INCOMECODE_EDIT_TXT_TAX_LOCATOR}    id=txtTaxEdit
${INCOMECODE_EDIT_TXT_TAX_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="txtAccountPromptPayNumber"]/div[2]/div/div
#Charge a mulct *
${INCOMECODE_EDIT_LBL_CHAGEAMULCT_TH}    คิดค่าปรับ
${INCOMECODE_EDIT_LBL_CHAGEAMULCT_EN}    Charge a mulct
${INCOMECODE_EDIT_LBL_CHAGEAMULCT_LOCATOR}    id=lblChargeAMulctEdit
${INCOMECODE_EDIT_LBL_CHAGEAMULCT_NOPENALTYCHARGE_TH}    ไม่คิดค่าปรับ
${INCOMECODE_EDIT_LBL_CHAGEAMULCT_NOPENALTYCHARGE_EN}    No penalty charge
${INCOMECODE_EDIT_LBL_CHAGEAMULCT_NOPENALTYCHARGE_LOCATOR}    xpath=//*[@id="rdlChargeAMulctEdit"]/div/div[1]/div[2]
${INCOMECODE_EDIT_RDL_CHAGEAMULCT_NOPENALTYCHARGE_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/form/div/div[7]/div/div/dx-radio-group/div/div[1]/div[1]/div/div
${INCOMECODE_EDIT_LBL_CHAGEAMULCT_CHARGEAFINE_TH}    คิดค่าปรับ 
${INCOMECODE_EDIT_LBL_CHAGEAMULCT_CHARGEAFINE_EN}    Charge a fine
${INCOMECODE_EDIT_LBL_CHAGEAMULCT_CHARGEAFINE_LOCATOR}    xpath=//*[@id="rdlChargeAMulctEdit"]/div/div[2]/div[2]
${INCOMECODE_EDIT_RDL_CHAGEAMULCT_CHARGEAFINE_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/form/div/div[7]/div/div/dx-radio-group/div/div[2]/div[1]/div
${INCOMECODE_EDIT_LBL_CHAGEAMULCT_VALID_LOCATOR}    id=lblChargeAMulctEditValid
${INCOMECODE_EDIT_RDL_CHAGEAMULCT_LOCATOR}    id=rdlChargeAMulctEdit
#Mulctcode *
${INCOMECODE_EDIT_LBL_MULCTCODE_TH}    รหัสค่าปรับ
${INCOMECODE_EDIT_LBL_MULCTCODE_EN}    Mulctcode
${INCOMECODE_EDIT_LBL_MULCTCODE_LOCATOR}    id=lblMulctcodeEdit
${INCOMECODE_EDIT_LBL_MULCTCODE_VALID_LOCATOR}    id=lblMulctCodeEditValid
${INCOMECODE_EDIT_LBL_MULCTCODE_PLACEHOLDER_LOCATOR}    css=#ddlMulctcodeEdit div[class="dx-placeholder"]
${INCOMECODE_EDIT_TXT_MULCTCODE_LOCATOR}    id=//*[@id="ddlMulctcodeEdit"]/nz-select-top-control/nz-select-search/input
${INCOMECODE_EDIT_TXT_MULCTCODE_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlMulctcodeEdit"]/div[2]/div/div
${INCOMECODE_EDIT_DDL_MULCTCODE_LOCATOR}    id=ddlMulctcodeEdit
# ${INCOMECODE_EDIT_DDL_MULCTCODE_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${INCOMECODE_EDIT_DDL_MULCTCODE_LIST_LOCATOR}    xpath=/html/body/div/div[3]/div/nz-option-container/div/cdk-virtual-scroll-viewport/div[replace_indexList]/nz-option-item/div/span
${INCOMECODE_EDIT_DDL_MULCTCODE_CLASS_LOCATOR}    class=ant-select-item-option-content
#Remark 
${INCOMECODE_EDIT_LBL_REMARK_TH}    หมายเหตุ
${INCOMECODE_EDIT_LBL_REMARK_EN}    Remark
${INCOMECODE_EDIT_LBL_REMARK_LOCATOR}    id=lblRemarkEdit
${INCOMECODE_EDIT_TXTAREA_REMARK_LOCATOR}    id=txtareaRemarkEdit

#Cancel
${INCOMECODE_ADDEDIT_BTN_CANCEL_TH}    ยกเลิก
${INCOMECODE_ADDEDIT_BTN_CANCEL_EN}    Cancel
${INCOMECODE_ADDEDIT_BTN_CANCEL_LOCATOR}    id=btnCancel
#Save
${INCOMECODE_ADDEDIT_BTN_SAVE_TH}    บันทึก
${INCOMECODE_ADDEDIT_BTN_SAVE_EN}    Save
${INCOMECODE_ADDEDIT_BTN_SAVE_LOCATOR}    id=btnSave
################################################################################################################################
################################################################-- Value --################################################################
#-------------------------------------------- data Create --------------------------------------------#
#Incomecode NameTh *
${INCOMECODE_INCOMECODENAMETH_VALUE}    ชื่อรายได้ ภาษาไทย
${INCOMECODE_INCOMECODENAMETH2_VALUE}    ชื่อรายได้ ภาษาไทย2
#Incomecode NameEn
${INCOMECODE_INCOMECODENAMEEN_VALUE}    ชื่อรายได้ ภาษาอังกฤษ
${INCOMECODE_INCOMECODENAMEEN_VALUE_EMPTY}    ""
${INCOMECODE_INCOMECODENAMEEN_VALUE_NONE}    None
#Incomecode *
${INCOMECODE_INCOMECODE_VALUE}    1234
${INCOMECODE_INCOMECODE2_VALUE}    4321
#Price Per Unit *
${INCOMECODE_PRICEPERUNIT_VALUE}    3.00
${INCOMECODE_PRICEPERUNIT_VIEW_VALUE}    3
${INCOMECODE_PRICEPERUNIT2_VALUE}    5.00
${INCOMECODE_PRICEPERUNIT2_VIEW_VALUE}    5
#Vat.(%) *
${INCOMECODE_VAT_VALUE}    1.00
${INCOMECODE_VAT_VIEW_VALUE}    1
${INCOMECODE_VAT2_VALUE}    3.00
${INCOMECODE_VAT2_VIEW_VALUE}    3
#Tax.(%) *
${INCOMECODE_TAX_VALUE}    2.00
${INCOMECODE_TAX_VIEW_VALUE}    2
${INCOMECODE_TAX2_VALUE}    4.00
${INCOMECODE_TAX2_VIEW_VALUE}    4
#Status *
${INCOMECODE_STATUS_TH_VALUE1}    ใช้งาน
${INCOMECODE_STATUS_EN_VALUE1}    Active
${INCOMECODE_STATUSID_VALUE1}    1
${INCOMECODE_STATUS_TH_VALUE2}    ไม่ใช้งาน
${INCOMECODE_STATUS_EN_VALUE2}    Inactive
${INCOMECODE_STATUSID_VALUE2}    0
#Group Type *
${INCOMECODE_GROUPTYPE_TH_VALUE1}    ค่าน้ำ   
${INCOMECODE_GROUPTYPE_EN_VALUE1}    Water bill
${INCOMECODE_GROUPTYPE_ID_VALUE1}    1
${INCOMECODE_GROUPTYPE_TH_VALUE2}    ค่าไฟ   
${INCOMECODE_GROUPTYPE_EN_VALUE2}    Electricity bill
${INCOMECODE_GROUPTYPE_ID_VALUE2}    2
#Calculation type (every specified month)
${INCOMECODE_CALCULATIONTYPE_TH_VALUE}    กรกฏาคม   
${INCOMECODE_CALCULATIONTYPE_EN_VALUE}    July   
${INCOMECODE_CALCULATIONTYPE_ID}    7   
#Calculation Method *
${INCOMECODE_CALCULATIONMETHOD_TH_VALUE1}    คิดตามจริง   
${INCOMECODE_CALCULATIONMETHOD_EN_VALUE1}    Actually think   
${INCOMECODE_CALCULATIONMETHOD_ID_VALUE1}    1   
${INCOMECODE_CALCULATIONMETHOD_TH_VALUE2}    คิดตามจริง ขั้นต่ำจำนวนหน่วย   
${INCOMECODE_CALCULATIONMETHOD_EN_VALUE2}    Actual thinking minimum number of units
${INCOMECODE_CALCULATIONMETHOD_ID_VALUE2}    2
${INCOMECODE_CALCULATIONMETHOD_TH_VALUE3}    คิดตามจริง ขั้นต่ำจำนวนเงิน   
${INCOMECODE_CALCULATIONMETHOD_EN_VALUE3}    Actual thinking, minimum amount
${INCOMECODE_CALCULATIONMETHOD_ID_VALUE3}    3
#Minimum Unit *
${INCOMECODE_MINIMUMUNIT_VALUE}    6.00   
${INCOMECODE_MINIMUMUNIT_VIEW_VALUE}    6
#Minimum Price *
${INCOMECODE_MINIMUMPRICE_VALUE}    7.00   
${INCOMECODE_MINIMUMPRICE_VIEW_VALUE}    7   
#Charge a mulct *
${INCOMECODE_CHARGEAMULCT_NOPENALTYCHARGE_TH_VALUE}    ไม่คิดค่าปรับ
${INCOMECODE_CHARGEAMULCT_NOPENALTYCHARGE_EN_VALUE}    No penalty charge  
${INCOMECODE_CHARGEAMULCT_CHARGEAFINE_TH_VALUE}    คิดค่าปรับ
${INCOMECODE_CHARGEAMULCT_CHARGEAFINE_EN_VALUE}    Charge a fine
#Mulct Method *
${INCOMECODE_MULCTMETHOD_TH_VALUE}    ค่าปรับ   
${INCOMECODE_MULCTMETHOD_EN_VALUE}    ค่าปรับ   
#Payment Order 
${INCOMECODE_PAYMENTORDER_VALUE}    1   

#Remark 
${INCOMECODE_REMARK_VALUE}    หมายเหตุ1
${INCOMECODE_REMARK_VALUE_NONE}    None

################################################################-- capture page screenshot --################################################################
#-------------------------------------------- Search --------------------------------------------#	
${INCOMECODE_SEARCH_M11_0_1_1_000_SUCCESS_SCREENSHOT}    M11_0_1_1_000_IncomeCode_Success_Search_VerifyScreen_Screen.png
${INCOMECODE_SEARCH_M11_1_1_1_000_SUCCESS_SCREENSHOT}    M11_1_1_1_000_IncomeCode_Success_Search_VerifyAction_Screen.png
#-------------------------------------------- View --------------------------------------------#	
${INCOMECODE_VIEW_M11_0_1_5_000_SUCCESS_SCREENSHOT}    M11_0_1_5_000_IncomeCode_Success_View_VerifyScreen_Screen.png
${INCOMECODE_VIEW_M11_1_1_5_000_SUCCESS_SCREENSHOT}    M11_1_1_5_000_IncomeCode_Success_View_VerifyAction_Screen.png
#-------------------------------------------- Create --------------------------------------------#	
${INCOMECODE_CREATE_M11_0_1_2_000_SUCCESS_SCREENSHOT}    M11_0_1_2_000_IncomeCode_Success_Create_VerifyScreen_Screen.png
${INCOMECODE_CREATE_M11_1_1_2_000_SUCCESS_SCREENSHOT}    M11_1_1_2_000_IncomeCode_Success_Create_VerifyAction_Screen.png
#-------------------------------------------- Edit --------------------------------------------#	
${INCOMECODE_EDIT_M11_0_1_3_000_SUCCESS_SCREENSHOT}    M11_0_1_3_000_IncomeCode_Success_Edit_VerifyScreen_Screen.png
${INCOMECODE_EDIT_M11_1_1_3_000_SUCCESS_SCREENSHOT}    M11_1_1_3_000_IncomeCode_Success_Edit_VerifyAction_Screen.png
#-------------------------------------------- Delete --------------------------------------------#	
${INCOMECODE_DELETE_M11_0_1_4_000_SUCCESS_SCREENSHOT}    M11_0_1_4_000_IncomeCode_Success_Delete_VerifyScreen_Screen.png
${INCOMECODE_DELETE_M11_1_1_4_000_SUCCESS_SCREENSHOT}    M11_1_1_4_000_IncomeCode_Success_Delete_VerifyAction_Screen.png























