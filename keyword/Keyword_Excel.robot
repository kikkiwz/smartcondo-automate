*** Keywords ***
################################################################-- Open Read Excel Cell --################################################################
Open Read Excel Cell
    [Arguments]    ${filename}    ${filename_locator}    ${row_num}    ${col_num}    ${sheet_name}
	[Documentation]
	...        |col|
	...    row | 1 | 2 | 3 |

    Run keyword And Continue On Failure    Open Excel Document    ${filename}    ${filename_locator}
    ${dataCell}=    Run keyword And Continue On Failure    Read Excel Cell    row_num=${row_num}    col_num=${col_num}    sheet_name=${sheet_name}
    Log To Console    ${dataCell}
	Log    ${dataCell}
    # Lists Should Be Equal    {col_data}    ${dataCell}    
    Run keyword And Continue On Failure    Close All Excel Documents

	[Return]    ${dataCell}

################################################################-- Open Read Excel Column --################################################################
Open Read Excel Column
    [Arguments]    ${filename}    ${filename_locator}    ${col_num}    ${max_num}    ${sheet_name}
	[Documentation]
	...    |col|
	...    | 1 |
	...    | 2 |
	...    | 3 |
	...    | 4 |
	...    | 5 |

    Log To Console    filename${filename}
    Log To Console    filename_locator${filename_locator}
    Run keyword And Continue On Failure    Open Excel Document    ${filename}    ${filename_locator}
	
    ${dataColumn}=    Run keyword And Continue On Failure    Read Excel Column    col_num=${col_num}    max_num=${max_num}    sheet_name=${sheet_name}
    Log To Console    ${dataColumn}
	Log    ${dataColumn}
    # Lists Should Be Equal    {col_data}    ${dataColumn}    
    Run keyword And Continue On Failure    Close All Excel Documents

	[Return]    ${dataColumn}

################################################################-- Open Read Excel Row --################################################################
Open Read Excel Row
    [Arguments]    ${filename}    ${filename_locator}    ${row_num}    ${max_num}    ${sheet_name}
	[Documentation]
	...    row    | 1 | 2 | 3 |

    Run keyword And Continue On Failure    Open Excel Document    ${filename}    ${filename_locator}
    ${dataRow}=    Run keyword And Continue On Failure    Read Excel Row    row_num=${row_num}    max_num=${max_num}    sheet_name=${sheet_name}
    Log To Console    ${dataRow}
	Log    ${dataRow}
    # Lists Should Be Equal    {col_data}    ${dataRow}    
    Run keyword And Continue On Failure    Close All Excel Documents

	[Return]    ${dataRow}
