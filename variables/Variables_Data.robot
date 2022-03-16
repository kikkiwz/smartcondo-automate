*** Variables ***
################################################################-- login --################################################################

${URL_USERLOGIN}    /api/rfg/projectmanagement/Scusers/userLogin
${USERLOGIN}    userLogin
################################################################-- deleteBankAccount --################################################################
${URL_DELETEBANKACCOUNT}    /api/rfg/projectmanagement/bankaccountmanagement/deleteBankAccount
${DELETEBANKACCOUNT}    deleteBankAccount

################################################################-- deleteEmployeeManagement --################################################################
${URL_DELETEEMPLOYEEMANAGEMENT}    /api/rfg/projectmanagement/employeemanagement/deleteEmployee/[EmployeeId]                      
${DELETEEMPLOYEEMANAGEMENT}    deleteEmployee

################################################################-- MulctMethod --################################################################
${URL_CREATEMULCTMETHOD}    /api/rfg/projectmanagement/mastersetting/mulctmethodmangement/createMulctMethod          
${CREATEMULCTMETHOD}    createMulctMethod
${DATA_MULCTMETHOD_NAMETH_VALUE}    ค่าปรับ
${DATA_MULCTMETHOD_STATUS_VALUE}    1
${DATA_MULCTMETHOD_ADJUSTMENTRATE_VALUE}    1
${DATA_MULCTMETHOD_CALCULATEMULCTTYPE_VALUE}    1
${DATA_MULCTMETHOD_ADJUSTMENTRATETYPE_VALUE}    1
${DATA_MULCTMETHOD_UNITFROMTO_VALUE}    1

${URL_DELETEMULCTMETHOD}    /api/rfg/projectmanagement/mastersetting/mulctmethodmangement/deleteMulctMethod
${DELETEMULCTMETHOD}    deleteMulctMethod
################################################################-- MulctCode --################################################################
${URL_CREATEMULCTCODE}    /api/rfg/projectmanagement/mastersetting/mulctcodemangement/createMulctCode
${CREATEMULCTCODE}    createMulctCode
${DATA_MULCTCODE_NAMETH_VALUE}    รหัสค่าปรับ
${DATA_MULCTCODE_NAMEEN_VALUE}    nameEn
${DATA_MULCTCODE_GROUPTYPEID_VALUE}    1
${DATA_MULCTCODE_MULCTCODE_VALUE}    1234
${DATA_MULCTCODE_REMARK_VALUE}    remark
${DATA_MULCTCODE_STATUS_VALUE}    1
${DATA_MULCTCODE_TAX_VALUE}    2
${DATA_MULCTCODE_VAT_VALUE}    4
${DATA_MULCTCODE_INDEX_VALUE}    1

${URL_DELETEMULCTCODE}    /api/rfg/projectmanagement/mastersetting/mulctcodemangement/deleteMulctCode
${DELETEMULCTCODE}    deleteMulctCode  


################################################################-- CheckAsset --################################################################
${URL_CREATECHECKASSET}    /api/rfg/projectmanagement/checkassetmanagement/createCheckAsset
${CREATECHECKASSET}    createCheckAsset
${DATA_CHECKASSET_NAMETH_VALUE}    ชื่ออุปกรณ์ภาษาไทย
${DATA_CHECKASSET_NAMEEN_VALUE}    CheckAssetName
${DATA_CHECKASSET_REMARK_VALUE}    remark
${DATA_CHECKASSET_STATUS_VALUE}    0
# {
#   "nameTh": "TESTกรณ์ภาษ",
#   "nameEn": "TEST",
#   "remark": "หมายเหตุ1"
# }
${URL_UPDATECHECKASSET}    /api/rfg/projectmanagement/checkassetmanagement/updateCheckAsset/[id]
${UPDATECHECKASSET}    updateCheckAsset  
# {
#   "status": 0
# }
################################################################-################################################################


################################################################-- IncomeCode --################################################################
${URL_DELETEINCOMECODE}    /api/rfg/projectmanagement/mastersetting/incomecodemangement/deleteIncomeCode
${DELETEINCOMECODE}    deleteIncomeCode

${URL_CREATEINCOME}    /api/rfg/projectmanagement/mastersetting/incomecodemangement/createIncomeCode
${CREATEINCOME}    createIncome
${DATA_INCOMECODE_NAMETH_VALUE}    เทสรหัสรายได้1
${DATA_INCOMECODE_NAMEEN_VALUE}    TestIncomeCode1
${DATA_INCOMECODE_INCOMECODE_VALUE}    11121150
${DATA_INCOMECODE_STATUS_VALUE}    1
${DATA_INCOMECODE_GROUPTYPEID_VALUE}    2
${DATA_INCOMECODE_PRICEUNIT_VALUE}    6
${DATA_INCOMECODE_CALCULATIONTIME_VALUE}    7
${DATA_INCOMECODE_CALCULATIONMETHODID_VALUE}    1
${DATA_INCOMECODE_VATPERCENT_VALUE}    3
${DATA_INCOMECODE_TAXPERCENT_VALUE}    3
${DATA_INCOMECODE_CALCULATEMULCTFLAG_VALUE}    0
${DATA_INCOMECODE_REMARK_VALUE}    remark1
${DATA_INCOMECODE_NAMETH_VALUE2}    เทสรหัสรายได้2
${DATA_INCOMECODE_NAMEEN_VALUE2}    TestIncomeCode2
${DATA_INCOMECODE_INCOMECODE_VALUE2}    11121151
${DATA_INCOMECODE_STATUS_VALUE2}    1
${DATA_INCOMECODE_GROUPTYPEID_VALUE2}    2
${DATA_INCOMECODE_PRICEUNIT_VALUE2}    6
${DATA_INCOMECODE_CALCULATIONTIME_VALUE2}    7
${DATA_INCOMECODE_CALCULATIONMETHODID_VALUE2}    1
${DATA_INCOMECODE_VATPERCENT_VALUE2}    3
${DATA_INCOMECODE_TAXPERCENT_VALUE2}    3
${DATA_INCOMECODE_CALCULATEMULCTFLAG_VALUE2}    0
${DATA_INCOMECODE_REMARK_VALUE2}    remark2

#-------------------------------------------- Other --------------------------------------------#	

#response description
${VALUE_DESCRIPTION_THEREQUESTEDOPERATIONWASSUCCESSFULLY}    The requested operation was successfully.

#Other field
${FIELD_RESULTCODE}    resultCode
${FIELD_RESULTDESCRIPTION}    resultDescription
${FIELD_RESULTDESCRIPTIONTH}    resultDescriptionTH
${FIELD_RESULTDESCRIPTIONTH_Error}    resultDescriptionTh
${FIELD_RESULTDATA}    resultData
# ${FIELD_RESULTDESCRIPTIONEN}    resultDescriptionEN
${FIELD_XACCESSTOKEN}    xAccessToken
${FIELD_XSESSIONID}    xSessionId
${FIELD_ID}    id
${FIELD_MENUNAME}    menuName