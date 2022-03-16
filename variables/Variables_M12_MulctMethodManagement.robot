*** Variables ***
################################################################-- MulctMethod Management --################################################################
#Create button
${MULCTMETHOD_BTN_CREATE_TH}    เพิ่ม
${MULCTMETHOD_BTN_CREATE_EN}    Create
${MULCTMETHOD_BTN_CREATE_LOCATOR}    id=btnCreate

${MULCTMETHOD_BTN_MORE_LOCATOR}    id=btnMore1
${MULCTMETHOD_LBL_VIEW_TH}    ดูรายละเอียด
${MULCTMETHOD_LBL_VIEW_EN}    View
${MULCTMETHOD_LBL_VIEW_TH_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-11"]
${MULCTMETHOD_LBL_VIEW_EN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-11"]
${MULCTMETHOD_BTN_VIEW_LOCATOR}    id=btnView1 
${MULCTMETHOD_LBL_EDIT_TH}    แก้ไข
${MULCTMETHOD_LBL_EDIT_EN}    Edit
${MULCTMETHOD_LBL_EDIT_TH_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-12"]
${MULCTMETHOD_LBL_EDIT_EN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-12"]
${MULCTMETHOD_BTN_EDIT_LOCATOR}    id=btnEdit1
${MULCTMETHOD_LBL_DELETE_TH}    ลบ
${MULCTMETHOD_LBL_DELETE_EN}    Delete
${MULCTMETHOD_LBL_DELETE_TH_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-13"]
${MULCTMETHOD_LBL_DELETE_EN_LOCATOR}    css=div[class="ant-tooltip-inner ng-tns-c438-13"]
${MULCTMETHOD_BTN_DELETE_LOCATOR}    id=btnDelete1

${MULCTMETHOD_BTN_CLOSE_LOCATOR}    class=ant-modal-close-x

${MULCTMETHOD_BTN_20}    20
${MULCTMETHOD_BTN_20_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[1]/div[1]
${MULCTMETHOD_BTN_50}    50
${MULCTMETHOD_BTN_50_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[1]/div[2]
${MULCTMETHOD_BTN_100}    100
${MULCTMETHOD_BTN_100_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[1]/div[3]
${MULCTMETHOD_BTN_1000}    1000
${MULCTMETHOD_BTN_1000_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[1]/div[4]
${MULCTMETHOD_LBL_PagesXFromY_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[2]/div[1]
${MULCTMETHOD_ICON_ARRORWLEFT_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[2]/div[2]
${MULCTMETHOD_LBL_PAGE_1}    1
${MULCTMETHOD_LBL_PAGE_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[2]/div[3]
${MULCTMETHOD_ICON_ARRORWRIGHT_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[10]/div[2]/div[4]

${MULCTMETHOD_SEARCH_LBL_RESULT_ROW1COL1_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td[2]

#-------------------------------------------- Search MulctMethod Management --------------------------------------------#
############## Header ############## 
#MulctMethod Management Header
${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_TH}    จัดการวิธีคำนวณค่าปรับ 
${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_EN}    MulctMethod Management
${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_HEADER_LOCATOR}    xpath=/html/body/app-root/app-layouts/div/app-master/div[1]/div/div/h3
#MulctMethod Management
${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_TH}    จัดการวิธีคำนวณค่าปรับ 
${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_EN}    MulctMethod Management
${MULCTMETHOD_SEARCH_LBL_MULCTMETHODMANAGEMENT_LOCATOR}    id=lblMulctMethodManagementHeaderPage

#Mulct Method Name
${MULCTMETHOD_SEARCH_LBL_MULCTMETHODNAME_TH}    ชื่อวิธีการคำนวณค่าปรับ
${MULCTMETHOD_SEARCH_LBL_MULCTMETHODNAME_EN}    Mulct Method Name
${MULCTMETHOD_SEARCH_LBL_MULCTMETHODNAME_LOCATOR}    id=lblMulctMethodNameSearch
${MULCTMETHOD_SEARCH_INPUT_MULCTMETHODNAME_LOCATOR}    id=input_txtMulctMethodNameSearch
${MULCTMETHOD_SEARCH_TXT_MULCTMETHODNAME_LOCATOR}    id=txtMulctMethodNameSearch
#Status
${MULCTMETHOD_SEARCH_LBL_STATUS_TH}    สถานะ
${MULCTMETHOD_SEARCH_LBL_STATUS_EN}    Status
${MULCTMETHOD_SEARCH_LBL_STATUS_LOCATOR}    id=lblStatusSearch
${MULCTMETHOD_SEARCH_DDL_STATUS_PLACEHOLDER_VALUE}    2
${MULCTMETHOD_SEARCH_DDL_STATUS_PLACEHOLDER_LOCATOR}    css=#ddlStatusSearch div[class="dx-placeholder"]
${MULCTMETHOD_SEARCH_DDL_STATUS_LOCATOR}    id=ddlStatusSearch 
${MULCTMETHOD_SEARCH_DDL_STATUS_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${MULCTMETHOD_SEARCH_DDL_STATUS_CLASS_LOCATOR}    class=dx-list-item-content
@{MULCTMETHOD_SEARCH_DDL_STATUS_TH_VALUE}    ไม่ใช้งาน    ใช้งาน
@{MULCTMETHOD_SEARCH_DDL_STATUS_EN_VALUE}    Inactive    Active

#Search
${MULCTMETHOD_SEARCH_BTN_SEARCH_TH}    ค้นหา
${MULCTMETHOD_SEARCH_BTN_SEARCH_EN}    Search
${MULCTMETHOD_SEARCH_BTN_SEARCH_LOCATOR}    id=btnSearch
#Clear
${MULCTMETHOD_SEARCH_BTN_CLEAR_TH}    คืนค่า
${MULCTMETHOD_SEARCH_BTN_CLEAR_EN}    Clear
${MULCTMETHOD_SEARCH_BTN_CLEAR_LOCATOR}    id=btnClear

############################ 
############## Table ############## 
#No
${MULCTMETHOD_SEARCH_LBL_RESULT_NO_TH}    ลำดับ
${MULCTMETHOD_SEARCH_LBL_RESULT_NO_EN}    No.
${MULCTMETHOD_SEARCH_LBL_RESULT_NO_LOCATOR}    id=dx-col-11
#Mulct Method Name
${MULCTMETHOD_SEARCH_LBL_RESULT_MULCTMETHODNAME_TH}    ชื่อวิธีการคำนวณค่าปรับ
${MULCTMETHOD_SEARCH_LBL_RESULT_MULCTMETHODNAME_EN}    Mulct Method Name
${MULCTMETHOD_SEARCH_LBL_RESULT_MULCTMETHODNAME_LOCATOR}    id=dx-col-12
#Remark
${MULCTMETHOD_SEARCH_LBL_RESULT_REMARK_TH}    หมายเหตุ
${MULCTMETHOD_SEARCH_LBL_RESULT_REMARK_EN}    Remark
${MULCTMETHOD_SEARCH_LBL_RESULT_REMARK_LOCATOR}    id=dx-col-13
#Status
${MULCTMETHOD_SEARCH_LBL_RESULT_STATUS_TH}    สถานะ
${MULCTMETHOD_SEARCH_LBL_RESULT_STATUS_EN}    Status
${MULCTMETHOD_SEARCH_LBL_RESULT_STATUS_LOCATOR}    id=dx-col-14
#No Data
${MULCTMETHOD_SEARCH_LBL_RESULT_NODATA_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[6]/span
#For check value table 
${MULCTMETHOD_SEARCH_LBL_RESULT_DATA_LOCATOR}    xpath=//*[@id="contractListOptions"]/div/div[6]/div/div/div[1]/div/table/tbody/tr[row]/td[col]
${MULCTMETHOD_SEARCH_NUMCOL}    4
@{MULCTMETHOD_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_TH}    no    nameTh    remark    status
@{MULCTMETHOD_SEARCH_LBL_FIELD_HEADER_TABLE_VALUE_EN}    no    nameTh    remark    status

############################ 
#-------------------------------------------- View MulctMethod --------------------------------------------#
#Mulct Method Details
${MULCTMETHOD_VIEW_LBL_MULCTMETHODDETAILS_TH}    ดูรายละเอียดวิธีคำนวณค่าปรับ 
${MULCTMETHOD_VIEW_LBL_MULCTMETHODDETAILS_EN}    Mulct Method Details
${MULCTMETHOD_VIEW_LBL_MULCTMETHODDETAILS_LOCATOR}    id=lblMulctMethodDetails
#Mulct Method Name
${MULCTMETHOD_VIEW_LBL_MULCTMETHODNAME_TH}    ชื่อวิธีคำนวณค่าปรับ 
${MULCTMETHOD_VIEW_LBL_MULCTMETHODNAME_EN}    Mulct Method Name
${MULCTMETHOD_VIEW_LBL_MULCTMETHODNAME_LOCATOR}    id=lblMulctMethodNameView
${MULCTMETHOD_VIEW_LBD_MULCTMETHODNAME_LOCATOR}    id=lbdMulctMethodNameView
#Status
${MULCTMETHOD_VIEW_LBL_STATUS_TH}    สถานะ
${MULCTMETHOD_VIEW_LBL_STATUS_EN}    Status
${MULCTMETHOD_VIEW_LBL_STATUS_LOCATOR}    id=lblStatusView
${MULCTMETHOD_VIEW_LBD_STATUS_LOCATOR}    id=lbdStatusView
#Remark 
${MULCTMETHOD_VIEW_LBL_REMARK_TH}    หมายเหตุ
${MULCTMETHOD_VIEW_LBL_REMARK_EN}    Remark
${MULCTMETHOD_VIEW_LBL_REMARK_LOCATOR}    id=lblRemarkView
${MULCTMETHOD_VIEW_LBD_REMARK_LOCATOR}    id=lbdRemarkView

#Conditions for the charge of the mulct
${MULCTMETHOD_VIEW_LBL_CONDITIONSFORTHECHARGEOFTHEMULCT_TH}    เงื่อนไขการคิดค่าปรับ 
${MULCTMETHOD_VIEW_LBL_CONDITIONSFORTHECHARGEOFTHEMULCT_EN}    Conditions for the charge of the mulct
${MULCTMETHOD_VIEW_LBL_CONDITIONSFORTHECHARGEOFTHEMULCT_LOCATOR}    id=lblConditionsForTheChargeOfTheMulct
#Adjustment Rate
${MULCTMETHOD_VIEW_LBL_ADJUSTMENTRATE_TH}    อัตราการปรับ 
${MULCTMETHOD_VIEW_LBL_ADJUSTMENTRATE_EN}    Adjustment Rate
${MULCTMETHOD_VIEW_LBL_ADJUSTMENTRATE_LOCATOR}    id=lblAdjustmentRateView
${MULCTMETHOD_VIEW_LBD_ADJUSTMENTRATE_LOCATOR}    id=lbdAdjustmentRateView
#Unit Charge
${MULCTMETHOD_VIEW_LBL_UNITCHARGE_TH}    หน่วยคิดค่าปรับ 
${MULCTMETHOD_VIEW_LBL_UNITCHARGE_EN}    Unit Charge
${MULCTMETHOD_VIEW_LBL_UNITCHARGE_LOCATOR}    id=lblUnitChargeView
${MULCTMETHOD_VIEW_LBL_UNITCHARGE_PERTHEMOMENT_TH}    ต่อทั้งช่วงเวลา 
${MULCTMETHOD_VIEW_LBL_UNITCHARGE_PERTHEMOMENT_EN}    Per the moment
${MULCTMETHOD_VIEW_LBD_UNITCHARGE_PERTHEMOMENT_LOCATOR}    xpath=//*[@id="rdlUnitChargeView"]/label[1]/span[2]
${MULCTMETHOD_VIEW_LBL_UNITCHARGE_PERDAY_TH}    ต่อวัน 
${MULCTMETHOD_VIEW_LBL_UNITCHARGE_PERDAY_EN}     Per day
${MULCTMETHOD_VIEW_LBD_UNITCHARGE_PERDAY_LOCATOR}    xpath=//*[@id="rdlUnitChargeView"]/label[2]/span[2]
${MULCTMETHOD_VIEW_RDL_UNITCHARGE_LOCATOR}    id=rdlUnitChargeView
#Calculation Method
${MULCTMETHOD_VIEW_LBL_CALCULATIONMETHOD_TH}    วิธีการคำนวณ 
${MULCTMETHOD_VIEW_LBL_CALCULATIONMETHOD_EN}    Calculation Method
${MULCTMETHOD_VIEW_LBL_CALCULATIONMETHOD_LOCATOR}    id=lblCalculationMethodView
${MULCTMETHOD_VIEW_LBL_CALCULATIONMETHOD_NOTROLLOVER_TH}    ไม่ทบยอด 
${MULCTMETHOD_VIEW_LBL_CALCULATIONMETHOD_NOTROLLOVER_EN}    Not roll over
${MULCTMETHOD_VIEW_LBD_CALCULATIONMETHOD_NOTROLLOVER_LOCATOR}    xpath=//*[@id="rdlCalculationMethodView"]/label[1]/span[2]
${MULCTMETHOD_VIEW_LBL_CALCULATIONMETHOD_ROLLOVER_TH}    ทบยอด 
${MULCTMETHOD_VIEW_LBL_CALCULATIONMETHOD_ROLLOVER_EN}     Roll over
${MULCTMETHOD_VIEW_LBD_CALCULATIONMETHOD_ROLLOVER_LOCATOR}    xpath=//*[@id="rdlCalculationMethodView"]/label[2]/span[2]
${MULCTMETHOD_VIEW_RDL_CALCULATIONMETHOD_LOCATOR}    id=rdlCalculationMethodView
############################ 
############## Table ############## 
#Time Unit
${MULCTMETHOD_VIEW_LBL_RESULT_TIMEUNIT_TH}    หน่วยเวลา
${MULCTMETHOD_VIEW_LBL_RESULT_TIMEUNIT_EN}    Time Unit
${MULCTMETHOD_VIEW_LBL_RESULT_TIMEUNIT_LOCATOR}    id=lblTimeUnitHeader
#Number of time past the deadline
${MULCTMETHOD_VIEW_LBL_RESULT_NUMBEROFTIMEPASTTHEDEADLINE_TH}    จำนวนเวลาที่เกินวันครบกำหนดชำระ
${MULCTMETHOD_VIEW_LBL_RESULT_NUMBEROFTIMEPASTTHEDEADLINE_EN}    Number of time past the deadline
${MULCTMETHOD_VIEW_LBL_RESULT_NUMBEROFTIMEPASTTHEDEADLINE_LOCATOR}    id=lblNumberOfTimePastTheDeadlineHeader
#Amount
${MULCTMETHOD_VIEW_LBL_RESULT_AMOUNT_TH}    จำนวนเงิน
${MULCTMETHOD_VIEW_LBL_RESULT_AMOUNT_EN}    Amount
${MULCTMETHOD_VIEW_LBL_RESULT_AMOUNT_LOCATOR}    id=lblAmountHeader
#Percent
${MULCTMETHOD_VIEW_LBL_RESULT_PERCENT_TH}    เปอร์เซ็นต์
${MULCTMETHOD_VIEW_LBL_RESULT_PERCENT_EN}    Percent
${MULCTMETHOD_VIEW_LBL_RESULT_PERCENT_LOCATOR}    id=lblPercentHeader
#Onwards
${MULCTMETHOD_VIEW_LBL_RESULT_ONWARDS_TH}    เป็นต้นไป
${MULCTMETHOD_VIEW_LBL_RESULT_ONWARDS_EN}    Onwards
# ${MULCTMETHOD_VIEW_LBL_RESULT_ONWARDS_LOCATOR}    css=#rdlOnwards div[class="dx-checkbox-container"] span[class="dx-checkbox-text"]
# ${MULCTMETHOD_VIEW_LBL_RESULT_ONWARDS_LOCATOR}    xpath=//*[@id="rdlOnwards"]/span[2]
${MULCTMETHOD_VIEW_CHK_RESULT_ONWARDS_LOCATOR}    xpath=//*[@id="rdlOnwards"]/span[1]/input
############## body ############## 
#Time Unit 
${MULCTMETHOD_VIEW_LBD_TIMEUNIT1_LOCATOR}    id=lblTimeUnit1
${MULCTMETHOD_VIEW_LBD_TIMEUNIT2_LOCATOR}    id=lblTimeUnit2
${MULCTMETHOD_VIEW_LBD_TIMEUNIT3_LOCATOR}    id=lblTimeUnit3
#Number of time past the deadline
${MULCTMETHOD_VIEW_LBD_NUMBEROFTIMEPASTTHEDEADLINE1_LOCATOR}    id=lblNumberoftimepastthedeadline1
${MULCTMETHOD_VIEW_LBD_NUMBEROFTIMEPASTTHEDEADLINE2_LOCATOR}    id=lblNumberoftimepastthedeadline2
${MULCTMETHOD_VIEW_LBD_NUMBEROFTIMEPASTTHEDEADLINE3_LOCATOR}    id=lblNumberoftimepastthedeadline3
#Amount/Percent
${MULCTMETHOD_VIEW_LBD_AMOUNTPERCENT1_LOCATOR}    id=lblAmountPercent1
${MULCTMETHOD_VIEW_LBD_AMOUNTPERCENT2_LOCATOR}    id=lblAmountPercent2
${MULCTMETHOD_VIEW_LBD_AMOUNTPERCENT3_LOCATOR}    id=lblAmountPercent3

############################ 
#-------------------------------------------- Create MulctMethod --------------------------------------------#
#Create Mulct Method 
${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_TH}    เพิ่มวิธีคำนวณค่าปรับ 
${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_EN}    Create Mulct Method 
${MULCTMETHOD_ADD_LBL_CREATEMULCTMETHOD_LOCATOR}    id=lblCreateMulctMethod

#Mulct Method Name *
${MULCTMETHOD_ADD_LBL_MULCTMETHODNAME_TH}    ชื่อวิธีคำนวณค่าปรับ
${MULCTMETHOD_ADD_LBL_MULCTMETHODNAME_EN}    Mulct Method Name
${MULCTMETHOD_ADD_LBL_MULCTMETHODNAME_LOCATOR}    id=lblMulctMethodNameCreate
${MULCTMETHOD_ADD_LBL_MULCTMETHODNAME_VALID_LOCATOR}    id=lblMulctMethodNameCreateValid
${MULCTMETHOD_ADD_INPUT_MULCTMETHODNAME_LOCATOR}    id=input_txtMulctMethodNameCreate
${MULCTMETHOD_ADD_TXT_MULCTMETHODNAME_LOCATOR}    id=txtMulctMethodNameCreate
#Status *
${MULCTMETHOD_ADD_LBL_STATUS_TH}    สถานะ
${MULCTMETHOD_ADD_LBL_STATUS_EN}    Status
${MULCTMETHOD_ADD_LBL_STATUS_LOCATOR}    id=lblStatusCreate
${MULCTMETHOD_ADD_LBL_STATUS_VALID_LOCATOR}    id=lblStatusCreateValid
${MULCTMETHOD_ADD_LBL_STATUS_PLACEHOLDER_VALUE}    1
${MULCTMETHOD_ADD_LBL_STATUS_PLACEHOLDER_LOCATOR}    css=#ddlStatusCreate div[class="dx-placeholder dx-state-invisible"]
${MULCTMETHOD_ADD_TXT_STATUS_LOCATOR}    id=//*[@id="ddlStatusCreate"]/nz-select-top-control/nz-select-search/input
${MULCTMETHOD_ADD_DDL_STATUS_LOCATOR}    id=ddlStatusCreate
${MULCTMETHOD_ADD_DDL_STATUS_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${MULCTMETHOD_ADD_DDL_STATUS_CLASS_LOCATOR}    class=dx-list-item-content
@{MULCTMETHOD_ADD_DDL_STATUS_TH_VALUE}    ไม่ใช้งาน    ใช้งาน
@{MULCTMETHOD_ADD_DDL_STATUS_EN_VALUE}    Inactive    Active
#Remark 
${MULCTMETHOD_ADD_LBL_REMARK_TH}    หมายเหตุ
${MULCTMETHOD_ADD_LBL_REMARK_EN}    Remark
${MULCTMETHOD_ADD_LBL_REMARK_LOCATOR}    id=lblRemarkCreate
${MULCTMETHOD_ADD_INPUT_REMARK_LOCATOR}    id=input_txtareaRemarkCreate
${MULCTMETHOD_ADD_TXTAREA_REMARK_LOCATOR}    id=txtareaRemarkCreate

#Conditions for the charge of the mulct
${MULCTMETHO_ADD_LBL_CONDITIONSFORTHECHARGEOFTHEMULCT_TH}    เงื่อนไขการคิดค่าปรับ 
${MULCTMETHO_ADD_LBL_CONDITIONSFORTHECHARGEOFTHEMULCT_EN}    Conditions for the charge of the mulct
${MULCTMETHO_ADD_LBL_CONDITIONSFORTHECHARGEOFTHEMULCT_LOCATOR}    id=lblConditionsForTheChargeOfTheMulct
#Adjustment Rate *
${MULCTMETHOD_ADD_LBL_ADJUSTMENTRATE_TH}    อัตราการปรับ 
${MULCTMETHOD_ADD_LBL_ADJUSTMENTRATE_EN}    Adjustment Rate
${MULCTMETHOD_ADD_LBL_ADJUSTMENTRATE_LOCATOR}    id=lblAdjustmentRateCreate
${MULCTMETHOD_ADD_LBL_ADJUSTMENTRATE_PLACEHOLDER_LOCATOR}    css=#ddlAdjustmentRateCreate div[class="dx-placeholder"]
${MULCTMETHOD_ADD_TXT_ADJUSTMENTRATE_LOCATOR}    id=//*[@id="ddlAdjustmentRateCreate"]/nz-select-top-control/nz-select-search/input
${MULCTMETHOD_ADD_TXT_ADJUSTMENTRATE_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlAdjustmentRateCreate"]/div[2]/div/div
${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_LOCATOR}    id=ddlAdjustmentRateCreate
${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_CLASS_LOCATOR}    class=dx-list-item-content
@{MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_TH_VALUE}    จำนวนเงิน    เปอร์เซ็นต์
@{MULCTMETHOD_ADD_DDL_ADJUSTMENTRATE_EN_VALUE}    Amount    Percent
#Unit Charge *
${MULCTMETHOD_ADD_LBL_UNITCHARGE_TH}    หน่วยคิดค่าปรับ 
${MULCTMETHOD_ADD_LBL_UNITCHARGE_EN}    Unit Charge
${MULCTMETHOD_ADD_LBL_UNITCHARGE_LOCATOR}    id=lblUnitChargeCreate
${MULCTMETHOD_ADD_LBL_UNITCHARGE_PERTHEMOMENT_TH}    ต่อทั้งช่วงเวลา
${MULCTMETHOD_ADD_LBL_UNITCHARGE_PERTHEMOMENT_EN}    Per the moment
${MULCTMETHOD_ADD_LBL_UNITCHARGE_PERTHEMOMENT_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[6]/div/dx-radio-group/div/div[1]/div[2]
${MULCTMETHOD_ADD_RDL_UNITCHARGE_PERTHEMOMENT_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[6]/div/dx-radio-group/div/div[1]/div[1]
${MULCTMETHOD_ADD_RDL_UNITCHARGE_PERTHEMOMENT_CHECK_LOCATOR}    css=#rdlUnitChargeCreate  div[class="dx-widget dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"]
${MULCTMETHOD_ADD_LBL_UNITCHARGE_PERDAY_TH}    ต่อวัน 
${MULCTMETHOD_ADD_LBL_UNITCHARGE_PERDAY_EN}    Per day
${MULCTMETHOD_ADD_LBL_UNITCHARGE_PERDAY_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[6]/div/dx-radio-group/div/div[2]/div[2]
${MULCTMETHOD_ADD_RDL_UNITCHARGE_PERDAY_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[6]/div/dx-radio-group/div/div[2]/div[1]
${MULCTMETHOD_ADD_RDL_UNITCHARGE_PERDAY_CHECK_LOCATOR}    css=#rdlUnitChargeCreate  div[class="dx-widget dx-collection"] div[class="dx-item dx-radiobutton"] 
${MULCTMETHOD_ADD_LBL_UNITCHARGE_VALID_LOCATOR}    id=lblChargeAMulctCreateValid
${MULCTMETHOD_ADD_RDL_UNITCHARGE_LOCATOR}    id=rdlChargeamulctCreate
#Calculation Method *
${MULCTMETHOD_ADD_LBL_CALCULATIONMETHOD_TH}    วิธีการคำนวณ 
${MULCTMETHOD_ADD_LBL_CALCULATIONMETHOD_EN}    Calculation Method
${MULCTMETHOD_ADD_LBL_CALCULATIONMETHOD_LOCATOR}    id=lblCalculationMethodCreate
${MULCTMETHOD_ADD_LBL_CALCULATIONMETHOD_NOPENALTYCHARGE_TH}    ไม่ทบยอด
${MULCTMETHOD_ADD_LBL_CALCULATIONMETHOD_NOPENALTYCHARGE_EN}    Not roll over
${MULCTMETHOD_ADD_LBL_CALCULATIONMETHOD_NOPENALTYCHARGE_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[1]/div[2]
${MULCTMETHOD_ADD_RDL_CALCULATIONMETHOD_NOPENALTYCHARGE_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[1]/div[1]/div
${MULCTMETHOD_ADD_RDL_CALCULATIONMETHOD_NOPENALTYCHARGE_CHECK_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[1]
${MULCTMETHOD_ADD_LBL_CALCULATIONMETHOD_CHARGEAFINE_TH}    ทบยอด 
${MULCTMETHOD_ADD_LBL_CALCULATIONMETHOD_CHARGEAFINE_EN}    Roll over
${MULCTMETHOD_ADD_LBL_CALCULATIONMETHOD_CHARGEAFINE_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[2]/div[2]
${MULCTMETHOD_ADD_RDL_CALCULATIONMETHOD_CHARGEAFINE_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[2]/div[1]/div
${MULCTMETHOD_ADD_RDL_CALCULATIONMETHOD_CHARGEAFINE_CHECK_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[2]
${MULCTMETHOD_ADD_RDL_CALCULATIONMETHOD_LOCATOR}    id=rdlCalculationMethodCreate
############################ 
############## Table ############## 
#Time Unit
${MULCTMETHOD_ADD_LBL_RESULT_TIMEUNIT_TH}    หน่วยเวลา
${MULCTMETHOD_ADD_LBL_RESULT_TIMEUNIT_EN}    Time Unit
${MULCTMETHOD_ADD_LBL_RESULT_TIMEUNIT_LOCATOR}    id=lblTimeUnitHeader
#Number of time past the deadline
${MULCTMETHOD_ADD_LBL_RESULT_NUMBEROFTIMEPASTTHEDEADLINE_TH}    จำนวนเวลาที่เกินวันครบกำหนดชำระ
${MULCTMETHOD_ADD_LBL_RESULT_NUMBEROFTIMEPASTTHEDEADLINE_EN}    Number of time past the deadline
${MULCTMETHOD_ADD_LBL_RESULT_NUMBEROFTIMEPASTTHEDEADLINE_LOCATOR}    id=lblNumberOfTimePastTheDeadlineHeader
#Amount
${MULCTMETHOD_ADD_LBL_RESULT_AMOUNT_TH}    จำนวนเงิน
${MULCTMETHOD_ADD_LBL_RESULT_AMOUNT_EN}    Amount
${MULCTMETHOD_ADD_LBL_RESULT_AMOUNT_LOCATOR}    id=lblAmountHeader
#Percent
${MULCTMETHOD_ADD_LBL_RESULT_PERCENT_TH}    เปอร์เซ็นต์
${MULCTMETHOD_ADD_LBL_RESULT_PERCENT_EN}    Percent
${MULCTMETHOD_ADD_LBL_RESULT_PERCENT_LOCATOR}    id=lblPercentHeader
#Onwards
${MULCTMETHOD_ADD_LBL_RESULT_ONWARDS_TH}    เป็นต้นไป
${MULCTMETHOD_ADD_LBL_RESULT_ONWARDS_EN}    Onwards

${MULCTMETHOD_ADD_LBL_RESULT_ONWARDS_LOCATOR}    css=#rdlOnwards div[class="dx-checkbox-container"] span[class="dx-checkbox-text"]
# ${MULCTMETHOD_ADD_LBL_RESULT_ONWARDS_LOCATOR}    xpath=//*[@id="rdlTempOnwardsCreate"]/div/span[2]
${MULCTMETHOD_ADD_CHK_RESULT_ONWARDS_LOCATOR}    xpath=//*[@id="rdlTempOnwardsCreate"]/div/span[1]
# กล่องที่เปิดไว้หลัง เป็นต้นไป คือกล่องจำนวนที่ปรับ เป็นต้นไปของจำนวนเวลาที่เกินวันครบกำหนดชำระ

############################ 
# Time Unit
${MULCTMETHOD_ADD_DDL_TIMEUNIT_LOCATOR}    id=ddlTimeUnitCreate
${MULCTMETHOD_ADD_DDL_TIMEUNIT_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${MULCTMETHOD_ADD_DDL_TIMEUNIT_CLASS_LOCATOR}    class=dx-list-item-content
@{MULCTMETHOD_ADD_DDL_TIMEUNIT_TH_VALUE}    วัน    เดือน
@{MULCTMETHOD_ADD_DDL_TIMEUNIT_EN_VALUE}    Day    Month
#Number of time past the deadline
${MULCTMETHOD_ADD_TXT_NUMBEROFTIMEPASTTHEDEADLINE_LOCATOR}    id=txtNumberoftimepastthedeadline1
${MULCTMETHOD_ADD_INPUT_NUMBEROFTIMEPASTTHEDEADLINE_LOCATOR}    id=input_txtNumberoftimepastthedeadline1
${MULCTMETHOD_ADD_TXT_NUMBEROFTIMEPASTTHEDEADLINE_VALID_LOCATOR}    id=lblNumberoftimepastthedeadlineValid1
${MULCTMETHOD_ADD_TXT_NUMBEROFTIMEPASTTHEDEADLINE2_LOCATOR}    id=txtNumberoftimepastthedeadline2
${MULCTMETHOD_ADD_INPUT_NUMBEROFTIMEPASTTHEDEADLINE2_LOCATOR}    id=input_txtNumberoftimepastthedeadline2
${MULCTMETHOD_ADD_TXT_NUMBEROFTIMEPASTTHEDEADLINE_VALID2_LOCATOR}    id=lblNumberoftimepastthedeadlineValid2
#Amount/Percent
${MULCTMETHOD_ADD_TXT_AMOUNTPERCENT_LOCATOR}    id=txtAmountPercent1
${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT_LOCATOR}    id=input_txtAmountPercent1
${MULCTMETHOD_ADD_TXT_AMOUNTPERCENT_VALID_LOCATOR}    id=lblAmountPercentValid1
${MULCTMETHOD_ADD_TXT_AMOUNTPERCENT2_LOCATOR}    id=txtAmountPercent2
${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT2_LOCATOR}    id=input_txtAmountPercent2
${MULCTMETHOD_ADD_TXT_AMOUNTPERCENT2_VALID_LOCATOR}    id=lblAmountPercentValid2
#+
${MULCTMETHOD_ADD_BTN_ADD_LOCATOR}    id=btnAdd
#-
${MULCTMETHOD_ADD_BTN_DELETE_LOCATOR}    id=btnDelete

#Day/Month
${MULCTMETHOD_ADD_LBL_TIMEUNIT_DAY_TH}    วัน
${MULCTMETHOD_ADD_LBL_TIMEUNIT_DAY_EN}    Day
${MULCTMETHOD_ADD_LBL_TIMEUNIT_MONTH_TH}    เดือน
${MULCTMETHOD_ADD_LBL_TIMEUNIT_MONTH_EN}    Month
${MULCTMETHOD_ADD_LBL_TIMEUNIT_DAYMONTH_LOCATOR}    id=lblTimeUnitDayMonth
${MULCTMETHOD_ADD_LBL_TIMEUNIT_DAYMONTH2_LOCATOR}    id=lblTimeUnitDayMonth2
#Number of time past the deadline
${MULCTMETHOD_ADD_TXT_NUMBEROFTIMEPASTTHEDEADLINE_LOCATOR}    id=txtTempNumberoftimepastthedeadlineCreate
${MULCTMETHOD_ADD_INPUT_NUMBEROFTIMEPASTTHEDEADLINELOCATOR}    id=input_txtTempNumberoftimepastthedeadlineCreate
#Amount/Percent
# กล่องที่เปิดไว้หลัง เป็นต้นไป คือกล่องจำนวนที่ปรับ เป็นต้นไปของจำนวนเวลาที่เกินวันครบกำหนดชำระ
${MULCTMETHOD_ADD_TXT_AMOUNTPERCENT_ONWARDS_LOCATOR}    id=txtTempAmountPercentCreate
${MULCTMETHOD_ADD_INPUT_AMOUNTPERCENT_ONWARDS_LOCATOR}    id=input_txtTempAmountPercentCreate
${MULCTMETHOD_ADD_TXT_AMOUNTPERCENT_ONWARDS_VALID_LOCATOR}    id=txtTempAmountPercentCreateS

#-------------------------------------------- Edit MulctMethod --------------------------------------------#
#Edit Mulct Method 
${MULCTMETHOD_EDIT_LBL_EDITMULCTMETHOD_TH}    แก้ไขวิธีคำนวณค่าปรับ
${MULCTMETHOD_EDIT_LBL_EDITMULCTMETHOD_EN}    Edit Mulct Method 
${MULCTMETHOD_EDIT_LBL_EDITMULCTMETHOD_LOCATOR}    id=lblEditMulctMethod

#Mulct Method Name *
${MULCTMETHOD_EDIT_LBL_MULCTMETHODNAME_TH}    ชื่อวิธีคำนวณค่าปรับ
${MULCTMETHOD_EDIT_LBL_MULCTMETHODNAME_EN}    Mulct Method Name
${MULCTMETHOD_EDIT_LBL_MULCTMETHODNAME_LOCATOR}    id=lblMulctMethodNameEdit
${MULCTMETHOD_EDIT_LBL_MULCTMETHODNAME_VALID_LOCATOR}    id=lblMulctMethodNameEditValid
${MULCTMETHOD_EDIT_INPUT_MULCTMETHODNAME_LOCATOR}    id=input_txtMulctMethodNameEdit
${MULCTMETHOD_EDIT_TXT_MULCTMETHODNAME_LOCATOR}    id=txtMulctMethodNameEdit
#Status *
${MULCTMETHOD_EDIT_LBL_STATUS_TH}    สถานะ
${MULCTMETHOD_EDIT_LBL_STATUS_EN}    Status
${MULCTMETHOD_EDIT_LBL_STATUS_LOCATOR}    id=lblStatusEdit
${MULCTMETHOD_EDIT_LBL_STATUS_VALID_LOCATOR}    id=lblStatusEditValid
${MULCTMETHOD_EDIT_LBL_STATUS_PLACEHOLDER_VALUE}    1
${MULCTMETHOD_EDIT_LBL_STATUS_PLACEHOLDER_LOCATOR}    css=#ddlStatus div[class="dx-placeholder dx-state-invisible"]
${MULCTMETHOD_EDIT_TXT_STATUS_LOCATOR}    id=//*[@id="ddlStatusEdit"]/nz-select-top-control/nz-select-search/input
${MULCTMETHOD_EDIT_DDL_STATUS_LOCATOR}    id=ddlStatusEdit
${MULCTMETHOD_EDIT_DDL_STATUS_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${MULCTMETHOD_EDIT_DDL_STATUS_CLASS_LOCATOR}    class=dx-list-item-content
@{MULCTMETHOD_EDIT_DDL_STATUS_TH_VALUE}    ไม่ใช้งาน    ใช้งาน
@{MULCTMETHOD_EDIT_DDL_STATUS_EN_VALUE}    Inactive    Active
#Remark 
${MULCTMETHOD_EDIT_LBL_REMARK_TH}    หมายเหตุ
${MULCTMETHOD_EDIT_LBL_REMARK_EN}    Remark
${MULCTMETHOD_EDIT_LBL_REMARK_LOCATOR}    id=lblRemarkEdit
${MULCTMETHOD_EDIT_INPUT_REMARK_LOCATOR}    id=input_txtareaRemarkEdit
${MULCTMETHOD_EDIT_TXTAREA_REMARK_LOCATOR}    id=txtareaRemarkEdit

#Conditions for the charge of the mulct
${MULCTMETHO_EDIT_LBL_CONDITIONSFORTHECHARGEOFTHEMULCT_TH}    เงื่อนไขการคิดค่าปรับ 
${MULCTMETHO_EDIT_LBL_CONDITIONSFORTHECHARGEOFTHEMULCT_EN}    Conditions for the charge of the mulct
${MULCTMETHO_EDIT_LBL_CONDITIONSFORTHECHARGEOFTHEMULCT_LOCATOR}    id=lblConditionsForTheChargeOfTheMulct
#Adjustment Rate *
${MULCTMETHOD_EDIT_LBL_ADJUSTMENTRATE_TH}    อัตราการปรับ 
${MULCTMETHOD_EDIT_LBL_ADJUSTMENTRATE_EN}    Adjustment Rate
${MULCTMETHOD_EDIT_LBL_ADJUSTMENTRATE_LOCATOR}    id=lblAdjustmentRateEdit
${MULCTMETHOD_EDIT_LBL_ADJUSTMENTRATE_PLACEHOLDER_LOCATOR}    css=#ddlAdjustmentRateEdit div[class="dx-placeholder"]
${MULCTMETHOD_EDIT_TXT_ADJUSTMENTRATE_LOCATOR}    id=//*[@id="ddlAdjustmentRateEdit"]/nz-select-top-control/nz-select-search/input
${MULCTMETHOD_EDIT_TXT_ADJUSTMENTRATE_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlAdjustmentRateEdit"]/div[2]/div/div
${MULCTMETHOD_EDIT_DDL_ADJUSTMENTRATE_LOCATOR}    id=ddlAdjustmentRateEdit
${MULCTMETHOD_EDIT_DDL_ADJUSTMENTRATE_LIST_LOCATOR}    xpath=/html/body/div[2]/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${MULCTMETHOD_EDIT_DDL_ADJUSTMENTRATE_CLASS_LOCATOR}    class=dx-list-item-content
@{MULCTMETHOD_EDIT_DDL_ADJUSTMENTRATE_TH_VALUE}    จำนวนเงิน    เปอร์เซ็นต์
@{MULCTMETHOD_EDIT_DDL_ADJUSTMENTRATE_EN_VALUE}    Amount    Percent
#Unit Charge *
${MULCTMETHOD_EDIT_LBL_UNITCHARGE_TH}    หน่วยคิดค่าปรับ 
${MULCTMETHOD_EDIT_LBL_UNITCHARGE_EN}    Unit Charge
${MULCTMETHOD_EDIT_LBL_UNITCHARGE_LOCATOR}    id=lblUnitChargeEdit
${MULCTMETHOD_EDIT_LBL_UNITCHARGE_PERTHEMOMENT_TH}    ต่อทั้งช่วงเวลา
${MULCTMETHOD_EDIT_LBL_UNITCHARGE_PERTHEMOMENT_EN}    Per the moment
${MULCTMETHOD_EDIT_LBL_UNITCHARGE_PERTHEMOMENT_LOCATOR}    css=#rdlUnitChargeEdit div[class="dx-widget dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"] div[class="dx-item-content"]
# ${MULCTMETHOD_EDIT_LBL_UNITCHARGE_PERTHEMOMENT_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[6]/div/dx-radio-group/div/div[1]/div[2]
${MULCTMETHOD_EDIT_RDL_UNITCHARGE_PERTHEMOMENT_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[6]/div/dx-radio-group/div/div[1]/div[1]
${MULCTMETHOD_EDIT_RDL_UNITCHARGE_PERTHEMOMENT_CHECK_LOCATOR}    css=#rdlUnitChargeEdit div[class="dx-widget dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"]
${MULCTMETHOD_EDIT_LBL_UNITCHARGE_PERDAY_TH}    ต่อวัน 
${MULCTMETHOD_EDIT_LBL_UNITCHARGE_PERDAY_EN}    Per day
${MULCTMETHOD_EDIT_LBL_UNITCHARGE_PERDAY_LOCATOR}    css=#rdlUnitChargeEdit div[class="dx-widget dx-collection"] div[class="dx-item dx-radiobutton"] div[class="dx-item-content"] 
# ${MULCTMETHOD_EDIT_LBL_UNITCHARGE_PERDAY_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[6]/div/dx-radio-group/div/div[2]/div[2]
${MULCTMETHOD_EDIT_RDL_UNITCHARGE_PERDAY_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[6]/div/dx-radio-group/div/div[2]/div[1]
${MULCTMETHOD_EDIT_RDL_UNITCHARGE_PERDAY_CHECK_LOCATOR}    css=#rdlUnitChargeEdit div[class="dx-widget dx-collection"] div[class="dx-item dx-radiobutton"] 
${MULCTMETHOD_EDIT_LBL_UNITCHARGE_VALID_LOCATOR}    id=lblChargeAMulctEditValid
${MULCTMETHOD_EDIT_RDL_UNITCHARGE_LOCATOR}    id=rdlChargeamulctEdit
#Calculation Method *
${MULCTMETHOD_EDIT_LBL_CALCULATIONMETHOD_TH}    วิธีการคำนวณ 
${MULCTMETHOD_EDIT_LBL_CALCULATIONMETHOD_EN}    Calculation Method
${MULCTMETHOD_EDIT_LBL_CALCULATIONMETHOD_LOCATOR}    id=lblCalculationMethodEdit
${MULCTMETHOD_EDIT_LBL_CALCULATIONMETHOD_NOPENALTYCHARGE_TH}    ไม่ทบยอด
${MULCTMETHOD_EDIT_LBL_CALCULATIONMETHOD_NOPENALTYCHARGE_EN}    Not roll over
${MULCTMETHOD_EDIT_LBL_CALCULATIONMETHOD_NOPENALTYCHARGE_LOCATOR}    css=#rdlCalculationMethodEdit div[class="dx-widget dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"] div[class="dx-item-content"]
${MULCTMETHOD_EDIT_RDL_CALCULATIONMETHOD_NOPENALTYCHARGE_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[1]/div[1]/div
${MULCTMETHOD_EDIT_RDL_CALCULATIONMETHOD_NOPENALTYCHARGE_CHECK_LOCATOR}    css=#rdlCalculationMethodEdit div[class="dx-widget dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"]
${MULCTMETHOD_EDIT_LBL_CALCULATIONMETHOD_CHARGEAFINE_TH}    ทบยอด 
${MULCTMETHOD_EDIT_LBL_CALCULATIONMETHOD_CHARGEAFINE_EN}    Roll over
${MULCTMETHOD_EDIT_LBL_CALCULATIONMETHOD_CHARGEAFINE_LOCATOR}    css=#rdlCalculationMethodEdit div[class="dx-widget dx-collection"] div[class="dx-item dx-radiobutton"] div[class="dx-item-content"] 
${MULCTMETHOD_EDIT_RDL_CALCULATIONMETHOD_CHARGEAFINE_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[2]/div[1]/div
${MULCTMETHOD_EDIT_RDL_CALCULATIONMETHOD_CHARGEAFINE_CHECK_LOCATOR}    css=#rdlCalculationMethodEdit div[class="dx-widget dx-collection"] div[class="dx-item dx-radiobutton"] 
${MULCTMETHOD_EDIT_RDL_CALCULATIONMETHOD_LOCATOR}    id=rdlCalculationMethodEdit

############################ 
############## Table ############## 
#Time Unit
${MULCTMETHOD_EDIT_LBL_RESULT_TIMEUNIT_TH}    หน่วยเวลา
${MULCTMETHOD_EDIT_LBL_RESULT_TIMEUNIT_EN}    Time Unit
${MULCTMETHOD_EDIT_LBL_RESULT_TIMEUNIT_LOCATOR}    id=lblTimeUnitHeader
#Number of time past the deadline
${MULCTMETHOD_EDIT_LBL_RESULT_NUMBEROFTIMEPASTTHEDEADLINE_TH}    จำนวนเวลาที่เกินวันครบกำหนดชำระ
${MULCTMETHOD_EDIT_LBL_RESULT_NUMBEROFTIMEPASTTHEDEADLINE_EN}    Number of time past the deadline
${MULCTMETHOD_EDIT_LBL_RESULT_NUMBEROFTIMEPASTTHEDEADLINE_LOCATOR}    id=lblNumberOfTimePastTheDeadlineHeader
#Amount
${MULCTMETHOD_EDIT_LBL_RESULT_AMOUNT_TH}    จำนวนเงิน
${MULCTMETHOD_EDIT_LBL_RESULT_AMOUNT_EN}    Amount
${MULCTMETHOD_EDIT_LBL_RESULT_AMOUNT_LOCATOR}    id=lblAmountHeader
#Percent
${MULCTMETHOD_EDIT_LBL_RESULT_PERCENT_TH}    เปอร์เซ็นต์
${MULCTMETHOD_EDIT_LBL_RESULT_PERCENT_EN}    Percent
${MULCTMETHOD_EDIT_LBL_RESULT_PERCENT_LOCATOR}    id=lblPercentHeader
#Onwards
${MULCTMETHOD_EDIT_LBL_RESULT_ONWARDS_TH}    เป็นต้นไป
${MULCTMETHOD_EDIT_LBL_RESULT_ONWARDS_EN}    Onwards

${MULCTMETHOD_EDIT_LBL_RESULT_ONWARDS_LOCATOR}    css=#rdlOnwards div[class="dx-checkbox-container"] span[class="dx-checkbox-text"]
# ${MULCTMETHOD_EDIT_LBL_RESULT_ONWARDS_LOCATOR}    xpath=//*[@id="rdlOnwards"]/span[2]
${MULCTMETHOD_EDIT_CHK_RESULT_ONWARDS_LOCATOR}    xpath=//*[@id="rdlOnwards"]/span[1]/input
# กล่องที่เปิดไว้หลัง เป็นต้นไป คือกล่องจำนวนที่ปรับ เป็นต้นไปของจำนวนเวลาที่เกินวันครบกำหนดชำระ

############################ 
# Time Unit
${MULCTMETHOD_EDIT_DDL_TIMEUNIT_LOCATOR}    id=ddlTimeUnitEdit
${MULCTMETHOD_EDIT_DDL_TIMEUNIT_LIST_LOCATOR}    xpath=/html/body/div[2]/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${MULCTMETHOD_EDIT_DDL_TIMEUNIT_CLASS_LOCATOR}    class=dx-list-item-content
@{MULCTMETHOD_EDIT_DDL_TIMEUNIT_TH_VALUE}    วัน    เดือน
@{MULCTMETHOD_EDIT_DDL_TIMEUNIT_EN_VALUE}    Day    Month
#Number of time past the deadline
${MULCTMETHOD_EDIT_TXT_NUMBEROFTIMEPASTTHEDEADLINE_LOCATOR}    id=txtNumberoftimepastthedeadline1
${MULCTMETHOD_EDIT_INPUT_NUMBEROFTIMEPASTTHEDEADLINE_LOCATOR}    id=input_txtNumberoftimepastthedeadline1
${MULCTMETHOD_EDIT_TXT_NUMBEROFTIMEPASTTHEDEADLINE_VALID_LOCATOR}    id=lblNumberoftimepastthedeadlineValid1
${MULCTMETHOD_EDIT_TXT_NUMBEROFTIMEPASTTHEDEADLINE2_LOCATOR}    id=txtNumberoftimepastthedeadline2
${MULCTMETHOD_EDIT_INPUT_NUMBEROFTIMEPASTTHEDEADLINE2_LOCATOR}    id=input_txtNumberoftimepastthedeadline2
${MULCTMETHOD_EDIT_TXT_NUMBEROFTIMEPASTTHEDEADLINE_VALID2_LOCATOR}    id=lblNumberoftimepastthedeadlineValid2
#Amount/Percent
${MULCTMETHOD_EDIT_TXT_AMOUNTPERCENT_LOCATOR}    id=txtAmountPercent1
${MULCTMETHOD_EDIT_INPUT_AMOUNTPERCENT_LOCATOR}    id=input_txtAmountPercent1
${MULCTMETHOD_EDIT_TXT_AMOUNTPERCENT_VALID_LOCATOR}    id=lblAmountPercentValid1
${MULCTMETHOD_EDIT_TXT_AMOUNTPERCENT2_LOCATOR}    id=txtAmountPercent2
${MULCTMETHOD_EDIT_INPUT_AMOUNTPERCENT2_LOCATOR}    id=input_txtAmountPercent2
${MULCTMETHOD_EDIT_TXT_AMOUNTPERCENT2_VALID_LOCATOR}    id=lblAmountPercentValid2
#+
${MULCTMETHOD_EDIT_BTN_ADD_LOCATOR}    id=btnAdd
#-
${MULCTMETHOD_EDIT_BTN_DELETE_LOCATOR}    id=btnDelete

#Day/Month
${MULCTMETHOD_EDIT_LBL_TIMEUNIT_DAY_TH}    วัน
${MULCTMETHOD_EDIT_LBL_TIMEUNIT_DAY_EN}    Day
${MULCTMETHOD_EDIT_LBL_TIMEUNIT_MONTH_TH}    เดือน
${MULCTMETHOD_EDIT_LBL_TIMEUNIT_MONTH_EN}    Month
${MULCTMETHOD_EDIT_LBL_TIMEUNIT_DAYMONTH_LOCATOR}    id=lblTimeUnitDayMonth
${MULCTMETHOD_EDIT_LBL_TIMEUNIT_DAYMONTH2_LOCATOR}    id=lblTimeUnitDayMonth2
#Number of time past the deadline
${MULCTMETHOD_EDIT_TXT_NUMBEROFTIMEPASTTHEDEADLINE_LOCATOR}    id=txtTempNumberoftimepastthedeadlineEdit
${MULCTMETHOD_EDIT_INPUT_NUMBEROFTIMEPASTTHEDEADLINELOCATOR}    id=input_txtTempNumberoftimepastthedeadlineEdit
#Amount/Percent
# กล่องที่เปิดไว้หลัง เป็นต้นไป คือกล่องจำนวนที่ปรับ เป็นต้นไปของจำนวนเวลาที่เกินวันครบกำหนดชำระ
${MULCTMETHOD_EDIT_TXT_AMOUNTPERCENT_ONWARDS_LOCATOR}    id=txtTempAmountPercentEdit
${MULCTMETHOD_EDIT_INPUT_AMOUNTPERCENT_ONWARDS_LOCATOR}    id=input_txtTempAmountPercentEdit
${MULCTMETHOD_EDIT_TXT_AMOUNTPERCENT_ONWARDS_VALID_LOCATOR}    id=txtTempAmountPercentEdit

#Cancel
${MULCTMETHOD_ADDEDIT_BTN_CANCEL_TH}    ยกเลิก
${MULCTMETHOD_ADDEDIT_BTN_CANCEL_EN}    Cancel
${MULCTMETHOD_ADDEDIT_BTN_CANCEL_LOCATOR}    id=btnCancel
#Save
${MULCTMETHOD_ADDEDIT_BTN_SAVE_TH}    บันทึก
${MULCTMETHOD_ADDEDIT_BTN_SAVE_EN}    Save
${MULCTMETHOD_ADDEDIT_BTN_SAVE_LOCATOR}    id=btnSave
################################################################################################################################
################################################################-- Value --################################################################
#-------------------------------------------- data Create --------------------------------------------#
#MulctMethod NameTh *
${MULCTMETHOD_MULCTMETHODNAME_VALUE}    ชื่อวิธีคำนวณค่าปรับ
${MULCTMETHOD_MULCTMETHODNAME2_VALUE}    ชื่อวิธีคำนวณค่าปรับ2
#Status *
${MULCTMETHOD_STATUS_TH_VALUE1}    ใช้งาน
${MULCTMETHOD_STATUS_EN_VALUE1}    Active
${MULCTMETHOD_STATUSID_VALUE1}    1
${MULCTMETHOD_STATUS_TH_VALUE2}    ไม่ใช้งาน
${MULCTMETHOD_STATUS_EN_VALUE2}    Inactive
${MULCTMETHOD_STATUSID_VALUE2}    0
#Remark 
${MULCTMETHOD_REMARK_VALUE}    หมายเหตุ1
${MULCTMETHOD_REMARK_VALUE_NONE}    None
#Adjustment Rate *
${MULCTMETHOD_ADJUSTMENTRATE_AMOUNT_TH_VALUE}    จำนวนเงิน
${MULCTMETHOD_ADJUSTMENTRATE_AMOUNT_EN_VALUE}    Amount
${MULCTMETHOD_ADJUSTMENTRATE_AMOUNTID_VALUE}    1
${MULCTMETHOD_ADJUSTMENTRATE_PERCENT_TH_VALUE}    เปอร์เซ็นต์
${MULCTMETHOD_ADJUSTMENTRATE_PERCENT_EN_VALUE}    Percent
${MULCTMETHOD_ADJUSTMENTRATE_PERCENTID_VALUE}    2
#Unit Charge *
${MULCTMETHOD_UNITCHARGE_PERTHEMOMENT_TH_VALUE}    ต่อทั้งช่วงเวลา
${MULCTMETHOD_UNITCHARGE_PERTHEMOMENT_EN_VALUE}    Per the moment
${MULCTMETHOD_UNITCHARGE_PERTHEMOMENTID_VALUE}    1
${MULCTMETHOD_UNITCHARGE_PERDAY_TH_VALUE}    ต่อวัน
${MULCTMETHOD_UNITCHARGE_PERDAY_EN_VALUE}    Per day
${MULCTMETHOD_UNITCHARGE_PERDAYID_VALUE}    2
#Calculation Method *
${MULCTMETHOD_CALCULATIONMETHOD_NOTROLLOVER_TH_VALUE}    ไม่ทบยอด
${MULCTMETHOD_CALCULATIONMETHOD_NOTROLLOVER_EN_VALUE}    Not roll over
${MULCTMETHOD_CALCULATIONMETHOD_NOTROLLOVERID_VALUE}    1
${MULCTMETHOD_CALCULATIONMETHOD_ROLLOVER_TH_VALUE}    ทบยอด
${MULCTMETHOD_CALCULATIONMETHOD_ROLLOVER_EN_VALUE}    Roll over
${MULCTMETHOD_CALCULATIONMETHOD_ROLLOVERID_VALUE}    2
# Time Unit
${MULCTMETHOD_TIMEUNIT_DAY_TH_VALUE}    วัน
${MULCTMETHOD_TIMEUNIT_DAY_EN_VALUE}    Day
${MULCTMETHOD_TIMEUNIT_DAYID_VALUE}    1
${MULCTMETHOD_TIMEUNIT_MOUTH_TH_VALUE}    เดือน
${MULCTMETHOD_TIMEUNIT_MOUTH_EN_VALUE}    Month
${MULCTMETHOD_TIMEUNIT_MOUTHID_VALUE}    2
#Number of time past the deadline
${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE_VALUE}    1
${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE2_VALUE}    3
${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE3_VALUE}    5
#Amount/Percent
${MULCTMETHOD_AMOUNTPERCENT_VALUE}    2
${MULCTMETHOD_AMOUNTPERCENT2_VALUE}    4
${MULCTMETHOD_AMOUNTPERCENT3_VALUE}    6
# กล่องที่เปิดไว้หลัง เป็นต้นไป คือกล่องจำนวนที่ปรับ เป็นต้นไปของจำนวนเวลาที่เกินวันครบกำหนดชำระ
#Number of time past the deadline
${MULCTMETHOD_NUMBEROFTIMEPASTTHEDEADLINE_ONWARDS_VALUE}    9999
#Amount/Percent
${MULCTMETHOD_AMOUNTPERCENT_ONWARDS_VALUE}    5
${MULCTMETHOD_AMOUNTPERCENT2_ONWARDS_VALUE}    6
#-------------------------------------------- delete data mulct_condition --------------------------------------------#
# StampDelete
${MULCTMETHOD_STAMPDELETEPROPERTIES_DELETETAT_VALUE}    '2021-12-08 00:00:00'
${MULCTMETHOD_STAMPDELETEPROPERTIES_FILENAME_VALUE}   MulctMethod_StampDelete.sql
################################################################-- capture page screenshot --################################################################
#-------------------------------------------- Search --------------------------------------------#	
${MULCTMETHOD_SEARCH_M12_0_1_1_000_SUCCESS_SCREENSHOT}    M12_0_1_1_000_MulctMethod_Success_Search_VerifyScreen_Screen.png
${MULCTMETHOD_SEARCH_M12_1_1_1_000_SUCCESS_SCREENSHOT}    M12_1_1_1_000_MulctMethod_Success_Search_VerifyAction_Screen.png
#-------------------------------------------- View --------------------------------------------#	
${MULCTMETHOD_VIEW_M12_0_1_5_000_SUCCESS_SCREENSHOT}    M12_0_1_5_000_MulctMethod_Success_View_VerifyScreen_Screen.png
${MULCTMETHOD_VIEW_M12_1_1_5_000_SUCCESS_SCREENSHOT}    M12_1_1_5_000_MulctMethod_Success_View_VerifyAction_Screen.png
#-------------------------------------------- Create --------------------------------------------#	
${MULCTMETHOD_CREATE_M12_0_1_2_000_SUCCESS_SCREENSHOT}    M12_0_1_2_000_MulctMethod_Success_Create_VerifyScreen_Screen.png
${MULCTMETHOD_CREATE_M12_1_1_2_000_SUCCESS_SCREENSHOT}    M12_1_1_2_000_MulctMethod_Success_Create_VerifyAction_Screen.png
#-------------------------------------------- Edit --------------------------------------------#	
${MULCTMETHOD_EDIT_M12_0_1_3_000_SUCCESS_SCREENSHOT}    M12_0_1_3_000_MulctMethod_Success_Edit_VerifyScreen_Screen.png
${MULCTMETHOD_EDIT_M12_1_1_3_000_SUCCESS_SCREENSHOT}    M12_1_1_3_000_MulctMethod_Success_Edit_VerifyAction_Screen.png
#-------------------------------------------- Delete --------------------------------------------#	
${MULCTMETHOD_DELETE_M12_0_1_4_000_SUCCESS_SCREENSHOT}    M12_0_1_4_000_MulctMethod_Success_Delete_VerifyScreen_Screen.png
${MULCTMETHOD_DELETE_M12_1_1_4_000_SUCCESS_SCREENSHOT}    M12_1_1_4_000_MulctMethod_Success_Delete_VerifyAction_Screen.png























