*** Variables ***
#${MoY}    MoY
${MoY}    {dt:%B} {dt.year}
#${HMS}    H:M:S
${HMS}    {dt:%H}:{dt:%M}:{dt:%S}
#${HM}    H:M
${HM}    {dt:%H}:{dt:%M}
${MDYYYY}    %m/%d/%Y
${DDMMYYYY_/}    %d/%m/%Y
${YYYYMMDD_-}    %Y-%m-%d
${MDYYYY_NOW}    {dt:%m}/{dt:%d}/{dt:%Y}
${DDMMYYYY_NOW}    {dt:%d}/{dt:%m}/{dt:%Y}
${YYYYMMDD_NOW}    {dt:%Y}/{dt:%m}/{dt:%d}
${YYYYMMDDD_NOW_-}    {dt:%Y}-{dt:%m}-{dt:%d}
${MDYYYY_ADDSUB}    %m/%d/%Y
${DDMMYYYY_ADDSUB}    %d/%m/%Y
${YYYYMMDD_ADDSUB}    %Y/%m/%d
${YYYYMMDD_-_ADDSUB}    %Y-%m-%d

# 2021-11-22T00:00:00.000Z
${HMS_TZ}    T00:00:00.000Z

#Workin time button home
${DATE_LBL_NOW_TH}    - ตอนนี้
${DATE_LBL_NOW_EN}    -now

${DATE_TYPE_ADD}    add
${DATE_TYPE_SUBTRACT}    subtract

${RANGE_DAY}    5
