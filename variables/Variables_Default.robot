*** Variables ***
################################################################-- default Other --################################################################
${timeout}    1 second
${timeout_dropdrown}    0.5 second
${timeout_calendar}    0.5 second
${delay}    1
${BROWSER}    chrome
${WIDTH}    1300
${HEIGHT}    768

${NONE}    None
${ESC}    ESC
${TRUE}    TRUE
${FALSE}    FALSE
${TRUE_LOWWER}    true
${FALSE_LOWWER}    false

${DELETE_ID}    id=  
${POSITION_0}    [0]

${LIMIT_20}    20
${LIMIT_50}    50
${LIMIT_100}    100
${LIMIT_1000}    1000
${OFFSET_0}    0
${OFFSET_10}    10
${ORDERBY_DESC}    desc
${ORDERBY_ASC}    asc
${SUBTRACT}    -

${CLASS_REQUIRED}    required
#attribute
${ATTRIBUTE_CLASS}    class
${ATTRIBUTE_PLACEHOLDER}    placeholder
${ATTRIBUTE_PLACEHOLDER_DX}    data-dx_placeholder
${ATTRIBUTE_PLACEHOLDER1_DX}    ng-reflect-placeholder
${ATTRIBUTE_MAXLENGTH}    maxlength
${ATTRIBUTE_MAX}    max
${ATTRIBUTE_MIN}    min
${ATTRIBUTE_NG_REFLECT_MAXLENGTH}    ng-reflect-max-length
${ATTRIBUTE_TITLE}    title
${ATTRIBUTE_TYPE}    type
${ATTRIBUTE_ARIACHECKED}    aria-checked
${ATTRIBUTE_VALUE_DX}    ng-reflect-value
${ATTRIBUTE_ARIA_DISABLED_DX}    aria-disabled
${ATTRIBUTE_NG_REFLECT_MODEL}    ng-reflect-model
${ATTRIBUTE_ARIA_OWNS}    aria-owns
${ATTRIBUTE_NG_REFLECT_VISIBLE}    ng-reflect-visible

# Language
${DEFAULT_TH}    TH
${DEFAULT_EN}    EN

# type
${DEFAULT_TYPE_TEXT}    text
${DEFAULT_TYPE_INT}    int
${DEFAULT_TYPE_LONG}    Long
${DEFAULT_TYPE_NOTLONG}    notLong
 
#replace
${DEFAULT_REPLACE_ID}    [id]
################################################################-- default dropdrown --################################################################
${DEFAULT_DDL_SELECTDATA_TH}     กรุณาเลือก 
${DEFAULT_DDL_SELECTDATA_EN}     Select data 

${DEFAULT_DDL_SELECT_TH}     เลือก 
${DEFAULT_DDL_SELECT_EN}     Select 

${DEFAULT_DDL_SELECTBANKACCOUNT_TH}     เลือกบัญชีธนาคาร 
${DEFAULT_DDL_SELECTBANKACCOUNT_EN}     Select bank account 

${DEFAULT_DDL_SELECTACCOUNT_TH}     เลือกประเภทบัญชี 
${DEFAULT_DDL_SELECTACCOUNT_EN}     Select Account 

${DEFAULT_DDL_MANAGEMULTIPLEITEM_TH}    จัดการทีละหลายรายการ
${DEFAULT_DDL_MANAGEMULTIPLEITEM_EN}    Manage multiple item

${DEFAULT_DDL_SHOWALLROOM_TH}    แสดงทุกห้อง
${DEFAULT_DDL_SHOWALLROOM_EN}    Show all room

${DEFAULT_DDL_SELECTROOMYOUWANTTOSTAY_TH}     เลือกห้องที่ต้องการเข้าพัก 
${DEFAULT_DDL_SELECTROOMYOUWANTTOSTAY_EN}     Select the room you want to stay

${DEFAULT_DDL_ALL_TH}     ทั้งหมด 
${DEFAULT_DDL_ALL_EN}     All

################################################################-- default Text --################################################################
#THB
${DEFAULT_LBL_THB_TH}    บาท
${DEFAULT_LBL_THB_EN}    THB
#Room
${DEFAULT_LBL_ROOM_TH}    ห้อง
${DEFAULT_LBL_ROOM_EN}    Room
#Unit
${DEFAULT_LBL_UNIT_TH}    หน่วย
${DEFAULT_LBL_UNIT_EN}    Unit
#Person
${DEFAULT_LBL_PERSON_TH}    คน
${DEFAULT_LBL_PERSON_EN}    Person
#THB
${DEFAULT_LBL_THB_0_TH}    0.00 บาท
${DEFAULT_LBL_THB_0_EN}    0.00 THB

#No data
${DEFAULT_LBL_NODATA_TH}    ไม่พบข้อมูล
${DEFAULT_LBL_NODATA_EN}    No data

${DEFAULT_LBL_PAGING_1_TH1}    หน้า 1 จาก [pageTo] ([num] รายการ)
${DEFAULT_LBL_PAGING_1_EN1}    Page 1 From [pageTo] ([num] items.) 
${DEFAULT_LBL_PAGING_1_TH}    หน้า 1 จาก 1 ([num] รายการ)
${DEFAULT_LBL_PAGING_1_EN}    Page 1 From 1 ([num] items.) 
#maxlength
${DEFAULT_TXT_MAXLENGTH_10}    10
${DEFAULT_TXT_MAXLENGTH_11}    11
${DEFAULT_TXT_MAXLENGTH_125}    125
${DEFAULT_TXT_MAXLENGTH_255}    255
#max min
${DEFAULT_TXT_MIN_0}    0
${DEFAULT_TXT_MAX_100}    100
${DEFAULT_TXT_MAX_9999999999_99}    9999999999.99

#Search
# ${DEFAULT_TXT_SEARCH_TH}    ค้นหา...
# ${DEFAULT_TXT_SEARCH_EN}    Search...
# ${DEFAULT_TXT_SEARCH_LOCATOR}    css=div.dx-datagrid-search-panel div[class="dx-placeholder"]

# UI mapping field bankAccountType 1 = "เงินฝากออมทรัพย์" หรือ​ "Savings", 2= "เงินฝากกระแสรายวัน" หรือ "Current deposit" , 3 = "ฝากประจำ" หรือ "Fixed deposit"
${DEFAULT_LBL_BANKACCOUNTTYPE_SAVINGS_TH}    เงินฝากออมทรัพย์
${DEFAULT_LBL_BANKACCOUNTTYPE_SAVINGS_EN}    Savings
${DEFAULT_LBL_BANKACCOUNTTYPE_CURRENTDEPOSIT_TH}    เงินฝากกระแสรายวัน
${DEFAULT_LBL_BANKACCOUNTTYPE_CURRENTDEPOSIT_EN}    Current deposit
${DEFAULT_LBL_BANKACCOUNTTYPE_FIXEDDEPOSIT_TH}    ฝากประจำ   
${DEFAULT_LBL_BANKACCOUNTTYPE_FIXEDDEPOSIT_EN}    Fixed deposit

# UI mapping field EmployeeType 1 = "พนักงานทำความสะอาด" หรือ​ "Cleaning staff", 2= "พนักงานซ่อมแซม" หรือ "Repair staff" , 3 = "พนักงานทำความสะอาดและซ่อมแซม" หรือ "Cleaning and Repair staff"
${DEFAULT_LBL_EMPLOYEETYPE_SAVINGS_TH}    พนักงานทำความสะอาด
${DEFAULT_LBL_EMPLOYEETYPE_SAVINGS_EN}    Cleaning staff
${DEFAULT_LBL_EMPLOYEETYPE_CURRENTDEPOSIT_TH}    พนักงานซ่อมแซม
${DEFAULT_LBL_EMPLOYEETYPE_CURRENTDEPOSIT_EN}    Repair staff
${DEFAULT_LBL_EMPLOYEETYPE_FIXEDDEPOSIT_TH}    พนักงานทำความสะอาดและซ่อมแซม   
${DEFAULT_LBL_EMPLOYEETYPE_FIXEDDEPOSIT_EN}    Cleaning and Repair staff

# UI mapping field TitelId 1 = "นาย" หรือ​ "Mr."
${DEFAULT_LBL_EMPLOYEETITEL_MR_TH}    นาย
${DEFAULT_LBL_EMPLOYEETITEL_MR_EN}    Mr.

# UI mapping field status 0=ไม่ใช้งาน , 1 = ใช้งาน , 0=Inactive , 1 = Active
${DEFAULT_LBL_STATUS_INACTIVE_TH}    ไม่ใช้งาน
${DEFAULT_LBL_STATUS_INACTIVE_EN}    InActive
${DEFAULT_LBL_STATUS_INACTIVE_LOW_EN}    Inactive
${DEFAULT_LBL_STATUS_ACTIVE_TH}    ใช้งาน
${DEFAULT_LBL_STATUS_ACTIVE_EN}    Active

# bill payment status 
# ไม่ใช้งาน
${DEFAULT_LBL_BILLPAYMENTSTATUS_INACTIVE}    ไม่ใช้งาน
${DEFAULT_LBL_BILLPAYMENTSTATUS_INACTIVE_VALUE}    0
# ใช้งาน
${DEFAULT_LBL_BILLPAYMENTSTATUS_ACTIVE}    ใช้งาน
${DEFAULT_LBL_BILLPAYMENTSTATUS_ACTIVE_VALUE}    1

# bill payment bank 
# 1 = ธนาคารยูโอบี (UOB)
${DEFAULT_LBL_BILLPAYMENTBANK_UOB}    ธนาคารยูโอบี(UOB)
${DEFAULT_LBL_BILLPAYMENTBANK_UOB_VALUE}    1
# 2 = ธนาคารไทยพาณิชย์ (SCB)
${DEFAULT_LBL_BILLPAYMENTBANK_SCB}    ธนาคารไทยพาณิชย์(SCB)
${DEFAULT_LBL_BILLPAYMENTBANK_SCB_VALUE}    2

@{DEFAULT_LBL_MONTH_TH}    มกราคม    กุมภาพันธ์    มีนาคม    เมษายน    พฤษภาคม    มิถุนายน    กรกฏาคม    สิงหาคม    กันยายน    ตุลาคม    พฤศจิกายน    ธันวาคม
@{DEFAULT_LBL_MONTH_EN}    January    February    March    April    May    June    July    August    September    October    November    December
# [
#     { id: 1, valueTh: 'มกราคม', valueEn: 'January' },
#     { id: 2, valueTh: 'กุมภาพันธ์', valueEn: 'February' },
#     { id: 3, valueTh: 'มีนาคม', valueEn: 'March' },
#     { id: 4, valueTh: 'เมษายน', valueEn: 'April' },
#     { id: 5, valueTh: 'พฤษภาคม', valueEn: 'May' },
#     { id: 6, valueTh: 'มิถุนายน', valueEn: 'June' },
#     { id: 7, valueTh: 'กรกฏาคม', valueEn: 'July' },
#     { id: 8, valueTh: 'สิงหาคม', valueEn: 'August' },
#     { id: 9, valueTh: 'กันยายน', valueEn: 'September' },
#     { id: 10, valueTh: 'ตุลาคม', valueEn: 'October' },
#     { id: 11, valueTh: 'พฤศจิกายน', valueEn: 'November' },
#     { id: 12, valueTh: 'ธันวาคม', valueEn: 'December' },
#   ]

@{DEFAULT_LBL_TYPE_OWNERTYPE_TH}    บุคคลธรรมดา - คนไทย    บุคคลธรรมดา - ต่างชาติ    นิติบุคคล
@{DEFAULT_LBL_TYPE_OWNERTYPE_EN}    Individuals - Thai nationals    Individuals - Foreigners    Juristic person

@{DEFAULT_LBL_EDUCATION_TH}    ต่ำกว่าชั้นมัธยมศึกษาตอนต้น    ชั้นมัธยมศึกษาตอนต้น    ชั้นมัธยมศึกษาตอนปลาย    ประกาศนียบัตรวิชาชีพ (ปวช.)    ประกาศนียบัตรวิชาชีพชั้นสูง (ปวส.)    ปริญญาตรี    ปริญญาโท    ปริญญาเอก
@{DEFAULT_LBL_EDUCATION_EN}    Lower than junior High School    Junior High School    Senior High School    Vocational Certificate    High Vocational Certificate    Bachelor’s degree    Master’s degree    Doctor’s degree

@{DEFAULT_LBL_SALARY_TH}    ต่ำกว่า 10,000 บาท    10,000 - 20,000 บาท    20,000 - 30,000 บาท    30,000 - 50,000 บาท    50,000 - 100,000 บาท    มากกว่า 100,000 บาท
@{DEFAULT_LBL_SALARY_EN}    Less than 10,000 baht    10,000 - 20,000 baht    20,000 - 30,000 baht    30,000 - 50,000 baht    50,000 - 100,000 baht    More than 100,000 baht

@{DEFAULT_LBL_CARTYPE_TH}    รถยนต์    รถจักรยานยนต์
@{DEFAULT_LBL_CARTYPE_EN}    Car    Motorcycle

@{DEFAULT_LBL_LANGUAGEOFDOCUMENTS_TH_VALUE}    ภาษาไทย    ภาษาอังกฤษ
@{DEFAULT_LBL_LANGUAGEOFDOCUMENTS_EN_VALUE}    Thai    English

#Received
${DEFAULT_LBL_ASSETLIST_STATUS_RECEIVED_TH}    ได้รับ
${DEFAULT_LBL_ASSETLIST_STATUS_RECEIVED_EN}    Received
#Not received
${DEFAULT_LBL_ASSETLIST_STATUS_NOTRECEIVED_TH}    ไม่ได้รับ 
${DEFAULT_LBL_ASSETLIST_STATUS_NOTRECEIVED_EN}    Not received
