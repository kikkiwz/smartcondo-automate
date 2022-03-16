*** Variables ***
################################################################-- Mulctcode Management --################################################################
#Create button
${MULCTCODE_BTN_CREATE_TH}    เพิ่ม
${MULCTCODE_BTN_CREATE_EN}    Create
${MULCTCODE_BTN_CREATE_LOCATOR}    id=btnCreate

${MULCTCODE_BTN_MORE_LOCATOR}    id=btnMore1
${MULCTCODE_LBL_VIEW_TH}    ดูรายละเอียด
${MULCTCODE_LBL_VIEW_EN}    View
${MULCTCODE_LBL_VIEW_TH_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-19"]
${MULCTCODE_LBL_VIEW_EN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-19"]
${MULCTCODE_BTN_VIEW_LOCATOR}    id=btnView1 
${MULCTCODE_LBL_EDIT_TH}    แก้ไข
${MULCTCODE_LBL_EDIT_EN}    Edit
${MULCTCODE_LBL_EDIT_TH_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-20"]
${MULCTCODE_LBL_EDIT_EN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-20"]
${MULCTCODE_BTN_EDIT_LOCATOR}    id=btnEdit1
${MULCTCODE_LBL_DELETE_TH}    ลบ
${MULCTCODE_LBL_DELETE_EN}    Delete
${MULCTCODE_LBL_DELETE_TH_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-21"]
${MULCTCODE_LBL_DELETE_EN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-21"]
${MULCTCODE_BTN_DELETE_LOCATOR}    id=btnDelete1

${MULCTCODE_BTN_CLOSE_LOCATOR}    class=ant-modal-close-x

${MULCTCODE_BTN_20}    20
${MULCTCODE_BTN_20_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[1]/div[1]
${MULCTCODE_BTN_50}    50
${MULCTCODE_BTN_50_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[1]/div[2]
${MULCTCODE_BTN_100}    100
${MULCTCODE_BTN_100_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[1]/div[3]
${MULCTCODE_BTN_1000}    1000
${MULCTCODE_BTN_1000_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[1]/div[4]
${MULCTCODE_LBL_PagesXFromY_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[2]/div[1]
${MULCTCODE_ICON_ARRORWLEFT_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[2]/div[2]
${MULCTCODE_LBL_PAGE_1}    1
${MULCTCODE_LBL_PAGE_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[2]/div[3]
${MULCTCODE_ICON_ARRORWRIGHT_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[2]/div[4]

${MULCTCODE_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td[3]

#-------------------------------------------- Search Mulctcode Management --------------------------------------------#
############## Header ############## 
#Mulctcode Management Header
${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_HEADER_TH}    จัดการรหัสค่าปรับ 
${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_HEADER_EN}    Mulctcode Management
${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_HEADER_LOCATOR}    xpath=/html/body/app-root/app-layouts/div/app-master/div[1]/div/div/h3
#Mulctcode Management
${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_TH}    จัดการรหัสค่าปรับ 
${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_EN}    Mulctcode Management
${MULCTCODE_SEARCH_LBL_MULCTCODEMANAGEMENT_LOCATOR}    id=lblMulctcodeManagementHeaderPage

#Mulct Code
${MULCTCODE_SEARCH_LBL_MULCTCODE_TH}    รหัสค่าปรับ
${MULCTCODE_SEARCH_LBL_MULCTCODE_EN}    Mulct Code
${MULCTCODE_SEARCH_LBL_MULCTCODE_LOCATOR}    id=lblMulctCodeSearch
${MULCTCODE_SEARCH_INPUT_MULCTCODE_LOCATOR}    id=input_txtMulctCodeSearch
${MULCTCODE_SEARCH_TXT_MULCTCODE_LOCATOR}    id=txtMulctCodeSearch
#Mulct Name
${MULCTCODE_SEARCH_LBL_MULCTNAME_TH}    ชื่อค่าปรับ
${MULCTCODE_SEARCH_LBL_MULCTNAME_EN}    Mulct Name
${MULCTCODE_SEARCH_LBL_MULCTNAME_LOCATOR}    id=lblMulctNameSearch
${MULCTCODE_SEARCH_INPUT_MULCTNAME_LOCATOR}    id=input_txtMulctNameSearch
${MULCTCODE_SEARCH_TXT_MULCTNAME_LOCATOR}    id=txtMulctNameSearch
#Status
${MULCTCODE_SEARCH_LBL_STATUS_TH}    สถานะ
${MULCTCODE_SEARCH_LBL_STATUS_EN}    Status
${MULCTCODE_SEARCH_LBL_STATUS_LOCATOR}    id=lblStatusSearch
${MULCTCODE_SEARCH_DDL_STATUS_PLACEHOLDER_VALUE}    2
${MULCTCODE_SEARCH_DDL_STATUS_PLACEHOLDER_LOCATOR}    css=#ddlStatusSearch div[class="dx-placeholder"]
${MULCTCODE_SEARCH_DDL_STATUS_LOCATOR}    id=ddlStatusSearch 
${MULCTCODE_SEARCH_DDL_STATUS_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${MULCTCODE_SEARCH_DDL_STATUS_CLASS_LOCATOR}    class=dx-list-item-content
@{MULCTCODE_SEARCH_DDL_STATUS_TH_VALUE}    ไม่ใช้งาน    ใช้งาน
@{MULCTCODE_SEARCH_DDL_STATUS_EN_VALUE}    Inactive    Active

#Search
${MULCTCODE_SEARCH_BTN_SEARCH_TH}    ค้นหา
${MULCTCODE_SEARCH_BTN_SEARCH_EN}    Search
${MULCTCODE_SEARCH_BTN_SEARCH_LOCATOR}    id=btnSearch
#Clear
${MULCTCODE_SEARCH_BTN_CLEAR_TH}    คืนค่า
${MULCTCODE_SEARCH_BTN_CLEAR_EN}    Clear
${MULCTCODE_SEARCH_BTN_CLEAR_LOCATOR}    id=btnClear

############################ 
############## Table ############## 
#No
${MULCTCODE_SEARCH_LBL_RESULT_NO_TH}    ลำดับ
${MULCTCODE_SEARCH_LBL_RESULT_NO_EN}    No.
${MULCTCODE_SEARCH_LBL_RESULT_NO_LOCATOR}    id=dx-col-6
#Mulct Code
${MULCTCODE_SEARCH_LBL_RESULT_MULCTCODE_TH}    รหัสค่าปรับ
${MULCTCODE_SEARCH_LBL_RESULT_MULCTCODE_EN}    Mulctcode
${MULCTCODE_SEARCH_LBL_RESULT_MULCTCODE_LOCATOR}    id=dx-col-7
#Mulct Name
${MULCTCODE_SEARCH_LBL_RESULT_MULCTNAME_TH}    ชื่อค่าปรับ
${MULCTCODE_SEARCH_LBL_RESULT_MULCTNAME_EN}    Mulct Name
${MULCTCODE_SEARCH_LBL_RESULT_MULCTNAME_LOCATOR}    id=dx-col-8
#Status
${MULCTCODE_SEARCH_LBL_RESULT_STATUS_TH}    สถานะ
${MULCTCODE_SEARCH_LBL_RESULT_STATUS_EN}    Status
${MULCTCODE_SEARCH_LBL_RESULT_STATUS_LOCATOR}    id=dx-col-9
#No Data
${MULCTCODE_SEARCH_LBL_RESULT_NODATA_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[6]/span
#For check value table 
${MULCTCODE_SEARCH_LBL_RESULT_DATA_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[row]/td[col]
${MULCTCODE_SEARCH_NUMCOL}    4
@{MULCTCODE_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_TH}    no    mulctCode    mulctNameTh    status
@{MULCTCODE_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_EN}    no    mulctCode    mulctNameEn    status

############################ 
#-------------------------------------------- View Mulctcode --------------------------------------------#
#Mulctcode Details
${MULCTCODE_VIEW_LBL_MULCTCODEDETAILS_TH}    ดูรายละเอียดรหัสค่าปรับ 
${MULCTCODE_VIEW_LBL_MULCTCODEDETAILS_EN}    Mulctcode Details
${MULCTCODE_VIEW_LBL_MULCTCODEDETAILS_LOCATOR}    id=lblMulctcodeDetailsView
#Mulctcode NameTh
${MULCTCODE_VIEW_LBL_MULCTCODENAMETH_TH}    ชื่อค่าปรับ ภาษาไทย 
${MULCTCODE_VIEW_LBL_MULCTCODENAMETH_EN}    Mulctcode NameTh
${MULCTCODE_VIEW_LBL_MULCTCODENAMETH_LOCATOR}    id=lblIncomecodeNameThView
${MULCTCODE_VIEW_LBD_MULCTCODENAMETH_LOCATOR}    id=lbdIncomecodeNameThView
#Mulctcode NameEn
${MULCTCODE_VIEW_LBL_MULCTCODENAMEEN_TH}    ชื่อค่าปรับ ภาษาอังกฤษ 
${MULCTCODE_VIEW_LBL_MULCTCODENAMEEN_EN}    Mulctcode NameEn
${MULCTCODE_VIEW_LBL_MULCTCODENAMEEN_LOCATOR}    id=lblIncomecodeNameEnView
${MULCTCODE_VIEW_LBD_MULCTCODENAMEEN_LOCATOR}    id=lbdIncomecodeNameEnView
#Mulctcode
${MULCTCODE_VIEW_LBL_MULCTCODE_TH}    รหัสค่าปรับ
${MULCTCODE_VIEW_LBL_MULCTCODE_EN}    Mulctcode
${MULCTCODE_VIEW_LBL_MULCTCODE_LOCATOR}    id=lblMulctCodeView
${MULCTCODE_VIEW_LBD_MULCTCODE_LOCATOR}    id=lbdMulctCodeView
#Status
${MULCTCODE_VIEW_LBL_STATUS_TH}    สถานะ
${MULCTCODE_VIEW_LBL_STATUS_EN}    Status
${MULCTCODE_VIEW_LBL_STATUS_LOCATOR}    id=lblStatusView
${MULCTCODE_VIEW_LBD_STATUS_LOCATOR}    id=lbdStatusView
#Group Type
${MULCTCODE_VIEW_LBL_GROUPTYPE_TH}    ประเภทกลุ่มรหัส
${MULCTCODE_VIEW_LBL_GROUPTYPE_EN}    Group Type
${MULCTCODE_VIEW_LBL_GROUPTYPE_LOCATOR}    id=lblGroupTypeView
${MULCTCODE_VIEW_LBD_GROUPTYPE_LOCATOR}    id=lbdGroupTypeView
#Mulct Method
${MULCTCODE_VIEW_LBL_MULCTMETHOD_TH}    วิธีการคำนวณค่าปรับ
${MULCTCODE_VIEW_LBL_MULCTMETHOD_EN}    Mulct Method
${MULCTCODE_VIEW_LBL_MULCTMETHOD_LOCATOR}    id=lblMulctMethodView
${MULCTCODE_VIEW_LBD_MULCTMETHOD_LOCATOR}    id=lbdMulctMethodView
#Vat.(%)
${MULCTCODE_VIEW_LBL_VAT_TH}    ภาษีมูลค่าเพิ่ม (%)
${MULCTCODE_VIEW_LBL_VAT_EN}    Vat.(%)
${MULCTCODE_VIEW_LBL_VAT_LOCATOR}    id=lblVatView
${MULCTCODE_VIEW_LBD_VAT_LOCATOR}    id=lbdVatView
#Tax.(%)
${MULCTCODE_VIEW_LBL_TAX_TH}    ภาษีถูกหัก ณ ที่จ่าย (%)
${MULCTCODE_VIEW_LBL_TAX_EN}    Tax.(%)
${MULCTCODE_VIEW_LBL_TAX_LOCATOR}    id=lblTaxView
${MULCTCODE_VIEW_LBD_TAX_LOCATOR}    id=lbdTaxView
#Remark 
${MULCTCODE_VIEW_LBL_REMARK_TH}    หมายเหตุ
${MULCTCODE_VIEW_LBL_REMARK_EN}    Remark
${MULCTCODE_VIEW_LBL_REMARK_LOCATOR}    id=lblRemarkView
${MULCTCODE_VIEW_LBD_REMARK_LOCATOR}    id=lbdRemarkView

#-------------------------------------------- Create Mulctcode --------------------------------------------#
#Create Mulctcode
${MULCTCODE_ADD_LBL_CREATEMULCTCODE_TH}    เพิ่มรหัสค่าปรับ 
${MULCTCODE_ADD_LBL_CREATEMULCTCODE_EN}    Create Mulctcode
${MULCTCODE_ADD_LBL_CREATEMULCTCODE_LOCATOR}    id=CreateMulctcode

#Mulctcode NameTh *
${MULCTCODE_ADD_LBL_MULCTCODENAMETH_TH}    ชื่อค่าปรับ ภาษาไทย
${MULCTCODE_ADD_LBL_MULCTCODENAMETH_EN}    Mulctcode NameTh
${MULCTCODE_ADD_LBL_MULCTCODENAMETH_LOCATOR}    id=lblMulctNameThCreate
${MULCTCODE_ADD_LBL_MULCTCODENAMETH_VALID_LOCATOR}    id=lblMulctNameThCreateValid
${MULCTCODE_ADD_TXT_MULCTCODENAMETH_LOCATOR}    id=txtMulctNameThCreate
#Mulctcode NameEn
${MULCTCODE_ADD_LBL_MULCTCODENAMEEN_TH}    ชื่อค่าปรับ ภาษาอังกฤษ
${MULCTCODE_ADD_LBL_MULCTCODENAMEEN_EN}    Mulctcode NameEn
${MULCTCODE_ADD_LBL_MULCTCODENAMEEN_LOCATOR}    id=lblMulctNameEnCreate
${MULCTCODE_ADD_TXT_MULCTCODENAMEEN_LOCATOR}    id=txtMulctNameEnCreate
#Mulctcode *
${MULCTCODE_ADD_LBL_MULCTCODE_TH}    รหัสค่าปรับ
${MULCTCODE_ADD_LBL_MULCTCODE_EN}    Mulctcode
${MULCTCODE_ADD_LBL_MULCTCODE_LOCATOR}    id=lblMulctCodeCreate
${MULCTCODE_ADD_LBL_MULCTCODE_VALID_LOCATOR}    id=lblMulctCodeCreateValid
${MULCTCODE_ADD_TXT_MULCTCODE_LOCATOR}    id=txtMulctCodeCreate
#Status *
${MULCTCODE_ADD_LBL_STATUS_TH}    สถานะ
${MULCTCODE_ADD_LBL_STATUS_EN}    Status
${MULCTCODE_ADD_LBL_STATUS_LOCATOR}    id=lblStatusCreate
${MULCTCODE_ADD_LBL_STATUS_VALID_LOCATOR}    id=lblStatusCreateValid
${MULCTCODE_ADD_LBL_STATUS_PLACEHOLDER_VALUE}    1
${MULCTCODE_ADD_LBL_STATUS_PLACEHOLDER_LOCATOR}    css=#ddlStatus div[class="dx-placeholder dx-state-invisible"]
${MULCTCODE_ADD_TXT_STATUS_LOCATOR}    id=//*[@id="ddlStatusCreate"]/nz-select-top-control/nz-select-search/input
${MULCTCODE_ADD_DDL_STATUS_LOCATOR}    id=ddlStatusCreate
${MULCTCODE_ADD_DDL_STATUS_LIST_LOCATOR}    xpath=/html/body/div/div[3]/div/nz-option-container/div/cdk-virtual-scroll-viewport/div[1]/nz-option-item[replace_indexList]/div/span
${MULCTCODE_ADD_DDL_STATUS_CLASS_LOCATOR}    class=ant-select-item-option-content
@{MULCTCODE_ADD_DDL_STATUS_TH_VALUE}    ไม่ใช้งาน    ใช้งาน
@{MULCTCODE_ADD_DDL_STATUS_EN_VALUE}    Inactive    Active
#Group Type *
${MULCTCODE_ADD_LBL_GROUPTYPE_TH}    ประเภทกลุ่มรหัส
${MULCTCODE_ADD_LBL_GROUPTYPE_EN}    Group Type
${MULCTCODE_ADD_LBL_GROUPTYPE_LOCATOR}    id=lblGroupTypeCreate
${MULCTCODE_ADD_LBL_GROUPTYPE_VALID_LOCATOR}    id=lblGroupTypeCreateValid
${MULCTCODE_ADD_LBL_GROUPTYPE_PLACEHOLDER_LOCATOR}    css=#ddlGroupTypeCreate div[class="dx-placeholder"]
${MULCTCODE_ADD_TXT_GROUPTYPE_LOCATOR}    id=//*[@id="ddlGroupTypeCreate"]/nz-select-top-control/nz-select-search/input
${MULCTCODE_ADD_TXT_GROUPTYPE_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlGroupTypeCreate"]/div[2]/div/div
${MULCTCODE_ADD_DDL_GROUPTYPE_LOCATOR}    id=ddlGroupTypeCreate
${MULCTCODE_ADD_DDL_GROUPTYPE_LIST_LOCATOR}    xpath=/html/body/div/div[3]/div/nz-option-container/div/cdk-virtual-scroll-viewport/div[1]/nz-option-item[replace_indexList]/div/span
# ${MULCTCODE_ADD_DDL_GROUPTYPE_FORCREATE2DATA_LIST_LOCATOR}    xpath=//*[@id="cdk-overlay-6"]/nz-option-container/div/cdk-virtual-scroll-viewport/div[1]/nz-option-item[replace_indexList]/div/span
${MULCTCODE_ADD_DDL_GROUPTYPE_CLASS_LOCATOR}    class=ant-select-item-option-content

#Mulct Method *
${MULCTCODE_ADD_LBL_MULCTMETHOD_TH}    วิธีการคำนวณค่าปรับ
${MULCTCODE_ADD_LBL_MULCTMETHOD_EN}    Mulct Method
${MULCTCODE_ADD_LBL_MULCTMETHOD_LOCATOR}    id=lblMulctMethodCreate
${MULCTCODE_ADD_LBL_MULCTMETHOD_VALID_LOCATOR}    id=lblMulctMethodCreateValid
${MULCTCODE_ADD_LBL_MULCTMETHOD_PLACEHOLDER_LOCATOR}    css=#ddlMulctMethodCreate div[class="dx-placeholder"]
${MULCTCODE_ADD_TXT_MULCTMETHOD_LOCATOR}    id=//*[@id="ddlMulctMethodCreate"]/nz-select-top-control/nz-select-search/input
${MULCTCODE_ADD_TXT_MULCTMETHOD_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlMulctMethodCreate"]/div[2]/div/div
${MULCTCODE_ADD_DDL_MULCTMETHOD_LOCATOR}    id=ddlMulctMethodCreate
# ${MULCTCODE_ADD_DDL_MULCTMETHOD_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${MULCTCODE_ADD_DDL_MULCTMETHOD_LIST_LOCATOR}    xpath=/html/body/div/div[3]/div/nz-option-container/div/cdk-virtual-scroll-viewport/div[replace_indexList]/nz-option-item/div/span
${MULCTCODE_ADD_DDL_MULCTMETHOD_CLASS_LOCATOR}    class=ant-select-item-option-content
#Vat.(%) *
${MULCTCODE_ADD_LBL_VAT_TH}    ภาษีมูลค่าเพิ่ม (%)
${MULCTCODE_ADD_LBL_VAT_EN}    Vat.(%)
${MULCTCODE_ADD_LBL_VAT_LOCATOR}    id=lblVatCreate
${MULCTCODE_ADD_LBL_VAT_VALID_LOCATOR}    id=lblVatCreateValid
${MULCTCODE_ADD_INPUT_VAT_LOCATOR}    id=input_txtVatCreate
${MULCTCODE_ADD_TXT_VAT_LOCATOR}    id=txtVatCreate
#Tax.(%) *
${MULCTCODE_ADD_LBL_TAX_TH}    ภาษีถูกหัก ณ ที่จ่าย (%)
${MULCTCODE_ADD_LBL_TAX_EN}    Tax.(%)
${MULCTCODE_ADD_LBL_TAX_LOCATOR}    id=lblTaxCreate
${MULCTCODE_ADD_LBL_TAX_VALID_LOCATOR}    id=lblTaxCreateValid
${MULCTCODE_ADD_INPUT_TAX_LOCATOR}    id=input_txtTaxCreate
${MULCTCODE_ADD_TXT_TAX_LOCATOR}    id=txtTaxCreate
#Remark 
${MULCTCODE_ADD_LBL_REMARK_TH}    หมายเหตุ
${MULCTCODE_ADD_LBL_REMARK_EN}    Remark
${MULCTCODE_ADD_LBL_REMARK_LOCATOR}    id=lblRemarkCreate
${MULCTCODE_ADD_TXTAREA_REMARK_LOCATOR}    id=txtareaRemarkCreate

#-------------------------------------------- Edit Mulctcode --------------------------------------------#
#Edit Mulctcode
${MULCTCODE_EDIT_LBL_EDITMULCTCODE_TH}    แก้ไขจัดการรหัสค่าปรับ
${MULCTCODE_EDIT_LBL_EDITMULCTCODE_EN}    Edit Mulctcode
${MULCTCODE_EDIT_LBL_EDITMULCTCODE_LOCATOR}    id=lblEditMulctcode

#Mulctcode NameTh *
${MULCTCODE_EDIT_LBL_MULCTCODENAMETH_TH}    ชื่อค่าปรับ ภาษาไทย
${MULCTCODE_EDIT_LBL_MULCTCODENAMETH_EN}    Mulctcode NameTh
${MULCTCODE_EDIT_LBL_MULCTCODENAMETH_LOCATOR}    id=lblMulctNameThEdit
${MULCTCODE_EDIT_LBL_MULCTCODENAMETH_VALID_LOCATOR}    id=lblMulctNameThEditValid
${MULCTCODE_EDIT_TXT_MULCTCODENAMETH_LOCATOR}    id=txtMulctNameThEdit
#Mulctcode NameEn
${MULCTCODE_EDIT_LBL_MULCTCODENAMEEN_TH}    ชื่อค่าปรับ ภาษาอังกฤษ
${MULCTCODE_EDIT_LBL_MULCTCODENAMEEN_EN}    Mulctcode NameEn
${MULCTCODE_EDIT_LBL_MULCTCODENAMEEN_LOCATOR}    id=lblMulctNameEnEdit
${MULCTCODE_EDIT_TXT_MULCTCODENAMEEN_LOCATOR}    id=txtMulctNameEnEdit
#Mulctcode *
${MULCTCODE_EDIT_LBL_MULCTCODE_TH}    รหัสค่าปรับ
${MULCTCODE_EDIT_LBL_MULCTCODE_EN}    Mulctcode
${MULCTCODE_EDIT_LBL_MULCTCODE_LOCATOR}    id=lblMulctCodeEdit
${MULCTCODE_EDIT_LBL_MULCTCODE_VALID_LOCATOR}    id=lblMulctCodeEditValid
${MULCTCODE_EDIT_TXT_MULCTCODE_LOCATOR}    id=txtMulctCodeEdit
#Status *
${MULCTCODE_EDIT_LBL_STATUS_TH}    สถานะ
${MULCTCODE_EDIT_LBL_STATUS_EN}    Status
${MULCTCODE_EDIT_LBL_STATUS_LOCATOR}    id=lblStatusEdit
${MULCTCODE_EDIT_LBL_STATUS_VALID_LOCATOR}    id=lblStatusEditValid
${MULCTCODE_EDIT_LBL_STATUS_PLACEHOLDER_VALUE}    1
${MULCTCODE_EDIT_LBL_STATUS_PLACEHOLDER_LOCATOR}    css=#ddlStatus div[class="dx-placeholder dx-state-invisible"]
${MULCTCODE_EDIT_TXT_STATUS_LOCATOR}    xpath=//*[@id="ddlStatusEdit"]/nz-select-top-control/nz-select-search/input
${MULCTCODE_EDIT_DDL_STATUS_LOCATOR}    id=ddlStatusEdit
${MULCTCODE_EDIT_DDL_STATUS_LIST_LOCATOR}    xpath=/html/body/div/div[3]/div/nz-option-container/div/cdk-virtual-scroll-viewport/div[1]/nz-option-item[replace_indexList]/div/span
${MULCTCODE_EDIT_DDL_STATUS_CLASS_LOCATOR}    class=ant-select-item-option-content
@{MULCTCODE_EDIT_DDL_STATUS_TH_VALUE}    ไม่ใช้งาน    ใช้งาน
@{MULCTCODE_EDIT_DDL_STATUS_EN_VALUE}    Inactive    Active
#Group Type *
${MULCTCODE_EDIT_LBL_GROUPTYPE_TH}    ประเภทกลุ่มรหัส
${MULCTCODE_EDIT_LBL_GROUPTYPE_EN}    Group Type
${MULCTCODE_EDIT_LBL_GROUPTYPE_LOCATOR}    id=lblGroupTypeEdit
${MULCTCODE_EDIT_LBL_GROUPTYPE_VALID_LOCATOR}    id=lblGroupTypeEditValid
${MULCTCODE_EDIT_LBL_GROUPTYPE_PLACEHOLDER_LOCATOR}    css=#ddlGroupTypeEdit div[class="dx-placeholder"]
${MULCTCODE_EDIT_TXT_GROUPTYPE_LOCATOR}    xpath=//*[@id="ddlGroupTypeEdit"]/nz-select-top-control/nz-select-search/input
${MULCTCODE_EDIT_TXT_GROUPTYPE_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlGroupTypeEdit"]/div[2]/div/div
${MULCTCODE_EDIT_DDL_GROUPTYPE_LOCATOR}    id=ddlGroupTypeEdit
# ${MULCTCODE_EDIT_DDL_GROUPTYPE_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${MULCTCODE_EDIT_DDL_GROUPTYPE_LIST_LOCATOR}    xpath=/html/body/div/div[3]/div/nz-option-container/div/cdk-virtual-scroll-viewport/div[1]/nz-option-item[replace_indexList]/div/span
${MULCTCODE_EDIT_DDL_GROUPTYPE_CLASS_LOCATOR}    class=ant-select-item-option-content
#Mulct Method *
${MULCTCODE_EDIT_LBL_MULCTMETHOD_TH}    วิธีการคำนวณค่าปรับ
${MULCTCODE_EDIT_LBL_MULCTMETHOD_EN}    Mulct Method
${MULCTCODE_EDIT_LBL_MULCTMETHOD_LOCATOR}    id=lblMulctMethodEdit
${MULCTCODE_EDIT_LBL_MULCTMETHOD_VALID_LOCATOR}    id=lblMulctMethodEditValid
${MULCTCODE_EDIT_LBL_MULCTMETHOD_PLACEHOLDER_LOCATOR}    css=#ddlMulctMethodId div[class="dx-placeholder"]
${MULCTCODE_EDIT_TXT_MULCTMETHOD_LOCATOR}    xpath=//*[@id="ddlMulctMethodEdit"]/nz-select-top-control/nz-select-search/input
${MULCTCODE_EDIT_TXT_MULCTMETHOD_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlMulctMethodId"]/div[2]/div/div
${MULCTCODE_EDIT_DDL_MULCTMETHOD_LOCATOR}    id=ddlMulctMethodEdit
# ${MULCTCODE_EDIT_DDL_MULCTMETHOD_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${MULCTCODE_EDIT_DDL_MULCTMETHOD_LIST_LOCATOR}    xpath=/html/body/div/div[3]/div/nz-option-container/div/cdk-virtual-scroll-viewport/div[1]/nz-option-item[replace_indexList]/div/span
${MULCTCODE_EDIT_DDL_MULCTMETHOD_CLASS_LOCATOR}    class=ant-select-item-option-content
#Vat.(%) *
${MULCTCODE_EDIT_LBL_VAT_TH}    ภาษีมูลค่าเพิ่ม (%)
${MULCTCODE_EDIT_LBL_VAT_EN}    Vat.(%)
${MULCTCODE_EDIT_LBL_VAT_LOCATOR}    id=lblVatEdit
${MULCTCODE_EDIT_LBL_VAT_VALID_LOCATOR}    id=lblVatEdit
${MULCTCODE_EDIT_INPUT_VAT_LOCATOR}    id=input_txtVatEdit
${MULCTCODE_EDIT_TXT_VAT_LOCATOR}    id=txtVatEdit
${MULCTCODE_EDIT_TXT_VAT_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="txtAccountPromptPayNumber"]/div[2]/div/div
#Tax.(%) *
${MULCTCODE_EDIT_LBL_TAX_TH}    ภาษีถูกหัก ณ ที่จ่าย (%)
${MULCTCODE_EDIT_LBL_TAX_EN}    Tax.(%)
${MULCTCODE_EDIT_LBL_TAX_LOCATOR}    id=lblTaxEdit
${MULCTCODE_EDIT_LBL_TAX_VALID_LOCATOR}    id=lblTaxEditValid
${MULCTCODE_EDIT_INPUT_TAX_LOCATOR}    id=input_txtTaxEdit
${MULCTCODE_EDIT_TXT_TAX_LOCATOR}    id=txtTaxEdit
${MULCTCODE_EDIT_TXT_TAX_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="txtAccountPromptPayNumber"]/div[2]/div/div
#Remark 
${MULCTCODE_EDIT_LBL_REMARK_TH}    หมายเหตุ
${MULCTCODE_EDIT_LBL_REMARK_EN}    Remark
${MULCTCODE_EDIT_LBL_REMARK_LOCATOR}    id=lblRemarkEdit
${MULCTCODE_EDIT_TXTAREA_REMARK_LOCATOR}    id=txtareaRemarkEdit

#Cancel
${MULCTCODE_ADDEDIT_BTN_CANCEL_TH}    ยกเลิก
${MULCTCODE_ADDEDIT_BTN_CANCEL_EN}    Cancel
${MULCTCODE_ADDEDIT_BTN_CANCEL_LOCATOR}    id=btnCancel
#Save
${MULCTCODE_ADDEDIT_BTN_SAVE_TH}    บันทึก
${MULCTCODE_ADDEDIT_BTN_SAVE_EN}    Save
${MULCTCODE_ADDEDIT_BTN_SAVE_LOCATOR}    id=btnSave
################################################################################################################################
################################################################-- Value --################################################################
#-------------------------------------------- data Create --------------------------------------------#
#Mulctcode NameTh *
${MULCTCODE_MULCTCODENAMETH_VALUE}    ชื่อค่าปรับ ภาษาไทย
${MULCTCODE_MULCTCODENAMETH2_VALUE}    ชื่อค่าปรับ ภาษาไทย2
#Mulctcode NameEn
${MULCTCODE_MULCTCODENAMEEN_VALUE}    ชื่อค่าปรับ ภาษาอังกฤษ
${MULCTCODE_MULCTCODENAMEEN_VALUE_EMPTY}    ""
${MULCTCODE_MULCTCODENAMEEN_VALUE_NONE}    None
#Mulctcode *
${MULCTCODE_MULCTCODE_VALUE}    รหัสค่าปรับ
${MULCTCODE_MULCTCODE2_VALUE}    รหัสค่าปรับ2
#Vat.(%) *
${MULCTCODE_VAT_VALUE}    1.00
${MULCTCODE_VAT_VIEW_VALUE}    1
${MULCTCODE_VAT2_VALUE}    3.00
#Tax.(%) *
${MULCTCODE_TAX_VALUE}    2.00
${MULCTCODE_TAX_VIEW_VALUE}    2
${MULCTCODE_TAX2_VALUE}    4.00
#Status *
${MULCTCODE_STATUS_TH_VALUE1}    ใช้งาน
${MULCTCODE_STATUS_EN_VALUE1}    Active
${MULCTCODE_STATUSID_VALUE1}    1
${MULCTCODE_STATUS_TH_VALUE2}    ไม่ใช้งาน
${MULCTCODE_STATUS_EN_VALUE2}    Inactive
${MULCTCODE_STATUSID_VALUE2}    0
#Group Type *
${MULCTCODE_GROUPTYPE_TH_VALUE1}    ค่าน้ำ   
${MULCTCODE_GROUPTYPE_EN_VALUE1}    Water bill
${MULCTCODE_GROUPTYPEID_VALUE1}    1
${MULCTCODE_GROUPTYPE_TH_VALUE2}    ค่าไฟ   
${MULCTCODE_GROUPTYPE_EN_VALUE2}    Electricity bill
${MULCTCODE_GROUPTYPEID_VALUE2}    2
#Mulct Method *
${MULCTCODE_MULCTMETHOD_TH_VALUE}    ค่าปรับ   
${MULCTCODE_MULCTMETHOD_EN_VALUE}    ค่าปรับ   
#Remark 
${MULCTCODE_REMARK_VALUE}    หมายเหตุ1
${MULCTCODE_REMARK_VALUE_NONE}    None

#mulct method namthTh 
${MULCTCODE_MULCTMETHOD_NAMETH_VALUE}    ค่าปรับ

################################################################-- capture page screenshot --################################################################
#-------------------------------------------- Search --------------------------------------------#	
${MULCTCODE_SEARCH_M8_1_0_1_000_ERROR_SCREENSHOT}    M8_1_0_1_000_BankAccountManagement_Error_Search_VerifyResultSearchBankAccount_Screen.png

${MULCTCODE_SEARCH_M10_0_1_1_000_SUCCESS_SCREENSHOT}    M10_0_1_1_000_MulctCode_Success_Search_VerifyScreen_Screen.png
${MULCTCODE_SEARCH_M10_1_1_1_001_SUCCESS_SCREENSHOT}    M10_1_1_1_001_MulctCode_Success_Search_VerifyAction_Screen.png
#-------------------------------------------- View --------------------------------------------#	
${MULCTCODE_VIEW_M8_1_0_5_000_ERROR_SCREENSHOT}    M8_1_0_5_000_BankAccountManagement_Error_View_DataNotFound_ViewBankAccount_Screen.png

${MULCTCODE_VIEW_M10_0_1_5_000_SUCCESS_SCREENSHOT}    M10_0_1_5_000_MulctCode_Success_View_VerifyScreen_Screen.png
${MULCTCODE_VIEW_M10_1_1_5_000_SUCCESS_SCREENSHOT}    M10_1_1_5_000_MulctCode_Success_View_VerifyAction_Screen.png
#-------------------------------------------- Create --------------------------------------------#	
${MULCTCODE_CREATE_M8_0_0_2_000_ERROR_SCREENSHOT}    M8_0_0_2_000_BankAccountManagement_Error_Create_VerifyScreen_Screen.png
${MULCTCODE_CREATE_M8_1_0_2_006_ERROR_SCREENSHOT}    M8_1_0_2_006_BankAccountManagement_Error_Create_DataAlreadyExisted_Screen.png

${MULCTCODE_CREATE_M10_0_1_2_000_SUCCESS_SCREENSHOT}    M10_0_1_2_000_MulctCode_Success_Create_VerifyScreen_Screen.png
${MULCTCODE_CREATE_M10_1_1_2_000_SUCCESS_SCREENSHOT}    M10_1_1_2_000_MulctCode_Success_Create_VerifyAction_Screen.png
#-------------------------------------------- Edit --------------------------------------------#	
${MULCTCODE_EDIT_M8_0_0_3_002_ERROR_SCREENSHOT}    M8_0_0_3_002_BankAccountManagement_Error_Edit_VerifyScreen_Screen.png
${MULCTCODE_EDIT_M8_1_0_3_000_ERROR_SCREENSHOT}    M8_1_0_3_000_BankAccountManagement_Error_Edit_DataNotFound_ViewBankAccount_Screen.png
${MULCTCODE_EDIT_M8_1_0_3_009_ERROR_SCREENSHOT}    M8_1_0_3_009_BankAccountManagement_Error_Edit_DataAlreadyExisted_UpdateBankAccount_Screen.png
${MULCTCODE_EDIT_M8_1_0_3_012_ERROR_SCREENSHOT}    M8_1_0_3_012_BankAccountManagement_Error_Edit_DataNotFound_UpdateBankAccount_Screen.png

${MULCTCODE_EDIT_M10_0_1_3_000_SUCCESS_SCREENSHOT}    M10_0_1_3_000_MulctCode_Success_Edit_VerifyScreen_Screen.png
${MULCTCODE_EDIT_M10_1_1_3_000_SUCCESS_SCREENSHOT}    M10_1_1_3_000_MulctCode_Success_Edit_VerifyAction_Screen.png
#-------------------------------------------- Delete --------------------------------------------#	
${MULCTCODE_DELETE_M8_1_0_4_000_ERROR_SCREENSHOT}    M8_1_0_4_000_BankAccountManagement_Error_Delete_DataNotFound_Screen.png

${MULCTCODE_DELETE_M10_0_1_4_000_SUCCESS_SCREENSHOT}    M10_0_1_4_000_MulctCode_Success_Delete_VerifyScreen_Screen.png
${MULCTCODE_DELETE_M10_1_1_4_000_SUCCESS_SCREENSHOT}    M10_1_1_4_000_MulctCode_Success_Delete_VerifyAction_Screen.png























