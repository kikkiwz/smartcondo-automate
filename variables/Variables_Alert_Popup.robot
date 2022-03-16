*** Variables ***

################################################################-- Alert Confirm Popup Locator --################################################################ 
#heder
${ALERT_TITLE_LOCATOR}    id=swal2-title
# ${ALERT_TITLE_LOCATOR}    id=lblPopupHeaderConfirm

#detail content
${ALERT_CONTENT_LOCATOR}    class=swal2-html-container

# ${ALERT_CONTENT_LOCATOR}    id=lblPopupDetailConfirm1
# ${ALERT_CONTENT1_LOCATOR}    id=lblPopupDetailConfirm1
# ${ALERT_CONTENT2_LOCATOR}    id=lblPopupDetailConfirm2
# ${ALERT_CONTENT3_LOCATOR}    id=lblPopupDetailConfirm3

# #detail content
# ${ALERT_CONTENT_TXTERROR1_LOCATOR}    id=lblPopupDetailTxtErrorConfirm1
# ${ALERT_CONTENT_TXTERROR2_LOCATOR}    id=lblPopupDetailTxtErrorConfirm2

################################################################-- Alert Title and Content --################################################################ 
#-------------------------------------- delete --------------------------------------------------#
${ALERT_TITLE_DELETE_TH}    ยืนยันการลบข้อมูล
${ALERT_TITLE_DELETE_EN}    Confirm delete
${ALERT_CONTENT_DELETE1_TH}    คุณต้องการลบข้อมูล
${ALERT_CONTENT_DELETE1_EN}    Do you want to delete
${ALERT_CONTENT_DELETE2_TH}    หรือไม่ ?
${ALERT_CONTENT_DELETE2_EN}    ?
${ALERT_TITLE_CONFRIM_DELETE_TH}    ยืนยันการลบข้อมูล
${ALERT_TITLE_CONFRIM_DELETE_EN}    Confirm delete
#-------------------------------------- Enable --------------------------------------------------#
${ALERT_TITLE_ENABLE_TH}    ยืนยันการเปิดใช้งาน
${ALERT_TITLE_ENABLE_EN}    Confirm to enable
${ALERT_CONTENT_ENABLE1_TH}    คุณต้องการเปิดใช้งาน
${ALERT_CONTENT_ENABLE1_EN}    Do you want to enable
${ALERT_CONTENT_ENABLE2_TH}    หรือไม่ ?
${ALERT_CONTENT_ENABLE2_EN}    ?


#-------------------------------------- Disable --------------------------------------------------#
${ALERT_TITLE_DISABLE_TH}    ยืนยันการปิดใช้งาน
${ALERT_TITLE_DISABLE_EN}    Confirm to disable
${ALERT_CONTENT_DISABLE1_TH}    คุณต้องการปิดใช้งาน
${ALERT_CONTENT_DISABLE1_EN}    Do you want to disable
${ALERT_CONTENT_DISABLE2_TH}    หรือไม่ ?
${ALERT_CONTENT_DISABLE2_EN}    ?

#-------------------------------------- Save ------------------------------------------------------#
${ALERT_TITLE_CONFIRMSAVE_TH}    ยืนยันการบันทึก
${ALERT_TITLE_CONFIRMSAVE_EN}    Confirm save
${ALERT_CONTENT_CONFIRMSAVE1_TH}    คุณยังไม่ได้บันทึกข้อมูล คุณต้องการบันทึกข้อมูลและเปิด tab
${ALERT_CONTENT_CONFIRMSAVE1_EN}    You haven't save data , Do you want to save and continue to
${ALERT_CONTENT_CONFIRMSAVE2_TH}    ?
${ALERT_CONTENT_CONFIRMSAVE2_EN}    tab ?

#-------------------------------------- login user has been deleted --------------------------------------------------#
${ALERT_CONTENT_USERHASBEENDELETED_TH}    ไม่สามารถดำเนินการได้เนื่องจากบัญชีผู้ใช้งานถูกลบ กรุณาติดต่อ 02-026-1911
${ALERT_CONTENT_USERHASBEENDELETED_EN}    The operation cannot be performed because this user has been deleted. Please contact 02-026-1911.
${ALERT_CONTENT_USEREXPIRE_TH}    ไม่สามารถดำเนินการได้เนื่องจากบัญชีผู้ใช้งานหมดอายุ กรุณาติดต่อ 02-026-1911
${ALERT_CONTENT_USEREXPIRE_EN}    The operation cannot be performed because the account has expired. Please contact 02-026-1911.

#-------------------------------------- Code for connect room --------------------------------------------------#
${ALERT_HEADER_CODEFORCONNECTROOM_TH}    Code สำหรับเชื่อมต่อห้องพัก
${ALERT_HEADER_CODEFORCONNECTROOM_EN}    Code for connect room
${ALERT_HEADER_CODEFORCONNECTROOM_LOCATOR}    id=lblViewCode
${ALERT_HEADER_QRCODELINE_TH}    QR CODE สำหรับแจ้งเตือนผ่าน (LINE)
${ALERT_HEADER_QRCODELINE_EN}    QR CODE Code for LINE
${ALERT_HEADER_QRCODELINE_LOCATOR}    id=lblViewQRCode
${ALERT_CONTENT_CODEFORCONNECTROOM_LOCATOR}    xpath=//*[@id="cdk-overlay-2"]/nz-modal-container/div/div/div[2]/div/div[1]/div/dx-text-box

# ${ALERT_TITLE_SENDINFORMATION_TH}    ยืนยันการส่งข้อมูล
# ${ALERT_TITLE_SENDINFORMATION_EN}    Confirm to send information
# ${ALERT_CONTENT_SENDINFORMATION1_TH}    ท่านตรวจสอบข้อมูลถูกต้องเรียบร้อย ?
# ${ALERT_CONTENT_SENDINFORMATION1_EN}    Your checked the information is correct?
# ${ALERT_CONTENT_SENDINFORMATION2_TH}    กดปุ่ม "ยืนยัน" เพื่อส่งข้อมูล
# ${ALERT_CONTENT_SENDINFORMATION2_EN}    Click "Confirm" to send information.
# ${ALERT_TITLE_PLEASECHECKINFORMATION_TH}    กรุณาตรวจสอบข้อมูล
# ${ALERT_TITLE_PLEASECHECKINFORMATION_EN}    Please check the information.

################################################################-- alert bottom Locator --################################################################ 
#alert bottom
${ALERT_BOTTOM_LBL_LOCATOR}     class=dx-toast-message
${ALERT_BOTTOM_LBL_XPATH_LOCATOR}     xpath=/html/body/div[2]/div/div/div[2]

################################################################-- Alert button --################################################################ 
${ALERT_BTN_CONFIRM_TH}    ยืนยัน
${ALERT_BTN_CONFIRM_EN}    Confirm
${ALERT_BTN_CONFIRM_LOCATOR}    class=swal2-confirm
# ${ALERT_BTN_CONFIRM_LOCATOR}    id=btnPopupConfirmConfirm
${ALERT_BTN_OK_TH}    ตกลง
${ALERT_BTN_OK_EN}    OK
${ALERT_BTN_OK_LOCATOR}    class=swal2-confirm
${ALERT_BTN_CANCEL_TH}    ยกเลิก
${ALERT_BTN_CANCEL_EN}    Cancel
${ALERT_BTN_CANCEL_LOCATOR}    class=swal2-cancel
# ${ALERT_BTN_CANCEL_LOCATOR}    id=btnPopupConfirmCancel
${ALERT_BTN_SMS_TH}    เอสเอ็มเอส
${ALERT_BTN_SMS_EN}    SMS
${ALERT_BTN_SMS_LOCATOR}    id=btnPopUpSMS
${ALERT_BTN_EMAIL_TH}    อีเมล
${ALERT_BTN_EMAIL_EN}    Email
${ALERT_BTN_EMAIL_LOCATOR}    id=btnPopUpEmail
${ALERT_BTN_FORGOTPASSWORDCLOSE_LOCATOR}    id=btnPopUpClose
${ALERT_BTN_DELETE_TH}    ลบ
${ALERT_BTN_DELETE_EN}    Delete
${ALERT_BTN_DELETE_LOCATOR}    id=btnPopupConfirmConfirm
${ALERT_BTN_SAVE_TH}    บันทึก
${ALERT_BTN_SAVE_EN}    Save
${ALERT_BTN_SAVE_LOCATOR}    id=btnPopupConfirm
${ALERT_BTN_CONFIRMLIST_TH}    ยืนยันการทำรายการ
${ALERT_BTN_CONFIRMLIST_EN}    Confirm
${ALERT_BTN_CONFIRMLIST_LOCATOR}    id=btnPopupConfirmConfirm
${ALERT_BTN_NEXT_TH}    ถัดไป
${ALERT_BTN_NEXT_EN}    Next
${ALERT_BTN_NEXT_LOCATOR}    id=btnPopupConfirmNext
${ALERT_BTN_COPYCODE_TH}    คัดลอก
${ALERT_BTN_COPYCODE_EN}    Copy code
${ALERT_BTN_COPYCODE_LOCATOR}    id=btnCopy
################################################################-- Alert --################################################################
# #Alert
# ${ALERT_TITLE_TH}    แจ้งเตือน
# ${ALERT_TITLE_EN}    Alert!
# ${ALERT_CONTENT_SAVE_SUCCESS_TH}    บันทึกข้อมูลเรียบร้อยแล้ว
# ${ALERT_CONTENT_SAVE_SUCCESS_EN}    Data saved successfully.

# ${ALERT_CONTENT_DELETE_POSITION_SUCCESS_TH}    ลบข้อมูลตำแหน่งเรียบร้อย
# ${ALERT_CONTENT_DELETE_POSITION_SUCCESS_EN}    Delete Position Complete
# ${ALERT_CONTENT_DELETE_LEVEL_SUCCESS_TH}    ลบข้อมูลระดับเรียบร้อย
# ${ALERT_CONTENT_DELETE_LEVEL_SUCCESS_EN}    Delete Level Complete
# ${ALERT_CONTENT_DELETE_COMPANY_SUCCESS_TH}    ลบข้อมูลบริษัทเรียบร้อย
# ${ALERT_CONTENT_DELETE_COMPANY_SUCCESS_EN}    Delete Company Complete
# ${ALERT_CONTENT_DELETE_EMPLOYEE_SUCCESS_TH}    ลบข้อมูลพนักงานเรียบร้อย
# ${ALERT_CONTENT_DELETE_EMPLOYEE_SUCCESS_EN}    Delete Employee Complete

# #Alert not success
# ${ALERT_CONTENT_DELETE_POSITION_NOT_SUCCESS_TH}    ตำแหน่งนี้ถูกใช้งานอยู่
# ${ALERT_CONTENT_DELETE_POSITION_NOT_SUCCESS_EN}    This position still active
# ${ALERT_CONTENT_DELETE_LEVEL_NOT_SUCCESS_TH}    ระดับนี้ถูกใช้งานอยู่
# ${ALERT_CONTENT_DELETE_LEVEL_NOT_SUCCESS_EN}    This level still active.
# ${ALERT_CONTENT_DELETE_COMPANY_NOT_SUCCESS_TH}    บริษัทนี้ มีพนักงานสังกัดอยู่
# ${ALERT_CONTENT_DELETE_COMPANY_NOT_SUCCESS_EN}    This company still active.
# ${ALERT_CONTENT_ADD_COMPANY_NOT_SUCCESS_TH}    ข้อมูลซ้ำซ้อน
# ${ALERT_CONTENT_ADD_COMPANY_NOT_SUCCESS_EN}    Data existed

################################################################-- text Valid textbox --################################################################ 
#-------------------------------------- All --------------------------------------------------#
${VALID_LBL_PLEASEINPUTDATA_TH}     กรุณากรอกข้อมูล 
${VALID_LBL_PLEASEINPUTDATA_EN}     Please input data
${VALID_LBL_PLEASESELECTDATA_TH}     กรุณาเลือกข้อมูล 
${VALID_LBL_PLEASESELECTDATA_EN}     Please select data
${VALID_LBL_PLEASESELECTDATA2_EN}     Please Select data
#-------------------------------------- Forgot password--------------------------------------------------#
${VALID_LBL_PHONEISREQUIRED_TH}     กรุณากรอกเบอร์โทรศัพท์ 
${VALID_LBL_PHONEISREQUIRED_EN}     Phone is required
${VALID_LBL_PHONEISNOTVALID_TH}     เบอร์โทรศัพท์ไม่ถูกต้อง 
${VALID_LBL_PHONEISNOTVALID_EN}     Phone is not valid
