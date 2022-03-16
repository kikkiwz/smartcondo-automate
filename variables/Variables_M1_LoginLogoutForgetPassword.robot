*** Variables ***
################################################################-- Login --################################################################
#Login
${LOGIN_LBL_TH}    เข้าสู่ระบบ  
${LOGIN_LBL_EN}    Login 
${LOGIN_LBL_LOCATOR}    id=lblLogin
#Username
${LOGIN_LBL_USERNAME_TH}    บัญชีผู้ใช้งาน *
${LOGIN_LBL_USERNAME_EN}    Username *
${LOGIN_LBL_USERNAME_LOCATOR}    id=lblUsername
${LOGIN_TXT_USERNAME_LOCATOR}    xpath=//*[@id="loadPanelArea"]/form/dx-validation-group/div[1]/div/div/dx-text-box/div[1]/div[1]/input
${LOGIN_LBL_USERNAME_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="loadPanelArea"]/form/dx-validation-group/div[1]/div/div/dx-text-box/div[2]/div/div
#Password
${LOGIN_LBL_PASSWORD_TH}    รหัสผ่าน *
${LOGIN_LBL_PASSWORD_EN}    Password *
${LOGIN_LBL_PASSWORD_LOCATOR}    id=lblPassword
${LOGIN_TXT_PASSWORD_LOCATOR}    xpath=//*[@id="loadPanelArea"]/form/dx-validation-group/div[2]/div/div/dx-text-box/div/div[1]/input
${LOGIN_LBL_PASSWORD_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="loadPanelArea"]/form/dx-validation-group/div[2]/div/div/dx-text-box/div[2]/div/div
#Login
${LOGIN_BTN_SIGNIN_TH}    เข้าสู่ระบบ
${LOGIN_BTN_SIGNIN_EN}    Sign in
${LOGIN_BTN_SIGNIN_LOCATOR}    id=lblSignIn
#Forgot password
${LOGIN_LBL_FORGOTPASSWORD_TH}    ลืมรหัสผ่าน
${LOGIN_LBL_FORGOTPASSWORD_EN}    Forgot password
${LOGIN_LNK_FORGOTPASSWORD_LOCATOR}    id=lblForgotPassword
#Project of Building
${HOME_LBL_PROJECTOFBUILDING_TH}    โครงการ
${HOME_LBL_PROJECTOFBUILDING_EN}    Project of Building
${HOME_LBL_PROJECTOFBUILDING_LOCATOR}    id=lblProperty


# #Keep me signed in
# ${LOGIN_LBL_KEEPMESIGNEDIN_TH}    จำให้ฉันลงชื่อเข้าใช้งาน
# ${LOGIN_LBL_KEEPMESIGNEDIN_EN}    Keep me signed in
# ${LOGIN_CHK_KEEPMESIGNEDIN_LOCATOR}    id=chkKeepMeSignedIn

#Privacy Policy
# ${LOGIN_LBL_PRIVACYPOLICY_TH}    Privacy Policy
# ${LOGIN_LBL_PRIVACYPOLICY_EN}    Privacy Policy
# ${LOGIN_LNK_PRIVACYPOLICY_LOCATOR}    id=lnkPrivacyPolicy
# #Term of Service
# ${LOGIN_LBL_TERMOFSERVICE_TH}    Term of Service
# ${LOGIN_LBL_TERMOFSERVICE_EN}    Term of Service
# ${LOGIN_LNK_TERMOFSERVICE_LOCATOR}    id=lnkTermOfService
# #Privacy Policy and Term of Service
# ${LOGIN_LBL_PRIVACYPOLICYTERMOFSERVICE_TH}    Privacy Policy and Term of Service
# ${LOGIN_LBL_PRIVACYPOLICYTERMOFSERVICE_EN}    Privacy Policy and Term of Service
# ${LOGIN_LBL_PRIVACYPOLICYTERMOFSERVICE_LOCATOR}    id=lblPrivacyAndService

################################################################-- Login [Terms and Conditions Header] --################################################################
#Terms and Conditions Header
${LOGIN_LBL_TERMSANDCONDITIONS_HEADER_TH}    ข้อกำหนดและเงื่อนไข
${LOGIN_LBL_TERMSANDCONDITIONS_HEADER_EN}    Terms and Conditions
${LOGIN_LBL_TERMSANDCONDITIONS_HEADER_LOCATOR}    id=lblTermsAndConditionsHeader
#Privacy Policy
${LOGIN_LBL_PRIVACYPOLICY_TH}    นโยบายคุ้มครองข้อมูลส่วนบุคคล
${LOGIN_LBL_PRIVACYPOLICY_EN}    Privacy Policy
${LOGIN_LBL_PRIVACYPOLICY_LOCATOR}    id=lblPrivacyPolicy

${LOGIN_LBL_PRIVACYPOLICY_DETAIL_TH}    นโยบายคุ้มครองข้อมูลส่วนบุคคลนี้จัดทำขึ้นเพื่ออธิบายให้ท่านทราบถึงแนวทางปฏิบัติของบริษัท ในส่วนที่เกี่ยวข้องกับข้อมูลส่วนบุคคล และเหตุผลในการเก็บรวบรวม การใช้ การเปิดเผยข้อมูลส่วนบุคคลของท่าน และสิทธิของท่านในฐานะเจ้าของข้อมูลส่วนบุคคล
${LOGIN_LBL_PRIVACYPOLICY_DETAIL_EN}    This Privacy Policy has been created to provide you the practices of this company regarding the Personal Data and the causes for the collection, use or disclosure of your Personal Data, and your rights as the Data Subject.
${LOGIN_LBL_PRIVACYPOLICY_DETAIL_LOCATOR}    id=lblPrivacyPolicyDetail
#Terms and conditions
${LOGIN_LBL_TERMSANDCONDITIONS_TH}    ข้อกำหนดและเงื่อนไข
${LOGIN_LBL_TERMSANDCONDITIONS_EN}    Terms and conditions
${LOGIN_LBL_TERMSANDCONDITIONS_LOCATOR}    id=lblTermsAndConditions
#1.Data Controller
${LOGIN_LBL_TERMSANDCONDITIONS_1_TH}    1.ผู้ควบคุมข้อมูลส่วนบุคคล
${LOGIN_LBL_TERMSANDCONDITIONS_1_EN}    1.Data Controller
${LOGIN_LBL_TERMSANDCONDITIONS_1_LOCATOR}    id=lblTermsAndConditions1
${LOGIN_LBL_TERMSANDCONDITIONS_1_DETAIL_TH}    นโยบายคุ้มครองข้อมูลส่วนบุคคลนี้ใช้บังคับกับข้อมูลส่วนบุคคลที่เก็บรวบรวมโดย บริษัท ซอร์สโค้ด จำกัด (ให้เรียกว่า "บริษัท")
${LOGIN_LBL_TERMSANDCONDITIONS_1_DETAIL_EN}    This Privacy Policy will be enforced on the Personal Data collected by SourceCode Co., Ltd. (“the company”).
${LOGIN_LBL_TERMSANDCONDITIONS_1_DETAIL_LOCATOR}    id=lblTermsAndConditions1Detail
#2.What is Personal Data?
${LOGIN_LBL_TERMSANDCONDITIONS_2_TH}    2.ข้อมูลส่วนบุคคล
${LOGIN_LBL_TERMSANDCONDITIONS_2_EN}    2.What is Personal Data?
${LOGIN_LBL_TERMSANDCONDITIONS_2_LOCATOR}    id=lblTermsAndConditions2
${LOGIN_LBL_TERMSANDCONDITIONS_2_DETAIL_TH}    คืออะไร ข้อมูลส่วนบุคคล หมายถึง "ข้อมูลเกี่ยวกับบุคคลซึ่งทำให้สามารถระบุตัวบุคคลนั้นได้ไม่ว่าทางตรงหรือ ทางอ้อม แต่ไม่รวมถึงข้อมูลของผู้ถึงแก่กรรมโดยเฉพาะ"
${LOGIN_LBL_TERMSANDCONDITIONS_2_DETAIL_EN}    Personal Data means “any information relating to a Person, which enables the identification of such Person, whether directly or indirectly, but not including the information of the deceased Persons in particular”.
${LOGIN_LBL_TERMSANDCONDITIONS_2_DETAIL_LOCATOR}    id=lblTermsAndConditions2Detail
#3.Personal Data that the company collects
${LOGIN_LBL_TERMSANDCONDITIONS_3_TH}    3.ข้อมูลส่วนบุคคลที่บริษัทเก็บรวบรวม
${LOGIN_LBL_TERMSANDCONDITIONS_3_EN}    3.Personal Data that the company collects
${LOGIN_LBL_TERMSANDCONDITIONS_3_LOCATOR}    id=lblTermsAndConditions3
${LOGIN_LBL_TERMSANDCONDITIONS_3_DETAIL_TH}    บริษัทจะเก็บรวบรวมข้อมูลส่วนบุคคลอันเกี่ยวกับการใช้บริการในปัจจุบันและที่อาจมีเพิ่มขึ้นในอนาคต ดังต่อไปนี้
${LOGIN_LBL_TERMSANDCONDITIONS_3_DETAIL_EN}    The company will collect Personal Data regarding the current use of the services, and may expand to other additional data in the future, as follows:
${LOGIN_LBL_TERMSANDCONDITIONS_3_DETAIL_LOCATOR}    id=lblTermsAndConditions3Detail
${LOGIN_LBL_TERMSANDCONDITIONS_3_DETAIL_1_TH}    ข้อมูลที่บ่งชี้ตัวตน เช่น ชื่อ นามสกุล วันเกิด เพศ สัญชาติ ภาพถ่าย ภาพและหมายเลขบัตรประจำตัวประชาชน ข้อมูลอุปกรณ์อิเล็กทรอนิกส์ ข้อมูลตำแหน่งที่อยู่
${LOGIN_LBL_TERMSANDCONDITIONS_3_DETAIL_1_EN}    Personal Data such as name, surname, age, date of birth, nationality, photo and numbers of identification card, data collected from electronic devices, location data.
${LOGIN_LBL_TERMSANDCONDITIONS_3_DETAIL_1_LOCATOR}    id=lblTermsAndConditions3Detail1
${LOGIN_LBL_TERMSANDCONDITIONS_3_DETAIL_2_TH}    ข้อมูลที่ใช้ในการติดต่อ เช่น ที่อยู่ สถานที่ติดต่อ หมายเลขโทรศัพท์ อีเมล
${LOGIN_LBL_TERMSANDCONDITIONS_3_DETAIL_2_EN}    Contact information such as address, contact address, telephone number, e-mail address.
${LOGIN_LBL_TERMSANDCONDITIONS_3_DETAIL_2_LOCATOR}    id=lblTermsAndConditions3Detail2
${LOGIN_LBL_TERMSANDCONDITIONS_3_DETAIL_3_TH}    ข้อมูลและพฤติกรรมการใช้บริการ หรือผลิตภัณฑ์ที่เกี่ยวข้องกับการบริการ
${LOGIN_LBL_TERMSANDCONDITIONS_3_DETAIL_3_EN}    Data and behavior information on the use of the services or service-related products.
${LOGIN_LBL_TERMSANDCONDITIONS_3_DETAIL_3_LOCATOR}    id=lblTermsAndConditions3Detail3
${LOGIN_LBL_TERMSANDCONDITIONS_3_DETAIL_4_TH}    ข้อมูลทางการเงิน เช่น ข้อมูลการชำระเงิน หมายเลขบัตรเครดิต และหมายเลขบัญชีธนาคาร
${LOGIN_LBL_TERMSANDCONDITIONS_3_DETAIL_4_EN}    Financial information such as payment information, credit card numbers and bank account numbers.
${LOGIN_LBL_TERMSANDCONDITIONS_3_DETAIL_4_LOCATOR}    id=lblTermsAndConditions3Detail4
${LOGIN_LBL_TERMSANDCONDITIONS_3_DETAIL_5_TH}    ข้อมูลในการวิเคราะห์การใช้บริการเพื่อการตรวจสอบย้อนหลังในกรณีที่เกิดปัญหาการใช้งาน
${LOGIN_LBL_TERMSANDCONDITIONS_3_DETAIL_5_EN}    Data used to analyze the use of the services, for the traceability purpose when the clients encountered the problem while using the services, which including the data collected by the security system such as CCTV footage.
${LOGIN_LBL_TERMSANDCONDITIONS_3_DETAIL_5_LOCATOR}    id=lblTermsAndConditions3Detail5
${LOGIN_LBL_TERMSANDCONDITIONS_3_DETAIL_6_TH}    ข้อมูลการบันทึกภาพผ่านสื่ออิเล็กทรอนิกส์ และหรือสื่ออื่น เป็นต้น
${LOGIN_LBL_TERMSANDCONDITIONS_3_DETAIL_6_EN}    The recordings of electronic medias and/or other medias.
${LOGIN_LBL_TERMSANDCONDITIONS_3_DETAIL_6_LOCATOR}    id=lblTermsAndConditions3Detail6
${LOGIN_LBL_TERMSANDCONDITIONS_3_DETAIL_7_TH}    ข้อมูลสาธารณะจากหน่วยงานต่างๆ ตามกฎหมาย
${LOGIN_LBL_TERMSANDCONDITIONS_3_DETAIL_7_EN}    Public information from various agencies, in accordance with the law.
${LOGIN_LBL_TERMSANDCONDITIONS_3_DETAIL_7_LOCATOR}    id=lblTermsAndConditions3Detail7
${LOGIN_LBL_TERMSANDCONDITIONS_3_DETAIL_8_TH}    ข้อมูลที่จำเป็นสำหรับบริษัทในการปฏิบัติตามกฎหมาย คำขอตามกฎหมายของหน่วยงานบังคับใช้กฎหมายและ/หรือคำสั่งศาล
${LOGIN_LBL_TERMSANDCONDITIONS_3_DETAIL_8_EN}    The data that the company is required to collect to be able to comply with the law, legal requests by law enforcement agencies, and/or court orders.
${LOGIN_LBL_TERMSANDCONDITIONS_3_DETAIL_8_LOCATOR}    id=lblTermsAndConditions3Detail8
#4.The sources of Personal Data
${LOGIN_LBL_TERMSANDCONDITIONS_4_TH}    4.แหล่งที่มาของข้อมูลส่วนบุคคล
${LOGIN_LBL_TERMSANDCONDITIONS_4_EN}    4.The sources of Personal Data
${LOGIN_LBL_TERMSANDCONDITIONS_4_LOCATOR}    id=lblTermsAndConditions4
${LOGIN_LBL_TERMSANDCONDITIONS_4_DETAIL_1_TH}    บริษัทอาจได้รับข้อมูลส่วนบุคคลของท่านจากช่องทางดังนี้
${LOGIN_LBL_TERMSANDCONDITIONS_4_DETAIL_1_EN}    The company may retrieve your Personal Data from the following channels:
${LOGIN_LBL_TERMSANDCONDITIONS_4_DETAIL_1_LOCATOR}    id=lblTermsAndConditions4Detail1
${LOGIN_LBL_TERMSANDCONDITIONS_4_DETAIL_2_TH}    บริษัทได้รับข้อมูลส่วนบุคคลจากท่านโดยตรง โดยบริษัทจะเก็บรวบรวมข้อมูลส่วนบุคคลของท่านจาก ขั้นตอนการให้บริการดังนี้
${LOGIN_LBL_TERMSANDCONDITIONS_4_DETAIL_2_EN}    The company receives your Personal Data directly from you. In which the company will collect your Personal Data throughout the service procedures as follows:
${LOGIN_LBL_TERMSANDCONDITIONS_4_DETAIL_2_LOCATOR}    id=lblTermsAndConditions4Detail2
${LOGIN_LBL_TERMSANDCONDITIONS_4_DETAIL_3_TH}    ขั้นตอนการสมัครใช้บริการ หรือขั้นตอนการยื่นคำร้องขอใช้สิทธิต่าง ๆ กับบริษัท
${LOGIN_LBL_TERMSANDCONDITIONS_4_DETAIL_3_EN}    Service sign-up procedures or procedures to process the requests to exercise the rights with the company.
${LOGIN_LBL_TERMSANDCONDITIONS_4_DETAIL_3_LOCATOR}    id=lblTermsAndConditions4Detail3
${LOGIN_LBL_TERMSANDCONDITIONS_4_DETAIL_4_TH}    จากความสมัครใจของท่าน ในการทำแบบสอบถาม (Survey) หรือการได้ตอบทางอีเมล หรือช่องทางการสื่อสารอื่น ๆ ระหว่างบริษัทและท่าน
${LOGIN_LBL_TERMSANDCONDITIONS_4_DETAIL_4_EN}    Data collected voluntarily from your participation through survey taking, correspondence between the company and you via email or other communication channels.
${LOGIN_LBL_TERMSANDCONDITIONS_4_DETAIL_4_LOCATOR}    id=lblTermsAndConditions4Detail4
${LOGIN_LBL_TERMSANDCONDITIONS_4_DETAIL_5_TH}    จากการใช้บริการ รวมถึงผลิตภัณฑ์ที่เกี่ยวข้องกับการบริการ
${LOGIN_LBL_TERMSANDCONDITIONS_4_DETAIL_5_EN}    Data collected from the use of services and service-related products.
${LOGIN_LBL_TERMSANDCONDITIONS_4_DETAIL_5_LOCATOR}    id=lblTermsAndConditions4Detail5
${LOGIN_LBL_TERMSANDCONDITIONS_4_DETAIL_6_TH}    เก็บจากข้อมูลการใช้เว็บไซต์ หรือ Mobile application ของบริษัทผ่าน Browser's cookies ของท่าน
${LOGIN_LBL_TERMSANDCONDITIONS_4_DETAIL_6_EN}    Information about the use of the company’s website or Mobile application which is collected through your browser’s cookies.
${LOGIN_LBL_TERMSANDCONDITIONS_4_DETAIL_6_LOCATOR}    id=lblTermsAndConditions4Detail6
${LOGIN_LBL_TERMSANDCONDITIONS_4_DETAIL_7_TH}    ข้อมูลจากแหล่งอื่น บริษัทได้รับข้อมูลส่วนบุคคลของท่านมาจากบุคคลที่สามซึ่งมีสิทธิเปิดเผยข้อมูลส่วนบุคคลของท่านโดยชอบด้วยกฎหมาย รวมถึงตัวแทนหรือพนักงานหรือลูกจ้างของบริษัทที่บริษัทมีไว้เพื่อช่วยให้บริษัทสามารถคำเนินการสมัครบริการและให้บริการแก่ท่าน โดยได้รับข้อมูลผ่านทางอีเมลได้รับแจ้งทางโทรศัพท์ หรือได้รับเป็นเอกสารหรือในทำนองเดียวกันเช่นว่ามานี้ซึ่งผู้ที่เปิดเผยมีสิทธิให้ข้อมูลส่วนบุคคลได้โดยชอบด้วยกฎหมาย
${LOGIN_LBL_TERMSANDCONDITIONS_4_DETAIL_7_EN}    The company receives your Personal Data through third parties which have the right to lawfully disclose your Personal Data. The company also receives data through emails, telephone calls, or documents, or other similar means from the representatives or the staffs or the workers of other companies that we utilize their services to help providing the service registration and service offering to you, and that they have the right to lawfully disclose your Personal Data.
${LOGIN_LBL_TERMSANDCONDITIONS_4_DETAIL_7_LOCATOR}    id=lblTermsAndConditions4Detail7
${LOGIN_LBL_TERMSANDCONDITIONS_4_DETAIL_8_TH}    ข้อมูลสาธารณะจากหน่วยงานต่าง ๆ ตามกฎหมาย การเรียกร้องจากคำร้องต่าง ๆ เป็นต้น
${LOGIN_LBL_TERMSANDCONDITIONS_4_DETAIL_8_EN}    Public information provided by law from various agencies. The request to exercise the rights, etc.
${LOGIN_LBL_TERMSANDCONDITIONS_4_DETAIL_8_LOCATOR}    id=lblTermsAndConditions4Detail8
#5.The purposes for data collection or Personal Data disclosure
${LOGIN_LBL_TERMSANDCONDITIONS_5_TH}    5.วัตถุประสงค์ในการเก็บรวบรวมใช้ หรือเปิดเผยข้อมูลส่วนบุคคล
${LOGIN_LBL_TERMSANDCONDITIONS_5_EN}    5.The purposes for data collection or Personal Data disclosure
${LOGIN_LBL_TERMSANDCONDITIONS_5_LOCATOR}    id=lblTermsAndConditions5
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_TH}    บริษัทเก็บรวบรวมใช้ หรือเปิดเผยข้อมูลส่วนบุคคลของท่านเพื่อวัตถุประสงค์ดังต่อไปนี้
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_EN}    The company collects, uses and discloses your Personal Data for the following purposes:
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_LOCATOR}    id=lblTermsAndConditions5Detail
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_1_TH}    เพื่อการให้บริการตามสัญญา การต่ออายุตามสัญญา การเปลี่ยนแปลงหรือยกเลิกสัญญา ซึ่งท่านเป็นคู่สัญญา หรือเพื่อใช้ในการดำเนินการตามคำขอของท่านก่อนเข้าทำสัญญานั้น
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_1_EN}    To provide the services in accordance with the contracts, the renewal of contracts, the modification or termination of contracts, in which you are the party of such contract. Or to process your requests before you enter into the contract.
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_1_LOCATOR}    id=lblTermsAndConditions5Detail1
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_2_TH}    เพื่อการดำเนินการวิเคราะห์ ปรับปรุง และพัฒนาการให้บริการของบริษัทให้มีประสิทธิภาพรวมถึงรายการส่งเสริมการขายหรือผลิตภัณฑ์ของบริษัท 
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_2_EN}    To analyze, adjust, and improve the company’s service performance, and including the promotional campaigns or products.
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_2_LOCATOR}    id=lblTermsAndConditions5Detail2
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_3_TH}    เพื่ออำนวยความสะดวกในการแจ้งหรือการชำระค่าบริการ
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_3_EN}    To provide convenient payment notification or payment methods.
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_3_LOCATOR}    id=lblTermsAndConditions5Detail3
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_4_TH}    เพื่อวัตถุประสงค์ในการวิเคราะห์และนำเสนอบริการ นำเสนอหรือให้สิทธิประโยชน์
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_4_EN}    For purpose of data analysis to provide services, offers or benefits.
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_4_LOCATOR}    id=lblTermsAndConditions5Detail4
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_5_TH}    เพื่อแจ้งและนำเสนอ สิทธิประโยชน์ ข้อมูล ข่าวสาร รายการส่งสริมการขาย และข้อเสนอต่าง ๆ เกี่ยวกับการสมัคร การซื้อขายสินค้า หรือการใช้บริการต่าง ๆ ของบริษัทรวมถึงนิติบุคคลหรือบุคคลอื่นใด
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_5_EN}    To inform and offer benefits, information, news, promotional campaigns, and offers about the registration, sales, and services provided by the company, and including other juristic persons or persons.
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_5_LOCATOR}    id=lblTermsAndConditions5Detail5
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_6_TH}    เพื่อการสมัคร หรือเปิดใช้บริการที่เกี่ยวข้องกับการสมัคร การซื้อขายสินค้า หรือการใช้บริการต่าง ๆ ของบริษัทรวมถึงนิติบุคคลหรือบุคคลอื่นใด
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_6_EN}    For registration or procedures relating to the registration activation, sales or services provided by the company, and including other juristic persons or persons.
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_6_LOCATOR}    id=lblTermsAndConditions5Detail6
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_7_TH}    เพื่อวัตถุประสงค์ในการวิเคราะห์และวางแผนการตลาด กิจกรรมทางการตลาดของบริษัทและ/หรือร่วมกับนิติบุคคลหรือบุคคลอื่นใด
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_7_EN}    For analytical purposes on marketing, marketing activities by the company and/or with other juristic persons or persons.
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_7_LOCATOR}    id=lblTermsAndConditions5Detail7
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_8_TH}    เพื่อความปลอดภัยหรือระงับอันตรายต่อชีวิต ร่างกาย หรือสุขภาพอนามัยของบุคคล
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_8_EN}    For safety or alleviation of dangers towards life, body, or well-being of persons.
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_8_LOCATOR}    id=lblTermsAndConditions5Detail8
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_9_TH}    เพื่อวัตถุประสงค์ของการปฏิบัติตามกฎหมาย และหรือมีเหตุจำเป็นอื่นใดเพื่อประโยชน์อันชอบด้วยกฎหมายของบริษัท
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_9_EN}    For the purpose of the legal compliance and/or other necessities for the company’s lawful profits.
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_9_LOCATOR}    id=lblTermsAndConditions5Detail9
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_10_TH}    เพื่อวัตถุประสงค์อื่นตามที่กฎหมายให้อำนาจในการเก็บรวบรวมใช้ หรือเปิดเผย โดยไม่ต้องได้รับความยินยอมจากเจ้าของข้อมูลส่วนบุคคล
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_10_EN}    For other purposes in which the laws authorize the Personal Data collection, usage, and disclosure without consent from Data Subjects.
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_10_LOCATOR}    id=lblTermsAndConditions5Detail10
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_11_TH}    เพื่อการพิสูจน์และยืนยันตัวตนของผู้สมัคร เพื่อสมัครลงทะเบียนและเข้าใช้บริการ
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_11_EN}    To prove and authenticate the identities for service registration and sign-in.
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_11_LOCATOR}    id=lblTermsAndConditions5Detail11
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_12_TH}    เพื่อชำระค่าบริการและค่าธรรมเนียมที่เกี่ยวข้องกับสินค้าและบริการ
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_12_EN}    To pay the service charges and fees relating to products and services.
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_12_LOCATOR}    id=lblTermsAndConditions5Detail12
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_13_TH}    เพื่อให้บริการหลังการขาย ให้บริการตามที่ท่านร้องขอ ตอบข้อสงสัย สนับสนุนการใช้งาน ให้ข้อมูลรับเรื่องร้องเรียน ชดเชยค่าเสียหาย และแก้ไขปัญหาและอุปสรรคต่าง ๆ
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_13_EN}    To provide after-sales services, provide the services as requested by you, answer the inquiries, provide customer supports, provide information, handle the complaints, compensate the damages, and resolve the problems and obstacles.
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_13_LOCATOR}    id=lblTermsAndConditions5Detail13
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_14_TH}    เพื่อทำความเข้าใจความต้องการและความพึงพอใจของท่าน
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_14_EN}    To recognize your demands and satisfactions.
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_14_LOCATOR}    id=lblTermsAndConditions5Detail14
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_15_TH}    เพื่อการแจ้งข้อมูล ข่าวสาร จากหน่วยงานกำกับดูแลและภาครัฐ
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_15_EN}    To inform the information and news from regulators and state agencies.
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_15_LOCATOR}    id=lblTermsAndConditions5Detail15
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_16_TH}    เพื่อส่งหนังสือแจ้งค่าบริการ ใบสั่งซื้อสินค้าและบริการ การแจ้งเดือนให้ชำระค่าสินค้าและบริการจัดทำใบเสร็จรับเงินและใบกำกับภาษี ติดตามทวงถามหนี้
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_16_EN}    To send the service bills, product and service purchase orders, payment reminders for services and products bills. And to issue receipts and tax receipts, and collect the debts.
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_16_LOCATOR}    id=lblTermsAndConditions5Detail16
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_17_TH}    เพื่อการรักษาความปลอดภัยของข้อมูลและเครือข่ายการให้บริการของบริษัท รวมถึงตรวจสอบระบบและกิจกรรมของผู้ใช้บริการ เพื่อติดตามกิจกรรมที่เป็นอันตรายใด ๆ ต่อท่าน ผู้อื่น และบริษัท
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_17_EN}    To provide security safeguards for the company’s service data and network, including the inspection of the system and user activities, to monitor any malicious activity which may affect you, others, and the company.
${LOGIN_LBL_TERMSANDCONDITIONS_5_DETAIL_17_LOCATOR}    id=lblTermsAndConditions5Detail17
#6.Personal Data processing
${LOGIN_LBL_TERMSANDCONDITIONS_6_TH}    6.การประมวลผลข้อมูลส่วนบุคคล
${LOGIN_LBL_TERMSANDCONDITIONS_6_EN}    6.Personal Data processing
${LOGIN_LBL_TERMSANDCONDITIONS_6_LOCATOR}    id=lblTermsAndConditions6
${LOGIN_LBL_TERMSANDCONDITIONS_6_DETAIL_1_TH}    เมื่อได้รับข้อมูลส่วนบุคคลจากแหล่งที่มาของข้อมูลส่วนบุคคลแล้ว บริษัทจะดำเนินการเก็บรวบรวม ใช้หรือเปิดเผยข้อมูลส่วนบุคคลของท่านตามวัตถุประสงค์ที่ได้แจ้งไว้ ทั้งนี้ บริษัทอาจเปิดเผยข้อมูลส่วนบุคคลข้อมูลการใช้บริการของท่าน ให้แก่บริษัทในเครือของบริษัท ซอร์สโค้ด จำกัด เครือกิจการ เครือธุรกิจหน่วยงานราชการตามกฎหมาย ผู้ให้บริการด้านเทคโนโลยีสารสนเทศ ธนาคารและผู้ให้บริการด้านการชำระเงินและการทำธุรกรรม ผู้ให้บริการสนับสนุนลูกค้า ผู้ให้บริการจัดการด้านการตลาดและการโฆษณาที่ปรึกษาทางธุรกิจ รวมถึงนิติบุคคลหรือบุคคลอื่นใดที่บริษัทและ/หรือท่านเป็นคู่สัญญาหรือมีนิติสัมพันธ์ตามกฎหมาย นอกจากนี้ บริษัทอาจจำเป็นต้องส่งข้อมูลส่วนบุคคลของท่านไปยังหน่วยงานกำกับดูแลเพื่อตรวจสอบ และอาจใช้ผลการตรวจสอบข้อมูลดังกล่าวเพื่อป้องกันการฉ้อโกง
${LOGIN_LBL_TERMSANDCONDITIONS_6_DETAIL_1_EN}    After the company receives Personal Data from the sources, the company will collect, use, or disclose your Personal Data for the purposes as stated earlier. The company may disclose your Personal Data and information about your use of services to the affiliated companies of SourceCode Co., Ltd., affiliated business and networks, authorized government agencies, the information and communications technology service providers, banks and financial services and payments providers, the customer support services, the marketing and advertisement providers, the business consultants, and the juristic persons or other persons in which the company or you are parties to, or have legal relations with as prescribed by the law. Moreover, the company may need to submit your Personal Data to the regulators for inspection and may use the result of such inspection for fraud prevention.
${LOGIN_LBL_TERMSANDCONDITIONS_6_DETAIL_1_LOCATOR}    id=lblTermsAndConditions6Detail1
${LOGIN_LBL_TERMSANDCONDITIONS_6_DETAIL_2_TH}    บริษัทอาจมีความจำเป็นในการโอนข้อมูลส่วนบุคคลของท่านไปยังบุคคล หน่วยงานต่างประเทศหรือองค์กรระหว่างประเทศ ที่มิได้มีมาตรฐานด้านการคุ้มครองข้อมูลส่วนบุคคลที่เพียงพอ (Appropriate safeguards)
${LOGIN_LBL_TERMSANDCONDITIONS_6_DETAIL_2_EN}    The company may need to transfer your Personal Data to foreign persons, agencies or international organizations which may not have appropriate safeguards for the protection of Personal Data.
${LOGIN_LBL_TERMSANDCONDITIONS_6_DETAIL_2_LOCATOR}    id=lblTermsAndConditions6Detail2
#7.Storage of data and data retention period
${LOGIN_LBL_TERMSANDCONDITIONS_7_TH}    7.การเก็บรักษาและระยะเวลในการเก็บรักษาข้อมูลส่วนบุคคล
${LOGIN_LBL_TERMSANDCONDITIONS_7_EN}    7.Storage of data and data retention period
${LOGIN_LBL_TERMSANDCONDITIONS_7_LOCATOR}    id=lblTermsAndConditions7
${LOGIN_LBL_TERMSANDCONDITIONS_7_DETAIL_TH}    บริษัทมีการเก็บรักษาและระยะเวลาในการเก็บรักษาข้อมูลส่วนบุคคลของท่าน ดังนี้
${LOGIN_LBL_TERMSANDCONDITIONS_7_DETAIL_EN}    The company stores and retains your Personal Data as follows:
${LOGIN_LBL_TERMSANDCONDITIONS_7_DETAIL_LOCATOR}    id=lblTermsAndConditions7Detail
${LOGIN_LBL_TERMSANDCONDITIONS_7_DETAIL_1_TH}    ลักษณะการเก็บ : จัดเก็บเป็นหนังสือ (Hard copy) และจัดเก็บในระบบอิเล็กทรอนิกส์ (Soft copy) โดยมีมาตรการรักษาความมั่นคงปลอดภัยที่มีประสิทธิภาพ เพื่อป้องกันการสูญหาย เข้าถึงใช้เปลี่ยนแปลง แก้ไข หรือเปิดเผยข้อมูลส่วนบุคคลโดยปราศจากอำนาจหรือโดยมิชอบ
${LOGIN_LBL_TERMSANDCONDITIONS_7_DETAIL_1_EN}    Storage of data methods: data is stored as hard copy and soft copy under the effective and steady security measures to prevent the data loss, unauthorized or unlawful access, usage, changes, modification and disclosure of Personal Data.
${LOGIN_LBL_TERMSANDCONDITIONS_7_DETAIL_1_LOCATOR}    id=lblTermsAndConditions7Detail1
${LOGIN_LBL_TERMSANDCONDITIONS_7_DETAIL_2_TH}    ระยะเวลาจัดเก็บ : บริษัทจะเก็บรวบรวมข้อมูลส่วนบุคคลของท่านภายในระยะเวลาเท่าที่จำเป็นตามวัดถุประสงค์ในการเก็บรวบรวมข้อมูลส่วนบุคคลนั้น หรือภายในระยะเวลาที่มีสัญญาหรือนิติสัมพันธ์ตามกฎหมายระหว่างท่านและบริษัท หรือภายในระยะเวลาการใช้สิทธิเรียกร้องตามกฎหมายของคู่สัญญา
${LOGIN_LBL_TERMSANDCONDITIONS_7_DETAIL_2_EN}    Data retention period: The company will store your Personal Data for as long as necessary in connection with the purposes for that data. Or for as long as necessary during the period that you have the contract or legal relation with the company. Or for as long as the period to exercise the rights still exists between parties.
${LOGIN_LBL_TERMSANDCONDITIONS_7_DETAIL_2_LOCATOR}    id=lblTermsAndConditions7Detail2
${LOGIN_LBL_TERMSANDCONDITIONS_7_DETAIL_3_TH}    เมื่อพ้นระยะเวลาจัดเก็บ หรือบริษัทไม่มีสิทธิหรือไม่สามารถอ้างฐานในการประมวลผลข้อมูลส่วนบุคคลของท่านแล้ว บริษัทจะดำเนินการลบหรือทำลายข้อมูลส่วนบุคคล หรือทำให้ข้อมูลส่วนบุคคลเป็นข้อมูลที่ไม่สามารถระบุตัวบุคคลที่เป็นเจ้าของข้อมูลส่วนบุคคลได้ ภายในระยะเวลาอันควร
${LOGIN_LBL_TERMSANDCONDITIONS_7_DETAIL_3_EN}    Once the data retention period has passed or the company no longer has the right or does not have the basis to process your Personal Data, the company will erase, destroy or anonymize your Personal Data within appropriate period.
${LOGIN_LBL_TERMSANDCONDITIONS_7_DETAIL_3_LOCATOR}    id=lblTermsAndConditions7Detail3
#8.Data Subject Rights
${LOGIN_LBL_TERMSANDCONDITIONS_8_TH}    8.สิทธิของเจ้าของข้อมูลส่วนบุคคล
${LOGIN_LBL_TERMSANDCONDITIONS_8_EN}    8.Data Subject Rights
${LOGIN_LBL_TERMSANDCONDITIONS_8_LOCATOR}    id=lblTermsAndConditions8
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_TH}    ท่านในฐานะเจ้าของข้อมูลส่วนบุคคลมีสิทธิเกี่ยวกับข้อมูลส่วนบุคคลตามพระราชบัญญัติคุ้มครองข้อมูลส่วนบุคคล พ.ศ. 2562 ดังนี้
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_EN}    You, as the Data Subject, have the rights about Personal Data which you may exercise in accordance to The Personal Data Protection Act B.E. 2562 (2019) as follows:
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_LOCATOR}    id=lblTermsAndConditions8Detail
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_1_TH}    ขอเข้าถึงและขอรับสำเนาข้อมูลส่วนบุคคลที่เกี่ยวกับตน ซึ่งอยู่ในความรับผิดชอบของผู้ควบคุมข้อมูลส่วนบุคคล หรือขอให้เปิดเผยถึงการได้มาซึ่งข้อมูลส่วนบุคคลดังกล่าวที่ตนไม่ได้ให้ความยินยอม
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_1_EN}    Access and request a copy of your Personal Data that is under the Data Controller’s responsibility or request to reveal as to how your Personal Data is obtained without your consent.
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_1_LOCATOR}    id=lblTermsAndConditions8Detail1
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_2_TH}    แจ้งให้ผู้ควบคุมข้อมูลส่วนบุคคลต้องดำเนินการให้ข้อมูลส่วนบุคคลนั้นถูกต้องเป็นปัจจุบันสมบูรณ์ และไม่ก่อให้เกิดความเข้าใจผิด
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_2_EN}    Request the Data Collectors to rectify your Personal Data to be updated, complete and not misleading.
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_2_LOCATOR}    id=lblTermsAndConditions8Detail2
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_3_TH}    ขอรับข้อมูลส่วนบุคคลที่เกี่ยวกับตนจากผู้ควบคุมข้อมูลส่วนบุคคลได้ ในกรณีที่ผู้ควบคุมข้อมูลส่วนบุคคลได้ทำให้ข้อมูลส่วนบุคคลนั้นอยู่ในรูปแบบที่สามารถอ่านหรือใช้งานโดยทั่วไปให้ด้วยเครื่องมือหรืออุปกรณ์ที่ทำงานได้โดยอัดโนมัติ และสามารถใช้หรือเปิดเผยข้อมูลส่วนบุคคลได้ด้วยวิธีการอัตโนมัติ
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_3_EN}    Obtain your Personal Data from the Data Controller, in the case that the Data Controller organizes such Personal Data in automatic machine-readable or usable format and can be processed or disclosed by automatic means.
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_3_LOCATOR}    id=lblTermsAndConditions8Detail3
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_4_TH}    คัดค้านการเก็บรวบรวม ใช้ หรือเปิดเผยข้อมูลส่วนบุคคลที่เกี่ยวกับตน ที่กฎหมายขออนุญาตให้เก็บได้โดยไม่ต้องไห้รับความยินยอมจากเจ้าของข้อมูล เมื่อใดก็ได้
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_4_EN}    Object to collection, use or disclosure of your Personal Data that can be lawfully collected without consent from Data Subjects at any time.
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_4_LOCATOR}    id=lblTermsAndConditions8Detail4
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_5_TH}    ขอให้ผู้ควบคุมข้อมูลส่วนบุคคลดำเนินการลบหรือทำลาย หรือทำให้ข้อมูลส่วนบุคคลเป็นข้อมูลที่ไม่สามารถระบุตัวบุคคลที่เป็นเจ้าของข้อมูลส่วนบุคคลได้ ในกรณีตามที่กฎหมายกำหนด
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_5_EN}    Request that your Personal Data be erased, destroyed or anonymized, in accordance with the law.
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_5_LOCATOR}    id=lblTermsAndConditions8Detail5
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_6_TH}    ขอให้ผู้ควบคุมข้อมูลส่วนบุคคลระงับการใช้ข้อมูลส่วนบุคคลได้ ในกรณีตามที่กฎหมายกำหนด
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_6_EN}    Request the Data Collectors to suspend the use of Personal Data, in accordance with the law.
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_6_LOCATOR}    id=lblTermsAndConditions8Detail6
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_7_TH}    ร้องเรียนในกรณีที่ผู้ควบคุมข้อมูลส่วนบุคคลหรือผู้ประมวลผลข้อมูลส่วนบุคคล รวมทั้งตัวแทนหรือลูกจ้างหรือผู้รับจ้างของผู้ควบคุมข้อมูลส่วนบุคคลหรือผู้ประมวลผลข้อมูลส่วนบุคคล ฝ่าฝืนหรือ ไม่ปฏิบัติตามกฎหมายคุ้มครองข้อมูลส่วนบุคคล
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_7_EN}    Lodge the complaint about the breach or non-compliance of the law by the Data Controllers, Data Processors, and including the representatives or the staffs or the contractors of the Data Controllers or Data Processors.
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_7_LOCATOR}    id=lblTermsAndConditions8Detail7
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_8_TH}    สิทธิในการถอนความยินยอม
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_8_EN}    The right to withdraw consent.
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_8_LOCATOR}    id=lblTermsAndConditions8Detail8
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_9_TH}    ก.) เมื่อท่านให้ความยินยอมกับบริษัทเพื่อวัตถุประสงค์อย่างหนึ่งอย่างใดในการเก็บรวบรวม ใช้ หรือเปิดเผยข้อมูลส่วนบุคคลดังกล่าวข้างต้นแล้ว ท่านมีสิทธิถอนความยินยอมเมื่อใดก็ได้ เว้นแต่เป็นกรณีที่มี ข้อจำกัดสิทธิตามกฎหมาย หรือเกี่ยวข้องกับสัญญาที่ให้ประโยชน์แก่ท่าน
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_9_EN}    a.) When you have given consent to the company to collect, use or disclose Personal Data for one of the purposes as stated above. You have the right to withdraw your consent at any given time. Unless it is restricted by laws or you are still under beneficial contract.
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_9_LOCATOR}    id=lblTermsAndConditions8Detail9
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_10_TH}    ข.) ท่านมีสิทธิในการถอนความยินยอมในการประมวลผลข้อมูลส่วนบุคคลที่ท่านได้ให้ความยินยอมกับบริษัทได้ตลอดเวลาที่ข้อมูลส่วนบุคคลของท่านอยู่กับบริษัทและบริษัทอาจขอทราบถึงเหตุผลแห่งการนั้น
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_10_EN}    b.) You have the right to withdraw your consent to process the Personal Data at any given time as long as the data is with the company and the company may inquire about the reasons for consent withdrawal.
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_10_LOCATOR}    id=lblTermsAndConditions8Detail10
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_11_TH}    ค.) ในการดำเนินการใช้สิทธิขอถอนความยินยอม ท่านจะต้องติดต่อและขอใช้สิทธิด้วยตัวท่านเองตามช่องทางที่บริษัทกำหนดไว้
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_11_EN}    c.) To start the procedures to exercise the right to withdraw consent, you have to contact and request to exercise such right by yourself through the contact channels provided by the company.
${LOGIN_LBL_TERMSANDCONDITIONS_8_DETAIL_11_LOCATOR}    id=lblTermsAndConditions8Detail11
#9.Consequences of consent withdrawal
${LOGIN_LBL_TERMSANDCONDITIONS_9_TH}    9.ผลการเพิกถอนความยินยอม
${LOGIN_LBL_TERMSANDCONDITIONS_9_EN}    9.Consequences of consent withdrawal
${LOGIN_LBL_TERMSANDCONDITIONS_9_LOCATOR}    id=lblTermsAndConditions9
${LOGIN_LBL_TERMSANDCONDITIONS_9_DETAIL_1_TH}    การเพิกถอนความยินยอมของเจ้าของข้อมูลส่วนบุคคล จะไม่ส่งผลกระทบต่อการเก็บรวบรวม ใช้หรือเปิดเผยข้อมูลส่วนบุคคล ที่เข้าของข้อมูลส่วนบุคคลได้ให้ความยินยอมไปแล้วก่อนหน้านั้น
${LOGIN_LBL_TERMSANDCONDITIONS_9_DETAIL_1_EN}    The withdrawal of consent by Data Subjects will not affect the collection, use, and disclosure of Personal Data which the Data Subjects had previously consented before.
${LOGIN_LBL_TERMSANDCONDITIONS_9_DETAIL_1_LOCATOR}    id=lblTermsAndConditions9Detail1
${LOGIN_LBL_TERMSANDCONDITIONS_9_DETAIL_2_TH}    ในกรณีที่ท่านประสงค์ที่จะเพิกถอนความยินยอม ให้บริษัทเก็บรวบรวม ใช้ หรือเปิดเผยข้อมูลส่วนบุคคล
${LOGIN_LBL_TERMSANDCONDITIONS_9_DETAIL_2_EN}    In case you express your intention to withdraw your consent for the collection, use, and disclosure of Personal Data. If the withdrawal of consent will render the company incapable of delivering some products or services for you. 
${LOGIN_LBL_TERMSANDCONDITIONS_9_DETAIL_2_LOCATOR}    id=lblTermsAndConditions9Detail2
${LOGIN_LBL_TERMSANDCONDITIONS_9_DETAIL_3_TH}    หากการถอนความยินยอมของท่านทำให้บริษัท ไม่สามารถส่งมอบผลิตภัณฑ์หรือให้บริการบางอย่างให้แก่ท่านได้ บริษัทจะแจ้งให้ท่านทราบถึงผลกระทบจากการถอนความยินยอม ซึ่งอาจมีผลให้บริษัทไม่สามารถปฏิบัติตามสัญญาหรือการให้บริการกับท่านได้
${LOGIN_LBL_TERMSANDCONDITIONS_9_DETAIL_3_EN}    The company will inform you of the consequences arising from such withdrawal which may result in the default of contract or that the company cannot continue to provide services for you.
${LOGIN_LBL_TERMSANDCONDITIONS_9_DETAIL_3_LOCATOR}    id=lblTermsAndConditions9Detail3
${LOGIN_LBL_TERMSANDCONDITIONS_9_DETAIL_4_TH}    ท่านสามารถติดต่อเจ้าหน้าที่ของบริษัทเพื่อยื่นคำร้องขอใช้สิทธิข้างต้นตามรายละเอียดที่ปรากฏในข้อ  15.หรือตามช่องทางที่บริษัทกำหนด บริษัทมีสิทธิในการปฏิเสธคำร้องขอที่เป็นการใช้สิทธิโดยไม่สุจริต คำร้องขอที่ไม่สมเหตุสมผล คำร้องขอที่กฎหมายไม่ได้บัญญัติไว้และ หรือคำร้องขอที่ไม่สามารถปฏิบัติไว้จริงนอกจากนี้ บริษัทมีสิทธิในการปฏิเสธคำร้องขอของท่านตามหลักเกณฑ์ที่กฎหมายกำหนด
${LOGIN_LBL_TERMSANDCONDITIONS_9_DETAIL_4_EN}    You can contact the staffs of the company to file for the request to exercise the right as mentioned above by following the details provided within section no. 14 or submit your request to the designated channel. The company reserves the right to deny the requests which are found to be made with bad faith, the unreasonable requests, the requests that are out of the scope of the law, and/or the unenforceable requests. The company also has the right to deny your request, in accordance with the rules set by the law.
${LOGIN_LBL_TERMSANDCONDITIONS_9_DETAIL_4_LOCATOR}    id=lblTermsAndConditions9Detail4
#10.In case of the objection against Personal Data collection
${LOGIN_LBL_TERMSANDCONDITIONS_10_TH}    10.ในกรณีที่ท่านปฏิเสธไม่ให้ใช้ข้อมูลส่วนบุคคล
${LOGIN_LBL_TERMSANDCONDITIONS_10_EN}    10.In case of the objection against Personal Data collection
${LOGIN_LBL_TERMSANDCONDITIONS_10_LOCATOR}    id=lblTermsAndConditions10
${LOGIN_LBL_TERMSANDCONDITIONS_10_DETAIL_1_TH}    บริษัทมีความจำเป็นต้องรวบรวมข้อมูลส่วนบุคคลตามกฎหมายหรือเพื่อการเข้าทำสัญญาระหว่างท่านกับบริษัท หากท่านเลือกที่จะไม่ให้ข้อมูลส่วนบุคคล บริษัทอาจไม่สามารถให้บริการแก่ท่านได้
${LOGIN_LBL_TERMSANDCONDITIONS_10_DETAIL_1_EN}    The company is required to gather Personal Data either by law or in order to make a contract between you and the company. If you choose to object the use of Personal Data, the company may subsequently be unable to serve you further.
${LOGIN_LBL_TERMSANDCONDITIONS_10_DETAIL_1_LOCATOR}    id=lblTermsAndConditions10Detail1
${LOGIN_LBL_TERMSANDCONDITIONS_10_DETAIL_2_TH}    นอกเหนือจากกรณีที่บริษัทใช้ข้อมูลส่วนบุคคลเพื่อการปฏิบัติตามสัญญาและการปฏิบัติตามกฎหมาย ในกรณีที่ท่านไม่ยินยอมให้ใช้ข้อมูลส่วนบุคคล ท่านยังคงสามารถใช้บริการของบริษัทได้ โดยท่านเองได้รับความสะดวกจากการใช้บริการน้อยลง เนื่องจากบริษัทไม่ได้รับความยินยอมให้ใช้ข้อมูลส่วนบุคคลเพื่อวัตถุประสงค์สำหรับการให้บริการอย่างเต็มประสิทธิภาพ
${LOGIN_LBL_TERMSANDCONDITIONS_10_DETAIL_2_EN}    Other than the company’s use of Personal Data to abide by the contracts and the law. In case you do not consent to the use of Personal Data, you are still able to use the company’s services but with lesser convenience. Because the company does not have the consent to use Personal Data for the purposes of providing service to the full extent.
${LOGIN_LBL_TERMSANDCONDITIONS_10_DETAIL_2_LOCATOR}    id=lblTermsAndConditions10Detail2
#11.Marketing activities and campaigns
${LOGIN_LBL_TERMSANDCONDITIONS_11_TH}    11.กิจกรรมทางการตลาดและการส่งเสริมการตลาด
${LOGIN_LBL_TERMSANDCONDITIONS_11_EN}    11.Marketing activities and campaigns
${LOGIN_LBL_TERMSANDCONDITIONS_11_LOCATOR}    id=lblTermsAndConditions11
${LOGIN_LBL_TERMSANDCONDITIONS_11_DETAIL_TH}    ในระหว่างการใช้บริการ บริษัทจะส่งข้อมูลข่าวสารเกี่ยวกับกิจกรรมทางการตลาดและการส่งเสริมการตลาดผลิตภัณฑ์และบริการของบริษัท รวมถึงบริษัทในเครือบริษัท ซอร์สโค้ด จำกัด ผู้โฆษณา และพันธมิตรทางธุรกิจ ที่ท่านอาจมีความสนใจ โดยท่านสามารถคำเนินการยกเลิกความยินยอมในการรับแจ้งข้อมูลข่าวสารได้ ตามรายละเอียดที่ปรากฏในข้อ 15. หรือตามช่องทางที่บริษัทกำหนด
${LOGIN_LBL_TERMSANDCONDITIONS_11_DETAIL_EN}    During the use of the services, the company will send information regarding marketing activities and campaigns, products and services of the company, including those from affiliated companies of SourceCode Co., Ltd., advertisers and business partnerships, which you maybe interested in. You can withdraw your consent to receive information by submitting the request as detailed in section 15, or submitting the request through the designated channels.
${LOGIN_LBL_TERMSANDCONDITIONS_11_DETAIL_LOCATOR}    id=lblTermsAndConditions11Detail
#12.Privacy Policy from other websites
${LOGIN_LBL_TERMSANDCONDITIONS_12_TH}    12.นโยบายคุ้มครองข้อมูลส่วนบุคคลของเว็บไซต์อื่น
${LOGIN_LBL_TERMSANDCONDITIONS_12_EN}    12.Privacy Policy from other websites
${LOGIN_LBL_TERMSANDCONDITIONS_12_LOCATOR}    id=lblTermsAndConditions12
${LOGIN_LBL_TERMSANDCONDITIONS_12_DETAIL_TH}    นโยบายคุ้มครองข้อมูลส่วนบุคคลฉบับนี้ใช้เฉพาะสำหรับการให้บริการของบริษัทและการใช้งานเว็บไซต์ของบริษัทเท่านั้น หากท่านได้เชื่อมต่อไปยังเว็บไซต์อื่น แม้ผ่านช่องทางในเว็บไซต์ของบริษัทก็ตาม ท่านจะต้องศึกษาและปฏิบัติตามนโยบายคุ้มครองข้อมูลส่วนบุคคลที่ปรากฎในเว็บไซต์นั้น ๆ แยกต่างหากจากของบริษัท
${LOGIN_LBL_TERMSANDCONDITIONS_12_DETAIL_EN}    This Privacy Policy only applies to the services of the company and the use of the company’s website. Even if you have connected to other websites though the company’s website, you will have to be aware and comply with the different Privacy Policy that appears on that website separately.
${LOGIN_LBL_TERMSANDCONDITIONS_12_DETAIL_LOCATOR}    id=lblTermsAndConditions12Detail
#13.Changes to this Privacy Policy
${LOGIN_LBL_TERMSANDCONDITIONS_13_TH}    13.การเปลี่ยนแปลงนโยบายคุ้มครองข้อมูลส่วนบุคคล
${LOGIN_LBL_TERMSANDCONDITIONS_13_EN}    13.Changes to this Privacy Policy
${LOGIN_LBL_TERMSANDCONDITIONS_13_LOCATOR}    id=lblTermsAndConditions13
${LOGIN_LBL_TERMSANDCONDITIONS_13_DETAIL_TH}    บริษัทจะทำการพิจารณาทบทวนนโยบายคุ้มครองข้อมูลส่วนบุคคลเป็นประจำเพื่อให้สอดคล้องกับแนวปฏิบัติ และกฎหมาย ข้อบังคับที่เกี่ยวข้อง ทั้งนี้ บริษัทขอสงวนสิทธิในการเปลี่ยนแปลงนโยบายดังกล่าวในเว็บไชต์โดยไม่ต้องแจ้งให้ท่านทราบล่วงหน้า บริษัทในเครือบริษัท ซอร์สโค้ด จำกัด ได้แก่ บริษัท สเปเชียล สแควร์ จำกัด
${LOGIN_LBL_TERMSANDCONDITIONS_13_DETAIL_EN}    The company will review this Privacy Policy regularly to make sure it is coincided with the related practices, regulations, and rules. The company reserves the right to change the website’s Privacy Policy without prior notice. Affilated companies of SourceCode Co., Ltd. are Special Square Co., Ltd.
${LOGIN_LBL_TERMSANDCONDITIONS_13_DETAIL_LOCATOR}    id=lblTermsAndConditions13Detail
#14.Terms of Use
${LOGIN_LBL_TERMSANDCONDITIONS_14_TH}    14.ข้อตกลงการใช้งานระบบ
${LOGIN_LBL_TERMSANDCONDITIONS_14_EN}    14.Terms of Use
${LOGIN_LBL_TERMSANDCONDITIONS_14_LOCATOR}    id=lblTermsAndConditions14
${LOGIN_LBL_TERMSANDCONDITIONS_14_DETAIL_1_TH}    SmartRMS for condo ขอสงวนสิทธิ์ระงับการให้บริการชั่วคราว โดยไม่ต้องแจ้งให้ทราบล่วงหน้า หากตรวจพบว่า เครื่องคอมพิวเตอร์ หรือ ชื่อผู้ใช้งาน ที่เชื่อมต่ออยู่กับระบบนั้นเป็นสาเหตุให้ระบบโดยรวมเกิดปัญหา 
${LOGIN_LBL_TERMSANDCONDITIONS_14_DETAIL_1_EN}    SmartRMS for condo reserves the right to temporarily disable our service without notice if we've detected that your computer has caused problems to the overall system.
${LOGIN_LBL_TERMSANDCONDITIONS_14_DETAIL_1_LOCATOR}    id=lblTermsAndConditions14Detail1
${LOGIN_LBL_TERMSANDCONDITIONS_14_DETAIL_2_TH}    การดาวน์โหลด หรืออัพโหลด ไฟล์ที่มีลิขสิทธิ์ต่าง ๆ โดยไม่ได้รับอนุญาต ถือเป็นการละเมิดลิขสิทธิ์ซึ่งผู้กระทำการมีความผิดทางกฎหมาย ทาง  SmartRMS for condo ไม่มีส่วนรับผิดชอบใด ๆ ทั้งสิ้น
${LOGIN_LBL_TERMSANDCONDITIONS_14_DETAIL_2_EN}    Downloading licensed material from the internet without the owner's permission is a violation of rights and is considered illegal. SmartRMS for condo takes no responsibility for the user's illegal action.
${LOGIN_LBL_TERMSANDCONDITIONS_14_DETAIL_2_LOCATOR}    id=lblTermsAndConditions14Detail2
${LOGIN_LBL_TERMSANDCONDITIONS_14_DETAIL_3_TH}    เมื่อคุณใช้เว็บไซต์หรือแอปพลิเคชัน SmartRMS for condo รวบรวมและจัดเก็บข้อมูล พื้นที่การจัดเก็บข้อมูลในตัวเครื่อง รวมถึงข้อมูลส่วนบุคคลที่อยู่ในอุปกรณ์ของผู้ใช้งาน โดยใช้วิธีการต่างๆ เช่น พื้นที่จัดเก็บข้อมูลเว็บเบราว์เซอร์ และแคชของข้อมูลแอปพลิเคชัน เราจะเก็บรวบรวมและวิเคราะห์ข้อมูลบางอย่างโดยอัตโนมัติซึ่งรวมถึงเบราว์เซอร์ที่ชี้เฉพาะเจาะจง ที่อยู่ IP เบราว์เซอร์และข้อมูลเกี่ยวกับระบบปฏิบัติการ อุปกรณ์ที่ชี้เฉพาะเจาะจง ตำแหน่งทางภูมิศาสตร์และข้อมูลที่ชี้เฉพาะถึงอุปกรณ์อื่น ๆ ข้อมูลเกี่ยวกับอินเทอร์เน็ต รวมถึงรายละเอียดเกี่ยวกับธุรกรรมของคุณที่เกิดขึ้นบนเว็บไซต์และแอปพลิเคชัน ของเรา
${LOGIN_LBL_TERMSANDCONDITIONS_14_DETAIL_3_EN}    Using website or application, SmartRMS for condo may collect information about your data storage and personal information such as browser web storage or application data caches. SmartRMS for condo may automatically collect and store information, including operating system information, geo-location data, details of your transaction, etc.
${LOGIN_LBL_TERMSANDCONDITIONS_14_DETAIL_3_LOCATOR}    id=lblTermsAndConditions14Detail3
${LOGIN_LBL_TERMSANDCONDITIONS_14_DETAIL_4_TH}    SmartRMS for condo นำเสนอข้อมูลและส่วนประกอบต่างๆ ที่มีอยู่ในเว็บไซต์และแอปพลิเคชันนี้เพื่อให้ข้อมูลตามที่ปรากฏอยู่หรือที่มีอยู่เท่านั้น แม้ว่า SmartRMS for condo จะได้ใช้ความพยายามทุกวิถีทางเพื่อทำให้ข้อมูลและส่วนประกอบนั้นมีความถูกต้องมากที่สุด SmartRMS for condo ก็ไม่สามารถรับประกันว่าข้อมูลและส่วนประกอบดังกล่าวมีความถูกต้อง สมบูรณ์เพียงพอ เหมาะสมกับวัตถุประสงค์ใด้โดยเฉพาะ และปราศจากโปรแกรมที่ไม่พึงประสงค์หรือส่วนประกอบที่เป็นอันตรายอื่น ๆ นอกจากนี้ SmartRMS for condo ไม่ขอดำเนินการแทน หรือรับประกัน ส่งเสริม ยืนยัน หรือยอมรับผิดชอบต่อแอปพลิเคชันของบุคคลที่สาม (หรือเนื้อหาในนั้น) เนื้อหาของผู้ใช้ อุปกรณ์หรือผลิตภัณฑ์อื่น หรือบริการมีการโฆษณา สนับสนุน หรือนำเสนอโดยบุคคลที่สาม บนหรือผ่านบริการของ SmartRMS for condo หรือเว็บไซต์ที่มีไฮเปอร์ลิงก์ใดๆ หรือที่แสดงอยู่บนป้ายประกาศหรือการโฆษณาอื่น ๆ ทั้งนี้ SmartRMS for condo จะไม่รับผิดสำหรับความผิดพลาดหรือการละเว้นใดๆ ในข้อมูลและส่วนประกอบนั้น
${LOGIN_LBL_TERMSANDCONDITIONS_14_DETAIL_4_EN}    SmartRMS for condo will give as much accurate information and component as possible. SmartRMS for condo does not warrant that the information contained therein is accurate, adequate, complete, updated, fit for any particular purpose, and free from any computer virus or malware. In addition, SmartRMS for condo does not makes any representation, warrant, endorse, guarantee, or assume responsibility for any third-party applications (or the content thereof), user content, devices, or any other product or service advertised, promoted, or offered by a third party on or through the SmartRMS for condo service or any hyperlinked website, or featured in any banner or other advertising and SmartRMS for condo is not responsible or liable for any transaction between you and third-party providers of the foregoing.
${LOGIN_LBL_TERMSANDCONDITIONS_14_DETAIL_4_LOCATOR}    id=lblTermsAndConditions14Detail4
${LOGIN_LBL_TERMSANDCONDITIONS_14_DETAIL_5_TH}    การใช้บริการ และเนื้อหาข้อมูลของคุณเป็นความเสี่ยงของคุณแต่เพียงผู้เดียว เว้นแต่จะกำหนดไว้ในข้อตกลงนี้ เท่าที่กฎหมายที่ใช้บังคับจะกำหนดอย่างกว้างที่สุด SmartRMS for condo ธุรกิจในเครือ หรือผู้ให้บริการบุคคลที่สาม, ผู้ให้อนุญาตใช้สิทธิ ปฏิเสธความรับผิดชอบต่อการให้คำรับรองใดๆ ไม่ว่าจะโดยชัดแจ้งหรือปริยาย, รวมทั้งคำรับรองใดๆ ว่าบริการเหมาะกับวัตถุประสงค์, กรรมสิทธิ์, การค้า, ข้อมูลสูญเสีย, การละเมิดทรัพย์สินทางปัญญาใดๆ เป็นการเฉพาะเจาะจง SmartRMS for condo ไม่รับผิดชอบต่อความเสียหาย ค่าใช้จ่าย หรือความสูญเสีย ที่อาจเกิดขึ้นจากการใช้เว็บไซต์หรือแอปพลิเคชัน และ/หรือเว็บไซต์ แอปพลิเคชันที่เชื่อมโยงกับ SmartRMS for condo ซึ่งรวมถึงจากความไม่ถูกต้องแม่นยำของข้อมูล ความล่าช้าในการถ่ายโอนข้อมูล ระยะเวลาในการเผยแพร่ข้อมูล เหตุขัดข้องหรืออุปสรรคของการเชื่อมต่อ ความผิดพลาดในการแสดงผล ความเสถียรของระบบ ไวรัสคอมพิวเตอร์
${LOGIN_LBL_TERMSANDCONDITIONS_14_DETAIL_5_EN}    SmartRMS for condo makes no representation about the results to be obtained from using the website and application including the use of any third-party content. The user agrees that you must evaluate, and bear all risks associated with it. SmartRMS for condo is not responsible for any claims, penalties, loss, damage, or expenses, howsoever arising, out of, or in connection with your use of the website and application, including, without limitation, direct or indirect loss, consequential loss or damage, loss of data, loss arising from use or inability to use the website and application, loss arising from any errors or omissions in the website and application. The Company will not be liable for any loss, damage, or expenses arising from your use of this website and application or any linked websites as well as from any inaccuracy of information, delay in transfer of information, duration of the publication of information, error, or interruption of connection system and display of information, stability of the system, virus, etc. 
${LOGIN_LBL_TERMSANDCONDITIONS_14_DETAIL_5_LOCATOR}    id=lblTermsAndConditions14Detail5
${LOGIN_LBL_TERMSANDCONDITIONS_14_DETAIL_6_TH}    Link to privacy policy of third party service providers used by the app
${LOGIN_LBL_TERMSANDCONDITIONS_14_DETAIL_6_EN}    Link to privacy policy of third party service providers used by the app
${LOGIN_LBL_TERMSANDCONDITIONS_14_DETAIL_6_LOCATOR}    id=lblTermsAndConditions14Detail6
${LOGIN_LBL_TERMSANDCONDITIONS_14_DETAIL_7_TH}    - Google Play Services
${LOGIN_LBL_TERMSANDCONDITIONS_14_DETAIL_7_EN}    - Google Play Services
${LOGIN_LBL_TERMSANDCONDITIONS_14_DETAIL_7_LOCATOR}    id=lblTermsAndConditions14Detail7
${LOGIN_LBL_TERMSANDCONDITIONS_14_DETAIL_8_TH}    - Firebase Analytics
${LOGIN_LBL_TERMSANDCONDITIONS_14_DETAIL_8_EN}    - Firebase Analytics
${LOGIN_LBL_TERMSANDCONDITIONS_14_DETAIL_8_LOCATOR}    id=lblTermsAndConditions14Detail8
#15.Contact information
${LOGIN_LBL_TERMSANDCONDITIONS_15_TH}    15.ช่องทางติดต่อ
${LOGIN_LBL_TERMSANDCONDITIONS_15_EN}    15.Contact information
${LOGIN_LBL_TERMSANDCONDITIONS_15_LOCATOR}    id=lblTermsAndConditions15
${LOGIN_LBL_TERMSANDCONDITIONS_15_DETAIL_TH}    เจ้าของข้อมูลส่วนบุคคลสามารถติดต่อบริษัทตามช่องทาง ดังนี้
${LOGIN_LBL_TERMSANDCONDITIONS_15_DETAIL_EN}    Data Subjects can contact the company as follows:
${LOGIN_LBL_TERMSANDCONDITIONS_15_DETAIL_LOCATOR}    id=lblTermsAndConditions15Detail
${LOGIN_LBL_TERMSANDCONDITIONS_15_DETAIL_1_TH}    ฝ่ายบริการลูกค้าสัมพันธ์ บริษัท ซอร์สโค้ด จำกัด เลขที่ 75/62, 75/63, 75/63, 75/64, 75/65 อาคารบีเคซีเอส กรุ๊ป ซอยรามคำแหง 21 ถนนรามคำแหง แขวงหัวหมาก เขตบางกะปิ กรุงเทพมหานคร 10240
${LOGIN_LBL_TERMSANDCONDITIONS_15_DETAIL_1_EN}    Customer service, SourceCode Co., Ltd. 75/62, 75/63, 75/63, 75/64, 75/65 BKCS Group Bldg., Soi Ramkhamhaeng 21, Ramkhamhaeng Rd., Huamak, Bangkapi, Bangkok 10240
${LOGIN_LBL_TERMSANDCONDITIONS_15_DETAIL_1_LOCATOR}    id=lblTermsAndConditions15Detail1
${LOGIN_LBL_TERMSANDCONDITIONS_15_DETAIL_2_TH}    เบอร์โทรศัพท์ : 02-0261911
${LOGIN_LBL_TERMSANDCONDITIONS_15_DETAIL_2_EN}    Telephone numbers: 02-0261911
${LOGIN_LBL_TERMSANDCONDITIONS_15_DETAIL_2_LOCATOR}    id=lblTermsAndConditions15Detail2
${LOGIN_LBL_TERMSANDCONDITIONS_15_DETAIL_3_TH}    อีเมล : support@smartrms.net
${LOGIN_LBL_TERMSANDCONDITIONS_15_DETAIL_3_EN}    Email: support@smartrms.net
${LOGIN_LBL_TERMSANDCONDITIONS_15_DETAIL_3_LOCATOR}    id=lblTermsAndConditions15Detail3
${LOGIN_LBL_TERMSANDCONDITIONS_15_DETAIL_4_TH}    เว็บไซต์ : www.app.smartrms.net
${LOGIN_LBL_TERMSANDCONDITIONS_15_DETAIL_4_EN}    Website: www.app.smartrms.net
${LOGIN_LBL_TERMSANDCONDITIONS_15_DETAIL_4_LOCATOR}    id=lblTermsAndConditions15Detail4

#checkbox
${LOGIN_LBL_TERMSANDCONDITIONS_TH}    อนึ่ง ก่อนให้ความยินยอมข้าพเจ้าได้อ่านและเข้าใจข้อกำหนดและเงื่อนไขในการเปิดเผยข้อมูลส่วนบุคคลซึ่งระบุไว้ด้านบนของความยินยอมนี้อย่างชัดเจนแล้ว
${LOGIN_LBL_TERMSANDCONDITIONS_EN}    I hereby acknowledge that, prior to giving consent, I have read and understand the terms and conditions regarding Personal Data disclosure which has been explicitly stated above.
${LOGIN_LBL_TERMSANDCONDITIONS_LOCATOR}    class=dx-checkbox-text
${LOGIN_CHK_TERMSANDCONDITIONS_LOCATOR}    class=dx-checkbox-icon

#Submit button
${LOGIN_BTN_TERMSANDCONDITIONS_SUBMIT_TH}    ส่ง
${LOGIN_BTN_TERMSANDCONDITIONS_SUBMIT_EN}    Submit
${LOGIN_BTN_TERMSANDCONDITIONS_SUBMIT_LOCATOR}    //*[@id="btnTermsAndConditions"]/div/span

################################################################-- Forgot password --################################################################
#Forgot password
${FORGETPASSWORD_LBL_FORGOTPASSWORDHD_TH}    ลืมรหัสผ่าน
${FORGETPASSWORD_LBL_FORGOTPASSWORDHD_EN}    Forgot password 
${FORGETPASSWORD_LBL_FORGOTPASSWORDHD_LOCATOR}    id=lblForgotPassword
${FORGETPASSWORD_IMG_FORGOTPASSWORDHD_LOCATOR}    id=imgForgotPassword
#Forgot password SMS
${FORGETPASSWORD_LBL_FORGOTPASSWORDSMS_TH}    โปรดระบุเบอร์โทรศัพท์ของท่านเพื่อรับรหัสผ่าน
${FORGETPASSWORD_LBL_FORGOTPASSWORDSMS_EN}    Please enter your phone number in the SmartRMS system to receive a password.
${FORGETPASSWORD_LBL_FORGOTPASSWORDSMS_LOCATOR}    id=lblMobileForgotPassword
${FORGETPASSWORD_TXT_FORGOTPASSWORDSMS_LOCATOR}    id=input_txtMobileForgotPassword
${FORGETPASSWORD_LBL_FORGOTPASSWORDSMS_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="txtMobileForgotPassword"]/div[2]/div/div
#Forgot password Email
${FORGETPASSWORD_LBL_FORGOTPASSWORDEMAIL_TH}    โปรดระบุอีเมลของท่านเพื่อรับรหัสผ่าน
${FORGETPASSWORD_LBL_FORGOTPASSWORDEMAIL_EN}    Please enter your email address in the SmartRMS system to receive a password.
${FORGETPASSWORD_LBL_FORGOTPASSWORDEMAIL_LOCATOR}    id=lblEmailForgotPassword
${FORGETPASSWORD_TXT_FORGOTPASSWORDEMAIL_LOCATOR}    id=input_txtEmailForgotPassword
#Get New Password
${FORGETPASSWORD_BTN_GETNEWPASSWORD_TH}    รับรหัสผ่าน
${FORGETPASSWORD_BTN_GETNEWPASSWORD_EN}     Get New Password
${FORGETPASSWORD_BTN_GETNEWPASSWORD_LOCATOR}    id=btnGetNewPassword

#Popup Forgot password 
${FORGETPASSWORD_LBL_FORGOTPASSWORDSMS_POPUP_TH}    กรุณารอรับรหัสผ่านของท่านทาง sms รหัสอ้างอิงคือ
${FORGETPASSWORD_LBL_FORGOTPASSWORDSMS_POPUP_EN}    Please wait to receive your password via sms. Your reference code is
# ${FORGETPASSWORD_LBL_FORGOTPASSWORDSMS_POPUP_LOCATOR}    xpath=/html/body/div/div/div[2]
# #Get New Password
# ${FORGETPASSWORD_BTN_FORGOTPASSWORD_POPUP_OK_TH}    ตกลง
# ${FORGETPASSWORD_BTN_FORGOTPASSWORD_POPUP_OK_EN}     OK
# ${FORGETPASSWORD_BTN_FORGOTPASSWORD_POPUP_LOCATOR}    xpath=/html/body/div/div/div[6]/button[1]

################################################################################################################################
################################################################-- Value --################################################################
${LOGIN_USERNAME_NOTFOUND_VALUE}    username
${LOGIN_PASSWORD_NOTFOUND_VALUE}    password
${LOGIN_FIRSTLOGIN_USERID_VALUE}    24
${LOGIN_FIRSTLOGIN_PDPAFLAG_VALUE}    0
${LOGIN_FIRSTLOGIN_FILENAME_VALUE}    M1_1_1_8_004_Login_Success_VerifyAction_SignIn_FirstLogin.sql
# StampDeleteUserRole
${LOGIN_STAMPDELETEUSERROLE_USERID_VALUE}    14
${LOGIN_STAMPDELETEUSERROLE_DELETETAT_VALUE}    '2021-09-01 13:40:38'
${LOGIN_STAMPDELETEUSERROLE_FILENAME_VALUE}    M1_1_0_8_009_Login_Error_StampDeleteUserRole.sql
${LOGIN_STAMPDELETEUSERROLE_USERNAME_VALUE}    23355567777
# NoDataTaxId
${LOGIN_NODATATAXID_USERNAME_VALUE}    23355567771
# UserExpire
${LOGIN_USEREXPIRE_USERID_VALUE}    14
${LOGIN_USEREXPIRE_ID_VALUE}    9
${LOGIN_USEREXPIRE_EXPIRE_VALUE}    '2021-09-01 13:40:38'
${LOGIN_USEREXPIRE_FILENAME_VALUE}    M1_1_0_8_012_Login_Error_UserExpire.sql
${LOGIN_USEREXPIRE_USERNAME_VALUE}    23355567777
# UserHasBeenDeleted
${LOGIN_USERHASBEENDELETED_USERID_VALUE}    14
${LOGIN_USERHASBEENDELETED_ID_VALUE}    9
${LOGIN_USERHASBEENDELETED_DELETETAT_VALUE}    '2021-09-01 13:40:38'
${LOGIN_USERHASBEENDELETED_FILENAME_VALUE}    M1_1_0_8_013_Login_Error_UserHasBeenDeleted.sql
${LOGIN_USERHASBEENDELETED_USERNAME_VALUE}    23355567777

# forgetpassword
${FORGETPASSWORD_MOBILENUMBER_VALUE}    0851929242
${FORGETPASSWORD_USERID_VALUE}    14
${FORGETPASSWORD_USERNAME_VALUE}    23355567777
${FORGETPASSWORD_MOBILENUMBER_VALID_VALUE}    ABC
${FORGETPASSWORD_MOBILENUMBER_NOTFOUND_VALUE}    0851234567
#-------------------------------------------- Login --------------------------------------------#	
#capture page screenshot
${LOGIN_M1_0_0_8_000_ERROR_SCREENSHOT}    M1_0_0_8_000_Login_Error_VerifyScreen_Screen.png
${LOGIN_M1_1_0_8_000_ERROR_SCREENSHOT}    M1_1_0_8_000_Login_Error_InvalidUsernameOrPassword_Screen.png
${LOGIN_M1_1_0_8_009_ERROR_SCREENSHOT}    M1_1_0_8_009_Login_Error_StampDeleteUserRole_Screen.png
${LOGIN_M1_1_0_8_011_ERROR_SCREENSHOT}    M1_1_0_8_011_Login_Error_DataNotFound_NoDataTaxId_Screen.png
${LOGIN_M1_1_0_8_013_ERROR_SCREENSHOT}    M1_1_0_8_013_Login_Error_UserHasBeenDeleted_Screen.png
${LOGIN_M1_1_0_8_012_ERROR_SCREENSHOT}    M1_1_0_8_012_Login_Error_UserExpire_Screen.png

${LOGIN_M1_0_1_8_000_SUCCESS_SCREENSHOT}    M1_0_1_8_000_Login_Success_VerifyScreen_Screen.png
${LOGIN_M1_0_1_8_001_SUCCESS_SCREENSHOT}    M1_0_1_8_001_Login_Success_VerifyScreenPrivacyPolicy_Screen.png
${LOGIN_M1_1_1_8_000_SUCCESS_SCREENSHOT}    M1_1_1_8_000_Login_Success_VerifyAction_ForgotPassword_Screen.png
${LOGIN_M1_1_1_8_002_SUCCESS_SCREENSHOT}    M1_1_1_8_002_Login_Success_VerifyAction_SignIn_Screen.png
${LOGIN_M1_1_1_8_003_SUCCESS_SCREENSHOT}    M1_1_1_8_003_Login_Success_VerifyAction_SignIn_TaxId_Screen.png
${LOGIN_M1_1_1_8_004_SUCCESS_SCREENSHOT}    M1_1_1_8_004_Login_Success_VerifyAction_SignIn_FirstLogin_Screen.png

#-------------------------------------------- Logout --------------------------------------------#	
#capture page screenshot
${LOGOUT_M1_0_1_9_000_SUCCESS_SCREENSHOT}    M1_0_1_9_000_Logout_Success_VerifyScreen_Screen.png
${LOGOUT_M1_1_1_9_000_SUCCESS_SCREENSHOT}    M1_1_1_9_000_Logout_Success_VerifyAction_Screen.png

#-------------------------------------------- ForgetPassword --------------------------------------------#	
#capture page screenshot
${FORGETPASSWORD_M1_0_0_6_000_ERROR_SCREENSHOT}    M1_0_0_6_000_ForgetPassword_Error_VerifyScreen_Screen.png
${FORGETPASSWORD_M1_1_0_6_000_ERROR_SCREENSHOT}    M1_1_0_6_000_ForgetPassword_Error_DataNotFound_Screen.png

${FORGETPASSWORD_M1_0_1_6_000_SUCCESS_SCREENSHOT}    M1_0_1_6_000_ForgetPassword_Success_VerifyScreen_Screen.png
${FORGETPASSWORD_M1_1_1_6_000_SUCCESS_SCREENSHOT}    M1_1_1_6_000_ForgetPassword_Success_VerifyAction_Screen.png
