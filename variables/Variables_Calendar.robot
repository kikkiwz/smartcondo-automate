*** Variables ***
# ${DELAY}            1
# ${timeout}          5
${timeout_calendar}     5

#ONEHR Calendar
#value
#set button type in calendar >> set 1=[button next(month) and previous(month)], 2=[button next(month,year) and previous(month,year)], 3=[button next(year) and previous(year)]
# ${TYPE_CALENDAR}    1         #set in variable of case          
#${VALUE_DATE}       7/5/2020   #set date by format calendar (Set in variable page)
# ${FORMAT_DATE}      YYYY/mm/dd  #set format date for position
# ${SEPARATOR_DATE}   /           #set Regexp for sub string date

#Xpath
#${CALENDAR_LOCATOR}       xpath=/html/body/app-root/app-layout/div/app-home/main/div/div/app-history/div/div[1]/div/div[2]/div/div[1]/div/div[1]/div/nz-date-picker
# ${DATE_PICKER_LOCATOR}           xpath=//td[@data-value="date"]
#Button
#Don't change name variables
# ${previous_month_class}    class=dx-calendar-navigator-previous-month
# ${next_month_class}         class=dx-calendar-navigator-next-month
# ${previous_year_class}    class=dx-calendar-navigator-previous-month
# ${next_year_class}         class=dx-calendar-navigator-next-month


#RMS Calendar
#value
#set button type in calendar >> set 1(button next(month) and previous(month)), 2(button next(month,year) and previous(month,year))
${TYPE_CALENDAR}    1  
#${VALUE_DATE}       2020/07/17    #set date by format calendar (Set in variable page)
${FORMAT_DATE}              YYYY/mm/dd
${SEPARATOR_DATE}   / 

#Xpath
#${CALENDAR_LOCATOR}           xpath=//*[@id="loadPanelArea"]/div[1]/div[5]/div/div[2]/dx-validation-group/div[1]/div/dx-form/div/div/div/div/div/div/div/div/div/div/div[2]/div[2]    
${DATE_PICKER_LOCATOR}               css=td[data-value="date"]    
${DATE_PICKER_ID_LOCATOR}               css=#id td[data-value="date"]    
${DATE_PICKER_DATEBOXDISABLED_LOCATOR}    css=div[class="dx-overlay-content dx-popup-normal dx-resizable dx-popup-inherit-height" ] div[class="dx-popup-content" ] div[class="dx-calendar-body" ] td[data-value="date"]

#Button
${previous_month_class}    xpath=/html/body/div/div/div/div/div[2]/a[1]    
${next_month_class}      xpath=/html/body/div[2]/div/div/div/div[2]/a[3]/div/i
${previous_year_class}    xpath=/html/body/div/div/div/div/div[2]/a[1]    
${next_year_class}      xpath=/html/body/div[2]/div/div/div/div[2]/a[3]/div/i