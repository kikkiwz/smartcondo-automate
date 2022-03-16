*** Keywords ***
#H : hour
#M : minute
#S : s
#Mo : month
#Y : year

#ex. 22:10|22:10:00
Check Time Wait Text Should Be
    [Arguments]    ${locator}    ${format}
	#${getTime}=    Get Text    ${locator} 
	#change format 
	${time}    Evaluate  '${format}'.format(dt=datetime.datetime.now())    modules=datetime
	Wait Until Contains Element Text Should Be    ${locator}    ${time}

#ex. 22:10 - now
Check Time And Text Wait Text Should Be
    [Arguments]    ${locator}    ${format}    ${text}
	#${getTime}=    Get Text    ${locator} 
	#change format
	${time}    Evaluate  '${format}'.format(dt=datetime.datetime.now())    modules=datetime
	Wait Until Contains Element Text Should Be    ${locator}    ${time} ${text}

#ex. September 2020
Check Date Wait Text Should Be
    [Arguments]    ${locator}    ${format}
	#${getTime}=    Get Text    ${locator} 
	#change format 
	${date}    Evaluate  '${format}'.format(dt=datetime.datetime.now())    modules=datetime
	Wait Until Contains Element Text Should Be    ${locator}    ${date}

#ex. 23/09/2020 -> 24/10/2020 add 31 days
Value Add date
    [Arguments]    ${format}    ${type}    ${day} 
	#${getTime}=    Get Text    ${locator} 
	
	Run keyword if    "${type}" == "add"
	...    Run keyword     Log    ${type}
	${currentDate}=      Get Current Date      UTC      exclude_millis=yes
	${addDate}=      Add Time To Date      ${currentDate}      ${day} days
    ${valueDate}      Convert Date      ${addDate}      result_format=${format}
	#Log To Console    valueDate${valueDate}
	
	[return]    ${valueDate}
	
Value Minus date
    [Arguments]    ${format}    ${type}    ${day} 
	#${getTime}=    Get Text    ${locator} 
		
	Run keyword if    "${type}" == "subtract"
	...    Run keyword    Log    ${type}
	${currentDate}=      Get Current Date      UTC      exclude_millis=yes
	${subtractDate}=      Subtract Time From Date      ${currentDate}      ${day} days
    ${valueDate}      Convert Date      ${subtractDate}      result_format=${format}
	
	[return]    ${valueDate}
	
#ex. 10/03/2020
Change format date now
    [Arguments]    ${format}
	#change format
	${now}    Evaluate  '${format}'.format(dt=datetime.datetime.now())    modules=datetime
	#Log To Console    now${now}
	[return]    ${now}

Convert Format Date DB
    [Arguments]    ${valueDate}
	Log To Console    valueDate : ${valueDate}
	${date}=    Convert Date    ${valueDate}    datetime
    Log To Console    date : ${date}

   ${dateConvert}=    Set Variable    ${date.year}, ${date.month}, ${date.day}, ${date.hour}, ${date.minute}, ${date.second}
   Log To Console    dateConvert: ${dateConvert}
   [return]    ${dateConvert}

Convert Format Date DB No Have Second
    [Arguments]    ${valueDate}
	
	${date}=    Convert Date    ${valueDate}    datetime
    # Log To Console    date : ${date}

   ${dateConvert}=    Set Variable    ${date.year}, ${date.month}, ${date.day}, ${date.hour}, ${date.minute}
   #Log To Console    dateConvert: ${dateConvert}
   [return]    ${dateConvert}

Convert Format Date To Format
    [Arguments]    ${valueDate}    ${date_format}    ${result_format}
	${date}    Convert Date    ${valueDate}    result_format=${result_format}    date_format=${date_format}
    Log To Console    date : ${date}

   [return]    ${date}
   