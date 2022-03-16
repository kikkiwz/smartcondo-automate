*** Variables ***

#Home before login Welcome
${HOMELOGIN_VIEW_LBL_WELCOMETOSMARTRMS_TH}    ยินดีต้อนรับสู่ SmartRMS
${HOMELOGIN_VIEW_LBL_WELCOMETOSMARTRMS_EN}    Welcome to SmartRMS
${HOMELOGIN_VIEW_LBL_WELCOMETOSMARTRMS_LOCATOR}    id=lblWelcome
${HOMELOGIN_VIEW_LBL_SMARTRMSFREE_TH}    ใช้งาน SmartRMS ฟรี!
${HOMELOGIN_VIEW_LBL_SMARTRMSFREE_EN}    SmartRMS Free!
${HOMELOGIN_VIEW_LBL_SMARTRMSFREE_LOCATOR}    id=lblUseFree
${HOMELOGIN_VIEW_LBL_TRYSMARTRMSFORFREE_TH}    ใช้งาน SmartRMS กับโครงการของคุณ
${HOMELOGIN_VIEW_LBL_TRYSMARTRMSFORFREE_EN}    Try SmartRMS for free
${HOMELOGIN_VIEW_LBL_TRYSMARTRMSFORFREE_LOCATOR}    id=lblTryUseFree
#First name
${HOMELOGIN_VIEW_LBL_FNAME_TH}    ชื่อ *
${HOMELOGIN_VIEW_LBL_FNAME_EN}    First name *
${HOMELOGIN_VIEW_LBL_FNAME_PLACEHOLDER_TH}    ชื่อ 
${HOMELOGIN_VIEW_LBL_FNAME_PLACEHOLDER_EN}    First name
${HOMELOGIN_VIEW_LBL_FNAME_LOCATOR}    id=lblFirstName
${HOMELOGIN_VIEW_TXT_FNAME_LOCATOR}    id=txtName
#Last name
${HOMELOGIN_VIEW_LBL_LNAME_TH}    นามสกุล *
${HOMELOGIN_VIEW_LBL_LNAME_EN}    Last name *
${HOMELOGIN_VIEW_LBL_LNAME_PLACEHOLDER_TH}    นามสกุล
${HOMELOGIN_VIEW_LBL_LNAME_PLACEHOLDER_EN}    Last name
${HOMELOGIN_VIEW_LBL_LNAME_LOCATOR}    id=lblLastname
${HOMELOGIN_VIEW_TXT_LNAME_LOCATOR}    id=txtLastName
#Email
${HOMELOGIN_VIEW_LBL_EMAIL_TH}    อีเมล *
${HOMELOGIN_VIEW_LBL_EMAIL_EN}    Email *
${HOMELOGIN_VIEW_LBL_EMAIL_PLACEHOLDER_TH}    อีเมล
${HOMELOGIN_VIEW_LBL_EMAIL_PLACEHOLDER_EN}    Email
${HOMELOGIN_VIEW_LBL_EMAIL_LOCATOR}    id=lblEmail
${HOMELOGIN_VIEW_TXT_EMAIL_LOCATOR}    id=txtEmail
#Phone number
${HOMELOGIN_VIEW_LBL_PHONENUMBER_TH}    เบอร์โทรติดต่อ *
${HOMELOGIN_VIEW_LBL_PHONENUMBER_EN}    Phone number *
${HOMELOGIN_VIEW_LBL_PHONENUMBER_PLACEHOLDER_TH}    เบอร์โทรติดต่อ
${HOMELOGIN_VIEW_LBL_PHONENUMBER_PLACEHOLDER_EN}    Phone number
${HOMELOGIN_VIEW_LBL_PHONENUMBER_LOCATOR}    id=lblPhoneNumber
${HOMELOGIN_VIEW_TXT_PHONENUMBER_LOCATOR}    id=txtPhone1
#Building name
${HOMELOGIN_VIEW_LBL_BUILDINGNAME_TH}    ชื่ออาคาร *
${HOMELOGIN_VIEW_LBL_BUILDINGNAME_EN}    Building name *
${HOMELOGIN_VIEW_LBL_BUILDINGNAME_PLACEHOLDER_TH}    ชื่ออาคาร
${HOMELOGIN_VIEW_LBL_BUILDINGNAME_PLACEHOLDER_EN}    Building name
${HOMELOGIN_VIEW_LBL_BUILDINGNAME_LOCATOR}    id=lblBuildingName
${HOMELOGIN_VIEW_TXT_BUILDINGNAME_LOCATOR}    id=txtBuildingName
#Number of floors
${HOMELOGIN_VIEW_LBL_NUMBEROFFLOORS_TH}    จำนวนชั้น *
${HOMELOGIN_VIEW_LBL_NUMBEROFFLOORS_EN}    Number of floors *
${HOMELOGIN_VIEW_LBL_NUMBEROFFLOORS_PLACEHOLDER_TH}    จำนวนชั้น
${HOMELOGIN_VIEW_LBL_NUMBEROFFLOORS_PLACEHOLDER_EN}    Number of floors
${HOMELOGIN_VIEW_LBL_NUMBEROFFLOORS_LOCATOR}    id=lblNumberOfFloors
${HOMELOGIN_VIEW_TXT_NUMBEROFFLOORS_LOCATOR}    id=txtFloors
#Rent payment type
${HOMELOGIN_VIEW_LBL_RENTPAYMENT_TH}    ประเภทการคิดค่าเช่า th *
${HOMELOGIN_VIEW_LBL_RENTPAYMENT_EN}    Rent payment type en *
${HOMELOGIN_VIEW_LBL_RENTPAYMENT_LOCATOR}    id=lblRentalPaymentType
${HOMELOGIN_VIEW_DDL_RENTPAYMENT_LOCATOR}    id=ddlRentalPaymentType
${HOMELOGIN_VIEW_DDL_RENTPAYMENT_LIST_LOCATOR}    xpath=//*[@id="ddlRentalPaymentType"]/option[replace_indexList]
${HOMELOGIN_VIEW_DDL_RENTPAYMENT_CLASS_LOCATOR}    xpath=//*[@id="ddlRentalPaymentType"]/option 
@{HOMELOGIN_VIEW_DDL_RENTPAYMENT_TH_VALUE}    กรุณาเลือก    อยู่ก่อนเก็บ    เก็บก่อนอยู่
@{HOMELOGIN_VIEW_DDL_RENTPAYMENT_EN_VALUE}    Please select    Stay before pay    Pay before stay
#Total rooms
${HOMELOGIN_VIEW_LBL_TOTALROOMS_TH}    จำนวนห้องทั้งหมด *
${HOMELOGIN_VIEW_LBL_TOTALROOMS_EN}    Total rooms *
${HOMELOGIN_VIEW_LBL_TOTALROOMS_PLACEHOLDER_TH}    จำนวนห้องทั้งหมด 
${HOMELOGIN_VIEW_LBL_TOTALROOMS_PLACEHOLDER_EN}    Total rooms
${HOMELOGIN_VIEW_LBL_TOTALROOMS_LOCATOR}    id=lblTotalNumberOfRooms
${HOMELOGIN_VIEW_TXT_TOTALROOMS_LOCATOR}    id=txtRoomCount
#How did you hear about SmartRMS
${HOMELOGIN_VIEW_LBL_HOWDIDYOUHEARRMS_TH}    รู้จัก SmartRMS ได้จาก ?
${HOMELOGIN_VIEW_LBL_HOWDIDYOUHEARRMS_EN}    How did you hear about SmartRMS ?
${HOMELOGIN_VIEW_LBL_HOWDIDYOUHEARRMS_LOCATOR}    id=lblAboutSmartRMS
${HOMELOGIN_VIEW_DDL_HOWDIDYOUHEARRMS_LOCATOR}    id=ddlAboutSmartRMS
${HOMELOGIN_VIEW_DDL_HOWDIDYOUHEARRMS_LIST_LOCATOR}    xpath=//*[@id="ddlAboutSmartRMS"]/option[replace_indexList]
${HOMELOGIN_VIEW_DDL_HOWDIDYOUHEARRMS_CLASS_LOCATOR}    xpath=//*[@id="ddlAboutSmartRMS"]/option
@{HOMELOGIN_VIEW_DDL_HOWDIDYOUHEARRMS_TH_VALUE}    Facebook    Google    Line    ทีมขาย SmartRMS    อื่นๆ
@{HOMELOGIN_VIEW_DDL_HOWDIDYOUHEARRMS_EN_VALUE}    Facebook    Google    Line    Sales SmartRMS    Other
#Please enter text
${HOMELOGIN_VIEW_LBL_PLEASEENTERTEXT_TH}    กรุณากรอกข้อความจากรูป *
${HOMELOGIN_VIEW_LBL_PLEASEENTERTEXT_EN}    Please enter text. *
${HOMELOGIN_VIEW_LBL_PLEASEENTERTEXT_LOCATOR}    id=lblPleaseEnterText
${HOMELOGIN_VIEW_TXT_PLEASEENTERTEXT_LOCATOR}    id=txtCaptcha
#Create Information
${HOMELOGIN_VIEW_BTN_CREATEINFORMATION_TH}    สร้างข้อมูล
${HOMELOGIN_VIEW_BTN_CREATEINFORMATION_EN}    Create Information
${HOMELOGIN_VIEW_BTN_CREATEINFORMATION_LOCATOR}    id=btnCreateInformation

#Home before login Workshop
${HOMELOGIN_VIEW_LBL_WORKSHOP_WORKSHOPREGISFREE_TH}    ลงทะเบียนเรียนฟรี !!!
${HOMELOGIN_VIEW_LBL_WORKSHOP_WORKSHOPREGISFREE_EN}    Workshop registration free!
${HOMELOGIN_VIEW_LBL_WORKSHOP_WORKSHOPREGISFREE_LOCATOR}    id=lblWorkshop
${HOMELOGIN_VIEW_LBL_WORKSHOP_CUSTOMERS_TH}            ลูกค้าที่อยู่ใน กรุงเทพ ฯ และปริมณฑล เรียนการใช้งานในพื้นที่กรุงเทพฯ วันและเวลา ทางระบบจะแจ้งให้ท่านทราบหลังการลงทะเบียน ลูกค้าที่อยู่ต่างจังหวัด จัดเป็นกลุ่มวิดีโอคอล
${HOMELOGIN_VIEW_LBL_WORKSHOP_CUSTOMERS_EN}    Customers who live in Bangkok and suburb learn how to use in the Bangkok area, the date and time, the system will notify you after registration. Customers in other provinces Organized into video call groups
${HOMELOGIN_VIEW_LBL_WORKSHOP_CUSTOMERS_LOCATOR}    id=lblWorkshopText
${HOMELOGIN_VIEW_LBL_WORKSHOP_WORKSHOPREGISFREE1_TH}    ลงทะเบียน Workshop ฟรี!
${HOMELOGIN_VIEW_LBL_WORKSHOP_WORKSHOPREGISFREE1_EN}    Workshop registration free!
${HOMELOGIN_VIEW_LBL_WORKSHOP_WORKSHOPREGISFREE1_LOCATOR}    id=lblWorkshopRegister
#First name
${HOMELOGIN_VIEW_LBL_WORKSHOP_FNAME_TH}    ชื่อ *
${HOMELOGIN_VIEW_LBL_WORKSHOP_FNAME_EN}    First name *
${HOMELOGIN_VIEW_LBL_WORKSHOP_FNAME_PLACEHOLDER_TH}    ชื่อ 
${HOMELOGIN_VIEW_LBL_WORKSHOP_FNAME_PLACEHOLDER_EN}    First name
${HOMELOGIN_VIEW_LBL_WORKSHOP_FNAME_LOCATOR}    id=lblWorkshopFirstName
${HOMELOGIN_VIEW_TXT_WORKSHOP_FNAME_LOCATOR}    id=txtWorkshopFirstName
#Last name
${HOMELOGIN_VIEW_LBL_WORKSHOP_LNAME_TH}    นามสกุล *
${HOMELOGIN_VIEW_LBL_WORKSHOP_LNAME_EN}    Last name *
${HOMELOGIN_VIEW_LBL_WORKSHOP_LNAME_PLACEHOLDER_TH}    นามสกุล
${HOMELOGIN_VIEW_LBL_WORKSHOP_LNAME_PLACEHOLDER_EN}    Last name
${HOMELOGIN_VIEW_LBL_WORKSHOP_LNAME_LOCATOR}    id=lblWorkshopLastname
${HOMELOGIN_VIEW_TXT_WORKSHOP_LNAME_LOCATOR}    id=txtWorkshopLastname
#Email
${HOMELOGIN_VIEW_LBL_WORKSHOP_EMAIL_TH}    อีเมล *
${HOMELOGIN_VIEW_LBL_WORKSHOP_EMAIL_EN}    Email *
${HOMELOGIN_VIEW_LBL_WORKSHOP_EMAIL_PLACEHOLDER_TH}    อีเมล
${HOMELOGIN_VIEW_LBL_WORKSHOP_EMAIL_PLACEHOLDER_EN}    Email
${HOMELOGIN_VIEW_LBL_WORKSHOP_EMAIL_LOCATOR}    id=lblWorkshopEmail
${HOMELOGIN_VIEW_TXT_WORKSHOP_EMAIL_LOCATOR}    id=txtWorkshopEmail
#Phone number
${HOMELOGIN_VIEW_LBL_WORKSHOP_PHONENUMBER_TH}    เบอร์โทรติดต่อ *
${HOMELOGIN_VIEW_LBL_WORKSHOP_PHONENUMBER_EN}    Phone number *
${HOMELOGIN_VIEW_LBL_WORKSHOP_PHONENUMBER_PLACEHOLDER_TH}    เบอร์โทรติดต่อ
${HOMELOGIN_VIEW_LBL_WORKSHOP_PHONENUMBER_PLACEHOLDER_EN}    Phone number
${HOMELOGIN_VIEW_LBL_WORKSHOP_PHONENUMBER_LOCATOR}    id=lblWorkshopPhoneNumber
${HOMELOGIN_VIEW_TXT_WORKSHOP_PHONENUMBER_LOCATOR}    id=txtWorkshopPhoneNumber
#Building name
${HOMELOGIN_VIEW_LBL_WORKSHOP_BUILDINGNAME_TH}    ชื่ออาคาร *
${HOMELOGIN_VIEW_LBL_WORKSHOP_BUILDINGNAME_EN}    Building name *
${HOMELOGIN_VIEW_LBL_WORKSHOP_BUILDINGNAME_PLACEHOLDER_TH}    ชื่ออาคาร
${HOMELOGIN_VIEW_LBL_WORKSHOP_BUILDINGNAME_PLACEHOLDER_EN}    Building name
${HOMELOGIN_VIEW_LBL_WORKSHOP_BUILDINGNAME_LOCATOR}    id=lblWorkshopBuildingName
${HOMELOGIN_VIEW_TXT_WORKSHOP_BUILDINGNAME_LOCATOR}    id=txtWorkshopBuildingName
#Rent payment type
${HOMELOGIN_VIEW_LBL_WORKSHOP_ADDRESS_TH}    ที่ตั้งอาคาร *
${HOMELOGIN_VIEW_LBL_WORKSHOP_ADDRESS_EN}    Address *
${HOMELOGIN_VIEW_LBL_WORKSHOP_ADDRESS_LOCATOR}    id=lblWorkshopAddress
${HOMELOGIN_VIEW_DDL_WORKSHOP_ADDRESS_LOCATOR}    id=ddlWorkshopAddress
${HOMELOGIN_VIEW_DDL_WORKSHOP_ADDRESS_LIST_LOCATOR}    xpath=//*[@id="ddlWorkshopAddress"]/option[replace_indexList]
${HOMELOGIN_VIEW_DDL_WORKSHOP_ADDRESS_CLASS_LOCATOR}    xpath=//*[@id="ddlWorkshopAddress"]/option 

#How did you hear about SmartRMS
${HOMELOGIN_VIEW_LBL_WORKSHOP_HOWDIDYOUHEARRMS_TH}    รู้จัก SmartRMS ได้จาก ?
${HOMELOGIN_VIEW_LBL_WORKSHOP_HOWDIDYOUHEARRMS_EN}    How did you hear about SmartRMS ?
${HOMELOGIN_VIEW_LBL_WORKSHOP_HOWDIDYOUHEARRMS_LOCATOR}    id=lblWorkshopAboutSmartRMS
${HOMELOGIN_VIEW_DDL_WORKSHOP_HOWDIDYOUHEARRMS_LOCATOR}    id=ddlWorkshopAboutSmartRMS
${HOMELOGIN_VIEW_DDL_WORKSHOP_HOWDIDYOUHEARRMS_LIST_LOCATOR}    xpath=//*[@id="ddlWorkshopAboutSmartRMS"]/option[replace_indexList]
${HOMELOGIN_VIEW_DDL_WORKSHOP_HOWDIDYOUHEARRMS_CLASS_LOCATOR}    xpath=//*[@id="ddlWorkshopAboutSmartRMS"]/option
@{HOMELOGIN_VIEW_DDL_WORKSHOP_HOWDIDYOUHEARRMS_TH_VALUE}    Facebook    Google    Line    ทีมขาย SmartRMS    อื่นๆ
@{HOMELOGIN_VIEW_DDL_WORKSHOP_HOWDIDYOUHEARRMS_EN_VALUE}    Facebook    Google    Line    Sales SmartRMS    Other
#Please enter text
${HOMELOGIN_VIEW_LBL_WORKSHOP_PLEASEENTERTEXT_TH}    กรุณากรอกข้อความจากรูป *
${HOMELOGIN_VIEW_LBL_WORKSHOP_PLEASEENTERTEXT_EN}    Please enter text. *
${HOMELOGIN_VIEW_LBL_WORKSHOP_PLEASEENTERTEXT_LOCATOR}    id=lblPleaseEnterText2
${HOMELOGIN_VIEW_TXT_WORKSHOP_PLEASEENTERTEXT_LOCATOR}    id=txtCaptcha2
#Create Information
${HOMELOGIN_VIEW_BTN_WORKSHOP_REGISTER_TH}    สมัครเข้า Workshop
${HOMELOGIN_VIEW_BTN_WORKSHOP_REGISTER_EN}    Register
${HOMELOGIN_VIEW_BTN_WORKSHOP_REGISTER_LOCATOR}    id=btnRegister


#Use with SmartRMS
${HOMELOGIN_VIEW_LBL_USEWITHRMS_TH}    ใช้งานกับ SmartRMS
${HOMELOGIN_VIEW_LBL_USEWITHRMS_EN}    Use with SmartRMS
${HOMELOGIN_VIEW_LBL_USEWITHRMS_LOCATOR}    id=lblUseWith
#Safe operation, easy to use
${HOMELOGIN_VIEW_LBL_USEWITHRMS_SAFEOPERATION_TH}    ฟังก์ชันการใช้งาน ปลอดภัย ใช้งานง่าย
${HOMELOGIN_VIEW_LBL_USEWITHRMS_SAFEOPERATION_EN}    Safe operation, easy to use
${HOMELOGIN_VIEW_LBL_USEWITHRMS_SAFEOPERATION_LOCATOR}    id=lblFunction
${HOMELOGIN_VIEW_LBL_USEWITHRMS_SAFEOPERATION1_TH}    เราพร้อมให้บริการด้านการจัดการห้องพักที่สะดวกและตรวจสอบข้อมูลได้  
${HOMELOGIN_VIEW_LBL_USEWITHRMS_SAFEOPERATION1_EN}    We are ready to provide room management services that are convenient and can check information.
${HOMELOGIN_VIEW_LBL_USEWITHRMS_SAFEOPERATION1_LOCATOR}    id=lblFunctionText
#Daily customer service
${HOMELOGIN_VIEW_LBL_USEWITHRMS_DAILYCUSTOMERSERVICE_TH}    บริการลูกค้าสัมพันธ์ทุกวัน
${HOMELOGIN_VIEW_LBL_USEWITHRMS_DAILYCUSTOMERSERVICE_EN}    Daily customer service
${HOMELOGIN_VIEW_LBL_USEWITHRMS_DAILYCUSTOMERSERVICE_LOCATOR}    id=lblServiceCustomer
${HOMELOGIN_VIEW_LBL_USEWITHRMS_DAILYCUSTOMERSERVICE1_TH}    เราพร้อมช่วยเหลือคุณ ด้วยทีมงามสนับสนุนของเราเพื่อคุณจะได้รับประสบการณ์การใช้งาน SmartRMS ที่ดีที่สุด
${HOMELOGIN_VIEW_LBL_USEWITHRMS_DAILYCUSTOMERSERVICE1_EN}    We are here to help you. With our support team, you will have the best SmartRMS experience.
${HOMELOGIN_VIEW_LBL_USEWITHRMS_DAILYCUSTOMERSERVICE1_LOCATOR}    id=lblServiceCustomerText
#Service for tenants and building owners
${HOMELOGIN_VIEW_LBL_USEWITHRMS_SERVICETENANTANDBUILDOWNER_TH}    บริการการใช้งานสำหรับผู้เช่าและเจ้าของอาคาร
${HOMELOGIN_VIEW_LBL_USEWITHRMS_SERVICETENANTANDBUILDOWNER_EN}    Service for tenants and building owners
${HOMELOGIN_VIEW_LBL_USEWITHRMS_SERVICETENANTANDBUILDOWNER_LOCATOR}    id=lblApplicationService
${HOMELOGIN_VIEW_LBL_USEWITHRMS_SERVICETENANTANDBUILDOWNER1_TH}    บริการ Application ที่เก็บรวบรวมค่าใช้จ่าย และแจ้งเตือนการชำระเงินแบบ Realtime แก่ผู้เช่ารวมถึงระบบแจ้งข่าวสารถึงผู้เข้าพักเพื่อทราบสถานะ หรือเหตุการณ์ที่เกิดขึ้นภายในอาคาร
${HOMELOGIN_VIEW_LBL_USEWITHRMS_SERVICETENANTANDBUILDOWNER1_EN}    Application service that collects expenses And realtime payment notifications to tenants, including a system to inform guests about status Or events occurring within the building
${HOMELOGIN_VIEW_LBL_USEWITHRMS_SERVICETENANTANDBUILDOWNER1_LOCATOR}    id=lblApplicationServiceText

#footer
#Download Application
${HOMELOGIN_VIEW_LBL_FOOTER_DOWNLOADAPP_TH}    ดาวน์โหลดแอพพลิเคชั่น
${HOMELOGIN_VIEW_LBL_FOOTER_DOWNLOADAPP_EN}    Download Application
${HOMELOGIN_VIEW_LBL_FOOTER_DOWNLOADAPP_LOCATOR}    id=lblDownloadApplication
#Developed by
${HOMELOGIN_VIEW_LBL_FOOTER_DEVELOPEDBY_TH}    Developed by SourceCode Co., Ltd. ©2017-2020
${HOMELOGIN_VIEW_LBL_FOOTER_DEVELOPEDBY_EN}    Developed by SourceCode Co., Ltd. ©2017-2020
${HOMELOGIN_VIEW_LBL_FOOTER_DEVELOPEDBY_LOCATOR}    id=FooterDevelopedBy
#Contact Us
${HOMELOGIN_VIEW_LBL_FOOTER_CONTACTUS_TH}    Contact Us
${HOMELOGIN_VIEW_LBL_FOOTER_CONTACTUS_EN}    Contact Us
${HOMELOGIN_VIEW_LBL_FOOTER_CONTACTUS_LOCATOR}    id=FooterContactUs
#Privacy Policy 
${HOMELOGIN_VIEW_LBL_FOOTER_PRIVACYPOLICY_TH}    Privacy Policy 
${HOMELOGIN_VIEW_LBL_FOOTER_PRIVACYPOLICY_EN}    Privacy Policy 
${HOMELOGIN_VIEW_LBL_FOOTER_PRIVACYPOLICY_LOCATOR}    id=FooterPrivacyPolicy
#Term of Service
${HOMELOGIN_VIEW_LBL_FOOTER_TERMOFSERVICE_TH}    Term of Service
${HOMELOGIN_VIEW_LBL_FOOTER_TERMOFSERVICE_EN}    Term of Service
${HOMELOGIN_VIEW_LBL_FOOTER_TERMOFSERVICE_LOCATOR}    id=FooterTermOfService

############## RMS_View_HomeLogin_00000 ############## 
#capture page screenshot
${HOMELOGIN_VIEW_00000_SCREENSHOT}    RMS_View_HomeLogin_00000_Screen.png
#title
${HOMELOGIN_VIEW_00000_LBL_TITLE}    SmartRMS

############## RMS_View_HomeLogin_00001 ############## 
#capture page screenshot
${HOMELOGIN_VIEW_00001_SCREENSHOT1}    RMS_View_HomeLogin_00001_Screen1.png
${HOMELOGIN_VIEW_00001_SCREENSHOT2}    RMS_View_HomeLogin_00001_Screen2.png
${HOMELOGIN_VIEW_00001_SCREENSHOT3}    RMS_View_HomeLogin_00001_Screen3.png
${HOMELOGIN_VIEW_00001_SCREENSHOT4}    RMS_View_HomeLogin_00001_Screen4.png
${HOMELOGIN_VIEW_00001_SCREENSHOT5}    RMS_View_HomeLogin_00001_Screen5.png
${HOMELOGIN_VIEW_00001_SCREENSHOT6}    RMS_View_HomeLogin_00001_Screen6.png
#title
${HOMELOGIN_VIEW_00001_LBL_TITLE}    SmartRMS

#First name
${HOMELOGIN_VIEW_00001_LBL_FNAME_VALUE}    fname
#Last name
${HOMELOGIN_VIEW_00001_LBL_LNAME_VALUE}    lname
#Email
${HOMELOGIN_VIEW_00001_LBL_EMAIL_VALUE}    email@email.com
${HOMELOGIN_VIEW_00001_LBL_EMAIL1_VALUE}    pranaya_y@outlook.com
#Phone number
${HOMELOGIN_VIEW_00001_LBL_PHONENUMBER_VALUE}    0111111899
${HOMELOGIN_VIEW_00001_LBL_PHONENUMBER1_VALUE}    0111111111
#Building name
${HOMELOGIN_VIEW_00001_LBL_BUILDINGNAME_VALUE}    BuildingName
#Number of floors
${HOMELOGIN_VIEW_00001_LBL_NUMBEROFFLOORS_VALUE}   10
#Rent payment type
${HOMELOGIN_VIEW_00001_DDL_RENTPAYMENT_TH_VALUE}    อยู่ก่อนเก็บ
${HOMELOGIN_VIEW_00001_DDL_RENTPAYMENT_EN_VALUE}    Stay before pay
#Total rooms
${HOMELOGIN_VIEW_00001_LBL_TOTALROOMS_VALUE}    20

#text error duplicate email and phone
${HOMELOGIN_VIEW_00001_LBL_EMAIL_TXTERROR_TH}    อีเมล pranaya_y@outlook.com มีอยู่แล้วในระบบ
${HOMELOGIN_VIEW_00001_LBL_EMAIL_TXTERROR_EN}    Email pranaya_y@outlook.com already exists in the system.
${HOMELOGIN_VIEW_00001_LBL_PHONENUMBER_TXTERROR_TH}    เบอร์โทรติดต่อ 0111111111 มีอยู่แล้วในระบบ
${HOMELOGIN_VIEW_00001_LBL_PHONENUMBER_TXTERROR_EN}    Phone number 0111111111 already exists in the system.

############## RMS_View_HomeLogin_00002 ############## 
#capture page screenshot
${HOMELOGIN_VIEW_00002_SCREENSHOT1}    RMS_View_HomeLogin_00002_Screen1.png
${HOMELOGIN_VIEW_00002_SCREENSHOT2}    RMS_View_HomeLogin_00002_Screen2.png
#title
${HOMELOGIN_VIEW_00002_LBL_TITLE}    SmartRMS

############## RMS_View_HomeLogin_00003 ############## 
#capture page screenshot
${HOMELOGIN_VIEW_00003_SCREENSHOT}    RMS_View_HomeLogin_00003_Screen.png

#title
${HOMELOGIN_VIEW_00003_LBL_TITLE}    SmartRMS

############## RMS_View_HomeLogin_00004 ############## 
#capture page screenshot
${HOMELOGIN_VIEW_00004_SCREENSHOT}    RMS_View_HomeLogin_00004_Screen.png

#title
${HOMELOGIN_VIEW_00004_LBL_TITLE}    SmartRMS






