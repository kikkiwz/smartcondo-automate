*** Settings ***
Library    Selenium2Library
Library    Collections
Library    String
Library    DateTime
Library    OperatingSystem
Library    BuiltIn
Library    JSONLibrary
Library    ExcelLibrary

Resource    ../keyword/Keyword_Request.robot
Resource    ../keyword/Keyword_Calendar.robot
Resource    ../keyword/Keyword_Datetime.robot
Resource    ../keyword/Keyword_Alert_Popup.robot

Resource    ../keyword/Keyword_Building_room.robot
Resource    ../keyword/Keyword_SmartCondo.robot

#login logout
Resource    ../keyword/Keyword_Login.robot
Resource    ../keyword/Keyword_Logout.robot

#DB
Resource    ../keyword/Keyword_MySQL.robot
Resource    ../keyword/Keyword_VerifyDB_SmartCondo.robot
Resource    ../keyword/Keyword_VerifyDB_M1_Login.robot
Resource    ../keyword/Keyword_VerifyDB_M2_RoleManagement.robot
Resource    ../keyword/Keyword_VerifyDB_M3_UserAccount.robot
Resource    ../keyword/Keyword_VerifyDB_M6_BuildingManagement.robot
Resource    ../keyword/Keyword_VerifyDB_M8_BankAccount.robot
Resource    ../keyword/Keyword_VerifyDB_M9_ExpenseManagement.robot
Resource    ../keyword/Keyword_VerifyDB_M10_MulctcodeManagement.robot
Resource    ../keyword/Keyword_VerifyDB_M11_IncomeCodeManagement.robot
Resource    ../keyword/Keyword_VerifyDB_M12_MulctMethodManagement.robot
Resource    ../keyword/Keyword_VerifyDB_M13_RoomOwner.robot
Resource    ../keyword/Keyword_VerifyDB_M16_Account.robot
Resource    ../keyword/Keyword_VerifyDB_M22_CheckAssetManagement.robot
Resource    ../keyword/Keyword_VerifyDB_M32_EmployeeManagement.robot
Resource    ../keyword/Keyword_VerifyDB_M33_RepaireEquipManagement.robot
Resource    ../keyword/Keyword_VerifyDB_M7_RoomManagement.robot

#Fn
Resource    ../keyword/Keyword_Fn_M2_RoleManagement.robot
Resource    ../keyword/Keyword_Fn_M3_UserAccount.robot
Resource    ../keyword/Keyword_Fn_M6_BuildingManagement.robot
Resource    ../keyword/Keyword_Fn_M8_BankAccount.robot
Resource    ../keyword/Keyword_Fn_M9_ExpenseManagement.robot
Resource    ../keyword/Keyword_Fn_M10_MulctcodeManagement.robot
Resource    ../keyword/Keyword_Fn_M11_IncomeCodeManagement.robot
Resource    ../keyword/Keyword_Fn_M12_MulctMethodManagement.robot
Resource    ../keyword/Keyword_Fn_M13_RoomOwner.robot
Resource    ../keyword/Keyword_Fn_M16_Account.robot
Resource    ../keyword/Keyword_Fn_M22_CheckAssetManagement.robot
Resource    ../keyword/Keyword_Fn_M32_EmployeeManagement.robot
Resource    ../keyword/Keyword_Fn_M33_RepairEquipmentManagement.robot
Resource    ../keyword/Keyword_Fn_M7_RoomManagement.robot


#Excel
Resource    ../keyword/Keyword_Excel.robot

#api
Resource    ../keyword/Keyword_ApiSmartCondo.robot

#Mobile
Resource    ../keyword/Keyword_App.robot

#CreateData
Resource    ../keyword/Keyword_CreateData.robot



#Library Document
#https://robotframework.org/Selenium2Library/Selenium2Library.html#Timeout
#https://robotframework.org/robotframework/latest/libraries/BuiltIn.html
#https://robotframework.org/robotframework/latest/libraries/String.html
#https://robotframework.org/robotframework/latest/libraries/Collections.html

*** Keywords ***
################################################################-- Browser --################################################################
#Opens a new browser instance to the given url.
#${PAGE_URL} : Url path want to test.
#${BROWSER} : Google Chrome(googlechrome, chrome, gc) ,Firefox(firefox, ff),Internet Explorer(internetexplorer, ie),Safari(safari) and other.
Open Browser To Page
    Open Browser    ${PAGE_URL}    ${BROWSER}
	#Set Window Size  ${WIDTH}  ${HEIGHT} #For set window size receive value from testcase.
	#For open maximize browser window.
	Maximize Browser Window
    Title Should Be    ${TITLE_NAME}
	
####################################################
#Verifies that current page title equals title(The element in the top left corner).
#${title} : title name want to check receive value form testcase.
Check Title Name 
    [Arguments]    ${title}
    Title Should Be    ${title}
	
####################################################
#Verifies that element locator contains exact text expected and waits until element locator appears on current page.
#${locator}  : specified locate such as id, name, class, xpath, css and other(The description is below*).
#${expected} : expected text for check correct.
Wait Until Contains Element Text Should Be
    [Arguments]    ${locator}    ${expected}
    Run Keyword And Continue On Failure    Selenium2Library.Wait Until Page Contains Element    ${locator}    ${timeout}   error=${expected}
    Run Keyword And Continue On Failure    Selenium2Library.Element Text Should Be    ${locator}    ${expected}
    Log To Console    ${expected}
    Log    ${expected}

Wait Until Contains Element Text Should Be Get Text
    [Arguments]    ${locator}    ${expected}
    Run Keyword And Continue On Failure    Selenium2Library.Wait Until Page Contains Element    ${locator}    ${timeout}   error=${expected}
    ${actual}=    Selenium2Library.Get Text    ${locator}
    # log to console    ${expected} = ${actual}     
    Run Keyword And Continue On Failure    Selenium2Library.Element Text Should Be    ${locator}    ${expected}
    Log To Console    ${expected}
    Log    ${expected}

Wait Until Contains Element Text Should Be Get Value
    [Arguments]    ${locator}    ${expected}
    Run Keyword And Continue On Failure    Selenium2Library.Wait Until Page Contains Element    ${locator}    ${timeout}   error=${expected}
    ${actual}=    Selenium2Library.Get Value    ${locator}
    # log to console    ${expected} = ${actual}     
    Run Keyword And Continue On Failure    Should Be Equal    ${expected}    ${actual}
    Log To Console    ${expected}=${actual}
    Log    ${expected}=${actual}	
#**************************************************#
#Element Should Be Disabled : Verifies that element identified with locator is disabled.
#Element Should Be Enabled : Verifies that element identified with locator is enabled.
#Element Should Be Focused : Verifies that element identified with locator is focused.
#Element Should Be Visible : Verifies that the element identified by locator is visible.
#**************************************************#
####################################################
#Verifies that element identified with locator is disabled(such as cannot click button) and waits until element locator appears on current page.
#${locator}  : specified locate such as id, name, class, xpath, css and other(The description is below*).
Wait Until Contains Element Should Be Disabled
    [Arguments]    ${locator}
    Run Keyword And Continue On Failure    Selenium2Library.Wait Until Page Contains Element    ${locator}    ${timeout}   error=${locator}
    Run Keyword And Continue On Failure    Selenium2Library.Element Should Be Disabled    ${locator}
	
####################################################
#Verifies that element identified with locator is enabled and waits until element locator appears on current page.
#${locator}  : specified locate such as id, name, class, xpath, css and other(The description is below*).
Wait Until Contains Element Should Be Enabled
    [Arguments]    ${locator}
    Run Keyword And Continue On Failure    Selenium2Library.Wait Until Page Contains Element    ${locator}    ${timeout}   error=${locator}
    Run Keyword And Continue On Failure    Selenium2Library.Element Should Be Enabled    ${locator}
	
####################################################
#Verifies that element identified with locator is focused and waits until element locator appears on current page.
#${locator}  : specified locate such as id, name, class, xpath, css and other(The description is below*).
Wait Until Contains Element Should Be Focused
    [Arguments]    ${locator}
    Run Keyword And Continue On Failure    Selenium2Library.Wait Until Page Contains Element    ${locator}    ${timeout}   error=${locator}
    Run Keyword And Continue On Failure    Selenium2Library.Element Should Be Focused    ${locator}

####################################################
#Verifies that the element identified by locator is visible and waits until element locator appears on current page.
#${locator}  : specified locate such as id, name, class, xpath, css and other(The description is below*).
Wait Until Contains Element Should Be Visible
    [Arguments]    ${locator}
    Run Keyword And Continue On Failure    Selenium2Library.Wait Until Page Contains Element    ${locator}    ${timeout}   error=${locator}
    Run Keyword And Continue On Failure    Selenium2Library.Element Should Be Visible    ${locator}

####################################################
#Verifies that the element identified by locator is visible and waits until element locator appears on current page.
#${locator}  : specified locate such as id, name, class, xpath, css and other(The description is below*).
Wait Element Visible
    [Arguments]    ${locator}
    Run Keyword And Continue On Failure    Selenium2Library.Wait Until Element Is Visible    ${locator}    ${timeout}   error=${locator}
####################################################
#Verifies that the element identified by locator is visible and waits until element locator appears on current page.
#${locator}  : specified locate such as id, name, class, xpath, css and other(The description is below*).
Wait Until Contains Element Should Be Not Visible
    [Arguments]    ${locator}
    Run Keyword And Continue On Failure    Selenium2Library.Wait Until Page Contains Element    ${locator}    ${timeout}   error=${locator}
    Run Keyword And Continue On Failure    Selenium2Library.Element Should Not Be Visible    ${locator}

####################################################
#Verifies that the element identified by locator is visible and waits until element locator appears on current page.
#${locator}  : specified locate such as id, name, class, xpath, css and other(The description is below*).
Wait Element Not Visible
    [Arguments]    ${locator}
    Run Keyword And Continue On Failure    Selenium2Library.Wait Until Element Is Not Visible    ${locator}    ${timeout}   error=${locator}
#**************************************************#
#Click Button : Clicks button identified by locator.
#Click Link : Clicks a link identified by locator.
#Click Element : Click element identified by locator.
#Double Click Element : Double click element identified by locator.
#**************************************************#

####################################################
#Clicks button identified by locator(such as click save button, click cancel button and other) and waits until element locator is visible..
#${locator}  : specified locate such as id, name, class, xpath, css and other(The description is below*).
Click Button Page
    [Arguments]    ${locator}
	Run Keyword And Continue On Failure    Selenium2Library.Wait Until Element Is Visible    ${locator}    ${timeout}   error=${locator}
	Run Keyword And Continue On Failure    Selenium2Library.Click Button    ${locator}

####################################################
#Clicks a link identified by locator and waits until element locator is visible.
#${locator}  : specified locate such as id, name, class, xpath, css and other(The description is below*).
Click Link Page
    [Arguments]    ${locator}
	Run Keyword And Continue On Failure    Selenium2Library.Wait Until Element Is Visible    ${locator}    ${timeout}   error=${locator}
	Run Keyword And Continue On Failure    Selenium2Library.Click Link    ${locator}
	
####################################################
#Click element identified by locator and waits until element locator is visible.
#${locator}  : specified locate such as id, name, class, xpath, css and other(The description is below*).
# Click Element Page
#     [Arguments]    ${locator}
# 	Wait Until Element Is Visible    ${locator}    ${timeout}   error=${locator}
# 	Click Element    ${locator}

Click Element Page
    [Arguments]    ${locator}
	Run Keyword And Continue On Failure    Selenium2Library.Wait Until Element Is Visible    ${locator}    ${timeout}   error=${locator}
    Run Keyword And Continue On Failure    Selenium2Library.Wait Until Page Contains Element    ${locator}
	Run Keyword And Continue On Failure    Selenium2Library.Click Element    ${locator}
    Sleep    1s

####################################################
#Double click element identified by locator and waits until element locator is visible.
#${locator}  : specified locate such as id, name, class, xpath, css and other (The description is below*).
Click Element Double
    [Arguments]    ${locator}
	Run Keyword And Continue On Failure    Selenium2Library.Wait Until Element Is Visible    ${locator}    ${timeout}   error=false
	Double Click Element    ${locator}	

####################################################
#Types the given text into text field identified by locator and waits until element locator appears on current page.
#${locator} : specified locate such as id, name, class, xpath, css and other(The description is below*).
#${text} : The text for text into text field.
Wait Until Contains Input Text
    [Arguments]    ${locator}    ${text}
	Run Keyword And Continue On Failure    Selenium2Library.Wait Until Page Contains Element    ${locator}    ${timeout}   error=${text}
	Run Keyword And Continue On Failure    Selenium2Library.Input Text    ${locator}    ${text}	
    Log To Console    ${text}
    Log    ${text}

####################################################
#Types the given password into text field identified by locator and waits until element locator appears on current page.
#${locator} : specified locate such as id, name, class, xpath, css and other(The description is below*).
#${password} : The password for password into text field.
Wait Until Contains Input Password
    [Arguments]    ${locator}    ${password}
	Run Keyword And Continue On Failure    Selenium2Library.Wait Until Page Contains Element    ${locator}    ${timeout}   error=${password}
	Run Keyword And Continue On Failure    Input Password    ${locator}    ${password}	

####################################################
#${getText} : Returns the text value of element identified by locator.
#@{text} : Splits the string using separator as a delimiter string.
#Ex.Inspect from html receive data is "<p>Read our <a href="/dog-api/documentation">documentation</a> to find out more or try it out for yourself below.</p>" 
#Should be expected is "Read our documentation to find out more or try it out for yourself below."
Wait Until Contains Get Text Split String Join
    [Arguments]    ${locator}    ${expected}
	${getText}=    Selenium2Library.Get Text    ${locator}
	@{text}=    Split String    ${getText}
    ${newText}=  Evaluate  " ".join($text)
	Run Keyword And Continue On Failure    Should Be Equal  ${newText}    ${expected}
    Log To Console    ${expected}
    Log    ${expected}

####################################################
#Returns the text value of element identified by locator.
#${locator}  : specified locate such as id, name, class, xpath, css and other(The description is below*).
# Get Text String
#     [Arguments]    ${locator}
#     Until Element Is Visible    ${locator}    ${timeout}   error=${locator}
# 	${getText}=    Get Text    ${locator}

Get Text String
    [Arguments]    ${locator}
    Run Keyword And Continue On Failure    Selenium2Library.Wait Until Element Is Visible    ${locator}    ${timeout}   error=${locator}
	${getText}=    Selenium2Library.Get Text    ${locator}
    [return]    ${getText}    
	
####################################################
#	Returns the value attribute of element identified by locator.
#${locator}  : specified locate such as id, name, class, xpath, css and other(The description is below*).
Get Value String
    [Arguments]    ${locator}
    Run Keyword And Continue On Failure    Until Element Is Visible    ${locator}    ${timeout}   error=${locator}
	${getValue}=    Get Value    ${locator}

####################################################
#Splits the string using separator as a delimiter string.
#${string} : The text receive.
#${expected} : ${SPACE} and other.
#Ex.${string} = "test a b c",Should be expected is "testabc".
#@{text} =  Split String    ${string}       ${SPACE} 
Get Split String
    [Arguments]    ${string}
    @{text}=    Split String    ${getText}    ${SPACE} 
	${path}=  Evaluate  " ".join($text)

####################################################
#Removes all removables from the given string.
#${string} : The text receive.
#${removables} : ${EMPTY} (removables are used as literal strings. Each removable will be matched to a temporary string from which preceding removables have been already removed.)
#Ex.Remove "o" from "Robot Framework",Should be expected is "Rbt Framewrk".
Get Remove String Should Be Equal
    [Arguments]    ${string}    ${removables}    ${expected}
    ${text}=    Remove String    ${string}    ${removables}
	Run Keyword And Continue On Failure    Should Be Equal    ${text}    ${expected}
    Log To Console    ${expected}
    Log    ${expected}
####################################################
#Replaces search_for in the given string with replace_with.
#${string} : The text receive.
#${search_for} : search_for is used as a literal string.
#${replace_with} : for replace a string.
#Ex.Replace "world" from "Hello, world!",Should be expected is "Hello, tellus!".
#${string} =	Replace String	Hello, world!	world	tellus		
Get Replace String
    [Arguments]    ${string}    ${search_for}    ${replace_with}
    ${text}=    Replace String    ${string}    ${search_for}    ${replace_with}
    [RETURN]    ${text}
####################################################
#Replaces search_for in the given string with replace_with and Fails if the given objects are unequal.
#${string} : The text receive.
#${search_for} : search_for is used as a literal string.
#${replace_with} : for replace a string.
#${expected} : expected text for check correct.
#Ex.Replace "world" from "Hello, world!",Should be expected is "Hello, tellus!".
#${string} =	Replace String	Hello, world!	world	tellus		
Get Replace String Should Be Equal
    [Arguments]    ${string}    ${search_for}    ${replace_with}    ${expected}
    ${text}=    Replace String    ${string}    ${search_for}    ${replace_with}
	#Log To Console    text${text}
	Run Keyword And Continue On Failure    Should Be Equal    ${text}    ${expected}
    Log To Console    ${expected}
    Log    ${expected}
	[RETURN]    ${text}
	
#**************************************************#
#Should Be Equal : Fails if the given objects are unequal.
#Should Be Equal As Integers : Fails if objects are unequal after converting them to integers.
#Should Be Equal As Numbers	: Fails if objects are unequal after converting them to real numbers.
#Should Be Equal As Strings : Fails if objects are unequal after converting them to strings.
#**************************************************#
####################################################
#Fails if the given objects are unequal and waits until element locator appears on current page.
#${locator}  : specified locate such as id, name, class, xpath, css and other(The description is below*).
#${expected} : expected text for check correct.
Wait Until Contains Element Should Be Equal Get Text
    [Arguments]    ${locator}    ${expected}
    Run Keyword And Continue On Failure    Selenium2Library.Wait Until Page Contains Element    ${locator}    ${timeout}   error=${expected}
	${getText}=    Selenium2Library.Get Text    ${locator}
    Run Keyword And Continue On Failure    Should Be Equal    ${getText}    ${expected}
    Log To Console    ${expected}
    Log    ${expected}

Wait Until Contains Element Should Be Equal Get Text nbsp
    [Arguments]    ${locator}    ${expected}
    Selenium2Library.Wait Until Page Contains Element    ${locator}    ${timeout}   error=${expected}
	${getText}=    Selenium2Library.Get Text    ${locator}
    ${srtNone}=    Convert To String    ${NONE}
    ${removeStr}=    Run Keyword If    '${getText}'==' '    Set Variable    ${srtNone}
    ...    ELSE IF    '${getText}'!='\u00A0'    Set Variable    ${getText}
    # Log To Console    removeStr'${removeStr}'
    # Log To Console    expected'${expected}'
    Should Be Equal    ${removeStr}    ${expected}
    Log To Console    ${expected}
    Log    ${expected}

# Wait Until Contains Element Should Be Equal Get Text nbsp
#     [Arguments]    ${locator}    ${expected}
#     Selenium2Library.Wait Until Page Contains Element    ${locator}    ${timeout}   error=${expected}
# 	${getText}=    Selenium2Library.Get Text    ${locator}
#     ${removeStr}=    Run Keyword If    '${getText}'=='\u00a0'    Remove String    ${getText}    ${getText}
#     ...    ELSE IF    '${getText}'!='\u00a0'    Set Variable    ${getText}
#     Log To Console    removeStr'${removeStr}'
#     Log To Console    expected'${expected}'
#     Should Be Equal    ${removeStr}    ${expected}
#     Log To Console    ${expected}
#     Log    ${expected}
####################################################

#Fails if the given objects are unequal and waits until element locator appears on current page.
#${locator}  : specified locate such as id, name, class, xpath, css and other(The description is below*).
#${expected} : expected text for check correct.
Wait Until Contains Element Should Be Equal Get Value
    [Arguments]    ${locator}    ${expected}
    Run Keyword And Continue On Failure    Selenium2Library.Wait Until Page Contains Element    ${locator}    ${timeout}   error=${expected}
	${getValue}=    Get Value    ${locator}
    Run Keyword And Continue On Failure    Should Be Equal    ${getValue}    ${expected}
	Log To Console    ${expected}
    Log    ${expected}

####################################################
#Should Be Equal As Integers : Fails if objects are unequal after converting them to integers and waits until element locator appears on current page.
#${locator}  : specified locate such as id, name, class, xpath, css and other(The description is below*).
#${expected} : expected text for check correct.
Wait Until Contains Element Should Be Equal As Integers        
    [Arguments]    ${locator}    ${expected}
    Selenium2Library.Wait Until Page Contains Element    ${locator}    ${timeout}   error=${expected}
	${getText}=    Selenium2Library.Get Text    ${locator}
    Should Be Equal As Integers    ${getText}    ${expected}
    Log To Console    ${expected}
    Log    ${expected}

####################################################
#Fails if objects are unequal after converting them to real numbers and waits until element locator appears on current page.
#${locator}  : specified locate such as id, name, class, xpath, css and other(The description is below*).
#${expected} : expected text for check correct.
Wait Until Contains Element Should Be Equal As Numbers
    [Arguments]    ${locator}    ${expected}
    Selenium2Library.Wait Until Page Contains Element    ${locator}    ${timeout}   error=${expected}
	${getText}=    Selenium2Library.Get Text    ${locator}
    Should Be Equal As Numbers    ${getText}    ${expected}
	Log To Console    ${expected}
    Log    ${expected}

####################################################
#Fails if objects are unequal after converting them to strings and waits until element locator appears on current page.
#${locator}  : specified locate such as id, name, class, xpath, css and other(The description is below*).
#${expected} : expected text for check correct.
Wait Until Contains Element Should Be Equal As Strings
    [Arguments]    ${locator}    ${expected}
    Selenium2Library.Wait Until Page Contains Element    ${locator}    ${timeout}   error=${expected}
	${getText}=    Selenium2Library.Get Text    ${locator}
    Should Be Equal As Strings    ${getText}    ${expected}
    Log To Console    ${expected}
    Log    ${expected}

####################################################
#Returns value of attribute from element locator.
#${locator}  : specified locate such as id, name, class, xpath, css and other(The description is below*).
#${attribute} : attribute html such as src, value and other.
#${expected} : expected text for check correct.	
Wait Should Contain Get Element Attribute
    [Arguments]    ${locator}    ${attribute}    ${expected}
    Selenium2Library.Wait Until Page Contains Element    ${locator}    ${timeout}   error=${expected}
	${getAttribute}=    Selenium2Library.Get Element Attribute    ${locator}    ${attribute}
    # Log To Console    ${getAttribute}
	Should Be Equal    ${getAttribute}    ${expected}
	Log To Console    ${expected}
    Log    ${expected}

####################################################
#Returns value of attribute from element locator.
#${locator}  : specified locate such as id, name, class, xpath, css and other(The description is below*).
#${attribute} : attribute html such as src, value and other.
#${search_for} : search_for is used as a literal string.
#${replace_with} : for replace a string.
#${expected} : expected text for check correct.
#Ex.check src path image src="https://http.cat/100" expected "100"
Check Element Attribute Should Be Equal
    [Arguments]    ${locator}    ${attribute}    ${search_for}    ${replace_with}    ${expected}
	${value_element}=    Get Element Attribute    ${locator}    ${attribute}    
	${data}=    Get Replace String Should Be Equal    ${value_element}    ${search_for}    ${replace_with}    ${expected}
	#Log To Console    value_element${value_element}
	#Log To Console    data${data}
	Should Be Equal    ${data}    ${expected}
	Log To Console    ${expected}
    Log    ${expected}
####################################################
#Check Json Response
#${locator}  : specified locate such as id, name, class, xpath, css and other(The description is below*).
#${field}  : field from json data for check.
#${expected}  : expected text for check correct.
#Ex.check data json status expected "success"
#{
#    "message": "https://images.dog.ceo/breeds/australian-shepherd/pepper.jpg",
#    "status": "success"
#}
Check Json Response Should Be Equal As Strings
	[Arguments]    ${locator}    ${field}    ${expected}
	#get text from xpath
    ${get_resp}=  Selenium2Library.Get Text    ${locator}    
	#change to JSON
    ${resp_json}=    Evaluate    json.loads('''${get_resp}''')    json    
    Log    ${resp_json}
	#set share value
    Set Test Variable    ${resp_json}    
    Should Be Equal As Strings    ${resp_json[${field}]}    ${expected}
    Log To Console    ${expected}
    Log    ${expected}
	
####################################################	
#For check value date
#${locator}  : specified locate such as id, name, class, xpath, css and other(The description is below*).
#${expected_delete}  : for element want remove ex.id=.
#${expected}  : expected text for check correct.
Check value Date Should Be Equal
    [Arguments]    ${locator}    ${expected_delete}    ${expected}
    ${removeStr}=    Remove String    ${locator}    ${expected_delete}                 #sub sting locator calendar name
	${getValue}=    Get Value    xpath=//*[@id="${removeStr}"]//input    #get value in date input
	Should Be Equal    ${getValue}    ${expected}
    Log To Console    ${expected}
    Log    ${expected}

####################################################
#Select Dropdown
#${locator}  : position dropdown ,specified locate such as id, name, class, xpath, css and other(The description is below*) 
#${locator_list} : xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[${index}] ${index} for index put xpath by replace at position list dropdown.
#${classData} : class=ant-select-item-option-content
#{input_type}  : input_type is text for select data(Ex.${data}= text).	
Select Dropdown
    [Arguments]    ${locator}    ${locator_list}    ${classData}    ${input_type} 
	#Start set Timeout
    ${timeout}=    Set Selenium Implicit Wait    ${timeout_dropdrown}    
    Click Element Page    ${locator}
	#get count list dropdown
    # Log To Console    classData${classData}
    ${list_count}=    Get Element Count    ${classData}    
    # Log To Console    list_count${list_count}
	FOR     ${i}  IN RANGE    ${list_count}
        ${index}=    Evaluate    ${i}+1
		${index_string}=    Convert To String    ${index}
		#set xpath list in dropdown (replace_indexList set in xpath)
		${locatorList_replaceIndexList_locator}=    Replace String    ${locator_list}    replace_indexList    ${index_string}    
        #${type_value_locator}=    Set Variable    ${locator_list_replace_indexList}   #set xpath list in dropdown
		#get text list in dropdown
		${type_value_list}=    Selenium2Library.Get Text    ${locatorList_replaceIndexList_locator}    
		#Check the conditions are correct, Click list in dropdown
        # Log To Console    type_value_list${type_value_list}
        # Log To Console    locatorList_replaceIndexList_locator${locatorList_replaceIndexList_locator}
		Run Keyword If    '${type_value_list}' == '${input_type}'    Click Element Page    ${locatorList_replaceIndexList_locator} 
	   
        #Check the conditions are correct, Exit loop
		Exit For Loop If    '${type_value_list}' == '${input_type}'    
    END
    Set Selenium Implicit Wait	${timeout}    #End set Timeout

#Select Dropdown Long
#${locator}  : position dropdown ,specified locate such as id, name, class, xpath, css and other(The description is below*) 
#${locator_list} : xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[${index}] ${index} for index put xpath by replace at position list dropdown.
#${classData} : class=ant-select-item-option-content
#{input_type}  : input_type is text for select data(Ex.${data}= text).	
Select Dropdown Long
    [Arguments]    ${locator}    ${locator_list}    ${classData}    ${input_type} 
	#Start set Timeout
    ${timeout}=    Set Selenium Implicit Wait    ${timeout_dropdrown}    
    Click Element Page    ${locator}
	#get count list dropdown
    # Log To Console    classData${classData}
    ${list_count}=    Get Element Count    ${classData}    
    # Log To Console    list_count${list_count}
	FOR     ${i}  IN RANGE    ${list_count}
        ${index}=    Evaluate    ${i}+1
		${index_string}=    Convert To String    ${index}
		#set xpath list in dropdown (replace_indexList set in xpath)
		${locatorList_replaceIndexList_locator}=    Replace String    ${locator_list}    replace_indexList    ${index_string}    
        Mouse Down    ${locatorList_replaceIndexList_locator}
        #${type_value_locator}=    Set Variable    ${locator_list_replace_indexList}   #set xpath list in dropdown
		#get text list in dropdown
		${type_value_list}=    Selenium2Library.Get Text    ${locatorList_replaceIndexList_locator}    
		#Check the conditions are correct, Click list in dropdown
        # Log To Console    type_value_list${type_value_list}
        # Log To Console    locatorList_replaceIndexList_locator${locatorList_replaceIndexList_locator}
		Run Keyword If    '${type_value_list}' == '${input_type}'    Click Element Page    ${locatorList_replaceIndexList_locator} 
	   
        #Check the conditions are correct, Exit loop
		Exit For Loop If    '${type_value_list}' == '${input_type}'    
    END
    Set Selenium Implicit Wait	${timeout}    #End set Timeout
		
####################################################
#Mutiple Select Dropdown
#${locator}  : position dropdown ,specified locate such as id, name, class, xpath, css and other(The description is below*) 
#${locator_list} : xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[${replace_indexList}] ${replace_indexList} for index put xpath by replace at position list dropdown.
#${classData} : class=ant-select-item-option-content
#${input_type}  : input_type is array for select data(Ex.${data}= text0    text1    text2).	
Mutiple Select Dropdown
    [Arguments]    ${locator}    ${locator_list}    ${classData}    ${input_type} 
    #${timeout}=    Set Selenium Implicit Wait    ${timeout_dropdrown}    #Start set Timeout	
	Click Element Page    ${locator}
	#get count list dropdown
    ${list_count}=    Get Element Count    ${classData}    
	FOR     ${i}  IN RANGE    ${list_count}
        ${index}=    Evaluate    ${i}+1
		${index_string}=    Convert To String    ${index}
		#For check if click muti select 
		Mutiple Select Dropdown Check List    ${locator_list}    ${input_type}    ${index_string}
	END
	#Set Selenium Implicit Wait	${timeout}    #End set Timeout
	
#${locator_list} : xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[${replace_indexList}] ${replace_indexList} for index put xpath by replace at position list dropdown.
#{input_type}  : input_type is text for select data.	
#${index_string}  : input_type is array for select data(Ex.${data}= text0    text1    text2).	
Mutiple Select Dropdown Check List
    [Arguments]    ${locator_list}    ${input_type}    ${index_string}
	#get length input select
	${input_count}=    Get length    ${input_type}
    FOR     ${i}  IN RANGE    ${input_count}
        #replace_indexList from xpath
	    ${locatorList_replaceIndexList_locator}=    Replace String    ${locator_list}    replace_indexList    ${index_string}    
        #get text list in dropdown
		${type_value_list}=    Selenium2Library.Get Text    ${locatorList_replaceIndexList_locator}    
		#set variable index value  
		${value}=    Set Variable    ${input_type[${i}]}
		#Check the conditions,Click list in dropdown
		Run Keyword If    '${type_value_list}' == '${value}'    Click Element    ${locatorList_replaceIndexList_locator}
		#Check the conditions are correct, Exit loop
		Exit For Loop If    '${type_value_list}' == '${value}'    
    END

####################################################
#Element Text Should Be Value Dropdown
#${locator}  : position dropdown ,specified locate such as id, name, class, xpath, css and other(The description is below*) 
#${locator_list} : xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[${replace_indexList}] ${replace_indexList} for index put xpath by replace at position list dropdown.
#${classData} : class=ant-select-item-option-content
#${input_type}  : input_type is array for select data(Ex.${data}= text0    text1    text2).	
Element Text Should Be Value Dropdown 
    [Arguments]    ${locator}    ${locator_list}    ${classData}    ${input_type} 
    #${timeout}=    Set Selenium Implicit Wait    ${timeout_dropdrown}    #Start set Timeout	
	Click Element Page    ${locator}
	#get count list dropdown
    ${list_count}=    Get Element Count    ${classData}  
	#Variable set array list
    @{valArrDdl}=    Create List		
	FOR     ${i}  IN RANGE    ${list_count}
        ${index}=    Evaluate    ${i}+1
		${index_string}=    Convert To String    ${index}
		${locatorList_replaceIndexList_locator}=    Replace String    ${locator_list}    replace_indexList    ${index_string}		
		#get text list in dropdown
		${type_value_list}=    Selenium2Library.Get Text    ${locatorList_replaceIndexList_locator} 
        # Log To Console    type_value_list${type_value_list}  
		#Add data to array set at valArrDdl
		Append To List    ${valArrDdl}    ${type_value_list}
        		
	END
	#check data array and array must Match length and data
	List Should Contain Sub List    ${valArrDdl}    ${input_type}
    Log To Console    ${input_type}
    Log    ${input_type}

	#FOR    ${item}    IN    ${input_type}
        #check data array and array must Match length and data
        ##List Should Contain Sub List    ${valArrDdl}    ${input_type}
		#check data array in text
        ##Should Contain    ${valArrDdl}    ${item}
    #END

Element Text Should Be Value Dropdown Long
    [Arguments]    ${locator}    ${locator_list}    ${classData}    ${input_type} 
    #${timeout}=    Set Selenium Implicit Wait    ${timeout_dropdrown}    #Start set Timeout	
	Click Element Page    ${locator}
	#get count list dropdown
    ${list_count}=    Get Element Count    ${classData}  
	#Variable set array list
    @{valArrDdl}=    Create List		
	FOR     ${i}  IN RANGE    ${list_count}
        ${index}=    Evaluate    ${i}+1
		${index_string}=    Convert To String    ${index}
		${locatorList_replaceIndexList_locator}=    Replace String    ${locator_list}    replace_indexList    ${index_string}
        Sleep    0.5s
        Mouse Down    ${locatorList_replaceIndexList_locator}			
		#get text list in dropdown
		${type_value_list}=    Selenium2Library.Get Text    ${locatorList_replaceIndexList_locator} 
        #Log To Console    type_value_list${type_value_list}  
		#Add data to array set at valArrDdl
		Append To List    ${valArrDdl}    ${type_value_list}
	END
	#check data array and array must Match length and data
	List Should Contain Sub List    ${valArrDdl}    ${input_type}
    Log To Console    ${input_type}
    Log    ${input_type}
####################################################
#${locator}  : position dropdown ,specified locate such as id, name, class, xpath, css and other(The description is below*) 
#${locator_list} : xpath=/html/body/div/div/div/div/div[1]/div/div[1]/div[2]/div[${replace_indexList}] ${replace_indexList} for index put xpath by replace at position list dropdown.
# ${locator_element_list}   : locator element of all list dropdown    
# ${locator_class_list}     : class list dropdown with id
#${input_list}  : input_type is array for select data(Ex.${data}= text0    text1    text2).	
#${check_all} : set TRUE is dropdown have Select All
Element Text Should Be Value Dropdown and Select all
    [Arguments]    ${locator}    ${locator_list}    ${locator_element_list}    ${locator_class_list}    ${input_list}    ${check_all}
    #${timeout}=    Set Selenium Implicit Wait    ${timeout_dropdrown}    #Start set Timeout	
	Click Element Page    ${locator}
    Sleep    0.5s
	# get id element all list dropdown
    ${element_list_id}=    Get Element Attribute    ${locator_element_list}    id
    # replace id in value set in variable
    ${locator_count_list_replace}=    Replace String    ${locator_class_list}    replace_id    ${element_list_id}
	#get count list dropdown
    ${get_count}=    Get Element Count    ${locator_count_list_replace}
    ${add_count}=    Evaluate    ${get_count}+1
    ${list_count}=    Set Variable If    ${check_all} == True    ${add_count}    ${get_count}
    # Log To Console    list_count : ${list_count}
	#Variable set array list
    @{valArrDdl}=    Create List		
	FOR     ${i}  IN RANGE    ${list_count}
        ${index}=    Evaluate    ${i}+1
		${index_string}=    Convert To String    ${index}
		${locatorList_replaceIndexList}=    Replace String    ${locator_list}    replace_indexList    ${index_string}		
		#get text list in dropdown
		${input_value_list}=    Selenium2Library.Get Text    ${locatorList_replaceIndexList} 
        # Log To Console    input_value_list : ${input_value_list}  
		#Add data to array set at valArrDdl
		Append To List    ${valArrDdl}    ${input_value_list}
        		
	END
	#check data array and array must Match length and data
	List Should Contain Sub List    ${valArrDdl}    ${input_list}


Mutiple Select Dropdown Select all
    [Arguments]    ${locator}    ${locator_list}    ${locator_element_list}    ${locator_class_list}    ${input_value}    ${check_all}
    #${timeout}=    Set Selenium Implicit Wait    ${timeout_dropdrown}    #Start set Timeout	
	Click Element Page    ${locator}
    # get id element all list dropdown
    ${element_list_id}=    Get Element Attribute    ${locator_element_list}    id
    # replace id in value set in variable
    ${locator_count_list_replace}=    Replace String    ${locator_class_list}    replace_id    ${element_list_id}
	#get count list dropdown
    ${get_count}=    Get Element Count    ${locator_count_list_replace}
    ${add_count}=    Evaluate    ${get_count}+1
    ${list_count}=    Set Variable If    ${check_all} == True    ${add_count}    ${get_count}
    # Log To Console    list_count : ${list_count}
	#Variable set array list
    @{valArrDdl}=    Create List		
	FOR     ${i}  IN RANGE    ${list_count}
        ${index}=    Evaluate    ${i}+1
		${index_string}=    Convert To String    ${index}
		${locatorList_replaceIndexList}=    Replace String    ${locator_list}    replace_indexList    ${index_string}		
		#get text list in dropdown
		${dropdown_value}=    Selenium2Library.Get Text    ${locatorList_replaceIndexList} 
        # Log To Console    dropdown_value : ${dropdown_value}  
        #Check the conditions are correct, Click list in dropdown
		Run Keyword If    '${dropdown_value}' == '${input_value}'    Click Element Page    ${locatorList_replaceIndexList}    
        #Check the conditions are correct, Exit loop
		Exit For Loop If    '${dropdown_value}' == '${input_value}'    	
	END


####################################################
# Set Class for dropdown and return class with id
# ${locator_element_list}   : locator element of all list dropdown    
# ${locator_class_list}     : class list dropdown with id
Set Class locator for count list Dropdown
    [Arguments]    ${locator_element_list}    ${locator_class_list}
    # get id element all list dropdown
    ${element_list_id}=    Get Element Attribute    ${locator_element_list}    id
    # replace id in value set in variable
    ${locator_count_list_replace}=    Replace String    ${locator_class_list}    replace_id    ${element_list_id}
	#get count list dropdown
    # ${list_count}=    Get Element Count    ${locator_count_list_replace}
    # Log To Console    list_count : ${list_count}
    [return]    ${locator_count_list_replace}

####################################################
# ${type} :${DEFAULT_TYPE_LONG}    Long |${DEFAULT_TYPE_NOTLONG}    notLong
# ${locator_class_list}     : class list dropdown with id
Check value many dropdown generateId for dx
    [Arguments]    ${type}    ${ddl_locator}    ${ddl_input_locator}    ${ddl_list_locator}    ${ddl_class_locator}    ${attribute}    ${value_replace}    ${value_checkddl}    ${lbl_ddl_locator}
    #Click
    Click Element Page    ${ddl_locator}
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    Sleep    0.5s
    ${getAttributeDdl}=    Get Element Attribute    ${ddl_input_locator}    ${attribute}
    Log To Console    getAttributeDdl${getAttributeDdl}
    ${replaceClassDdl}=    Replace String    ${ddl_class_locator}    ${value_replace}    ${getAttributeDdl}
    Log To Console    replaceClassDdl${replaceClassDdl}

    # #Titles
    # ${selectTitles}=    Request DB Data Titles All
    # ${dataTitlesAll}=    Set Variable    ${selectTitles}[0]
	# @{valArrDataTitlesNameTh}=    Set Variable    ${selectTitles}[2]
	# @{valArrDataTitlesNameEn}=    Set Variable    ${selectTitles}[3]
    # # Log To Console    ${valArrDataTitlesNameTh}
    Run keyword If    '${type}'=='${DEFAULT_TYPE_LONG}'    Element Text Should Be Value Dropdown Long    ${ddl_locator}    ${ddl_list_locator}    ${replaceClassDdl }    ${value_checkddl}
    ...    ELSE    Element Text Should Be Value Dropdown    ${ddl_locator}    ${ddl_list_locator}    ${replaceClassDdl}    ${value_checkddl}
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    Sleep    0.5s
    Click Element Page    ${lbl_ddl_locator}

####################################################
# ${type} :${DEFAULT_TYPE_LONG}    Long |${DEFAULT_TYPE_NOTLONG}    notLong
# ${locator_class_list}     : class list dropdown with id
Check Select many dropdown generateId for dx
    [Arguments]    ${type}    ${ddl_locator}    ${ddl_input_locator}    ${ddl_list_locator}    ${ddl_class_locator}    ${attribute}    ${value_replace}    ${value_checkddl}    ${lbl_ddl_locator}
    #Click
    Click Element Page    ${ddl_locator}
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    Sleep    0.5s
    ${getAttributeDdlTitlesId}=    Get Element Attribute    ${ddl_input_locator}    ${attribute}
    Log To Console    getAttributeDdlTitlesId${getAttributeDdlTitlesId}
    ${replaceClassDdlTitles}=    Replace String    ${ddl_class_locator}    ${value_replace}    ${getAttributeDdlTitlesId}
    Log To Console    replaceClassDdlTitles${replaceClassDdlTitles}

    #Titles
    ${selectTitles}=    Request DB Data Titles All
    ${dataTitlesAll}=    Set Variable    ${selectTitles}[0]
	@{valArrDataTitlesNameTh}=    Set Variable    ${selectTitles}[2]
	@{valArrDataTitlesNameEn}=    Set Variable    ${selectTitles}[3]
    # Log To Console    ${valArrDataTitlesNameTh}
    Run keyword If    '${type}'=='${DEFAULT_TYPE_LONG}'    Select Dropdown Long    ${ddl_locator}    ${ddl_list_locator}    ${replaceClassDdlTitles}    ${value_checkddl}
    ...    ELSE    Select Dropdown    ${ddl_locator}    ${ddl_list_locator}    ${replaceClassDdlTitles}    ${value_checkddl}
    #close dropdrown
    
    #close dropdrown
    Press Keys    ${NONE}    ${ESC}
    Sleep    0.5s
    Click Element Page    ${lbl_ddl_locator}

####################################################
#Verifies that element locator contains text expected.
#${locator}  : specified locate such as id, name, class, xpath, css and other(The description is below*).
#${expected} : expected text for check correct.	
Element Should Contain Get Text
    [Arguments]    ${locator}    ${expected}
    # Log To Console    ${expected}
    # Log To Console    ${locator}
	Selenium2Library.Wait Until Page Contains Element    ${locator}    ${timeout}   error=${expected}
	${getText}=     Selenium2Library.Get Text    ${locator}
	# Log To Console    getText: ${getText}
	# @{valArrTxt}=    Create List    ${expected}   
	@{valArrTxt}=    Split String    ${expected}    ${EMPTY}
    # Log To Console    valArrTxt: ${valArrTxt}
	FOR    ${item}    IN     @{valArrTxt}
        # Log To Console    item: ${item}
    	Should Contain    ${getText}    ${item}
    END
	#Log To Console    valArrTxt${valArrTxt}
    Log To Console    ${expected}
    Log    ${expected}
    
###################################################
Replace String To Object
    [Arguments]    ${string}
    
	${replStringToJsonStart}=    Replace String    ${string}    "{    {
	${replStringToJsonEnd}=    Replace String    ${replStringToJsonStart}    }"    }
	[RETURN]    ${replStringToJsonEnd}

###################################################
Import Path File
    [Arguments]    ${locator}    ${fileName}
    
    ${replacePathKeyword}=    Replace String    ${CURDIR}    keyword    ${EMPTY}
    Log To Console    ${replacePathKeyword}${PATH_FILE}${fileName}
    Choose File    ${locator}    ${replacePathKeyword}${PATH_FILE}${fileName}	

Replace Path File
    # [Arguments]    ${path}
    # ${EXECDIR} 
    ${replacePathKeyword}=    Replace String    ${CURDIR}    keyword    ${EMPTY}
    Log To Console    ${replacePathKeyword}
    ${replacePath}=    Set Variable    ${replacePathKeyword}${FILE}
    [Return]    ${replacePath}
###################################################
# Check Alert Popup After Click Save ,Edit ,Delete Or Other 
#Should Have Response ResultCode = 20000 and resultDescription = Success
#Response ResultCode Should Have Success
#    [Arguments]    ${resultCode}    ${resultDescription}
#    Should Be Equal As Strings    ${resultCode}    ${VALUE_RESULTCODE_20000} 
#	Should Be Equal As Strings    ${resultDescription}    ${VALUE_RESULTDESCRIPTION_SUCCESS}

#Should Have Response ResultCode = 50000 and resultDescription = System error
#Response ResultCode Should Have SystemError
#    [Arguments]    ${resultCode}    ${resultDescription}
#    Should Be Equal As Strings    ${resultCode}    ${VALUE_RESULTCODE_50000} 
#	Should Be Equal As Strings    ${resultDescription}    ${VALUE_RESULTDESCRIPTION_SYSTEMERROR}     

#***************** The description ****************#
#(receive value from variables)
#${PAGE_URL}    ${BROWSER}
#${width}  ${height}
	
#Command
#Log To Console    ${value}
#Log Many    ${text}
#Log    ${text}

#*${locator}  : specified locate such as id, name, class, xpath, css and other.
#Ex.
#<div>
#	<input id="txtUsernameId" name="txtUsernameName" class="txtUsernameClass"></input>
#</div>
#id=txtUsernameId
#name=txtUsernameName
#class=txtUsernameClass
#xpath=/div/input
#css=div#txtUsernameId or css=div.txtUsernameClass 
#**************************************************#







