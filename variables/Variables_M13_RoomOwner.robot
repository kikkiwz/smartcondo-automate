*** Variables ***
################################################################-- Room Owner --################################################################
${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_TH}    ดูข้อมูลเจ้าของห้อง
${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_EN}    View owner information
${ROOMOWNER_LBL_VIEW_OWNERINFORMATION_LOCATOR}    id=ViewOwnerInformation 
${ROOMOWNER_BTN_VIEW_OWNERINFORMATION_LOCATOR}    id=btnViewTransfer 

${ROOMOWNER_LBL_EDIT_DATA_TH}    แก้ไขข้อมูล
${ROOMOWNER_LBL_EDIT_DATA_EN}    Edit data
${ROOMOWNER_BTN_EDIT_DATA_LOCATOR}    id=btnEdit

${ROOMOWNER_LBL_CHANGEOWNER_DATA_TH}    เปลี่ยนเจ้าของห้อง
${ROOMOWNER_LBL_CHANGEOWNER_DATA_EN}    Change owner
${ROOMOWNER_BTN_CHANGEOWNER_DATA_LOCATOR}    id=btnChangeOwner

${ROOMOWNER_BTN_CLOSE_LOCATOR}    class=ant-modal-close-x
${ROOMOWNER_BTN_CLEAR_LOCATOR}    id=btnClear

${ROOMOWNER_IMG_KEYWORD_ADD}    /../image/suzy.jpg
${ROOMOWNER_IMG_SCRIPT}    /../../../../image/suzy.jpg

#-------------------------------------------- Create Owner information --------------------------------------------#
#ห้อง B201
${ROOMOWNER_ADD_LBL_NUMBERROOM_TH}    ห้อง 
${ROOMOWNER_ADD_LBL_NUMBERROOM_EN}    Room 
${ROOMOWNER_ADD_LBL_NUMBERROOM_LOCATOR}    id=lblCreateRoomNo

#Owner information
${ROOMOWNER_ADD_LBL_OWNERINFORMATION_TH}    ข้อมูลเจ้าของห้อง 
${ROOMOWNER_ADD_LBL_OWNERINFORMATION_EN}    Owner information
${ROOMOWNER_ADD_LBL_OWNERINFORMATION_LOCATOR}    id=lblOwnerInformation

${ROOMOWNER_ADD_LBL_NOTE_TH}    - กรณีที่เจ้าของห้องเป็นนิติบุคคล จะต้องเลือกกรอกนิติบุคคลคนแรกเท่านั้น - กรณีที่เจ้าของห้องเป็นบุคคลธรรมดาจะสามารถเลือกเจ้าของห้องได้เอง ถ้ามีการเลือกเจ้าของห้องซ้ำ เจ้าของห้องเดิม จะถูกเปลี่ยนเป็นผู้พักอาศัยทันที
${ROOMOWNER_ADD_LBL_NOTE_EN}    - If the owner is a juristic person Only the first legal entity must be entered. - If the owner is an individual, he can choose the owner himself. If other guest choose the owner, the first one will auto converted to guest.
${ROOMOWNER_ADD_LBL_NOTE_LOCATOR}    id=lblWarning

#Room owner :
${ROOMOWNER_ADD_LBL_OWNER_TH}    เจ้าของห้อง :
${ROOMOWNER_ADD_LBL_OWNER_EN}    Room owner :
${ROOMOWNER_ADD_LBL_OWNER_LOCATOR}    id=lblRoomOwner1

#Guest 1 :
${ROOMOWNER_ADD_LBL_GUESTPERSON1_TH}    ผู้พักอาศัยคนที่ 1 : 
${ROOMOWNER_ADD_LBL_GUESTPERSON1_EN}    Guest 1 :
${ROOMOWNER_ADD_LBL_GUESTPERSON1_LOCATOR}    id=lblGuest2_2

#Juristic person :
${ROOMOWNER_ADD_LBL_JURISTICPERSON_TH}    นิติบุคคล :
${ROOMOWNER_ADD_LBL_JURISTICPERSON_EN}    Juristic person :
${ROOMOWNER_ADD_LBL_JURISTICPERSON_LOCATOR}    id=lblJuristicPerson1

#type
${ROOMOWNER_ADD_RDL_TYPE_1_LOCATOR}    id=rdlTransferorType1
${ROOMOWNER_ADD_RDL_TYPE_2_LOCATOR}    id=rdlTransferorType2
#Owner
${ROOMOWNER_ADD_LBL_TYPE_OWNER_TH}    เจ้าของห้อง
${ROOMOWNER_ADD_LBL_TYPE_OWNER_EN}    Owner
${ROOMOWNER_ADD_LBL_TYPE_OWNER_1_LOCATOR}    css=#rdlTransferorType1 div[class="dx-widget dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"] div[class="dx-item-content"]
${ROOMOWNER_ADD_RDL_TYPE_OWNER_1_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[1]/div[1]/div
${ROOMOWNER_ADD_RDL_TYPE_OWNER_1_CHECK_LOCATOR}    css=#rdlTransferorType1 div[class="dx-widget dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"]
${ROOMOWNER_ADD_LBL_TYPE_OWNER_2_LOCATOR}    css=#rdlTransferorType2 div[class="dx-widget dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"] div[class="dx-item-content"]
${ROOMOWNER_ADD_RDL_TYPE_OWNER_2_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[1]/div[1]/div
${ROOMOWNER_ADD_RDL_TYPE_OWNER_2_CHECK_LOCATOR}    css=#rdlTransferorType2 div[class="dx-widget dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"]

#Guest
${ROOMOWNER_ADD_LBL_TYPE_GUESTPERSON_TH}    ผู้พักอาศัย 
${ROOMOWNER_ADD_LBL_TYPE_GUESTPERSON_EN}    Guest
${ROOMOWNER_ADD_LBL_TYPE_GUESTPERSON_1_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/app-create-transfer/div/form/div/div[2]/div/div[2]/div/div[1]/div/div/dx-radio-group/div/div[2]/div[2]
${ROOMOWNER_ADD_RDL_TYPE_GUESTPERSON_1_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[2]/div[1]/div
${ROOMOWNER_ADD_RDL_TYPE_GUESTPERSON_1_CHECK_LOCATOR}    css=#rdlTransferorType1 div[class="dx-widget dx-collection"] div[class="dx-item dx-radiobutton"] 
${ROOMOWNER_ADD_LBL_TYPE_GUESTPERSON_2_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/app-create-transfer/div/form/div/div[2]/div/div[2]/div/div[1]/div/div/dx-radio-group/div/div[2]/div[2]
${ROOMOWNER_ADD_RDL_TYPE_GUESTPERSON_2_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[2]/div[1]/div
${ROOMOWNER_ADD_RDL_TYPE_GUESTPERSON_2_CHECK_LOCATOR}    css=#rdlTransferorType2 div[class="dx-widget dx-collection"] div[class="dx-item dx-radiobutton"] 

############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "นิติบุคคล" ############## 
#Upload a picture of a legal entity
${ROOMOWNER_ADD_LBL_UPLOADAPICTUREOFALEGALENTITY_TH}    อัปโหลดรูปนิติบุคคล
${ROOMOWNER_ADD_LBL_UPLOADAPICTUREOFALEGALENTITY_EN}    Upload a picture of a legal entity
${ROOMOWNER_ADD_LBL_UPLOADAPICTUREOFALEGALENTITY_LOCATOR}    id=dropzone-text
${ROOMOWNER_ADD_IMG_UPLOADAPICTUREOFALEGALENTITY_EXTERNAL_LOCATOR}    id=dropzone-external
${ROOMOWNER_ADD_IMG_UPLOADAPICTUREOFALEGALENTITY_LOCATOR}    id=dropzone-image
${ROOMOWNER_ADD_INPUT_UPLOADAPICTUREOFALEGALENTITY_LOCATOR}    id=input_btnUploadImage
${ROOMOWNER_ADD_ICON_UPLOADAPICTUREOFALEGALENTITY_DELETE_LOCATOR}    id=btnDelImg1

#Company name *
${ROOMOWNER_ADD_LBL_COMPANYNAME_TH}    ชื่อบริษัท
${ROOMOWNER_ADD_LBL_COMPANYNAME_EN}    Company name
${ROOMOWNER_ADD_LBL_COMPANYNAME_LOCATOR}    id=lblCompanyName1
${ROOMOWNER_ADD_TXT_COMPANYNAME_LOCATOR}    id=txtCompanyName1
${ROOMOWNER_ADD_INPUT_COMPANYNAME_LOCATOR}    id=input_txtCompanyName1
${ROOMOWNER_ADD_LBL_COMPANYNAME_VALID_LOCATOR}    id=lblCompanyNameNotValid1
#Short name
${ROOMOWNER_ADD_LBL_SHORTNAME_TH}    ชื่อย่อ
${ROOMOWNER_ADD_LBL_SHORTNAME_EN}    Short name
${ROOMOWNER_ADD_LBL_SHORTNAME_LOCATOR}    id=lblShortName1
${ROOMOWNER_ADD_TXT_SHORTNAME_LOCATOR}    id=txtShortName1
${ROOMOWNER_ADD_INPUT_SHORTNAME_LOCATOR}    id=input_txtShortName1
#Juristic id
${ROOMOWNER_ADD_LBL_JURISTICID_TH}    เลขทะเบียนบริษัท
${ROOMOWNER_ADD_LBL_JURISTICID_EN}    Juristic id
${ROOMOWNER_ADD_LBL_JURISTICID_LOCATOR}    id=lblJuristicId1
${ROOMOWNER_ADD_TXT_JURISTICID_LOCATOR}    id=txtJuristicId1
${ROOMOWNER_ADD_INPUT_JURISTICID_LOCATOR}    id=input_txtJuristicId1
#Tax identification number
${ROOMOWNER_ADD_LBL_TAXIDENTIFICATIONNUMBER_JURISTIC_TH}    เลขประจำตัวผู้เสียภาษี
${ROOMOWNER_ADD_LBL_TAXIDENTIFICATIONNUMBER_JURISTIC_EN}    Tax identification number
${ROOMOWNER_ADD_LBL_TAXIDENTIFICATIONNUMBER_JURISTIC_LOCATOR}    id=lblTaxIdentificationNumber1
${ROOMOWNER_ADD_TXT_TAXIDENTIFICATIONNUMBER_JURISTIC_LOCATOR}    id=txtTaxIdentificationNumber1
${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_JURISTIC_LOCATOR}    id=input_txtTaxIdentificationNumber1
${ROOMOWNER_ADD_BTN_TAXIDENTIFICATIONNUMBER_JURISTIC_LOCATOR}    id=btnSearchHistory1
${ROOMOWNER_ADD_LBL_TAXIDENTIFICATIONNUMBER_JURISTIC_HOVER_TH}    ค้นหาประวัติ
${ROOMOWNER_ADD_LBL_TAXIDENTIFICATIONNUMBER_JURISTIC_HOVER_EN}    Search transfer history
${ROOMOWNER_ADD_LBL_TAXIDENTIFICATIONNUMBER_JURISTIC_HOVER_LOCATOR}    id=lblSearchHistory1
#Fax
${ROOMOWNER_ADD_LBL_FAX_TH}    เบอร์โทรสาร
${ROOMOWNER_ADD_LBL_FAX_EN}    Fax
${ROOMOWNER_ADD_LBL_FAX_LOCATOR}    id=lblFax1
${ROOMOWNER_ADD_TXT_FAX_LOCATOR}    id=txtFax1
${ROOMOWNER_ADD_INPUT_FAX_LOCATOR}    id=input_txtFax1

############## กรณีเลือก *ประเภทผู้ทำสัญญา เป็น "บุคคลธรรมดา - คนไทย" ############## 
#Read identification card
${ROOMOWNER_ADD_BTN_READIDENTIFICATIONCARD_TH}    อ่านบัตรประชาชน
${ROOMOWNER_ADD_BTN_READIDENTIFICATIONCARD_EN}    Read identification card
${ROOMOWNER_ADD_BTN_READIDENTIFICATIONCARD_1_LOCATOR}    id=btnReadIdentificationCard1
${ROOMOWNER_ADD_BTN_READIDENTIFICATIONCARD_2_LOCATOR}    id=btnReadIdentificationCard2
#Note: The picture will be shown only when reading from the ID card only.
${ROOMOWNER_ADD_LBL_NOTE_IMAGE_THAINATIONS_TH}    - หมายเหตุ : ภาพจะแสดงก็ต่อเมื่อกดอ่านจากบัตรประชาชนเท่านั้น
${ROOMOWNER_ADD_LBL_NOTE_IMAGE_THAINATIONS_EN}    - Note: The picture will be shown only when reading from the ID card only.
${ROOMOWNER_ADD_LBL_NOTE_IMAGE_THAINATIONS_1_LOCATOR}    id=lblWarningIdCard1
${ROOMOWNER_ADD_IMG_NOTE_IMAGE_THAINATIONS_1_LOCATOR}    id=imgNoUserImg1
${ROOMOWNER_ADD_LBL_NOTE_IMAGE_THAINATIONS_2_LOCATOR}    id=lblWarningIdCard2
${ROOMOWNER_ADD_IMG_NOTE_IMAGE_THAINATIONS_2_LOCATOR}    id=imgNoUserImg2
${ROOMOWNER_ADD_IMG_NOTE_IMAGE_THAINATIONS_3_LOCATOR}    id=imgUserImgownerType3
#Owner type *
${ROOMOWNER_ADD_LBL_TYPE_OWNERTYPE_TH}    ประเภทเจ้าของห้อง
${ROOMOWNER_ADD_LBL_TYPE_OWNERTYPE_EN}    Owner type
${ROOMOWNER_ADD_LBL_TYPE_OWNERTYPE_1_1_LOCATOR}    id=lblOwnerType1_1
${ROOMOWNER_ADD_LBL_TYPE_OWNERTYPE_1_1_PLACEHOLDER_VALUE}    1
${ROOMOWNER_ADD_LBL_TYPE_OWNERTYPE_1_1_PLACEHOLDER_LOCATOR}    css=#ddlOwnerType1_1 div[class="dx-placeholder dx-state-invisible"]
${ROOMOWNER_ADD_TXT_TYPE_OWNERTYPE_1_1_LOCATOR}    xpath=//*[@id="ddlOwnerType1_1"]/nz-select-top-control/nz-select-search/input
${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_1_1_LOCATOR}    id=ddlOwnerType1_1
${ROOMOWNER_ADD_INPUT_TYPE_OWNERTYPE_1_1_LOCATOR}    id=input_ddlOwnerType1_1
${ROOMOWNER_ADD_LBL_TYPE_OWNERTYPE_1_2_LOCATOR}    id=lblOwnerType1_2
${ROOMOWNER_ADD_LBL_TYPE_OWNERTYPE_1_2_PLACEHOLDER_VALUE}    1
${ROOMOWNER_ADD_LBL_TYPE_OWNERTYPE_1_2_PLACEHOLDER_LOCATOR}    css=#ddlOwnerType1_2 div[class="dx-placeholder dx-state-invisible"]
${ROOMOWNER_ADD_TXT_TYPE_OWNERTYPE_1_2_LOCATOR}    xpath=//*[@id="ddlOwnerType1_2"]/nz-select-top-control/nz-select-search/input
${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_1_2_LOCATOR}    id=ddlOwnerType1_2
${ROOMOWNER_ADD_INPUT_TYPE_OWNERTYPE_1_2_LOCATOR}    id=input_ddlOwnerType1_2
${ROOMOWNER_ADD_LBL_TYPE_OWNERTYPE_2_1_LOCATOR}    id=lblOwnerType2_1
${ROOMOWNER_ADD_LBL_TYPE_OWNERTYPE_2_1_PLACEHOLDER_VALUE}    1
${ROOMOWNER_ADD_LBL_TYPE_OWNERTYPE_2_1_PLACEHOLDER_LOCATOR}    css=#ddlOwnerType2_1 div[class="dx-placeholder dx-state-invisible"]
${ROOMOWNER_ADD_TXT_TYPE_OWNERTYPE_2_1_LOCATOR}    xpath=//*[@id="ddlOwnerType2_1"]/nz-select-top-control/nz-select-search/input
${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_2_1_LOCATOR}    id=ddlOwnerType2_1
${ROOMOWNER_ADD_INPUT_TYPE_OWNERTYPE_2_1_LOCATOR}    id=input_ddlOwnerType2_1
${ROOMOWNER_ADD_LBL_TYPE_OWNERTYPE_2_2_LOCATOR}    id=lblOwnerType2_2
${ROOMOWNER_ADD_LBL_TYPE_OWNERTYPE_2_2_PLACEHOLDER_VALUE}    1
${ROOMOWNER_ADD_LBL_TYPE_OWNERTYPE_2_2_PLACEHOLDER_LOCATOR}    css=#ddlOwnerType2_2 div[class="dx-placeholder dx-state-invisible"]
${ROOMOWNER_ADD_TXT_TYPE_OWNERTYPE_2_2_LOCATOR}    xpath=//*[@id="ddlOwnerType2_2"]/nz-select-top-control/nz-select-search/input
${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_2_2_LOCATOR}    id=ddlOwnerType2_2
${ROOMOWNER_ADD_INPUT_TYPE_OWNERTYPE_2_2_LOCATOR}    id=input_ddlOwnerType2_2
${ROOMOWNER_ADD_LBL_TYPE_OWNERTYPE_3_1_LOCATOR}    id=lblOwnerType3_1
${ROOMOWNER_ADD_LBL_TYPE_OWNERTYPE_3_1_PLACEHOLDER_VALUE}    1
${ROOMOWNER_ADD_LBL_TYPE_OWNERTYPE_3_1_PLACEHOLDER_LOCATOR}    css=#ddlOwnerType3_1 div[class="dx-placeholder dx-state-invisible"]
${ROOMOWNER_ADD_TXT_TYPE_OWNERTYPE_3_1_LOCATOR}    xpath=//*[@id="ddlOwnerType3_1"]/nz-select-top-control/nz-select-search/input
${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_3_1_LOCATOR}    id=ddlOwnerType3_1
${ROOMOWNER_ADD_INPUT_TYPE_OWNERTYPE_3_1_LOCATOR}    id=input_ddlOwnerType3_1
${ROOMOWNER_ADD_LBL_TYPE_OWNERTYPE_3_2_LOCATOR}    id=lblOwnerType3_2
${ROOMOWNER_ADD_LBL_TYPE_OWNERTYPE_3_2_PLACEHOLDER_VALUE}    1
${ROOMOWNER_ADD_LBL_TYPE_OWNERTYPE_3_2_PLACEHOLDER_LOCATOR}    css=#ddlOwnerType3_2 div[class="dx-placeholder dx-state-invisible"]
${ROOMOWNER_ADD_TXT_TYPE_OWNERTYPE_3_2_LOCATOR}    xpath=//*[@id="ddlOwnerType3_2"]/nz-select-top-control/nz-select-search/input
${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_3_2_LOCATOR}    id=ddlOwnerType3_2
${ROOMOWNER_ADD_INPUT_TYPE_OWNERTYPE_3_2_LOCATOR}    id=input_ddlOwnerType3_2
${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_CLASS_LOCATOR}    class=dx-list-item-content
# @{ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_TH_VALUE}    บุคคลธรรมดา - คนไทย    บุคคลธรรมดา - ต่างชาติ    นิติบุคคล
# @{ROOMOWNER_ADD_DDL_TYPE_OWNERTYPE_EN_VALUE}    Individuals - Thai nationals    Individuals - Foreigners    Juristic person
#Identification No./Passport No. *
${ROOMOWNER_ADD_LBL_IDENTIFICATIONNOPASSPOERNUMBER_TH}    หมายเลขบัตรประชาชน/หมายเลขหนังสือเดินทาง
${ROOMOWNER_ADD_LBL_IDENTIFICATIONNOPASSPOERNUMBER_EN}    Identification No./Passport No.
${ROOMOWNER_ADD_LBL_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    id=lblNameIdentificationNo1
${ROOMOWNER_ADD_TXT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    id=txtIdentificationNo1
${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    id=input_txtIdentificationNo1
${ROOMOWNER_ADD_TXT_IDENTIFICATIONNOPASSPOERNUMBER_1_VALID_LOCATOR}    id=lblNameIdentificationNoValid1
${ROOMOWNER_ADD_BTN_IDENTIFICATIONNOPASSPOERNUMBER_1_LOCATOR}    id=btnSearchId1
${ROOMOWNER_ADD_LBL_IDENTIFICATIONNOPASSPOERNUMBER_2_LOCATOR}    id=lblNameIdentificationNo2
${ROOMOWNER_ADD_TXT_IDENTIFICATIONNOPASSPOERNUMBER_2_LOCATOR}    id=txtIdentificationNo2
${ROOMOWNER_ADD_INPUT_IDENTIFICATIONNOPASSPOERNUMBER_2_LOCATOR}    id=input_txtIdentificationNo2
${ROOMOWNER_ADD_TXT_IDENTIFICATIONNOPASSPOERNUMBER_2_VALID_LOCATOR}    id=lblNameIdentificationNoValid2
${ROOMOWNER_ADD_BTN_IDENTIFICATIONNOPASSPOERNUMBER_2_LOCATOR}    id=btnSearchId2
${ROOMOWNER_ADD_LBL_IDENTIFICATIONNOPASSPOERNUMBER_HOVER_TH}    ค้นหาประวัติ
${ROOMOWNER_ADD_LBL_IDENTIFICATIONNOPASSPOERNUMBER_HOVER_EN}    Search transfer history
${ROOMOWNER_ADD_LBL_IDENTIFICATIONNOPASSPOERNUMBER_HOVER_LOCATOR}    id=lblNameIdentificationNoHover
#Title
${ROOMOWNER_ADD_LBL_TITLE_TH}    คำนำหน้า 
${ROOMOWNER_ADD_LBL_TITLE_EN}    Title
${ROOMOWNER_ADD_LBL_TITLE_1_LOCATOR}    id=lblTitle1
${ROOMOWNER_ADD_LBL_TITLE_1_PLACEHOLDER_LOCATOR}    css=#ddlTitle1 div[class="dx-placeholder"]
${ROOMOWNER_ADD_TXT_TITLE_1_LOCATOR}    id=//*[@id="ddlTitle1"]/nz-select-top-control/nz-select-search/input
${ROOMOWNER_ADD_TXT_TITLE_1_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlTitle1"]/div[2]/div/div
${ROOMOWNER_ADD_INPUT_TITLE_1_LOCATOR}    id=input_ddlTitle1
${ROOMOWNER_ADD_DDL_TITLE_1_LOCATOR}    id=ddlTitle1
${ROOMOWNER_ADD_LBL_TITLE_2_LOCATOR}    id=lblTitle2
${ROOMOWNER_ADD_LBL_TITLE_2_PLACEHOLDER_LOCATOR}    css=#ddlTitle2 div[class="dx-placeholder"]
${ROOMOWNER_ADD_TXT_TITLE_2_LOCATOR}    id=//*[@id="ddlTitle2"]/nz-select-top-control/nz-select-search/input
${ROOMOWNER_ADD_TXT_TITLE_2_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlTitle2"]/div[2]/div/div
${ROOMOWNER_ADD_INPUT_TITLE_2_LOCATOR}    id=input_ddlTitle2
${ROOMOWNER_ADD_DDL_TITLE_2_LOCATOR}    id=ddlTitle2
${ROOMOWNER_ADD_DDL_TITLE_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${ROOMOWNER_ADD_DDL_TITLE_CLASS_LOCATOR}    css=#[id] div[class="dx-scrollable-wrapper"] div[class="dx-scrollable-container"] div[class="dx-scrollable-content"] div[class="dx-scrollview-content"] div[class="dx-item-content dx-list-item-content"]
#First name *
${ROOMOWNER_ADD_LBL_FIRSTNAME_TH}    ชื่อ
${ROOMOWNER_ADD_LBL_FIRSTNAME_EN}    First name 
${ROOMOWNER_ADD_LBL_FIRSTNAME_1_LOCATOR}    id=lblFirstName1
${ROOMOWNER_ADD_TXT_FIRSTNAME_1_LOCATOR}    id=txtFirstName1
${ROOMOWNER_ADD_INPUT_FIRSTNAME_1_LOCATOR}    id=input_txtFirstName1
${ROOMOWNER_ADD_TXT_FIRSTNAME_1_VALID_LOCATOR}    id=lblFirstNameNotValid1
${ROOMOWNER_ADD_LBL_FIRSTNAME_2_LOCATOR}    id=lblFirstName2
${ROOMOWNER_ADD_TXT_FIRSTNAME_2_LOCATOR}    id=txtFirstName2
${ROOMOWNER_ADD_INPUT_FIRSTNAME_2_LOCATOR}    id=input_txtFirstName2
${ROOMOWNER_ADD_TXT_FIRSTNAME_2_VALID_LOCATOR}    id=lblFirstNameNotValid2
#Last name
${ROOMOWNER_ADD_LBL_LASTNAME_TH}    นามสกุล
${ROOMOWNER_ADD_LBL_LASTNAME_EN}    Last name
${ROOMOWNER_ADD_LBL_LASTNAME_1_LOCATOR}    id=lblLastName1
${ROOMOWNER_ADD_TXT_LASTNAME_1_LOCATOR}    id=txtLastName1
${ROOMOWNER_ADD_INPUT_LASTNAME_1_LOCATOR}    id=input_txtLastName1
${ROOMOWNER_ADD_LBL_LASTNAME_2_LOCATOR}    id=lblLastName2
${ROOMOWNER_ADD_TXT_LASTNAME_2_LOCATOR}    id=txtLastName2
${ROOMOWNER_ADD_INPUT_LASTNAME_2_LOCATOR}    id=input_txtLastName2
#Nickname
${ROOMOWNER_ADD_LBL_NICKNAME_TH}    ชื่อเล่น
${ROOMOWNER_ADD_LBL_NICKNAME_EN}    Nickname
${ROOMOWNER_ADD_LBL_NICKNAME_1_LOCATOR}    id=lblNickname1
${ROOMOWNER_ADD_TXT_NICKNAME_1_LOCATOR}    id=txtNickname1
${ROOMOWNER_ADD_INPUT_NICKNAME_1_LOCATOR}    id=input_txtNickname1
${ROOMOWNER_ADD_LBL_NICKNAME_2_LOCATOR}    id=lblNickname2
${ROOMOWNER_ADD_TXT_NICKNAME_2_LOCATOR}    id=txtNickname2
${ROOMOWNER_ADD_INPUT_NICKNAME_2_LOCATOR}    id=input_txtNickname2
#Birth date
${ROOMOWNER_ADD_LBL_BIRTHDATE_TH}    วัน/เดือน/ปี เกิด
${ROOMOWNER_ADD_LBL_BIRTHDATE_EN}    Birth date
${ROOMOWNER_ADD_LBL_BIRTHDATE_1_LOCATOR}    id=lblBirthdate1
${ROOMOWNER_ADD_DATE_BIRTHDATE_1_LOCATOR}    id=dateBirthdate1
${ROOMOWNER_ADD_DATE_BIRTHDATE_1_INPUT_LOCATOR}    id=input_dateBirthdate1
# ${ROOMOWNER_ADD_DATE_BIRTHDATE_1_VALID_LOCATOR}    id=lblBirthdateValid1
${ROOMOWNER_ADD_DATE_BIRTHDATE_1_BUTTON_LOCATOR}    xpath=//*[@id="dateBirthdate1"]/div[1]/div/div[2]/div[2]/div/div
# ${ROOMOWNER_ADD_DATE_BIRTHDATE_1_VALUE_DATE}    2020/11/01
${ROOMOWNER_ADD_LBL_BIRTHDATE_2_LOCATOR}    id=lblBirthdate2
${ROOMOWNER_ADD_DATE_BIRTHDATE_2_LOCATOR}    id=dateBirthdate2
${ROOMOWNER_ADD_DATE_BIRTHDATE_2_INPUT_LOCATOR}    id=input_dateBirthdate2
# ${ROOMOWNER_ADD_DATE_BIRTHDATE_2_VALID_LOCATOR}    id=lblBirthdateValid2
${ROOMOWNER_ADD_DATE_BIRTHDATE_2_BUTTON_LOCATOR}    xpath=//*[@id="dateBirthdate1"]/div[1]/div/div[2]/div[2]/div/div
# ${ROOMOWNER_ADD_DATE_BIRTHDATE_2_VALUE_DATE}    2020/11/01
${ROOMOWNER_ADD_DATE_BIRTHDATE_FORMAT_DATE}    yyyy/mm/dd
${ROOMOWNER_ADD_DATE_BIRTHDATE_SEPARATOR_DATE}    /
#Identification create date
${ROOMOWNER_ADD_LBL_IDENTIFICATIONCREATEDATE_TH}    วันที่ออกบัตร
${ROOMOWNER_ADD_LBL_IDENTIFICATIONCREATEDATE_EN}    Identification create date
${ROOMOWNER_ADD_LBL_IDENTIFICATIONCREATEDATE_1_LOCATOR}    id=lblIdentificationCreate1
${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_LOCATOR}    id=dateIdentificationCreate1
${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_INPUT_LOCATOR}    id=input_dateIdentificationCreate1
# ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_VALID_LOCATOR}    id=lblIdentificationCreateValid1
${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_BUTTON_LOCATOR}    xpath=//*[@id="dateIdentificationCreate1"]/div[1]/div/div[2]/div[2]/div/div
# ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_1_VALUE_DATE}    2020/11/01
${ROOMOWNER_ADD_LBL_IDENTIFICATIONCREATEDATE_2_LOCATOR}    id=lblIdentificationCreate2
${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_2_LOCATOR}    id=dateIdentificationCreate2
${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_2_INPUT_LOCATOR}    id=input_dateIdentificationCreate2
# ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_2_VALID_LOCATOR}    id=lblIdentificationCreateValid2
${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_2_BUTTON_LOCATOR}    xpath=//*[@id="dateIdentificationCreate2"]/div[1]/div/div[2]/div[2]/div/div
# ${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_2_VALUE_DATE}    2020/11/01
${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_FORMAT_DATE}    yyyy/mm/dd
${ROOMOWNER_ADD_DATE_IDENTIFICATIONCREATEDATE_SEPARATOR_DATE}    /
#Identification expire date
${ROOMOWNER_ADD_LBL_IDENTIFICATIONEXPIREDATE_TH}    วันที่บัตรหมดอายุ
${ROOMOWNER_ADD_LBL_IDENTIFICATIONEXPIREDATE_EN}    Identification expire date
${ROOMOWNER_ADD_LBL_IDENTIFICATIONEXPIREDATE_1_LOCATOR}    id=lblIdentificationExpire1
${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_LOCATOR}    id=dateIdentificationExpire1
${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_INPUT_LOCATOR}    id=input_dateIdentificationExpire1
# ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_VALID_LOCATOR}    id=lblIdentificationExpireValid1
${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_BUTTON_LOCATOR}    xpath=//*[@id="dateIdentificationExpire1"]/div[1]/div/div[2]/div[2]/div/div
# ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_1_VALUE_DATE}    2020/11/01
${ROOMOWNER_ADD_LBL_IDENTIFICATIONEXPIREDATE_2_LOCATOR}    id=lblIdentificationExpire2
${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_2_LOCATOR}    id=dateIdentificationExpire2
${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_2_INPUT_LOCATOR}    id=input_dateIdentificationExpire2
# ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_2_VALID_LOCATOR}    id=lblIdentificationExpireValid2
${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_2_BUTTON_LOCATOR}    xpath=//*[@id="dateIdentificationExpire2"]/div[1]/div/div[2]/div[2]/div/div
# ${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_2_VALUE_DATE}    2020/11/01
${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_FORMAT_DATE}    yyyy/mm/dd
${ROOMOWNER_ADD_DATE_IDENTIFICATIONEXPIREDATE_SEPARATOR_DATE}    /
#Mobile
${ROOMOWNER_ADD_LBL_MOBILE_TH}    เบอร์โทรศัพท์
${ROOMOWNER_ADD_LBL_MOBILE_EN}    Mobile
${ROOMOWNER_ADD_LBL_MOBILE_1_LOCATOR}    id=lblMobile1
${ROOMOWNER_ADD_TXT_MOBILE_1_LOCATOR}    id=txtMobile1
${ROOMOWNER_ADD_INPUT_MOBILE_1_LOCATOR}    id=input_txtMobile1
${ROOMOWNER_ADD_TXT_MOBILE_1_VALID_LOCATOR}    id=lblMobileNotValid1
${ROOMOWNER_ADD_LBL_MOBILE_2_LOCATOR}    id=lblMobile2
${ROOMOWNER_ADD_TXT_MOBILE_2_LOCATOR}    id=txtMobile2
${ROOMOWNER_ADD_INPUT_MOBILE_2_LOCATOR}    id=input_txtMobile2
${ROOMOWNER_ADD_TXT_MOBILE_2_VALID_LOCATOR}    id=lblMobileNotValid2
#E-mail
${ROOMOWNER_ADD_LBL_EMAIL_TH}    อีเมล
${ROOMOWNER_ADD_LBL_EMAIL_EN}    E-mail
${ROOMOWNER_ADD_LBL_EMAIL_1_LOCATOR}    id=lblEmail1
${ROOMOWNER_ADD_TXT_EMAIL_1_LOCATOR}    id=txtEmail1
${ROOMOWNER_ADD_INPUT_EMAIL_1_LOCATOR}    id=input_txtEmail1
# ${ROOMOWNER_ADD_TXT_EMAIL_1_VALID_LOCATOR}    id=lblEmailValid1
${ROOMOWNER_ADD_LBL_EMAIL_2_LOCATOR}    id=lblEmail2
${ROOMOWNER_ADD_TXT_EMAIL_2_LOCATOR}    id=txtEmail2
${ROOMOWNER_ADD_INPUT_EMAIL_2_LOCATOR}    id=input_txtEmail2
# ${ROOMOWNER_ADD_TXT_EMAIL_2_VALID_LOCATOR}    id=lblEmailValid2
#Line ID
${ROOMOWNER_ADD_LBL_LINEID_TH}    Line ID
${ROOMOWNER_ADD_LBL_LINEID_EN}    Line ID
${ROOMOWNER_ADD_LBL_LINEID_1_LOCATOR}    id=lblLineId1
${ROOMOWNER_ADD_TXT_LINEID_1_LOCATOR}    id=txtLineId1
${ROOMOWNER_ADD_INPUT_LINEID_1_LOCATOR}    id=input_txtLineId1
# ${ROOMOWNER_ADD_TXT_LINEID_1_VALID_LOCATOR}    id=lblLineIdValid1
${ROOMOWNER_ADD_LBL_LINEID_2_LOCATOR}    id=lblLineId2
${ROOMOWNER_ADD_TXT_LINEID_2_LOCATOR}    id=txtLineId2
${ROOMOWNER_ADD_INPUT_LINEID_2_LOCATOR}    id=input_txtLineId2
# ${ROOMOWNER_ADD_TXT_LINEID_2_VALID_LOCATOR}    id=lblLineIdValid2
#Tax identification number
${ROOMOWNER_ADD_LBL_TAXIDENTIFICATIONNUMBER_TH}    เลขประจำตัวผู้เสียภาษี
${ROOMOWNER_ADD_LBL_TAXIDENTIFICATIONNUMBER_EN}    Tax identification number
${ROOMOWNER_ADD_LBL_TAXIDENTIFICATIONNUMBER_1_LOCATOR}    id=lblTaxIdentificationNumber1
${ROOMOWNER_ADD_TXT_TAXIDENTIFICATIONNUMBER_1_LOCATOR}    id=txtTaxIdentificationNumber1
${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_1_LOCATOR}    id=input_txtTaxIdentificationNumber1
${ROOMOWNER_ADD_BTN_TAXIDENTIFICATIONNUMBER_1_LOCATOR}    id=btnCopyId1
# ${ROOMOWNER_ADD_BTN_TAXIDENTIFICATIONNUMBER_1_LOCATOR}    css=#btnCopyId1 i[lass="dx-icon fa fa-id-card"]
${ROOMOWNER_ADD_LBL_TAXIDENTIFICATIONNUMBER_2_LOCATOR}    id=lblTaxIdentificationNumber2
${ROOMOWNER_ADD_TXT_TAXIDENTIFICATIONNUMBER_2_LOCATOR}    id=txtTaxIdentificationNumber2
${ROOMOWNER_ADD_INPUT_TAXIDENTIFICATIONNUMBER_2_LOCATOR}    id=input_txtTaxIdentificationNumber2
${ROOMOWNER_ADD_BTN_TAXIDENTIFICATIONNUMBER_2_LOCATOR}    id=btnCopyId2
${ROOMOWNER_ADD_LBL_TAXIDENTIFICATIONNUMBER_HOVER_TH}    กรอกหมายเลขบัตรประจำตัวประชาชน
${ROOMOWNER_ADD_LBL_TAXIDENTIFICATIONNUMBER_HOVER_EN}    Enter the ID card number.
${ROOMOWNER_ADD_LBL_TAXIDENTIFICATIONNUMBER_1_HOVER_LOCATOR}    id=lblCopyIdentification1
${ROOMOWNER_ADD_LBL_TAXIDENTIFICATIONNUMBER_2_HOVER_LOCATOR}    id=lblCopyIdentification2
#Education
${ROOMOWNER_ADD_LBL_EDUCATION_TH}    การศึกษา
${ROOMOWNER_ADD_LBL_EDUCATION_EN}    Education
${ROOMOWNER_ADD_LBL_EDUCATION_1_LOCATOR}    id=lblEducation1
${ROOMOWNER_ADD_LBL_EDUCATION_1_PLACEHOLDER_LOCATOR}    css=#ddlEducation1 div[class="dx-placeholder"]
${ROOMOWNER_ADD_TXT_EDUCATION_1_LOCATOR}    id=//*[@id="ddlEducation1"]/nz-select-top-control/nz-select-search/input
${ROOMOWNER_ADD_TXT_EDUCATION_1_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlEducation1"]/div[2]/div/div
${ROOMOWNER_ADD_INPUT_EDUCATION_1_LOCATOR}    id=input_ddlEducation1
${ROOMOWNER_ADD_DDL_EDUCATION_1_LOCATOR}    id=ddlEducation1
${ROOMOWNER_ADD_LBL_EDUCATION_2_LOCATOR}    id=lblEducation2
${ROOMOWNER_ADD_LBL_EDUCATION_2_PLACEHOLDER_LOCATOR}    css=#ddlEducation2 div[class="dx-placeholder"]
${ROOMOWNER_ADD_TXT_EDUCATION_2_LOCATOR}    id=//*[@id="ddlEducation2"]/nz-select-top-control/nz-select-search/input
${ROOMOWNER_ADD_TXT_EDUCATION_2_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlEducation2"]/div[2]/div/div
${ROOMOWNER_ADD_INPUT_EDUCATION_2_LOCATOR}    id=input_ddlEducation2
${ROOMOWNER_ADD_DDL_EDUCATION_2_LOCATOR}    id=ddlEducation2
${ROOMOWNER_ADD_DDL_EDUCATION_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${ROOMOWNER_ADD_DDL_EDUCATION_CLASS_LOCATOR}    css=#[id] div[class="dx-scrollable-wrapper"] div[class="dx-scrollable-container"] div[class="dx-scrollable-content"] div[class="dx-scrollview-content"] div[class="dx-item-content dx-list-item-content"]
# @{ROOMOWNER_ADD_DDL_EDUCATION_TH_VALUE}    ต่ำกว่าชั้นมัธยมศึกษาตอนต้น    ชั้นมัธยมศึกษาตอนต้น    ชั้นมัธยมศึกษาตอนปลาย    ประกาศนียบัตรวิชาชีพ (ปวช.)    ประกาศนียบัตรวิชาชีพชั้นสูง (ปวส.)    ปริญญาตรี    ปริญญาโท    ปริญญาเอก
# @{ROOMOWNER_ADD_DDL_EDUCATION_EN_VALUE}    Lower than junior High School    Junior High School    Senior High School    Vocational Certificate    High Vocational Certificate    Bachelor’s degree    Master’s degree    Doctor’s degree
#Occupation
${ROOMOWNER_ADD_LBL_OCCUPATION_TH}    อาชีพ
${ROOMOWNER_ADD_LBL_OCCUPATION_EN}    Occupation
${ROOMOWNER_ADD_LBL_OCCUPATION_1_1_LOCATOR}    id=lblOccupationType11
${ROOMOWNER_ADD_LBL_OCCUPATION_1_1_PLACEHOLDER_LOCATOR}    css=#ddlOccupationType11 div[class="dx-placeholder"]
${ROOMOWNER_ADD_TXT_OCCUPATION_1_1_LOCATOR}    id=//*[@id="ddlOccupationType11"]/nz-select-top-control/nz-select-search/input
${ROOMOWNER_ADD_TXT_OCCUPATION_1_1_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlOccupationType11"]/div[2]/div/div
${ROOMOWNER_ADD_INPUT_OCCUPATION_1_1_LOCATOR}    id=input_ddlOccupationType11
${ROOMOWNER_ADD_DDL_OCCUPATION_1_1_LOCATOR}    id=ddlOccupationType11
${ROOMOWNER_ADD_LBL_OCCUPATION_1_2_LOCATOR}    id=lblOccupationType12
${ROOMOWNER_ADD_LBL_OCCUPATION_1_2_PLACEHOLDER_LOCATOR}    css=#ddlOccupationType12 div[class="dx-placeholder"]
${ROOMOWNER_ADD_TXT_OCCUPATION_1_2_LOCATOR}    id=//*[@id="ddlOccupationType12"]/nz-select-top-control/nz-select-search/input
${ROOMOWNER_ADD_TXT_OCCUPATION_1_2_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlOccupationType12"]/div[2]/div/div
${ROOMOWNER_ADD_INPUT_OCCUPATION_1_2_LOCATOR}    id=input_ddlOccupationType12
${ROOMOWNER_ADD_DDL_OCCUPATION_1_2_LOCATOR}    id=ddlOccupationType12
${ROOMOWNER_ADD_LBL_OCCUPATION_2_1_LOCATOR}    id=lblOccupationType21
${ROOMOWNER_ADD_LBL_OCCUPATION_2_1_PLACEHOLDER_LOCATOR}    css=#ddlOccupationType21 div[class="dx-placeholder"]
${ROOMOWNER_ADD_TXT_OCCUPATION_2_1_LOCATOR}    id=//*[@id="ddlOccupationType21"]/nz-select-top-control/nz-select-search/input
${ROOMOWNER_ADD_TXT_OCCUPATION_2_1_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlOccupationType21"]/div[2]/div/div
${ROOMOWNER_ADD_INPUT_OCCUPATION_2_1_LOCATOR}    id=input_ddlOccupationType21
${ROOMOWNER_ADD_DDL_OCCUPATION_2_1_LOCATOR}    id=ddlOccupationType21
${ROOMOWNER_ADD_LBL_OCCUPATION_2_2_LOCATOR}    id=lblOccupationType22
${ROOMOWNER_ADD_LBL_OCCUPATION_2_2_PLACEHOLDER_LOCATOR}    css=#ddlOccupationType22 div[class="dx-placeholder"]
${ROOMOWNER_ADD_TXT_OCCUPATION_2_2_LOCATOR}    id=//*[@id="ddlOccupationType22"]/nz-select-top-control/nz-select-search/input
${ROOMOWNER_ADD_TXT_OCCUPATION_2_2_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlOccupationType22"]/div[2]/div/div
${ROOMOWNER_ADD_INPUT_OCCUPATION_2_2_LOCATOR}    id=input_ddlOccupationType22
${ROOMOWNER_ADD_DDL_OCCUPATION_2_2_LOCATOR}    id=ddlOccupationType22
${ROOMOWNER_ADD_LBL_OCCUPATION_3_1_LOCATOR}    id=lblOccupationType31
${ROOMOWNER_ADD_LBL_OCCUPATION_3_1_PLACEHOLDER_LOCATOR}    css=#ddlOccupationType31 div[class="dx-placeholder"]
${ROOMOWNER_ADD_TXT_OCCUPATION_3_1_LOCATOR}    id=//*[@id="ddlOccupationType31"]/nz-select-top-control/nz-select-search/input
${ROOMOWNER_ADD_TXT_OCCUPATION_3_1_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlOccupationType31"]/div[2]/div/div
${ROOMOWNER_ADD_INPUT_OCCUPATION_3_1_LOCATOR}    id=input_ddlOccupationType31
${ROOMOWNER_ADD_DDL_OCCUPATION_3_1_LOCATOR}    id=ddlOccupationType31
${ROOMOWNER_ADD_LBL_OCCUPATION_3_2_LOCATOR}    id=lblOccupationType32
${ROOMOWNER_ADD_LBL_OCCUPATION_3_2_PLACEHOLDER_LOCATOR}    css=#ddlOccupationType32 div[class="dx-placeholder"]
${ROOMOWNER_ADD_TXT_OCCUPATION_3_2_LOCATOR}    id=//*[@id="ddlOccupationType32"]/nz-select-top-control/nz-select-search/input
${ROOMOWNER_ADD_TXT_OCCUPATION_3_2_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlOccupationType32"]/div[2]/div/div
${ROOMOWNER_ADD_INPUT_OCCUPATION_3_2_LOCATOR}    id=input_ddlOccupationType32
${ROOMOWNER_ADD_DDL_OCCUPATION_3_2_LOCATOR}    id=ddlOccupationType32
${ROOMOWNER_ADD_DDL_OCCUPATION_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${ROOMOWNER_ADD_DDL_OCCUPATION_CLASS_LOCATOR}    css=#[id] div[class="dx-scrollable-wrapper"] div[class="dx-scrollable-container"] div[class="dx-scrollable-content"] div[class="dx-scrollview-content"] div[class="dx-item-content dx-list-item-content"]
${ROOMOWNER_ADD_DDL_OCCUPATION_CLASS_OTHER_LOCATOR}    css=div[class="dx-overlay-wrapper dx-dropdowneditor-overlay dx-popup-wrapper dx-dropdownlist-popup-wrapper dx-selectbox-popup-wrapper"] div[class="dx-overlay-content dx-popup-normal dx-resizable dx-dropdowneditor-overlay-flipped"] div[class="dx-popup-content"] div[class="dx-scrollable dx-scrollview dx-visibility-change-handler dx-scrollable-vertical dx-scrollable-simulated dx-list dx-widget dx-collection"] div[class="dx-scrollable-wrapper"] div[class="dx-scrollable-container"] div[class="dx-scrollable-content"] div[class="dx-scrollview-content"] div[class="dx-item dx-list-item"]  div[class="dx-item-content dx-list-item-content"]
#[กรอกอาชีพอื่นๆ]
${ROOMOWNER_ADD_TXT_OCCUPATION_OTHER_1_1_LOCATOR}    id=txtOccupationOtherType11
${ROOMOWNER_ADD_INPUT_OCCUPATION_OTHER_1_1_LOCATOR}    id=input_txtOccupationOtherType11
${ROOMOWNER_ADD_TXT_OCCUPATION_OTHER_1_2_LOCATOR}    id=txtOccupationOtherType12
${ROOMOWNER_ADD_INPUT_OCCUPATION_OTHER_1_2_LOCATOR}    id=input_txtOccupationOtherType12
${ROOMOWNER_ADD_TXT_OCCUPATION_OTHER_2_1_LOCATOR}    id=txtOccupationOtherType21
${ROOMOWNER_ADD_INPUT_OCCUPATION_OTHER_2_1_LOCATOR}    id=input_txtOccupationOtherType21
${ROOMOWNER_ADD_TXT_OCCUPATION_OTHER_2_2_LOCATOR}    id=txtOccupationOtherType22
${ROOMOWNER_ADD_INPUT_OCCUPATION_OTHER_2_2_LOCATOR}    id=input_txtOccupationOtherType22
${ROOMOWNER_ADD_TXT_OCCUPATION_OTHER_3_1_LOCATOR}    id=txtOccupationOtherType31
${ROOMOWNER_ADD_INPUT_OCCUPATION_OTHER_3_1_LOCATOR}    id=input_txtOccupationOtherType31
${ROOMOWNER_ADD_TXT_OCCUPATION_OTHER_3_2_LOCATOR}    id=txtOccupationOtherType32
${ROOMOWNER_ADD_INPUT_OCCUPATION_OTHER_3_2_LOCATOR}    id=input_txtOccupationOtherType32
#Salary (baht)
${ROOMOWNER_ADD_LBL_SALARY_TH}    รายได้ต่อเดือน(บาท)
${ROOMOWNER_ADD_LBL_SALARY_EN}    Salary (baht)
${ROOMOWNER_ADD_LBL_SALARY_1_1_LOCATOR}    id=lblSalaryType11
${ROOMOWNER_ADD_LBL_SALARY_1_1_PLACEHOLDER_LOCATOR}    css=#ddlSalaryType11 div[class="dx-placeholder"]
${ROOMOWNER_ADD_TXT_SALARY_1_1_LOCATOR}    id=//*[@id="ddlSalaryType11"]/nz-select-top-control/nz-select-search/input
${ROOMOWNER_ADD_TXT_SALARY_1_1_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlSalaryType11"]/div[2]/div/div
${ROOMOWNER_ADD_INPUT_SALARY_1_1_LOCATOR}    id=input_ddlSalaryType11
${ROOMOWNER_ADD_DDL_SALARY_1_1_LOCATOR}    id=ddlSalaryType11
${ROOMOWNER_ADD_LBL_SALARY_1_2_LOCATOR}    id=lblSalaryType12
${ROOMOWNER_ADD_LBL_SALARY_1_2_PLACEHOLDER_LOCATOR}    css=#ddlSalaryType12 div[class="dx-placeholder"]
${ROOMOWNER_ADD_TXT_SALARY_1_2_LOCATOR}    id=//*[@id="ddlSalaryType12"]/nz-select-top-control/nz-select-search/input
${ROOMOWNER_ADD_TXT_SALARY_1_2_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlSalaryType12"]/div[2]/div/div
${ROOMOWNER_ADD_INPUT_SALARY_1_2_LOCATOR}    id=input_ddlSalaryType12
${ROOMOWNER_ADD_DDL_SALARY_1_2_LOCATOR}    id=ddlSalaryType12
${ROOMOWNER_ADD_LBL_SALARY_2_1_LOCATOR}    id=lblSalaryType21
${ROOMOWNER_ADD_LBL_SALARY_2_1_PLACEHOLDER_LOCATOR}    css=#ddlSalaryType21 div[class="dx-placeholder"]
${ROOMOWNER_ADD_TXT_SALARY_2_1_LOCATOR}    id=//*[@id="ddlSalaryType21"]/nz-select-top-control/nz-select-search/input
${ROOMOWNER_ADD_TXT_SALARY_2_1_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlSalaryType21"]/div[2]/div/div
${ROOMOWNER_ADD_INPUT_SALARY_2_1_LOCATOR}    id=input_ddlSalaryType21
${ROOMOWNER_ADD_DDL_SALARY_2_1_LOCATOR}    id=ddlSalaryType21
${ROOMOWNER_ADD_LBL_SALARY_2_2_LOCATOR}    id=lblSalaryType22
${ROOMOWNER_ADD_LBL_SALARY_2_2_PLACEHOLDER_LOCATOR}    css=#ddlSalaryType22 div[class="dx-placeholder"]
${ROOMOWNER_ADD_TXT_SALARY_2_2_LOCATOR}    id=//*[@id="ddlSalaryType22"]/nz-select-top-control/nz-select-search/input
${ROOMOWNER_ADD_TXT_SALARY_2_2_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlSalaryType22"]/div[2]/div/div
${ROOMOWNER_ADD_INPUT_SALARY_2_2_LOCATOR}    id=input_ddlSalaryType22
${ROOMOWNER_ADD_DDL_SALARY_2_2_LOCATOR}    id=ddlSalaryType22
${ROOMOWNER_ADD_LBL_SALARY_3_1_LOCATOR}    id=lblSalaryType31
${ROOMOWNER_ADD_LBL_SALARY_3_1_PLACEHOLDER_LOCATOR}    css=#ddlSalaryType31 div[class="dx-placeholder"]
${ROOMOWNER_ADD_TXT_SALARY_3_1_LOCATOR}    id=//*[@id="ddlSalaryType31"]/nz-select-top-control/nz-select-search/input
${ROOMOWNER_ADD_TXT_SALARY_3_1_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlSalaryType31"]/div[2]/div/div
${ROOMOWNER_ADD_INPUT_SALARY_3_1_LOCATOR}    id=input_ddlSalaryType31
${ROOMOWNER_ADD_DDL_SALARY_3_1_LOCATOR}    id=ddlSalaryType31
${ROOMOWNER_ADD_LBL_SALARY_3_2_LOCATOR}    id=lblSalaryType32
${ROOMOWNER_ADD_LBL_SALARY_3_2_PLACEHOLDER_LOCATOR}    css=#ddlSalaryType32 div[class="dx-placeholder"]
${ROOMOWNER_ADD_TXT_SALARY_3_2_LOCATOR}    id=//*[@id="ddlSalaryType32"]/nz-select-top-control/nz-select-search/input
${ROOMOWNER_ADD_TXT_SALARY_3_2_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlSalaryType32"]/div[2]/div/div
${ROOMOWNER_ADD_INPUT_SALARY_3_2_LOCATOR}    id=input_ddlSalaryType32
${ROOMOWNER_ADD_DDL_SALARY_3_2_LOCATOR}    id=ddlSalaryType32
${ROOMOWNER_ADD_DDL_SALARY_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${ROOMOWNER_ADD_DDL_SALARY_CLASS_LOCATOR}    css=#[id] div[class="dx-scrollable-wrapper"] div[class="dx-scrollable-container"] div[class="dx-scrollable-content"] div[class="dx-scrollview-content"] div[class="dx-item-content dx-list-item-content"]
# @{ROOMOWNER_ADD_DDL_SALARY_TH_VALUE}    ต่ำกว่า 10,000 บาท    10,000 - 20,000 บาท    20,000 - 30,000 บาท    30,000 - 50,000 บาท    50,000 - 100,000 บาท    มากกว่า 100,000 บาท
# @{ROOMOWNER_ADD_DDL_SALARY_EN_VALUE}    Less than 10,000 Baht    10,000 - 20,000 Baht    20,000 - 30,000 Baht    30,000 - 50,000 Baht    50,000 - 100,000 Baht    More than 100,000 Baht

#Address
${ROOMOWNER_ADD_LBL_ADDRESS_TH}    ที่อยู่
${ROOMOWNER_ADD_LBL_ADDRESS_EN}    Address
${ROOMOWNER_ADD_LBL_ADDRESS_1_LOCATOR}    id=lblAddress1
${ROOMOWNER_ADD_TXT_ADDRESS_1_LOCATOR}    id=txtAddress1
${ROOMOWNER_ADD_INPUT_ADDRESS_1_LOCATOR}    id=input_txtAddress1
${ROOMOWNER_ADD_LBL_ADDRESS_2_LOCATOR}    id=lblAddress2
${ROOMOWNER_ADD_TXT_ADDRESS_2_LOCATOR}    id=txtAddress2
${ROOMOWNER_ADD_INPUT_ADDRESS_2_LOCATOR}    id=input_txtAddress2
############################ 
############## Add car ############## 
#Add car
${ROOMOWNER_ADD_BTN_ADDCAR_TH}    เพิ่มข้อมูลรถ
${ROOMOWNER_ADD_BTN_ADDCAR_EN}    Add car
${ROOMOWNER_ADD_BTN_ADDCAR_1_LOCATOR}    id=btnAddCar1
${ROOMOWNER_ADD_BTN_ADDCAR_2_LOCATOR}    id=btnAddCar2
#Delete car
${ROOMOWNER_ADD_BTN_DELETECAR_TH}    ลบข้อมูลรถ
${ROOMOWNER_ADD_BTN_DELETECAR_EN}    Delete car
${ROOMOWNER_ADD_BTN_DELETECAR_1_LOCATOR}    id=btnDeleteCar1
${ROOMOWNER_ADD_BTN_DELETECAR_2_LOCATOR}    id=btnDeleteCar2
#Car number: 1
${ROOMOWNER_ADD_LBL_CARNUMBER_1_TH}    รถคันที่ : 1
${ROOMOWNER_ADD_LBL_CARNUMBER_1_EN}    Car number : 1
${ROOMOWNER_ADD_LBL_CARNUMBER_1_1_LOCATOR}    id=lblCarNumber1_1
${ROOMOWNER_ADD_LBL_CARNUMBER_2_1_LOCATOR}    id=lblCarNumber2_1
#Car number: 2
${ROOMOWNER_ADD_LBL_CARNUMBER_2_TH}    รถคันที่ : 2
${ROOMOWNER_ADD_LBL_CARNUMBER_2_EN}    Car number : 2
${ROOMOWNER_ADD_LBL_CARNUMBER_1_2_LOCATOR}    id=lblCarNumber1_2
${ROOMOWNER_ADD_LBL_CARNUMBER_2_2_LOCATOR}    id=lblCarNumber2_2
#Car type
${ROOMOWNER_ADD_LBL_CARTYPE_TH}    ประเภทรถ
${ROOMOWNER_ADD_LBL_CARTYPE_EN}    Car type
${ROOMOWNER_ADD_LBL_CARTYPE_1_1_LOCATOR}    id=lblCarType1_1
${ROOMOWNER_ADD_LBL_CARTYPE_1_1_PLACEHOLDER_LOCATOR}    css=#ddlCarType1_1 div[class="dx-placeholder"]
${ROOMOWNER_ADD_TXT_CARTYPE_1_1_LOCATOR}    id=//*[@id="ddlCarType1_1"]/nz-select-top-control/nz-select-search/input
${ROOMOWNER_ADD_TXT_CARTYPE_1_1_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlCarType1_1"]/div[2]/div/div
${ROOMOWNER_ADD_INPUT_CARTYPE_1_1_LOCATOR}    id=input_ddlCarType1_1
${ROOMOWNER_ADD_DDL_CARTYPE_1_1_LOCATOR}    id=ddlCarType1_1
${ROOMOWNER_ADD_LBL_CARTYPE_1_2_LOCATOR}    id=lblCarType1_2
${ROOMOWNER_ADD_LBL_CARTYPE_1_2_PLACEHOLDER_LOCATOR}    css=#ddlCarType1_2 div[class="dx-placeholder"]
${ROOMOWNER_ADD_TXT_CARTYPE_1_2_LOCATOR}    id=//*[@id="ddlCarType1_2"]/nz-select-top-control/nz-select-search/input
${ROOMOWNER_ADD_TXT_CARTYPE_1_2_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlCarType1_2"]/div[2]/div/div
${ROOMOWNER_ADD_INPUT_CARTYPE_1_2_LOCATOR}    id=input_ddlCarType1_2
${ROOMOWNER_ADD_DDL_CARTYPE_1_2_LOCATOR}    id=ddlCarType1_2
${ROOMOWNER_ADD_LBL_CARTYPE_2_1_LOCATOR}    id=lblCarType2_1
${ROOMOWNER_ADD_LBL_CARTYPE_2_1_PLACEHOLDER_LOCATOR}    css=#ddlCarType2_1 div[class="dx-placeholder"]
${ROOMOWNER_ADD_TXT_CARTYPE_2_1_LOCATOR}    id=//*[@id="ddlCarType2_1"]/nz-select-top-control/nz-select-search/input
${ROOMOWNER_ADD_TXT_CARTYPE_2_1_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlCarType2_1"]/div[2]/div/div
${ROOMOWNER_ADD_INPUT_CARTYPE_2_1_LOCATOR}    id=input_ddlCarType2_1
${ROOMOWNER_ADD_DDL_CARTYPE_2_1_LOCATOR}    id=ddlCarType2_1
${ROOMOWNER_ADD_LBL_CARTYPE_2_2_LOCATOR}    id=lblCarType2_2
${ROOMOWNER_ADD_LBL_CARTYPE_2_2_PLACEHOLDER_LOCATOR}    css=#ddlCarType2_2 div[class="dx-placeholder"]
${ROOMOWNER_ADD_TXT_CARTYPE_2_2_LOCATOR}    id=//*[@id="ddlCarType2_2"]/nz-select-top-control/nz-select-search/input
${ROOMOWNER_ADD_TXT_CARTYPE_2_2_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlCarType2_2"]/div[2]/div/div
${ROOMOWNER_ADD_INPUT_CARTYPE_2_2_LOCATOR}    id=input_ddlCarType2_2
${ROOMOWNER_ADD_DDL_CARTYPE_2_2_LOCATOR}    id=ddlCarType2_2
${ROOMOWNER_ADD_DDL_CARTYPE_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${ROOMOWNER_ADD_DDL_CARTYPE_CLASS_LOCATOR}    css=#[id] div[class="dx-scrollable-wrapper"] div[class="dx-scrollable-container"] div[class="dx-scrollable-content"] div[class="dx-scrollview-content"] div[class="dx-item-content dx-list-item-content"]
# @{ROOMOWNER_ADD_DDL_CARTYPE_1_TH_VALUE}    รถยนต์    รถจักรยานยนต์
# @{ROOMOWNER_ADD_DDL_CARTYPE_1_EN_VALUE}    Car    Motorcycle
#Car plate number
${ROOMOWNER_ADD_LBL_CARPLATENUMBER_TH}    เลขทะเบียนรถ
${ROOMOWNER_ADD_LBL_CARPLATENUMBER_EN}    Car plate number
${ROOMOWNER_ADD_LBL_CARPLATENUMBER_1_1_LOCATOR}    id=lblCarplateNumber1_1
${ROOMOWNER_ADD_TXT_CARPLATENUMBER_1_1_LOCATOR}    id=txtCarplateNumber1_1
${ROOMOWNER_ADD_INPUT_CARPLATENUMBER_1_1_LOCATOR}    id=input_txtCarplateNumber1_1
${ROOMOWNER_ADD_LBL_CARPLATENUMBER_1_2_LOCATOR}    id=lblCarplateNumber1_2
${ROOMOWNER_ADD_TXT_CARPLATENUMBER_1_2_LOCATOR}    id=txtCarplateNumber1_2
${ROOMOWNER_ADD_INPUT_CARPLATENUMBER_1_2_LOCATOR}    id=input_txtCarplateNumber1_2
${ROOMOWNER_ADD_LBL_CARPLATENUMBER_2_1_LOCATOR}    id=lblCarplateNumber2_1
${ROOMOWNER_ADD_TXT_CARPLATENUMBER_2_1_LOCATOR}    id=txtCarplateNumber2_1
${ROOMOWNER_ADD_INPUT_CARPLATENUMBER_2_1_LOCATOR}    id=input_txtCarplateNumber2_1
${ROOMOWNER_ADD_LBL_CARPLATENUMBER_2_2_LOCATOR}    id=lblCarplateNumber2_2
${ROOMOWNER_ADD_TXT_CARPLATENUMBER_2_2_LOCATOR}    id=txtCarplateNumber2_2
${ROOMOWNER_ADD_INPUT_CARPLATENUMBER_2_2_LOCATOR}    id=input_txtCarplateNumber2_2
#Car sticker
${ROOMOWNER_ADD_LBL_CARSTICKER_TH}    สติ้กเกอร์รถ
${ROOMOWNER_ADD_LBL_CARSTICKER_EN}    Car sticker
${ROOMOWNER_ADD_LBL_CARSTICKER_1_1_LOCATOR}    id=lblCarSticker1_1
${ROOMOWNER_ADD_RDL_CARSTICKER_1_1_LOCATOR}    id=rdlCarSticker1_1
${ROOMOWNER_ADD_LBL_CARSTICKER_1_2_LOCATOR}    id=lblCarSticker1_2
${ROOMOWNER_ADD_RDL_CARSTICKER_1_2_LOCATOR}    id=rdlCarSticker1_2
${ROOMOWNER_ADD_LBL_CARSTICKER_2_1_LOCATOR}    id=lblCarSticker2_1
${ROOMOWNER_ADD_RDL_CARSTICKER_2_1_LOCATOR}    id=rdlCarSticker2_1
${ROOMOWNER_ADD_LBL_CARSTICKER_2_2_LOCATOR}    id=lblCarSticker2_2
${ROOMOWNER_ADD_RDL_CARSTICKER_2_2_LOCATOR}    id=rdlCarSticker2_2
#Sticker
${ROOMOWNER_ADD_LBL_CARSTICKER_STICKER_TH}    มีสติ้กเกอร์
${ROOMOWNER_ADD_LBL_CARSTICKER_STICKER_EN}    Sticker
${ROOMOWNER_ADD_LBL_CARSTICKER_STICKER_1_1_LOCATOR}    css=#rdlCarSticker1_1 div[class="dx-widget dx-collection"] div[class="dx-item dx-radiobutton"] div[class="dx-item-content"] 
${ROOMOWNER_ADD_RDL_CARSTICKER_STICKER_1_1_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[1]/div[1]/div
${ROOMOWNER_ADD_RDL_CARSTICKER_STICKER_1_1_CHECK_LOCATOR}    css=#rdlCarSticker1_1 div[class="dx-widget dx-collection"] div[class="dx-item dx-radiobutton"] 
${ROOMOWNER_ADD_LBL_CARSTICKER_STICKER_1_2_LOCATOR}    css=#rdlCarSticker1_2 div[class="dx-widget dx-collection"] div[class="dx-item dx-radiobutton"] div[class="dx-item-content"] 
${ROOMOWNER_ADD_RDL_CARSTICKER_STICKER_1_2_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[1]/div[1]/div
${ROOMOWNER_ADD_RDL_CARSTICKER_STICKER_1_2_CHECK_LOCATOR}    css=#rdlCarSticker1_2 div[class="dx-widget dx-collection"] div[class="dx-item dx-radiobutton"] 
${ROOMOWNER_ADD_LBL_CARSTICKER_STICKER_2_1_LOCATOR}    css=#rdlCarSticker2_1 div[class="dx-widget dx-collection"] div[class="dx-item dx-radiobutton"] div[class="dx-item-content"] 
${ROOMOWNER_ADD_RDL_CARSTICKER_STICKER_2_1_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[1]/div[1]/div
${ROOMOWNER_ADD_RDL_CARSTICKER_STICKER_2_1_CHECK_LOCATOR}    css=#rdlCarSticker2_1 div[class="dx-widget dx-collection"] div[class="dx-item dx-radiobutton"] 
${ROOMOWNER_ADD_LBL_CARSTICKER_STICKER_2_2_LOCATOR}    css=#rdlCarSticker2_2 div[class="dx-widget dx-collection"] div[class="dx-item dx-radiobutton"] div[class="dx-item-content"] 
${ROOMOWNER_ADD_RDL_CARSTICKER_STICKER_2_2_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[1]/div[1]/div
${ROOMOWNER_ADD_RDL_CARSTICKER_STICKER_2_2_CHECK_LOCATOR}    css=#rdlCarSticker2_2 div[class="dx-widget dx-collection"] div[class="dx-item dx-radiobutton"] 
#No sticker
${ROOMOWNER_ADD_LBL_CARSTICKER_NOSTICKER_TH}    ไม่มีสติ้กเกอร์ 
${ROOMOWNER_ADD_LBL_CARSTICKER_NOSTICKER_EN}    No sticker
${ROOMOWNER_ADD_LBL_CARSTICKER_NOSTICKER_1_1_LOCATOR}    css=#rdlCarSticker1_1 div[class="dx-widget dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"] div[class="dx-item-content"]
${ROOMOWNER_ADD_RDL_CARSTICKER_NOSTICKER_1_1_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[2]/div[1]/div
${ROOMOWNER_ADD_RDL_CARSTICKER_NOSTICKER_1_1_CHECK_LOCATOR}    css=#rdlCarSticker1_1 div[class="dx-widget dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"]
${ROOMOWNER_ADD_LBL_CARSTICKER_NOSTICKER_1_2_LOCATOR}    css=#rdlCarSticker1_2 div[class="dx-widget dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"] div[class="dx-item-content"]
${ROOMOWNER_ADD_RDL_CARSTICKER_NOSTICKER_1_2_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[2]/div[1]/div
${ROOMOWNER_ADD_RDL_CARSTICKER_NOSTICKER_1_2_CHECK_LOCATOR}    css=#rdlCarSticker1_2 div[class="dx-widget dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"]
${ROOMOWNER_ADD_LBL_CARSTICKER_NOSTICKER_2_1_LOCATOR}    css=#rdlCarSticker2_1 div[class="dx-widget dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"] div[class="dx-item-content"]
${ROOMOWNER_ADD_RDL_CARSTICKER_NOSTICKER_2_1_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[2]/div[1]/div
${ROOMOWNER_ADD_RDL_CARSTICKER_NOSTICKER_2_1_CHECK_LOCATOR}    css=#rdlCarSticker2_1 div[class="dx-widget dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"]
${ROOMOWNER_ADD_LBL_CARSTICKER_NOSTICKER_2_2_LOCATOR}    css=#rdlCarSticker2_2 div[class="dx-widget dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"] div[class="dx-item-content"]
${ROOMOWNER_ADD_RDL_CARSTICKER_NOSTICKER_2_2_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[2]/div[1]/div
${ROOMOWNER_ADD_RDL_CARSTICKER_NOSTICKER_2_2_CHECK_LOCATOR}    css=#rdlCarSticker2_2 div[class="dx-widget dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"]

############## Add guest ############## 
#Add guest
${ROOMOWNER_ADD_BTN_ADDGUEST_TH}    เพิ่มรายชื่อผู้เข้าพัก
${ROOMOWNER_ADD_BTN_ADDGUEST_EN}    Add guest
${ROOMOWNER_ADD_BTN_ADDGUEST_LOCATOR}    id=btnAddGuest
#icon delete guest
${ROOMOWNER_ADD_ICON_DELETEGUEST_LOCATOR}    id=btndelete2
############################ 
#Attach other documents
${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENTS_TH}    แนบเอกสารอื่นๆ
${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENTS_EN}    Attach other documents
${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENT_LOCATOR}    id=lblAttachDocument
${ROOMOWNER_ADD_BTN_ATTACHOTHERDOCUMENT_LOCATOR}    id=btnUploadFile
${ROOMOWNER_ADD_INPUT_ATTACHOTHERDOCUMENT_LOCATOR}    id=input_btnUploadFile
${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENT_NAMEFILE_LOCATOR}    id=lblNameFile1
${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENT_VALID_LOCATOR}    id=lblErrorUploadFile21
${ROOMOWNER_ADD_ICON_ATTACHOTHERDOCUMENT_DELETE_ERROR_LOCATOR}    id=iconDeleteFileError1
${ROOMOWNER_ADD_ICON_ATTACHOTHERDOCUMENT_DELETE_LOCATOR}    id=iconDeleteFile1

# - You can upload .pdf .csv .xlx .xlxs .jpg .png files. .doc .docx only - File size not more than 1 MB.
${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENTS_NOTE_TH}    - สามารถอัพโหลดไฟล์ .pdf .csv .xlx .xlxs .jpg .png .doc .docx เท่านั้น - ขนาดไฟล์ไม่เกิน 1 MB
${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENTS_NOTE_EN}    - You can upload .pdf .csv .xlx .xlxs .jpg .png files. .doc .docx only - File size not more than 1 MB.
${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENT_NOTE_LOCATOR}    id=lblWaringUploadFile
${ROOMOWNER_ADD_ICON_ATTACHOTHERDOCUMENT_NOTE_LOCATOR}    id=iconAttachDocument

# ${ROOMOWNER_ADD_LBL_ATTACHOTHERDOCUMENT_NAME_LOCATOR}    id=iconDeleteFile1

############################ 
############## Transfer detail ############## 
#Transfer detail
${ROOMOWNER_ADD_LBL_TRANSFERDETAIL_TH}    ข้อมูลการโอน 
${ROOMOWNER_ADD_LBL_TRANSFERDETAIL_EN}    Transfer detail
${ROOMOWNER_ADD_LBL_TRANSFERDETAIL_LOCATOR}    id=TransferDetail
#Transfer date
${ROOMOWNER_ADD_LBL_TRANSFERDATE_TH}    วันที่โอน
${ROOMOWNER_ADD_LBL_TRANSFERDATE_EN}    Transfer date
${ROOMOWNER_ADD_LBL_TRANSFERDATE_LOCATOR}    id=lblDateTransferdate
${ROOMOWNER_ADD_DATE_TRANSFERDATE_LOCATOR}    id=dateTransferdate
${ROOMOWNER_ADD_DATE_TRANSFERDATE_INPUT_LOCATOR}    id=input_dateTransferdate
#${ROOMOWNER_ADD_DATE_TRANSFERDATE_VALID_LOCATOR}    id=lblDateTransferdateValid
${ROOMOWNER_ADD_DATE_TRANSFERDATE_BUTTON_LOCATOR}    xpath=//*[@id="dateTransferdate"]/div[1]/div/div[2]/div[2]/div/div
#${ROOMOWNER_ADD_DATE_TRANSFERDATE_VALUE_DATE}    2020/11/01
${ROOMOWNER_ADD_DATE_TRANSFERDATE_FORMAT_DATE}    yyyy/mm/dd
${ROOMOWNER_ADD_DATE_TRANSFERDATE_SEPARATOR_DATE}    /
#Arrival date
${ROOMOWNER_ADD_LBL_ARRIVALDATE_TH}    วันที่เข้าอยู่
${ROOMOWNER_ADD_LBL_ARRIVALDATE_EN}    Arrival date
${ROOMOWNER_ADD_LBL_ARRIVALDATE_LOCATOR}    id=lblArrivalDate
${ROOMOWNER_ADD_DATE_ARRIVALDATE_LOCATOR}    id=dateArrivaldate
${ROOMOWNER_ADD_DATE_ARRIVALDATE_INPUT_LOCATOR}    id=input_dateArrivaldate
#${ROOMOWNER_ADD_DATE_ARRIVALDATE_VALID_LOCATOR}    id=lblArrivalDateValid
${ROOMOWNER_ADD_DATE_ARRIVALDATE_BUTTON_LOCATOR}    xpath=//*[@id="dateArrivaldate"]/div[1]/div/div[2]/div[2]/div/div
#${ROOMOWNER_ADD_DATE_ARRIVALDATE_VALUE_DATE}    2020/11/01
${ROOMOWNER_ADD_DATE_ARRIVALDATE_FORMAT_DATE}    yyyy/mm/dd
${ROOMOWNER_ADD_DATE_ARRIVALDATE_SEPARATOR_DATE}    /
#Appointment date
${ROOMOWNER_ADD_LBL_APPOINTMENTDATE_TH}    วันที่นัดรับมอบ
${ROOMOWNER_ADD_LBL_APPOINTMENTDATE_EN}    Appointment date
${ROOMOWNER_ADD_LBL_APPOINTMENTDATE_LOCATOR}    id=lblAppointmentDate
${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_LOCATOR}    id=dateAppointmentdate
${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_INPUT_LOCATOR}    id=input_dateAppointmentdate
#${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_VALID_LOCATOR}    id=lblAppointmentDateValid
${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_BUTTON_LOCATOR}    xpath=//*[@id="dateAppointmentdate"]/div[1]/div/div[2]/div[2]/div/div
#${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_VALUE_DATE}    2020/11/01
${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_FORMAT_DATE}    yyyy/mm/dd
${ROOMOWNER_ADD_DATE_APPOINTMENTDATE_SEPARATOR_DATE}    /
#Accept date
${ROOMOWNER_ADD_LBL_ACCEPTDATE_TH}    วันที่รับมอบ
${ROOMOWNER_ADD_LBL_ACCEPTDATE_EN}    Accept date
${ROOMOWNER_ADD_LBL_ACCEPTDATE_LOCATOR}    id=lblAcceptDate
${ROOMOWNER_ADD_DATE_ACCEPTDATE_LOCATOR}    id=dateAcceptdate
${ROOMOWNER_ADD_DATE_ACCEPTDATE_INPUT_LOCATOR}    id=input_dateAcceptdate
#${ROOMOWNER_ADD_DATE_ACCEPTDATE_VALID_LOCATOR}    id=lblAcceptDateValid
${ROOMOWNER_ADD_DATE_ACCEPTDATE_BUTTON_LOCATOR}    xpath=//*[@id="dateAcceptdate"]/div[1]/div/div[2]/div[2]/div/div
#${ROOMOWNER_ADD_DATE_ACCEPTDATE_VALUE_DATE}    2020/11/01
${ROOMOWNER_ADD_DATE_ACCEPTDATE_FORMAT_DATE}    yyyy/mm/dd
${ROOMOWNER_ADD_DATE_ACCEPTDATE_SEPARATOR_DATE}    /
#Warranty end date
${ROOMOWNER_ADD_LBL_WARRANTYENDDATE_TH}    วันที่สิ้นสุดรับประกัน
${ROOMOWNER_ADD_LBL_WARRANTYENDDATE_EN}    Warranty end date
${ROOMOWNER_ADD_LBL_WARRANTYENDDATE_LOCATOR}    id=lblWarrantyEndDate
${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_LOCATOR}    id=dateWarrantyEndDate
${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_INPUT_LOCATOR}    id=input_dateWarrantyEndDate
#${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_VALID_LOCATOR}    id=lblIdentificationExpireValid1
${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_BUTTON_LOCATOR}    xpath=//*[@id="dateWarrantyEndDate"]/div[1]/div/div[2]/div[2]/div/div
#${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_VALUE_DATE}    2020/11/01
${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_FORMAT_DATE}    yyyy/mm/dd
${ROOMOWNER_ADD_DATE_WARRANTYENDDATE_SEPARATOR_DATE}    /
#Manage type
${ROOMOWNER_ADD_LBL_MANAGETYPE_TH}    ประเภทการพักอาศัย
${ROOMOWNER_ADD_LBL_MANAGETYPE_EN}    Manage type
${ROOMOWNER_ADD_LBL_MANAGETYPE_LOCATOR}    id=lblManageType
${ROOMOWNER_ADD_LBL_MANAGETYPE_PLACEHOLDER_LOCATOR}    css=#ddlManageType div[class="dx-placeholder"]
${ROOMOWNER_ADD_TXT_MANAGETYPE_LOCATOR}    id=//*[@id="ddlManageType"]/nz-select-top-control/nz-select-search/input
${ROOMOWNER_ADD_TXT_MANAGETYPE_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlManageType"]/div[2]/div/div
${ROOMOWNER_ADD_INPUT_MANAGETYPE_LOCATOR}    id=input_ddlManageType
${ROOMOWNER_ADD_DDL_MANAGETYPE_LOCATOR}    id=ddlManageType
${ROOMOWNER_ADD_DDL_MANAGETYPE_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${ROOMOWNER_ADD_DDL_MANAGETYPE_CLASS_LOCATOR}    css=#[id] div[class="dx-scrollable-wrapper"] div[class="dx-scrollable-container"] div[class="dx-scrollable-content"] div[class="dx-scrollview-content"] div[class="dx-item-content dx-list-item-content"]
#Language of documents
${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_TH}    รูปแบบภาษาของเอกสาร
${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_EN}    Language of documents
${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_LOCATOR}    id=lblLanguageOfDocuments
${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_PLACEHOLDER_LOCATOR}    css=#ddlLanguageOfDocuments div[class="dx-placeholder"]
${ROOMOWNER_ADD_TXT_LANGUAGEOFDOCUMENTS_LOCATOR}    id=//*[@id="ddlLanguageOfDocuments"]/nz-select-top-control/nz-select-search/input
${ROOMOWNER_ADD_TXT_LANGUAGEOFDOCUMENTS_PLEASEINPUTDATA_LOCATOR}    xpath=//*[@id="ddlLanguageOfDocuments"]/div[2]/div/div
${ROOMOWNER_ADD_INPUT_LANGUAGEOFDOCUMENTS_LOCATOR}    id=input_ddlLanguageOfDocuments
${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LOCATOR}    id=ddlLanguageOfDocuments
${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_LIST_LOCATOR}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[replace_indexList]/div
${ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_CLASS_LOCATOR}    css=#[id] div[class="dx-scrollable-wrapper"] div[class="dx-scrollable-container"] div[class="dx-scrollable-content"] div[class="dx-scrollview-content"] div[class="dx-item-content dx-list-item-content"]
# @{ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_TH_VALUE}    ภาษาไทย    ภาษาอังกฤษ
# @{ROOMOWNER_ADD_DDL_LANGUAGEOFDOCUMENTS_EN_VALUE}    Thai    English

#All document of this room will be a selected language.
${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_NOTE_TH}    การพิมพ์เอกสารทั้งหมดของห้องนี้จะเป็นภาษาที่เลือก เช่น ใบแจ้งหนี้
${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_NOTE_EN}    All document of this room will be a selected language.
${ROOMOWNER_ADD_LBL_LANGUAGEOFDOCUMENTS_NOTE_LOCATOR}    id=lblInfoLanguage
${ROOMOWNER_ADD_ICON_LANGUAGEOFDOCUMENTS_NOTE_LOCATOR}    id=iconInfoLanguageOfDocuments

#Address (for invoicing, receipt)
${ROOMOWNER_ADD_LBL_ADDRESS_FORINVOICINGRECEIPT_TH}    ที่อยู่สำหรับออกใบแจ้งหนี้ / ใบเสร็จ
${ROOMOWNER_ADD_LBL_ADDRESS_FORINVOICINGRECEIPT_EN}    Address (for invoicing, receipt)
${ROOMOWNER_ADD_LBL_ADDRESS_FORINVOICINGRECEIPT_LOCATOR}    id=lblAddressForIV
${ROOMOWNER_ADD_TXT_ADDRESS_FORINVOICINGRECEIPT_LOCATOR}    id=txtAddressForIV
${ROOMOWNER_ADD_INPUT_ADDRESS_FORINVOICINGRECEIPT_LOCATOR}    id=input_txtAddressForIV
#Electric start unit *
${ROOMOWNER_ADD_LBL_ELECTRICSTARTUNIT_TH}    หน่วยไฟเริ่มต้น
${ROOMOWNER_ADD_LBL_ELECTRICSTARTUNIT_EN}    Electric start unit
${ROOMOWNER_ADD_LBL_ELECTRICSTARTUNIT_LOCATOR}    id=lblElectricStarterUnit
${ROOMOWNER_ADD_TXT_ELECTRICSTARTUNIT_LOCATOR}    id=txtElectricStarterUnit
${ROOMOWNER_ADD_INPUT_ELECTRICSTARTUNIT_LOCATOR}    id=input_txtElectricStarterUnit
${ROOMOWNER_ADD_LBL_ELECTRICSTARTUNIT_UNIT_LOCATOR}    id=lblElectricUnit
#Water start unit *
${ROOMOWNER_ADD_LBL_WATERSTARTUNIT_TH}    หน่วยน้ำเริ่มต้น
${ROOMOWNER_ADD_LBL_WATERSTARTUNIT_EN}    Water start unit
${ROOMOWNER_ADD_LBL_WATERSTARTUNIT_LOCATOR}    id=lblWaterStarterUnit
${ROOMOWNER_ADD_TXT_WATERSTARTUNIT_LOCATOR}    id=txtWaterStarterUnit
${ROOMOWNER_ADD_INPUT_WATERSTARTUNIT_LOCATOR}    id=input_txtWaterStarterUnit
${ROOMOWNER_ADD_LBL_WATERSTARTUNIT_UNIT_LOCATOR}    id=lblWaterUnit
############################ 
############## Asset list ############## 
#Asset list
${ROOMOWNER_ADD_LBL_ASSETLIST_TH}    รายการส่งมอบอุปกรณ์
${ROOMOWNER_ADD_LBL_ASSETLIST_EN}    Asset list
${ROOMOWNER_ADD_LBL_ASSETLIST_LOCATOR}    id=lblAssetList
#List
${ROOMOWNER_ADD_LBL_ASSETLIST_LIST_TH}    รายการ
${ROOMOWNER_ADD_LBL_ASSETLIST_LIST_EN}    List
${ROOMOWNER_ADD_LBL_ASSETLIST_LIST_LOCATOR}    id=lblList
${ROOMOWNER_ADD_LBD_ASSETLIST_LIST_LOCATOR}    id=lbdAssetName[index]
#Usage status
${ROOMOWNER_ADD_LBL_ASSETLIST_USAGESTATUS_TH}    สถานะการใช้งาน
${ROOMOWNER_ADD_LBL_ASSETLIST_USAGESTATUS_EN}    Usage status
${ROOMOWNER_ADD_LBL_ASSETLIST_USAGESTATUS_LOCATOR}    id=UsageStatus
${ROOMOWNER_ADD_RDL_ASSETLIST_USAGESTATUS_LOCATOR}    id=rdlContractCheckRooms[index]
#Received
# ${ROOMOWNER_ADD_LBL_ASSETLIST_USAGESTATUS_RECEIVED_TH}    ได้รับ
# ${ROOMOWNER_ADD_LBL_ASSETLIST_USAGESTATUS_RECEIVED_EN}    Received
# ${ROOMOWNER_ADD_LBL_ASSETLIST_USAGESTATUS_RECEIVED_LOCATOR}    css=#rdlContractCheckRooms[index] div[class="dx-widget dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"] div[class="dx-item-content"]
${ROOMOWNER_ADD_LBL_ASSETLIST_USAGESTATUS_RECEIVED_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/app-create-transfer/div/form/div/div[4]/div[10]/div[index]/div[2]/dx-radio-group/div/div[1]/div[2]
${ROOMOWNER_ADD_RDL_ASSETLIST_USAGESTATUS_RECEIVED_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[1]/div[1]/div
${ROOMOWNER_ADD_RDL_ASSETLIST_USAGESTATUS_RECEIVED_CHECK_LOCATOR}    css=div[class="dx-widget dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"] 
#Not received
# ${ROOMOWNER_ADD_LBL_ASSETLIST_USAGESTATUS_NOTRECEIVED_TH}    ไม่ได้รับ 
# ${ROOMOWNER_ADD_LBL_ASSETLIST_ASSETLIST_USAGESTATUS_NOTRECEIVED_EN}    Not received
# ${ROOMOWNER_ADD_LBL_ASSETLIST_USAGESTATUS_NOTRECEIVED_LOCATOR}    css=#rdlContractCheckRooms[index] div[class="dx-widget dx-collection"] div[class="dx-item dx-radiobutton"] div[class="dx-item-content"] 
${ROOMOWNER_ADD_LBL_ASSETLIST_USAGESTATUS_NOTRECEIVED_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/app-create-transfer/div/form/div/div[4]/div[10]/div[index]/div[2]/dx-radio-group/div/div[2]/div[2]
${ROOMOWNER_ADD_RDL_ASSETLIST_USAGESTATUS_NOTRECEIVED_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[2]/div[1]/div
${ROOMOWNER_ADD_RDL_ASSETLIST_USAGESTATUS_NOTRECEIVED_CHECK_LOCATOR}    css=#rdlContractCheckRooms[index] div[class="dx-widget dx-collection"] div[class="dx-item dx-radiobutton"] 
#Remark
${ROOMOWNER_ADD_LBL_ASSETLIST_REMARK_TH}    หมายเหตุ
${ROOMOWNER_ADD_LBL_ASSETLIST_REMARK_EN}    Remark
${ROOMOWNER_ADD_LBL_ASSETLIST_REMARK_LOCATOR}    id=lblRemark
${ROOMOWNER_ADD_TXT_ASSETLIST_REMARK_LOCATOR}    id=txtRemark[index]
${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_LOCATOR}    id=input_txtRemark[index]
${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_1_LOCATOR}    id=input_txtRemark1
${ROOMOWNER_ADD_INPUT_ASSETLIST_REMARK_2_LOCATOR}    id=input_txtRemark2
############################ 

#Cancel
${ROOMOWNER_ADDEDIT_BTN_CANCEL_TH}    ยกเลิก
${ROOMOWNER_ADDEDIT_BTN_CANCEL_EN}    Cancel
${ROOMOWNER_ADDEDIT_BTN_CANCEL_LOCATOR}    id=btnCancel
#Save
${ROOMOWNER_ADDEDIT_BTN_SAVE_TH}    บันทึก
${ROOMOWNER_ADDEDIT_BTN_SAVE_EN}    Save
${ROOMOWNER_ADDEDIT_BTN_SAVE_LOCATOR}    id=btnSave
############################ 

############## Profile ############## 
#Profile
${ROOMOWNER_ADD_LBL_PROFILE_TH}    ประวัติเจ้าของห้อง
${ROOMOWNER_ADD_LBL_PROFILE_EN}    Profile
${ROOMOWNER_ADD_LBL_PROFILE_LOCATOR}    id=lblProfile
#Identification No./Passport No.
${ROOMOWNER_ADD_LBL_PROFILE_IDENTIFICATIONNOPASSPORTNUMBER_TH}    หมายเลขบัตรประชาชน/หมายเลขหนังสือเดินทาง
${ROOMOWNER_ADD_LBL_PROFILE_IDENTIFICATIONNOPASSPORTNUMBER_EN}    Identification No./Passport No.
${ROOMOWNER_ADD_LBL_PROFILE_IDENTIFICATIONNOPASSPORTNUMBER_LOCATOR}    id=lblHistoryIdentification
${ROOMOWNER_ADD_TXT_PROFILE_IDENTIFICATIONNOPASSPORTNUMBER_LOCATOR}    id=txtHistoryIdentification
# ปรเภทบคคลธรรมดา
#Title
${ROOMOWNER_ADD_LBL_PROFILE_TITLE_TH}    คำนำหน้า
${ROOMOWNER_ADD_LBL_PROFILE_TITLE_EN}    Title
${ROOMOWNER_ADD_LBL_PROFILE_TITLE_LOCATOR}    id=lblHistoryTitle
${ROOMOWNER_ADD_TXT_PROFILE_TITLE_LOCATOR}    id=txtHistoryTitle
#First name 
${ROOMOWNER_ADD_LBL_PROFILE_FIRSTNAME_TH}    ชื่อ
${ROOMOWNER_ADD_LBL_PROFILE_FIRSTNAME_EN}    First name 
${ROOMOWNER_ADD_LBL_PROFILE_FIRSTNAME_LOCATOR}    id=lblHistoryFirstName
${ROOMOWNER_ADD_TXT_PROFILE_FIRSTNAME_LOCATOR}    id=txtHistoryFirstName
#Last name
${ROOMOWNER_ADD_LBL_PROFILE_LASTNAME_TH}    นามสกุล
${ROOMOWNER_ADD_LBL_PROFILE_LASTNAME_EN}    Last name
${ROOMOWNER_ADD_LBL_PROFILE_LASTNAME_LOCATOR}    id=lblHistoryLastName
${ROOMOWNER_ADD_TXT_PROFILE_LASTNAME_LOCATOR}    id=txtHistoryLastName
# สำหรับนิติบุคคล
#Tax identification number
${ROOMOWNER_ADD_LBL_PROFILE_TAXIDENTIICATIONNUMBER_TH}    เลขประจำตัวผู้เสียภาษี
${ROOMOWNER_ADD_LBL_PROFILE_TAXIDENTIICATIONNUMBER_EN}    Tax identification number
${ROOMOWNER_ADD_LBL_PROFILE_TAXIDENTIICATIONNUMBER_LOCATOR}    id=lblHistoryTaxId
${ROOMOWNER_ADD_TXT_PROFILE_TAXIDENTIICATIONNUMBER_LOCATOR}    id=txtHistoryTaxId
#Juristic id
${ROOMOWNER_ADD_LBL_PROFILE_JURISTICID_TH}    เลขทะเบียนบริษัท
${ROOMOWNER_ADD_LBL_PROFILE_JURISTICID_EN}    Juristic id
${ROOMOWNER_ADD_LBL_PROFILE_JURISTICID_LOCATOR}    id=lblHistoryJuristicId
${ROOMOWNER_ADD_TXT_PROFILE_JURISTICID_LOCATOR}    id=txtHistoryJuristicId
#Company name
${ROOMOWNER_ADD_LBL_PROFILE_COMPANYNAME_TH}    ชื่อบริษัท
${ROOMOWNER_ADD_LBL_PROFILE_COMPANYNAME_EN}    Company name
${ROOMOWNER_ADD_LBL_PROFILE_COMPANYNAME_LOCATOR}    id=lblHistoryCompanyName
${ROOMOWNER_ADD_TXT_PROFILE_COMPANYNAME_LOCATOR}    id=txtHistoryCompanyName
#Short name 
${ROOMOWNER_ADD_LBL_PROFILE_SHORTNAME_TH}    ชื่อย่อ
${ROOMOWNER_ADD_LBL_PROFILE_SHORTNAME_EN}    Short name
${ROOMOWNER_ADD_LBL_PROFILE_SHORTNAME_LOCATOR}    id=lblHistoryShortName
${ROOMOWNER_ADD_TXT_PROFILE_SHORTNAME_LOCATOR}    id=txtHistoryShortName

############## Transfer history ############## 
${ROOMOWNER_ADD_LBL_PROFILE_TRANSFERHISTORY_TH}    ประวัติการโอนห้อง
${ROOMOWNER_ADD_LBL_PROFILE_TRANSFERHISTORY_EN}    Transfer history
${ROOMOWNER_ADD_LBL_PROFILE_TRANSFERHISTORY_LOCATOR}    id=lblTransferHistory
#Property :
${ROOMOWNER_ADD_LBL_PROFILE_PROPERTY_TH}    โครงการ :
${ROOMOWNER_ADD_LBL_PROFILE_PROPERTY_EN}    Property :
${ROOMOWNER_ADD_LBL_PROFILE_PROPERTY_LOCATOR}    id=lblHistoryProperty1,1
${ROOMOWNER_ADD_LBD_PROFILE_PROPERTY_LOCATOR}    id=lbdHistoryProperty1,1
#Building:
${ROOMOWNER_ADD_LBL_PROFILE_BUILDING_TH}    อาคาร :
${ROOMOWNER_ADD_LBL_PROFILE_BUILDING_EN}    Building :
${ROOMOWNER_ADD_LBL_PROFILE_BUILDING_LOCATOR}    id=lblHistoryBuilding1,1
${ROOMOWNER_ADD_LBD_PROFILE_BUILDING_LOCATOR}    id=lbdHistoryBuilding1,1
#Room:
${ROOMOWNER_ADD_LBL_PROFILE_ROOM_TH}    ห้อง :
${ROOMOWNER_ADD_LBL_PROFILE_ROOM_EN}    Room :
${ROOMOWNER_ADD_LBL_PROFILE_ROOM_LOCATOR}    id=lblHistoryRoomNo1,1
${ROOMOWNER_ADD_LBD_PROFILE_ROOM_LOCATOR}    id=lbdHistoryRoomNo1,1
#Transfer date
${ROOMOWNER_ADD_LBL_PROFILE_TRANSFERDATE_TH}    วันที่โอน :
${ROOMOWNER_ADD_LBL_PROFILE_TRANSFERDATE_EN}    Transfer date :
${ROOMOWNER_ADD_LBL_PROFILE_TRANSFERDATE_LOCATOR}    id=lblHistoryTransferDate1,1
${ROOMOWNER_ADD_LBD_PROFILE_TRANSFERDATE_LOCATOR}    id=lbdHistoryTransferDate1,1
#Arrival date
${ROOMOWNER_ADD_LBL_PROFILE_ARRIVALDATE_TH}    วันที่เข้าอยู่ :
${ROOMOWNER_ADD_LBL_PROFILE_ARRIVALDATE_EN}    Arrival date :
${ROOMOWNER_ADD_LBL_PROFILE_ARRIVALDATE_LOCATOR}    id=lblHistoryArrivalDate1,1
${ROOMOWNER_ADD_LBD_PROFILE_ARRIVALDATE_LOCATOR}    id=lbdHistoryArrivalDate1,1
#Appointment date
${ROOMOWNER_ADD_LBL_PROFILE_APPOINTMENTDATE_TH}    วันที่นัดรับมอบ :
${ROOMOWNER_ADD_LBL_PROFILE_APPOINTMENTDATE_EN}    Appointment date :
${ROOMOWNER_ADD_LBL_PROFILE_APPOINTMENTDATE_LOCATOR}    id=lblHistoryAppointmentDate1,1
${ROOMOWNER_ADD_LBD_PROFILE_APPOINTMENTDATE_LOCATOR}    id=lbdHistoryAppointmentDate1,1
#Accept date
${ROOMOWNER_ADD_LBL_PROFILE_ACCEPTDATE_TH}    วันที่รับมอบ :
${ROOMOWNER_ADD_LBL_PROFILE_ACCEPTDATE_EN}    Accept date :
${ROOMOWNER_ADD_LBL_PROFILE_ACCEPTDATE_LOCATOR}    id=lblHistoryAcceptDate1,1
${ROOMOWNER_ADD_LBD_PROFILE_ACCEPTDATE_LOCATOR}    id=lbdHistoryAcceptDate1,1
#Warranty end date
${ROOMOWNER_ADD_LBL_PROFILE_WARRANTYENDDATE_TH}    วันที่สิ้นสุดรับประกัน :
${ROOMOWNER_ADD_LBL_PROFILE_WARRANTYENDDATE_EN}    Warranty end date :
${ROOMOWNER_ADD_LBL_PROFILE_WARRANTYENDDATE_LOCATOR}    id=lblHistoryWarrantyEndDate1,1
${ROOMOWNER_ADD_LBD_PROFILE_WARRANTYENDDATE_LOCATOR}    id=lbdHistoryWarrantyEndDate1,1

############## Value ############## 
# ปรเภทบคคลธรรมดา
#Property :
${ROOMOWNER_ADD_LBD_PROFILE_PROPERTY_TH}    SmartRmsCondoอาคาร
${ROOMOWNER_ADD_LBD_PROFILE_PROPERTY_EN}    
#Building:
${ROOMOWNER_ADD_LBD_PROFILE_BUILDING_TH}    A1 เรสซิเดนซ์ห้อง
${ROOMOWNER_ADD_LBD_PROFILE_BUILDING_EN}    
#Room:
${ROOMOWNER_ADD_LBD_PROFILE_ROOM_TH}    B201
${ROOMOWNER_ADD_LBD_PROFILE_ROOM_EN}    B201
#Transfer date
${ROOMOWNER_ADD_LBD_PROFILE_TRANSFERDATE_TH}    24 ธ.ค. 2021
${ROOMOWNER_ADD_LBD_PROFILE_TRANSFERDATE_EN}    24 Dec 2021
#Arrival date
${ROOMOWNER_ADD_LBD_PROFILE_ARRIVALDATE_TH}    24 ธ.ค. 2021
${ROOMOWNER_ADD_LBD_PROFILE_ARRIVALDATE_EN}    24 Dec 2021
#Appointment date
${ROOMOWNER_ADD_LBD_PROFILE_APPOINTMENTDATE_TH}    24 ธ.ค. 2021
${ROOMOWNER_ADD_LBD_PROFILE_APPOINTMENTDATE_EN}    24 Dec 2021
#Accept date
${ROOMOWNER_ADD_LBD_PROFILE_ACCEPTDATE_TH}    24 ธ.ค. 2021
${ROOMOWNER_ADD_LBD_PROFILE_ACCEPTDATE_EN}    24 Dec 2021
#Warranty end date
${ROOMOWNER_ADD_LBD_PROFILE_WARRANTYENDDATE_TH}    24 ธ.ค. 2021
${ROOMOWNER_ADD_LBD_PROFILE_WARRANTYENDDATE_EN}    24 Dec 2021
# สำหรับนิติบุคคล
#Property :
${ROOMOWNER_ADD_LBD_PROFILE_PROPERTY_TH}    SmartRmsCondoอาคาร
${ROOMOWNER_ADD_LBD_PROFILE_PROPERTY_EN}    SmartRmsCondo G1
#Building:
${ROOMOWNER_ADD_LBD_PROFILE_BUILDING_TH}    A1 เรสซิเดนซ์ห้อง
${ROOMOWNER_ADD_LBD_PROFILE_BUILDING_EN}    
#Room:
${ROOMOWNER_ADD_LBD_PROFILE_ROOM_TH}    103
${ROOMOWNER_ADD_LBD_PROFILE_ROOM_EN}    103
#Transfer date
${ROOMOWNER_ADD_LBD_PROFILE_TRANSFERDATE_TH}    24 ธ.ค. 2021
${ROOMOWNER_ADD_LBD_PROFILE_TRANSFERDATE_EN}    24 Dec 2021
#Arrival date
${ROOMOWNER_ADD_LBD_PROFILE_ARRIVALDATE_TH}    24 ธ.ค. 2021
${ROOMOWNER_ADD_LBD_PROFILE_ARRIVALDATE_EN}    24 Dec 2021
#Appointment date
${ROOMOWNER_ADD_LBD_PROFILE_APPOINTMENTDATE_TH}    24 ธ.ค. 2021
${ROOMOWNER_ADD_LBD_PROFILE_APPOINTMENTDATE_EN}    24 Dec 2021
#Accept date
${ROOMOWNER_ADD_LBD_PROFILE_ACCEPTDATE_TH}    24 ธ.ค. 2021
${ROOMOWNER_ADD_LBD_PROFILE_ACCEPTDATE_EN}    24 Dec 2021
#Warranty end date
${ROOMOWNER_ADD_LBD_PROFILE_WARRANTYENDDATE_TH}    24 ธ.ค. 2021
${ROOMOWNER_ADD_LBD_PROFILE_WARRANTYENDDATE_EN}    24 Dec 2021

#Back
${ROOMOWNER_ADDEDIT_BTN_PROFILE_BACK_TH}    ย้อนกลับ
${ROOMOWNER_ADDEDIT_BTN_PROFILE_BACK_EN}    Back
${ROOMOWNER_ADDEDIT_BTN_PROFILE_BACK_LOCATOR}    id=btnBack
#Use this information
${ROOMOWNER_ADDEDIT_BTN_PROFILE_USETHISINFORMATION_TH}    ใช้ข้อมูลนี้
${ROOMOWNER_ADDEDIT_BTN_PROFILE_USETHISINFORMATION_EN}    Use this information
${ROOMOWNER_ADDEDIT_BTN_PROFILE_USETHISINFORMATION_LOCATOR}    id=btnCopyContact
############################ 
#-------------------------------------------- Edit Owner information --------------------------------------------#
${ROOMOWNER_INFO_LBL_NUMBERROOM_TH}    ห้อง 
${ROOMOWNER_INFO_LBL_NUMBERROOM_EN}    Room 
${ROOMOWNER_INFO_LBL_NUMBERROOM_LOCATOR}    id=lblInfoRoomNo
#ห้อง B201
${ROOMOWNER_EDIT_LBL_NUMBERROOM_TH}    ห้อง 
${ROOMOWNER_EDIT_LBL_NUMBERROOM_EN}    Room 
${ROOMOWNER_EDIT_LBL_NUMBERROOM_LOCATOR}    id=lblEditRoomNo

#type
${ROOMOWNER_EDIT_RDL_TYPE_1_LOCATOR}    id=rdlTransferorType1
${ROOMOWNER_EDIT_RDL_TYPE_2_LOCATOR}    id=rdlTransferorType2
#Owner
${ROOMOWNER_EDIT_LBL_TYPE_OWNER_TH}    เจ้าของห้อง
${ROOMOWNER_EDIT_LBL_TYPE_OWNER_EN}    Owner
${ROOMOWNER_EDIT_LBL_TYPE_OWNER_1_LOCATOR}    css=#rdlTransferorType1 div[class="dx-widget dx-state-disabled dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"] div[class="dx-item-content"]
${ROOMOWNER_EDIT_RDL_TYPE_OWNER_1_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[1]/div[1]/div
${ROOMOWNER_EDIT_RDL_TYPE_OWNER_1_CHECK_LOCATOR}    css=#rdlTransferorType1 div[class="dx-widget dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"]
${ROOMOWNER_EDIT_LBL_TYPE_OWNER_2_LOCATOR}    css=#rdlTransferorType2 div[class="dx-widget dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"] div[class="dx-item-content"]
${ROOMOWNER_EDIT_RDL_TYPE_OWNER_2_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[1]/div[1]/div
${ROOMOWNER_EDIT_RDL_TYPE_OWNER_2_CHECK_LOCATOR}    css=#rdlTransferorType2 div[class="dx-widget dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"]

#Guest
${ROOMOWNER_EDIT_LBL_TYPE_GUESTPERSON_TH}    ผู้พักอาศัย 
${ROOMOWNER_EDIT_LBL_TYPE_GUESTPERSON_EN}    Guest
${ROOMOWNER_EDIT_LBL_TYPE_GUESTPERSON_1_LOCATOR}    css=#rdlTransferorType1 div[class="dx-widget dx-state-disabled dx-collection"] div[class="dx-item dx-radiobutton"] div[class="dx-item-content"]
${ROOMOWNER_EDIT_RDL_TYPE_GUESTPERSON_1_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[2]/div[1]/div
${ROOMOWNER_EDIT_RDL_TYPE_GUESTPERSON_1_CHECK_LOCATOR}    css=#rdlTransferorType1 div[class="dx-widget dx-collection"] div[class="dx-item dx-radiobutton"] 
${ROOMOWNER_EDIT_LBL_TYPE_GUESTPERSON_2_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/app-create-transfer/div/form/div/div[2]/div/div[2]/div/div[1]/div/div/dx-radio-group/div/div[2]/div[2]
${ROOMOWNER_EDIT_RDL_TYPE_GUESTPERSON_2_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[2]/div[1]/div
${ROOMOWNER_EDIT_RDL_TYPE_GUESTPERSON_2_CHECK_LOCATOR}    css=#rdlTransferorType2 div[class="dx-widget dx-collection"] div[class="dx-item dx-radiobutton"] 

#Received
# ${ROOMOWNER_ADD_LBL_ASSETLIST_USAGESTATUS_RECEIVED_TH}    ได้รับ
# ${ROOMOWNER_ADD_LBL_ASSETLIST_USAGESTATUS_RECEIVED_EN}    Received
# ${ROOMOWNER_ADD_LBL_ASSETLIST_USAGESTATUS_RECEIVED_LOCATOR}    css=#rdlContractCheckRooms[index] div[class="dx-widget dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"] div[class="dx-item-content"]
${ROOMOWNER_EDIT_LBL_ASSETLIST_USAGESTATUS_RECEIVED_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/app-edit-transfer/div/form/div/div[4]/div[10]/div[index]/div[2]/dx-radio-group/div/div[1]/div[2]
${ROOMOWNER_EDIT_RDL_ASSETLIST_USAGESTATUS_RECEIVED_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/app-edit-transfer/div/form/div/div[4]/div[10]/div[2]/div[2]/dx-radio-group/div/div[1]
${ROOMOWNER_EDIT_RDL_ASSETLIST_USAGESTATUS_RECEIVED_CHECK_LOCATOR}    css=div[class="dx-widget dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"] 

#Not received
# ${ROOMOWNER_ADD_LBL_ASSETLIST_USAGESTATUS_NOTRECEIVED_TH}    ไม่ได้รับ 
# ${ROOMOWNER_ADD_LBL_ASSETLIST_ASSETLIST_USAGESTATUS_NOTRECEIVED_EN}    Not received
# ${ROOMOWNER_ADD_LBL_ASSETLIST_USAGESTATUS_NOTRECEIVED_LOCATOR}    css=#rdlContractCheckRooms[index] div[class="dx-widget dx-collection"] div[class="dx-item dx-radiobutton"] div[class="dx-item-content"] 
${ROOMOWNER_EDIT_LBL_ASSETLIST_USAGESTATUS_NOTRECEIVED_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/app-edit-transfer/div/form/div/div[4]/div[10]/div[index]/div[2]/dx-radio-group/div/div[2]/div[2]
${ROOMOWNER_EDIT_RDL_ASSETLIST_USAGESTATUS_NOTRECEIVED_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/app-edit-transfer/div/form/div/div[4]/div[10]/div[1]/div[2]/dx-radio-group/div/div[2]
${ROOMOWNER_EDIT_RDL_ASSETLIST_USAGESTATUS_NOTRECEIVED_CHECK_LOCATOR}    css=#rdlContractCheckRooms[index] div[class="dx-widget dx-state-disabled dx-collection"] div[class="dx-item dx-radiobutton"] 

#-------------------------------------------- Change Owner information --------------------------------------------#
#ห้อง B201
${ROOMOWNER_CHANGEOWNER_LBL_NUMBERROOM_TH}    ห้อง 
${ROOMOWNER_CHANGEOWNER_LBL_NUMBERROOM_EN}    Room 
${ROOMOWNER_CHANGEOWNER_LBL_NUMBERROOM_LOCATOR}    id=lblChangeTransferRoomNo

#type
${ROOMOWNER_CHANGEOWNER_RDL_TYPE_1_LOCATOR}    id=rdlTransferorType1
${ROOMOWNER_CHANGEOWNER_RDL_TYPE_2_LOCATOR}    id=rdlTransferorType2

#Owner
${ROOMOWNER_CHANGEOWNER_LBL_TYPE_OWNER_TH}    เจ้าของห้อง
${ROOMOWNER_CHANGEOWNER_LBL_TYPE_OWNER_EN}    Owner
${ROOMOWNER_CHANGEOWNER_LBL_TYPE_OWNER_1_LOCATOR}    css=#rdlTransferorType1 div[class="dx-widget dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"] div[class="dx-item-content"]
${ROOMOWNER_CHANGEOWNER_RDL_TYPE_OWNER_1_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[1]/div[1]/div
${ROOMOWNER_CHANGEOWNER_RDL_TYPE_OWNER_1_CHECK_LOCATOR}    css=#rdlTransferorType1 div[class="dx-widget dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"]
${ROOMOWNER_CHANGEOWNER_LBL_TYPE_OWNER_2_LOCATOR}    css=#rdlTransferorType2 div[class="dx-widget dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"] div[class="dx-item-content"]
${ROOMOWNER_CHANGEOWNER_RDL_TYPE_OWNER_2_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[1]/div[1]/div
${ROOMOWNER_CHANGEOWNER_RDL_TYPE_OWNER_2_CHECK_LOCATOR}    css=#rdlTransferorType2 div[class="dx-widget dx-collection"] div[class="dx-item dx-radiobutton dx-item-selected dx-radiobutton-checked"]

#Guest
${ROOMOWNER_CHANGEOWNER_LBL_TYPE_GUESTPERSON_TH}    ผู้พักอาศัย 
${ROOMOWNER_CHANGEOWNER_LBL_TYPE_GUESTPERSON_EN}    Guest
${ROOMOWNER_CHANGEOWNER_LBL_TYPE_GUESTPERSON_1_LOCATOR}    css=#rdlTransferorType1 div[class="dx-widget dx-collection"] div[class="dx-item dx-radiobutton"] div[class="dx-item-content"]
${ROOMOWNER_CHANGEOWNER_RDL_TYPE_GUESTPERSON_1_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[2]/div[1]/div
${ROOMOWNER_CHANGEOWNER_RDL_TYPE_GUESTPERSON_1_CHECK_LOCATOR}    css=#rdlTransferorType1 div[class="dx-widget dx-collection"] div[class="dx-item dx-radiobutton"] 
${ROOMOWNER_CHANGEOWNER_LBL_TYPE_GUESTPERSON_2_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/app-create-transfer/div/form/div/div[2]/div/div[2]/div/div[1]/div/div/dx-radio-group/div/div[2]/div[2]
${ROOMOWNER_CHANGEOWNER_RDL_TYPE_GUESTPERSON_2_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/div/form/div/div[7]/div/dx-radio-group/div/div[2]/div[1]/div
${ROOMOWNER_CHANGEOWNER_RDL_TYPE_GUESTPERSON_2_CHECK_LOCATOR}    css=#rdlTransferorType2 div[class="dx-widget dx-collection"] div[class="dx-item dx-radiobutton"] 

#Received
# ${ROOMOWNER_ADD_LBL_ASSETLIST_USAGESTATUS_RECEIVED_TH}    ได้รับ
# ${ROOMOWNER_ADD_LBL_ASSETLIST_USAGESTATUS_RECEIVED_EN}    Received
# ${ROOMOWNER_ADD_LBL_ASSETLIST_USAGESTATUS_RECEIVED_LOCATOR}    css=#rdlContractCheckRooms[index] div[class="dx-widget dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"] div[class="dx-item-content"]
${ROOMOWNER_CHANGEOWNER_LBL_ASSETLIST_USAGESTATUS_RECEIVED_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/app-change-transfer/div/form/div/div[4]/div[10]/div[index]/div[2]/dx-radio-group/div/div[1]/div[2]
${ROOMOWNER_CHANGEOWNER_RDL_ASSETLIST_USAGESTATUS_RECEIVED_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/app-change-transfer/div/form/div/div[4]/div[10]/div[2]/div[2]/dx-radio-group/div/div[1]
${ROOMOWNER_CHANGEOWNER_RDL_ASSETLIST_USAGESTATUS_RECEIVED_CHECK_LOCATOR}    css=div[class="dx-widget dx-collection"] div[class="dx-item dx-item-selected dx-radiobutton-checked dx-radiobutton"] 

#Not received
# ${ROOMOWNER_ADD_LBL_ASSETLIST_USAGESTATUS_NOTRECEIVED_TH}    ไม่ได้รับ 
# ${ROOMOWNER_ADD_LBL_ASSETLIST_ASSETLIST_USAGESTATUS_NOTRECEIVED_EN}    Not received
# ${ROOMOWNER_ADD_LBL_ASSETLIST_USAGESTATUS_NOTRECEIVED_LOCATOR}    css=#rdlContractCheckRooms[index] div[class="dx-widget dx-collection"] div[class="dx-item dx-radiobutton"] div[class="dx-item-content"] 
${ROOMOWNER_CHANGEOWNER_LBL_ASSETLIST_USAGESTATUS_NOTRECEIVED_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/app-change-transfer/div/form/div/div[4]/div[10]/div[index]/div[2]/dx-radio-group/div/div[2]/div[2]
${ROOMOWNER_CHANGEOWNER_RDL_ASSETLIST_USAGESTATUS_NOTRECEIVED_LOCATOR}    xpath=/html/body/div/div[2]/div/nz-modal-container/div/div/div[2]/app-change-transfer/div/form/div/div[4]/div[10]/div[1]/div[2]/dx-radio-group/div/div[2]
${ROOMOWNER_CHANGEOWNER_RDL_ASSETLIST_USAGESTATUS_NOTRECEIVED_CHECK_LOCATOR}    css=#rdlContractCheckRooms[index] div[class="dx-widget dx-state-disabled dx-collection"] div[class="dx-item dx-radiobutton"] 

#-------------------------------------------- View Owner --------------------------------------------#
#ห้อง B201
${ROOMOWNER_VIEW_LBL_NUMBERROOM_TH}    ห้อง 
${ROOMOWNER_VIEW_LBL_NUMBERROOM_EN}    Room 
${ROOMOWNER_VIEW_LBL_NUMBERROOM_LOCATOR}    id=lblViewRoomNo

#Owner information
${ROOMOWNER_VIEW_LBL_OWNERINFORMATON_HEARDER_TH}    ข้อมูลเจ้าของห้อง 
${ROOMOWNER_VIEW_LBL_OWNERINFORMATON_HEARDER_EN}    Owner information 
${ROOMOWNER_VIEW_LBL_OWNERINFORMATON_HEARDER_LOCATOR}    id=lblViewOwnerInformation

#Owner information
${ROOMOWNER_VIEW_LBL_OWNERINFORMATION_TH}    ข้อมูลเจ้าของห้อง 
${ROOMOWNER_VIEW_LBL_OWNERINFORMATION_EN}    Owner information
${ROOMOWNER_VIEW_LBL_OWNERINFORMATION_LOCATOR}    id=lblOwnerInformation

#UserImage
${ROOMOWNER_VIEW_IMG_USERIMAGE_LOCATOR}    id=imgUserImage1
${ROOMOWNER_VIEW_IMG_NOUSERIMAGE_LOCATOR}    id=imgNoUserImage1

#Identification No./Passport No.
${ROOMOWNER_VIEW_LBL_IDENTIFICATIONNOPASSPORTNUMBER_TH}    หมายเลขบัตรประชาชน/หมายเลขหนังสือเดินทาง 
${ROOMOWNER_VIEW_LBL_IDENTIFICATIONNOPASSPORTNUMBER_EN}    Identification No. / Passport No.
${ROOMOWNER_VIEW_LBL_IDENTIFICATIONNOPASSPORTNUMBER_LOCATOR}    id=lblIdentificationNo1
${ROOMOWNER_VIEW_LBD_IDENTIFICATIONNOPASSPORTNUMBER_LOCATOR}    id=lbdIdentificationNo1
#Name
${ROOMOWNER_VIEW_LBL_NAME_TH}    ชื่อ - นามสกุล
${ROOMOWNER_VIEW_LBL_NAME_EN}    Name
${ROOMOWNER_VIEW_LBL_NAME_LOCATOR}    id=lblName1
${ROOMOWNER_VIEW_LBD_NAME_LOCATOR}    id=lbdName1
#Nickname
${ROOMOWNER_VIEW_LBL_NICKNAME_TH}    ชื่อเล่น
${ROOMOWNER_VIEW_LBL_NICKNAME_EN}    Nickname
${ROOMOWNER_VIEW_LBL_NICKNAME_LOCATOR}    id=lblNickname1
${ROOMOWNER_VIEW_LBD_NICKNAME_LOCATOR}    id=lbdNickname1
#Birth date
${ROOMOWNER_VIEW_LBL_BIRTHDATE_TH}    วัน/เดือน/ปี เกิด
${ROOMOWNER_VIEW_LBL_BIRTHDATE_EN}    Birth date
${ROOMOWNER_VIEW_LBL_BIRTHDATE_LOCATOR}    id=lblBirthDate1
${ROOMOWNER_VIEW_LBD_BIRTHDATE_LOCATOR}    id=lbdBirthDate1
#Identification create date
${ROOMOWNER_VIEW_LBL_IDENTIFICATIONCREATEDATE_TH}    วันที่ออกบัตร
${ROOMOWNER_VIEW_LBL_IDENTIFICATIONCREATEDATE_EN}    Identification create date
${ROOMOWNER_VIEW_LBL_IDENTIFICATIONCREATEDATE_LOCATOR}    id=lblIdentificationCreate1
${ROOMOWNER_VIEW_LBD_IDENTIFICATIONCREATEDATE_LOCATOR}    id=lbdIdentificationCreate1
#Identification expire date
${ROOMOWNER_VIEW_LBL_IDENTIFICATIONEXPIREDATE_TH}    วันที่บัตรหมดอายุ
${ROOMOWNER_VIEW_LBL_IDENTIFICATIONEXPIREDATE_EN}    Identification expire date
${ROOMOWNER_VIEW_LBL_IDENTIFICATIONEXPIREDATE_LOCATOR}    id=lblIdentificationExpire1
${ROOMOWNER_VIEW_LBD_IDENTIFICATIONEXPIREDATE_LOCATOR}    id=lbdIdentificationExpire1
#Mobile
${ROOMOWNER_VIEW_LBL_MOBILE_TH}    เบอร์โทรศัพท์
${ROOMOWNER_VIEW_LBL_MOBILE_EN}    Mobile
${ROOMOWNER_VIEW_LBL_MOBILE_LOCATOR}    id=lblMobile1
${ROOMOWNER_VIEW_LBD_MOBILE_LOCATOR}    id=lbdMobile1
${ROOMOWNER_VIEW_LBL_MOBILE_11_LOCATOR}    id=lblPhoneType11
${ROOMOWNER_VIEW_LBD_MOBILE_11_LOCATOR}    id=lbdPhoneType11
#E-mail
${ROOMOWNER_VIEW_LBL_EMAIL_TH}    อีเมล
${ROOMOWNER_VIEW_LBL_EMAIL_EN}    E-mail
${ROOMOWNER_VIEW_LBL_EMAIL_11_LOCATOR}    id=lblEmailType11
${ROOMOWNER_VIEW_LBD_EMAIL_11_LOCATOR}    id=lbdEmailTyp11
${ROOMOWNER_VIEW_LBL_EMAIL_21_LOCATOR}    id=lblEmailType21
${ROOMOWNER_VIEW_LBD_EMAIL_21_LOCATOR}    id=lbdEmailType21
#Line ID
${ROOMOWNER_VIEW_LBL_LINEID_TH}    Line ID
${ROOMOWNER_VIEW_LBL_LINEID_EN}    Line ID
${ROOMOWNER_VIEW_LBL_LINEID_LOCATOR}    id=lblLineId1
${ROOMOWNER_VIEW_LBD_LINEID_LOCATOR}    id=lbdLineId1
#Occupation
${ROOMOWNER_VIEW_LBL_OCCUPATION_TH}    อาชีพ
${ROOMOWNER_VIEW_LBL_OCCUPATION_EN}    Occupation
${ROOMOWNER_VIEW_LBL_OCCUPATION_LOCATOR}    id=lblOccupation1
${ROOMOWNER_VIEW_LBD_OCCUPATION_LOCATOR}    id=lbdOccupation1
${ROOMOWNER_VIEW_LBD_OCCUPATION_OTHER_LOCATOR}    id=lbdOccupationOther1
#Education
${ROOMOWNER_VIEW_LBL_EDUCATION_TH}    การศึกษา
${ROOMOWNER_VIEW_LBL_EDUCATION_EN}    Education
${ROOMOWNER_VIEW_LBL_EDUCATION_LOCATOR}    id=lblEducation1
${ROOMOWNER_VIEW_LBD_EDUCATION_LOCATOR}    id=lbdEducation1
#Tax identification number
${ROOMOWNER_VIEW_LBL_TAXIDENTIFICATIONNUMBER_TH}    เลขประจำตัวผู้เสียภาษี
${ROOMOWNER_VIEW_LBL_TAXIDENTIFICATIONNUMBER_EN}    Tax identification number
${ROOMOWNER_VIEW_LBL_TAXIDENTIFICATIONNUMBER_11_LOCATOR}    id=lblTaxIdType11
${ROOMOWNER_VIEW_LBD_TAXIDENTIFICATIONNUMBER_11_LOCATOR}    id=lbdTaxIdType11
${ROOMOWNER_VIEW_LBL_TAXIDENTIFICATIONNUMBER_21_LOCATOR}    id=lblTaxIdType21
${ROOMOWNER_VIEW_LBD_TAXIDENTIFICATIONNUMBER_21_LOCATOR}    id=lbdTaxIdType21
#Salary 
${ROOMOWNER_VIEW_LBL_SALARY_TH}    รายได้ต่อเดือน
${ROOMOWNER_VIEW_LBL_SALARY_EN}    Salary 
${ROOMOWNER_VIEW_LBL_SALARY_21_LOCATOR}    id=lblSalaryType21
${ROOMOWNER_VIEW_LBD_SALARY_21_LOCATOR}    id=lbdSalaryType21
${ROOMOWNER_VIEW_LBL_SALARY_31_LOCATOR}    id=lblSalaryType31
${ROOMOWNER_VIEW_LBD_SALARY_31_LOCATOR}    id=lbdSalaryType31
#Address
${ROOMOWNER_VIEW_LBL_ADDRESS_TH}    ที่อยู่
${ROOMOWNER_VIEW_LBL_ADDRESS_EN}    Address
${ROOMOWNER_VIEW_LBL_ADDRESS_11_LOCATOR}    id=lblAddressType11
${ROOMOWNER_VIEW_LBD_ADDRESS_11_LOCATOR}    id=lbdAddressType11
${ROOMOWNER_VIEW_LBL_ADDRESS_2_LOCATOR}    id=lblAddressType2
${ROOMOWNER_VIEW_LBD_ADDRESS_2_LOCATOR}    id=lbdAddressType2
${ROOMOWNER_VIEW_LBL_ADDRESS_3_LOCATOR}    id=lblAddressType3
${ROOMOWNER_VIEW_LBD_ADDRESS_3_LOCATOR}    id=lbdAddressType3
#Company name
${ROOMOWNER_VIEW_LBL_COMPANYNAME_TH}    ชื่อบริษัท
${ROOMOWNER_VIEW_LBL_COMPANYNAME_EN}    Company name
${ROOMOWNER_VIEW_LBL_COMPANYNAME_LOCATOR}    id=lblCompanyName1
${ROOMOWNER_VIEW_LBD_COMPANYNAME_LOCATOR}    id=lbdCompanyName1
#Short name
${ROOMOWNER_VIEW_LBL_SHORTNAME_TH}    ชื่อย่อ
${ROOMOWNER_VIEW_LBL_SHORTNAME_EN}    Short name
${ROOMOWNER_VIEW_LBL_SHORTNAME_LOCATOR}    id=lblShortName1
${ROOMOWNER_VIEW_LBD_SHORTNAME_LOCATOR}    id=lbdShortName1
#Juristic id
${ROOMOWNER_VIEW_LBL_JURISTICID_TH}    เลขทะเบียนบริษัท
${ROOMOWNER_VIEW_LBL_JURISTICID_EN}    Juristic id
${ROOMOWNER_VIEW_LBL_JURISTICID_LOCATOR}    id=lblJuristicId1
${ROOMOWNER_VIEW_LBD_JURISTICID_LOCATOR}    id=lbdJuristicId1
#Fax
${ROOMOWNER_VIEW_LBL_FAX_TH}    เบอร์โทรสาร
${ROOMOWNER_VIEW_LBL_FAX_EN}    Fax
${ROOMOWNER_VIEW_LBL_FAX_LOCATOR}    id=lblFax1
${ROOMOWNER_VIEW_LBD_FAX_LOCATOR}    id=lbdFax1

#Transfer information
${ROOMOWNER_VIEW_LBL_TRANSFERINFORMATION_TH}    ข้อมูลการโอน 
${ROOMOWNER_VIEW_LBL_TRANSFERINFORMATION_EN}    Transfer information
${ROOMOWNER_VIEW_LBL_TRANSFERINFORMATION_LOCATOR}    id=lblTransferInformation
#Transfer date
${ROOMOWNER_VIEW_LBL_TRANSFERDATE_TH}    วันที่โอน
${ROOMOWNER_VIEW_LBL_TRANSFERDATE_EN}    Transfer date
${ROOMOWNER_VIEW_LBL_TRANSFERDATE_LOCATOR}    id=lblTransferDate
${ROOMOWNER_VIEW_LBD_TRANSFERDATE_LOCATOR}    id=lbdTransferDate
#Arrival date
${ROOMOWNER_VIEW_LBL_ARRIVALDATE_TH}    วันที่เข้าอยู่
${ROOMOWNER_VIEW_LBL_ARRIVALDATE_EN}    Arrival date
${ROOMOWNER_VIEW_LBL_ARRIVALDATE_LOCATOR}    id=lblArrivalDate
${ROOMOWNER_VIEW_LBD_ARRIVALDATE_LOCATOR}    id=lbdArrivalDate
#Appointment date
${ROOMOWNER_VIEW_LBL_APPOINTMENTDATE_TH}    วันที่นัดรับมอบ
${ROOMOWNER_VIEW_LBL_APPOINTMENTDATE_EN}    Appointment date
${ROOMOWNER_VIEW_LBL_APPOINTMENTDATE_LOCATOR}    id=lblAppointmentDate
${ROOMOWNER_VIEW_LBD_APPOINTMENTDATE_LOCATOR}    id=lbdAppointmentDate
#Accept date
${ROOMOWNER_VIEW_LBL_ACCEPTDATE_TH}    วันที่รับมอบ
${ROOMOWNER_VIEW_LBL_ACCEPTDATE_EN}    Accept date
${ROOMOWNER_VIEW_LBL_ACCEPTDATE_LOCATOR}    id=lblAcceptDate
${ROOMOWNER_VIEW_LBD_ACCEPTDATE_LOCATOR}    id=lbdAcceptDate
#Warranty end date
${ROOMOWNER_VIEW_LBL_WARRANTYENDDATE_TH}    วันที่สิ้นสุดรับประกัน
${ROOMOWNER_VIEW_LBL_WARRANTYENDDATE_EN}    Warranty end date
${ROOMOWNER_VIEW_LBL_WARRANTYENDDATE_LOCATOR}    id=lblWarrantyEndDate
${ROOMOWNER_VIEW_LBD_WARRANTYENDDATE_LOCATOR}    id=lbdWarrantyEndDate
#Manage type
${ROOMOWNER_VIEW_LBL_MANAGETYPE_TH}    ประเภทการพักอาศัย
# ${ROOMOWNER_VIEW_LBL_MANAGETYPE_TH}    ประเภทการเข้าพักอาศัย
${ROOMOWNER_VIEW_LBL_MANAGETYPE_EN}    Manage type
${ROOMOWNER_VIEW_LBL_MANAGETYPE_LOCATOR}    id=lblManageType
${ROOMOWNER_VIEW_LBD_MANAGETYPE_LOCATOR}    id=lbdManageType
#Document language
${ROOMOWNER_VIEW_LBL_DOCUMENTLANGUAGE_TH}    รูปแบบภาษาของเอกสาร
${ROOMOWNER_VIEW_LBL_DOCUMENTLANGUAGE_EN}    Document language
${ROOMOWNER_VIEW_LBL_DOCUMENTLANGUAGE_LOCATOR}    id=lblDocumentLanguage
${ROOMOWNER_VIEW_LBD_DOCUMENTLANGUAGE_LOCATOR}    id=lbdDocumentLanguage

################################################################################################################################
################################################################-- Value --################################################################
#-------------------------------------------- data Create --------------------------------------------#
${ROOMOWNER_TRANFERORTYPE_VALUE}    1
${ROOMOWNER_TRANFERORTYPE_2_VALUE}    2
#Owner type *
${ROOMOWNER_TYPE_OWNERTYPE_THAI_TH_VALUE}    บุคคลธรรมดา - คนไทย
${ROOMOWNER_TYPE_OWNERTYPE_THAI_EN_VALUE}    Individuals - Thai nationals
${ROOMOWNER_TYPE_OWNERTYPE_THAI_VALUE}    2
${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_TH_VALUE}    บุคคลธรรมดา - ต่างชาติ
${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_EN_VALUE}    Individuals - Foreigners
${ROOMOWNER_TYPE_OWNERTYPE_FOREIGNERS_VALUE}    3
${ROOMOWNER_TYPE_OWNERTYPE_JURISTICPERSON_TH_VALUE}    นิติบุคคล
${ROOMOWNER_TYPE_OWNERTYPE_JURISTICPERSON_EN_VALUE}    Juristic person
${ROOMOWNER_TYPE_OWNERTYPE_JURISTICPERSON_VALUE}    1

#Identification No./Passport No. *
${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_1_VALUE}    919191919
${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_2_VALUE}    191919191
${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_3_VALUE}    090909090
#Title
${ROOMOWNER_TITLE_MR_TH_VALUE}    นาย
${ROOMOWNER_TITLE_MR_EN_VALUE}    Mr.
${ROOMOWNER_TITLE_MRID_VALUE}    1
${ROOMOWNER_TITLE_MRS_TH_VALUE}    นาง
${ROOMOWNER_TITLE_MRS_EN_VALUE}    Mrs.
${ROOMOWNER_TITLE_MRSID_VALUE}    2   
${ROOMOWNER_TITLE_MISS_TH_VALUE}    นางสาว
${ROOMOWNER_TITLE_MISS_EN_VALUE}    Miss
${ROOMOWNER_TITLE_MISSID_VALUE}    3
${ROOMOWNER_TITLE_MISS_GIRL_TH_VALUE}    เด็กหญิง
${ROOMOWNER_TITLE_MISS_GIRL_EN_VALUE}    Miss
${ROOMOWNER_TITLE_MISS_GIRLID_VALUE}    4  
${ROOMOWNER_TITLE_MASTER_TH_VALUE}    เด็กชาย
${ROOMOWNER_TITLE_MASTER_EN_VALUE}    Master
${ROOMOWNER_TITLE_MASTERID_VALUE}    5    
${ROOMOWNER_TITLE_BUDDHISTMONK_TH_VALUE}    พระสงฆ์
${ROOMOWNER_TITLE_BUDDHISTMONK_EN_VALUE}    Buddhist Monk
${ROOMOWNER_TITLE_BUDDHISTMONKID_VALUE}    6      
${ROOMOWNER_TITLE_REV_TH_VALUE}    บาทหลวง
${ROOMOWNER_TITLE_REV_EN_VALUE}    Rev.
${ROOMOWNER_TITLE_REVID_VALUE}    7
${ROOMOWNER_TITLE_MOMLUANG_ML_TH_VALUE}    หม่อมหลวง
${ROOMOWNER_TITLE_MOMLUANG_ML_EN_VALUE}    Mom Luang (M.L.)
${ROOMOWNER_TITLE_MOMLUANG_MLID_VALUE}    8   
${ROOMOWNER_TITLE_MOMRAJAWONG_MR_TH_VALUE}    หม่อมราชวงศ์
${ROOMOWNER_TITLE_MOMRAJAWONG_MR_EN_VALUE}    Mom Rajawong (M.R.)
${ROOMOWNER_TITLE_MOMRAJAWONG_MRID_VALUE}    9
${ROOMOWNER_TITLE_MOMCHAO_MC_TH_VALUE}    หม่อมเจ้า
${ROOMOWNER_TITLE_MOMCHAO_MC_EN_VALUE}    Mom Chao (M.C.)
${ROOMOWNER_TITLE_MOMCHAO_MCID_VALUE}    10  
${ROOMOWNER_TITLE_EMERITUSPROFESSOR_TH_VALUE}    ศาสตราจารย์เกียรติคุณ (กิตติคุณ)
${ROOMOWNER_TITLE_EMERITUSPROFESSOR_EN_VALUE}    Emeritus Professor
${ROOMOWNER_TITLE_EMERITUSPROFESSORID_VALUE}    11    
${ROOMOWNER_TITLE_PROFESSOR_TH_VALUE}    ศาสตราจารย์
${ROOMOWNER_TITLE_PROFESSOR_EN_VALUE}    Professor
${ROOMOWNER_TITLE_PROFESSORID_VALUE}    12   
${ROOMOWNER_TITLE_ASSISTANTPROFESSOR_TH_VALUE}    ผู้ช่วยศาสตราจารย์
${ROOMOWNER_TITLE_ASSISTANTPROFESSOR_EN_VALUE}    Assistant Professor
${ROOMOWNER_TITLE_ASSISTANTPROFESSORID_VALUE}    13  
${ROOMOWNER_TITLE_ASSISOCIATEPROFESSOR_TH_VALUE}    รองศาสตราจารย์
${ROOMOWNER_TITLE_ASSISOCIATEPROFESSOR_EN_VALUE}    Associate Professor
${ROOMOWNER_TITLE_ASSISOCIATEPROFESSORID_VALUE}    14 
#First name *
${ROOMOWNER_FIRSTNAME_1_VALUE}    FirstName1
${ROOMOWNER_FIRSTNAME_2_VALUE}    FirstName2
${ROOMOWNER_FIRSTNAME_3_VALUE}    FirstName3
#Last name
${ROOMOWNER_LASTNAME_1_VALUE}    LastName1
${ROOMOWNER_LASTNAME_2_VALUE}    LastName2
${ROOMOWNER_LASTNAME_3_VALUE}    LastName3
#Nickname 
${ROOMOWNER_NICKNAME_1_VALUE}    Nickname1
${ROOMOWNER_NICKNAME_2_VALUE}    Nickname2 
${ROOMOWNER_NICKNAME_3_VALUE}    Nickname3
#Birth date
${ROOMOWNER_BIRTHDATE_VALUE}    30/11/1991
${ROOMOWNER_BIRTHDATE_INPUT_DATE_VALUE}    1991/11/30
${ROOMOWNER_BIRTHDATE_INPUT_DATE_YEAROLD01_VALUE}   1991/11/01
${ROOMOWNER_BIRTHDATE_YEAR_VALUE}   1991
${ROOMOWNER_BIRTHDATE_DB_VALUE}   1991-11-30
${ROOMOWNER_BIRTHDATE_CHECK_VALUE}   1991-11-30T00:00:00.000Z
#Identification create date
${ROOMOWNER_IDENTIFICATIONCREATEDATE_VALUE}    22/12/2021
${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_VALUE}    2021/12/22
${ROOMOWNER_IDENTIFICATIONCREATEDATE_INPUT_DATE_YEAROLD01_VALUE}   2021/12/01
${ROOMOWNER_IDENTIFICATIONCREATEDATE_DB_VALUE}   2021-12-22
${ROOMOWNER_IDENTIFICATIONCREATEDATE_CHECK_VALUE}   2021-12-22T00:00:00.000Z 
#Identification expire date
${ROOMOWNER_IDENTIFICATIONEXPIREDATE_VALUE}    06/10/2024
${ROOMOWNER_IDENTIFICATIONEXPIREDATE_INPUT_DATE_VALUE}    2024/10/06
${ROOMOWNER_IDENTIFICATIONEXPIREDATE_DB_VALUE}   2024-10-06
${ROOMOWNER_IDENTIFICATIONEXPIREDATE_CHECK_VALUE}   2024-10-06T00:00:00.000Z
#Mobile
${ROOMOWNER_MOBILE_1_VALUE}    0919191919
${ROOMOWNER_MOBILE_2_VALUE}    0191919191
#E-mail
${ROOMOWNER_EMAIL_1_VALUE}    testCondo1@mail.com
${ROOMOWNER_EMAIL_2_VALUE}    testCondo2@mail.com
#Line ID
${ROOMOWNER_LINEID_1_VALUE}    lineid1
${ROOMOWNER_LINEID_2_VALUE}    lineid2
#Tax identification number
${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}    115511551155
${ROOMOWNER_TAXIDENTIFICATIONNUMBER_2_VALUE}    551155115511
#Education
${ROOMOWNER_EDUCATION_LOWERTHANJUNIOR_TH_VALUE}    ต่ำกว่าชั้นมัธยมศึกษาตอนต้น
${ROOMOWNER_EDUCATION_LOWERTHANJUNIOR_EN_VALUE}    Lower than junior High School
${ROOMOWNER_EDUCATION_LOWERTHANJUNIORID_VALUE}    1
${ROOMOWNER_EDUCATION_JUNIOR_TH_VALUE}    ชั้นมัธยมศึกษาตอนต้น
${ROOMOWNER_EDUCATION_JUNIOR_EN_VALUE}    Junior High School
${ROOMOWNER_EDUCATION_JUNIORID_VALUE}    2
${ROOMOWNER_EDUCATION_SENIOR_TH_VALUE}    ชั้นมัธยมศึกษาตอนปลาย
${ROOMOWNER_EDUCATION_SENIOR_EN_VALUE}    Senior High School
${ROOMOWNER_EDUCATION_SENIORID_VALUE}    3
${ROOMOWNER_EDUCATION_VOCATIONAL_TH_VALUE}    ประกาศนียบัตรวิชาชีพ (ปวช.)
${ROOMOWNER_EDUCATION_VOCATIONAL_EN_VALUE}    Vocational Certificate
${ROOMOWNER_EDUCATION_VOCATIONALID_VALUE}    4
${ROOMOWNER_EDUCATION_HIGHVOCATIONAL_TH_VALUE}    ประกาศนียบัตรวิชาชีพชั้นสูง (ปวส.)
${ROOMOWNER_EDUCATION_HIGHVOCATIONAL_EN_VALUE}    High Vocational Certificate
${ROOMOWNER_EDUCATION_HIGHVOCATIONALID_VALUE}    5
${ROOMOWNER_EDUCATION_BACHELORSDEGREE_TH_VALUE}    ปริญญาตรี
${ROOMOWNER_EDUCATION_BACHELORSDEGREE_EN_VALUE}    Bachelor’s degree
${ROOMOWNER_EDUCATION_BACHELORSDEGREEID_VALUE}    6
${ROOMOWNER_EDUCATION_MASTERSDEGREE_TH_VALUE}    ปริญญาโท
${ROOMOWNER_EDUCATION_MASTERSDEGREE_EN_VALUE}    Master’s degree
${ROOMOWNER_EDUCATION_MASTERSDEGREEID_VALUE}    7
${ROOMOWNER_EDUCATION_DOCTORSDEGREE_TH_VALUE}    ปริญญาเอก
${ROOMOWNER_EDUCATION_DOCTORSDEGREE_EN_VALUE}    Doctor’s degree
${ROOMOWNER_EDUCATION_DOCTORSDEGREEID_VALUE}    8
#Occupation
${ROOMOWNER_OCCUPATION_CIVILSERVANTS_GOVERNMENTEMPLOYEES_GOVERMENTOFFICIALS_TH_VALUE}    ข้าราชการ / พนักงานของรัฐ / เจ้าหน้าที่ของรัฐ
${ROOMOWNER_OCCUPATION_CIVILSERVANTS_GOVERNMENTEMPLOYEES_GOVERMENTOFFICIALS_EN_VALUE}    Civil servants / government employees / government officials
${ROOMOWNER_OCCUPATION_CIVILSERVANTS_GOVERNMENTEMPLOYEES_GOVERMENTOFFICIALS_VALUE}    1
${ROOMOWNER_OCCUPATION_RETIREDGOVERNMENTEMPLOYEES_TH_VALUE}    ข้าราชการบำนาญ
${ROOMOWNER_OCCUPATION_RETIREDGOVERNMENTEMPLOYEES_EN_VALUE}    retired government employee
${ROOMOWNER_OCCUPATION_RETIREDGOVERNMENTEMPLOYEESID_VALUE}    2
${ROOMOWNER_OCCUPATION_EMPLOYEESOFSTATEENTERPRISES_TH_VALUE}    พนักงาน / ลูกจ้างรัฐวิสาหกิจ
${ROOMOWNER_OCCUPATION_EMPLOYEESOFSTATEENTERPRISES_EN_VALUE}    Employees of state enterprises
${ROOMOWNER_OCCUPATION_EMPLOYEESOFSTATEENTERPRISESID_VALUE}    3
${ROOMOWNER_OCCUPATION_EMPLOYEESOFPRIVATECOMPANIES_TH_VALUE}    พนักงาน / ลูกจ้างบริษัทเอกชน
${ROOMOWNER_OCCUPATION_EMPLOYEESOFPRIVATECOMPANIES_EN_VALUE}    Employees of private companies
${ROOMOWNER_OCCUPATION_EMPLOYEESOFPRIVATECOMPANIESID_VALUE}    4
${ROOMOWNER_OCCUPATION_BUTLER_HOUSEWIFE_TH_VALUE}    พ่อบ้าน / แม่บ้าน
${ROOMOWNER_OCCUPATION_BUTLER_HOUSEWIFE_EN_VALUE}    butler / housewife
${ROOMOWNER_OCCUPATION_BUTLER_HOUSEWIFEID_VALUE}    5
${ROOMOWNER_OCCUPATION_STUDENT_TH_VALUE}    นักเรียน / นักศึกษา
${ROOMOWNER_OCCUPATION_STUDENT_EN_VALUE}    Student
${ROOMOWNER_OCCUPATION_STUDENTID_VALUE}    6
${ROOMOWNER_OCCUPATION_TEACHERS_EDUCATIONALPERSONNEL_TH_VALUE}    ครู / บุคลากรทางการศึกษาภาคเอกชน
${ROOMOWNER_OCCUPATION_TEACHERS_EDUCATIONALPERSONNEL_EN_VALUE}    Teachers / Educational personnel in the private sector educational
${ROOMOWNER_OCCUPATION_TEACHERS_EDUCATIONALPERSONNELID_VALUE}    7
${ROOMOWNER_OCCUPATION_DRIVER_PUBLICTRANSPORTOPERATOR_TH_VALUE}    ผู้ขับขี่/ผู้ให้บริการขนส่งสาธารณะ/สถานีขนส่งสาธารณะ
${ROOMOWNER_OCCUPATION_DRIVER_PUBLICTRANSPORTOPERATOR_EN_VALUE}    Driver / Public Transport Operator
${ROOMOWNER_OCCUPATION_DRIVER_PUBLICTRANSPORTOPERATORID_VALUE}    8
${ROOMOWNER_OCCUPATION_GENERALCONTRACTOR_TH_VALUE}    รับจ้างทั่วไป
${ROOMOWNER_OCCUPATION_GENERALCONTRACTOR_EN_VALUE}    General contractor
${ROOMOWNER_OCCUPATION_GENERALCONTRACTORID_VALUE}    9
${ROOMOWNER_OCCUPATION_ENTERPRENEUR_BUSINESSOWNER_TH_VALUE}    ผูู้ประกอบการ / เจ้าของธุรกิจ
${ROOMOWNER_OCCUPATION_ENTERPRENEUR_BUSINESSOWNER_EN_VALUE}    Entrepreneur / Business Owner
${ROOMOWNER_OCCUPATION_ENTERPRENEUR_BUSINESSOWNERID_VALUE}    10
${ROOMOWNER_OCCUPATION_FARMER_TH_VALUE}    เกษตรกร
${ROOMOWNER_OCCUPATION_FARMER_EN_VALUE}    Farmer
${ROOMOWNER_OCCUPATION_FARMERID_VALUE}    11
${ROOMOWNER_OCCUPATION_MEDICALPERSONNEL_TH_VALUE}    บุคลากรทางการแพทย์
${ROOMOWNER_OCCUPATION_MEDICALPERSONNEL_EN_VALUE}    Medical personnel
${ROOMOWNER_OCCUPATION_MEDICALPERSONNELID_VALUE}    12
${ROOMOWNER_OCCUPATION_UNEMPLOYED_TH_VALUE}    ว่างงาน
${ROOMOWNER_OCCUPATION_UNEMPLOYED_EN_VALUE}    Unemployed
${ROOMOWNER_OCCUPATION_UNEMPLOYEDID_VALUE}    13
${ROOMOWNER_OCCUPATION_OTHER_TH_VALUE}    อื่น ๆ
${ROOMOWNER_OCCUPATION_OTHER_EN_VALUE}    Other
${ROOMOWNER_OCCUPATION_OTHERID_VALUE}    14
#[กรอกอาชีพอื่นๆ]
${ROOMOWNER_OCCUPATION_OTHER_1_VALUE}    other1
${ROOMOWNER_OCCUPATION_OTHER_2_VALUE}    other2
#Salary (baht)
${ROOMOWNER_SALARY_BATH_LESSTHAN_10000_TH_VALUE}    ต่ำกว่า 10,000 บาท
${ROOMOWNER_SALARY_BATH_LESSTHAN_10000_EN_VALUE}    Less than 10,000 baht
${ROOMOWNER_SALARY_BATH_LESSTHAN_10000ID_VALUE}    1
${ROOMOWNER_SALARY_BATH_10000_20000_TH_VALUE}    10,000 - 20,000 บาท
${ROOMOWNER_SALARY_BATH_10000_20000_EN_VALUE}    10,000 - 20,000 baht
${ROOMOWNER_SALARY_BATH_10000_20000ID_VALUE}    2
${ROOMOWNER_SALARY_BATH_20000_30000_TH_VALUE}    20,000 - 30,000 บาท
${ROOMOWNER_SALARY_BATH_20000_30000_EN_VALUE}    20,000 - 30,000 baht
${ROOMOWNER_SALARY_BATH_20000_30000ID_VALUE}    3
${ROOMOWNER_SALARY_BATH_30000_50000_TH_VALUE}    30,000 - 50,000 บาท
${ROOMOWNER_SALARY_BATH_30000_50000_EN_VALUE}    30,000 - 50,000 baht
${ROOMOWNER_SALARY_BATH_30000_50000ID_VALUE}    4
${ROOMOWNER_SALARY_BATH_50000_100000_TH_VALUE}    50,000 - 100,000 บาท
${ROOMOWNER_SALARY_BATH_50000_100000_EN_VALUE}    50,000 - 100,000 baht
${ROOMOWNER_SALARY_BATH_50000_100000ID_VALUE}    5
${ROOMOWNER_SALARY_BATH_MORETHAN_100000_TH_VALUE}    มากกว่า 100,000 บาท
${ROOMOWNER_SALARY_BATH_MORETHAN_100000_EN_VALUE}    More than 100,000 baht
${ROOMOWNER_SALARY_BATH_MORETHAN_100000ID_VALUE}    6
#Address
${ROOMOWNER_ADDRESS_1_VALUE}    Address1
${ROOMOWNER_ADDRESS_2_VALUE}    Address2

# Tax identification number
# ปรเภทบุคคลธรรมดา
# 1101800965353
${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_TAXIDENTIFICATIONNUMBER_THAI_FOREIGNERS_VALUE}    00001234

# สำหรับนิติบุคคล
${ROOMOWNER_IDENTIFICATIONNOPASSPOERNUMBER_TAXIDENTIFICATIONNUMBER_JURISTICPERSON_VALUE}    1333

############## Add car ############## 
#Car type
${ROOMOWNER_CARTYPE_CAR_TH_VALUE}    รถยนต์
${ROOMOWNER_CARTYPE_CAR_EN_VALUE}    Car
${ROOMOWNER_CARTYPE_CAR_VALUE}    1
${ROOMOWNER_CARTYPE_MOTORCYCLE_TH_VALUE}    รถจักรยานยนต์
${ROOMOWNER_CARTYPE_MOTORCYCLE_EN_VALUE}    Motorcycle
${ROOMOWNER_CARTYPE_MOTORCYCLE_VALUE}    2
#Car plate number
${ROOMOWNER_CARPLATENUMBER_1_VALUE}    Carplatenumber1
${ROOMOWNER_CARPLATENUMBER_2_VALUE}    Carplatenumber2

############## Transfer detail ############## 
#Transfer date 

${ROOMOWNER_TRANSFERDATE_TH_VALUE}    22 ต.ค. 2021
${ROOMOWNER_TRANSFERDATE_EN_VALUE}    22 Oct 2021
${ROOMOWNER_TRANSFERDATE_VALUE}    22/10/2021
${ROOMOWNER_TRANSFERDATE_INPUT_DATE_VALUE}    2021/10/22
${ROOMOWNER_TRANSFERDATE_DB_VALUE}   2021-10-22
${ROOMOWNER_TRANSFERDATE_CHECK_VALUE}   2021-10-22T00:00:00.000Z 
#Arrival date
${ROOMOWNER_ARRIVALDATE_TH_VALUE}     25 ธ.ค. 2021
${ROOMOWNER_ARRIVALDATE_EN_VALUE}     25 Dec 2021
${ROOMOWNER_ARRIVALDATE_VALUE}     25/12/2021
${ROOMOWNER_ARRIVALDATE_INPUT_DATE_VALUE}    2021/12/25
${ROOMOWNER_ARRIVALDATE_DB_VALUE}   2021-12-25
${ROOMOWNER_ARRIVALDATE_CHECK_VALUE}   2021-12-25T00:00:00.000Z 
#Appointment date
${ROOMOWNER_APPOINTMENTDATE_TH_VALUE}    27 ส.ค. 2021
${ROOMOWNER_APPOINTMENTDATE_EN_VALUE}    27 Aug 2021
${ROOMOWNER_APPOINTMENTDATE_VALUE}    27/08/2021
${ROOMOWNER_APPOINTMENTDATE_INPUT_DATE_VALUE}    2021/08/27
${ROOMOWNER_APPOINTMENTDATE_DB_VALUE}   2021-08-27
${ROOMOWNER_APPOINTMENTDATE_CHECK_VALUE}   2021-08-27T00:00:00.000Z 
#Accept date
${ROOMOWNER_ACCEPTDATE_TH_VALUE}    23 พ.ย. 2021
${ROOMOWNER_ACCEPTDATE_EN_VALUE}    23 Nov 2021
${ROOMOWNER_ACCEPTDATE_VALUE}    23/11/2021
${ROOMOWNER_ACCEPTDATE_INPUT_DATE_VALUE}    2021/11/23
${ROOMOWNER_ACCEPTDATE_DB_VALUE}   2021-11-23
${ROOMOWNER_ACCEPTDATE_CHECK_VALUE}   2021-11-23T00:00:00.000Z 
#Warranty end date
${ROOMOWNER_WARRANTYENDDATE_TH_VALUE}    2 ก.ค. 2023
${ROOMOWNER_WARRANTYENDDATE_EN_VALUE}    2 Jul 2023
${ROOMOWNER_WARRANTYENDDATE_VALUE}    02/07/2023
${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_VALUE}    2023/07/02
${ROOMOWNER_WARRANTYENDDATE_INPUT_DATE_YEAROLD01_VALUE}   2023/07/01
${ROOMOWNER_WARRANTYENDDATE_DB_VALUE}   2023-07-02
${ROOMOWNER_WARRANTYENDDATE_CHECK_VALUE}   2023-07-02T00:00:00.000Z 
#Manage type
${ROOMOWNER_MANAGETYPE_SELFLIVE_TH_VALUE}    อยู่เอง
${ROOMOWNER_MANAGETYPE_SELFLIVE_EN_VALUE}    Self live
${ROOMOWNER_MANAGETYPE_SELFLIVEID_VALUE}    1
${ROOMOWNERMANAGETYPE_RELATIVESLIVE_TH_VALUE}    ญาติอยู่
${ROOMOWNERMANAGETYPE_RELATIVESLIVE_EN_VALUE}    Relatives live
${ROOMOWNERMANAGETYPE_RELATIVESLIVEID_VALUE}    2
${ROOMOWNER_MANAGETYPE_RENT_TH_VALUE}    ปล่อยเช่า
${ROOMOWNER_MANAGETYPE_RENT_EN_VALUE}    Rent
${ROOMOWNER_MANAGETYPE_RENTID_VALUE}    3
${ROOMOWNER_MANAGETYPE_RENTINGCOMMONAREAS_TH_VALUE}    เช่าพื้นที่ส่วนกลาง
${ROOMOWNER_MANAGETYPE_RENTINGCOMMONAREAS_EN_VALUE}    Renting common areas
${ROOMOWNER_MANAGETYPE_RENTINGCOMMONAREASID_VALUE}    4
${ROOMOWNER_MANAGETYPE_NOTRESIDING_TH_VALUE}    ยังไม่เข้าพักอาศัย
${ROOMOWNER_MANAGETYPE_NOTRESIDING_EN_VALUE}    Not residing
${ROOMOWNER_MANAGETYPE_NOTRESIDINGID_VALUE}    5
#Language of documents
${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_TH_VALUE}    ภาษาไทย
${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAI_EN_VALUE}    Thai
${ROOMOWNER_LANGUAGEOFDOCUMENTS_THAIID_VALUE}    1
${ROOMOWNER_LANGUAGEOFDOCUMENTS_ENGLISH_TH_VALUE}    ภาษาอังกฤษ
${ROOMOWNER_LANGUAGEOFDOCUMENTS_ENGLISH_EN_VALUE}    English
${ROOMOWNER_LANGUAGEOFDOCUMENTS_ENGLISHID_VALUE}    2    
#Address (for invoicing, receipt)
${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_1_VALUE}    Address1
${ROOMOWNER_ADDRESS_FORINVOICINGRECEIPT_2_VALUE}    Address2
#Electric start unit *
${ROOMOWNER_ELECTRICSTARTUNIT_1_VALUE}    4
${ROOMOWNER_ELECTRICSTARTUNIT_2_VALUE}    5
#Water start unit *
${ROOMOWNER_WATERSTARTUNIT_1_VALUE}    6
${ROOMOWNER_WATERSTARTUNIT_2_VALUE}    7   
############## Asset list ############## 
#Remark
${ROOMOWNER_ASSET_REMARK_1_VALUE}    Remark1
${ROOMOWNER_ASSET_REMARK_2_VALUE}    Remark2   

############## Juristic person ############## 
#Company name *
${ROOMOWNER_COMPANYNAME_1_VALUE}    CompanyName1
${ROOMOWNER_COMPANYNAME_2_VALUE}    CompanyName2
#Short name
${ROOMOWNER_SHORTNAME_1_VALUE}    ShortName1
${ROOMOWNER_SHORTNAME_2_VALUE}    ShortName2
#Juristic id
${ROOMOWNER_JURISTICID_1_VALUE}    1112211122
${ROOMOWNER_JURISTICID_2_VALUE}    3331133311
#Tax identification number *
${ROOMOWNER_TAXIDENTIFICATIONNUMBER_1_VALUE}    11122
${ROOMOWNER_TAXIDENTIFICATIONNUMBER_2_VALUE}    33311
# #Mobile
# ${ROOMOWNER_MOBILE_1_VALUE}    08121212121
# ${ROOMOWNER_MOBILE_2_VALUE}    08313131313
#Fax
${ROOMOWNER_FAX_1_VALUE}    021234567
${ROOMOWNER_FAX_2_VALUE}    027654321


#-------------------------------------------- delete data mulct_condition --------------------------------------------#
# StampDelete
${ROOMOWNER_STAMPDELETE_DELETETAT_VALUE}    '2022-01-07 00:00:00'
${ROOMOWNER_STAMPDELETE_FILENAME_VALUE}    M12_1_1_2_000_MulctMethod_Success_Create_VerifyAction.sql
################################################################-- capture page screenshot --################################################################
#-------------------------------------------- Create --------------------------------------------#	
${ROOMOWNER_CREATE_M13_0_1_2_000_SUCCESS_SCREENSHOT}    M13_0_1_2_000_RoomOwner_Success_Create_Status1_ThaiNationals_VerifyScreen_Screen.png
${ROOMOWNER_CREATE_M13_0_1_2_001_SUCCESS_SCREENSHOT}    M13_0_1_2_001_RoomOwner_Success_Create_Status1_Foreigners_VerifyScreen_Screen.png
${ROOMOWNER_CREATE_M13_0_1_2_002_SUCCESS_SCREENSHOT}    M13_0_1_2_002_RoomOwner_Success_Create_Status1_JuristicPerson_VerifyScreen_Screen.png
${ROOMOWNER_CREATE_M13_0_1_2_003_SUCCESS_SCREENSHOT}    M13_0_1_2_003_RoomOwner_Success_Create_Status1_VerifyScreen_Screen.png
${ROOMOWNER_CREATE_M13_1_1_2_000_SUCCESS_SCREENSHOT}    M13_1_1_2_000_RoomOwner_Success_Create_Status1_VerifyAction_Screen.png

#-------------------------------------------- View --------------------------------------------#	
${ROOMOWNER_VIEW_M13_0_1_5_000_SUCCESS_SCREENSHOT}    M13_0_1_5_000_RoomOwner_Success_View_Status2_ThaiNationals_VerifyScreen_Screen.png
${ROOMOWNER_VIEW_M13_0_1_5_001_SUCCESS_SCREENSHOT}    M13_0_1_5_001_RoomOwner_Success_View_Status2_Foreigners_VerifyScreen_Screen.png
${ROOMOWNER_VIEW_M13_0_1_5_002_SUCCESS_SCREENSHOT}    M13_0_1_5_002_RoomOwner_Success_View_Status2_JuristicPerson_VerifyScreen_Screen.png
${ROOMOWNER_VIEW_M13_1_1_5_000_SUCCESS_SCREENSHOT}    M13_1_1_5_000_RoomOwner_Success_View_Status2_VerifyAction_Screen.png


#-------------------------------------------- Edit --------------------------------------------#	
${ROOMOWNER_EDIT_M13_0_1_3_000_SUCCESS_SCREENSHOT}    M13_0_1_3_000_RoomOwner_Success_Edit_Status2_ThaiNationals_VerifyScreen_Screen.png
${ROOMOWNER_EDIT_M13_0_1_3_001_SUCCESS_SCREENSHOT}    M13_0_1_3_001_RoomOwner_Success_Edit_Status2_Foreigners_VerifyScreen_Screen.png
${ROOMOWNER_EDIT_M13_0_1_3_002_SUCCESS_SCREENSHOT}    M13_0_1_3_002_RoomOwner_Success_Edit_Status2_JuristicPerson_VerifyScreen_Screen.png
${ROOMOWNER_EDIT_M13_1_1_3_000_SUCCESS_SCREENSHOT}    M13_1_1_3_000_RoomOwner_Success_Edit_Status2_ThaiNationals_VerifyAction_Screen.png
${ROOMOWNER_EDIT_M13_1_1_3_001_SUCCESS_SCREENSHOT}    M13_1_1_3_001_RoomOwner_Success_Edit_Status2_Foreigners_VerifyAction_Screen.png
${ROOMOWNER_EDIT_M13_1_1_3_002_SUCCESS_SCREENSHOT}    M13_1_1_3_002_RoomOwner_Success_Edit_Status2_JuristicPerson_VerifyAction_Screen.png

#-------------------------------------------- Changeowner --------------------------------------------#	
${ROOMOWNER_CHANGEOWNER_M13_0_1_31_000_SUCCESS_SCREENSHOT}    M13_0_1_31_000_RoomOwner_Success_ChangeOwner_Status2_ThaiNationals_VerifyScreen_Screen.png
${ROOMOWNER_CHANGEOWNER_M13_0_1_31_001_SUCCESS_SCREENSHOT}    M13_0_1_31_001_RoomOwner_Success_ChangeOwner_Status2_Foreigners_VerifyScreen_Screen.png
${ROOMOWNER_CHANGEOWNER_M13_0_1_31_002_SUCCESS_SCREENSHOT}    M13_0_1_31_002_RoomOwner_Success_ChangeOwner_Status2_JuristicPerson_VerifyScreen_Screen.png
${ROOMOWNER_CHANGEOWNER_M13_1_1_31_000_SUCCESS_SCREENSHOT}    M13_1_1_31_000_RoomOwner_Success_ChangeOwner_Status2_VerifyAction_Screen.png




















