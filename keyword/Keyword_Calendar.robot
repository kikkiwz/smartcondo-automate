*** Keywords ***
Select Calendar
    #${type_calendar_button}        >> button type in calendar          **set in Variables_Calendar.robot
    #${input_date}                  >> receive input date               **set in variables for test case
    #${date_format}           >> receive format date input        **set in variables for test case
    #${date_separator}        >> receive Regexp of input date     **set in variables for test case
    # ${format}                     >> receive format date in calendar  **set in Variables_Calendar.robot
    # ${separator}                  >> Regexp for sub date in calendar  **set in Variables_Calendar.robot
    # ${locator_calendar}           >> locator calendar                 **set in variables for test case
    # ${locator_date}               >> locator date in calendar         **set in Variables_Calendar.robot
    [Arguments]    ${type_calendar_button}    ${input_date}    ${date_format}    ${date_separator}    ${format}    ${separator}    ${locator_calendar}    ${locator_date}    ${id}    #receive value
    ${timeout}=    Set Selenium Implicit Wait    5        #set Timeout
    
    #set input date format
    ${date_sub_format}=  Split String    ${date_format}     ${date_separator}     #sub string format date to array
    ${date_length_format}=   Get Length      ${date_sub_format}               #get length sub string format date
    ${input_date_format}=    Set format date    ${date_sub_format}    ${date_length_format}    ${separator}

    #set default value to loop
    ${sub_format}=  Split String    ${format}     ${separator}     #sub string format date to array
    ${length_format}=   Get Length      ${sub_format}              #get length sub string format date
    #set calendar date format
    ${set_calendar_format}=    Set format date    ${sub_format}    ${length_format}    ${separator}
    
    #____________________________________________________________________________________________________________________________________________________________________________#
    #loop set index next month or year
    ${index_format}=    Set Variable   ${None}      #set default ${index_format}
    FOR     ${i}  IN RANGE    ${length_format}
        Run Keyword If     '${sub_format[${i}]}' == 'mm' or '${sub_format[${i}]}' == 'MM'       Run Keywords    Set Test Variable   ${index_month}      ${i}    #set month position from format date
        ...     AND     Set Test Variable   ${index_format}     ${i}        #set month position for sub string
        ...     ELSE IF     '${sub_format[${i}]}' == 'm' or '${sub_format[${i}]}' == 'M'         Set Test Variable   ${index_month}      ${i}    #set month position from format date
        ...     ELSE IF     '${sub_format[${i}]}' == 'yyyy' or '${sub_format[${i}]}' == 'YYYY' or '${sub_format[${i}]}' == 'y' or '${sub_format[${i}]}' == 'Y'   Set Test Variable   ${index_year}       ${i}    #set year position from format date
    END
    #____________________________________________________________________________________________________________________________________________________________________________#

    #convert input date to calendar date format
    ${input_date_convert_format}=    Convert Date    ${input_date}    date_format=${input_date_format}    result_format=${set_calendar_format}

    #____________________________________________________________________________________________________________________________________________________________________________#
    #remove 0 in first charactor
    ${input_date_sub}=  Split String    ${input_date_convert_format}     ${separator}      #sub string date to array
    ${input_date_length_format}=   Get Length      ${input_date_sub}        #get length sub string date
    ${input_date_array}=    Create List     #set default array ${input_date_array}
    FOR     ${i}  IN RANGE    ${input_date_length_format}
        ${convert_to_int}=  Convert To Integer      ${input_date_sub[${i}]}     #convert to integer for remove 0 in first charactor
        Append To List    ${input_date_array}     ${convert_to_int}             #add in array value
    END
    ${input_date_string}=   Catenate    SEPARATOR=${separator}      ${input_date_array[0]}      ${input_date_array[1]}      ${input_date_array[2]}    #convert array to string format date for find date in calendar

    #loop set input date format
    FOR     ${i}  IN RANGE    ${date_length_format}
        Run Keyword If      '${date_sub_format[${i}]}' == 'm' or '${date_sub_format[${i}]}' == 'M' or '${date_sub_format[${i}]}' == 'd' or '${date_sub_format[${i}]}' == 'D'       Run Keywords    Set Test Variable    ${input_date_value_format}    ${input_date_string}                 # set value date format remove 0 in first charactor
        ...     ELSE        Set Test Variable    ${input_date_value_format}    ${input_date_convert_format}     # set set value date format not remove 0 in first charactor
    END
    #____________________________________________________________________________________________________________________________________________________________________________#

    #set value next month or year
    ${sub_string}=  Split String    ${input_date_value_format}     ${separator}      #sub string date to array
    ${month}=       Set Variable    ${sub_string[${index_month}]}       #set month
    ${year}=        Set Variable    ${sub_string[${index_year}]}        #set year
    ${sub_month}=   Replace String Using Regexp    ${month}    ^0    ${EMPTY}           #sub 0 at the first position
    Run Keyword If  ${index_format}     Set Test Variable    ${month}    ${sub_month}   #set sub 0 for month

    # Click Element Page    ${locator_calendar}             #Click calendar

    ${currentDate} =     Get Current Date    result_format=datetime     #set current date
    Convert To Number  ${month}
    Convert To Number  ${year}

    #check current date
    ${locator}=	Remove String    ${locator_calendar}    ${DELETE_ID}                 #sub sting locator calendar name
    ${set_xpath}=    Set Variable If        #set xpath input value date
    ...     ${type_calendar_button}==1 or ${type_calendar_button}==2      xpath=//input[@id="${locator}"]    
    ...     ${type_calendar_button}==3      xpath=//input[@name="${locator}"]    
    ${get_valuedate}=    Get Value    ${set_xpath}    #get value in date input
    Run Keyword If      "${get_valuedate}" != "${EMPTY}" and ${type_calendar_button}==1    Set current date from calendar date and month  ${get_valuedate}  ${input_date_format}    ${set_calendar_format}      #check if have value in date input date and month
    ...     ELSE IF     "${get_valuedate}" != "${EMPTY}" and ${type_calendar_button}==2    Set current date from calendar date and month  ${get_valuedate}  ${input_date_format}    ${set_calendar_format}      #check if have value in date input date and month
    ...     ELSE IF     "${get_valuedate}" != "${EMPTY}" and ${type_calendar_button}==3    Set current date from calendar year  ${get_valuedate}  ${set_calendar_format}      #check if have value in date input year

    #check condition button type in calendar
    Run Keyword If      ${type_calendar_button}==1       Select Date button month    ${currentDate}    ${month}    ${year}    ${previous_month_class}    ${next_month_class}
    ...     ELSE IF     ${type_calendar_button}==2    Select Date button month and year    ${currentDate}    ${month}    ${year}    ${previous_month_class}    ${next_month_class}    ${previous_year_class}    ${next_year_class}
    ...     ELSE        Select Date button year    ${currentDate}    ${year}    ${previous_year_class}    ${next_year_class}

    
    ${date_locator}=    Replace String    ${locator_date}    date    ${input_date_value_format}    #set xpath date in calendar
    
    #get id devextream
    ${getAttributeDdlTitlesId}=    Get Element Attribute    ${id}    ${ATTRIBUTE_ARIA_OWNS}
    Log To Console    getAttributeDate${getAttributeDdlTitlesId}
    ${date_locator}=    Replace String    ${date_locator}    id    ${getAttributeDdlTitlesId}    #set xpath date in calendar
    Log To Console    date_locator${date_locator}
    Click Element Page    ${date_locator}       #click date in calendar
    Set Selenium Implicit Wait	${timeout}      #set Timeout

Set format date
    #${sub_format}       >> sub string format array
    #${length_format}    >> length format array
    #${separator}        >> separator date
    [Arguments]     ${sub_format}    ${length_format}    ${separator}
    #set date format
    @{format}=    Create List      #set default array ${format}
    FOR     ${i}  IN RANGE    ${length_format}
        Run Keyword If      '${sub_format[${i}]}' == 'mm' or '${sub_format[${i}]}' == 'MM' or '${sub_format[${i}]}' == 'm' or '${sub_format[${i}]}' == 'M'          Append To List    ${format}     m      #set charactor for format date (month)
        ...     ELSE IF     '${sub_format[${i}]}' == 'dd' or '${sub_format[${i}]}' == 'DD' or '${sub_format[${i}]}' == 'd' or '${sub_format[${i}]}' == 'D'          Append To List    ${format}     d      #set charactor for format date (date)
        ...     ELSE IF     '${sub_format[${i}]}' == 'yyyy' or '${sub_format[${i}]}' == 'YYYY' or '${sub_format[${i}]}' == 'y' or '${sub_format[${i}]}' == 'Y'      Append To List    ${format}     Y      #set charactor for format date (year)
    END
    ${set_format}=    Catenate    SEPARATOR=${separator}%    %${format[0]}    ${format[1]}    ${format[2]}    #convert array to string format date
    [return]    ${set_format}

Set current date from calendar date and month    #set variable current date
    #${currentDate}         >> value in date input
    #${value_format}        >> format value in date input
    [Arguments]     ${currentDate}    ${value_format}    ${calendar_format}

    ${convert_format_date}=    Convert Date    ${currentDate}    result_format=${calendar_format}    date_format=${value_format}    #convert format
    ${convert_to_date}=    Convert Date    ${convert_format_date}    datetime                   #convert to datetime
    set test variable    ${currentDate}    ${convert_to_date}

Set current date from calendar year    #set variable current date
    #${currentDate}         >> value in date input
    #${calendar_format}        >> format value in date input
    [Arguments]     ${currentDate}    ${calendar_format}

    ${convert_format_date}=    Convert Date    ${currentDate}    result_format=${calendar_format}    #convert format
    ${convert_to_date}=    Convert Date    ${convert_format_date}    datetime                   #convert to datetime
    set test variable    ${currentDate}    ${convert_to_date}

Select Date button month    #${type_calendar}= 1
    # ${previous_month} >> locator
    # ${next_month} >> locator
    # ${previous_year} >> locator
    # ${next_year} >> locator
    [Arguments]     ${current_date}    ${month}    ${year}    ${previous_month}    ${next_month}

    #calculate month and year for check If
    ${month_diff}=  Evaluate  ${month}-${current_date.month}        #Different of month
    ${year_diff}=  Evaluate  ${year}-${current_date.year}           #Different of year
    ${move}=  Evaluate  ${year_diff}*12+${month_diff}               #calculate move month and year
    
    #set for check shift month
    ${shift_forward}=  Set Variable If  
    ...   ${move}>0  1
    ...   ${move}<0  0

    #set number of loop Month
    ${move}=  Set Variable If 
    ...   ${move}==0  0
    ...   ${move}>0  ${move}
    ...   ${move}<0  ${move}*-1

    #check condition next or previous month
    FOR     ${var}  IN RANGE    ${move}
        Run Keyword If  ${shift_forward}==0  Click Element Page    ${previous_month}     #xpath button previous
        Run Keyword If  ${shift_forward}==1  Click Element Page    ${next_month}         #xpath button next
    END

Select Date button month and year       #${type_calendar}= 2
    [Arguments]     ${current_date}    ${month}    ${year}    ${previous_month}    ${next_month}    ${previous_year}    ${next_year}

    #calculate month and year for check If
    ${month_diff}=  Evaluate  ${month}-${current_date.month}         #Different of month
    ${year_diff}=  Evaluate  ${year}-${current_date.year}            #Different of year
    
    #set for check shift year
    ${shift_year}=  Set Variable If  
    ...   ${year_diff}>0  1
    ...   ${year_diff}<0  0

    #set number of loop year
    ${year_diff}=  Set Variable If 
    ...   ${year_diff}==0  0
    ...   ${year_diff}>0  ${year_diff}
    ...   ${year_diff}<0  ${year_diff}*-1

    #set for check shift month
    ${shift_month}=  Set Variable If  
    ...   ${month_diff}>0  1
    ...   ${month_diff}<0  0

    #set number of loop Month
    ${month_diff}=  Set Variable If 
    ...   ${month_diff}==0  0
    ...   ${month_diff}>0  ${month_diff}
    ...   ${month_diff}<0  ${month_diff}*-1

    #check condition next or previous month
    FOR     ${var}  IN RANGE    ${month_diff}
        Run Keyword If  ${shift_month}==0  Click Element Page    ${previous_month}     #xpath button previous
        Run Keyword If  ${shift_month}==1  Click Element Page    ${next_month}         #xpath button next
    END

    #check condition next or previous year
    FOR     ${var}  IN RANGE    ${year_diff}
        Run Keyword If  ${shift_year}==0  Click Element Page    ${previous_year}     #xpath button previous
        Run Keyword If  ${shift_year}==1  Click Element Page    ${next_year}         #xpath button next
    END

Select Date button year       #${type_calendar}= 3
    [Arguments]     ${current_date}    ${year}    ${previous_year}    ${next_year}

    #calculate month and year for check If
    ${year_diff}=  Evaluate  ${year}-${current_date.year}            #Different of year
    
    #set for check shift year
    ${shift_year}=  Set Variable If  
    ...   ${year_diff}>0  1
    ...   ${year_diff}<0  0

    #set number of loop year
    ${year_diff}=  Set Variable If 
    ...   ${year_diff}==0  0
    ...   ${year_diff}>0  ${year_diff}
    ...   ${year_diff}<0  ${year_diff}*-1

    #check condition next or previous year
    FOR     ${var}  IN RANGE    ${year_diff}
        Run Keyword If  ${shift_year}==0  Click Element Page    ${previous_year}     #xpath button previous
        Run Keyword If  ${shift_year}==1  Click Element Page    ${next_year}         #xpath button next
    END

#case calendar last year
Select Calendar Last Year
    [Arguments]    ${clickCalendarbtn_locator}    ${year}    ${date_01}    ${dateSelect_value}
    
    Click Element Page    ${clickCalendarbtn_locator}            #Click calendar button input datebox
    ${timeout}=    Set Selenium Implicit Wait    5        #set Timeout
    Click Element Page    class=dx-calendar-caption-button    #Click calendar button date header
    ${currentDate}=     Get Current Date    result_format=datetime     #set current date
    Log To Console    currentDate${currentDate}
    Select Date button year    ${currentDate}    ${year}    ${previous_year_class}    ${next_year_class}
    # Click Element Page    class=dx-calendar-caption-button
    ${date01_locator}=    Replace String    ${DATE_PICKER_LOCATOR}    date    ${date_01}    #set xpath date in calendar 1991/11/01
    # Log To Console    date01_locator${date01_locator}
    Click Element Page    ${date01_locator}       #click date in calendar
    ${dateSelect_locator}=    Replace String    ${DATE_PICKER_LOCATOR}    date    ${dateSelect_value}    #set xpath date in calendar
    # Log To Console    dateSelect_locator${dateSelect_locator}
    Click Element Page    ${dateSelect_locator}       #click date in calendar
    Set Selenium Implicit Wait	${timeout}      #set Timeout

# Select Calendar
#     #${type_calendar_button}        >> button type in calendar          **set in Variables_Calendar.robot
#     #${input_date}                  >> receive input date               **set in variables for test case
#     #${date_format}           >> receive format date input        **set in variables for test case
#     #${date_separator}        >> receive Regexp of input date     **set in variables for test case
#     # ${format}                     >> receive format date in calendar  **set in Variables_Calendar.robot
#     # ${separator}                  >> Regexp for sub date in calendar  **set in Variables_Calendar.robot
#     # ${locator_calendar}           >> locator calendar                 **set in variables for test case
#     # ${locator_date}               >> locator date in calendar         **set in Variables_Calendar.robot
#     [Arguments]    ${type_calendar_button}    ${input_date}    ${date_format}    ${date_separator}    ${format}    ${separator}    ${locator_calendar}    ${locator_date}    #receive value
#     ${timeout}=    Set Selenium Implicit Wait    5        #set Timeout
    
#     #set input date format
#     ${date_sub_format}=  Split String    ${date_format}     ${date_separator}     #sub string format date to array
#     ${date_length_format}=   Get Length      ${date_sub_format}               #get length sub string format date
#     ${input_date_format}=    Set format date    ${date_sub_format}    ${date_length_format}    ${separator}

#     #set default value to loop
#     ${sub_format}=  Split String    ${format}     ${separator}     #sub string format date to array
#     ${length_format}=   Get Length      ${sub_format}              #get length sub string format date
#     #set calendar date format
#     ${set_calendar_format}=    Set format date    ${sub_format}    ${length_format}    ${separator}
    
#     #____________________________________________________________________________________________________________________________________________________________________________#
#     #loop set index next month or year
#     ${index_format}=    Set Variable   ${None}      #set default ${index_format}
#     FOR     ${i}  IN RANGE    ${length_format}
#         Run Keyword If     '${sub_format[${i}]}' == 'mm' or '${sub_format[${i}]}' == 'MM'       Run Keywords    Set Test Variable   ${index_month}      ${i}    #set month position from format date
#         ...     AND     Set Test Variable   ${index_format}     ${i}        #set month position for sub string
#         ...     ELSE IF     '${sub_format[${i}]}' == 'm' or '${sub_format[${i}]}' == 'M'         Set Test Variable   ${index_month}      ${i}    #set month position from format date
#         ...     ELSE IF     '${sub_format[${i}]}' == 'yyyy' or '${sub_format[${i}]}' == 'YYYY' or '${sub_format[${i}]}' == 'y' or '${sub_format[${i}]}' == 'Y'   Set Test Variable   ${index_year}       ${i}    #set year position from format date
#     END
#     #____________________________________________________________________________________________________________________________________________________________________________#

#     #convert input date to calendar date format
#     ${input_date_convert_format}=    Convert Date    ${input_date}    date_format=${input_date_format}    result_format=${set_calendar_format}

#     #____________________________________________________________________________________________________________________________________________________________________________#
#     #remove 0 in first charactor
#     ${input_date_sub}=  Split String    ${input_date_convert_format}     ${separator}      #sub string date to array
#     ${input_date_length_format}=   Get Length      ${input_date_sub}        #get length sub string date
#     ${input_date_array}=    Create List     #set default array ${input_date_array}
#     FOR     ${i}  IN RANGE    ${input_date_length_format}
#         ${convert_to_int}=  Convert To Integer      ${input_date_sub[${i}]}     #convert to integer for remove 0 in first charactor
#         Append To List    ${input_date_array}     ${convert_to_int}             #add in array value
#     END
#     ${input_date_string}=   Catenate    SEPARATOR=${separator}      ${input_date_array[0]}      ${input_date_array[1]}      ${input_date_array[2]}    #convert array to string format date for find date in calendar

#     #loop set input date format
#     FOR     ${i}  IN RANGE    ${date_length_format}
#         Run Keyword If      '${date_sub_format[${i}]}' == 'm' or '${date_sub_format[${i}]}' == 'M' or '${date_sub_format[${i}]}' == 'd' or '${date_sub_format[${i}]}' == 'D'       Run Keywords    Set Test Variable    ${input_date_value_format}    ${input_date_string}                 # set value date format remove 0 in first charactor
#         ...     ELSE        Set Test Variable    ${input_date_value_format}    ${input_date_convert_format}     # set set value date format not remove 0 in first charactor
#     END
#     #____________________________________________________________________________________________________________________________________________________________________________#

#     #set value next month or year
#     ${sub_string}=  Split String    ${input_date_value_format}     ${separator}      #sub string date to array
#     ${month}=       Set Variable    ${sub_string[${index_month}]}       #set month
#     ${year}=        Set Variable    ${sub_string[${index_year}]}        #set year
#     ${sub_month}=   Replace String Using Regexp    ${month}    ^0    ${EMPTY}           #sub 0 at the first position
#     Run Keyword If  ${index_format}     Set Test Variable    ${month}    ${sub_month}   #set sub 0 for month

#     # Click Element Page    ${locator_calendar}             #Click calendar

#     ${currentDate} =     Get Current Date    result_format=datetime     #set current date
#     Convert To Number  ${month}
#     Convert To Number  ${year}

#     #check current date
#     ${locator}=	Remove String    ${locator_calendar}    ${DELETE_ID}                 #sub sting locator calendar name
#     ${set_xpath}=    Set Variable If        #set xpath input value date
#     ...     ${type_calendar_button}==1 or ${type_calendar_button}==2      xpath=//input[@id="${locator}"]    
#     ...     ${type_calendar_button}==3      xpath=//input[@name="${locator}"]    
#     ${get_valuedate}=    Get Value    ${set_xpath}    #get value in date input
#     Run Keyword If      "${get_valuedate}" != "${EMPTY}" and ${type_calendar_button}==1    Set current date from calendar date and month  ${get_valuedate}  ${input_date_format}    ${set_calendar_format}      #check if have value in date input date and month
#     ...     ELSE IF     "${get_valuedate}" != "${EMPTY}" and ${type_calendar_button}==2    Set current date from calendar date and month  ${get_valuedate}  ${input_date_format}    ${set_calendar_format}      #check if have value in date input date and month
#     ...     ELSE IF     "${get_valuedate}" != "${EMPTY}" and ${type_calendar_button}==3    Set current date from calendar year  ${get_valuedate}  ${set_calendar_format}      #check if have value in date input year

#     #check condition button type in calendar
#     Run Keyword If      ${type_calendar_button}==1       Select Date button month    ${currentDate}    ${month}    ${year}    ${previous_month_class}    ${next_month_class}
#     ...     ELSE IF     ${type_calendar_button}==2    Select Date button month and year    ${currentDate}    ${month}    ${year}    ${previous_month_class}    ${next_month_class}    ${previous_year_class}    ${next_year_class}
#     ...     ELSE        Select Date button year    ${currentDate}    ${year}    ${previous_year_class}    ${next_year_class}

#     ${date_locator}=    Replace String    ${locator_date}    date    ${input_date_value_format}    #set xpath date in calendar
#     Click Element Page    ${date_locator}       #click date in calendar
#     Set Selenium Implicit Wait	${timeout}      #set Timeout

# Set format date
#     #${sub_format}       >> sub string format array
#     #${length_format}    >> length format array
#     #${separator}        >> separator date
#     [Arguments]     ${sub_format}    ${length_format}    ${separator}
#     #set date format
#     @{format}=    Create List      #set default array ${format}
#     FOR     ${i}  IN RANGE    ${length_format}
#         Run Keyword If      '${sub_format[${i}]}' == 'mm' or '${sub_format[${i}]}' == 'MM' or '${sub_format[${i}]}' == 'm' or '${sub_format[${i}]}' == 'M'          Append To List    ${format}     m      #set charactor for format date (month)
#         ...     ELSE IF     '${sub_format[${i}]}' == 'dd' or '${sub_format[${i}]}' == 'DD' or '${sub_format[${i}]}' == 'd' or '${sub_format[${i}]}' == 'D'          Append To List    ${format}     d      #set charactor for format date (date)
#         ...     ELSE IF     '${sub_format[${i}]}' == 'yyyy' or '${sub_format[${i}]}' == 'YYYY' or '${sub_format[${i}]}' == 'y' or '${sub_format[${i}]}' == 'Y'      Append To List    ${format}     Y      #set charactor for format date (year)
#     END
#     ${set_format}=    Catenate    SEPARATOR=${separator}%    %${format[0]}    ${format[1]}    ${format[2]}    #convert array to string format date
#     [return]    ${set_format}

# Set current date from calendar date and month    #set variable current date
#     #${currentDate}         >> value in date input
#     #${value_format}        >> format value in date input
#     [Arguments]     ${currentDate}    ${value_format}    ${calendar_format}

#     ${convert_format_date}=    Convert Date    ${currentDate}    result_format=${calendar_format}    date_format=${value_format}    #convert format
#     ${convert_to_date}=    Convert Date    ${convert_format_date}    datetime                   #convert to datetime
#     set test variable    ${currentDate}    ${convert_to_date}

# Set current date from calendar year    #set variable current date
#     #${currentDate}         >> value in date input
#     #${calendar_format}        >> format value in date input
#     [Arguments]     ${currentDate}    ${calendar_format}

#     ${convert_format_date}=    Convert Date    ${currentDate}    result_format=${calendar_format}    #convert format
#     ${convert_to_date}=    Convert Date    ${convert_format_date}    datetime                   #convert to datetime
#     set test variable    ${currentDate}    ${convert_to_date}

# Select Date button month    #${type_calendar}= 1
#     # ${previous_month} >> locator
#     # ${next_month} >> locator
#     # ${previous_year} >> locator
#     # ${next_year} >> locator
#     [Arguments]     ${current_date}    ${month}    ${year}    ${previous_month}    ${next_month}

#     #calculate month and year for check If
#     ${month_diff}=  Evaluate  ${month}-${current_date.month}        #Different of month
#     ${year_diff}=  Evaluate  ${year}-${current_date.year}           #Different of year
#     ${move}=  Evaluate  ${year_diff}*12+${month_diff}               #calculate move month and year
    
#     #set for check shift month
#     ${shift_forward}=  Set Variable If  
#     ...   ${move}>0  1
#     ...   ${move}<0  0

#     #set number of loop Month
#     ${move}=  Set Variable If 
#     ...   ${move}==0  0
#     ...   ${move}>0  ${move}
#     ...   ${move}<0  ${move}*-1

#     #check condition next or previous month
#     FOR     ${var}  IN RANGE    ${move}
#         Run Keyword If  ${shift_forward}==0  Click Button    ${previous_month}     #xpath button previous
#         Run Keyword If  ${shift_forward}==1  Click Button    ${next_month}         #xpath button next
#     END

# Select Date button month and year       #${type_calendar}= 2
#     [Arguments]     ${current_date}    ${month}    ${year}    ${previous_month}    ${next_month}    ${previous_year}    ${next_year}

#     #calculate month and year for check If
#     ${month_diff}=  Evaluate  ${month}-${current_date.month}         #Different of month
#     ${year_diff}=  Evaluate  ${year}-${current_date.year}            #Different of year
    
#     #set for check shift year
#     ${shift_year}=  Set Variable If  
#     ...   ${year_diff}>0  1
#     ...   ${year_diff}<0  0

#     #set number of loop year
#     ${year_diff}=  Set Variable If 
#     ...   ${year_diff}==0  0
#     ...   ${year_diff}>0  ${year_diff}
#     ...   ${year_diff}<0  ${year_diff}*-1

#     #set for check shift month
#     ${shift_month}=  Set Variable If  
#     ...   ${month_diff}>0  1
#     ...   ${month_diff}<0  0

#     #set number of loop Month
#     ${month_diff}=  Set Variable If 
#     ...   ${month_diff}==0  0
#     ...   ${month_diff}>0  ${month_diff}
#     ...   ${month_diff}<0  ${month_diff}*-1

#     #check condition next or previous month
#     FOR     ${var}  IN RANGE    ${month_diff}
#         Run Keyword If  ${shift_month}==0  Click Button    ${previous_month}     #xpath button previous
#         Run Keyword If  ${shift_month}==1  Click Button    ${next_month}         #xpath button next
#     END

#     #check condition next or previous year
#     FOR     ${var}  IN RANGE    ${year_diff}
#         Run Keyword If  ${shift_year}==0  Click Button    ${previous_year}     #xpath button previous
#         Run Keyword If  ${shift_year}==1  Click Button    ${next_year}         #xpath button next
#     END

# Select Date button year       #${type_calendar}= 3
#     [Arguments]     ${current_date}    ${year}    ${previous_year}    ${next_year}

#     #calculate month and year for check If
#     ${year_diff}=  Evaluate  ${year}-${current_date.year}            #Different of year
    
#     #set for check shift year
#     ${shift_year}=  Set Variable If  
#     ...   ${year_diff}>0  1
#     ...   ${year_diff}<0  0

#     #set number of loop year
#     ${year_diff}=  Set Variable If 
#     ...   ${year_diff}==0  0
#     ...   ${year_diff}>0  ${year_diff}
#     ...   ${year_diff}<0  ${year_diff}*-1

#     #check condition next or previous year
#     FOR     ${var}  IN RANGE    ${year_diff}
#         Run Keyword If  ${shift_year}==0  Click Button    ${previous_year}     #xpath button previous
#         Run Keyword If  ${shift_year}==1  Click Button    ${next_year}         #xpath button next
#     END