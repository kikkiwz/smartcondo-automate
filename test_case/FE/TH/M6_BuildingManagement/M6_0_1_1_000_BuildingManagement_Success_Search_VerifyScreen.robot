*** Settings ***
Resource    ../../../../variables/Variables.robot    
Resource    ../../../../keyword/Keyword.robot
Suite Setup    Set Library Search Order    Selenium2Library    AppiumLibrary
*** Test Cases ***
################### [Search] BuildingManagement ###################
M6_0_1_1_000_BuildingManagement_Success_Search_VerifyScreen [Verify screen page "Building Search"]
    [Documentation]    Step is :    
    ...    1. open link : https://login.smartcondo.net/en  
    ...    2. login
    ...    3. click building management

    [Setup]    Open Browser To Login Page Click icon Building for create Building    ${BUILDING_1}
       
    Log To Console    ${\n}=========== [Search] BuildingManagement ===============     

    #========== Check BuildingManagement ======
    #Building Management
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_SEARCH_LBL_INCOMECODEMANAGEMENT_LOCATOR}    ${BUILDINGMANAGEMENT_SEARCH_LBL_INCOMECODEMANAGEMENT_TH} 
    #Create button
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_BTN_CREATE_LOCATOR}    ${BUILDINGMANAGEMENT_BTN_CREATE_TH} 
    Wait Until Contains Element Should Be Enabled    ${BUILDINGMANAGEMENT_BTN_CREATE_LOCATOR}
    #Download room import format button
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_BTN_DOWNLOADROOMIMPORTFORMAT_LOCATOR}    ${BUILDINGMANAGEMENT_BTN_DOWNLOADROOMIMPORTFORMAT_TH} 
    Wait Until Contains Element Should Be Enabled    ${BUILDINGMANAGEMENT_BTN_DOWNLOADROOMIMPORTFORMAT_LOCATOR}
    #Income code list button
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_BTN_INCOMECODELIST_LOCATOR}    ${BUILDINGMANAGEMENT_BTN_INCOMECODELIST_TH} 
    Wait Until Contains Element Should Be Enabled    ${BUILDINGMANAGEMENT_BTN_INCOMECODELIST_LOCATOR}
    
    #Building name
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_SEARCH_LBL_BUILDINGNAME_LOCATOR}    ${BUILDINGMANAGEMENT_SEARCH_LBL_BUILDINGNAME_TH} 
    
    #Search button
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_SEARCH_BTN_SEARCH_LOCATOR}    ${BUILDINGMANAGEMENT_SEARCH_BTN_SEARCH_TH} 
    Wait Until Contains Element Should Be Enabled    ${BUILDINGMANAGEMENT_SEARCH_BTN_SEARCH_LOCATOR}
    #Clear button
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_SEARCH_BTN_CLEAR_LOCATOR}    ${BUILDINGMANAGEMENT_SEARCH_BTN_CLEAR_TH} 
    Wait Until Contains Element Should Be Enabled    ${BUILDINGMANAGEMENT_SEARCH_BTN_CLEAR_LOCATOR}

    #No
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_NO_LOCATOR}    ${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_NO_TH} 
    #Building name
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_BUILDINGNAME_LOCATOR}    ${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_BUILDINGNAME_TH} 
    #Phone number
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_PHONENUMBER_LOCATOR}    ${BUILDINGMANAGEMENT_SEARCH_LBL_RESULT_PHONENUMBER_TH} 

    #================ Check Value Table ================
    Check Value Table Building Management    ${PROPERTYE_ID_1_VALUE}

Verify over : 255 Length ,Textbox : Income Name and Type : string 
    # maxlength="255"
    Wait Should Contain Get Element Attribute    ${BUILDINGMANAGEMENT_SEARCH_TXT_BUILDINGNAME_LOCATOR}    ${ATTRIBUTE_MAXLENGTH}    ${DEFAULT_TXT_MAXLENGTH_255}

Verify tooltip in button - button : View - button : Edit - button : Delete 
    
#     #========== Create Building Management ======
#     Log To Console    ${\n}=========== [Create] BuildingManagement ===============
    # Create BuildingManagement input require field data

#     # Create BuildingManagement input all field data 

#     #================ Check Value Table ================
#     Check Value Table Building Management    ${PROPERTYE_ID_1_VALUE}

    #edit icon
    Wait Until Contains Element Should Be Visible    ${BUILDINGMANAGEMENT_BTN_EDIT_LOCATOR}
    Mouse Down    ${BUILDINGMANAGEMENT_BTN_EDIT_LOCATOR}
    Sleep    0.5s
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_LBL_EDIT_TH_LOCATOR}    ${BUILDINGMANAGEMENT_LBL_EDIT_TH} 
    #delete icon
    Wait Until Contains Element Should Be Visible    ${BUILDINGMANAGEMENT_BTN_DELETE_LOCATOR}
    Mouse Down    ${BUILDINGMANAGEMENT_BTN_DELETE_LOCATOR}
    Sleep    0.5s
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_LBL_DELETE_TH_LOCATOR}    ${BUILDINGMANAGEMENT_LBL_DELETE_TH} 
    
Verify default number button
    #20
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_BTN_20_LOCATOR}    ${BUILDINGMANAGEMENT_BTN_20} 
    #50
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_BTN_50_LOCATOR}    ${BUILDINGMANAGEMENT_BTN_50} 
    # 100
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_BTN_100_LOCATOR}    ${BUILDINGMANAGEMENT_BTN_100} 
    # 1000
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_BTN_1000_LOCATOR}    ${BUILDINGMANAGEMENT_BTN_1000} 
    
    #paging
    ${replacePage}=    Paging Replace    ${rowcountSearchBuildingManagement}
    ${paging}=    Set Variable    ${replacePage[0]}
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_LBL_PagesXFromY_LOCATOR}    ${paging}

    Wait Until Contains Element Should Be Visible    ${BUILDINGMANAGEMENT_ICON_ARRORWLEFT_LOCATOR}
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_LBL_PAGE_LOCATOR}    ${BUILDINGMANAGEMENT_LBL_PAGE_1}
    Wait Until Contains Element Should Be Visible    ${BUILDINGMANAGEMENT_ICON_ARRORWRIGHT_LOCATOR}

Verify screen page "Incomecode"
    #Click Create BuildingManagement
    Click Element Page    ${BUILDINGMANAGEMENT_BTN_INCOMECODELIST_LOCATOR}
    Sleep    0.5s

    #Incomecode list
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_INCOMECODE_LBL_INCOMECODELIST_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODE_LBL_INCOMECODELIST_TH} 
    
    #IncomeCode
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_INCOMECODE_SEARCH_LBL_RESULT_INCOMECODE_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODE_SEARCH_LBL_RESULT_INCOMECODE_TH} 
    #Name
    Wait Until Contains Element Text Should Be    ${BUILDINGMANAGEMENT_INCOMECODE_SEARCH_LBL_RESULT_INCOMENAME_LOCATOR}    ${BUILDINGMANAGEMENT_INCOMECODE_SEARCH_LBL_RESULT_INCOMENAME_TH} 
    
    #copy icon
    Wait Until Contains Element Should Be Visible    ${BUILDINGMANAGEMENT_BTN_COPY_LOCATOR}

    #capture page screenshot
    Selenium2Library.Capture Page Screenshot    ${BUILDINGMANAGEMENT_SEARCH_M6_0_1_1_000_SUCCESS_SCREENSHOT}
    
#     ################### Generic Test Case Teardown ###################
# #     [Teardown]    Generic Test Case Teardown BuildingManagement    ${DATA_MULCTMETHOD_NAMETH_VALUE}    ${mulctCodeId}    ${mulctMethodId}
